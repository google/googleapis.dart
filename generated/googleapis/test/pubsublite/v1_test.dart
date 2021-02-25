// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/pubsublite/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterCapacity = 0;
api.Capacity buildCapacity() {
  var o = api.Capacity();
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

core.int buildCounterComputeHeadCursorRequest = 0;
api.ComputeHeadCursorRequest buildComputeHeadCursorRequest() {
  var o = api.ComputeHeadCursorRequest();
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
  var o = api.ComputeHeadCursorResponse();
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
    checkCursor(o.headCursor! as api.Cursor);
  }
  buildCounterComputeHeadCursorResponse--;
}

core.int buildCounterComputeMessageStatsRequest = 0;
api.ComputeMessageStatsRequest buildComputeMessageStatsRequest() {
  var o = api.ComputeMessageStatsRequest();
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
    checkCursor(o.endCursor! as api.Cursor);
    unittest.expect(
      o.partition!,
      unittest.equals('foo'),
    );
    checkCursor(o.startCursor! as api.Cursor);
  }
  buildCounterComputeMessageStatsRequest--;
}

core.int buildCounterComputeMessageStatsResponse = 0;
api.ComputeMessageStatsResponse buildComputeMessageStatsResponse() {
  var o = api.ComputeMessageStatsResponse();
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

core.int buildCounterCursor = 0;
api.Cursor buildCursor() {
  var o = api.Cursor();
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
  var o = api.DeliveryConfig();
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
  var o = api.Empty();
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

core.List<api.PartitionCursor> buildUnnamed6648() {
  var o = <api.PartitionCursor>[];
  o.add(buildPartitionCursor());
  o.add(buildPartitionCursor());
  return o;
}

void checkUnnamed6648(core.List<api.PartitionCursor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartitionCursor(o[0] as api.PartitionCursor);
  checkPartitionCursor(o[1] as api.PartitionCursor);
}

core.int buildCounterListPartitionCursorsResponse = 0;
api.ListPartitionCursorsResponse buildListPartitionCursorsResponse() {
  var o = api.ListPartitionCursorsResponse();
  buildCounterListPartitionCursorsResponse++;
  if (buildCounterListPartitionCursorsResponse < 3) {
    o.nextPageToken = 'foo';
    o.partitionCursors = buildUnnamed6648();
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
    checkUnnamed6648(o.partitionCursors!);
  }
  buildCounterListPartitionCursorsResponse--;
}

core.List<api.Subscription> buildUnnamed6649() {
  var o = <api.Subscription>[];
  o.add(buildSubscription());
  o.add(buildSubscription());
  return o;
}

void checkUnnamed6649(core.List<api.Subscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscription(o[0] as api.Subscription);
  checkSubscription(o[1] as api.Subscription);
}

core.int buildCounterListSubscriptionsResponse = 0;
api.ListSubscriptionsResponse buildListSubscriptionsResponse() {
  var o = api.ListSubscriptionsResponse();
  buildCounterListSubscriptionsResponse++;
  if (buildCounterListSubscriptionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.subscriptions = buildUnnamed6649();
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
    checkUnnamed6649(o.subscriptions!);
  }
  buildCounterListSubscriptionsResponse--;
}

core.List<core.String> buildUnnamed6650() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6650(core.List<core.String> o) {
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
  var o = api.ListTopicSubscriptionsResponse();
  buildCounterListTopicSubscriptionsResponse++;
  if (buildCounterListTopicSubscriptionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.subscriptions = buildUnnamed6650();
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
    checkUnnamed6650(o.subscriptions!);
  }
  buildCounterListTopicSubscriptionsResponse--;
}

core.List<api.Topic> buildUnnamed6651() {
  var o = <api.Topic>[];
  o.add(buildTopic());
  o.add(buildTopic());
  return o;
}

void checkUnnamed6651(core.List<api.Topic> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTopic(o[0] as api.Topic);
  checkTopic(o[1] as api.Topic);
}

core.int buildCounterListTopicsResponse = 0;
api.ListTopicsResponse buildListTopicsResponse() {
  var o = api.ListTopicsResponse();
  buildCounterListTopicsResponse++;
  if (buildCounterListTopicsResponse < 3) {
    o.nextPageToken = 'foo';
    o.topics = buildUnnamed6651();
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
    checkUnnamed6651(o.topics!);
  }
  buildCounterListTopicsResponse--;
}

core.int buildCounterPartitionConfig = 0;
api.PartitionConfig buildPartitionConfig() {
  var o = api.PartitionConfig();
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
    checkCapacity(o.capacity! as api.Capacity);
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
  var o = api.PartitionCursor();
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
    checkCursor(o.cursor! as api.Cursor);
    unittest.expect(
      o.partition!,
      unittest.equals('foo'),
    );
  }
  buildCounterPartitionCursor--;
}

core.int buildCounterRetentionConfig = 0;
api.RetentionConfig buildRetentionConfig() {
  var o = api.RetentionConfig();
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
  var o = api.Subscription();
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
    checkDeliveryConfig(o.deliveryConfig! as api.DeliveryConfig);
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

core.int buildCounterTopic = 0;
api.Topic buildTopic() {
  var o = api.Topic();
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
    checkPartitionConfig(o.partitionConfig! as api.PartitionConfig);
    checkRetentionConfig(o.retentionConfig! as api.RetentionConfig);
  }
  buildCounterTopic--;
}

core.int buildCounterTopicPartitions = 0;
api.TopicPartitions buildTopicPartitions() {
  var o = api.TopicPartitions();
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
      var o = buildCapacity();
      var od = api.Capacity.fromJson(o.toJson());
      checkCapacity(od as api.Capacity);
    });
  });

  unittest.group('obj-schema-ComputeHeadCursorRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildComputeHeadCursorRequest();
      var od = api.ComputeHeadCursorRequest.fromJson(o.toJson());
      checkComputeHeadCursorRequest(od as api.ComputeHeadCursorRequest);
    });
  });

  unittest.group('obj-schema-ComputeHeadCursorResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildComputeHeadCursorResponse();
      var od = api.ComputeHeadCursorResponse.fromJson(o.toJson());
      checkComputeHeadCursorResponse(od as api.ComputeHeadCursorResponse);
    });
  });

  unittest.group('obj-schema-ComputeMessageStatsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildComputeMessageStatsRequest();
      var od = api.ComputeMessageStatsRequest.fromJson(o.toJson());
      checkComputeMessageStatsRequest(od as api.ComputeMessageStatsRequest);
    });
  });

  unittest.group('obj-schema-ComputeMessageStatsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildComputeMessageStatsResponse();
      var od = api.ComputeMessageStatsResponse.fromJson(o.toJson());
      checkComputeMessageStatsResponse(od as api.ComputeMessageStatsResponse);
    });
  });

  unittest.group('obj-schema-Cursor', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCursor();
      var od = api.Cursor.fromJson(o.toJson());
      checkCursor(od as api.Cursor);
    });
  });

  unittest.group('obj-schema-DeliveryConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDeliveryConfig();
      var od = api.DeliveryConfig.fromJson(o.toJson());
      checkDeliveryConfig(od as api.DeliveryConfig);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-ListPartitionCursorsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListPartitionCursorsResponse();
      var od = api.ListPartitionCursorsResponse.fromJson(o.toJson());
      checkListPartitionCursorsResponse(od as api.ListPartitionCursorsResponse);
    });
  });

  unittest.group('obj-schema-ListSubscriptionsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListSubscriptionsResponse();
      var od = api.ListSubscriptionsResponse.fromJson(o.toJson());
      checkListSubscriptionsResponse(od as api.ListSubscriptionsResponse);
    });
  });

  unittest.group('obj-schema-ListTopicSubscriptionsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListTopicSubscriptionsResponse();
      var od = api.ListTopicSubscriptionsResponse.fromJson(o.toJson());
      checkListTopicSubscriptionsResponse(
          od as api.ListTopicSubscriptionsResponse);
    });
  });

  unittest.group('obj-schema-ListTopicsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListTopicsResponse();
      var od = api.ListTopicsResponse.fromJson(o.toJson());
      checkListTopicsResponse(od as api.ListTopicsResponse);
    });
  });

  unittest.group('obj-schema-PartitionConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPartitionConfig();
      var od = api.PartitionConfig.fromJson(o.toJson());
      checkPartitionConfig(od as api.PartitionConfig);
    });
  });

  unittest.group('obj-schema-PartitionCursor', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPartitionCursor();
      var od = api.PartitionCursor.fromJson(o.toJson());
      checkPartitionCursor(od as api.PartitionCursor);
    });
  });

  unittest.group('obj-schema-RetentionConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRetentionConfig();
      var od = api.RetentionConfig.fromJson(o.toJson());
      checkRetentionConfig(od as api.RetentionConfig);
    });
  });

  unittest.group('obj-schema-Subscription', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSubscription();
      var od = api.Subscription.fromJson(o.toJson());
      checkSubscription(od as api.Subscription);
    });
  });

  unittest.group('obj-schema-Topic', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTopic();
      var od = api.Topic.fromJson(o.toJson());
      checkTopic(od as api.Topic);
    });
  });

  unittest.group('obj-schema-TopicPartitions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTopicPartitions();
      var od = api.TopicPartitions.fromJson(o.toJson());
      checkTopicPartitions(od as api.TopicPartitions);
    });
  });

  unittest.group('resource-AdminProjectsLocationsSubscriptionsResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.PubsubLiteApi(mock).admin.projects.locations.subscriptions;
      var arg_request = buildSubscription();
      var arg_parent = 'foo';
      var arg_subscriptionId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Subscription.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubscription(obj as api.Subscription);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1/admin/"),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["subscriptionId"]!.first,
          unittest.equals(arg_subscriptionId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          subscriptionId: arg_subscriptionId, $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.PubsubLiteApi(mock).admin.projects.locations.subscriptions;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1/admin/"),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.PubsubLiteApi(mock).admin.projects.locations.subscriptions;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1/admin/"),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.PubsubLiteApi(mock).admin.projects.locations.subscriptions;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1/admin/"),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListSubscriptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSubscriptionsResponse(response as api.ListSubscriptionsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.PubsubLiteApi(mock).admin.projects.locations.subscriptions;
      var arg_request = buildSubscription();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Subscription.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubscription(obj as api.Subscription);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1/admin/"),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });
  });

  unittest.group('resource-AdminProjectsLocationsTopicsResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.PubsubLiteApi(mock).admin.projects.locations.topics;
      var arg_request = buildTopic();
      var arg_parent = 'foo';
      var arg_topicId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Topic.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTopic(obj as api.Topic);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1/admin/"),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["topicId"]!.first,
          unittest.equals(arg_topicId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTopic());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          topicId: arg_topicId, $fields: arg_$fields);
      checkTopic(response as api.Topic);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.PubsubLiteApi(mock).admin.projects.locations.topics;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1/admin/"),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.PubsubLiteApi(mock).admin.projects.locations.topics;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1/admin/"),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTopic());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTopic(response as api.Topic);
    });

    unittest.test('method--getPartitions', () async {
      var mock = HttpServerMock();
      var res = api.PubsubLiteApi(mock).admin.projects.locations.topics;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1/admin/"),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTopicPartitions());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getPartitions(arg_name, $fields: arg_$fields);
      checkTopicPartitions(response as api.TopicPartitions);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.PubsubLiteApi(mock).admin.projects.locations.topics;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1/admin/"),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListTopicsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTopicsResponse(response as api.ListTopicsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.PubsubLiteApi(mock).admin.projects.locations.topics;
      var arg_request = buildTopic();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Topic.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTopic(obj as api.Topic);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1/admin/"),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTopic());
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
      var mock = HttpServerMock();
      var res =
          api.PubsubLiteApi(mock).admin.projects.locations.topics.subscriptions;
      var arg_name = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1/admin/"),
        );
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListTopicSubscriptionsResponse());
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

  unittest.group('resource-CursorProjectsLocationsSubscriptionsCursorsResource',
      () {
    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.PubsubLiteApi(mock)
          .cursor
          .projects
          .locations
          .subscriptions
          .cursors;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals("v1/cursor/"),
        );
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListPartitionCursorsResponse());
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
      var mock = HttpServerMock();
      var res = api.PubsubLiteApi(mock).topicStats.projects.locations.topics;
      var arg_request = buildComputeHeadCursorRequest();
      var arg_topic = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ComputeHeadCursorRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkComputeHeadCursorRequest(obj as api.ComputeHeadCursorRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals("v1/topicStats/"),
        );
        pathOffset += 14;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildComputeHeadCursorResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.computeHeadCursor(arg_request, arg_topic,
          $fields: arg_$fields);
      checkComputeHeadCursorResponse(response as api.ComputeHeadCursorResponse);
    });

    unittest.test('method--computeMessageStats', () async {
      var mock = HttpServerMock();
      var res = api.PubsubLiteApi(mock).topicStats.projects.locations.topics;
      var arg_request = buildComputeMessageStatsRequest();
      var arg_topic = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ComputeMessageStatsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkComputeMessageStatsRequest(obj as api.ComputeMessageStatsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals("v1/topicStats/"),
        );
        pathOffset += 14;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildComputeMessageStatsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.computeMessageStats(arg_request, arg_topic,
          $fields: arg_$fields);
      checkComputeMessageStatsResponse(
          response as api.ComputeMessageStatsResponse);
    });
  });
}
