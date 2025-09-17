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

import 'package:googleapis/pubsub/v1beta1a.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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
    o.ackId = buildUnnamed0();
    o.subscription = 'foo';
  }
  buildCounterAcknowledgeRequest--;
  return o;
}

void checkAcknowledgeRequest(api.AcknowledgeRequest o) {
  buildCounterAcknowledgeRequest++;
  if (buildCounterAcknowledgeRequest < 3) {
    checkUnnamed0(o.ackId!);
    unittest.expect(o.subscription!, unittest.equals('foo'));
  }
  buildCounterAcknowledgeRequest--;
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

core.int buildCounterLabel = 0;
api.Label buildLabel() {
  final o = api.Label();
  buildCounterLabel++;
  if (buildCounterLabel < 3) {
    o.key = 'foo';
    o.numValue = 'foo';
    o.strValue = 'foo';
  }
  buildCounterLabel--;
  return o;
}

void checkLabel(api.Label o) {
  buildCounterLabel++;
  if (buildCounterLabel < 3) {
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.numValue!, unittest.equals('foo'));
    unittest.expect(o.strValue!, unittest.equals('foo'));
  }
  buildCounterLabel--;
}

core.List<api.Subscription> buildUnnamed1() => [
  buildSubscription(),
  buildSubscription(),
];

void checkUnnamed1(core.List<api.Subscription> o) {
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
    o.subscription = buildUnnamed1();
  }
  buildCounterListSubscriptionsResponse--;
  return o;
}

void checkListSubscriptionsResponse(api.ListSubscriptionsResponse o) {
  buildCounterListSubscriptionsResponse++;
  if (buildCounterListSubscriptionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed1(o.subscription!);
  }
  buildCounterListSubscriptionsResponse--;
}

core.List<api.Topic> buildUnnamed2() => [buildTopic(), buildTopic()];

void checkUnnamed2(core.List<api.Topic> o) {
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
    o.topic = buildUnnamed2();
  }
  buildCounterListTopicsResponse--;
  return o;
}

void checkListTopicsResponse(api.ListTopicsResponse o) {
  buildCounterListTopicsResponse++;
  if (buildCounterListTopicsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed2(o.topic!);
  }
  buildCounterListTopicsResponse--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
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
    o.ackId = 'foo';
    o.ackIds = buildUnnamed3();
    o.subscription = 'foo';
  }
  buildCounterModifyAckDeadlineRequest--;
  return o;
}

void checkModifyAckDeadlineRequest(api.ModifyAckDeadlineRequest o) {
  buildCounterModifyAckDeadlineRequest++;
  if (buildCounterModifyAckDeadlineRequest < 3) {
    unittest.expect(o.ackDeadlineSeconds!, unittest.equals(42));
    unittest.expect(o.ackId!, unittest.equals('foo'));
    checkUnnamed3(o.ackIds!);
    unittest.expect(o.subscription!, unittest.equals('foo'));
  }
  buildCounterModifyAckDeadlineRequest--;
}

core.int buildCounterModifyPushConfigRequest = 0;
api.ModifyPushConfigRequest buildModifyPushConfigRequest() {
  final o = api.ModifyPushConfigRequest();
  buildCounterModifyPushConfigRequest++;
  if (buildCounterModifyPushConfigRequest < 3) {
    o.pushConfig = buildPushConfig();
    o.subscription = 'foo';
  }
  buildCounterModifyPushConfigRequest--;
  return o;
}

void checkModifyPushConfigRequest(api.ModifyPushConfigRequest o) {
  buildCounterModifyPushConfigRequest++;
  if (buildCounterModifyPushConfigRequest < 3) {
    checkPushConfig(o.pushConfig!);
    unittest.expect(o.subscription!, unittest.equals('foo'));
  }
  buildCounterModifyPushConfigRequest--;
}

core.List<api.PubsubMessage> buildUnnamed4() => [
  buildPubsubMessage(),
  buildPubsubMessage(),
];

void checkUnnamed4(core.List<api.PubsubMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPubsubMessage(o[0]);
  checkPubsubMessage(o[1]);
}

core.int buildCounterPublishBatchRequest = 0;
api.PublishBatchRequest buildPublishBatchRequest() {
  final o = api.PublishBatchRequest();
  buildCounterPublishBatchRequest++;
  if (buildCounterPublishBatchRequest < 3) {
    o.messages = buildUnnamed4();
    o.topic = 'foo';
  }
  buildCounterPublishBatchRequest--;
  return o;
}

void checkPublishBatchRequest(api.PublishBatchRequest o) {
  buildCounterPublishBatchRequest++;
  if (buildCounterPublishBatchRequest < 3) {
    checkUnnamed4(o.messages!);
    unittest.expect(o.topic!, unittest.equals('foo'));
  }
  buildCounterPublishBatchRequest--;
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPublishBatchResponse = 0;
api.PublishBatchResponse buildPublishBatchResponse() {
  final o = api.PublishBatchResponse();
  buildCounterPublishBatchResponse++;
  if (buildCounterPublishBatchResponse < 3) {
    o.messageIds = buildUnnamed5();
  }
  buildCounterPublishBatchResponse--;
  return o;
}

void checkPublishBatchResponse(api.PublishBatchResponse o) {
  buildCounterPublishBatchResponse++;
  if (buildCounterPublishBatchResponse < 3) {
    checkUnnamed5(o.messageIds!);
  }
  buildCounterPublishBatchResponse--;
}

core.int buildCounterPublishRequest = 0;
api.PublishRequest buildPublishRequest() {
  final o = api.PublishRequest();
  buildCounterPublishRequest++;
  if (buildCounterPublishRequest < 3) {
    o.message = buildPubsubMessage();
    o.topic = 'foo';
  }
  buildCounterPublishRequest--;
  return o;
}

void checkPublishRequest(api.PublishRequest o) {
  buildCounterPublishRequest++;
  if (buildCounterPublishRequest < 3) {
    checkPubsubMessage(o.message!);
    unittest.expect(o.topic!, unittest.equals('foo'));
  }
  buildCounterPublishRequest--;
}

core.int buildCounterPubsubEvent = 0;
api.PubsubEvent buildPubsubEvent() {
  final o = api.PubsubEvent();
  buildCounterPubsubEvent++;
  if (buildCounterPubsubEvent < 3) {
    o.deleted = true;
    o.message = buildPubsubMessage();
    o.subscription = 'foo';
    o.truncated = true;
  }
  buildCounterPubsubEvent--;
  return o;
}

void checkPubsubEvent(api.PubsubEvent o) {
  buildCounterPubsubEvent++;
  if (buildCounterPubsubEvent < 3) {
    unittest.expect(o.deleted!, unittest.isTrue);
    checkPubsubMessage(o.message!);
    unittest.expect(o.subscription!, unittest.equals('foo'));
    unittest.expect(o.truncated!, unittest.isTrue);
  }
  buildCounterPubsubEvent--;
}

core.List<api.Label> buildUnnamed6() => [buildLabel(), buildLabel()];

void checkUnnamed6(core.List<api.Label> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabel(o[0]);
  checkLabel(o[1]);
}

core.int buildCounterPubsubMessage = 0;
api.PubsubMessage buildPubsubMessage() {
  final o = api.PubsubMessage();
  buildCounterPubsubMessage++;
  if (buildCounterPubsubMessage < 3) {
    o.data = 'foo';
    o.label = buildUnnamed6();
    o.messageId = 'foo';
    o.publishTime = 'foo';
  }
  buildCounterPubsubMessage--;
  return o;
}

void checkPubsubMessage(api.PubsubMessage o) {
  buildCounterPubsubMessage++;
  if (buildCounterPubsubMessage < 3) {
    unittest.expect(o.data!, unittest.equals('foo'));
    checkUnnamed6(o.label!);
    unittest.expect(o.messageId!, unittest.equals('foo'));
    unittest.expect(o.publishTime!, unittest.equals('foo'));
  }
  buildCounterPubsubMessage--;
}

core.int buildCounterPullBatchRequest = 0;
api.PullBatchRequest buildPullBatchRequest() {
  final o = api.PullBatchRequest();
  buildCounterPullBatchRequest++;
  if (buildCounterPullBatchRequest < 3) {
    o.maxEvents = 42;
    o.returnImmediately = true;
    o.subscription = 'foo';
  }
  buildCounterPullBatchRequest--;
  return o;
}

void checkPullBatchRequest(api.PullBatchRequest o) {
  buildCounterPullBatchRequest++;
  if (buildCounterPullBatchRequest < 3) {
    unittest.expect(o.maxEvents!, unittest.equals(42));
    unittest.expect(o.returnImmediately!, unittest.isTrue);
    unittest.expect(o.subscription!, unittest.equals('foo'));
  }
  buildCounterPullBatchRequest--;
}

core.List<api.PullResponse> buildUnnamed7() => [
  buildPullResponse(),
  buildPullResponse(),
];

void checkUnnamed7(core.List<api.PullResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPullResponse(o[0]);
  checkPullResponse(o[1]);
}

core.int buildCounterPullBatchResponse = 0;
api.PullBatchResponse buildPullBatchResponse() {
  final o = api.PullBatchResponse();
  buildCounterPullBatchResponse++;
  if (buildCounterPullBatchResponse < 3) {
    o.pullResponses = buildUnnamed7();
  }
  buildCounterPullBatchResponse--;
  return o;
}

void checkPullBatchResponse(api.PullBatchResponse o) {
  buildCounterPullBatchResponse++;
  if (buildCounterPullBatchResponse < 3) {
    checkUnnamed7(o.pullResponses!);
  }
  buildCounterPullBatchResponse--;
}

core.int buildCounterPullRequest = 0;
api.PullRequest buildPullRequest() {
  final o = api.PullRequest();
  buildCounterPullRequest++;
  if (buildCounterPullRequest < 3) {
    o.returnImmediately = true;
    o.subscription = 'foo';
  }
  buildCounterPullRequest--;
  return o;
}

void checkPullRequest(api.PullRequest o) {
  buildCounterPullRequest++;
  if (buildCounterPullRequest < 3) {
    unittest.expect(o.returnImmediately!, unittest.isTrue);
    unittest.expect(o.subscription!, unittest.equals('foo'));
  }
  buildCounterPullRequest--;
}

core.int buildCounterPullResponse = 0;
api.PullResponse buildPullResponse() {
  final o = api.PullResponse();
  buildCounterPullResponse++;
  if (buildCounterPullResponse < 3) {
    o.ackId = 'foo';
    o.pubsubEvent = buildPubsubEvent();
  }
  buildCounterPullResponse--;
  return o;
}

void checkPullResponse(api.PullResponse o) {
  buildCounterPullResponse++;
  if (buildCounterPullResponse < 3) {
    unittest.expect(o.ackId!, unittest.equals('foo'));
    checkPubsubEvent(o.pubsubEvent!);
  }
  buildCounterPullResponse--;
}

core.int buildCounterPushConfig = 0;
api.PushConfig buildPushConfig() {
  final o = api.PushConfig();
  buildCounterPushConfig++;
  if (buildCounterPushConfig < 3) {
    o.pushEndpoint = 'foo';
  }
  buildCounterPushConfig--;
  return o;
}

void checkPushConfig(api.PushConfig o) {
  buildCounterPushConfig++;
  if (buildCounterPushConfig < 3) {
    unittest.expect(o.pushEndpoint!, unittest.equals('foo'));
  }
  buildCounterPushConfig--;
}

core.int buildCounterSubscription = 0;
api.Subscription buildSubscription() {
  final o = api.Subscription();
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    o.ackDeadlineSeconds = 42;
    o.name = 'foo';
    o.pushConfig = buildPushConfig();
    o.topic = 'foo';
  }
  buildCounterSubscription--;
  return o;
}

void checkSubscription(api.Subscription o) {
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    unittest.expect(o.ackDeadlineSeconds!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPushConfig(o.pushConfig!);
    unittest.expect(o.topic!, unittest.equals('foo'));
  }
  buildCounterSubscription--;
}

core.int buildCounterTopic = 0;
api.Topic buildTopic() {
  final o = api.Topic();
  buildCounterTopic++;
  if (buildCounterTopic < 3) {
    o.name = 'foo';
  }
  buildCounterTopic--;
  return o;
}

void checkTopic(api.Topic o) {
  buildCounterTopic++;
  if (buildCounterTopic < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterTopic--;
}

void main() {
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

  unittest.group('obj-schema-Label', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Label.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLabel(od);
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

  unittest.group('obj-schema-PublishBatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublishBatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PublishBatchRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPublishBatchRequest(od);
    });
  });

  unittest.group('obj-schema-PublishBatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublishBatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PublishBatchResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPublishBatchResponse(od);
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

  unittest.group('obj-schema-PubsubEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPubsubEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PubsubEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPubsubEvent(od);
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

  unittest.group('obj-schema-PullBatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPullBatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PullBatchRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPullBatchRequest(od);
    });
  });

  unittest.group('obj-schema-PullBatchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPullBatchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PullBatchResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPullBatchResponse(od);
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

  unittest.group('resource-SubscriptionsResource', () {
    unittest.test('method--acknowledge', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).subscriptions;
      final arg_request = buildAcknowledgeRequest();
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
            path.substring(pathOffset, pathOffset + 34),
            unittest.equals('v1beta1a/subscriptions/acknowledge'),
          );
          pathOffset += 34;

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
      final response = await res.acknowledge(arg_request, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).subscriptions;
      final arg_request = buildSubscription();
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
            path.substring(pathOffset, pathOffset + 22),
            unittest.equals('v1beta1a/subscriptions'),
          );
          pathOffset += 22;

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
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).subscriptions;
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
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('v1beta1a/subscriptions/'),
          );
          pathOffset += 23;
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

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).subscriptions;
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
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('v1beta1a/subscriptions/'),
          );
          pathOffset += 23;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).subscriptions;
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
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
            path.substring(pathOffset, pathOffset + 22),
            unittest.equals('v1beta1a/subscriptions'),
          );
          pathOffset += 22;

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
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(queryMap['query']!.first, unittest.equals(arg_query));
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
        maxResults: arg_maxResults,
        pageToken: arg_pageToken,
        query: arg_query,
        $fields: arg_$fields,
      );
      checkListSubscriptionsResponse(response as api.ListSubscriptionsResponse);
    });

    unittest.test('method--modifyAckDeadline', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).subscriptions;
      final arg_request = buildModifyAckDeadlineRequest();
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
            path.substring(pathOffset, pathOffset + 40),
            unittest.equals('v1beta1a/subscriptions/modifyAckDeadline'),
          );
          pathOffset += 40;

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
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--modifyPushConfig', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).subscriptions;
      final arg_request = buildModifyPushConfigRequest();
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
            path.substring(pathOffset, pathOffset + 39),
            unittest.equals('v1beta1a/subscriptions/modifyPushConfig'),
          );
          pathOffset += 39;

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
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--pull', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).subscriptions;
      final arg_request = buildPullRequest();
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
            path.substring(pathOffset, pathOffset + 27),
            unittest.equals('v1beta1a/subscriptions/pull'),
          );
          pathOffset += 27;

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
      final response = await res.pull(arg_request, $fields: arg_$fields);
      checkPullResponse(response as api.PullResponse);
    });

    unittest.test('method--pullBatch', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).subscriptions;
      final arg_request = buildPullBatchRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PullBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPullBatchRequest(obj);

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
            path.substring(pathOffset, pathOffset + 32),
            unittest.equals('v1beta1a/subscriptions/pullBatch'),
          );
          pathOffset += 32;

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
          final resp = convert.json.encode(buildPullBatchResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.pullBatch(arg_request, $fields: arg_$fields);
      checkPullBatchResponse(response as api.PullBatchResponse);
    });
  });

  unittest.group('resource-TopicsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).topics;
      final arg_request = buildTopic();
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v1beta1a/topics'),
          );
          pathOffset += 15;

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
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkTopic(response as api.Topic);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).topics;
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
            path.substring(pathOffset, pathOffset + 16),
            unittest.equals('v1beta1a/topics/'),
          );
          pathOffset += 16;
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
      final res = api.PubsubApi(mock).topics;
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
            path.substring(pathOffset, pathOffset + 16),
            unittest.equals('v1beta1a/topics/'),
          );
          pathOffset += 16;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).topics;
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v1beta1a/topics'),
          );
          pathOffset += 15;

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
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(queryMap['query']!.first, unittest.equals(arg_query));
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
        maxResults: arg_maxResults,
        pageToken: arg_pageToken,
        query: arg_query,
        $fields: arg_$fields,
      );
      checkListTopicsResponse(response as api.ListTopicsResponse);
    });

    unittest.test('method--publish', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).topics;
      final arg_request = buildPublishRequest();
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
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('v1beta1a/topics/publish'),
          );
          pathOffset += 23;

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
      final response = await res.publish(arg_request, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--publishBatch', () async {
      final mock = HttpServerMock();
      final res = api.PubsubApi(mock).topics;
      final arg_request = buildPublishBatchRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PublishBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPublishBatchRequest(obj);

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
            path.substring(pathOffset, pathOffset + 28),
            unittest.equals('v1beta1a/topics/publishBatch'),
          );
          pathOffset += 28;

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
          final resp = convert.json.encode(buildPublishBatchResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.publishBatch(
        arg_request,
        $fields: arg_$fields,
      );
      checkPublishBatchResponse(response as api.PublishBatchResponse);
    });
  });
}
