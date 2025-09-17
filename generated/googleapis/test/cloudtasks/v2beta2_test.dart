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

import 'package:googleapis/cloudtasks/v2beta2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAcknowledgeTaskRequest = 0;
api.AcknowledgeTaskRequest buildAcknowledgeTaskRequest() {
  final o = api.AcknowledgeTaskRequest();
  buildCounterAcknowledgeTaskRequest++;
  if (buildCounterAcknowledgeTaskRequest < 3) {
    o.scheduleTime = 'foo';
  }
  buildCounterAcknowledgeTaskRequest--;
  return o;
}

void checkAcknowledgeTaskRequest(api.AcknowledgeTaskRequest o) {
  buildCounterAcknowledgeTaskRequest++;
  if (buildCounterAcknowledgeTaskRequest < 3) {
    unittest.expect(o.scheduleTime!, unittest.equals('foo'));
  }
  buildCounterAcknowledgeTaskRequest--;
}

core.Map<core.String, core.String> buildUnnamed0() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed0(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAppEngineHttpRequest = 0;
api.AppEngineHttpRequest buildAppEngineHttpRequest() {
  final o = api.AppEngineHttpRequest();
  buildCounterAppEngineHttpRequest++;
  if (buildCounterAppEngineHttpRequest < 3) {
    o.appEngineRouting = buildAppEngineRouting();
    o.headers = buildUnnamed0();
    o.httpMethod = 'foo';
    o.payload = 'foo';
    o.relativeUrl = 'foo';
  }
  buildCounterAppEngineHttpRequest--;
  return o;
}

void checkAppEngineHttpRequest(api.AppEngineHttpRequest o) {
  buildCounterAppEngineHttpRequest++;
  if (buildCounterAppEngineHttpRequest < 3) {
    checkAppEngineRouting(o.appEngineRouting!);
    checkUnnamed0(o.headers!);
    unittest.expect(o.httpMethod!, unittest.equals('foo'));
    unittest.expect(o.payload!, unittest.equals('foo'));
    unittest.expect(o.relativeUrl!, unittest.equals('foo'));
  }
  buildCounterAppEngineHttpRequest--;
}

core.int buildCounterAppEngineHttpTarget = 0;
api.AppEngineHttpTarget buildAppEngineHttpTarget() {
  final o = api.AppEngineHttpTarget();
  buildCounterAppEngineHttpTarget++;
  if (buildCounterAppEngineHttpTarget < 3) {
    o.appEngineRoutingOverride = buildAppEngineRouting();
  }
  buildCounterAppEngineHttpTarget--;
  return o;
}

void checkAppEngineHttpTarget(api.AppEngineHttpTarget o) {
  buildCounterAppEngineHttpTarget++;
  if (buildCounterAppEngineHttpTarget < 3) {
    checkAppEngineRouting(o.appEngineRoutingOverride!);
  }
  buildCounterAppEngineHttpTarget--;
}

core.int buildCounterAppEngineRouting = 0;
api.AppEngineRouting buildAppEngineRouting() {
  final o = api.AppEngineRouting();
  buildCounterAppEngineRouting++;
  if (buildCounterAppEngineRouting < 3) {
    o.host = 'foo';
    o.instance = 'foo';
    o.service = 'foo';
    o.version = 'foo';
  }
  buildCounterAppEngineRouting--;
  return o;
}

void checkAppEngineRouting(api.AppEngineRouting o) {
  buildCounterAppEngineRouting++;
  if (buildCounterAppEngineRouting < 3) {
    unittest.expect(o.host!, unittest.equals('foo'));
    unittest.expect(o.instance!, unittest.equals('foo'));
    unittest.expect(o.service!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterAppEngineRouting--;
}

core.int buildCounterAttemptStatus = 0;
api.AttemptStatus buildAttemptStatus() {
  final o = api.AttemptStatus();
  buildCounterAttemptStatus++;
  if (buildCounterAttemptStatus < 3) {
    o.dispatchTime = 'foo';
    o.responseStatus = buildStatus();
    o.responseTime = 'foo';
    o.scheduleTime = 'foo';
  }
  buildCounterAttemptStatus--;
  return o;
}

void checkAttemptStatus(api.AttemptStatus o) {
  buildCounterAttemptStatus++;
  if (buildCounterAttemptStatus < 3) {
    unittest.expect(o.dispatchTime!, unittest.equals('foo'));
    checkStatus(o.responseStatus!);
    unittest.expect(o.responseTime!, unittest.equals('foo'));
    unittest.expect(o.scheduleTime!, unittest.equals('foo'));
  }
  buildCounterAttemptStatus--;
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

core.int buildCounterBufferTaskRequest = 0;
api.BufferTaskRequest buildBufferTaskRequest() {
  final o = api.BufferTaskRequest();
  buildCounterBufferTaskRequest++;
  if (buildCounterBufferTaskRequest < 3) {
    o.body = buildHttpBody();
  }
  buildCounterBufferTaskRequest--;
  return o;
}

void checkBufferTaskRequest(api.BufferTaskRequest o) {
  buildCounterBufferTaskRequest++;
  if (buildCounterBufferTaskRequest < 3) {
    checkHttpBody(o.body!);
  }
  buildCounterBufferTaskRequest--;
}

core.int buildCounterBufferTaskResponse = 0;
api.BufferTaskResponse buildBufferTaskResponse() {
  final o = api.BufferTaskResponse();
  buildCounterBufferTaskResponse++;
  if (buildCounterBufferTaskResponse < 3) {
    o.task = buildTask();
  }
  buildCounterBufferTaskResponse--;
  return o;
}

void checkBufferTaskResponse(api.BufferTaskResponse o) {
  buildCounterBufferTaskResponse++;
  if (buildCounterBufferTaskResponse < 3) {
    checkTask(o.task!);
  }
  buildCounterBufferTaskResponse--;
}

core.int buildCounterCancelLeaseRequest = 0;
api.CancelLeaseRequest buildCancelLeaseRequest() {
  final o = api.CancelLeaseRequest();
  buildCounterCancelLeaseRequest++;
  if (buildCounterCancelLeaseRequest < 3) {
    o.responseView = 'foo';
    o.scheduleTime = 'foo';
  }
  buildCounterCancelLeaseRequest--;
  return o;
}

void checkCancelLeaseRequest(api.CancelLeaseRequest o) {
  buildCounterCancelLeaseRequest++;
  if (buildCounterCancelLeaseRequest < 3) {
    unittest.expect(o.responseView!, unittest.equals('foo'));
    unittest.expect(o.scheduleTime!, unittest.equals('foo'));
  }
  buildCounterCancelLeaseRequest--;
}

core.int buildCounterCmekConfig = 0;
api.CmekConfig buildCmekConfig() {
  final o = api.CmekConfig();
  buildCounterCmekConfig++;
  if (buildCounterCmekConfig < 3) {
    o.kmsKey = 'foo';
    o.name = 'foo';
  }
  buildCounterCmekConfig--;
  return o;
}

void checkCmekConfig(api.CmekConfig o) {
  buildCounterCmekConfig++;
  if (buildCounterCmekConfig < 3) {
    unittest.expect(o.kmsKey!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterCmekConfig--;
}

core.int buildCounterCreateTaskRequest = 0;
api.CreateTaskRequest buildCreateTaskRequest() {
  final o = api.CreateTaskRequest();
  buildCounterCreateTaskRequest++;
  if (buildCounterCreateTaskRequest < 3) {
    o.responseView = 'foo';
    o.task = buildTask();
  }
  buildCounterCreateTaskRequest--;
  return o;
}

void checkCreateTaskRequest(api.CreateTaskRequest o) {
  buildCounterCreateTaskRequest++;
  if (buildCounterCreateTaskRequest < 3) {
    unittest.expect(o.responseView!, unittest.equals('foo'));
    checkTask(o.task!);
  }
  buildCounterCreateTaskRequest--;
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
    unittest.expect(o.requestedPolicyVersion!, unittest.equals(42));
  }
  buildCounterGetPolicyOptions--;
}

core.int buildCounterHeader = 0;
api.Header buildHeader() {
  final o = api.Header();
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterHeader--;
  return o;
}

void checkHeader(api.Header o) {
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterHeader--;
}

core.int buildCounterHeaderOverride = 0;
api.HeaderOverride buildHeaderOverride() {
  final o = api.HeaderOverride();
  buildCounterHeaderOverride++;
  if (buildCounterHeaderOverride < 3) {
    o.header = buildHeader();
  }
  buildCounterHeaderOverride--;
  return o;
}

void checkHeaderOverride(api.HeaderOverride o) {
  buildCounterHeaderOverride++;
  if (buildCounterHeaderOverride < 3) {
    checkHeader(o.header!);
  }
  buildCounterHeaderOverride--;
}

core.Map<core.String, core.Object?> buildUnnamed2() => {
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

void checkUnnamed2(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed3() => [
  buildUnnamed2(),
  buildUnnamed2(),
];

void checkUnnamed3(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2(o[0]);
  checkUnnamed2(o[1]);
}

core.int buildCounterHttpBody = 0;
api.HttpBody buildHttpBody() {
  final o = api.HttpBody();
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed3();
  }
  buildCounterHttpBody--;
  return o;
}

void checkHttpBody(api.HttpBody o) {
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    unittest.expect(o.contentType!, unittest.equals('foo'));
    unittest.expect(o.data!, unittest.equals('foo'));
    checkUnnamed3(o.extensions!);
  }
  buildCounterHttpBody--;
}

core.Map<core.String, core.String> buildUnnamed4() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed4(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterHttpRequest = 0;
api.HttpRequest buildHttpRequest() {
  final o = api.HttpRequest();
  buildCounterHttpRequest++;
  if (buildCounterHttpRequest < 3) {
    o.body = 'foo';
    o.headers = buildUnnamed4();
    o.httpMethod = 'foo';
    o.oauthToken = buildOAuthToken();
    o.oidcToken = buildOidcToken();
    o.url = 'foo';
  }
  buildCounterHttpRequest--;
  return o;
}

void checkHttpRequest(api.HttpRequest o) {
  buildCounterHttpRequest++;
  if (buildCounterHttpRequest < 3) {
    unittest.expect(o.body!, unittest.equals('foo'));
    checkUnnamed4(o.headers!);
    unittest.expect(o.httpMethod!, unittest.equals('foo'));
    checkOAuthToken(o.oauthToken!);
    checkOidcToken(o.oidcToken!);
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterHttpRequest--;
}

core.List<api.HeaderOverride> buildUnnamed5() => [
  buildHeaderOverride(),
  buildHeaderOverride(),
];

void checkUnnamed5(core.List<api.HeaderOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeaderOverride(o[0]);
  checkHeaderOverride(o[1]);
}

core.int buildCounterHttpTarget = 0;
api.HttpTarget buildHttpTarget() {
  final o = api.HttpTarget();
  buildCounterHttpTarget++;
  if (buildCounterHttpTarget < 3) {
    o.headerOverrides = buildUnnamed5();
    o.httpMethod = 'foo';
    o.oauthToken = buildOAuthToken();
    o.oidcToken = buildOidcToken();
    o.uriOverride = buildUriOverride();
  }
  buildCounterHttpTarget--;
  return o;
}

void checkHttpTarget(api.HttpTarget o) {
  buildCounterHttpTarget++;
  if (buildCounterHttpTarget < 3) {
    checkUnnamed5(o.headerOverrides!);
    unittest.expect(o.httpMethod!, unittest.equals('foo'));
    checkOAuthToken(o.oauthToken!);
    checkOidcToken(o.oidcToken!);
    checkUriOverride(o.uriOverride!);
  }
  buildCounterHttpTarget--;
}

core.int buildCounterLeaseTasksRequest = 0;
api.LeaseTasksRequest buildLeaseTasksRequest() {
  final o = api.LeaseTasksRequest();
  buildCounterLeaseTasksRequest++;
  if (buildCounterLeaseTasksRequest < 3) {
    o.filter = 'foo';
    o.leaseDuration = 'foo';
    o.maxTasks = 42;
    o.responseView = 'foo';
  }
  buildCounterLeaseTasksRequest--;
  return o;
}

void checkLeaseTasksRequest(api.LeaseTasksRequest o) {
  buildCounterLeaseTasksRequest++;
  if (buildCounterLeaseTasksRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.leaseDuration!, unittest.equals('foo'));
    unittest.expect(o.maxTasks!, unittest.equals(42));
    unittest.expect(o.responseView!, unittest.equals('foo'));
  }
  buildCounterLeaseTasksRequest--;
}

core.List<api.Task> buildUnnamed6() => [buildTask(), buildTask()];

void checkUnnamed6(core.List<api.Task> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTask(o[0]);
  checkTask(o[1]);
}

core.int buildCounterLeaseTasksResponse = 0;
api.LeaseTasksResponse buildLeaseTasksResponse() {
  final o = api.LeaseTasksResponse();
  buildCounterLeaseTasksResponse++;
  if (buildCounterLeaseTasksResponse < 3) {
    o.tasks = buildUnnamed6();
  }
  buildCounterLeaseTasksResponse--;
  return o;
}

void checkLeaseTasksResponse(api.LeaseTasksResponse o) {
  buildCounterLeaseTasksResponse++;
  if (buildCounterLeaseTasksResponse < 3) {
    checkUnnamed6(o.tasks!);
  }
  buildCounterLeaseTasksResponse--;
}

core.List<api.Location> buildUnnamed7() => [buildLocation(), buildLocation()];

void checkUnnamed7(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed7();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed7(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Queue> buildUnnamed8() => [buildQueue(), buildQueue()];

void checkUnnamed8(core.List<api.Queue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueue(o[0]);
  checkQueue(o[1]);
}

core.int buildCounterListQueuesResponse = 0;
api.ListQueuesResponse buildListQueuesResponse() {
  final o = api.ListQueuesResponse();
  buildCounterListQueuesResponse++;
  if (buildCounterListQueuesResponse < 3) {
    o.nextPageToken = 'foo';
    o.queues = buildUnnamed8();
  }
  buildCounterListQueuesResponse--;
  return o;
}

void checkListQueuesResponse(api.ListQueuesResponse o) {
  buildCounterListQueuesResponse++;
  if (buildCounterListQueuesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed8(o.queues!);
  }
  buildCounterListQueuesResponse--;
}

core.List<api.Task> buildUnnamed9() => [buildTask(), buildTask()];

void checkUnnamed9(core.List<api.Task> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTask(o[0]);
  checkTask(o[1]);
}

core.int buildCounterListTasksResponse = 0;
api.ListTasksResponse buildListTasksResponse() {
  final o = api.ListTasksResponse();
  buildCounterListTasksResponse++;
  if (buildCounterListTasksResponse < 3) {
    o.nextPageToken = 'foo';
    o.tasks = buildUnnamed9();
  }
  buildCounterListTasksResponse--;
  return o;
}

void checkListTasksResponse(api.ListTasksResponse o) {
  buildCounterListTasksResponse++;
  if (buildCounterListTasksResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed9(o.tasks!);
  }
  buildCounterListTasksResponse--;
}

core.Map<core.String, core.String> buildUnnamed10() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed10(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed10();
    o.locationId = 'foo';
    o.metadata = buildUnnamed11();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed10(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed11(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterOAuthToken = 0;
api.OAuthToken buildOAuthToken() {
  final o = api.OAuthToken();
  buildCounterOAuthToken++;
  if (buildCounterOAuthToken < 3) {
    o.scope = 'foo';
    o.serviceAccountEmail = 'foo';
  }
  buildCounterOAuthToken--;
  return o;
}

void checkOAuthToken(api.OAuthToken o) {
  buildCounterOAuthToken++;
  if (buildCounterOAuthToken < 3) {
    unittest.expect(o.scope!, unittest.equals('foo'));
    unittest.expect(o.serviceAccountEmail!, unittest.equals('foo'));
  }
  buildCounterOAuthToken--;
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

core.int buildCounterPathOverride = 0;
api.PathOverride buildPathOverride() {
  final o = api.PathOverride();
  buildCounterPathOverride++;
  if (buildCounterPathOverride < 3) {
    o.path = 'foo';
  }
  buildCounterPathOverride--;
  return o;
}

void checkPathOverride(api.PathOverride o) {
  buildCounterPathOverride++;
  if (buildCounterPathOverride < 3) {
    unittest.expect(o.path!, unittest.equals('foo'));
  }
  buildCounterPathOverride--;
}

core.int buildCounterPauseQueueRequest = 0;
api.PauseQueueRequest buildPauseQueueRequest() {
  final o = api.PauseQueueRequest();
  buildCounterPauseQueueRequest++;
  if (buildCounterPauseQueueRequest < 3) {}
  buildCounterPauseQueueRequest--;
  return o;
}

void checkPauseQueueRequest(api.PauseQueueRequest o) {
  buildCounterPauseQueueRequest++;
  if (buildCounterPauseQueueRequest < 3) {}
  buildCounterPauseQueueRequest--;
}

core.List<api.Binding> buildUnnamed12() => [buildBinding(), buildBinding()];

void checkUnnamed12(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed12();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed12(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterPullMessage = 0;
api.PullMessage buildPullMessage() {
  final o = api.PullMessage();
  buildCounterPullMessage++;
  if (buildCounterPullMessage < 3) {
    o.payload = 'foo';
    o.tag = 'foo';
  }
  buildCounterPullMessage--;
  return o;
}

void checkPullMessage(api.PullMessage o) {
  buildCounterPullMessage++;
  if (buildCounterPullMessage < 3) {
    unittest.expect(o.payload!, unittest.equals('foo'));
    unittest.expect(o.tag!, unittest.equals('foo'));
  }
  buildCounterPullMessage--;
}

core.int buildCounterPullTarget = 0;
api.PullTarget buildPullTarget() {
  final o = api.PullTarget();
  buildCounterPullTarget++;
  if (buildCounterPullTarget < 3) {}
  buildCounterPullTarget--;
  return o;
}

void checkPullTarget(api.PullTarget o) {
  buildCounterPullTarget++;
  if (buildCounterPullTarget < 3) {}
  buildCounterPullTarget--;
}

core.int buildCounterPurgeQueueRequest = 0;
api.PurgeQueueRequest buildPurgeQueueRequest() {
  final o = api.PurgeQueueRequest();
  buildCounterPurgeQueueRequest++;
  if (buildCounterPurgeQueueRequest < 3) {}
  buildCounterPurgeQueueRequest--;
  return o;
}

void checkPurgeQueueRequest(api.PurgeQueueRequest o) {
  buildCounterPurgeQueueRequest++;
  if (buildCounterPurgeQueueRequest < 3) {}
  buildCounterPurgeQueueRequest--;
}

core.int buildCounterQueryOverride = 0;
api.QueryOverride buildQueryOverride() {
  final o = api.QueryOverride();
  buildCounterQueryOverride++;
  if (buildCounterQueryOverride < 3) {
    o.queryParams = 'foo';
  }
  buildCounterQueryOverride--;
  return o;
}

void checkQueryOverride(api.QueryOverride o) {
  buildCounterQueryOverride++;
  if (buildCounterQueryOverride < 3) {
    unittest.expect(o.queryParams!, unittest.equals('foo'));
  }
  buildCounterQueryOverride--;
}

core.int buildCounterQueue = 0;
api.Queue buildQueue() {
  final o = api.Queue();
  buildCounterQueue++;
  if (buildCounterQueue < 3) {
    o.appEngineHttpTarget = buildAppEngineHttpTarget();
    o.httpTarget = buildHttpTarget();
    o.name = 'foo';
    o.pullTarget = buildPullTarget();
    o.purgeTime = 'foo';
    o.rateLimits = buildRateLimits();
    o.retryConfig = buildRetryConfig();
    o.state = 'foo';
    o.stats = buildQueueStats();
    o.taskTtl = 'foo';
    o.tombstoneTtl = 'foo';
  }
  buildCounterQueue--;
  return o;
}

void checkQueue(api.Queue o) {
  buildCounterQueue++;
  if (buildCounterQueue < 3) {
    checkAppEngineHttpTarget(o.appEngineHttpTarget!);
    checkHttpTarget(o.httpTarget!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPullTarget(o.pullTarget!);
    unittest.expect(o.purgeTime!, unittest.equals('foo'));
    checkRateLimits(o.rateLimits!);
    checkRetryConfig(o.retryConfig!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkQueueStats(o.stats!);
    unittest.expect(o.taskTtl!, unittest.equals('foo'));
    unittest.expect(o.tombstoneTtl!, unittest.equals('foo'));
  }
  buildCounterQueue--;
}

core.int buildCounterQueueStats = 0;
api.QueueStats buildQueueStats() {
  final o = api.QueueStats();
  buildCounterQueueStats++;
  if (buildCounterQueueStats < 3) {
    o.concurrentDispatchesCount = 'foo';
    o.effectiveExecutionRate = 42.0;
    o.executedLastMinuteCount = 'foo';
    o.oldestEstimatedArrivalTime = 'foo';
    o.tasksCount = 'foo';
  }
  buildCounterQueueStats--;
  return o;
}

void checkQueueStats(api.QueueStats o) {
  buildCounterQueueStats++;
  if (buildCounterQueueStats < 3) {
    unittest.expect(o.concurrentDispatchesCount!, unittest.equals('foo'));
    unittest.expect(o.effectiveExecutionRate!, unittest.equals(42.0));
    unittest.expect(o.executedLastMinuteCount!, unittest.equals('foo'));
    unittest.expect(o.oldestEstimatedArrivalTime!, unittest.equals('foo'));
    unittest.expect(o.tasksCount!, unittest.equals('foo'));
  }
  buildCounterQueueStats--;
}

core.int buildCounterRateLimits = 0;
api.RateLimits buildRateLimits() {
  final o = api.RateLimits();
  buildCounterRateLimits++;
  if (buildCounterRateLimits < 3) {
    o.maxBurstSize = 42;
    o.maxConcurrentTasks = 42;
    o.maxTasksDispatchedPerSecond = 42.0;
  }
  buildCounterRateLimits--;
  return o;
}

void checkRateLimits(api.RateLimits o) {
  buildCounterRateLimits++;
  if (buildCounterRateLimits < 3) {
    unittest.expect(o.maxBurstSize!, unittest.equals(42));
    unittest.expect(o.maxConcurrentTasks!, unittest.equals(42));
    unittest.expect(o.maxTasksDispatchedPerSecond!, unittest.equals(42.0));
  }
  buildCounterRateLimits--;
}

core.int buildCounterRenewLeaseRequest = 0;
api.RenewLeaseRequest buildRenewLeaseRequest() {
  final o = api.RenewLeaseRequest();
  buildCounterRenewLeaseRequest++;
  if (buildCounterRenewLeaseRequest < 3) {
    o.leaseDuration = 'foo';
    o.responseView = 'foo';
    o.scheduleTime = 'foo';
  }
  buildCounterRenewLeaseRequest--;
  return o;
}

void checkRenewLeaseRequest(api.RenewLeaseRequest o) {
  buildCounterRenewLeaseRequest++;
  if (buildCounterRenewLeaseRequest < 3) {
    unittest.expect(o.leaseDuration!, unittest.equals('foo'));
    unittest.expect(o.responseView!, unittest.equals('foo'));
    unittest.expect(o.scheduleTime!, unittest.equals('foo'));
  }
  buildCounterRenewLeaseRequest--;
}

core.int buildCounterResumeQueueRequest = 0;
api.ResumeQueueRequest buildResumeQueueRequest() {
  final o = api.ResumeQueueRequest();
  buildCounterResumeQueueRequest++;
  if (buildCounterResumeQueueRequest < 3) {}
  buildCounterResumeQueueRequest--;
  return o;
}

void checkResumeQueueRequest(api.ResumeQueueRequest o) {
  buildCounterResumeQueueRequest++;
  if (buildCounterResumeQueueRequest < 3) {}
  buildCounterResumeQueueRequest--;
}

core.int buildCounterRetryConfig = 0;
api.RetryConfig buildRetryConfig() {
  final o = api.RetryConfig();
  buildCounterRetryConfig++;
  if (buildCounterRetryConfig < 3) {
    o.maxAttempts = 42;
    o.maxBackoff = 'foo';
    o.maxDoublings = 42;
    o.maxRetryDuration = 'foo';
    o.minBackoff = 'foo';
    o.unlimitedAttempts = true;
  }
  buildCounterRetryConfig--;
  return o;
}

void checkRetryConfig(api.RetryConfig o) {
  buildCounterRetryConfig++;
  if (buildCounterRetryConfig < 3) {
    unittest.expect(o.maxAttempts!, unittest.equals(42));
    unittest.expect(o.maxBackoff!, unittest.equals('foo'));
    unittest.expect(o.maxDoublings!, unittest.equals(42));
    unittest.expect(o.maxRetryDuration!, unittest.equals('foo'));
    unittest.expect(o.minBackoff!, unittest.equals('foo'));
    unittest.expect(o.unlimitedAttempts!, unittest.isTrue);
  }
  buildCounterRetryConfig--;
}

core.int buildCounterRunTaskRequest = 0;
api.RunTaskRequest buildRunTaskRequest() {
  final o = api.RunTaskRequest();
  buildCounterRunTaskRequest++;
  if (buildCounterRunTaskRequest < 3) {
    o.responseView = 'foo';
  }
  buildCounterRunTaskRequest--;
  return o;
}

void checkRunTaskRequest(api.RunTaskRequest o) {
  buildCounterRunTaskRequest++;
  if (buildCounterRunTaskRequest < 3) {
    unittest.expect(o.responseView!, unittest.equals('foo'));
  }
  buildCounterRunTaskRequest--;
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

core.Map<core.String, core.Object?> buildUnnamed13() => {
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

void checkUnnamed13(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed14() => [
  buildUnnamed13(),
  buildUnnamed13(),
];

void checkUnnamed14(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed13(o[0]);
  checkUnnamed13(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed14();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed14(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTask = 0;
api.Task buildTask() {
  final o = api.Task();
  buildCounterTask++;
  if (buildCounterTask < 3) {
    o.appEngineHttpRequest = buildAppEngineHttpRequest();
    o.createTime = 'foo';
    o.httpRequest = buildHttpRequest();
    o.name = 'foo';
    o.pullMessage = buildPullMessage();
    o.scheduleTime = 'foo';
    o.status = buildTaskStatus();
    o.view = 'foo';
  }
  buildCounterTask--;
  return o;
}

void checkTask(api.Task o) {
  buildCounterTask++;
  if (buildCounterTask < 3) {
    checkAppEngineHttpRequest(o.appEngineHttpRequest!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkHttpRequest(o.httpRequest!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPullMessage(o.pullMessage!);
    unittest.expect(o.scheduleTime!, unittest.equals('foo'));
    checkTaskStatus(o.status!);
    unittest.expect(o.view!, unittest.equals('foo'));
  }
  buildCounterTask--;
}

core.int buildCounterTaskStatus = 0;
api.TaskStatus buildTaskStatus() {
  final o = api.TaskStatus();
  buildCounterTaskStatus++;
  if (buildCounterTaskStatus < 3) {
    o.attemptDispatchCount = 42;
    o.attemptResponseCount = 42;
    o.firstAttemptStatus = buildAttemptStatus();
    o.lastAttemptStatus = buildAttemptStatus();
  }
  buildCounterTaskStatus--;
  return o;
}

void checkTaskStatus(api.TaskStatus o) {
  buildCounterTaskStatus++;
  if (buildCounterTaskStatus < 3) {
    unittest.expect(o.attemptDispatchCount!, unittest.equals(42));
    unittest.expect(o.attemptResponseCount!, unittest.equals(42));
    checkAttemptStatus(o.firstAttemptStatus!);
    checkAttemptStatus(o.lastAttemptStatus!);
  }
  buildCounterTaskStatus--;
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed15();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed15(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed16();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed16(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUriOverride = 0;
api.UriOverride buildUriOverride() {
  final o = api.UriOverride();
  buildCounterUriOverride++;
  if (buildCounterUriOverride < 3) {
    o.host = 'foo';
    o.pathOverride = buildPathOverride();
    o.port = 'foo';
    o.queryOverride = buildQueryOverride();
    o.scheme = 'foo';
    o.uriOverrideEnforceMode = 'foo';
  }
  buildCounterUriOverride--;
  return o;
}

void checkUriOverride(api.UriOverride o) {
  buildCounterUriOverride++;
  if (buildCounterUriOverride < 3) {
    unittest.expect(o.host!, unittest.equals('foo'));
    checkPathOverride(o.pathOverride!);
    unittest.expect(o.port!, unittest.equals('foo'));
    checkQueryOverride(o.queryOverride!);
    unittest.expect(o.scheme!, unittest.equals('foo'));
    unittest.expect(o.uriOverrideEnforceMode!, unittest.equals('foo'));
  }
  buildCounterUriOverride--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AcknowledgeTaskRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcknowledgeTaskRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcknowledgeTaskRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAcknowledgeTaskRequest(od);
    });
  });

  unittest.group('obj-schema-AppEngineHttpRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppEngineHttpRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppEngineHttpRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppEngineHttpRequest(od);
    });
  });

  unittest.group('obj-schema-AppEngineHttpTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppEngineHttpTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppEngineHttpTarget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppEngineHttpTarget(od);
    });
  });

  unittest.group('obj-schema-AppEngineRouting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppEngineRouting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppEngineRouting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppEngineRouting(od);
    });
  });

  unittest.group('obj-schema-AttemptStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttemptStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttemptStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttemptStatus(od);
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

  unittest.group('obj-schema-BufferTaskRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBufferTaskRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BufferTaskRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBufferTaskRequest(od);
    });
  });

  unittest.group('obj-schema-BufferTaskResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBufferTaskResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BufferTaskResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBufferTaskResponse(od);
    });
  });

  unittest.group('obj-schema-CancelLeaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelLeaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelLeaseRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelLeaseRequest(od);
    });
  });

  unittest.group('obj-schema-CmekConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCmekConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CmekConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCmekConfig(od);
    });
  });

  unittest.group('obj-schema-CreateTaskRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateTaskRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateTaskRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateTaskRequest(od);
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

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetPolicyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetPolicyOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGetPolicyOptions(od);
    });
  });

  unittest.group('obj-schema-Header', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Header.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHeader(od);
    });
  });

  unittest.group('obj-schema-HeaderOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeaderOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HeaderOverride.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHeaderOverride(od);
    });
  });

  unittest.group('obj-schema-HttpBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpBody.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpBody(od);
    });
  });

  unittest.group('obj-schema-HttpRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpRequest(od);
    });
  });

  unittest.group('obj-schema-HttpTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpTarget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpTarget(od);
    });
  });

  unittest.group('obj-schema-LeaseTasksRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLeaseTasksRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LeaseTasksRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLeaseTasksRequest(od);
    });
  });

  unittest.group('obj-schema-LeaseTasksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLeaseTasksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LeaseTasksResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLeaseTasksResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListQueuesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListQueuesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListQueuesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListQueuesResponse(od);
    });
  });

  unittest.group('obj-schema-ListTasksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTasksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTasksResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTasksResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Location.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-OAuthToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOAuthToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OAuthToken.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOAuthToken(od);
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

  unittest.group('obj-schema-PathOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPathOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PathOverride.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPathOverride(od);
    });
  });

  unittest.group('obj-schema-PauseQueueRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPauseQueueRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PauseQueueRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPauseQueueRequest(od);
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

  unittest.group('obj-schema-PullMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPullMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PullMessage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPullMessage(od);
    });
  });

  unittest.group('obj-schema-PullTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPullTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PullTarget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPullTarget(od);
    });
  });

  unittest.group('obj-schema-PurgeQueueRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPurgeQueueRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PurgeQueueRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPurgeQueueRequest(od);
    });
  });

  unittest.group('obj-schema-QueryOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryOverride.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryOverride(od);
    });
  });

  unittest.group('obj-schema-Queue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Queue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueue(od);
    });
  });

  unittest.group('obj-schema-QueueStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueueStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueueStats.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueueStats(od);
    });
  });

  unittest.group('obj-schema-RateLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRateLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RateLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRateLimits(od);
    });
  });

  unittest.group('obj-schema-RenewLeaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenewLeaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenewLeaseRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRenewLeaseRequest(od);
    });
  });

  unittest.group('obj-schema-ResumeQueueRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResumeQueueRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResumeQueueRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResumeQueueRequest(od);
    });
  });

  unittest.group('obj-schema-RetryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetryConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRetryConfig(od);
    });
  });

  unittest.group('obj-schema-RunTaskRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunTaskRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunTaskRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunTaskRequest(od);
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

  unittest.group('obj-schema-UriOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUriOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UriOverride.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUriOverride(od);
    });
  });

  unittest.group('resource-ApiQueueResource', () {
    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).api.queue;
      final arg_request = buildHttpBody();
      final arg_appId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.HttpBody.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkHttpBody(obj);

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
            unittest.equals('api/queue/update'),
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
          unittest.expect(queryMap['appId']!.first, unittest.equals(arg_appId));
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
      final response = await res.update(
        arg_request,
        appId: arg_appId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--getCmekConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildCmekConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getCmekConfig(arg_name, $fields: arg_$fields);
      checkCmekConfig(response as api.CmekConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed17();
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
            queryMap['extraLocationTypes']!,
            unittest.equals(arg_extraLocationTypes),
          );
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
          final resp = convert.json.encode(buildListLocationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });

    unittest.test('method--updateCmekConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations;
      final arg_request = buildCmekConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CmekConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCmekConfig(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildCmekConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateCmekConfig(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkCmekConfig(response as api.CmekConfig);
    });
  });

  unittest.group('resource-ProjectsLocationsQueuesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues;
      final arg_request = buildQueue();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Queue.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkQueue(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildQueue());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkQueue(response as api.Queue);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues;
      final arg_name = 'foo';
      final arg_readMask = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
            queryMap['readMask']!.first,
            unittest.equals(arg_readMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildQueue());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        readMask: arg_readMask,
        $fields: arg_$fields,
      );
      checkQueue(response as api.Queue);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
            queryMap['readMask']!.first,
            unittest.equals(arg_readMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListQueuesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        readMask: arg_readMask,
        $fields: arg_$fields,
      );
      checkListQueuesResponse(response as api.ListQueuesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues;
      final arg_request = buildQueue();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Queue.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkQueue(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildQueue());
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
      checkQueue(response as api.Queue);
    });

    unittest.test('method--pause', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues;
      final arg_request = buildPauseQueueRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PauseQueueRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPauseQueueRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildQueue());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.pause(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkQueue(response as api.Queue);
    });

    unittest.test('method--purge', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues;
      final arg_request = buildPurgeQueueRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PurgeQueueRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPurgeQueueRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildQueue());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.purge(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkQueue(response as api.Queue);
    });

    unittest.test('method--resume', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues;
      final arg_request = buildResumeQueueRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ResumeQueueRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkResumeQueueRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildQueue());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.resume(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkQueue(response as api.Queue);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
      final res = api.CloudTasksApi(mock).projects.locations.queues;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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

  unittest.group('resource-ProjectsLocationsQueuesTasksResource', () {
    unittest.test('method--acknowledge', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues.tasks;
      final arg_request = buildAcknowledgeTaskRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AcknowledgeTaskRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAcknowledgeTaskRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--buffer', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues.tasks;
      final arg_request = buildBufferTaskRequest();
      final arg_queue = 'foo';
      final arg_taskId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BufferTaskRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBufferTaskRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildBufferTaskResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.buffer(
        arg_request,
        arg_queue,
        arg_taskId,
        $fields: arg_$fields,
      );
      checkBufferTaskResponse(response as api.BufferTaskResponse);
    });

    unittest.test('method--cancelLease', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues.tasks;
      final arg_request = buildCancelLeaseRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelLeaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelLeaseRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
      final response = await res.cancelLease(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkTask(response as api.Task);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues.tasks;
      final arg_request = buildCreateTaskRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CreateTaskRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCreateTaskRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkTask(response as api.Task);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues.tasks;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues.tasks;
      final arg_name = 'foo';
      final arg_responseView = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
            queryMap['responseView']!.first,
            unittest.equals(arg_responseView),
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
        responseView: arg_responseView,
        $fields: arg_$fields,
      );
      checkTask(response as api.Task);
    });

    unittest.test('method--lease', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues.tasks;
      final arg_request = buildLeaseTasksRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LeaseTasksRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLeaseTasksRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildLeaseTasksResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.lease(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkLeaseTasksResponse(response as api.LeaseTasksResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues.tasks;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_responseView = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
            queryMap['responseView']!.first,
            unittest.equals(arg_responseView),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListTasksResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        responseView: arg_responseView,
        $fields: arg_$fields,
      );
      checkListTasksResponse(response as api.ListTasksResponse);
    });

    unittest.test('method--renewLease', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues.tasks;
      final arg_request = buildRenewLeaseRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RenewLeaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRenewLeaseRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
      final response = await res.renewLease(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkTask(response as api.Task);
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues.tasks;
      final arg_request = buildRunTaskRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RunTaskRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRunTaskRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v2beta2/'),
          );
          pathOffset += 8;
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
      final response = await res.run(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkTask(response as api.Task);
    });
  });
}
