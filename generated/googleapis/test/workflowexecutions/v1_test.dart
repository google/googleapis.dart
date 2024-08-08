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

import 'package:googleapis/workflowexecutions/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.int buildCounterCallback = 0;
api.Callback buildCallback() {
  final o = api.Callback();
  buildCounterCallback++;
  if (buildCounterCallback < 3) {
    o.availablePayloads = buildUnnamed0();
    o.method = 'foo';
    o.name = 'foo';
    o.waiters = 'foo';
  }
  buildCounterCallback--;
  return o;
}

void checkCallback(api.Callback o) {
  buildCounterCallback++;
  if (buildCounterCallback < 3) {
    checkUnnamed0(o.availablePayloads!);
    unittest.expect(
      o.method!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.waiters!,
      unittest.equals('foo'),
    );
  }
  buildCounterCallback--;
}

core.int buildCounterCancelExecutionRequest = 0;
api.CancelExecutionRequest buildCancelExecutionRequest() {
  final o = api.CancelExecutionRequest();
  buildCounterCancelExecutionRequest++;
  if (buildCounterCancelExecutionRequest < 3) {}
  buildCounterCancelExecutionRequest--;
  return o;
}

void checkCancelExecutionRequest(api.CancelExecutionRequest o) {
  buildCounterCancelExecutionRequest++;
  if (buildCounterCancelExecutionRequest < 3) {}
  buildCounterCancelExecutionRequest--;
}

core.int buildCounterError = 0;
api.Error buildError() {
  final o = api.Error();
  buildCounterError++;
  if (buildCounterError < 3) {
    o.context = 'foo';
    o.payload = 'foo';
    o.stackTrace = buildStackTrace();
  }
  buildCounterError--;
  return o;
}

void checkError(api.Error o) {
  buildCounterError++;
  if (buildCounterError < 3) {
    unittest.expect(
      o.context!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.payload!,
      unittest.equals('foo'),
    );
    checkStackTrace(o.stackTrace!);
  }
  buildCounterError--;
}

core.int buildCounterException = 0;
api.Exception buildException() {
  final o = api.Exception();
  buildCounterException++;
  if (buildCounterException < 3) {
    o.payload = 'foo';
  }
  buildCounterException--;
  return o;
}

void checkException(api.Exception o) {
  buildCounterException++;
  if (buildCounterException < 3) {
    unittest.expect(
      o.payload!,
      unittest.equals('foo'),
    );
  }
  buildCounterException--;
}

core.Map<core.String, core.String> buildUnnamed1() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed1(core.Map<core.String, core.String> o) {
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

core.int buildCounterExecution = 0;
api.Execution buildExecution() {
  final o = api.Execution();
  buildCounterExecution++;
  if (buildCounterExecution < 3) {
    o.argument = 'foo';
    o.callLogLevel = 'foo';
    o.createTime = 'foo';
    o.disableConcurrencyQuotaOverflowBuffering = true;
    o.duration = 'foo';
    o.endTime = 'foo';
    o.error = buildError();
    o.labels = buildUnnamed1();
    o.name = 'foo';
    o.result = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
    o.stateError = buildStateError();
    o.status = buildStatus();
    o.workflowRevisionId = 'foo';
  }
  buildCounterExecution--;
  return o;
}

void checkExecution(api.Execution o) {
  buildCounterExecution++;
  if (buildCounterExecution < 3) {
    unittest.expect(
      o.argument!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.callLogLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
        o.disableConcurrencyQuotaOverflowBuffering!, unittest.isTrue);
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkError(o.error!);
    checkUnnamed1(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.result!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkStateError(o.stateError!);
    checkStatus(o.status!);
    unittest.expect(
      o.workflowRevisionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterExecution--;
}

core.int buildCounterExportDataResponse = 0;
api.ExportDataResponse buildExportDataResponse() {
  final o = api.ExportDataResponse();
  buildCounterExportDataResponse++;
  if (buildCounterExportDataResponse < 3) {
    o.data = 'foo';
  }
  buildCounterExportDataResponse--;
  return o;
}

void checkExportDataResponse(api.ExportDataResponse o) {
  buildCounterExportDataResponse++;
  if (buildCounterExportDataResponse < 3) {
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
  }
  buildCounterExportDataResponse--;
}

core.List<api.Callback> buildUnnamed2() => [
      buildCallback(),
      buildCallback(),
    ];

void checkUnnamed2(core.List<api.Callback> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCallback(o[0]);
  checkCallback(o[1]);
}

core.int buildCounterListCallbacksResponse = 0;
api.ListCallbacksResponse buildListCallbacksResponse() {
  final o = api.ListCallbacksResponse();
  buildCounterListCallbacksResponse++;
  if (buildCounterListCallbacksResponse < 3) {
    o.callbacks = buildUnnamed2();
    o.nextPageToken = 'foo';
  }
  buildCounterListCallbacksResponse--;
  return o;
}

void checkListCallbacksResponse(api.ListCallbacksResponse o) {
  buildCounterListCallbacksResponse++;
  if (buildCounterListCallbacksResponse < 3) {
    checkUnnamed2(o.callbacks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCallbacksResponse--;
}

core.List<api.Execution> buildUnnamed3() => [
      buildExecution(),
      buildExecution(),
    ];

void checkUnnamed3(core.List<api.Execution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecution(o[0]);
  checkExecution(o[1]);
}

core.int buildCounterListExecutionsResponse = 0;
api.ListExecutionsResponse buildListExecutionsResponse() {
  final o = api.ListExecutionsResponse();
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    o.executions = buildUnnamed3();
    o.nextPageToken = 'foo';
  }
  buildCounterListExecutionsResponse--;
  return o;
}

void checkListExecutionsResponse(api.ListExecutionsResponse o) {
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    checkUnnamed3(o.executions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListExecutionsResponse--;
}

core.List<api.StepEntry> buildUnnamed4() => [
      buildStepEntry(),
      buildStepEntry(),
    ];

void checkUnnamed4(core.List<api.StepEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStepEntry(o[0]);
  checkStepEntry(o[1]);
}

core.int buildCounterListStepEntriesResponse = 0;
api.ListStepEntriesResponse buildListStepEntriesResponse() {
  final o = api.ListStepEntriesResponse();
  buildCounterListStepEntriesResponse++;
  if (buildCounterListStepEntriesResponse < 3) {
    o.nextPageToken = 'foo';
    o.stepEntries = buildUnnamed4();
    o.totalSize = 42;
  }
  buildCounterListStepEntriesResponse--;
  return o;
}

void checkListStepEntriesResponse(api.ListStepEntriesResponse o) {
  buildCounterListStepEntriesResponse++;
  if (buildCounterListStepEntriesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.stepEntries!);
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterListStepEntriesResponse--;
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.int buildCounterNavigationInfo = 0;
api.NavigationInfo buildNavigationInfo() {
  final o = api.NavigationInfo();
  buildCounterNavigationInfo++;
  if (buildCounterNavigationInfo < 3) {
    o.children = buildUnnamed5();
    o.next = 'foo';
    o.parent = 'foo';
    o.previous = 'foo';
  }
  buildCounterNavigationInfo--;
  return o;
}

void checkNavigationInfo(api.NavigationInfo o) {
  buildCounterNavigationInfo++;
  if (buildCounterNavigationInfo < 3) {
    checkUnnamed5(o.children!);
    unittest.expect(
      o.next!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previous!,
      unittest.equals('foo'),
    );
  }
  buildCounterNavigationInfo--;
}

core.int buildCounterPosition = 0;
api.Position buildPosition() {
  final o = api.Position();
  buildCounterPosition++;
  if (buildCounterPosition < 3) {
    o.column = 'foo';
    o.length = 'foo';
    o.line = 'foo';
  }
  buildCounterPosition--;
  return o;
}

void checkPosition(api.Position o) {
  buildCounterPosition++;
  if (buildCounterPosition < 3) {
    unittest.expect(
      o.column!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.length!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.line!,
      unittest.equals('foo'),
    );
  }
  buildCounterPosition--;
}

core.Map<core.String, core.String> buildUnnamed6() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed6(core.Map<core.String, core.String> o) {
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

core.int buildCounterPubsubMessage = 0;
api.PubsubMessage buildPubsubMessage() {
  final o = api.PubsubMessage();
  buildCounterPubsubMessage++;
  if (buildCounterPubsubMessage < 3) {
    o.attributes = buildUnnamed6();
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
    checkUnnamed6(o.attributes!);
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.messageId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderingKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publishTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterPubsubMessage--;
}

core.List<api.StackTraceElement> buildUnnamed7() => [
      buildStackTraceElement(),
      buildStackTraceElement(),
    ];

void checkUnnamed7(core.List<api.StackTraceElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStackTraceElement(o[0]);
  checkStackTraceElement(o[1]);
}

core.int buildCounterStackTrace = 0;
api.StackTrace buildStackTrace() {
  final o = api.StackTrace();
  buildCounterStackTrace++;
  if (buildCounterStackTrace < 3) {
    o.elements = buildUnnamed7();
  }
  buildCounterStackTrace--;
  return o;
}

void checkStackTrace(api.StackTrace o) {
  buildCounterStackTrace++;
  if (buildCounterStackTrace < 3) {
    checkUnnamed7(o.elements!);
  }
  buildCounterStackTrace--;
}

core.int buildCounterStackTraceElement = 0;
api.StackTraceElement buildStackTraceElement() {
  final o = api.StackTraceElement();
  buildCounterStackTraceElement++;
  if (buildCounterStackTraceElement < 3) {
    o.position = buildPosition();
    o.routine = 'foo';
    o.step = 'foo';
  }
  buildCounterStackTraceElement--;
  return o;
}

void checkStackTraceElement(api.StackTraceElement o) {
  buildCounterStackTraceElement++;
  if (buildCounterStackTraceElement < 3) {
    checkPosition(o.position!);
    unittest.expect(
      o.routine!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.step!,
      unittest.equals('foo'),
    );
  }
  buildCounterStackTraceElement--;
}

core.int buildCounterStateError = 0;
api.StateError buildStateError() {
  final o = api.StateError();
  buildCounterStateError++;
  if (buildCounterStateError < 3) {
    o.details = 'foo';
    o.type = 'foo';
  }
  buildCounterStateError--;
  return o;
}

void checkStateError(api.StateError o) {
  buildCounterStateError++;
  if (buildCounterStateError < 3) {
    unittest.expect(
      o.details!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterStateError--;
}

core.List<api.Step> buildUnnamed8() => [
      buildStep(),
      buildStep(),
    ];

void checkUnnamed8(core.List<api.Step> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStep(o[0]);
  checkStep(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.currentSteps = buildUnnamed8();
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    checkUnnamed8(o.currentSteps!);
  }
  buildCounterStatus--;
}

core.int buildCounterStep = 0;
api.Step buildStep() {
  final o = api.Step();
  buildCounterStep++;
  if (buildCounterStep < 3) {
    o.routine = 'foo';
    o.step = 'foo';
  }
  buildCounterStep--;
  return o;
}

void checkStep(api.Step o) {
  buildCounterStep++;
  if (buildCounterStep < 3) {
    unittest.expect(
      o.routine!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.step!,
      unittest.equals('foo'),
    );
  }
  buildCounterStep--;
}

core.int buildCounterStepEntry = 0;
api.StepEntry buildStepEntry() {
  final o = api.StepEntry();
  buildCounterStepEntry++;
  if (buildCounterStepEntry < 3) {
    o.createTime = 'foo';
    o.entryId = 'foo';
    o.exception = buildException();
    o.name = 'foo';
    o.navigationInfo = buildNavigationInfo();
    o.routine = 'foo';
    o.state = 'foo';
    o.step = 'foo';
    o.stepEntryMetadata = buildStepEntryMetadata();
    o.stepType = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterStepEntry--;
  return o;
}

void checkStepEntry(api.StepEntry o) {
  buildCounterStepEntry++;
  if (buildCounterStepEntry < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entryId!,
      unittest.equals('foo'),
    );
    checkException(o.exception!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkNavigationInfo(o.navigationInfo!);
    unittest.expect(
      o.routine!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.step!,
      unittest.equals('foo'),
    );
    checkStepEntryMetadata(o.stepEntryMetadata!);
    unittest.expect(
      o.stepType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterStepEntry--;
}

core.int buildCounterStepEntryMetadata = 0;
api.StepEntryMetadata buildStepEntryMetadata() {
  final o = api.StepEntryMetadata();
  buildCounterStepEntryMetadata++;
  if (buildCounterStepEntryMetadata < 3) {
    o.expectedIteration = 'foo';
    o.progressNumber = 'foo';
    o.progressType = 'foo';
    o.threadId = 'foo';
  }
  buildCounterStepEntryMetadata--;
  return o;
}

void checkStepEntryMetadata(api.StepEntryMetadata o) {
  buildCounterStepEntryMetadata++;
  if (buildCounterStepEntryMetadata < 3) {
    unittest.expect(
      o.expectedIteration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.progressNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.progressType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.threadId!,
      unittest.equals('foo'),
    );
  }
  buildCounterStepEntryMetadata--;
}

core.int buildCounterTriggerPubsubExecutionRequest = 0;
api.TriggerPubsubExecutionRequest buildTriggerPubsubExecutionRequest() {
  final o = api.TriggerPubsubExecutionRequest();
  buildCounterTriggerPubsubExecutionRequest++;
  if (buildCounterTriggerPubsubExecutionRequest < 3) {
    o.GCPCloudEventsMode = 'foo';
    o.deliveryAttempt = 42;
    o.message = buildPubsubMessage();
    o.subscription = 'foo';
  }
  buildCounterTriggerPubsubExecutionRequest--;
  return o;
}

void checkTriggerPubsubExecutionRequest(api.TriggerPubsubExecutionRequest o) {
  buildCounterTriggerPubsubExecutionRequest++;
  if (buildCounterTriggerPubsubExecutionRequest < 3) {
    unittest.expect(
      o.GCPCloudEventsMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deliveryAttempt!,
      unittest.equals(42),
    );
    checkPubsubMessage(o.message!);
    unittest.expect(
      o.subscription!,
      unittest.equals('foo'),
    );
  }
  buildCounterTriggerPubsubExecutionRequest--;
}

void main() {
  unittest.group('obj-schema-Callback', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCallback();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Callback.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCallback(od);
    });
  });

  unittest.group('obj-schema-CancelExecutionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelExecutionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelExecutionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelExecutionRequest(od);
    });
  });

  unittest.group('obj-schema-Error', () {
    unittest.test('to-json--from-json', () async {
      final o = buildError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Error.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkError(od);
    });
  });

  unittest.group('obj-schema-Exception', () {
    unittest.test('to-json--from-json', () async {
      final o = buildException();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Exception.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkException(od);
    });
  });

  unittest.group('obj-schema-Execution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Execution.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExecution(od);
    });
  });

  unittest.group('obj-schema-ExportDataResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportDataResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportDataResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportDataResponse(od);
    });
  });

  unittest.group('obj-schema-ListCallbacksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCallbacksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCallbacksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCallbacksResponse(od);
    });
  });

  unittest.group('obj-schema-ListExecutionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListExecutionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListExecutionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListExecutionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListStepEntriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListStepEntriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListStepEntriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListStepEntriesResponse(od);
    });
  });

  unittest.group('obj-schema-NavigationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNavigationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NavigationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNavigationInfo(od);
    });
  });

  unittest.group('obj-schema-Position', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Position.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPosition(od);
    });
  });

  unittest.group('obj-schema-PubsubMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPubsubMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PubsubMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPubsubMessage(od);
    });
  });

  unittest.group('obj-schema-StackTrace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStackTrace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.StackTrace.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStackTrace(od);
    });
  });

  unittest.group('obj-schema-StackTraceElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStackTraceElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StackTraceElement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStackTraceElement(od);
    });
  });

  unittest.group('obj-schema-StateError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStateError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.StateError.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStateError(od);
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

  unittest.group('obj-schema-Step', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Step.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStep(od);
    });
  });

  unittest.group('obj-schema-StepEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStepEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.StepEntry.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStepEntry(od);
    });
  });

  unittest.group('obj-schema-StepEntryMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStepEntryMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StepEntryMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStepEntryMetadata(od);
    });
  });

  unittest.group('obj-schema-TriggerPubsubExecutionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTriggerPubsubExecutionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TriggerPubsubExecutionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTriggerPubsubExecutionRequest(od);
    });
  });

  unittest.group('resource-ProjectsLocationsWorkflowsResource', () {
    unittest.test('method--triggerPubsubExecution', () async {
      final mock = HttpServerMock();
      final res = api.WorkflowExecutionsApi(mock).projects.locations.workflows;
      final arg_request = buildTriggerPubsubExecutionRequest();
      final arg_workflow = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TriggerPubsubExecutionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTriggerPubsubExecutionRequest(obj);

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
        final resp = convert.json.encode(buildExecution());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.triggerPubsubExecution(
          arg_request, arg_workflow,
          $fields: arg_$fields);
      checkExecution(response as api.Execution);
    });
  });

  unittest.group('resource-ProjectsLocationsWorkflowsExecutionsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.WorkflowExecutionsApi(mock)
          .projects
          .locations
          .workflows
          .executions;
      final arg_request = buildCancelExecutionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelExecutionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelExecutionRequest(obj);

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
        final resp = convert.json.encode(buildExecution());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkExecution(response as api.Execution);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.WorkflowExecutionsApi(mock)
          .projects
          .locations
          .workflows
          .executions;
      final arg_request = buildExecution();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Execution.fromJson(json as core.Map<core.String, core.dynamic>);
        checkExecution(obj);

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
        final resp = convert.json.encode(buildExecution());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkExecution(response as api.Execution);
    });

    unittest.test('method--exportData', () async {
      final mock = HttpServerMock();
      final res = api.WorkflowExecutionsApi(mock)
          .projects
          .locations
          .workflows
          .executions;
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
        final resp = convert.json.encode(buildExportDataResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exportData(arg_name, $fields: arg_$fields);
      checkExportDataResponse(response as api.ExportDataResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WorkflowExecutionsApi(mock)
          .projects
          .locations
          .workflows
          .executions;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildExecution());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkExecution(response as api.Execution);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkflowExecutionsApi(mock)
          .projects
          .locations
          .workflows
          .executions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListExecutionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListExecutionsResponse(response as api.ListExecutionsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsWorkflowsExecutionsCallbacksResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkflowExecutionsApi(mock)
          .projects
          .locations
          .workflows
          .executions
          .callbacks;
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
        final resp = convert.json.encode(buildListCallbacksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCallbacksResponse(response as api.ListCallbacksResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsWorkflowsExecutionsStepEntriesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WorkflowExecutionsApi(mock)
          .projects
          .locations
          .workflows
          .executions
          .stepEntries;
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
        final resp = convert.json.encode(buildStepEntry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkStepEntry(response as api.StepEntry);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkflowExecutionsApi(mock)
          .projects
          .locations
          .workflows
          .executions
          .stepEntries;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_skip = 42;
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
          core.int.parse(queryMap['skip']!.first),
          unittest.equals(arg_skip),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListStepEntriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          skip: arg_skip,
          $fields: arg_$fields);
      checkListStepEntriesResponse(response as api.ListStepEntriesResponse);
    });
  });
}
