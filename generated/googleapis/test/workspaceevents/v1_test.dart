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

import 'package:googleapis/workspaceevents/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed1() => {
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

void checkUnnamed1(core.Map<core.String, core.Object?> o) {
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

core.List<api.Part> buildUnnamed2() => [buildPart(), buildPart()];

void checkUnnamed2(core.List<api.Part> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPart(o[0]);
  checkPart(o[1]);
}

core.int buildCounterArtifact = 0;
api.Artifact buildArtifact() {
  final o = api.Artifact();
  buildCounterArtifact++;
  if (buildCounterArtifact < 3) {
    o.artifactId = 'foo';
    o.description = 'foo';
    o.extensions = buildUnnamed0();
    o.metadata = buildUnnamed1();
    o.name = 'foo';
    o.parts = buildUnnamed2();
  }
  buildCounterArtifact--;
  return o;
}

void checkArtifact(api.Artifact o) {
  buildCounterArtifact++;
  if (buildCounterArtifact < 3) {
    unittest.expect(o.artifactId!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed0(o.extensions!);
    checkUnnamed1(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed2(o.parts!);
  }
  buildCounterArtifact--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuthenticationInfo = 0;
api.AuthenticationInfo buildAuthenticationInfo() {
  final o = api.AuthenticationInfo();
  buildCounterAuthenticationInfo++;
  if (buildCounterAuthenticationInfo < 3) {
    o.credentials = 'foo';
    o.schemes = buildUnnamed3();
  }
  buildCounterAuthenticationInfo--;
  return o;
}

void checkAuthenticationInfo(api.AuthenticationInfo o) {
  buildCounterAuthenticationInfo++;
  if (buildCounterAuthenticationInfo < 3) {
    unittest.expect(o.credentials!, unittest.equals('foo'));
    checkUnnamed3(o.schemes!);
  }
  buildCounterAuthenticationInfo--;
}

core.int buildCounterCancelTaskRequest = 0;
api.CancelTaskRequest buildCancelTaskRequest() {
  final o = api.CancelTaskRequest();
  buildCounterCancelTaskRequest++;
  if (buildCounterCancelTaskRequest < 3) {
    o.tenant = 'foo';
  }
  buildCounterCancelTaskRequest--;
  return o;
}

void checkCancelTaskRequest(api.CancelTaskRequest o) {
  buildCounterCancelTaskRequest++;
  if (buildCounterCancelTaskRequest < 3) {
    unittest.expect(o.tenant!, unittest.equals('foo'));
  }
  buildCounterCancelTaskRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed4() => {
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

void checkUnnamed4(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.int buildCounterDataPart = 0;
api.DataPart buildDataPart() {
  final o = api.DataPart();
  buildCounterDataPart++;
  if (buildCounterDataPart < 3) {
    o.data = buildUnnamed4();
  }
  buildCounterDataPart--;
  return o;
}

void checkDataPart(api.DataPart o) {
  buildCounterDataPart++;
  if (buildCounterDataPart < 3) {
    checkUnnamed4(o.data!);
  }
  buildCounterDataPart--;
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

core.int buildCounterFilePart = 0;
api.FilePart buildFilePart() {
  final o = api.FilePart();
  buildCounterFilePart++;
  if (buildCounterFilePart < 3) {
    o.fileWithBytes = 'foo';
    o.fileWithUri = 'foo';
    o.mimeType = 'foo';
    o.name = 'foo';
  }
  buildCounterFilePart--;
  return o;
}

void checkFilePart(api.FilePart o) {
  buildCounterFilePart++;
  if (buildCounterFilePart < 3) {
    unittest.expect(o.fileWithBytes!, unittest.equals('foo'));
    unittest.expect(o.fileWithUri!, unittest.equals('foo'));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterFilePart--;
}

core.List<api.Subscription> buildUnnamed5() => [
  buildSubscription(),
  buildSubscription(),
];

void checkUnnamed5(core.List<api.Subscription> o) {
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
    o.subscriptions = buildUnnamed5();
  }
  buildCounterListSubscriptionsResponse--;
  return o;
}

void checkListSubscriptionsResponse(api.ListSubscriptionsResponse o) {
  buildCounterListSubscriptionsResponse++;
  if (buildCounterListSubscriptionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed5(o.subscriptions!);
  }
  buildCounterListSubscriptionsResponse--;
}

core.List<api.TaskPushNotificationConfig> buildUnnamed6() => [
  buildTaskPushNotificationConfig(),
  buildTaskPushNotificationConfig(),
];

void checkUnnamed6(core.List<api.TaskPushNotificationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTaskPushNotificationConfig(o[0]);
  checkTaskPushNotificationConfig(o[1]);
}

core.int buildCounterListTaskPushNotificationConfigResponse = 0;
api.ListTaskPushNotificationConfigResponse
buildListTaskPushNotificationConfigResponse() {
  final o = api.ListTaskPushNotificationConfigResponse();
  buildCounterListTaskPushNotificationConfigResponse++;
  if (buildCounterListTaskPushNotificationConfigResponse < 3) {
    o.configs = buildUnnamed6();
    o.nextPageToken = 'foo';
  }
  buildCounterListTaskPushNotificationConfigResponse--;
  return o;
}

void checkListTaskPushNotificationConfigResponse(
  api.ListTaskPushNotificationConfigResponse o,
) {
  buildCounterListTaskPushNotificationConfigResponse++;
  if (buildCounterListTaskPushNotificationConfigResponse < 3) {
    checkUnnamed6(o.configs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListTaskPushNotificationConfigResponse--;
}

core.List<api.Part> buildUnnamed7() => [buildPart(), buildPart()];

void checkUnnamed7(core.List<api.Part> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPart(o[0]);
  checkPart(o[1]);
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed9() => {
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

void checkUnnamed9(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterMessage = 0;
api.Message buildMessage() {
  final o = api.Message();
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    o.content = buildUnnamed7();
    o.contextId = 'foo';
    o.extensions = buildUnnamed8();
    o.messageId = 'foo';
    o.metadata = buildUnnamed9();
    o.role = 'foo';
    o.taskId = 'foo';
  }
  buildCounterMessage--;
  return o;
}

void checkMessage(api.Message o) {
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    checkUnnamed7(o.content!);
    unittest.expect(o.contextId!, unittest.equals('foo'));
    checkUnnamed8(o.extensions!);
    unittest.expect(o.messageId!, unittest.equals('foo'));
    checkUnnamed9(o.metadata!);
    unittest.expect(o.role!, unittest.equals('foo'));
    unittest.expect(o.taskId!, unittest.equals('foo'));
  }
  buildCounterMessage--;
}

core.int buildCounterNotificationEndpoint = 0;
api.NotificationEndpoint buildNotificationEndpoint() {
  final o = api.NotificationEndpoint();
  buildCounterNotificationEndpoint++;
  if (buildCounterNotificationEndpoint < 3) {
    o.pubsubTopic = 'foo';
  }
  buildCounterNotificationEndpoint--;
  return o;
}

void checkNotificationEndpoint(api.NotificationEndpoint o) {
  buildCounterNotificationEndpoint++;
  if (buildCounterNotificationEndpoint < 3) {
    unittest.expect(o.pubsubTopic!, unittest.equals('foo'));
  }
  buildCounterNotificationEndpoint--;
}

core.Map<core.String, core.Object?> buildUnnamed10() => {
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

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed11() => {
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

void checkUnnamed11(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed10();
    o.name = 'foo';
    o.response = buildUnnamed11();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed10(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed11(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed12() => {
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

void checkUnnamed12(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted11['bool'], unittest.equals(true));
  unittest.expect(casted11['string'], unittest.equals('foo'));
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted12['bool'], unittest.equals(true));
  unittest.expect(casted12['string'], unittest.equals('foo'));
}

core.int buildCounterPart = 0;
api.Part buildPart() {
  final o = api.Part();
  buildCounterPart++;
  if (buildCounterPart < 3) {
    o.data = buildDataPart();
    o.file = buildFilePart();
    o.metadata = buildUnnamed12();
    o.text = 'foo';
  }
  buildCounterPart--;
  return o;
}

void checkPart(api.Part o) {
  buildCounterPart++;
  if (buildCounterPart < 3) {
    checkDataPart(o.data!);
    checkFilePart(o.file!);
    checkUnnamed12(o.metadata!);
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterPart--;
}

core.int buildCounterPayloadOptions = 0;
api.PayloadOptions buildPayloadOptions() {
  final o = api.PayloadOptions();
  buildCounterPayloadOptions++;
  if (buildCounterPayloadOptions < 3) {
    o.fieldMask = 'foo';
    o.includeResource = true;
  }
  buildCounterPayloadOptions--;
  return o;
}

void checkPayloadOptions(api.PayloadOptions o) {
  buildCounterPayloadOptions++;
  if (buildCounterPayloadOptions < 3) {
    unittest.expect(o.fieldMask!, unittest.equals('foo'));
    unittest.expect(o.includeResource!, unittest.isTrue);
  }
  buildCounterPayloadOptions--;
}

core.int buildCounterPushNotificationConfig = 0;
api.PushNotificationConfig buildPushNotificationConfig() {
  final o = api.PushNotificationConfig();
  buildCounterPushNotificationConfig++;
  if (buildCounterPushNotificationConfig < 3) {
    o.authentication = buildAuthenticationInfo();
    o.id = 'foo';
    o.token = 'foo';
    o.url = 'foo';
  }
  buildCounterPushNotificationConfig--;
  return o;
}

void checkPushNotificationConfig(api.PushNotificationConfig o) {
  buildCounterPushNotificationConfig++;
  if (buildCounterPushNotificationConfig < 3) {
    checkAuthenticationInfo(o.authentication!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.token!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterPushNotificationConfig--;
}

core.int buildCounterReactivateSubscriptionRequest = 0;
api.ReactivateSubscriptionRequest buildReactivateSubscriptionRequest() {
  final o = api.ReactivateSubscriptionRequest();
  buildCounterReactivateSubscriptionRequest++;
  if (buildCounterReactivateSubscriptionRequest < 3) {}
  buildCounterReactivateSubscriptionRequest--;
  return o;
}

void checkReactivateSubscriptionRequest(api.ReactivateSubscriptionRequest o) {
  buildCounterReactivateSubscriptionRequest++;
  if (buildCounterReactivateSubscriptionRequest < 3) {}
  buildCounterReactivateSubscriptionRequest--;
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSendMessageConfiguration = 0;
api.SendMessageConfiguration buildSendMessageConfiguration() {
  final o = api.SendMessageConfiguration();
  buildCounterSendMessageConfiguration++;
  if (buildCounterSendMessageConfiguration < 3) {
    o.acceptedOutputModes = buildUnnamed13();
    o.blocking = true;
    o.historyLength = 42;
    o.pushNotification = buildPushNotificationConfig();
  }
  buildCounterSendMessageConfiguration--;
  return o;
}

void checkSendMessageConfiguration(api.SendMessageConfiguration o) {
  buildCounterSendMessageConfiguration++;
  if (buildCounterSendMessageConfiguration < 3) {
    checkUnnamed13(o.acceptedOutputModes!);
    unittest.expect(o.blocking!, unittest.isTrue);
    unittest.expect(o.historyLength!, unittest.equals(42));
    checkPushNotificationConfig(o.pushNotification!);
  }
  buildCounterSendMessageConfiguration--;
}

core.Map<core.String, core.Object?> buildUnnamed14() => {
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

void checkUnnamed14(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o['x']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted13['bool'], unittest.equals(true));
  unittest.expect(casted13['string'], unittest.equals('foo'));
  var casted14 = (o['y']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted14['bool'], unittest.equals(true));
  unittest.expect(casted14['string'], unittest.equals('foo'));
}

core.int buildCounterSendMessageRequest = 0;
api.SendMessageRequest buildSendMessageRequest() {
  final o = api.SendMessageRequest();
  buildCounterSendMessageRequest++;
  if (buildCounterSendMessageRequest < 3) {
    o.configuration = buildSendMessageConfiguration();
    o.message = buildMessage();
    o.metadata = buildUnnamed14();
    o.tenant = 'foo';
  }
  buildCounterSendMessageRequest--;
  return o;
}

void checkSendMessageRequest(api.SendMessageRequest o) {
  buildCounterSendMessageRequest++;
  if (buildCounterSendMessageRequest < 3) {
    checkSendMessageConfiguration(o.configuration!);
    checkMessage(o.message!);
    checkUnnamed14(o.metadata!);
    unittest.expect(o.tenant!, unittest.equals('foo'));
  }
  buildCounterSendMessageRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed15() => {
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

void checkUnnamed15(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o['x']!) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(casted15['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted15['bool'], unittest.equals(true));
  unittest.expect(casted15['string'], unittest.equals('foo'));
  var casted16 = (o['y']!) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(casted16['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted16['bool'], unittest.equals(true));
  unittest.expect(casted16['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed16() => [
  buildUnnamed15(),
  buildUnnamed15(),
];

void checkUnnamed16(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed15(o[0]);
  checkUnnamed15(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed16();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed16(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStreamResponse = 0;
api.StreamResponse buildStreamResponse() {
  final o = api.StreamResponse();
  buildCounterStreamResponse++;
  if (buildCounterStreamResponse < 3) {
    o.artifactUpdate = buildTaskArtifactUpdateEvent();
    o.message = buildMessage();
    o.statusUpdate = buildTaskStatusUpdateEvent();
    o.task = buildTask();
  }
  buildCounterStreamResponse--;
  return o;
}

void checkStreamResponse(api.StreamResponse o) {
  buildCounterStreamResponse++;
  if (buildCounterStreamResponse < 3) {
    checkTaskArtifactUpdateEvent(o.artifactUpdate!);
    checkMessage(o.message!);
    checkTaskStatusUpdateEvent(o.statusUpdate!);
    checkTask(o.task!);
  }
  buildCounterStreamResponse--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSubscription = 0;
api.Subscription buildSubscription() {
  final o = api.Subscription();
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    o.authority = 'foo';
    o.createTime = 'foo';
    o.etag = 'foo';
    o.eventTypes = buildUnnamed17();
    o.expireTime = 'foo';
    o.name = 'foo';
    o.notificationEndpoint = buildNotificationEndpoint();
    o.payloadOptions = buildPayloadOptions();
    o.reconciling = true;
    o.state = 'foo';
    o.suspensionReason = 'foo';
    o.targetResource = 'foo';
    o.ttl = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterSubscription--;
  return o;
}

void checkSubscription(api.Subscription o) {
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    unittest.expect(o.authority!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed17(o.eventTypes!);
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkNotificationEndpoint(o.notificationEndpoint!);
    checkPayloadOptions(o.payloadOptions!);
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.suspensionReason!, unittest.equals('foo'));
    unittest.expect(o.targetResource!, unittest.equals('foo'));
    unittest.expect(o.ttl!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterSubscription--;
}

core.List<api.Artifact> buildUnnamed18() => [buildArtifact(), buildArtifact()];

void checkUnnamed18(core.List<api.Artifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifact(o[0]);
  checkArtifact(o[1]);
}

core.List<api.Message> buildUnnamed19() => [buildMessage(), buildMessage()];

void checkUnnamed19(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed20() => {
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

void checkUnnamed20(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted17 = (o['x']!) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(casted17['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted17['bool'], unittest.equals(true));
  unittest.expect(casted17['string'], unittest.equals('foo'));
  var casted18 = (o['y']!) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(casted18['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted18['bool'], unittest.equals(true));
  unittest.expect(casted18['string'], unittest.equals('foo'));
}

core.int buildCounterTask = 0;
api.Task buildTask() {
  final o = api.Task();
  buildCounterTask++;
  if (buildCounterTask < 3) {
    o.artifacts = buildUnnamed18();
    o.contextId = 'foo';
    o.history = buildUnnamed19();
    o.id = 'foo';
    o.metadata = buildUnnamed20();
    o.status = buildTaskStatus();
  }
  buildCounterTask--;
  return o;
}

void checkTask(api.Task o) {
  buildCounterTask++;
  if (buildCounterTask < 3) {
    checkUnnamed18(o.artifacts!);
    unittest.expect(o.contextId!, unittest.equals('foo'));
    checkUnnamed19(o.history!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed20(o.metadata!);
    checkTaskStatus(o.status!);
  }
  buildCounterTask--;
}

core.Map<core.String, core.Object?> buildUnnamed21() => {
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

void checkUnnamed21(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted19 = (o['x']!) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(casted19['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted19['bool'], unittest.equals(true));
  unittest.expect(casted19['string'], unittest.equals('foo'));
  var casted20 = (o['y']!) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(casted20['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted20['bool'], unittest.equals(true));
  unittest.expect(casted20['string'], unittest.equals('foo'));
}

core.int buildCounterTaskArtifactUpdateEvent = 0;
api.TaskArtifactUpdateEvent buildTaskArtifactUpdateEvent() {
  final o = api.TaskArtifactUpdateEvent();
  buildCounterTaskArtifactUpdateEvent++;
  if (buildCounterTaskArtifactUpdateEvent < 3) {
    o.append = true;
    o.artifact = buildArtifact();
    o.contextId = 'foo';
    o.lastChunk = true;
    o.metadata = buildUnnamed21();
    o.taskId = 'foo';
  }
  buildCounterTaskArtifactUpdateEvent--;
  return o;
}

void checkTaskArtifactUpdateEvent(api.TaskArtifactUpdateEvent o) {
  buildCounterTaskArtifactUpdateEvent++;
  if (buildCounterTaskArtifactUpdateEvent < 3) {
    unittest.expect(o.append!, unittest.isTrue);
    checkArtifact(o.artifact!);
    unittest.expect(o.contextId!, unittest.equals('foo'));
    unittest.expect(o.lastChunk!, unittest.isTrue);
    checkUnnamed21(o.metadata!);
    unittest.expect(o.taskId!, unittest.equals('foo'));
  }
  buildCounterTaskArtifactUpdateEvent--;
}

core.int buildCounterTaskPushNotificationConfig = 0;
api.TaskPushNotificationConfig buildTaskPushNotificationConfig() {
  final o = api.TaskPushNotificationConfig();
  buildCounterTaskPushNotificationConfig++;
  if (buildCounterTaskPushNotificationConfig < 3) {
    o.name = 'foo';
    o.pushNotificationConfig = buildPushNotificationConfig();
  }
  buildCounterTaskPushNotificationConfig--;
  return o;
}

void checkTaskPushNotificationConfig(api.TaskPushNotificationConfig o) {
  buildCounterTaskPushNotificationConfig++;
  if (buildCounterTaskPushNotificationConfig < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPushNotificationConfig(o.pushNotificationConfig!);
  }
  buildCounterTaskPushNotificationConfig--;
}

core.int buildCounterTaskStatus = 0;
api.TaskStatus buildTaskStatus() {
  final o = api.TaskStatus();
  buildCounterTaskStatus++;
  if (buildCounterTaskStatus < 3) {
    o.message = buildMessage();
    o.state = 'foo';
    o.timestamp = 'foo';
  }
  buildCounterTaskStatus--;
  return o;
}

void checkTaskStatus(api.TaskStatus o) {
  buildCounterTaskStatus++;
  if (buildCounterTaskStatus < 3) {
    checkMessage(o.message!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.timestamp!, unittest.equals('foo'));
  }
  buildCounterTaskStatus--;
}

core.Map<core.String, core.Object?> buildUnnamed22() => {
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

void checkUnnamed22(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted21 = (o['x']!) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(casted21['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted21['bool'], unittest.equals(true));
  unittest.expect(casted21['string'], unittest.equals('foo'));
  var casted22 = (o['y']!) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(casted22['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted22['bool'], unittest.equals(true));
  unittest.expect(casted22['string'], unittest.equals('foo'));
}

core.int buildCounterTaskStatusUpdateEvent = 0;
api.TaskStatusUpdateEvent buildTaskStatusUpdateEvent() {
  final o = api.TaskStatusUpdateEvent();
  buildCounterTaskStatusUpdateEvent++;
  if (buildCounterTaskStatusUpdateEvent < 3) {
    o.contextId = 'foo';
    o.final_ = true;
    o.metadata = buildUnnamed22();
    o.status = buildTaskStatus();
    o.taskId = 'foo';
  }
  buildCounterTaskStatusUpdateEvent--;
  return o;
}

void checkTaskStatusUpdateEvent(api.TaskStatusUpdateEvent o) {
  buildCounterTaskStatusUpdateEvent++;
  if (buildCounterTaskStatusUpdateEvent < 3) {
    unittest.expect(o.contextId!, unittest.equals('foo'));
    unittest.expect(o.final_!, unittest.isTrue);
    checkUnnamed22(o.metadata!);
    checkTaskStatus(o.status!);
    unittest.expect(o.taskId!, unittest.equals('foo'));
  }
  buildCounterTaskStatusUpdateEvent--;
}

void main() {
  unittest.group('obj-schema-Artifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Artifact.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkArtifact(od);
    });
  });

  unittest.group('obj-schema-AuthenticationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthenticationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthenticationInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthenticationInfo(od);
    });
  });

  unittest.group('obj-schema-CancelTaskRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelTaskRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelTaskRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelTaskRequest(od);
    });
  });

  unittest.group('obj-schema-DataPart', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataPart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataPart.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataPart(od);
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

  unittest.group('obj-schema-FilePart', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilePart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilePart.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFilePart(od);
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

  unittest.group('obj-schema-ListTaskPushNotificationConfigResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTaskPushNotificationConfigResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTaskPushNotificationConfigResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTaskPushNotificationConfigResponse(od);
    });
  });

  unittest.group('obj-schema-Message', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Message.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMessage(od);
    });
  });

  unittest.group('obj-schema-NotificationEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotificationEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotificationEndpoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNotificationEndpoint(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Operation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-Part', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Part.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPart(od);
    });
  });

  unittest.group('obj-schema-PayloadOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPayloadOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PayloadOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPayloadOptions(od);
    });
  });

  unittest.group('obj-schema-PushNotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPushNotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PushNotificationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPushNotificationConfig(od);
    });
  });

  unittest.group('obj-schema-ReactivateSubscriptionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReactivateSubscriptionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReactivateSubscriptionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReactivateSubscriptionRequest(od);
    });
  });

  unittest.group('obj-schema-SendMessageConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSendMessageConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SendMessageConfiguration.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSendMessageConfiguration(od);
    });
  });

  unittest.group('obj-schema-SendMessageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSendMessageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SendMessageRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSendMessageRequest(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Status.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-StreamResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStreamResponse(od);
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

  unittest.group('obj-schema-Task', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Task.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTask(od);
    });
  });

  unittest.group('obj-schema-TaskArtifactUpdateEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskArtifactUpdateEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaskArtifactUpdateEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTaskArtifactUpdateEvent(od);
    });
  });

  unittest.group('obj-schema-TaskPushNotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskPushNotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaskPushNotificationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTaskPushNotificationConfig(od);
    });
  });

  unittest.group('obj-schema-TaskStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaskStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTaskStatus(od);
    });
  });

  unittest.group('obj-schema-TaskStatusUpdateEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskStatusUpdateEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaskStatusUpdateEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTaskStatusUpdateEvent(od);
    });
  });

  unittest.group('resource-MessageResource', () {
    unittest.test('method--stream', () async {
      final mock = HttpServerMock();
      final res = api.WorkspaceEventsApi(mock).message;
      final arg_request = buildSendMessageRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SendMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSendMessageRequest(obj);

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
            path.substring(pathOffset, pathOffset + 17),
            unittest.equals('v1/message:stream'),
          );
          pathOffset += 17;

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
          final resp = convert.json.encode(buildStreamResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.stream(arg_request, $fields: arg_$fields);
      checkStreamResponse(response as api.StreamResponse);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WorkspaceEventsApi(mock).operations;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-SubscriptionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.WorkspaceEventsApi(mock).subscriptions;
      final arg_request = buildSubscription();
      final arg_validateOnly = true;
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
            path.substring(pathOffset, pathOffset + 16),
            unittest.equals('v1/subscriptions'),
          );
          pathOffset += 16;

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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.WorkspaceEventsApi(mock).subscriptions;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_validateOnly = true;
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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        allowMissing: arg_allowMissing,
        etag: arg_etag,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WorkspaceEventsApi(mock).subscriptions;
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
          final resp = convert.json.encode(buildSubscription());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkspaceEventsApi(mock).subscriptions;
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
            path.substring(pathOffset, pathOffset + 16),
            unittest.equals('v1/subscriptions'),
          );
          pathOffset += 16;

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
          final resp = convert.json.encode(buildListSubscriptionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListSubscriptionsResponse(response as api.ListSubscriptionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WorkspaceEventsApi(mock).subscriptions;
      final arg_request = buildSubscription();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--reactivate', () async {
      final mock = HttpServerMock();
      final res = api.WorkspaceEventsApi(mock).subscriptions;
      final arg_request = buildReactivateSubscriptionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ReactivateSubscriptionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkReactivateSubscriptionRequest(obj);

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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.reactivate(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-TasksResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.WorkspaceEventsApi(mock).tasks;
      final arg_request = buildCancelTaskRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelTaskRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelTaskRequest(obj);

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
          final resp = convert.json.encode(buildTask());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkTask(response as api.Task);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WorkspaceEventsApi(mock).tasks;
      final arg_name = 'foo';
      final arg_historyLength = 42;
      final arg_tenant = 'foo';
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
            core.int.parse(queryMap['historyLength']!.first),
            unittest.equals(arg_historyLength),
          );
          unittest.expect(
            queryMap['tenant']!.first,
            unittest.equals(arg_tenant),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTask());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        historyLength: arg_historyLength,
        tenant: arg_tenant,
        $fields: arg_$fields,
      );
      checkTask(response as api.Task);
    });

    unittest.test('method--subscribe', () async {
      final mock = HttpServerMock();
      final res = api.WorkspaceEventsApi(mock).tasks;
      final arg_name = 'foo';
      final arg_tenant = 'foo';
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
            queryMap['tenant']!.first,
            unittest.equals(arg_tenant),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildStreamResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.subscribe(
        arg_name,
        tenant: arg_tenant,
        $fields: arg_$fields,
      );
      checkStreamResponse(response as api.StreamResponse);
    });
  });

  unittest.group('resource-TasksPushNotificationConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.WorkspaceEventsApi(mock).tasks.pushNotificationConfigs;
      final arg_request = buildTaskPushNotificationConfig();
      final arg_parent = 'foo';
      final arg_configId = 'foo';
      final arg_tenant = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TaskPushNotificationConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTaskPushNotificationConfig(obj);

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
            queryMap['configId']!.first,
            unittest.equals(arg_configId),
          );
          unittest.expect(
            queryMap['tenant']!.first,
            unittest.equals(arg_tenant),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTaskPushNotificationConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        configId: arg_configId,
        tenant: arg_tenant,
        $fields: arg_$fields,
      );
      checkTaskPushNotificationConfig(
        response as api.TaskPushNotificationConfig,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.WorkspaceEventsApi(mock).tasks.pushNotificationConfigs;
      final arg_name = 'foo';
      final arg_tenant = 'foo';
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
            queryMap['tenant']!.first,
            unittest.equals(arg_tenant),
          );
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
      final response = await res.delete(
        arg_name,
        tenant: arg_tenant,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WorkspaceEventsApi(mock).tasks.pushNotificationConfigs;
      final arg_name = 'foo';
      final arg_tenant = 'foo';
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
            queryMap['tenant']!.first,
            unittest.equals(arg_tenant),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTaskPushNotificationConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        tenant: arg_tenant,
        $fields: arg_$fields,
      );
      checkTaskPushNotificationConfig(
        response as api.TaskPushNotificationConfig,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkspaceEventsApi(mock).tasks.pushNotificationConfigs;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_tenant = 'foo';
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
            queryMap['tenant']!.first,
            unittest.equals(arg_tenant),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListTaskPushNotificationConfigResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        tenant: arg_tenant,
        $fields: arg_$fields,
      );
      checkListTaskPushNotificationConfigResponse(
        response as api.ListTaskPushNotificationConfigResponse,
      );
    });
  });
}
