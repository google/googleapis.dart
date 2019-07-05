library googleapis_beta.pubsub.v1beta2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/pubsub/v1beta2.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed5093() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5093(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAcknowledgeRequest = 0;
buildAcknowledgeRequest() {
  var o = new api.AcknowledgeRequest();
  buildCounterAcknowledgeRequest++;
  if (buildCounterAcknowledgeRequest < 3) {
    o.ackIds = buildUnnamed5093();
  }
  buildCounterAcknowledgeRequest--;
  return o;
}

checkAcknowledgeRequest(api.AcknowledgeRequest o) {
  buildCounterAcknowledgeRequest++;
  if (buildCounterAcknowledgeRequest < 3) {
    checkUnnamed5093(o.ackIds);
  }
  buildCounterAcknowledgeRequest--;
}

buildUnnamed5094() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5094(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed5094();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed5094(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterExpr = 0;
buildExpr() {
  var o = new api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterExpr--;
  return o;
}

checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

buildUnnamed5095() {
  var o = new core.List<api.Subscription>();
  o.add(buildSubscription());
  o.add(buildSubscription());
  return o;
}

checkUnnamed5095(core.List<api.Subscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscription(o[0]);
  checkSubscription(o[1]);
}

core.int buildCounterListSubscriptionsResponse = 0;
buildListSubscriptionsResponse() {
  var o = new api.ListSubscriptionsResponse();
  buildCounterListSubscriptionsResponse++;
  if (buildCounterListSubscriptionsResponse < 3) {
    o.nextPageToken = "foo";
    o.subscriptions = buildUnnamed5095();
  }
  buildCounterListSubscriptionsResponse--;
  return o;
}

checkListSubscriptionsResponse(api.ListSubscriptionsResponse o) {
  buildCounterListSubscriptionsResponse++;
  if (buildCounterListSubscriptionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5095(o.subscriptions);
  }
  buildCounterListSubscriptionsResponse--;
}

buildUnnamed5096() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5096(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListTopicSubscriptionsResponse = 0;
buildListTopicSubscriptionsResponse() {
  var o = new api.ListTopicSubscriptionsResponse();
  buildCounterListTopicSubscriptionsResponse++;
  if (buildCounterListTopicSubscriptionsResponse < 3) {
    o.nextPageToken = "foo";
    o.subscriptions = buildUnnamed5096();
  }
  buildCounterListTopicSubscriptionsResponse--;
  return o;
}

checkListTopicSubscriptionsResponse(api.ListTopicSubscriptionsResponse o) {
  buildCounterListTopicSubscriptionsResponse++;
  if (buildCounterListTopicSubscriptionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5096(o.subscriptions);
  }
  buildCounterListTopicSubscriptionsResponse--;
}

buildUnnamed5097() {
  var o = new core.List<api.Topic>();
  o.add(buildTopic());
  o.add(buildTopic());
  return o;
}

checkUnnamed5097(core.List<api.Topic> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTopic(o[0]);
  checkTopic(o[1]);
}

core.int buildCounterListTopicsResponse = 0;
buildListTopicsResponse() {
  var o = new api.ListTopicsResponse();
  buildCounterListTopicsResponse++;
  if (buildCounterListTopicsResponse < 3) {
    o.nextPageToken = "foo";
    o.topics = buildUnnamed5097();
  }
  buildCounterListTopicsResponse--;
  return o;
}

checkListTopicsResponse(api.ListTopicsResponse o) {
  buildCounterListTopicsResponse++;
  if (buildCounterListTopicsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5097(o.topics);
  }
  buildCounterListTopicsResponse--;
}

buildUnnamed5098() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5098(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterModifyAckDeadlineRequest = 0;
buildModifyAckDeadlineRequest() {
  var o = new api.ModifyAckDeadlineRequest();
  buildCounterModifyAckDeadlineRequest++;
  if (buildCounterModifyAckDeadlineRequest < 3) {
    o.ackDeadlineSeconds = 42;
    o.ackId = "foo";
    o.ackIds = buildUnnamed5098();
  }
  buildCounterModifyAckDeadlineRequest--;
  return o;
}

checkModifyAckDeadlineRequest(api.ModifyAckDeadlineRequest o) {
  buildCounterModifyAckDeadlineRequest++;
  if (buildCounterModifyAckDeadlineRequest < 3) {
    unittest.expect(o.ackDeadlineSeconds, unittest.equals(42));
    unittest.expect(o.ackId, unittest.equals('foo'));
    checkUnnamed5098(o.ackIds);
  }
  buildCounterModifyAckDeadlineRequest--;
}

core.int buildCounterModifyPushConfigRequest = 0;
buildModifyPushConfigRequest() {
  var o = new api.ModifyPushConfigRequest();
  buildCounterModifyPushConfigRequest++;
  if (buildCounterModifyPushConfigRequest < 3) {
    o.pushConfig = buildPushConfig();
  }
  buildCounterModifyPushConfigRequest--;
  return o;
}

checkModifyPushConfigRequest(api.ModifyPushConfigRequest o) {
  buildCounterModifyPushConfigRequest++;
  if (buildCounterModifyPushConfigRequest < 3) {
    checkPushConfig(o.pushConfig);
  }
  buildCounterModifyPushConfigRequest--;
}

core.int buildCounterOidcToken = 0;
buildOidcToken() {
  var o = new api.OidcToken();
  buildCounterOidcToken++;
  if (buildCounterOidcToken < 3) {
    o.audience = "foo";
    o.serviceAccountEmail = "foo";
  }
  buildCounterOidcToken--;
  return o;
}

checkOidcToken(api.OidcToken o) {
  buildCounterOidcToken++;
  if (buildCounterOidcToken < 3) {
    unittest.expect(o.audience, unittest.equals('foo'));
    unittest.expect(o.serviceAccountEmail, unittest.equals('foo'));
  }
  buildCounterOidcToken--;
}

buildUnnamed5099() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed5099(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed5099();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed5099(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

buildUnnamed5100() {
  var o = new core.List<api.PubsubMessage>();
  o.add(buildPubsubMessage());
  o.add(buildPubsubMessage());
  return o;
}

checkUnnamed5100(core.List<api.PubsubMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPubsubMessage(o[0]);
  checkPubsubMessage(o[1]);
}

core.int buildCounterPublishRequest = 0;
buildPublishRequest() {
  var o = new api.PublishRequest();
  buildCounterPublishRequest++;
  if (buildCounterPublishRequest < 3) {
    o.messages = buildUnnamed5100();
  }
  buildCounterPublishRequest--;
  return o;
}

checkPublishRequest(api.PublishRequest o) {
  buildCounterPublishRequest++;
  if (buildCounterPublishRequest < 3) {
    checkUnnamed5100(o.messages);
  }
  buildCounterPublishRequest--;
}

buildUnnamed5101() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5101(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPublishResponse = 0;
buildPublishResponse() {
  var o = new api.PublishResponse();
  buildCounterPublishResponse++;
  if (buildCounterPublishResponse < 3) {
    o.messageIds = buildUnnamed5101();
  }
  buildCounterPublishResponse--;
  return o;
}

checkPublishResponse(api.PublishResponse o) {
  buildCounterPublishResponse++;
  if (buildCounterPublishResponse < 3) {
    checkUnnamed5101(o.messageIds);
  }
  buildCounterPublishResponse--;
}

buildUnnamed5102() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5102(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterPubsubMessage = 0;
buildPubsubMessage() {
  var o = new api.PubsubMessage();
  buildCounterPubsubMessage++;
  if (buildCounterPubsubMessage < 3) {
    o.attributes = buildUnnamed5102();
    o.data = "foo";
    o.messageId = "foo";
    o.publishTime = "foo";
  }
  buildCounterPubsubMessage--;
  return o;
}

checkPubsubMessage(api.PubsubMessage o) {
  buildCounterPubsubMessage++;
  if (buildCounterPubsubMessage < 3) {
    checkUnnamed5102(o.attributes);
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.messageId, unittest.equals('foo'));
    unittest.expect(o.publishTime, unittest.equals('foo'));
  }
  buildCounterPubsubMessage--;
}

core.int buildCounterPullRequest = 0;
buildPullRequest() {
  var o = new api.PullRequest();
  buildCounterPullRequest++;
  if (buildCounterPullRequest < 3) {
    o.maxMessages = 42;
    o.returnImmediately = true;
  }
  buildCounterPullRequest--;
  return o;
}

checkPullRequest(api.PullRequest o) {
  buildCounterPullRequest++;
  if (buildCounterPullRequest < 3) {
    unittest.expect(o.maxMessages, unittest.equals(42));
    unittest.expect(o.returnImmediately, unittest.isTrue);
  }
  buildCounterPullRequest--;
}

buildUnnamed5103() {
  var o = new core.List<api.ReceivedMessage>();
  o.add(buildReceivedMessage());
  o.add(buildReceivedMessage());
  return o;
}

checkUnnamed5103(core.List<api.ReceivedMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReceivedMessage(o[0]);
  checkReceivedMessage(o[1]);
}

core.int buildCounterPullResponse = 0;
buildPullResponse() {
  var o = new api.PullResponse();
  buildCounterPullResponse++;
  if (buildCounterPullResponse < 3) {
    o.receivedMessages = buildUnnamed5103();
  }
  buildCounterPullResponse--;
  return o;
}

checkPullResponse(api.PullResponse o) {
  buildCounterPullResponse++;
  if (buildCounterPullResponse < 3) {
    checkUnnamed5103(o.receivedMessages);
  }
  buildCounterPullResponse--;
}

buildUnnamed5104() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed5104(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterPushConfig = 0;
buildPushConfig() {
  var o = new api.PushConfig();
  buildCounterPushConfig++;
  if (buildCounterPushConfig < 3) {
    o.attributes = buildUnnamed5104();
    o.oidcToken = buildOidcToken();
    o.pushEndpoint = "foo";
  }
  buildCounterPushConfig--;
  return o;
}

checkPushConfig(api.PushConfig o) {
  buildCounterPushConfig++;
  if (buildCounterPushConfig < 3) {
    checkUnnamed5104(o.attributes);
    checkOidcToken(o.oidcToken);
    unittest.expect(o.pushEndpoint, unittest.equals('foo'));
  }
  buildCounterPushConfig--;
}

core.int buildCounterReceivedMessage = 0;
buildReceivedMessage() {
  var o = new api.ReceivedMessage();
  buildCounterReceivedMessage++;
  if (buildCounterReceivedMessage < 3) {
    o.ackId = "foo";
    o.message = buildPubsubMessage();
  }
  buildCounterReceivedMessage--;
  return o;
}

checkReceivedMessage(api.ReceivedMessage o) {
  buildCounterReceivedMessage++;
  if (buildCounterReceivedMessage < 3) {
    unittest.expect(o.ackId, unittest.equals('foo'));
    checkPubsubMessage(o.message);
  }
  buildCounterReceivedMessage--;
}

core.int buildCounterSetIamPolicyRequest = 0;
buildSetIamPolicyRequest() {
  var o = new api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterSubscription = 0;
buildSubscription() {
  var o = new api.Subscription();
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    o.ackDeadlineSeconds = 42;
    o.name = "foo";
    o.pushConfig = buildPushConfig();
    o.topic = "foo";
  }
  buildCounterSubscription--;
  return o;
}

checkSubscription(api.Subscription o) {
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    unittest.expect(o.ackDeadlineSeconds, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    checkPushConfig(o.pushConfig);
    unittest.expect(o.topic, unittest.equals('foo'));
  }
  buildCounterSubscription--;
}

buildUnnamed5105() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5105(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed5105();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed5105(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed5106() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5106(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed5106();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed5106(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTopic = 0;
buildTopic() {
  var o = new api.Topic();
  buildCounterTopic++;
  if (buildCounterTopic < 3) {
    o.name = "foo";
  }
  buildCounterTopic--;
  return o;
}

checkTopic(api.Topic o) {
  buildCounterTopic++;
  if (buildCounterTopic < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterTopic--;
}

main() {
  unittest.group("obj-schema-AcknowledgeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAcknowledgeRequest();
      var od = new api.AcknowledgeRequest.fromJson(o.toJson());
      checkAcknowledgeRequest(od);
    });
  });

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-ListSubscriptionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListSubscriptionsResponse();
      var od = new api.ListSubscriptionsResponse.fromJson(o.toJson());
      checkListSubscriptionsResponse(od);
    });
  });

  unittest.group("obj-schema-ListTopicSubscriptionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListTopicSubscriptionsResponse();
      var od = new api.ListTopicSubscriptionsResponse.fromJson(o.toJson());
      checkListTopicSubscriptionsResponse(od);
    });
  });

  unittest.group("obj-schema-ListTopicsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListTopicsResponse();
      var od = new api.ListTopicsResponse.fromJson(o.toJson());
      checkListTopicsResponse(od);
    });
  });

  unittest.group("obj-schema-ModifyAckDeadlineRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildModifyAckDeadlineRequest();
      var od = new api.ModifyAckDeadlineRequest.fromJson(o.toJson());
      checkModifyAckDeadlineRequest(od);
    });
  });

  unittest.group("obj-schema-ModifyPushConfigRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildModifyPushConfigRequest();
      var od = new api.ModifyPushConfigRequest.fromJson(o.toJson());
      checkModifyPushConfigRequest(od);
    });
  });

  unittest.group("obj-schema-OidcToken", () {
    unittest.test("to-json--from-json", () {
      var o = buildOidcToken();
      var od = new api.OidcToken.fromJson(o.toJson());
      checkOidcToken(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-PublishRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublishRequest();
      var od = new api.PublishRequest.fromJson(o.toJson());
      checkPublishRequest(od);
    });
  });

  unittest.group("obj-schema-PublishResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublishResponse();
      var od = new api.PublishResponse.fromJson(o.toJson());
      checkPublishResponse(od);
    });
  });

  unittest.group("obj-schema-PubsubMessage", () {
    unittest.test("to-json--from-json", () {
      var o = buildPubsubMessage();
      var od = new api.PubsubMessage.fromJson(o.toJson());
      checkPubsubMessage(od);
    });
  });

  unittest.group("obj-schema-PullRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPullRequest();
      var od = new api.PullRequest.fromJson(o.toJson());
      checkPullRequest(od);
    });
  });

  unittest.group("obj-schema-PullResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPullResponse();
      var od = new api.PullResponse.fromJson(o.toJson());
      checkPullResponse(od);
    });
  });

  unittest.group("obj-schema-PushConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildPushConfig();
      var od = new api.PushConfig.fromJson(o.toJson());
      checkPushConfig(od);
    });
  });

  unittest.group("obj-schema-ReceivedMessage", () {
    unittest.test("to-json--from-json", () {
      var o = buildReceivedMessage();
      var od = new api.ReceivedMessage.fromJson(o.toJson());
      checkReceivedMessage(od);
    });
  });

  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-Subscription", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscription();
      var od = new api.Subscription.fromJson(o.toJson());
      checkSubscription(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsRequest();
      var od = new api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsResponse();
      var od = new api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group("obj-schema-Topic", () {
    unittest.test("to-json--from-json", () {
      var o = buildTopic();
      var od = new api.Topic.fromJson(o.toJson());
      checkTopic(od);
    });
  });

  unittest.group("resource-ProjectsSubscriptionsResourceApi", () {
    unittest.test("method--acknowledge", () {
      var mock = new HttpServerMock();
      api.ProjectsSubscriptionsResourceApi res =
          new api.PubsubApi(mock).projects.subscriptions;
      var arg_request = buildAcknowledgeRequest();
      var arg_subscription = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AcknowledgeRequest.fromJson(json);
        checkAcknowledgeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .acknowledge(arg_request, arg_subscription, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsSubscriptionsResourceApi res =
          new api.PubsubApi(mock).projects.subscriptions;
      var arg_request = buildSubscription();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Subscription.fromJson(json);
        checkSubscription(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSubscription());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSubscription(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsSubscriptionsResourceApi res =
          new api.PubsubApi(mock).projects.subscriptions;
      var arg_subscription = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_subscription, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsSubscriptionsResourceApi res =
          new api.PubsubApi(mock).projects.subscriptions;
      var arg_subscription = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSubscription());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_subscription, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSubscription(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsSubscriptionsResourceApi res =
          new api.PubsubApi(mock).projects.subscriptions;
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsSubscriptionsResourceApi res =
          new api.PubsubApi(mock).projects.subscriptions;
      var arg_project = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListSubscriptionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSubscriptionsResponse(response);
      })));
    });

    unittest.test("method--modifyAckDeadline", () {
      var mock = new HttpServerMock();
      api.ProjectsSubscriptionsResourceApi res =
          new api.PubsubApi(mock).projects.subscriptions;
      var arg_request = buildModifyAckDeadlineRequest();
      var arg_subscription = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ModifyAckDeadlineRequest.fromJson(json);
        checkModifyAckDeadlineRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .modifyAckDeadline(arg_request, arg_subscription,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--modifyPushConfig", () {
      var mock = new HttpServerMock();
      api.ProjectsSubscriptionsResourceApi res =
          new api.PubsubApi(mock).projects.subscriptions;
      var arg_request = buildModifyPushConfigRequest();
      var arg_subscription = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ModifyPushConfigRequest.fromJson(json);
        checkModifyPushConfigRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .modifyPushConfig(arg_request, arg_subscription, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--pull", () {
      var mock = new HttpServerMock();
      api.ProjectsSubscriptionsResourceApi res =
          new api.PubsubApi(mock).projects.subscriptions;
      var arg_request = buildPullRequest();
      var arg_subscription = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PullRequest.fromJson(json);
        checkPullRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPullResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .pull(arg_request, arg_subscription, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPullResponse(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsSubscriptionsResourceApi res =
          new api.PubsubApi(mock).projects.subscriptions;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsSubscriptionsResourceApi res =
          new api.PubsubApi(mock).projects.subscriptions;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsTopicsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsTopicsResourceApi res =
          new api.PubsubApi(mock).projects.topics;
      var arg_request = buildTopic();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Topic.fromJson(json);
        checkTopic(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTopic());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTopic(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsTopicsResourceApi res =
          new api.PubsubApi(mock).projects.topics;
      var arg_topic = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_topic, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsTopicsResourceApi res =
          new api.PubsubApi(mock).projects.topics;
      var arg_topic = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTopic());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_topic, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTopic(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsTopicsResourceApi res =
          new api.PubsubApi(mock).projects.topics;
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsTopicsResourceApi res =
          new api.PubsubApi(mock).projects.topics;
      var arg_project = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListTopicsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_project,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTopicsResponse(response);
      })));
    });

    unittest.test("method--publish", () {
      var mock = new HttpServerMock();
      api.ProjectsTopicsResourceApi res =
          new api.PubsubApi(mock).projects.topics;
      var arg_request = buildPublishRequest();
      var arg_topic = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PublishRequest.fromJson(json);
        checkPublishRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPublishResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .publish(arg_request, arg_topic, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPublishResponse(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsTopicsResourceApi res =
          new api.PubsubApi(mock).projects.topics;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsTopicsResourceApi res =
          new api.PubsubApi(mock).projects.topics;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsTopicsSubscriptionsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsTopicsSubscriptionsResourceApi res =
          new api.PubsubApi(mock).projects.topics.subscriptions;
      var arg_topic = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta2/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListTopicSubscriptionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_topic,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTopicSubscriptionsResponse(response);
      })));
    });
  });
}
