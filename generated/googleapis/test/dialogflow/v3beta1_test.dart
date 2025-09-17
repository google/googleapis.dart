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

import 'package:googleapis/dialogflow/v3beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.GoogleCloudDialogflowCxV3beta1Span> buildUnnamed0() => [
  buildGoogleCloudDialogflowCxV3beta1Span(),
  buildGoogleCloudDialogflowCxV3beta1Span(),
];

void checkUnnamed0(core.List<api.GoogleCloudDialogflowCxV3beta1Span> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Span(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Span(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Action = 0;
api.GoogleCloudDialogflowCxV3beta1Action
buildGoogleCloudDialogflowCxV3beta1Action() {
  final o = api.GoogleCloudDialogflowCxV3beta1Action();
  buildCounterGoogleCloudDialogflowCxV3beta1Action++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Action < 3) {
    o.agentUtterance = buildGoogleCloudDialogflowCxV3beta1AgentUtterance();
    o.completeTime = 'foo';
    o.displayName = 'foo';
    o.event = buildGoogleCloudDialogflowCxV3beta1Event();
    o.flowInvocation = buildGoogleCloudDialogflowCxV3beta1FlowInvocation();
    o.flowStateUpdate =
        buildGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate();
    o.flowTransition = buildGoogleCloudDialogflowCxV3beta1FlowTransition();
    o.intentMatch = buildGoogleCloudDialogflowCxV3beta1ActionIntentMatch();
    o.llmCall = buildGoogleCloudDialogflowCxV3beta1LlmCall();
    o.playbookInvocation =
        buildGoogleCloudDialogflowCxV3beta1PlaybookInvocation();
    o.playbookTransition =
        buildGoogleCloudDialogflowCxV3beta1PlaybookTransition();
    o.startTime = 'foo';
    o.status = buildGoogleCloudDialogflowCxV3beta1Status();
    o.stt = buildGoogleCloudDialogflowCxV3beta1ActionSTT();
    o.subExecutionSteps = buildUnnamed0();
    o.toolUse = buildGoogleCloudDialogflowCxV3beta1ToolUse();
    o.tts = buildGoogleCloudDialogflowCxV3beta1ActionTTS();
    o.userUtterance = buildGoogleCloudDialogflowCxV3beta1UserUtterance();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Action--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Action(
  api.GoogleCloudDialogflowCxV3beta1Action o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Action++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Action < 3) {
    checkGoogleCloudDialogflowCxV3beta1AgentUtterance(o.agentUtterance!);
    unittest.expect(o.completeTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1Event(o.event!);
    checkGoogleCloudDialogflowCxV3beta1FlowInvocation(o.flowInvocation!);
    checkGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate(
      o.flowStateUpdate!,
    );
    checkGoogleCloudDialogflowCxV3beta1FlowTransition(o.flowTransition!);
    checkGoogleCloudDialogflowCxV3beta1ActionIntentMatch(o.intentMatch!);
    checkGoogleCloudDialogflowCxV3beta1LlmCall(o.llmCall!);
    checkGoogleCloudDialogflowCxV3beta1PlaybookInvocation(
      o.playbookInvocation!,
    );
    checkGoogleCloudDialogflowCxV3beta1PlaybookTransition(
      o.playbookTransition!,
    );
    unittest.expect(o.startTime!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1Status(o.status!);
    checkGoogleCloudDialogflowCxV3beta1ActionSTT(o.stt!);
    checkUnnamed0(o.subExecutionSteps!);
    checkGoogleCloudDialogflowCxV3beta1ToolUse(o.toolUse!);
    checkGoogleCloudDialogflowCxV3beta1ActionTTS(o.tts!);
    checkGoogleCloudDialogflowCxV3beta1UserUtterance(o.userUtterance!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Action--;
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

core.int buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate = 0;
api.GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate
buildGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate() {
  final o = api.GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate();
  buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate < 3) {
    o.destination = 'foo';
    o.eventType = 'foo';
    o.functionCall =
        buildGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall();
    o.pageState =
        buildGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState();
    o.updatedParameters = buildUnnamed1();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate(
  api.GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate < 3) {
    unittest.expect(o.destination!, unittest.equals('foo'));
    unittest.expect(o.eventType!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall(
      o.functionCall!,
    );
    checkGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState(
      o.pageState!,
    );
    checkUnnamed1(o.updatedParameters!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall = 0;
api.GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall
buildGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall();
  buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall <
      3) {
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall(
  api.GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall <
      3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState = 0;
api.GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState
buildGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState() {
  final o = api.GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState();
  buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState <
      3) {
    o.displayName = 'foo';
    o.page = 'foo';
    o.status = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState(
  api.GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState <
      3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.page!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent>
buildUnnamed2() => [
  buildGoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent(),
  buildGoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent(),
];

void checkUnnamed2(
  core.List<api.GoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ActionIntentMatch = 0;
api.GoogleCloudDialogflowCxV3beta1ActionIntentMatch
buildGoogleCloudDialogflowCxV3beta1ActionIntentMatch() {
  final o = api.GoogleCloudDialogflowCxV3beta1ActionIntentMatch();
  buildCounterGoogleCloudDialogflowCxV3beta1ActionIntentMatch++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ActionIntentMatch < 3) {
    o.matchedIntents = buildUnnamed2();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ActionIntentMatch--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ActionIntentMatch(
  api.GoogleCloudDialogflowCxV3beta1ActionIntentMatch o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ActionIntentMatch++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ActionIntentMatch < 3) {
    checkUnnamed2(o.matchedIntents!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ActionIntentMatch--;
}

core.Map<core.String, core.Object?> buildUnnamed3() => {
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

void checkUnnamed3(core.Map<core.String, core.Object?> o) {
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

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent = 0;
api.GoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent
buildGoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent() {
  final o = api.GoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent();
  buildCounterGoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent <
      3) {
    o.displayName = 'foo';
    o.generativeFallback = buildUnnamed3();
    o.intentId = 'foo';
    o.score = 42.0;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent(
  api.GoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent <
      3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed3(o.generativeFallback!);
    unittest.expect(o.intentId!, unittest.equals('foo'));
    unittest.expect(o.score!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ActionSTT = 0;
api.GoogleCloudDialogflowCxV3beta1ActionSTT
buildGoogleCloudDialogflowCxV3beta1ActionSTT() {
  final o = api.GoogleCloudDialogflowCxV3beta1ActionSTT();
  buildCounterGoogleCloudDialogflowCxV3beta1ActionSTT++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ActionSTT < 3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1ActionSTT--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ActionSTT(
  api.GoogleCloudDialogflowCxV3beta1ActionSTT o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ActionSTT++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ActionSTT < 3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1ActionSTT--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ActionTTS = 0;
api.GoogleCloudDialogflowCxV3beta1ActionTTS
buildGoogleCloudDialogflowCxV3beta1ActionTTS() {
  final o = api.GoogleCloudDialogflowCxV3beta1ActionTTS();
  buildCounterGoogleCloudDialogflowCxV3beta1ActionTTS++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ActionTTS < 3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1ActionTTS--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ActionTTS(
  api.GoogleCloudDialogflowCxV3beta1ActionTTS o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ActionTTS++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ActionTTS < 3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1ActionTTS--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettings = 0;
api.GoogleCloudDialogflowCxV3beta1AdvancedSettings
buildGoogleCloudDialogflowCxV3beta1AdvancedSettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1AdvancedSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettings < 3) {
    o.audioExportGcsDestination =
        buildGoogleCloudDialogflowCxV3beta1GcsDestination();
    o.dtmfSettings =
        buildGoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings();
    o.loggingSettings =
        buildGoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings();
    o.speechSettings =
        buildGoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1AdvancedSettings(
  api.GoogleCloudDialogflowCxV3beta1AdvancedSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettings < 3) {
    checkGoogleCloudDialogflowCxV3beta1GcsDestination(
      o.audioExportGcsDestination!,
    );
    checkGoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings(
      o.dtmfSettings!,
    );
    checkGoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings(
      o.loggingSettings!,
    );
    checkGoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings(
      o.speechSettings!,
    );
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettings--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings = 0;
api.GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings
buildGoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings <
      3) {
    o.enabled = true;
    o.endpointingTimeoutDuration = 'foo';
    o.finishDigit = 'foo';
    o.interdigitTimeoutDuration = 'foo';
    o.maxDigits = 42;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings(
  api.GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings <
      3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.endpointingTimeoutDuration!, unittest.equals('foo'));
    unittest.expect(o.finishDigit!, unittest.equals('foo'));
    unittest.expect(o.interdigitTimeoutDuration!, unittest.equals('foo'));
    unittest.expect(o.maxDigits!, unittest.equals(42));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings = 0;
api.GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings
buildGoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings <
      3) {
    o.enableConsentBasedRedaction = true;
    o.enableInteractionLogging = true;
    o.enableStackdriverLogging = true;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings(
  api.GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings <
      3) {
    unittest.expect(o.enableConsentBasedRedaction!, unittest.isTrue);
    unittest.expect(o.enableInteractionLogging!, unittest.isTrue);
    unittest.expect(o.enableStackdriverLogging!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings--;
}

core.Map<core.String, core.String> buildUnnamed4() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed4(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings = 0;
api.GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings
buildGoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings <
      3) {
    o.endpointerSensitivity = 42;
    o.models = buildUnnamed4();
    o.noSpeechTimeout = 'foo';
    o.useTimeoutBasedEndpointing = true;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings(
  api.GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings <
      3) {
    unittest.expect(o.endpointerSensitivity!, unittest.equals(42));
    checkUnnamed4(o.models!);
    unittest.expect(o.noSpeechTimeout!, unittest.equals('foo'));
    unittest.expect(o.useTimeoutBasedEndpointing!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings--;
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Agent = 0;
api.GoogleCloudDialogflowCxV3beta1Agent
buildGoogleCloudDialogflowCxV3beta1Agent() {
  final o = api.GoogleCloudDialogflowCxV3beta1Agent();
  buildCounterGoogleCloudDialogflowCxV3beta1Agent++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Agent < 3) {
    o.advancedSettings = buildGoogleCloudDialogflowCxV3beta1AdvancedSettings();
    o.answerFeedbackSettings =
        buildGoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings();
    o.avatarUri = 'foo';
    o.bigqueryExportSettings =
        buildGoogleCloudDialogflowCxV3beta1BigQueryExportSettings();
    o.clientCertificateSettings =
        buildGoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings();
    o.defaultLanguageCode = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.enableMultiLanguageTraining = true;
    o.enableSpellCorrection = true;
    o.enableStackdriverLogging = true;
    o.genAppBuilderSettings =
        buildGoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings();
    o.gitIntegrationSettings =
        buildGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings();
    o.locked = true;
    o.name = 'foo';
    o.personalizationSettings =
        buildGoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings();
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.securitySettings = 'foo';
    o.speechToTextSettings =
        buildGoogleCloudDialogflowCxV3beta1SpeechToTextSettings();
    o.startFlow = 'foo';
    o.startPlaybook = 'foo';
    o.supportedLanguageCodes = buildUnnamed5();
    o.textToSpeechSettings =
        buildGoogleCloudDialogflowCxV3beta1TextToSpeechSettings();
    o.timeZone = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Agent--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Agent(
  api.GoogleCloudDialogflowCxV3beta1Agent o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Agent++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Agent < 3) {
    checkGoogleCloudDialogflowCxV3beta1AdvancedSettings(o.advancedSettings!);
    checkGoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings(
      o.answerFeedbackSettings!,
    );
    unittest.expect(o.avatarUri!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1BigQueryExportSettings(
      o.bigqueryExportSettings!,
    );
    checkGoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings(
      o.clientCertificateSettings!,
    );
    unittest.expect(o.defaultLanguageCode!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.enableMultiLanguageTraining!, unittest.isTrue);
    unittest.expect(o.enableSpellCorrection!, unittest.isTrue);
    unittest.expect(o.enableStackdriverLogging!, unittest.isTrue);
    checkGoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings(
      o.genAppBuilderSettings!,
    );
    checkGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings(
      o.gitIntegrationSettings!,
    );
    unittest.expect(o.locked!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings(
      o.personalizationSettings!,
    );
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.securitySettings!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1SpeechToTextSettings(
      o.speechToTextSettings!,
    );
    unittest.expect(o.startFlow!, unittest.equals('foo'));
    unittest.expect(o.startPlaybook!, unittest.equals('foo'));
    checkUnnamed5(o.supportedLanguageCodes!);
    checkGoogleCloudDialogflowCxV3beta1TextToSpeechSettings(
      o.textToSpeechSettings!,
    );
    unittest.expect(o.timeZone!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Agent--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings =
    0;
api.GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings
buildGoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings <
      3) {
    o.enableAnswerFeedback = true;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings(
  api.GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings <
      3) {
    unittest.expect(o.enableAnswerFeedback!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings = 0;
api.GoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings
buildGoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings <
      3) {
    o.passphrase = 'foo';
    o.privateKey = 'foo';
    o.sslCertificate = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings(
  api.GoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings <
      3) {
    unittest.expect(o.passphrase!, unittest.equals('foo'));
    unittest.expect(o.privateKey!, unittest.equals('foo'));
    unittest.expect(o.sslCertificate!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings =
    0;
api.GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings
buildGoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings <
      3) {
    o.engine = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings(
  api.GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings <
      3) {
    unittest.expect(o.engine!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings =
    0;
api.GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings
buildGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings <
      3) {
    o.gitConnectionSettings =
        buildGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings();
    o.githubSettings =
        buildGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings(
  api.GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings <
      3) {
    checkGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings(
      o.gitConnectionSettings!,
    );
    checkGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings(
      o.githubSettings!,
    );
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings--;
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings =
    0;
api.GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings
buildGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings <
      3) {
    o.accessTokenSecret = 'foo';
    o.branches = buildUnnamed6();
    o.displayName = 'foo';
    o.repositoryUri = 'foo';
    o.trackingBranch = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings--;
  return o;
}

void
checkGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings(
  api.GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings
  o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings <
      3) {
    unittest.expect(o.accessTokenSecret!, unittest.equals('foo'));
    checkUnnamed6(o.branches!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.repositoryUri!, unittest.equals('foo'));
    unittest.expect(o.trackingBranch!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings =
    0;
api.GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings
buildGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings <
      3) {
    o.accessToken = 'foo';
    o.branches = buildUnnamed7();
    o.displayName = 'foo';
    o.repositoryUri = 'foo';
    o.trackingBranch = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings--;
  return o;
}

void
checkGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings(
  api.GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings <
      3) {
    unittest.expect(o.accessToken!, unittest.equals('foo'));
    checkUnnamed7(o.branches!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.repositoryUri!, unittest.equals('foo'));
    unittest.expect(o.trackingBranch!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings--;
}

core.Map<core.String, core.Object?> buildUnnamed8() => {
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

void checkUnnamed8(core.Map<core.String, core.Object?> o) {
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

core.int
buildCounterGoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings = 0;
api.GoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings
buildGoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings <
      3) {
    o.defaultEndUserMetadata = buildUnnamed8();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings(
  api.GoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings <
      3) {
    checkUnnamed8(o.defaultEndUserMetadata!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1AgentUtterance = 0;
api.GoogleCloudDialogflowCxV3beta1AgentUtterance
buildGoogleCloudDialogflowCxV3beta1AgentUtterance() {
  final o = api.GoogleCloudDialogflowCxV3beta1AgentUtterance();
  buildCounterGoogleCloudDialogflowCxV3beta1AgentUtterance++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AgentUtterance < 3) {
    o.requireGeneration = true;
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AgentUtterance--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1AgentUtterance(
  api.GoogleCloudDialogflowCxV3beta1AgentUtterance o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1AgentUtterance++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AgentUtterance < 3) {
    unittest.expect(o.requireGeneration!, unittest.isTrue);
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AgentUtterance--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1FlowValidationResult>
buildUnnamed9() => [
  buildGoogleCloudDialogflowCxV3beta1FlowValidationResult(),
  buildGoogleCloudDialogflowCxV3beta1FlowValidationResult(),
];

void checkUnnamed9(
  core.List<api.GoogleCloudDialogflowCxV3beta1FlowValidationResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1FlowValidationResult(o[0]);
  checkGoogleCloudDialogflowCxV3beta1FlowValidationResult(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1AgentValidationResult = 0;
api.GoogleCloudDialogflowCxV3beta1AgentValidationResult
buildGoogleCloudDialogflowCxV3beta1AgentValidationResult() {
  final o = api.GoogleCloudDialogflowCxV3beta1AgentValidationResult();
  buildCounterGoogleCloudDialogflowCxV3beta1AgentValidationResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AgentValidationResult < 3) {
    o.flowValidationResults = buildUnnamed9();
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AgentValidationResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1AgentValidationResult(
  api.GoogleCloudDialogflowCxV3beta1AgentValidationResult o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1AgentValidationResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AgentValidationResult < 3) {
    checkUnnamed9(o.flowValidationResults!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AgentValidationResult--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1AnswerFeedback = 0;
api.GoogleCloudDialogflowCxV3beta1AnswerFeedback
buildGoogleCloudDialogflowCxV3beta1AnswerFeedback() {
  final o = api.GoogleCloudDialogflowCxV3beta1AnswerFeedback();
  buildCounterGoogleCloudDialogflowCxV3beta1AnswerFeedback++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AnswerFeedback < 3) {
    o.customRating = 'foo';
    o.rating = 'foo';
    o.ratingReason =
        buildGoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AnswerFeedback--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1AnswerFeedback(
  api.GoogleCloudDialogflowCxV3beta1AnswerFeedback o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1AnswerFeedback++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AnswerFeedback < 3) {
    unittest.expect(o.customRating!, unittest.equals('foo'));
    unittest.expect(o.rating!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason(
      o.ratingReason!,
    );
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AnswerFeedback--;
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason =
    0;
api.GoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason
buildGoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason() {
  final o = api.GoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason();
  buildCounterGoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason <
      3) {
    o.feedback = 'foo';
    o.reasonLabels = buildUnnamed10();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason(
  api.GoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason <
      3) {
    unittest.expect(o.feedback!, unittest.equals('foo'));
    checkUnnamed10(o.reasonLabels!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1AudioInput = 0;
api.GoogleCloudDialogflowCxV3beta1AudioInput
buildGoogleCloudDialogflowCxV3beta1AudioInput() {
  final o = api.GoogleCloudDialogflowCxV3beta1AudioInput();
  buildCounterGoogleCloudDialogflowCxV3beta1AudioInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AudioInput < 3) {
    o.audio = 'foo';
    o.config = buildGoogleCloudDialogflowCxV3beta1InputAudioConfig();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AudioInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1AudioInput(
  api.GoogleCloudDialogflowCxV3beta1AudioInput o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1AudioInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AudioInput < 3) {
    unittest.expect(o.audio!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1InputAudioConfig(o.config!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AudioInput--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1BargeInConfig = 0;
api.GoogleCloudDialogflowCxV3beta1BargeInConfig
buildGoogleCloudDialogflowCxV3beta1BargeInConfig() {
  final o = api.GoogleCloudDialogflowCxV3beta1BargeInConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1BargeInConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BargeInConfig < 3) {
    o.noBargeInDuration = 'foo';
    o.totalDuration = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BargeInConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1BargeInConfig(
  api.GoogleCloudDialogflowCxV3beta1BargeInConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1BargeInConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BargeInConfig < 3) {
    unittest.expect(o.noBargeInDuration!, unittest.equals('foo'));
    unittest.expect(o.totalDuration!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BargeInConfig--;
}

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest =
    0;
api.GoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest
buildGoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest <
      3) {
    o.names = buildUnnamed11();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest(
  api.GoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest <
      3) {
    checkUnnamed11(o.names!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest--;
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest = 0;
api.GoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest
buildGoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest < 3) {
    o.environment = 'foo';
    o.testCases = buildUnnamed12();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest(
  api.GoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest < 3) {
    unittest.expect(o.environment!, unittest.equals('foo'));
    checkUnnamed12(o.testCases!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1BigQueryExportSettings = 0;
api.GoogleCloudDialogflowCxV3beta1BigQueryExportSettings
buildGoogleCloudDialogflowCxV3beta1BigQueryExportSettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1BigQueryExportSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1BigQueryExportSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BigQueryExportSettings < 3) {
    o.bigqueryTable = 'foo';
    o.enabled = true;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BigQueryExportSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1BigQueryExportSettings(
  api.GoogleCloudDialogflowCxV3beta1BigQueryExportSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1BigQueryExportSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BigQueryExportSettings < 3) {
    unittest.expect(o.bigqueryTable!, unittest.equals('foo'));
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BigQueryExportSettings--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec>
buildUnnamed13() => [
  buildGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec(),
  buildGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec(),
];

void checkUnnamed13(
  core.List<api.GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec(o[0]);
  checkGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1BoostSpec = 0;
api.GoogleCloudDialogflowCxV3beta1BoostSpec
buildGoogleCloudDialogflowCxV3beta1BoostSpec() {
  final o = api.GoogleCloudDialogflowCxV3beta1BoostSpec();
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpec++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BoostSpec < 3) {
    o.conditionBoostSpecs = buildUnnamed13();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpec--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1BoostSpec(
  api.GoogleCloudDialogflowCxV3beta1BoostSpec o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpec++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BoostSpec < 3) {
    checkUnnamed13(o.conditionBoostSpecs!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpec--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec =
    0;
api.GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec
buildGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec() {
  final o = api.GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec();
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec <
      3) {
    o.boost = 42.0;
    o.boostControlSpec =
        buildGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec();
    o.condition = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec(
  api.GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec <
      3) {
    unittest.expect(o.boost!, unittest.equals(42.0));
    checkGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec(
      o.boostControlSpec!,
    );
    unittest.expect(o.condition!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec--;
}

core.List<
  api.GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint
>
buildUnnamed14() => [
  buildGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint(),
  buildGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint(),
];

void checkUnnamed14(
  core.List<
    api.GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint(
    o[0],
  );
  checkGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint(
    o[1],
  );
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec =
    0;
api.GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec
buildGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec();
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec <
      3) {
    o.attributeType = 'foo';
    o.controlPoints = buildUnnamed14();
    o.fieldName = 'foo';
    o.interpolationType = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec--;
  return o;
}

void
checkGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec(
  api.GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec
  o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec <
      3) {
    unittest.expect(o.attributeType!, unittest.equals('foo'));
    checkUnnamed14(o.controlPoints!);
    unittest.expect(o.fieldName!, unittest.equals('foo'));
    unittest.expect(o.interpolationType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint =
    0;
api.GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint
buildGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint();
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint <
      3) {
    o.attributeValue = 'foo';
    o.boostAmount = 42.0;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint--;
  return o;
}

void
checkGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint(
  api.GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint
  o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint <
      3) {
    unittest.expect(o.attributeValue!, unittest.equals('foo'));
    unittest.expect(o.boostAmount!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint--;
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3beta1BoostSpec> buildUnnamed16() => [
  buildGoogleCloudDialogflowCxV3beta1BoostSpec(),
  buildGoogleCloudDialogflowCxV3beta1BoostSpec(),
];

void checkUnnamed16(core.List<api.GoogleCloudDialogflowCxV3beta1BoostSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1BoostSpec(o[0]);
  checkGoogleCloudDialogflowCxV3beta1BoostSpec(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecs = 0;
api.GoogleCloudDialogflowCxV3beta1BoostSpecs
buildGoogleCloudDialogflowCxV3beta1BoostSpecs() {
  final o = api.GoogleCloudDialogflowCxV3beta1BoostSpecs();
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecs++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecs < 3) {
    o.dataStores = buildUnnamed15();
    o.spec = buildUnnamed16();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecs--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1BoostSpecs(
  api.GoogleCloudDialogflowCxV3beta1BoostSpecs o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecs++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecs < 3) {
    checkUnnamed15(o.dataStores!);
    checkUnnamed16(o.spec!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BoostSpecs--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1CalculateCoverageResponse =
    0;
api.GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse
buildGoogleCloudDialogflowCxV3beta1CalculateCoverageResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1CalculateCoverageResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1CalculateCoverageResponse < 3) {
    o.agent = 'foo';
    o.intentCoverage = buildGoogleCloudDialogflowCxV3beta1IntentCoverage();
    o.routeGroupCoverage =
        buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage();
    o.transitionCoverage =
        buildGoogleCloudDialogflowCxV3beta1TransitionCoverage();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1CalculateCoverageResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1CalculateCoverageResponse(
  api.GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1CalculateCoverageResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1CalculateCoverageResponse < 3) {
    unittest.expect(o.agent!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1IntentCoverage(o.intentCoverage!);
    checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage(
      o.routeGroupCoverage!,
    );
    checkGoogleCloudDialogflowCxV3beta1TransitionCoverage(
      o.transitionCoverage!,
    );
  }
  buildCounterGoogleCloudDialogflowCxV3beta1CalculateCoverageResponse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Changelog = 0;
api.GoogleCloudDialogflowCxV3beta1Changelog
buildGoogleCloudDialogflowCxV3beta1Changelog() {
  final o = api.GoogleCloudDialogflowCxV3beta1Changelog();
  buildCounterGoogleCloudDialogflowCxV3beta1Changelog++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Changelog < 3) {
    o.action = 'foo';
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.languageCode = 'foo';
    o.name = 'foo';
    o.resource = 'foo';
    o.type = 'foo';
    o.userEmail = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Changelog--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Changelog(
  api.GoogleCloudDialogflowCxV3beta1Changelog o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Changelog++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Changelog < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.resource!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.userEmail!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Changelog--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1CompareVersionsRequest = 0;
api.GoogleCloudDialogflowCxV3beta1CompareVersionsRequest
buildGoogleCloudDialogflowCxV3beta1CompareVersionsRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1CompareVersionsRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1CompareVersionsRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1CompareVersionsRequest < 3) {
    o.languageCode = 'foo';
    o.targetVersion = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1CompareVersionsRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1CompareVersionsRequest(
  api.GoogleCloudDialogflowCxV3beta1CompareVersionsRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1CompareVersionsRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1CompareVersionsRequest < 3) {
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.targetVersion!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1CompareVersionsRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1CompareVersionsResponse = 0;
api.GoogleCloudDialogflowCxV3beta1CompareVersionsResponse
buildGoogleCloudDialogflowCxV3beta1CompareVersionsResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1CompareVersionsResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1CompareVersionsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1CompareVersionsResponse < 3) {
    o.baseVersionContentJson = 'foo';
    o.compareTime = 'foo';
    o.targetVersionContentJson = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1CompareVersionsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1CompareVersionsResponse(
  api.GoogleCloudDialogflowCxV3beta1CompareVersionsResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1CompareVersionsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1CompareVersionsResponse < 3) {
    unittest.expect(o.baseVersionContentJson!, unittest.equals('foo'));
    unittest.expect(o.compareTime!, unittest.equals('foo'));
    unittest.expect(o.targetVersionContentJson!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1CompareVersionsResponse--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ContinuousTestResult = 0;
api.GoogleCloudDialogflowCxV3beta1ContinuousTestResult
buildGoogleCloudDialogflowCxV3beta1ContinuousTestResult() {
  final o = api.GoogleCloudDialogflowCxV3beta1ContinuousTestResult();
  buildCounterGoogleCloudDialogflowCxV3beta1ContinuousTestResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ContinuousTestResult < 3) {
    o.name = 'foo';
    o.result = 'foo';
    o.runTime = 'foo';
    o.testCaseResults = buildUnnamed17();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ContinuousTestResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ContinuousTestResult(
  api.GoogleCloudDialogflowCxV3beta1ContinuousTestResult o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ContinuousTestResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ContinuousTestResult < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.result!, unittest.equals('foo'));
    unittest.expect(o.runTime!, unittest.equals('foo'));
    checkUnnamed17(o.testCaseResults!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ContinuousTestResult--;
}

core.Map<core.String, core.String> buildUnnamed18() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed18(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3beta1Flow> buildUnnamed19() => [
  buildGoogleCloudDialogflowCxV3beta1Flow(),
  buildGoogleCloudDialogflowCxV3beta1Flow(),
];

void checkUnnamed19(core.List<api.GoogleCloudDialogflowCxV3beta1Flow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Flow(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Flow(o[1]);
}

core.List<api.GoogleCloudDialogflowCxV3beta1Intent> buildUnnamed20() => [
  buildGoogleCloudDialogflowCxV3beta1Intent(),
  buildGoogleCloudDialogflowCxV3beta1Intent(),
];

void checkUnnamed20(core.List<api.GoogleCloudDialogflowCxV3beta1Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Intent(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Intent(o[1]);
}

core.List<api.GoogleCloudDialogflowCxV3beta1ConversationInteraction>
buildUnnamed21() => [
  buildGoogleCloudDialogflowCxV3beta1ConversationInteraction(),
  buildGoogleCloudDialogflowCxV3beta1ConversationInteraction(),
];

void checkUnnamed21(
  core.List<api.GoogleCloudDialogflowCxV3beta1ConversationInteraction> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ConversationInteraction(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ConversationInteraction(o[1]);
}

core.List<api.GoogleCloudDialogflowCxV3beta1Page> buildUnnamed22() => [
  buildGoogleCloudDialogflowCxV3beta1Page(),
  buildGoogleCloudDialogflowCxV3beta1Page(),
];

void checkUnnamed22(core.List<api.GoogleCloudDialogflowCxV3beta1Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Page(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Page(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Conversation = 0;
api.GoogleCloudDialogflowCxV3beta1Conversation
buildGoogleCloudDialogflowCxV3beta1Conversation() {
  final o = api.GoogleCloudDialogflowCxV3beta1Conversation();
  buildCounterGoogleCloudDialogflowCxV3beta1Conversation++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Conversation < 3) {
    o.duration = 'foo';
    o.environment = buildGoogleCloudDialogflowCxV3beta1Environment();
    o.flowVersions = buildUnnamed18();
    o.flows = buildUnnamed19();
    o.intents = buildUnnamed20();
    o.interactions = buildUnnamed21();
    o.languageCode = 'foo';
    o.metrics = buildGoogleCloudDialogflowCxV3beta1ConversationMetrics();
    o.name = 'foo';
    o.pages = buildUnnamed22();
    o.startTime = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Conversation--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Conversation(
  api.GoogleCloudDialogflowCxV3beta1Conversation o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Conversation++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Conversation < 3) {
    unittest.expect(o.duration!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1Environment(o.environment!);
    checkUnnamed18(o.flowVersions!);
    checkUnnamed19(o.flows!);
    checkUnnamed20(o.intents!);
    checkUnnamed21(o.interactions!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1ConversationMetrics(o.metrics!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed22(o.pages!);
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Conversation--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1DetectIntentResponse>
buildUnnamed23() => [
  buildGoogleCloudDialogflowCxV3beta1DetectIntentResponse(),
  buildGoogleCloudDialogflowCxV3beta1DetectIntentResponse(),
];

void checkUnnamed23(
  core.List<api.GoogleCloudDialogflowCxV3beta1DetectIntentResponse> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1DetectIntentResponse(o[0]);
  checkGoogleCloudDialogflowCxV3beta1DetectIntentResponse(o[1]);
}

core.List<api.GoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics>
buildUnnamed24() => [
  buildGoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics(),
  buildGoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics(),
];

void checkUnnamed24(
  core.List<
    api.GoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteraction = 0;
api.GoogleCloudDialogflowCxV3beta1ConversationInteraction
buildGoogleCloudDialogflowCxV3beta1ConversationInteraction() {
  final o = api.GoogleCloudDialogflowCxV3beta1ConversationInteraction();
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteraction++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteraction < 3) {
    o.answerFeedback = buildGoogleCloudDialogflowCxV3beta1AnswerFeedback();
    o.createTime = 'foo';
    o.missingTransition =
        buildGoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition();
    o.partialResponses = buildUnnamed23();
    o.request = buildGoogleCloudDialogflowCxV3beta1DetectIntentRequest();
    o.requestUtterances = 'foo';
    o.response = buildGoogleCloudDialogflowCxV3beta1DetectIntentResponse();
    o.responseUtterances = 'foo';
    o.stepMetrics = buildUnnamed24();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteraction--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ConversationInteraction(
  api.GoogleCloudDialogflowCxV3beta1ConversationInteraction o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteraction++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteraction < 3) {
    checkGoogleCloudDialogflowCxV3beta1AnswerFeedback(o.answerFeedback!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition(
      o.missingTransition!,
    );
    checkUnnamed23(o.partialResponses!);
    checkGoogleCloudDialogflowCxV3beta1DetectIntentRequest(o.request!);
    unittest.expect(o.requestUtterances!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1DetectIntentResponse(o.response!);
    unittest.expect(o.responseUtterances!, unittest.equals('foo'));
    checkUnnamed24(o.stepMetrics!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteraction--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition =
    0;
api.GoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition
buildGoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition();
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition <
      3) {
    o.intentDisplayName = 'foo';
    o.score = 42.0;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition--;
  return o;
}

void
checkGoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition(
  api.GoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition <
      3) {
    unittest.expect(o.intentDisplayName!, unittest.equals('foo'));
    unittest.expect(o.score!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics =
    0;
api.GoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics
buildGoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics();
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics <
      3) {
    o.latency = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics(
  api.GoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics <
      3) {
    unittest.expect(o.latency!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetrics = 0;
api.GoogleCloudDialogflowCxV3beta1ConversationMetrics
buildGoogleCloudDialogflowCxV3beta1ConversationMetrics() {
  final o = api.GoogleCloudDialogflowCxV3beta1ConversationMetrics();
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetrics++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetrics < 3) {
    o.averageMatchConfidence = 42.0;
    o.hasEndInteraction = true;
    o.hasLiveAgentHandoff = true;
    o.inputAudioDuration = 'foo';
    o.interactionCount = 42;
    o.matchTypeCount =
        buildGoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount();
    o.maxWebhookLatency = 'foo';
    o.outputAudioDuration = 'foo';
    o.queryInputCount =
        buildGoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetrics--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ConversationMetrics(
  api.GoogleCloudDialogflowCxV3beta1ConversationMetrics o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetrics++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetrics < 3) {
    unittest.expect(o.averageMatchConfidence!, unittest.equals(42.0));
    unittest.expect(o.hasEndInteraction!, unittest.isTrue);
    unittest.expect(o.hasLiveAgentHandoff!, unittest.isTrue);
    unittest.expect(o.inputAudioDuration!, unittest.equals('foo'));
    unittest.expect(o.interactionCount!, unittest.equals(42));
    checkGoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount(
      o.matchTypeCount!,
    );
    unittest.expect(o.maxWebhookLatency!, unittest.equals('foo'));
    unittest.expect(o.outputAudioDuration!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount(
      o.queryInputCount!,
    );
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetrics--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount = 0;
api.GoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount
buildGoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount();
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount <
      3) {
    o.directIntentCount = 42;
    o.eventCount = 42;
    o.intentCount = 42;
    o.noInputCount = 42;
    o.noMatchCount = 42;
    o.parameterFillingCount = 42;
    o.unspecifiedCount = 42;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount(
  api.GoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount <
      3) {
    unittest.expect(o.directIntentCount!, unittest.equals(42));
    unittest.expect(o.eventCount!, unittest.equals(42));
    unittest.expect(o.intentCount!, unittest.equals(42));
    unittest.expect(o.noInputCount!, unittest.equals(42));
    unittest.expect(o.noMatchCount!, unittest.equals(42));
    unittest.expect(o.parameterFillingCount!, unittest.equals(42));
    unittest.expect(o.unspecifiedCount!, unittest.equals(42));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount =
    0;
api.GoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount
buildGoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount();
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount <
      3) {
    o.audioCount = 42;
    o.dtmfCount = 42;
    o.eventCount = 42;
    o.intentCount = 42;
    o.textCount = 42;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount(
  api.GoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount <
      3) {
    unittest.expect(o.audioCount!, unittest.equals(42));
    unittest.expect(o.dtmfCount!, unittest.equals(42));
    unittest.expect(o.eventCount!, unittest.equals(42));
    unittest.expect(o.intentCount!, unittest.equals(42));
    unittest.expect(o.textCount!, unittest.equals(42));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurn = 0;
api.GoogleCloudDialogflowCxV3beta1ConversationTurn
buildGoogleCloudDialogflowCxV3beta1ConversationTurn() {
  final o = api.GoogleCloudDialogflowCxV3beta1ConversationTurn();
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurn++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurn < 3) {
    o.userInput =
        buildGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput();
    o.virtualAgentOutput =
        buildGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurn--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ConversationTurn(
  api.GoogleCloudDialogflowCxV3beta1ConversationTurn o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurn++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurn < 3) {
    checkGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput(o.userInput!);
    checkGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput(
      o.virtualAgentOutput!,
    );
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurn--;
}

core.Map<core.String, core.Object?> buildUnnamed25() => {
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

void checkUnnamed25(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput =
    0;
api.GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput
buildGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput() {
  final o = api.GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput();
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput < 3) {
    o.enableSentimentAnalysis = true;
    o.injectedParameters = buildUnnamed25();
    o.input = buildGoogleCloudDialogflowCxV3beta1QueryInput();
    o.isWebhookEnabled = true;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput(
  api.GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput < 3) {
    unittest.expect(o.enableSentimentAnalysis!, unittest.isTrue);
    checkUnnamed25(o.injectedParameters!);
    checkGoogleCloudDialogflowCxV3beta1QueryInput(o.input!);
    unittest.expect(o.isWebhookEnabled!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput--;
}

core.Map<core.String, core.Object?> buildUnnamed26() => {
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

void checkUnnamed26(core.Map<core.String, core.Object?> o) {
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

core.List<api.GoogleCloudDialogflowCxV3beta1TestRunDifference>
buildUnnamed27() => [
  buildGoogleCloudDialogflowCxV3beta1TestRunDifference(),
  buildGoogleCloudDialogflowCxV3beta1TestRunDifference(),
];

void checkUnnamed27(
  core.List<api.GoogleCloudDialogflowCxV3beta1TestRunDifference> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1TestRunDifference(o[0]);
  checkGoogleCloudDialogflowCxV3beta1TestRunDifference(o[1]);
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

core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessageText>
buildUnnamed29() => [
  buildGoogleCloudDialogflowCxV3beta1ResponseMessageText(),
  buildGoogleCloudDialogflowCxV3beta1ResponseMessageText(),
];

void checkUnnamed29(
  core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessageText> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ResponseMessageText(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ResponseMessageText(o[1]);
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput =
    0;
api.GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput
buildGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput();
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput <
      3) {
    o.currentPage = buildGoogleCloudDialogflowCxV3beta1Page();
    o.diagnosticInfo = buildUnnamed26();
    o.differences = buildUnnamed27();
    o.sessionParameters = buildUnnamed28();
    o.status = buildGoogleRpcStatus();
    o.textResponses = buildUnnamed29();
    o.triggeredIntent = buildGoogleCloudDialogflowCxV3beta1Intent();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput(
  api.GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput <
      3) {
    checkGoogleCloudDialogflowCxV3beta1Page(o.currentPage!);
    checkUnnamed26(o.diagnosticInfo!);
    checkUnnamed27(o.differences!);
    checkUnnamed28(o.sessionParameters!);
    checkGoogleRpcStatus(o.status!);
    checkUnnamed29(o.textResponses!);
    checkGoogleCloudDialogflowCxV3beta1Intent(o.triggeredIntent!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnection = 0;
api.GoogleCloudDialogflowCxV3beta1DataStoreConnection
buildGoogleCloudDialogflowCxV3beta1DataStoreConnection() {
  final o = api.GoogleCloudDialogflowCxV3beta1DataStoreConnection();
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnection++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnection < 3) {
    o.dataStore = 'foo';
    o.dataStoreType = 'foo';
    o.documentProcessingMode = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnection--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1DataStoreConnection(
  api.GoogleCloudDialogflowCxV3beta1DataStoreConnection o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnection++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnection < 3) {
    unittest.expect(o.dataStore!, unittest.equals('foo'));
    unittest.expect(o.dataStoreType!, unittest.equals('foo'));
    unittest.expect(o.documentProcessingMode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnection--;
}

core.List<
  api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart
>
buildUnnamed30() => [
  buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart(),
  buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart(),
];

void checkUnnamed30(
  core.List<
    api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart(o[0]);
  checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart(o[1]);
}

core.List<
  api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet
>
buildUnnamed31() => [
  buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet(),
  buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet(),
];

void checkUnnamed31(
  core.List<
    api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet(
    o[0],
  );
  checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet(
    o[1],
  );
}

core.List<
  api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet
>
buildUnnamed32() => [
  buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet(),
  buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet(),
];

void checkUnnamed32(
  core.List<
    api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet(
    o[0],
  );
  checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet(
    o[1],
  );
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals =
    0;
api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals
buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals() {
  final o = api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals();
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals <
      3) {
    o.answer = 'foo';
    o.answerGenerationModelCallSignals =
        buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals();
    o.answerParts = buildUnnamed30();
    o.citedSnippets = buildUnnamed31();
    o.groundingSignals =
        buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals();
    o.rewriterModelCallSignals =
        buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals();
    o.rewrittenQuery = 'foo';
    o.safetySignals =
        buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals();
    o.searchSnippets = buildUnnamed32();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals(
  api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals <
      3) {
    unittest.expect(o.answer!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals(
      o.answerGenerationModelCallSignals!,
    );
    checkUnnamed30(o.answerParts!);
    checkUnnamed31(o.citedSnippets!);
    checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals(
      o.groundingSignals!,
    );
    checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals(
      o.rewriterModelCallSignals!,
    );
    unittest.expect(o.rewrittenQuery!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals(
      o.safetySignals!,
    );
    checkUnnamed32(o.searchSnippets!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals =
    0;
api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals
buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals();
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals <
      3) {
    o.model = 'foo';
    o.modelOutput = 'foo';
    o.renderedPrompt = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals--;
  return o;
}

void
checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals(
  api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals
  o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals <
      3) {
    unittest.expect(o.model!, unittest.equals('foo'));
    unittest.expect(o.modelOutput!, unittest.equals('foo'));
    unittest.expect(o.renderedPrompt!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals--;
}

core.List<core.int> buildUnnamed33() => [42, 42];

void checkUnnamed33(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart =
    0;
api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart
buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart();
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart <
      3) {
    o.supportingIndices = buildUnnamed33();
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart(
  api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart <
      3) {
    checkUnnamed33(o.supportingIndices!);
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet =
    0;
api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet
buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet();
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet <
      3) {
    o.searchSnippet =
        buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet();
    o.snippetIndex = 42;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet(
  api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet <
      3) {
    checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet(
      o.searchSnippet!,
    );
    unittest.expect(o.snippetIndex!, unittest.equals(42));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals =
    0;
api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals
buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals();
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals <
      3) {
    o.decision = 'foo';
    o.score = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals--;
  return o;
}

void
checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals(
  api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals
  o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals <
      3) {
    unittest.expect(o.decision!, unittest.equals('foo'));
    unittest.expect(o.score!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals =
    0;
api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals
buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals();
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals <
      3) {
    o.model = 'foo';
    o.modelOutput = 'foo';
    o.renderedPrompt = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals--;
  return o;
}

void
checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals(
  api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals
  o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals <
      3) {
    unittest.expect(o.model!, unittest.equals('foo'));
    unittest.expect(o.modelOutput!, unittest.equals('foo'));
    unittest.expect(o.renderedPrompt!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals =
    0;
api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals
buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals();
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals <
      3) {
    o.bannedPhraseMatch = 'foo';
    o.decision = 'foo';
    o.matchedBannedPhrase = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals(
  api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals <
      3) {
    unittest.expect(o.bannedPhraseMatch!, unittest.equals('foo'));
    unittest.expect(o.decision!, unittest.equals('foo'));
    unittest.expect(o.matchedBannedPhrase!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals--;
}

core.Map<core.String, core.Object?> buildUnnamed34() => {
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

void checkUnnamed34(core.Map<core.String, core.Object?> o) {
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

core.int
buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet =
    0;
api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet
buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet();
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet <
      3) {
    o.documentTitle = 'foo';
    o.documentUri = 'foo';
    o.metadata = buildUnnamed34();
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet(
  api.GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet <
      3) {
    unittest.expect(o.documentTitle!, unittest.equals('foo'));
    unittest.expect(o.documentUri!, unittest.equals('foo'));
    checkUnnamed34(o.metadata!);
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1DeployFlowRequest = 0;
api.GoogleCloudDialogflowCxV3beta1DeployFlowRequest
buildGoogleCloudDialogflowCxV3beta1DeployFlowRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1DeployFlowRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1DeployFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DeployFlowRequest < 3) {
    o.flowVersion = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DeployFlowRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1DeployFlowRequest(
  api.GoogleCloudDialogflowCxV3beta1DeployFlowRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1DeployFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DeployFlowRequest < 3) {
    unittest.expect(o.flowVersion!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DeployFlowRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Deployment = 0;
api.GoogleCloudDialogflowCxV3beta1Deployment
buildGoogleCloudDialogflowCxV3beta1Deployment() {
  final o = api.GoogleCloudDialogflowCxV3beta1Deployment();
  buildCounterGoogleCloudDialogflowCxV3beta1Deployment++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Deployment < 3) {
    o.endTime = 'foo';
    o.flowVersion = 'foo';
    o.name = 'foo';
    o.result = buildGoogleCloudDialogflowCxV3beta1DeploymentResult();
    o.startTime = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Deployment--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Deployment(
  api.GoogleCloudDialogflowCxV3beta1Deployment o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Deployment++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Deployment < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.flowVersion!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1DeploymentResult(o.result!);
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Deployment--;
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1DeploymentResult = 0;
api.GoogleCloudDialogflowCxV3beta1DeploymentResult
buildGoogleCloudDialogflowCxV3beta1DeploymentResult() {
  final o = api.GoogleCloudDialogflowCxV3beta1DeploymentResult();
  buildCounterGoogleCloudDialogflowCxV3beta1DeploymentResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DeploymentResult < 3) {
    o.deploymentTestResults = buildUnnamed35();
    o.experiment = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DeploymentResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1DeploymentResult(
  api.GoogleCloudDialogflowCxV3beta1DeploymentResult o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1DeploymentResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DeploymentResult < 3) {
    checkUnnamed35(o.deploymentTestResults!);
    unittest.expect(o.experiment!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DeploymentResult--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1DetectIntentRequest = 0;
api.GoogleCloudDialogflowCxV3beta1DetectIntentRequest
buildGoogleCloudDialogflowCxV3beta1DetectIntentRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1DetectIntentRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1DetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DetectIntentRequest < 3) {
    o.outputAudioConfig =
        buildGoogleCloudDialogflowCxV3beta1OutputAudioConfig();
    o.queryInput = buildGoogleCloudDialogflowCxV3beta1QueryInput();
    o.queryParams = buildGoogleCloudDialogflowCxV3beta1QueryParameters();
    o.session = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DetectIntentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1DetectIntentRequest(
  api.GoogleCloudDialogflowCxV3beta1DetectIntentRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1DetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DetectIntentRequest < 3) {
    checkGoogleCloudDialogflowCxV3beta1OutputAudioConfig(o.outputAudioConfig!);
    checkGoogleCloudDialogflowCxV3beta1QueryInput(o.queryInput!);
    checkGoogleCloudDialogflowCxV3beta1QueryParameters(o.queryParams!);
    unittest.expect(o.session!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DetectIntentRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1DetectIntentResponse = 0;
api.GoogleCloudDialogflowCxV3beta1DetectIntentResponse
buildGoogleCloudDialogflowCxV3beta1DetectIntentResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1DetectIntentResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1DetectIntentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DetectIntentResponse < 3) {
    o.allowCancellation = true;
    o.outputAudio = 'foo';
    o.outputAudioConfig =
        buildGoogleCloudDialogflowCxV3beta1OutputAudioConfig();
    o.queryResult = buildGoogleCloudDialogflowCxV3beta1QueryResult();
    o.responseId = 'foo';
    o.responseType = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DetectIntentResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1DetectIntentResponse(
  api.GoogleCloudDialogflowCxV3beta1DetectIntentResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1DetectIntentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DetectIntentResponse < 3) {
    unittest.expect(o.allowCancellation!, unittest.isTrue);
    unittest.expect(o.outputAudio!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1OutputAudioConfig(o.outputAudioConfig!);
    checkGoogleCloudDialogflowCxV3beta1QueryResult(o.queryResult!);
    unittest.expect(o.responseId!, unittest.equals('foo'));
    unittest.expect(o.responseType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DetectIntentResponse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1DtmfInput = 0;
api.GoogleCloudDialogflowCxV3beta1DtmfInput
buildGoogleCloudDialogflowCxV3beta1DtmfInput() {
  final o = api.GoogleCloudDialogflowCxV3beta1DtmfInput();
  buildCounterGoogleCloudDialogflowCxV3beta1DtmfInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DtmfInput < 3) {
    o.digits = 'foo';
    o.finishDigit = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DtmfInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1DtmfInput(
  api.GoogleCloudDialogflowCxV3beta1DtmfInput o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1DtmfInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DtmfInput < 3) {
    unittest.expect(o.digits!, unittest.equals('foo'));
    unittest.expect(o.finishDigit!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DtmfInput--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1EntityTypeEntity>
buildUnnamed36() => [
  buildGoogleCloudDialogflowCxV3beta1EntityTypeEntity(),
  buildGoogleCloudDialogflowCxV3beta1EntityTypeEntity(),
];

void checkUnnamed36(
  core.List<api.GoogleCloudDialogflowCxV3beta1EntityTypeEntity> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowCxV3beta1EntityTypeEntity(o[1]);
}

core.List<api.GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase>
buildUnnamed37() => [
  buildGoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase(),
  buildGoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase(),
];

void checkUnnamed37(
  core.List<api.GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase(o[0]);
  checkGoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1EntityType = 0;
api.GoogleCloudDialogflowCxV3beta1EntityType
buildGoogleCloudDialogflowCxV3beta1EntityType() {
  final o = api.GoogleCloudDialogflowCxV3beta1EntityType();
  buildCounterGoogleCloudDialogflowCxV3beta1EntityType++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EntityType < 3) {
    o.autoExpansionMode = 'foo';
    o.displayName = 'foo';
    o.enableFuzzyExtraction = true;
    o.entities = buildUnnamed36();
    o.excludedPhrases = buildUnnamed37();
    o.kind = 'foo';
    o.name = 'foo';
    o.redact = true;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EntityType--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1EntityType(
  api.GoogleCloudDialogflowCxV3beta1EntityType o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1EntityType++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EntityType < 3) {
    unittest.expect(o.autoExpansionMode!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.enableFuzzyExtraction!, unittest.isTrue);
    checkUnnamed36(o.entities!);
    checkUnnamed37(o.excludedPhrases!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.redact!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EntityType--;
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1EntityTypeEntity = 0;
api.GoogleCloudDialogflowCxV3beta1EntityTypeEntity
buildGoogleCloudDialogflowCxV3beta1EntityTypeEntity() {
  final o = api.GoogleCloudDialogflowCxV3beta1EntityTypeEntity();
  buildCounterGoogleCloudDialogflowCxV3beta1EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EntityTypeEntity < 3) {
    o.synonyms = buildUnnamed38();
    o.value = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EntityTypeEntity--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1EntityTypeEntity(
  api.GoogleCloudDialogflowCxV3beta1EntityTypeEntity o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EntityTypeEntity < 3) {
    checkUnnamed38(o.synonyms!);
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EntityTypeEntity--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase = 0;
api.GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase
buildGoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase() {
  final o = api.GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase();
  buildCounterGoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase < 3) {
    o.value = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase(
  api.GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase < 3) {
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig>
buildUnnamed39() => [
  buildGoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig(),
  buildGoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig(),
];

void checkUnnamed39(
  core.List<api.GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig(o[0]);
  checkGoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Environment = 0;
api.GoogleCloudDialogflowCxV3beta1Environment
buildGoogleCloudDialogflowCxV3beta1Environment() {
  final o = api.GoogleCloudDialogflowCxV3beta1Environment();
  buildCounterGoogleCloudDialogflowCxV3beta1Environment++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Environment < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.testCasesConfig =
        buildGoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig();
    o.updateTime = 'foo';
    o.versionConfigs = buildUnnamed39();
    o.webhookConfig =
        buildGoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Environment--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Environment(
  api.GoogleCloudDialogflowCxV3beta1Environment o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Environment++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Environment < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig(
      o.testCasesConfig!,
    );
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkUnnamed39(o.versionConfigs!);
    checkGoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig(
      o.webhookConfig!,
    );
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Environment--;
}

core.List<core.String> buildUnnamed40() => ['foo', 'foo'];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig =
    0;
api.GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig
buildGoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig() {
  final o = api.GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig <
      3) {
    o.enableContinuousRun = true;
    o.enablePredeploymentRun = true;
    o.testCases = buildUnnamed40();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig(
  api.GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig <
      3) {
    unittest.expect(o.enableContinuousRun!, unittest.isTrue);
    unittest.expect(o.enablePredeploymentRun!, unittest.isTrue);
    checkUnnamed40(o.testCases!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig = 0;
api.GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig
buildGoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig() {
  final o = api.GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig < 3) {
    o.version = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig(
  api.GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig < 3) {
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Webhook> buildUnnamed41() => [
  buildGoogleCloudDialogflowCxV3beta1Webhook(),
  buildGoogleCloudDialogflowCxV3beta1Webhook(),
];

void checkUnnamed41(core.List<api.GoogleCloudDialogflowCxV3beta1Webhook> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Webhook(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Webhook(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig = 0;
api.GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig
buildGoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig() {
  final o = api.GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig < 3) {
    o.webhookOverrides = buildUnnamed41();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig(
  api.GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig < 3) {
    checkUnnamed41(o.webhookOverrides!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Event = 0;
api.GoogleCloudDialogflowCxV3beta1Event
buildGoogleCloudDialogflowCxV3beta1Event() {
  final o = api.GoogleCloudDialogflowCxV3beta1Event();
  buildCounterGoogleCloudDialogflowCxV3beta1Event++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Event < 3) {
    o.event = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Event--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Event(
  api.GoogleCloudDialogflowCxV3beta1Event o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Event++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Event < 3) {
    unittest.expect(o.event!, unittest.equals('foo'));
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Event--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1EventHandler = 0;
api.GoogleCloudDialogflowCxV3beta1EventHandler
buildGoogleCloudDialogflowCxV3beta1EventHandler() {
  final o = api.GoogleCloudDialogflowCxV3beta1EventHandler();
  buildCounterGoogleCloudDialogflowCxV3beta1EventHandler++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EventHandler < 3) {
    o.event = 'foo';
    o.name = 'foo';
    o.targetFlow = 'foo';
    o.targetPage = 'foo';
    o.targetPlaybook = 'foo';
    o.triggerFulfillment = buildGoogleCloudDialogflowCxV3beta1Fulfillment();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EventHandler--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1EventHandler(
  api.GoogleCloudDialogflowCxV3beta1EventHandler o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1EventHandler++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EventHandler < 3) {
    unittest.expect(o.event!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.targetFlow!, unittest.equals('foo'));
    unittest.expect(o.targetPage!, unittest.equals('foo'));
    unittest.expect(o.targetPlaybook!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1Fulfillment(o.triggerFulfillment!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EventHandler--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1EventInput = 0;
api.GoogleCloudDialogflowCxV3beta1EventInput
buildGoogleCloudDialogflowCxV3beta1EventInput() {
  final o = api.GoogleCloudDialogflowCxV3beta1EventInput();
  buildCounterGoogleCloudDialogflowCxV3beta1EventInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EventInput < 3) {
    o.event = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EventInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1EventInput(
  api.GoogleCloudDialogflowCxV3beta1EventInput o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1EventInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EventInput < 3) {
    unittest.expect(o.event!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EventInput--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Action> buildUnnamed42() => [
  buildGoogleCloudDialogflowCxV3beta1Action(),
  buildGoogleCloudDialogflowCxV3beta1Action(),
];

void checkUnnamed42(core.List<api.GoogleCloudDialogflowCxV3beta1Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Action(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Action(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Example = 0;
api.GoogleCloudDialogflowCxV3beta1Example
buildGoogleCloudDialogflowCxV3beta1Example() {
  final o = api.GoogleCloudDialogflowCxV3beta1Example();
  buildCounterGoogleCloudDialogflowCxV3beta1Example++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Example < 3) {
    o.actions = buildUnnamed42();
    o.conversationState = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.languageCode = 'foo';
    o.name = 'foo';
    o.playbookInput = buildGoogleCloudDialogflowCxV3beta1PlaybookInput();
    o.playbookOutput = buildGoogleCloudDialogflowCxV3beta1PlaybookOutput();
    o.tokenCount = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Example--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Example(
  api.GoogleCloudDialogflowCxV3beta1Example o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Example++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Example < 3) {
    checkUnnamed42(o.actions!);
    unittest.expect(o.conversationState!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1PlaybookInput(o.playbookInput!);
    checkGoogleCloudDialogflowCxV3beta1PlaybookOutput(o.playbookOutput!);
    unittest.expect(o.tokenCount!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Example--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ExceptionDetail = 0;
api.GoogleCloudDialogflowCxV3beta1ExceptionDetail
buildGoogleCloudDialogflowCxV3beta1ExceptionDetail() {
  final o = api.GoogleCloudDialogflowCxV3beta1ExceptionDetail();
  buildCounterGoogleCloudDialogflowCxV3beta1ExceptionDetail++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExceptionDetail < 3) {
    o.errorMessage = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExceptionDetail--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ExceptionDetail(
  api.GoogleCloudDialogflowCxV3beta1ExceptionDetail o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ExceptionDetail++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExceptionDetail < 3) {
    unittest.expect(o.errorMessage!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExceptionDetail--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1VariantsHistory> buildUnnamed43() =>
    [
      buildGoogleCloudDialogflowCxV3beta1VariantsHistory(),
      buildGoogleCloudDialogflowCxV3beta1VariantsHistory(),
    ];

void checkUnnamed43(
  core.List<api.GoogleCloudDialogflowCxV3beta1VariantsHistory> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1VariantsHistory(o[0]);
  checkGoogleCloudDialogflowCxV3beta1VariantsHistory(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Experiment = 0;
api.GoogleCloudDialogflowCxV3beta1Experiment
buildGoogleCloudDialogflowCxV3beta1Experiment() {
  final o = api.GoogleCloudDialogflowCxV3beta1Experiment();
  buildCounterGoogleCloudDialogflowCxV3beta1Experiment++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Experiment < 3) {
    o.createTime = 'foo';
    o.definition = buildGoogleCloudDialogflowCxV3beta1ExperimentDefinition();
    o.description = 'foo';
    o.displayName = 'foo';
    o.endTime = 'foo';
    o.experimentLength = 'foo';
    o.lastUpdateTime = 'foo';
    o.name = 'foo';
    o.result = buildGoogleCloudDialogflowCxV3beta1ExperimentResult();
    o.rolloutConfig = buildGoogleCloudDialogflowCxV3beta1RolloutConfig();
    o.rolloutFailureReason = 'foo';
    o.rolloutState = buildGoogleCloudDialogflowCxV3beta1RolloutState();
    o.startTime = 'foo';
    o.state = 'foo';
    o.variantsHistory = buildUnnamed43();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Experiment--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Experiment(
  api.GoogleCloudDialogflowCxV3beta1Experiment o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Experiment++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Experiment < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1ExperimentDefinition(o.definition!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.experimentLength!, unittest.equals('foo'));
    unittest.expect(o.lastUpdateTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1ExperimentResult(o.result!);
    checkGoogleCloudDialogflowCxV3beta1RolloutConfig(o.rolloutConfig!);
    unittest.expect(o.rolloutFailureReason!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1RolloutState(o.rolloutState!);
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed43(o.variantsHistory!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Experiment--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ExperimentDefinition = 0;
api.GoogleCloudDialogflowCxV3beta1ExperimentDefinition
buildGoogleCloudDialogflowCxV3beta1ExperimentDefinition() {
  final o = api.GoogleCloudDialogflowCxV3beta1ExperimentDefinition();
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentDefinition++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExperimentDefinition < 3) {
    o.condition = 'foo';
    o.versionVariants = buildGoogleCloudDialogflowCxV3beta1VersionVariants();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentDefinition--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ExperimentDefinition(
  api.GoogleCloudDialogflowCxV3beta1ExperimentDefinition o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentDefinition++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExperimentDefinition < 3) {
    unittest.expect(o.condition!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1VersionVariants(o.versionVariants!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentDefinition--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics>
buildUnnamed44() => [
  buildGoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics(),
  buildGoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics(),
];

void checkUnnamed44(
  core.List<api.GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResult = 0;
api.GoogleCloudDialogflowCxV3beta1ExperimentResult
buildGoogleCloudDialogflowCxV3beta1ExperimentResult() {
  final o = api.GoogleCloudDialogflowCxV3beta1ExperimentResult();
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResult < 3) {
    o.lastUpdateTime = 'foo';
    o.versionMetrics = buildUnnamed44();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ExperimentResult(
  api.GoogleCloudDialogflowCxV3beta1ExperimentResult o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResult < 3) {
    unittest.expect(o.lastUpdateTime!, unittest.equals('foo'));
    checkUnnamed44(o.versionMetrics!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResult--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval =
    0;
api.GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval
buildGoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval();
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval <
      3) {
    o.confidenceLevel = 42.0;
    o.lowerBound = 42.0;
    o.ratio = 42.0;
    o.upperBound = 42.0;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval(
  api.GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval <
      3) {
    unittest.expect(o.confidenceLevel!, unittest.equals(42.0));
    unittest.expect(o.lowerBound!, unittest.equals(42.0));
    unittest.expect(o.ratio!, unittest.equals(42.0));
    unittest.expect(o.upperBound!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultMetric = 0;
api.GoogleCloudDialogflowCxV3beta1ExperimentResultMetric
buildGoogleCloudDialogflowCxV3beta1ExperimentResultMetric() {
  final o = api.GoogleCloudDialogflowCxV3beta1ExperimentResultMetric();
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultMetric++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultMetric < 3) {
    o.confidenceInterval =
        buildGoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval();
    o.count = 42.0;
    o.countType = 'foo';
    o.ratio = 42.0;
    o.type = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultMetric--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ExperimentResultMetric(
  api.GoogleCloudDialogflowCxV3beta1ExperimentResultMetric o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultMetric++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultMetric < 3) {
    checkGoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval(
      o.confidenceInterval!,
    );
    unittest.expect(o.count!, unittest.equals(42.0));
    unittest.expect(o.countType!, unittest.equals('foo'));
    unittest.expect(o.ratio!, unittest.equals(42.0));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultMetric--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ExperimentResultMetric>
buildUnnamed45() => [
  buildGoogleCloudDialogflowCxV3beta1ExperimentResultMetric(),
  buildGoogleCloudDialogflowCxV3beta1ExperimentResultMetric(),
];

void checkUnnamed45(
  core.List<api.GoogleCloudDialogflowCxV3beta1ExperimentResultMetric> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ExperimentResultMetric(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ExperimentResultMetric(o[1]);
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics = 0;
api.GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics
buildGoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics() {
  final o = api.GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics();
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics <
      3) {
    o.metrics = buildUnnamed45();
    o.sessionCount = 42;
    o.version = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics(
  api.GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics <
      3) {
    checkUnnamed45(o.metrics!);
    unittest.expect(o.sessionCount!, unittest.equals(42));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentRequest = 0;
api.GoogleCloudDialogflowCxV3beta1ExportAgentRequest
buildGoogleCloudDialogflowCxV3beta1ExportAgentRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1ExportAgentRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentRequest < 3) {
    o.agentUri = 'foo';
    o.dataFormat = 'foo';
    o.environment = 'foo';
    o.gitDestination =
        buildGoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination();
    o.includeBigqueryExportSettings = true;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ExportAgentRequest(
  api.GoogleCloudDialogflowCxV3beta1ExportAgentRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentRequest < 3) {
    unittest.expect(o.agentUri!, unittest.equals('foo'));
    unittest.expect(o.dataFormat!, unittest.equals('foo'));
    unittest.expect(o.environment!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination(
      o.gitDestination!,
    );
    unittest.expect(o.includeBigqueryExportSettings!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentRequest--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination = 0;
api.GoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination
buildGoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination();
  buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination <
      3) {
    o.commitMessage = 'foo';
    o.trackingBranch = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination(
  api.GoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination <
      3) {
    unittest.expect(o.commitMessage!, unittest.equals('foo'));
    unittest.expect(o.trackingBranch!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination--;
}

core.List<core.String> buildUnnamed46() => ['foo', 'foo'];

void checkUnnamed46(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest = 0;
api.GoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest
buildGoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest < 3) {
    o.dataFormat = 'foo';
    o.entityTypes = buildUnnamed46();
    o.entityTypesContentInline = true;
    o.entityTypesUri = 'foo';
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest(
  api.GoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest < 3) {
    unittest.expect(o.dataFormat!, unittest.equals('foo'));
    checkUnnamed46(o.entityTypes!);
    unittest.expect(o.entityTypesContentInline!, unittest.isTrue);
    unittest.expect(o.entityTypesUri!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ExportFlowRequest = 0;
api.GoogleCloudDialogflowCxV3beta1ExportFlowRequest
buildGoogleCloudDialogflowCxV3beta1ExportFlowRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1ExportFlowRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1ExportFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportFlowRequest < 3) {
    o.flowUri = 'foo';
    o.includeReferencedFlows = true;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportFlowRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ExportFlowRequest(
  api.GoogleCloudDialogflowCxV3beta1ExportFlowRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ExportFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportFlowRequest < 3) {
    unittest.expect(o.flowUri!, unittest.equals('foo'));
    unittest.expect(o.includeReferencedFlows!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportFlowRequest--;
}

core.List<core.String> buildUnnamed47() => ['foo', 'foo'];

void checkUnnamed47(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ExportIntentsRequest = 0;
api.GoogleCloudDialogflowCxV3beta1ExportIntentsRequest
buildGoogleCloudDialogflowCxV3beta1ExportIntentsRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1ExportIntentsRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1ExportIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportIntentsRequest < 3) {
    o.dataFormat = 'foo';
    o.intents = buildUnnamed47();
    o.intentsContentInline = true;
    o.intentsUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportIntentsRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ExportIntentsRequest(
  api.GoogleCloudDialogflowCxV3beta1ExportIntentsRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ExportIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportIntentsRequest < 3) {
    unittest.expect(o.dataFormat!, unittest.equals('foo'));
    checkUnnamed47(o.intents!);
    unittest.expect(o.intentsContentInline!, unittest.isTrue);
    unittest.expect(o.intentsUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportIntentsRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ExportPlaybookRequest = 0;
api.GoogleCloudDialogflowCxV3beta1ExportPlaybookRequest
buildGoogleCloudDialogflowCxV3beta1ExportPlaybookRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1ExportPlaybookRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1ExportPlaybookRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportPlaybookRequest < 3) {
    o.dataFormat = 'foo';
    o.playbookUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportPlaybookRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ExportPlaybookRequest(
  api.GoogleCloudDialogflowCxV3beta1ExportPlaybookRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ExportPlaybookRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportPlaybookRequest < 3) {
    unittest.expect(o.dataFormat!, unittest.equals('foo'));
    unittest.expect(o.playbookUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportPlaybookRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesRequest = 0;
api.GoogleCloudDialogflowCxV3beta1ExportTestCasesRequest
buildGoogleCloudDialogflowCxV3beta1ExportTestCasesRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1ExportTestCasesRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesRequest < 3) {
    o.dataFormat = 'foo';
    o.filter = 'foo';
    o.gcsUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ExportTestCasesRequest(
  api.GoogleCloudDialogflowCxV3beta1ExportTestCasesRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesRequest < 3) {
    unittest.expect(o.dataFormat!, unittest.equals('foo'));
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.gcsUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesRequest--;
}

core.List<core.String> buildUnnamed48() => ['foo', 'foo'];

void checkUnnamed48(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ExportToolsRequest = 0;
api.GoogleCloudDialogflowCxV3beta1ExportToolsRequest
buildGoogleCloudDialogflowCxV3beta1ExportToolsRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1ExportToolsRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1ExportToolsRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportToolsRequest < 3) {
    o.dataFormat = 'foo';
    o.tools = buildUnnamed48();
    o.toolsContentInline = true;
    o.toolsUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportToolsRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ExportToolsRequest(
  api.GoogleCloudDialogflowCxV3beta1ExportToolsRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ExportToolsRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportToolsRequest < 3) {
    unittest.expect(o.dataFormat!, unittest.equals('foo'));
    checkUnnamed48(o.tools!);
    unittest.expect(o.toolsContentInline!, unittest.isTrue);
    unittest.expect(o.toolsUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportToolsRequest--;
}

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1FilterSpecs = 0;
api.GoogleCloudDialogflowCxV3beta1FilterSpecs
buildGoogleCloudDialogflowCxV3beta1FilterSpecs() {
  final o = api.GoogleCloudDialogflowCxV3beta1FilterSpecs();
  buildCounterGoogleCloudDialogflowCxV3beta1FilterSpecs++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FilterSpecs < 3) {
    o.dataStores = buildUnnamed49();
    o.filter = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FilterSpecs--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1FilterSpecs(
  api.GoogleCloudDialogflowCxV3beta1FilterSpecs o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1FilterSpecs++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FilterSpecs < 3) {
    checkUnnamed49(o.dataStores!);
    unittest.expect(o.filter!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FilterSpecs--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1EventHandler> buildUnnamed50() => [
  buildGoogleCloudDialogflowCxV3beta1EventHandler(),
  buildGoogleCloudDialogflowCxV3beta1EventHandler(),
];

void checkUnnamed50(
  core.List<api.GoogleCloudDialogflowCxV3beta1EventHandler> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1EventHandler(o[0]);
  checkGoogleCloudDialogflowCxV3beta1EventHandler(o[1]);
}

core.List<core.String> buildUnnamed51() => ['foo', 'foo'];

void checkUnnamed51(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3beta1TransitionRoute> buildUnnamed52() =>
    [
      buildGoogleCloudDialogflowCxV3beta1TransitionRoute(),
      buildGoogleCloudDialogflowCxV3beta1TransitionRoute(),
    ];

void checkUnnamed52(
  core.List<api.GoogleCloudDialogflowCxV3beta1TransitionRoute> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1TransitionRoute(o[0]);
  checkGoogleCloudDialogflowCxV3beta1TransitionRoute(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Flow = 0;
api.GoogleCloudDialogflowCxV3beta1Flow
buildGoogleCloudDialogflowCxV3beta1Flow() {
  final o = api.GoogleCloudDialogflowCxV3beta1Flow();
  buildCounterGoogleCloudDialogflowCxV3beta1Flow++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Flow < 3) {
    o.advancedSettings = buildGoogleCloudDialogflowCxV3beta1AdvancedSettings();
    o.description = 'foo';
    o.displayName = 'foo';
    o.eventHandlers = buildUnnamed50();
    o.knowledgeConnectorSettings =
        buildGoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings();
    o.locked = true;
    o.multiLanguageSettings =
        buildGoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings();
    o.name = 'foo';
    o.nluSettings = buildGoogleCloudDialogflowCxV3beta1NluSettings();
    o.transitionRouteGroups = buildUnnamed51();
    o.transitionRoutes = buildUnnamed52();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Flow--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Flow(
  api.GoogleCloudDialogflowCxV3beta1Flow o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Flow++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Flow < 3) {
    checkGoogleCloudDialogflowCxV3beta1AdvancedSettings(o.advancedSettings!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed50(o.eventHandlers!);
    checkGoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings(
      o.knowledgeConnectorSettings!,
    );
    unittest.expect(o.locked!, unittest.isTrue);
    checkGoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings(
      o.multiLanguageSettings!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1NluSettings(o.nluSettings!);
    checkUnnamed51(o.transitionRouteGroups!);
    checkUnnamed52(o.transitionRoutes!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Flow--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1FlowImportStrategy = 0;
api.GoogleCloudDialogflowCxV3beta1FlowImportStrategy
buildGoogleCloudDialogflowCxV3beta1FlowImportStrategy() {
  final o = api.GoogleCloudDialogflowCxV3beta1FlowImportStrategy();
  buildCounterGoogleCloudDialogflowCxV3beta1FlowImportStrategy++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FlowImportStrategy < 3) {
    o.globalImportStrategy = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FlowImportStrategy--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1FlowImportStrategy(
  api.GoogleCloudDialogflowCxV3beta1FlowImportStrategy o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1FlowImportStrategy++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FlowImportStrategy < 3) {
    unittest.expect(o.globalImportStrategy!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FlowImportStrategy--;
}

core.Map<core.String, core.Object?> buildUnnamed53() => {
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

void checkUnnamed53(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed54() => {
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

void checkUnnamed54(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3beta1FlowInvocation = 0;
api.GoogleCloudDialogflowCxV3beta1FlowInvocation
buildGoogleCloudDialogflowCxV3beta1FlowInvocation() {
  final o = api.GoogleCloudDialogflowCxV3beta1FlowInvocation();
  buildCounterGoogleCloudDialogflowCxV3beta1FlowInvocation++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FlowInvocation < 3) {
    o.displayName = 'foo';
    o.flow = 'foo';
    o.flowState = 'foo';
    o.inputActionParameters = buildUnnamed53();
    o.outputActionParameters = buildUnnamed54();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FlowInvocation--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1FlowInvocation(
  api.GoogleCloudDialogflowCxV3beta1FlowInvocation o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1FlowInvocation++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FlowInvocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.flow!, unittest.equals('foo'));
    unittest.expect(o.flowState!, unittest.equals('foo'));
    checkUnnamed53(o.inputActionParameters!);
    checkUnnamed54(o.outputActionParameters!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FlowInvocation--;
}

core.List<core.String> buildUnnamed55() => ['foo', 'foo'];

void checkUnnamed55(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings =
    0;
api.GoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings
buildGoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings < 3) {
    o.enableMultiLanguageDetection = true;
    o.supportedResponseLanguageCodes = buildUnnamed55();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings(
  api.GoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings < 3) {
    unittest.expect(o.enableMultiLanguageDetection!, unittest.isTrue);
    checkUnnamed55(o.supportedResponseLanguageCodes!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings--;
}

core.Map<core.String, core.Object?> buildUnnamed56() => {
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

void checkUnnamed56(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3beta1FlowTransition = 0;
api.GoogleCloudDialogflowCxV3beta1FlowTransition
buildGoogleCloudDialogflowCxV3beta1FlowTransition() {
  final o = api.GoogleCloudDialogflowCxV3beta1FlowTransition();
  buildCounterGoogleCloudDialogflowCxV3beta1FlowTransition++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FlowTransition < 3) {
    o.displayName = 'foo';
    o.flow = 'foo';
    o.inputActionParameters = buildUnnamed56();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FlowTransition--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1FlowTransition(
  api.GoogleCloudDialogflowCxV3beta1FlowTransition o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1FlowTransition++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FlowTransition < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.flow!, unittest.equals('foo'));
    checkUnnamed56(o.inputActionParameters!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FlowTransition--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ValidationMessage>
buildUnnamed57() => [
  buildGoogleCloudDialogflowCxV3beta1ValidationMessage(),
  buildGoogleCloudDialogflowCxV3beta1ValidationMessage(),
];

void checkUnnamed57(
  core.List<api.GoogleCloudDialogflowCxV3beta1ValidationMessage> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ValidationMessage(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ValidationMessage(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1FlowValidationResult = 0;
api.GoogleCloudDialogflowCxV3beta1FlowValidationResult
buildGoogleCloudDialogflowCxV3beta1FlowValidationResult() {
  final o = api.GoogleCloudDialogflowCxV3beta1FlowValidationResult();
  buildCounterGoogleCloudDialogflowCxV3beta1FlowValidationResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FlowValidationResult < 3) {
    o.name = 'foo';
    o.updateTime = 'foo';
    o.validationMessages = buildUnnamed57();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FlowValidationResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1FlowValidationResult(
  api.GoogleCloudDialogflowCxV3beta1FlowValidationResult o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1FlowValidationResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FlowValidationResult < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkUnnamed57(o.validationMessages!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FlowValidationResult--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1FormParameter> buildUnnamed58() => [
  buildGoogleCloudDialogflowCxV3beta1FormParameter(),
  buildGoogleCloudDialogflowCxV3beta1FormParameter(),
];

void checkUnnamed58(
  core.List<api.GoogleCloudDialogflowCxV3beta1FormParameter> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1FormParameter(o[0]);
  checkGoogleCloudDialogflowCxV3beta1FormParameter(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Form = 0;
api.GoogleCloudDialogflowCxV3beta1Form
buildGoogleCloudDialogflowCxV3beta1Form() {
  final o = api.GoogleCloudDialogflowCxV3beta1Form();
  buildCounterGoogleCloudDialogflowCxV3beta1Form++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Form < 3) {
    o.parameters = buildUnnamed58();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Form--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Form(
  api.GoogleCloudDialogflowCxV3beta1Form o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Form++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Form < 3) {
    checkUnnamed58(o.parameters!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Form--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1FormParameter = 0;
api.GoogleCloudDialogflowCxV3beta1FormParameter
buildGoogleCloudDialogflowCxV3beta1FormParameter() {
  final o = api.GoogleCloudDialogflowCxV3beta1FormParameter();
  buildCounterGoogleCloudDialogflowCxV3beta1FormParameter++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FormParameter < 3) {
    o.advancedSettings = buildGoogleCloudDialogflowCxV3beta1AdvancedSettings();
    o.defaultValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
    o.displayName = 'foo';
    o.entityType = 'foo';
    o.fillBehavior =
        buildGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior();
    o.isList = true;
    o.redact = true;
    o.required = true;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FormParameter--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1FormParameter(
  api.GoogleCloudDialogflowCxV3beta1FormParameter o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1FormParameter++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FormParameter < 3) {
    checkGoogleCloudDialogflowCxV3beta1AdvancedSettings(o.advancedSettings!);
    var casted21 = (o.defaultValue!) as core.Map;
    unittest.expect(casted21, unittest.hasLength(3));
    unittest.expect(casted21['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted21['bool'], unittest.equals(true));
    unittest.expect(casted21['string'], unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.entityType!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior(
      o.fillBehavior!,
    );
    unittest.expect(o.isList!, unittest.isTrue);
    unittest.expect(o.redact!, unittest.isTrue);
    unittest.expect(o.required!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FormParameter--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1EventHandler> buildUnnamed59() => [
  buildGoogleCloudDialogflowCxV3beta1EventHandler(),
  buildGoogleCloudDialogflowCxV3beta1EventHandler(),
];

void checkUnnamed59(
  core.List<api.GoogleCloudDialogflowCxV3beta1EventHandler> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1EventHandler(o[0]);
  checkGoogleCloudDialogflowCxV3beta1EventHandler(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior =
    0;
api.GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior
buildGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior() {
  final o = api.GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior();
  buildCounterGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior < 3) {
    o.initialPromptFulfillment =
        buildGoogleCloudDialogflowCxV3beta1Fulfillment();
    o.repromptEventHandlers = buildUnnamed59();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior(
  api.GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior < 3) {
    checkGoogleCloudDialogflowCxV3beta1Fulfillment(o.initialPromptFulfillment!);
    checkUnnamed59(o.repromptEventHandlers!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1FulfillIntentRequest = 0;
api.GoogleCloudDialogflowCxV3beta1FulfillIntentRequest
buildGoogleCloudDialogflowCxV3beta1FulfillIntentRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1FulfillIntentRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillIntentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillIntentRequest < 3) {
    o.match = buildGoogleCloudDialogflowCxV3beta1Match();
    o.matchIntentRequest =
        buildGoogleCloudDialogflowCxV3beta1MatchIntentRequest();
    o.outputAudioConfig =
        buildGoogleCloudDialogflowCxV3beta1OutputAudioConfig();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillIntentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1FulfillIntentRequest(
  api.GoogleCloudDialogflowCxV3beta1FulfillIntentRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillIntentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillIntentRequest < 3) {
    checkGoogleCloudDialogflowCxV3beta1Match(o.match!);
    checkGoogleCloudDialogflowCxV3beta1MatchIntentRequest(
      o.matchIntentRequest!,
    );
    checkGoogleCloudDialogflowCxV3beta1OutputAudioConfig(o.outputAudioConfig!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillIntentRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1FulfillIntentResponse = 0;
api.GoogleCloudDialogflowCxV3beta1FulfillIntentResponse
buildGoogleCloudDialogflowCxV3beta1FulfillIntentResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1FulfillIntentResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillIntentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillIntentResponse < 3) {
    o.outputAudio = 'foo';
    o.outputAudioConfig =
        buildGoogleCloudDialogflowCxV3beta1OutputAudioConfig();
    o.queryResult = buildGoogleCloudDialogflowCxV3beta1QueryResult();
    o.responseId = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillIntentResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1FulfillIntentResponse(
  api.GoogleCloudDialogflowCxV3beta1FulfillIntentResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillIntentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillIntentResponse < 3) {
    unittest.expect(o.outputAudio!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1OutputAudioConfig(o.outputAudioConfig!);
    checkGoogleCloudDialogflowCxV3beta1QueryResult(o.queryResult!);
    unittest.expect(o.responseId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillIntentResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases>
buildUnnamed60() => [
  buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases(),
  buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases(),
];

void checkUnnamed60(
  core.List<api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases(o[0]);
  checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases(o[1]);
}

core.List<api.GoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings>
buildUnnamed61() => [
  buildGoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings(),
  buildGoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings(),
];

void checkUnnamed61(
  core.List<api.GoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings(o[0]);
  checkGoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings(o[1]);
}

core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage> buildUnnamed62() =>
    [
      buildGoogleCloudDialogflowCxV3beta1ResponseMessage(),
      buildGoogleCloudDialogflowCxV3beta1ResponseMessage(),
    ];

void checkUnnamed62(
  core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(o[1]);
}

core.List<api.GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction>
buildUnnamed63() => [
  buildGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction(),
  buildGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction(),
];

void checkUnnamed63(
  core.List<api.GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction(o[0]);
  checkGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Fulfillment = 0;
api.GoogleCloudDialogflowCxV3beta1Fulfillment
buildGoogleCloudDialogflowCxV3beta1Fulfillment() {
  final o = api.GoogleCloudDialogflowCxV3beta1Fulfillment();
  buildCounterGoogleCloudDialogflowCxV3beta1Fulfillment++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Fulfillment < 3) {
    o.advancedSettings = buildGoogleCloudDialogflowCxV3beta1AdvancedSettings();
    o.conditionalCases = buildUnnamed60();
    o.enableGenerativeFallback = true;
    o.generators = buildUnnamed61();
    o.messages = buildUnnamed62();
    o.returnPartialResponses = true;
    o.setParameterActions = buildUnnamed63();
    o.tag = 'foo';
    o.webhook = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Fulfillment--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Fulfillment(
  api.GoogleCloudDialogflowCxV3beta1Fulfillment o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Fulfillment++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Fulfillment < 3) {
    checkGoogleCloudDialogflowCxV3beta1AdvancedSettings(o.advancedSettings!);
    checkUnnamed60(o.conditionalCases!);
    unittest.expect(o.enableGenerativeFallback!, unittest.isTrue);
    checkUnnamed61(o.generators!);
    checkUnnamed62(o.messages!);
    unittest.expect(o.returnPartialResponses!, unittest.isTrue);
    checkUnnamed63(o.setParameterActions!);
    unittest.expect(o.tag!, unittest.equals('foo'));
    unittest.expect(o.webhook!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Fulfillment--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase>
buildUnnamed64() => [
  buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase(),
  buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase(),
];

void checkUnnamed64(
  core.List<api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase(o[0]);
  checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases =
    0;
api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases
buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases() {
  final o = api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases();
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases <
      3) {
    o.cases = buildUnnamed64();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases(
  api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases <
      3) {
    checkUnnamed64(o.cases!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases--;
}

core.List<
  api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent
>
buildUnnamed65() => [
  buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent(),
  buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent(),
];

void checkUnnamed65(
  core.List<
    api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent(
    o[0],
  );
  checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent(
    o[1],
  );
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase = 0;
api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase
buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase() {
  final o = api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase();
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase <
      3) {
    o.caseContent = buildUnnamed65();
    o.condition = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase(
  api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase <
      3) {
    checkUnnamed65(o.caseContent!);
    unittest.expect(o.condition!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent =
    0;
api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent
buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent();
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent <
      3) {
    o.additionalCases =
        buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases();
    o.message = buildGoogleCloudDialogflowCxV3beta1ResponseMessage();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent--;
  return o;
}

void
checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent(
  api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent
  o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent <
      3) {
    checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases(
      o.additionalCases!,
    );
    checkGoogleCloudDialogflowCxV3beta1ResponseMessage(o.message!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent--;
}

core.Map<core.String, core.String> buildUnnamed66() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed66(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings = 0;
api.GoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings
buildGoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings <
      3) {
    o.generator = 'foo';
    o.inputParameters = buildUnnamed66();
    o.outputParameter = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings(
  api.GoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings <
      3) {
    unittest.expect(o.generator!, unittest.equals('foo'));
    checkUnnamed66(o.inputParameters!);
    unittest.expect(o.outputParameter!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction = 0;
api.GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction
buildGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction() {
  final o = api.GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction();
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction <
      3) {
    o.parameter = 'foo';
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction(
  api.GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction <
      3) {
    unittest.expect(o.parameter!, unittest.equals('foo'));
    var casted22 = (o.value!) as core.Map;
    unittest.expect(casted22, unittest.hasLength(3));
    unittest.expect(casted22['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted22['bool'], unittest.equals(true));
    unittest.expect(casted22['string'], unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1GcsDestination = 0;
api.GoogleCloudDialogflowCxV3beta1GcsDestination
buildGoogleCloudDialogflowCxV3beta1GcsDestination() {
  final o = api.GoogleCloudDialogflowCxV3beta1GcsDestination();
  buildCounterGoogleCloudDialogflowCxV3beta1GcsDestination++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1GcsDestination < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1GcsDestination--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1GcsDestination(
  api.GoogleCloudDialogflowCxV3beta1GcsDestination o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1GcsDestination++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1GcsDestination < 3) {
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1GcsDestination--;
}

core.List<core.String> buildUnnamed67() => ['foo', 'foo'];

void checkUnnamed67(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1GenerativeInfo = 0;
api.GoogleCloudDialogflowCxV3beta1GenerativeInfo
buildGoogleCloudDialogflowCxV3beta1GenerativeInfo() {
  final o = api.GoogleCloudDialogflowCxV3beta1GenerativeInfo();
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1GenerativeInfo < 3) {
    o.actionTracingInfo = buildGoogleCloudDialogflowCxV3beta1Example();
    o.currentPlaybooks = buildUnnamed67();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1GenerativeInfo(
  api.GoogleCloudDialogflowCxV3beta1GenerativeInfo o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1GenerativeInfo < 3) {
    checkGoogleCloudDialogflowCxV3beta1Example(o.actionTracingInfo!);
    checkUnnamed67(o.currentPlaybooks!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeInfo--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettings = 0;
api.GoogleCloudDialogflowCxV3beta1GenerativeSettings
buildGoogleCloudDialogflowCxV3beta1GenerativeSettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1GenerativeSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettings < 3) {
    o.fallbackSettings =
        buildGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings();
    o.generativeSafetySettings =
        buildGoogleCloudDialogflowCxV3beta1SafetySettings();
    o.knowledgeConnectorSettings =
        buildGoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings();
    o.languageCode = 'foo';
    o.llmModelSettings = buildGoogleCloudDialogflowCxV3beta1LlmModelSettings();
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1GenerativeSettings(
  api.GoogleCloudDialogflowCxV3beta1GenerativeSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettings < 3) {
    checkGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings(
      o.fallbackSettings!,
    );
    checkGoogleCloudDialogflowCxV3beta1SafetySettings(
      o.generativeSafetySettings!,
    );
    checkGoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings(
      o.knowledgeConnectorSettings!,
    );
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1LlmModelSettings(o.llmModelSettings!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettings--;
}

core.List<
  api.GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate
>
buildUnnamed68() => [
  buildGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate(),
  buildGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate(),
];

void checkUnnamed68(
  core.List<
    api.GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate(
    o[0],
  );
  checkGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate(
    o[1],
  );
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings =
    0;
api.GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings
buildGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings <
      3) {
    o.promptTemplates = buildUnnamed68();
    o.selectedPrompt = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings(
  api.GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings <
      3) {
    checkUnnamed68(o.promptTemplates!);
    unittest.expect(o.selectedPrompt!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate =
    0;
api.GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate
buildGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate();
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate <
      3) {
    o.displayName = 'foo';
    o.frozen = true;
    o.promptText = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate--;
  return o;
}

void
checkGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate(
  api.GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate
  o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate <
      3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.frozen!, unittest.isTrue);
    unittest.expect(o.promptText!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings =
    0;
api.GoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings
buildGoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings <
      3) {
    o.agent = 'foo';
    o.agentIdentity = 'foo';
    o.agentScope = 'foo';
    o.business = 'foo';
    o.businessDescription = 'foo';
    o.disableDataStoreFallback = true;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings--;
  return o;
}

void
checkGoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings(
  api.GoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings
  o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings <
      3) {
    unittest.expect(o.agent!, unittest.equals('foo'));
    unittest.expect(o.agentIdentity!, unittest.equals('foo'));
    unittest.expect(o.agentScope!, unittest.equals('foo'));
    unittest.expect(o.business!, unittest.equals('foo'));
    unittest.expect(o.businessDescription!, unittest.equals('foo'));
    unittest.expect(o.disableDataStoreFallback!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1GeneratorPlaceholder>
buildUnnamed69() => [
  buildGoogleCloudDialogflowCxV3beta1GeneratorPlaceholder(),
  buildGoogleCloudDialogflowCxV3beta1GeneratorPlaceholder(),
];

void checkUnnamed69(
  core.List<api.GoogleCloudDialogflowCxV3beta1GeneratorPlaceholder> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1GeneratorPlaceholder(o[0]);
  checkGoogleCloudDialogflowCxV3beta1GeneratorPlaceholder(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Generator = 0;
api.GoogleCloudDialogflowCxV3beta1Generator
buildGoogleCloudDialogflowCxV3beta1Generator() {
  final o = api.GoogleCloudDialogflowCxV3beta1Generator();
  buildCounterGoogleCloudDialogflowCxV3beta1Generator++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Generator < 3) {
    o.displayName = 'foo';
    o.llmModelSettings = buildGoogleCloudDialogflowCxV3beta1LlmModelSettings();
    o.modelParameter =
        buildGoogleCloudDialogflowCxV3beta1GeneratorModelParameter();
    o.name = 'foo';
    o.placeholders = buildUnnamed69();
    o.promptText = buildGoogleCloudDialogflowCxV3beta1Phrase();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Generator--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Generator(
  api.GoogleCloudDialogflowCxV3beta1Generator o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Generator++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Generator < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1LlmModelSettings(o.llmModelSettings!);
    checkGoogleCloudDialogflowCxV3beta1GeneratorModelParameter(
      o.modelParameter!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed69(o.placeholders!);
    checkGoogleCloudDialogflowCxV3beta1Phrase(o.promptText!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Generator--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1GeneratorModelParameter = 0;
api.GoogleCloudDialogflowCxV3beta1GeneratorModelParameter
buildGoogleCloudDialogflowCxV3beta1GeneratorModelParameter() {
  final o = api.GoogleCloudDialogflowCxV3beta1GeneratorModelParameter();
  buildCounterGoogleCloudDialogflowCxV3beta1GeneratorModelParameter++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1GeneratorModelParameter < 3) {
    o.maxDecodeSteps = 42;
    o.temperature = 42.0;
    o.topK = 42;
    o.topP = 42.0;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1GeneratorModelParameter--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1GeneratorModelParameter(
  api.GoogleCloudDialogflowCxV3beta1GeneratorModelParameter o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1GeneratorModelParameter++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1GeneratorModelParameter < 3) {
    unittest.expect(o.maxDecodeSteps!, unittest.equals(42));
    unittest.expect(o.temperature!, unittest.equals(42.0));
    unittest.expect(o.topK!, unittest.equals(42));
    unittest.expect(o.topP!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1GeneratorModelParameter--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1GeneratorPlaceholder = 0;
api.GoogleCloudDialogflowCxV3beta1GeneratorPlaceholder
buildGoogleCloudDialogflowCxV3beta1GeneratorPlaceholder() {
  final o = api.GoogleCloudDialogflowCxV3beta1GeneratorPlaceholder();
  buildCounterGoogleCloudDialogflowCxV3beta1GeneratorPlaceholder++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1GeneratorPlaceholder < 3) {
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1GeneratorPlaceholder--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1GeneratorPlaceholder(
  api.GoogleCloudDialogflowCxV3beta1GeneratorPlaceholder o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1GeneratorPlaceholder++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1GeneratorPlaceholder < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1GeneratorPlaceholder--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Handler = 0;
api.GoogleCloudDialogflowCxV3beta1Handler
buildGoogleCloudDialogflowCxV3beta1Handler() {
  final o = api.GoogleCloudDialogflowCxV3beta1Handler();
  buildCounterGoogleCloudDialogflowCxV3beta1Handler++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Handler < 3) {
    o.eventHandler = buildGoogleCloudDialogflowCxV3beta1HandlerEventHandler();
    o.lifecycleHandler =
        buildGoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Handler--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Handler(
  api.GoogleCloudDialogflowCxV3beta1Handler o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Handler++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Handler < 3) {
    checkGoogleCloudDialogflowCxV3beta1HandlerEventHandler(o.eventHandler!);
    checkGoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler(
      o.lifecycleHandler!,
    );
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Handler--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1HandlerEventHandler = 0;
api.GoogleCloudDialogflowCxV3beta1HandlerEventHandler
buildGoogleCloudDialogflowCxV3beta1HandlerEventHandler() {
  final o = api.GoogleCloudDialogflowCxV3beta1HandlerEventHandler();
  buildCounterGoogleCloudDialogflowCxV3beta1HandlerEventHandler++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1HandlerEventHandler < 3) {
    o.condition = 'foo';
    o.event = 'foo';
    o.fulfillment = buildGoogleCloudDialogflowCxV3beta1Fulfillment();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1HandlerEventHandler--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1HandlerEventHandler(
  api.GoogleCloudDialogflowCxV3beta1HandlerEventHandler o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1HandlerEventHandler++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1HandlerEventHandler < 3) {
    unittest.expect(o.condition!, unittest.equals('foo'));
    unittest.expect(o.event!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1Fulfillment(o.fulfillment!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1HandlerEventHandler--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler = 0;
api.GoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler
buildGoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler() {
  final o = api.GoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler();
  buildCounterGoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler < 3) {
    o.condition = 'foo';
    o.fulfillment = buildGoogleCloudDialogflowCxV3beta1Fulfillment();
    o.lifecycleStage = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler(
  api.GoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler < 3) {
    unittest.expect(o.condition!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1Fulfillment(o.fulfillment!);
    unittest.expect(o.lifecycleStage!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest = 0;
api.GoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest
buildGoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest < 3) {
    o.entityTypesContent = buildGoogleCloudDialogflowCxV3beta1InlineSource();
    o.entityTypesUri = 'foo';
    o.mergeOption = 'foo';
    o.targetEntityType = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest(
  api.GoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest < 3) {
    checkGoogleCloudDialogflowCxV3beta1InlineSource(o.entityTypesContent!);
    unittest.expect(o.entityTypesUri!, unittest.equals('foo'));
    unittest.expect(o.mergeOption!, unittest.equals('foo'));
    unittest.expect(o.targetEntityType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ImportFlowRequest = 0;
api.GoogleCloudDialogflowCxV3beta1ImportFlowRequest
buildGoogleCloudDialogflowCxV3beta1ImportFlowRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1ImportFlowRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1ImportFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportFlowRequest < 3) {
    o.flowContent = 'foo';
    o.flowImportStrategy =
        buildGoogleCloudDialogflowCxV3beta1FlowImportStrategy();
    o.flowUri = 'foo';
    o.importOption = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportFlowRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ImportFlowRequest(
  api.GoogleCloudDialogflowCxV3beta1ImportFlowRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ImportFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportFlowRequest < 3) {
    unittest.expect(o.flowContent!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1FlowImportStrategy(
      o.flowImportStrategy!,
    );
    unittest.expect(o.flowUri!, unittest.equals('foo'));
    unittest.expect(o.importOption!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportFlowRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ImportIntentsRequest = 0;
api.GoogleCloudDialogflowCxV3beta1ImportIntentsRequest
buildGoogleCloudDialogflowCxV3beta1ImportIntentsRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1ImportIntentsRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1ImportIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportIntentsRequest < 3) {
    o.intentsContent = buildGoogleCloudDialogflowCxV3beta1InlineSource();
    o.intentsUri = 'foo';
    o.mergeOption = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportIntentsRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ImportIntentsRequest(
  api.GoogleCloudDialogflowCxV3beta1ImportIntentsRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ImportIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportIntentsRequest < 3) {
    checkGoogleCloudDialogflowCxV3beta1InlineSource(o.intentsContent!);
    unittest.expect(o.intentsUri!, unittest.equals('foo'));
    unittest.expect(o.mergeOption!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportIntentsRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ImportPlaybookRequest = 0;
api.GoogleCloudDialogflowCxV3beta1ImportPlaybookRequest
buildGoogleCloudDialogflowCxV3beta1ImportPlaybookRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1ImportPlaybookRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1ImportPlaybookRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportPlaybookRequest < 3) {
    o.importStrategy =
        buildGoogleCloudDialogflowCxV3beta1PlaybookImportStrategy();
    o.playbookContent = 'foo';
    o.playbookUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportPlaybookRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ImportPlaybookRequest(
  api.GoogleCloudDialogflowCxV3beta1ImportPlaybookRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ImportPlaybookRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportPlaybookRequest < 3) {
    checkGoogleCloudDialogflowCxV3beta1PlaybookImportStrategy(
      o.importStrategy!,
    );
    unittest.expect(o.playbookContent!, unittest.equals('foo'));
    unittest.expect(o.playbookUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportPlaybookRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesRequest = 0;
api.GoogleCloudDialogflowCxV3beta1ImportTestCasesRequest
buildGoogleCloudDialogflowCxV3beta1ImportTestCasesRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1ImportTestCasesRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesRequest < 3) {
    o.content = 'foo';
    o.gcsUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ImportTestCasesRequest(
  api.GoogleCloudDialogflowCxV3beta1ImportTestCasesRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesRequest < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
    unittest.expect(o.gcsUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1InlineSchema = 0;
api.GoogleCloudDialogflowCxV3beta1InlineSchema
buildGoogleCloudDialogflowCxV3beta1InlineSchema() {
  final o = api.GoogleCloudDialogflowCxV3beta1InlineSchema();
  buildCounterGoogleCloudDialogflowCxV3beta1InlineSchema++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1InlineSchema < 3) {
    o.items = buildGoogleCloudDialogflowCxV3beta1TypeSchema();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1InlineSchema--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1InlineSchema(
  api.GoogleCloudDialogflowCxV3beta1InlineSchema o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1InlineSchema++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1InlineSchema < 3) {
    checkGoogleCloudDialogflowCxV3beta1TypeSchema(o.items!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1InlineSchema--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1InlineSource = 0;
api.GoogleCloudDialogflowCxV3beta1InlineSource
buildGoogleCloudDialogflowCxV3beta1InlineSource() {
  final o = api.GoogleCloudDialogflowCxV3beta1InlineSource();
  buildCounterGoogleCloudDialogflowCxV3beta1InlineSource++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1InlineSource < 3) {
    o.content = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1InlineSource--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1InlineSource(
  api.GoogleCloudDialogflowCxV3beta1InlineSource o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1InlineSource++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1InlineSource < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1InlineSource--;
}

core.List<core.String> buildUnnamed70() => ['foo', 'foo'];

void checkUnnamed70(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1InputAudioConfig = 0;
api.GoogleCloudDialogflowCxV3beta1InputAudioConfig
buildGoogleCloudDialogflowCxV3beta1InputAudioConfig() {
  final o = api.GoogleCloudDialogflowCxV3beta1InputAudioConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1InputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1InputAudioConfig < 3) {
    o.audioEncoding = 'foo';
    o.bargeInConfig = buildGoogleCloudDialogflowCxV3beta1BargeInConfig();
    o.enableWordInfo = true;
    o.model = 'foo';
    o.modelVariant = 'foo';
    o.optOutConformerModelMigration = true;
    o.phraseHints = buildUnnamed70();
    o.sampleRateHertz = 42;
    o.singleUtterance = true;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1InputAudioConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1InputAudioConfig(
  api.GoogleCloudDialogflowCxV3beta1InputAudioConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1InputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1InputAudioConfig < 3) {
    unittest.expect(o.audioEncoding!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1BargeInConfig(o.bargeInConfig!);
    unittest.expect(o.enableWordInfo!, unittest.isTrue);
    unittest.expect(o.model!, unittest.equals('foo'));
    unittest.expect(o.modelVariant!, unittest.equals('foo'));
    unittest.expect(o.optOutConformerModelMigration!, unittest.isTrue);
    checkUnnamed70(o.phraseHints!);
    unittest.expect(o.sampleRateHertz!, unittest.equals(42));
    unittest.expect(o.singleUtterance!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1InputAudioConfig--;
}

core.Map<core.String, core.String> buildUnnamed71() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed71(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3beta1IntentParameter> buildUnnamed72() =>
    [
      buildGoogleCloudDialogflowCxV3beta1IntentParameter(),
      buildGoogleCloudDialogflowCxV3beta1IntentParameter(),
    ];

void checkUnnamed72(
  core.List<api.GoogleCloudDialogflowCxV3beta1IntentParameter> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1IntentParameter(o[0]);
  checkGoogleCloudDialogflowCxV3beta1IntentParameter(o[1]);
}

core.List<api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase>
buildUnnamed73() => [
  buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase(),
  buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase(),
];

void checkUnnamed73(
  core.List<api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase(o[0]);
  checkGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Intent = 0;
api.GoogleCloudDialogflowCxV3beta1Intent
buildGoogleCloudDialogflowCxV3beta1Intent() {
  final o = api.GoogleCloudDialogflowCxV3beta1Intent();
  buildCounterGoogleCloudDialogflowCxV3beta1Intent++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Intent < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.isFallback = true;
    o.labels = buildUnnamed71();
    o.name = 'foo';
    o.parameters = buildUnnamed72();
    o.priority = 42;
    o.trainingPhrases = buildUnnamed73();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Intent--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Intent(
  api.GoogleCloudDialogflowCxV3beta1Intent o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Intent++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Intent < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.isFallback!, unittest.isTrue);
    checkUnnamed71(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed72(o.parameters!);
    unittest.expect(o.priority!, unittest.equals(42));
    checkUnnamed73(o.trainingPhrases!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Intent--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1IntentCoverageIntent>
buildUnnamed74() => [
  buildGoogleCloudDialogflowCxV3beta1IntentCoverageIntent(),
  buildGoogleCloudDialogflowCxV3beta1IntentCoverageIntent(),
];

void checkUnnamed74(
  core.List<api.GoogleCloudDialogflowCxV3beta1IntentCoverageIntent> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1IntentCoverageIntent(o[0]);
  checkGoogleCloudDialogflowCxV3beta1IntentCoverageIntent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1IntentCoverage = 0;
api.GoogleCloudDialogflowCxV3beta1IntentCoverage
buildGoogleCloudDialogflowCxV3beta1IntentCoverage() {
  final o = api.GoogleCloudDialogflowCxV3beta1IntentCoverage();
  buildCounterGoogleCloudDialogflowCxV3beta1IntentCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1IntentCoverage < 3) {
    o.coverageScore = 42.0;
    o.intents = buildUnnamed74();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1IntentCoverage--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1IntentCoverage(
  api.GoogleCloudDialogflowCxV3beta1IntentCoverage o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1IntentCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1IntentCoverage < 3) {
    unittest.expect(o.coverageScore!, unittest.equals(42.0));
    checkUnnamed74(o.intents!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1IntentCoverage--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1IntentCoverageIntent = 0;
api.GoogleCloudDialogflowCxV3beta1IntentCoverageIntent
buildGoogleCloudDialogflowCxV3beta1IntentCoverageIntent() {
  final o = api.GoogleCloudDialogflowCxV3beta1IntentCoverageIntent();
  buildCounterGoogleCloudDialogflowCxV3beta1IntentCoverageIntent++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1IntentCoverageIntent < 3) {
    o.covered = true;
    o.intent = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1IntentCoverageIntent--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1IntentCoverageIntent(
  api.GoogleCloudDialogflowCxV3beta1IntentCoverageIntent o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1IntentCoverageIntent++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1IntentCoverageIntent < 3) {
    unittest.expect(o.covered!, unittest.isTrue);
    unittest.expect(o.intent!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1IntentCoverageIntent--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1IntentInput = 0;
api.GoogleCloudDialogflowCxV3beta1IntentInput
buildGoogleCloudDialogflowCxV3beta1IntentInput() {
  final o = api.GoogleCloudDialogflowCxV3beta1IntentInput();
  buildCounterGoogleCloudDialogflowCxV3beta1IntentInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1IntentInput < 3) {
    o.intent = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1IntentInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1IntentInput(
  api.GoogleCloudDialogflowCxV3beta1IntentInput o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1IntentInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1IntentInput < 3) {
    unittest.expect(o.intent!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1IntentInput--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1IntentParameter = 0;
api.GoogleCloudDialogflowCxV3beta1IntentParameter
buildGoogleCloudDialogflowCxV3beta1IntentParameter() {
  final o = api.GoogleCloudDialogflowCxV3beta1IntentParameter();
  buildCounterGoogleCloudDialogflowCxV3beta1IntentParameter++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1IntentParameter < 3) {
    o.entityType = 'foo';
    o.id = 'foo';
    o.isList = true;
    o.redact = true;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1IntentParameter--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1IntentParameter(
  api.GoogleCloudDialogflowCxV3beta1IntentParameter o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1IntentParameter++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1IntentParameter < 3) {
    unittest.expect(o.entityType!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.isList!, unittest.isTrue);
    unittest.expect(o.redact!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1IntentParameter--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart>
buildUnnamed75() => [
  buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart(),
  buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart(),
];

void checkUnnamed75(
  core.List<api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart(o[0]);
  checkGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase = 0;
api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase
buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase() {
  final o = api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase();
  buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase < 3) {
    o.id = 'foo';
    o.parts = buildUnnamed75();
    o.repeatCount = 42;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase(
  api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed75(o.parts!);
    unittest.expect(o.repeatCount!, unittest.equals(42));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart = 0;
api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart
buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart() {
  final o = api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart();
  buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart < 3) {
    o.parameterId = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart(
  api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart < 3) {
    unittest.expect(o.parameterId!, unittest.equals('foo'));
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1DataStoreConnection>
buildUnnamed76() => [
  buildGoogleCloudDialogflowCxV3beta1DataStoreConnection(),
  buildGoogleCloudDialogflowCxV3beta1DataStoreConnection(),
];

void checkUnnamed76(
  core.List<api.GoogleCloudDialogflowCxV3beta1DataStoreConnection> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1DataStoreConnection(o[0]);
  checkGoogleCloudDialogflowCxV3beta1DataStoreConnection(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings =
    0;
api.GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings
buildGoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings <
      3) {
    o.dataStoreConnections = buildUnnamed76();
    o.enabled = true;
    o.targetFlow = 'foo';
    o.targetPage = 'foo';
    o.triggerFulfillment = buildGoogleCloudDialogflowCxV3beta1Fulfillment();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings(
  api.GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings <
      3) {
    checkUnnamed76(o.dataStoreConnections!);
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.targetFlow!, unittest.equals('foo'));
    unittest.expect(o.targetPage!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1Fulfillment(o.triggerFulfillment!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Agent> buildUnnamed77() => [
  buildGoogleCloudDialogflowCxV3beta1Agent(),
  buildGoogleCloudDialogflowCxV3beta1Agent(),
];

void checkUnnamed77(core.List<api.GoogleCloudDialogflowCxV3beta1Agent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Agent(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Agent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ListAgentsResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListAgentsResponse
buildGoogleCloudDialogflowCxV3beta1ListAgentsResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListAgentsResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListAgentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListAgentsResponse < 3) {
    o.agents = buildUnnamed77();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListAgentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListAgentsResponse(
  api.GoogleCloudDialogflowCxV3beta1ListAgentsResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListAgentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListAgentsResponse < 3) {
    checkUnnamed77(o.agents!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListAgentsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Changelog> buildUnnamed78() => [
  buildGoogleCloudDialogflowCxV3beta1Changelog(),
  buildGoogleCloudDialogflowCxV3beta1Changelog(),
];

void checkUnnamed78(core.List<api.GoogleCloudDialogflowCxV3beta1Changelog> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Changelog(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Changelog(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ListChangelogsResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListChangelogsResponse
buildGoogleCloudDialogflowCxV3beta1ListChangelogsResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListChangelogsResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListChangelogsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListChangelogsResponse < 3) {
    o.changelogs = buildUnnamed78();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListChangelogsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListChangelogsResponse(
  api.GoogleCloudDialogflowCxV3beta1ListChangelogsResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListChangelogsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListChangelogsResponse < 3) {
    checkUnnamed78(o.changelogs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListChangelogsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ContinuousTestResult>
buildUnnamed79() => [
  buildGoogleCloudDialogflowCxV3beta1ContinuousTestResult(),
  buildGoogleCloudDialogflowCxV3beta1ContinuousTestResult(),
];

void checkUnnamed79(
  core.List<api.GoogleCloudDialogflowCxV3beta1ContinuousTestResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ContinuousTestResult(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ContinuousTestResult(o[1]);
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse
buildGoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse <
      3) {
    o.continuousTestResults = buildUnnamed79();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse(
  api.GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse <
      3) {
    checkUnnamed79(o.continuousTestResults!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Conversation> buildUnnamed80() => [
  buildGoogleCloudDialogflowCxV3beta1Conversation(),
  buildGoogleCloudDialogflowCxV3beta1Conversation(),
];

void checkUnnamed80(
  core.List<api.GoogleCloudDialogflowCxV3beta1Conversation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Conversation(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Conversation(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ListConversationsResponse =
    0;
api.GoogleCloudDialogflowCxV3beta1ListConversationsResponse
buildGoogleCloudDialogflowCxV3beta1ListConversationsResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListConversationsResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListConversationsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListConversationsResponse < 3) {
    o.conversations = buildUnnamed80();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListConversationsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListConversationsResponse(
  api.GoogleCloudDialogflowCxV3beta1ListConversationsResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListConversationsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListConversationsResponse < 3) {
    checkUnnamed80(o.conversations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListConversationsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Deployment> buildUnnamed81() => [
  buildGoogleCloudDialogflowCxV3beta1Deployment(),
  buildGoogleCloudDialogflowCxV3beta1Deployment(),
];

void checkUnnamed81(core.List<api.GoogleCloudDialogflowCxV3beta1Deployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Deployment(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Deployment(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ListDeploymentsResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse
buildGoogleCloudDialogflowCxV3beta1ListDeploymentsResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListDeploymentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListDeploymentsResponse < 3) {
    o.deployments = buildUnnamed81();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListDeploymentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListDeploymentsResponse(
  api.GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListDeploymentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListDeploymentsResponse < 3) {
    checkUnnamed81(o.deployments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListDeploymentsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1EntityType> buildUnnamed82() => [
  buildGoogleCloudDialogflowCxV3beta1EntityType(),
  buildGoogleCloudDialogflowCxV3beta1EntityType(),
];

void checkUnnamed82(core.List<api.GoogleCloudDialogflowCxV3beta1EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1EntityType(o[0]);
  checkGoogleCloudDialogflowCxV3beta1EntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ListEntityTypesResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse
buildGoogleCloudDialogflowCxV3beta1ListEntityTypesResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListEntityTypesResponse < 3) {
    o.entityTypes = buildUnnamed82();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListEntityTypesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListEntityTypesResponse(
  api.GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListEntityTypesResponse < 3) {
    checkUnnamed82(o.entityTypes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListEntityTypesResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Environment> buildUnnamed83() => [
  buildGoogleCloudDialogflowCxV3beta1Environment(),
  buildGoogleCloudDialogflowCxV3beta1Environment(),
];

void checkUnnamed83(
  core.List<api.GoogleCloudDialogflowCxV3beta1Environment> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Environment(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Environment(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse
buildGoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse < 3) {
    o.environments = buildUnnamed83();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse(
  api.GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse < 3) {
    checkUnnamed83(o.environments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Example> buildUnnamed84() => [
  buildGoogleCloudDialogflowCxV3beta1Example(),
  buildGoogleCloudDialogflowCxV3beta1Example(),
];

void checkUnnamed84(core.List<api.GoogleCloudDialogflowCxV3beta1Example> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Example(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Example(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ListExamplesResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListExamplesResponse
buildGoogleCloudDialogflowCxV3beta1ListExamplesResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListExamplesResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListExamplesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListExamplesResponse < 3) {
    o.examples = buildUnnamed84();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListExamplesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListExamplesResponse(
  api.GoogleCloudDialogflowCxV3beta1ListExamplesResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListExamplesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListExamplesResponse < 3) {
    checkUnnamed84(o.examples!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListExamplesResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Experiment> buildUnnamed85() => [
  buildGoogleCloudDialogflowCxV3beta1Experiment(),
  buildGoogleCloudDialogflowCxV3beta1Experiment(),
];

void checkUnnamed85(core.List<api.GoogleCloudDialogflowCxV3beta1Experiment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Experiment(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Experiment(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ListExperimentsResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListExperimentsResponse
buildGoogleCloudDialogflowCxV3beta1ListExperimentsResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListExperimentsResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListExperimentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListExperimentsResponse < 3) {
    o.experiments = buildUnnamed85();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListExperimentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListExperimentsResponse(
  api.GoogleCloudDialogflowCxV3beta1ListExperimentsResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListExperimentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListExperimentsResponse < 3) {
    checkUnnamed85(o.experiments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListExperimentsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Flow> buildUnnamed86() => [
  buildGoogleCloudDialogflowCxV3beta1Flow(),
  buildGoogleCloudDialogflowCxV3beta1Flow(),
];

void checkUnnamed86(core.List<api.GoogleCloudDialogflowCxV3beta1Flow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Flow(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Flow(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ListFlowsResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListFlowsResponse
buildGoogleCloudDialogflowCxV3beta1ListFlowsResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListFlowsResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListFlowsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListFlowsResponse < 3) {
    o.flows = buildUnnamed86();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListFlowsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListFlowsResponse(
  api.GoogleCloudDialogflowCxV3beta1ListFlowsResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListFlowsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListFlowsResponse < 3) {
    checkUnnamed86(o.flows!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListFlowsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Generator> buildUnnamed87() => [
  buildGoogleCloudDialogflowCxV3beta1Generator(),
  buildGoogleCloudDialogflowCxV3beta1Generator(),
];

void checkUnnamed87(core.List<api.GoogleCloudDialogflowCxV3beta1Generator> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Generator(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Generator(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ListGeneratorsResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse
buildGoogleCloudDialogflowCxV3beta1ListGeneratorsResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListGeneratorsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListGeneratorsResponse < 3) {
    o.generators = buildUnnamed87();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListGeneratorsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListGeneratorsResponse(
  api.GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListGeneratorsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListGeneratorsResponse < 3) {
    checkUnnamed87(o.generators!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListGeneratorsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Intent> buildUnnamed88() => [
  buildGoogleCloudDialogflowCxV3beta1Intent(),
  buildGoogleCloudDialogflowCxV3beta1Intent(),
];

void checkUnnamed88(core.List<api.GoogleCloudDialogflowCxV3beta1Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Intent(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ListIntentsResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListIntentsResponse
buildGoogleCloudDialogflowCxV3beta1ListIntentsResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListIntentsResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListIntentsResponse < 3) {
    o.intents = buildUnnamed88();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListIntentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListIntentsResponse(
  api.GoogleCloudDialogflowCxV3beta1ListIntentsResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListIntentsResponse < 3) {
    checkUnnamed88(o.intents!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListIntentsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Page> buildUnnamed89() => [
  buildGoogleCloudDialogflowCxV3beta1Page(),
  buildGoogleCloudDialogflowCxV3beta1Page(),
];

void checkUnnamed89(core.List<api.GoogleCloudDialogflowCxV3beta1Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Page(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Page(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ListPagesResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListPagesResponse
buildGoogleCloudDialogflowCxV3beta1ListPagesResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListPagesResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListPagesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListPagesResponse < 3) {
    o.nextPageToken = 'foo';
    o.pages = buildUnnamed89();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListPagesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListPagesResponse(
  api.GoogleCloudDialogflowCxV3beta1ListPagesResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListPagesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListPagesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed89(o.pages!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListPagesResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1PlaybookVersion> buildUnnamed90() =>
    [
      buildGoogleCloudDialogflowCxV3beta1PlaybookVersion(),
      buildGoogleCloudDialogflowCxV3beta1PlaybookVersion(),
    ];

void checkUnnamed90(
  core.List<api.GoogleCloudDialogflowCxV3beta1PlaybookVersion> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1PlaybookVersion(o[0]);
  checkGoogleCloudDialogflowCxV3beta1PlaybookVersion(o[1]);
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse
buildGoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.playbookVersions = buildUnnamed90();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse(
  api.GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed90(o.playbookVersions!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Playbook> buildUnnamed91() => [
  buildGoogleCloudDialogflowCxV3beta1Playbook(),
  buildGoogleCloudDialogflowCxV3beta1Playbook(),
];

void checkUnnamed91(core.List<api.GoogleCloudDialogflowCxV3beta1Playbook> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Playbook(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Playbook(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ListPlaybooksResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse
buildGoogleCloudDialogflowCxV3beta1ListPlaybooksResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListPlaybooksResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListPlaybooksResponse < 3) {
    o.nextPageToken = 'foo';
    o.playbooks = buildUnnamed91();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListPlaybooksResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListPlaybooksResponse(
  api.GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListPlaybooksResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListPlaybooksResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed91(o.playbooks!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListPlaybooksResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1SecuritySettings>
buildUnnamed92() => [
  buildGoogleCloudDialogflowCxV3beta1SecuritySettings(),
  buildGoogleCloudDialogflowCxV3beta1SecuritySettings(),
];

void checkUnnamed92(
  core.List<api.GoogleCloudDialogflowCxV3beta1SecuritySettings> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1SecuritySettings(o[0]);
  checkGoogleCloudDialogflowCxV3beta1SecuritySettings(o[1]);
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse
buildGoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.securitySettings = buildUnnamed92();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse(
  api.GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed92(o.securitySettings!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1SessionEntityType>
buildUnnamed93() => [
  buildGoogleCloudDialogflowCxV3beta1SessionEntityType(),
  buildGoogleCloudDialogflowCxV3beta1SessionEntityType(),
];

void checkUnnamed93(
  core.List<api.GoogleCloudDialogflowCxV3beta1SessionEntityType> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1SessionEntityType(o[0]);
  checkGoogleCloudDialogflowCxV3beta1SessionEntityType(o[1]);
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse
buildGoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse <
      3) {
    o.nextPageToken = 'foo';
    o.sessionEntityTypes = buildUnnamed93();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse(
  api.GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed93(o.sessionEntityTypes!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1TestCaseResult> buildUnnamed94() =>
    [
      buildGoogleCloudDialogflowCxV3beta1TestCaseResult(),
      buildGoogleCloudDialogflowCxV3beta1TestCaseResult(),
    ];

void checkUnnamed94(
  core.List<api.GoogleCloudDialogflowCxV3beta1TestCaseResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1TestCaseResult(o[0]);
  checkGoogleCloudDialogflowCxV3beta1TestCaseResult(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse =
    0;
api.GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse
buildGoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.testCaseResults = buildUnnamed94();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse(
  api.GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed94(o.testCaseResults!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1TestCase> buildUnnamed95() => [
  buildGoogleCloudDialogflowCxV3beta1TestCase(),
  buildGoogleCloudDialogflowCxV3beta1TestCase(),
];

void checkUnnamed95(core.List<api.GoogleCloudDialogflowCxV3beta1TestCase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1TestCase(o[0]);
  checkGoogleCloudDialogflowCxV3beta1TestCase(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ListTestCasesResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListTestCasesResponse
buildGoogleCloudDialogflowCxV3beta1ListTestCasesResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListTestCasesResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListTestCasesResponse < 3) {
    o.nextPageToken = 'foo';
    o.testCases = buildUnnamed95();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListTestCasesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListTestCasesResponse(
  api.GoogleCloudDialogflowCxV3beta1ListTestCasesResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListTestCasesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed95(o.testCases!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListTestCasesResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ToolVersion> buildUnnamed96() => [
  buildGoogleCloudDialogflowCxV3beta1ToolVersion(),
  buildGoogleCloudDialogflowCxV3beta1ToolVersion(),
];

void checkUnnamed96(
  core.List<api.GoogleCloudDialogflowCxV3beta1ToolVersion> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ToolVersion(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ToolVersion(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ListToolVersionsResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse
buildGoogleCloudDialogflowCxV3beta1ListToolVersionsResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListToolVersionsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListToolVersionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.toolVersions = buildUnnamed96();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListToolVersionsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListToolVersionsResponse(
  api.GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListToolVersionsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListToolVersionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed96(o.toolVersions!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListToolVersionsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Tool> buildUnnamed97() => [
  buildGoogleCloudDialogflowCxV3beta1Tool(),
  buildGoogleCloudDialogflowCxV3beta1Tool(),
];

void checkUnnamed97(core.List<api.GoogleCloudDialogflowCxV3beta1Tool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Tool(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Tool(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ListToolsResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListToolsResponse
buildGoogleCloudDialogflowCxV3beta1ListToolsResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListToolsResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListToolsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListToolsResponse < 3) {
    o.nextPageToken = 'foo';
    o.tools = buildUnnamed97();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListToolsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListToolsResponse(
  api.GoogleCloudDialogflowCxV3beta1ListToolsResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListToolsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListToolsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed97(o.tools!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListToolsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroup>
buildUnnamed98() => [
  buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(),
  buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(),
];

void checkUnnamed98(
  core.List<api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroup> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(o[0]);
  checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(o[1]);
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse
buildGoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.transitionRouteGroups = buildUnnamed98();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse(
  api.GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed98(o.transitionRouteGroups!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Version> buildUnnamed99() => [
  buildGoogleCloudDialogflowCxV3beta1Version(),
  buildGoogleCloudDialogflowCxV3beta1Version(),
];

void checkUnnamed99(core.List<api.GoogleCloudDialogflowCxV3beta1Version> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Version(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Version(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ListVersionsResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListVersionsResponse
buildGoogleCloudDialogflowCxV3beta1ListVersionsResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListVersionsResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListVersionsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListVersionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.versions = buildUnnamed99();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListVersionsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListVersionsResponse(
  api.GoogleCloudDialogflowCxV3beta1ListVersionsResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListVersionsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListVersionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed99(o.versions!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListVersionsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Webhook> buildUnnamed100() => [
  buildGoogleCloudDialogflowCxV3beta1Webhook(),
  buildGoogleCloudDialogflowCxV3beta1Webhook(),
];

void checkUnnamed100(core.List<api.GoogleCloudDialogflowCxV3beta1Webhook> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Webhook(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Webhook(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ListWebhooksResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ListWebhooksResponse
buildGoogleCloudDialogflowCxV3beta1ListWebhooksResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ListWebhooksResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ListWebhooksResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListWebhooksResponse < 3) {
    o.nextPageToken = 'foo';
    o.webhooks = buildUnnamed100();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListWebhooksResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ListWebhooksResponse(
  api.GoogleCloudDialogflowCxV3beta1ListWebhooksResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ListWebhooksResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ListWebhooksResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed100(o.webhooks!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ListWebhooksResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample>
buildUnnamed101() => [
  buildGoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample(),
  buildGoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample(),
];

void checkUnnamed101(
  core.List<api.GoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample(o[0]);
  checkGoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1LlmCall = 0;
api.GoogleCloudDialogflowCxV3beta1LlmCall
buildGoogleCloudDialogflowCxV3beta1LlmCall() {
  final o = api.GoogleCloudDialogflowCxV3beta1LlmCall();
  buildCounterGoogleCloudDialogflowCxV3beta1LlmCall++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1LlmCall < 3) {
    o.model = 'foo';
    o.retrievedExamples = buildUnnamed101();
    o.temperature = 42.0;
    o.tokenCount = buildGoogleCloudDialogflowCxV3beta1LlmCallTokenCount();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1LlmCall--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1LlmCall(
  api.GoogleCloudDialogflowCxV3beta1LlmCall o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1LlmCall++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1LlmCall < 3) {
    unittest.expect(o.model!, unittest.equals('foo'));
    checkUnnamed101(o.retrievedExamples!);
    unittest.expect(o.temperature!, unittest.equals(42.0));
    checkGoogleCloudDialogflowCxV3beta1LlmCallTokenCount(o.tokenCount!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1LlmCall--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample = 0;
api.GoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample
buildGoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample() {
  final o = api.GoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample();
  buildCounterGoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample < 3) {
    o.exampleDisplayName = 'foo';
    o.exampleId = 'foo';
    o.matchedRetrievalLabel = 'foo';
    o.retrievalStrategy = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample(
  api.GoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample < 3) {
    unittest.expect(o.exampleDisplayName!, unittest.equals('foo'));
    unittest.expect(o.exampleId!, unittest.equals('foo'));
    unittest.expect(o.matchedRetrievalLabel!, unittest.equals('foo'));
    unittest.expect(o.retrievalStrategy!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1LlmCallTokenCount = 0;
api.GoogleCloudDialogflowCxV3beta1LlmCallTokenCount
buildGoogleCloudDialogflowCxV3beta1LlmCallTokenCount() {
  final o = api.GoogleCloudDialogflowCxV3beta1LlmCallTokenCount();
  buildCounterGoogleCloudDialogflowCxV3beta1LlmCallTokenCount++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1LlmCallTokenCount < 3) {
    o.conversationContextTokenCount = 'foo';
    o.exampleTokenCount = 'foo';
    o.totalInputTokenCount = 'foo';
    o.totalOutputTokenCount = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1LlmCallTokenCount--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1LlmCallTokenCount(
  api.GoogleCloudDialogflowCxV3beta1LlmCallTokenCount o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1LlmCallTokenCount++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1LlmCallTokenCount < 3) {
    unittest.expect(o.conversationContextTokenCount!, unittest.equals('foo'));
    unittest.expect(o.exampleTokenCount!, unittest.equals('foo'));
    unittest.expect(o.totalInputTokenCount!, unittest.equals('foo'));
    unittest.expect(o.totalOutputTokenCount!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1LlmCallTokenCount--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1LlmModelSettings = 0;
api.GoogleCloudDialogflowCxV3beta1LlmModelSettings
buildGoogleCloudDialogflowCxV3beta1LlmModelSettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1LlmModelSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1LlmModelSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1LlmModelSettings < 3) {
    o.model = 'foo';
    o.promptText = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1LlmModelSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1LlmModelSettings(
  api.GoogleCloudDialogflowCxV3beta1LlmModelSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1LlmModelSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1LlmModelSettings < 3) {
    unittest.expect(o.model!, unittest.equals('foo'));
    unittest.expect(o.promptText!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1LlmModelSettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1LoadVersionRequest = 0;
api.GoogleCloudDialogflowCxV3beta1LoadVersionRequest
buildGoogleCloudDialogflowCxV3beta1LoadVersionRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1LoadVersionRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1LoadVersionRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1LoadVersionRequest < 3) {
    o.allowOverrideAgentResources = true;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1LoadVersionRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1LoadVersionRequest(
  api.GoogleCloudDialogflowCxV3beta1LoadVersionRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1LoadVersionRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1LoadVersionRequest < 3) {
    unittest.expect(o.allowOverrideAgentResources!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1LoadVersionRequest--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Environment> buildUnnamed102() => [
  buildGoogleCloudDialogflowCxV3beta1Environment(),
  buildGoogleCloudDialogflowCxV3beta1Environment(),
];

void checkUnnamed102(
  core.List<api.GoogleCloudDialogflowCxV3beta1Environment> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Environment(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Environment(o[1]);
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse = 0;
api.GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse
buildGoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse <
      3) {
    o.environments = buildUnnamed102();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse(
  api.GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse <
      3) {
    checkUnnamed102(o.environments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed103() => {
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

void checkUnnamed103(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted23 = (o['x']!) as core.Map;
  unittest.expect(casted23, unittest.hasLength(3));
  unittest.expect(casted23['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted23['bool'], unittest.equals(true));
  unittest.expect(casted23['string'], unittest.equals('foo'));
  var casted24 = (o['y']!) as core.Map;
  unittest.expect(casted24, unittest.hasLength(3));
  unittest.expect(casted24['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted24['bool'], unittest.equals(true));
  unittest.expect(casted24['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Match = 0;
api.GoogleCloudDialogflowCxV3beta1Match
buildGoogleCloudDialogflowCxV3beta1Match() {
  final o = api.GoogleCloudDialogflowCxV3beta1Match();
  buildCounterGoogleCloudDialogflowCxV3beta1Match++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Match < 3) {
    o.confidence = 42.0;
    o.event = 'foo';
    o.intent = buildGoogleCloudDialogflowCxV3beta1Intent();
    o.matchType = 'foo';
    o.parameters = buildUnnamed103();
    o.resolvedInput = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Match--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Match(
  api.GoogleCloudDialogflowCxV3beta1Match o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Match++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Match < 3) {
    unittest.expect(o.confidence!, unittest.equals(42.0));
    unittest.expect(o.event!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1Intent(o.intent!);
    unittest.expect(o.matchType!, unittest.equals('foo'));
    checkUnnamed103(o.parameters!);
    unittest.expect(o.resolvedInput!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Match--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1MatchIntentRequest = 0;
api.GoogleCloudDialogflowCxV3beta1MatchIntentRequest
buildGoogleCloudDialogflowCxV3beta1MatchIntentRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1MatchIntentRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1MatchIntentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1MatchIntentRequest < 3) {
    o.persistParameterChanges = true;
    o.queryInput = buildGoogleCloudDialogflowCxV3beta1QueryInput();
    o.queryParams = buildGoogleCloudDialogflowCxV3beta1QueryParameters();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1MatchIntentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1MatchIntentRequest(
  api.GoogleCloudDialogflowCxV3beta1MatchIntentRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1MatchIntentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1MatchIntentRequest < 3) {
    unittest.expect(o.persistParameterChanges!, unittest.isTrue);
    checkGoogleCloudDialogflowCxV3beta1QueryInput(o.queryInput!);
    checkGoogleCloudDialogflowCxV3beta1QueryParameters(o.queryParams!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1MatchIntentRequest--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Match> buildUnnamed104() => [
  buildGoogleCloudDialogflowCxV3beta1Match(),
  buildGoogleCloudDialogflowCxV3beta1Match(),
];

void checkUnnamed104(core.List<api.GoogleCloudDialogflowCxV3beta1Match> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Match(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Match(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1MatchIntentResponse = 0;
api.GoogleCloudDialogflowCxV3beta1MatchIntentResponse
buildGoogleCloudDialogflowCxV3beta1MatchIntentResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1MatchIntentResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1MatchIntentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1MatchIntentResponse < 3) {
    o.currentPage = buildGoogleCloudDialogflowCxV3beta1Page();
    o.matches = buildUnnamed104();
    o.text = 'foo';
    o.transcript = 'foo';
    o.triggerEvent = 'foo';
    o.triggerIntent = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1MatchIntentResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1MatchIntentResponse(
  api.GoogleCloudDialogflowCxV3beta1MatchIntentResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1MatchIntentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1MatchIntentResponse < 3) {
    checkGoogleCloudDialogflowCxV3beta1Page(o.currentPage!);
    checkUnnamed104(o.matches!);
    unittest.expect(o.text!, unittest.equals('foo'));
    unittest.expect(o.transcript!, unittest.equals('foo'));
    unittest.expect(o.triggerEvent!, unittest.equals('foo'));
    unittest.expect(o.triggerIntent!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1MatchIntentResponse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1NamedMetric = 0;
api.GoogleCloudDialogflowCxV3beta1NamedMetric
buildGoogleCloudDialogflowCxV3beta1NamedMetric() {
  final o = api.GoogleCloudDialogflowCxV3beta1NamedMetric();
  buildCounterGoogleCloudDialogflowCxV3beta1NamedMetric++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1NamedMetric < 3) {
    o.name = 'foo';
    o.unit = 'foo';
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
  }
  buildCounterGoogleCloudDialogflowCxV3beta1NamedMetric--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1NamedMetric(
  api.GoogleCloudDialogflowCxV3beta1NamedMetric o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1NamedMetric++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1NamedMetric < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.unit!, unittest.equals('foo'));
    var casted25 = (o.value!) as core.Map;
    unittest.expect(casted25, unittest.hasLength(3));
    unittest.expect(casted25['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted25['bool'], unittest.equals(true));
    unittest.expect(casted25['string'], unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1NamedMetric--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1NluSettings = 0;
api.GoogleCloudDialogflowCxV3beta1NluSettings
buildGoogleCloudDialogflowCxV3beta1NluSettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1NluSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1NluSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1NluSettings < 3) {
    o.classificationThreshold = 42.0;
    o.modelTrainingMode = 'foo';
    o.modelType = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1NluSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1NluSettings(
  api.GoogleCloudDialogflowCxV3beta1NluSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1NluSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1NluSettings < 3) {
    unittest.expect(o.classificationThreshold!, unittest.equals(42.0));
    unittest.expect(o.modelTrainingMode!, unittest.equals('foo'));
    unittest.expect(o.modelType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1NluSettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1OutputAudioConfig = 0;
api.GoogleCloudDialogflowCxV3beta1OutputAudioConfig
buildGoogleCloudDialogflowCxV3beta1OutputAudioConfig() {
  final o = api.GoogleCloudDialogflowCxV3beta1OutputAudioConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1OutputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1OutputAudioConfig < 3) {
    o.audioEncoding = 'foo';
    o.sampleRateHertz = 42;
    o.synthesizeSpeechConfig =
        buildGoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1OutputAudioConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1OutputAudioConfig(
  api.GoogleCloudDialogflowCxV3beta1OutputAudioConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1OutputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1OutputAudioConfig < 3) {
    unittest.expect(o.audioEncoding!, unittest.equals('foo'));
    unittest.expect(o.sampleRateHertz!, unittest.equals(42));
    checkGoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig(
      o.synthesizeSpeechConfig!,
    );
  }
  buildCounterGoogleCloudDialogflowCxV3beta1OutputAudioConfig--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1EventHandler> buildUnnamed105() => [
  buildGoogleCloudDialogflowCxV3beta1EventHandler(),
  buildGoogleCloudDialogflowCxV3beta1EventHandler(),
];

void checkUnnamed105(
  core.List<api.GoogleCloudDialogflowCxV3beta1EventHandler> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1EventHandler(o[0]);
  checkGoogleCloudDialogflowCxV3beta1EventHandler(o[1]);
}

core.List<core.String> buildUnnamed106() => ['foo', 'foo'];

void checkUnnamed106(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3beta1TransitionRoute>
buildUnnamed107() => [
  buildGoogleCloudDialogflowCxV3beta1TransitionRoute(),
  buildGoogleCloudDialogflowCxV3beta1TransitionRoute(),
];

void checkUnnamed107(
  core.List<api.GoogleCloudDialogflowCxV3beta1TransitionRoute> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1TransitionRoute(o[0]);
  checkGoogleCloudDialogflowCxV3beta1TransitionRoute(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Page = 0;
api.GoogleCloudDialogflowCxV3beta1Page
buildGoogleCloudDialogflowCxV3beta1Page() {
  final o = api.GoogleCloudDialogflowCxV3beta1Page();
  buildCounterGoogleCloudDialogflowCxV3beta1Page++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Page < 3) {
    o.advancedSettings = buildGoogleCloudDialogflowCxV3beta1AdvancedSettings();
    o.description = 'foo';
    o.displayName = 'foo';
    o.entryFulfillment = buildGoogleCloudDialogflowCxV3beta1Fulfillment();
    o.eventHandlers = buildUnnamed105();
    o.form = buildGoogleCloudDialogflowCxV3beta1Form();
    o.knowledgeConnectorSettings =
        buildGoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings();
    o.name = 'foo';
    o.transitionRouteGroups = buildUnnamed106();
    o.transitionRoutes = buildUnnamed107();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Page--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Page(
  api.GoogleCloudDialogflowCxV3beta1Page o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Page++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Page < 3) {
    checkGoogleCloudDialogflowCxV3beta1AdvancedSettings(o.advancedSettings!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1Fulfillment(o.entryFulfillment!);
    checkUnnamed105(o.eventHandlers!);
    checkGoogleCloudDialogflowCxV3beta1Form(o.form!);
    checkGoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings(
      o.knowledgeConnectorSettings!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed106(o.transitionRouteGroups!);
    checkUnnamed107(o.transitionRoutes!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Page--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ParameterDefinition = 0;
api.GoogleCloudDialogflowCxV3beta1ParameterDefinition
buildGoogleCloudDialogflowCxV3beta1ParameterDefinition() {
  final o = api.GoogleCloudDialogflowCxV3beta1ParameterDefinition();
  buildCounterGoogleCloudDialogflowCxV3beta1ParameterDefinition++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ParameterDefinition < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.type = 'foo';
    o.typeSchema = buildGoogleCloudDialogflowCxV3beta1TypeSchema();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ParameterDefinition--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ParameterDefinition(
  api.GoogleCloudDialogflowCxV3beta1ParameterDefinition o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ParameterDefinition++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ParameterDefinition < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1TypeSchema(o.typeSchema!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ParameterDefinition--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Phrase = 0;
api.GoogleCloudDialogflowCxV3beta1Phrase
buildGoogleCloudDialogflowCxV3beta1Phrase() {
  final o = api.GoogleCloudDialogflowCxV3beta1Phrase();
  buildCounterGoogleCloudDialogflowCxV3beta1Phrase++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Phrase < 3) {
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Phrase--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Phrase(
  api.GoogleCloudDialogflowCxV3beta1Phrase o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Phrase++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Phrase < 3) {
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Phrase--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Handler> buildUnnamed108() => [
  buildGoogleCloudDialogflowCxV3beta1Handler(),
  buildGoogleCloudDialogflowCxV3beta1Handler(),
];

void checkUnnamed108(core.List<api.GoogleCloudDialogflowCxV3beta1Handler> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Handler(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Handler(o[1]);
}

core.List<api.GoogleCloudDialogflowCxV3beta1ParameterDefinition>
buildUnnamed109() => [
  buildGoogleCloudDialogflowCxV3beta1ParameterDefinition(),
  buildGoogleCloudDialogflowCxV3beta1ParameterDefinition(),
];

void checkUnnamed109(
  core.List<api.GoogleCloudDialogflowCxV3beta1ParameterDefinition> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ParameterDefinition(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ParameterDefinition(o[1]);
}

core.List<api.GoogleCloudDialogflowCxV3beta1ParameterDefinition>
buildUnnamed110() => [
  buildGoogleCloudDialogflowCxV3beta1ParameterDefinition(),
  buildGoogleCloudDialogflowCxV3beta1ParameterDefinition(),
];

void checkUnnamed110(
  core.List<api.GoogleCloudDialogflowCxV3beta1ParameterDefinition> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ParameterDefinition(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ParameterDefinition(o[1]);
}

core.List<core.String> buildUnnamed111() => ['foo', 'foo'];

void checkUnnamed111(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed112() => ['foo', 'foo'];

void checkUnnamed112(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed113() => ['foo', 'foo'];

void checkUnnamed113(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Playbook = 0;
api.GoogleCloudDialogflowCxV3beta1Playbook
buildGoogleCloudDialogflowCxV3beta1Playbook() {
  final o = api.GoogleCloudDialogflowCxV3beta1Playbook();
  buildCounterGoogleCloudDialogflowCxV3beta1Playbook++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Playbook < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.goal = 'foo';
    o.handlers = buildUnnamed108();
    o.inputParameterDefinitions = buildUnnamed109();
    o.instruction = buildGoogleCloudDialogflowCxV3beta1PlaybookInstruction();
    o.llmModelSettings = buildGoogleCloudDialogflowCxV3beta1LlmModelSettings();
    o.name = 'foo';
    o.outputParameterDefinitions = buildUnnamed110();
    o.playbookType = 'foo';
    o.referencedFlows = buildUnnamed111();
    o.referencedPlaybooks = buildUnnamed112();
    o.referencedTools = buildUnnamed113();
    o.speechSettings =
        buildGoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings();
    o.tokenCount = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Playbook--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Playbook(
  api.GoogleCloudDialogflowCxV3beta1Playbook o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Playbook++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Playbook < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.goal!, unittest.equals('foo'));
    checkUnnamed108(o.handlers!);
    checkUnnamed109(o.inputParameterDefinitions!);
    checkGoogleCloudDialogflowCxV3beta1PlaybookInstruction(o.instruction!);
    checkGoogleCloudDialogflowCxV3beta1LlmModelSettings(o.llmModelSettings!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed110(o.outputParameterDefinitions!);
    unittest.expect(o.playbookType!, unittest.equals('foo'));
    checkUnnamed111(o.referencedFlows!);
    checkUnnamed112(o.referencedPlaybooks!);
    checkUnnamed113(o.referencedTools!);
    checkGoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings(
      o.speechSettings!,
    );
    unittest.expect(o.tokenCount!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Playbook--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1PlaybookImportStrategy = 0;
api.GoogleCloudDialogflowCxV3beta1PlaybookImportStrategy
buildGoogleCloudDialogflowCxV3beta1PlaybookImportStrategy() {
  final o = api.GoogleCloudDialogflowCxV3beta1PlaybookImportStrategy();
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookImportStrategy++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PlaybookImportStrategy < 3) {
    o.mainPlaybookImportStrategy = 'foo';
    o.nestedResourceImportStrategy = 'foo';
    o.toolImportStrategy = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookImportStrategy--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1PlaybookImportStrategy(
  api.GoogleCloudDialogflowCxV3beta1PlaybookImportStrategy o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookImportStrategy++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PlaybookImportStrategy < 3) {
    unittest.expect(o.mainPlaybookImportStrategy!, unittest.equals('foo'));
    unittest.expect(o.nestedResourceImportStrategy!, unittest.equals('foo'));
    unittest.expect(o.toolImportStrategy!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookImportStrategy--;
}

core.Map<core.String, core.Object?> buildUnnamed114() => {
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

void checkUnnamed114(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted26 = (o['x']!) as core.Map;
  unittest.expect(casted26, unittest.hasLength(3));
  unittest.expect(casted26['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted26['bool'], unittest.equals(true));
  unittest.expect(casted26['string'], unittest.equals('foo'));
  var casted27 = (o['y']!) as core.Map;
  unittest.expect(casted27, unittest.hasLength(3));
  unittest.expect(casted27['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted27['bool'], unittest.equals(true));
  unittest.expect(casted27['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInput = 0;
api.GoogleCloudDialogflowCxV3beta1PlaybookInput
buildGoogleCloudDialogflowCxV3beta1PlaybookInput() {
  final o = api.GoogleCloudDialogflowCxV3beta1PlaybookInput();
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInput < 3) {
    o.actionParameters = buildUnnamed114();
    o.precedingConversationSummary = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1PlaybookInput(
  api.GoogleCloudDialogflowCxV3beta1PlaybookInput o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInput < 3) {
    checkUnnamed114(o.actionParameters!);
    unittest.expect(o.precedingConversationSummary!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInput--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1PlaybookStep> buildUnnamed115() => [
  buildGoogleCloudDialogflowCxV3beta1PlaybookStep(),
  buildGoogleCloudDialogflowCxV3beta1PlaybookStep(),
];

void checkUnnamed115(
  core.List<api.GoogleCloudDialogflowCxV3beta1PlaybookStep> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1PlaybookStep(o[0]);
  checkGoogleCloudDialogflowCxV3beta1PlaybookStep(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInstruction = 0;
api.GoogleCloudDialogflowCxV3beta1PlaybookInstruction
buildGoogleCloudDialogflowCxV3beta1PlaybookInstruction() {
  final o = api.GoogleCloudDialogflowCxV3beta1PlaybookInstruction();
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInstruction++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInstruction < 3) {
    o.guidelines = 'foo';
    o.steps = buildUnnamed115();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInstruction--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1PlaybookInstruction(
  api.GoogleCloudDialogflowCxV3beta1PlaybookInstruction o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInstruction++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInstruction < 3) {
    unittest.expect(o.guidelines!, unittest.equals('foo'));
    checkUnnamed115(o.steps!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInstruction--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInvocation = 0;
api.GoogleCloudDialogflowCxV3beta1PlaybookInvocation
buildGoogleCloudDialogflowCxV3beta1PlaybookInvocation() {
  final o = api.GoogleCloudDialogflowCxV3beta1PlaybookInvocation();
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInvocation++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInvocation < 3) {
    o.displayName = 'foo';
    o.playbook = 'foo';
    o.playbookInput = buildGoogleCloudDialogflowCxV3beta1PlaybookInput();
    o.playbookOutput = buildGoogleCloudDialogflowCxV3beta1PlaybookOutput();
    o.playbookState = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInvocation--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1PlaybookInvocation(
  api.GoogleCloudDialogflowCxV3beta1PlaybookInvocation o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInvocation++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInvocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.playbook!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1PlaybookInput(o.playbookInput!);
    checkGoogleCloudDialogflowCxV3beta1PlaybookOutput(o.playbookOutput!);
    unittest.expect(o.playbookState!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookInvocation--;
}

core.Map<core.String, core.Object?> buildUnnamed116() => {
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

void checkUnnamed116(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted28 = (o['x']!) as core.Map;
  unittest.expect(casted28, unittest.hasLength(3));
  unittest.expect(casted28['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted28['bool'], unittest.equals(true));
  unittest.expect(casted28['string'], unittest.equals('foo'));
  var casted29 = (o['y']!) as core.Map;
  unittest.expect(casted29, unittest.hasLength(3));
  unittest.expect(casted29['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted29['bool'], unittest.equals(true));
  unittest.expect(casted29['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1PlaybookOutput = 0;
api.GoogleCloudDialogflowCxV3beta1PlaybookOutput
buildGoogleCloudDialogflowCxV3beta1PlaybookOutput() {
  final o = api.GoogleCloudDialogflowCxV3beta1PlaybookOutput();
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookOutput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PlaybookOutput < 3) {
    o.actionParameters = buildUnnamed116();
    o.executionSummary = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookOutput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1PlaybookOutput(
  api.GoogleCloudDialogflowCxV3beta1PlaybookOutput o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookOutput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PlaybookOutput < 3) {
    checkUnnamed116(o.actionParameters!);
    unittest.expect(o.executionSummary!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookOutput--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1PlaybookStep> buildUnnamed117() => [
  buildGoogleCloudDialogflowCxV3beta1PlaybookStep(),
  buildGoogleCloudDialogflowCxV3beta1PlaybookStep(),
];

void checkUnnamed117(
  core.List<api.GoogleCloudDialogflowCxV3beta1PlaybookStep> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1PlaybookStep(o[0]);
  checkGoogleCloudDialogflowCxV3beta1PlaybookStep(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1PlaybookStep = 0;
api.GoogleCloudDialogflowCxV3beta1PlaybookStep
buildGoogleCloudDialogflowCxV3beta1PlaybookStep() {
  final o = api.GoogleCloudDialogflowCxV3beta1PlaybookStep();
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookStep++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PlaybookStep < 3) {
    o.steps = buildUnnamed117();
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookStep--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1PlaybookStep(
  api.GoogleCloudDialogflowCxV3beta1PlaybookStep o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookStep++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PlaybookStep < 3) {
    checkUnnamed117(o.steps!);
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookStep--;
}

core.Map<core.String, core.Object?> buildUnnamed118() => {
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

void checkUnnamed118(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted30 = (o['x']!) as core.Map;
  unittest.expect(casted30, unittest.hasLength(3));
  unittest.expect(casted30['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted30['bool'], unittest.equals(true));
  unittest.expect(casted30['string'], unittest.equals('foo'));
  var casted31 = (o['y']!) as core.Map;
  unittest.expect(casted31, unittest.hasLength(3));
  unittest.expect(casted31['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted31['bool'], unittest.equals(true));
  unittest.expect(casted31['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1PlaybookTransition = 0;
api.GoogleCloudDialogflowCxV3beta1PlaybookTransition
buildGoogleCloudDialogflowCxV3beta1PlaybookTransition() {
  final o = api.GoogleCloudDialogflowCxV3beta1PlaybookTransition();
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookTransition++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PlaybookTransition < 3) {
    o.displayName = 'foo';
    o.inputActionParameters = buildUnnamed118();
    o.playbook = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookTransition--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1PlaybookTransition(
  api.GoogleCloudDialogflowCxV3beta1PlaybookTransition o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookTransition++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PlaybookTransition < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed118(o.inputActionParameters!);
    unittest.expect(o.playbook!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookTransition--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1Example> buildUnnamed119() => [
  buildGoogleCloudDialogflowCxV3beta1Example(),
  buildGoogleCloudDialogflowCxV3beta1Example(),
];

void checkUnnamed119(core.List<api.GoogleCloudDialogflowCxV3beta1Example> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1Example(o[0]);
  checkGoogleCloudDialogflowCxV3beta1Example(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1PlaybookVersion = 0;
api.GoogleCloudDialogflowCxV3beta1PlaybookVersion
buildGoogleCloudDialogflowCxV3beta1PlaybookVersion() {
  final o = api.GoogleCloudDialogflowCxV3beta1PlaybookVersion();
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookVersion++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PlaybookVersion < 3) {
    o.description = 'foo';
    o.examples = buildUnnamed119();
    o.name = 'foo';
    o.playbook = buildGoogleCloudDialogflowCxV3beta1Playbook();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookVersion--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1PlaybookVersion(
  api.GoogleCloudDialogflowCxV3beta1PlaybookVersion o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookVersion++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PlaybookVersion < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed119(o.examples!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1Playbook(o.playbook!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PlaybookVersion--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1QueryInput = 0;
api.GoogleCloudDialogflowCxV3beta1QueryInput
buildGoogleCloudDialogflowCxV3beta1QueryInput() {
  final o = api.GoogleCloudDialogflowCxV3beta1QueryInput();
  buildCounterGoogleCloudDialogflowCxV3beta1QueryInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1QueryInput < 3) {
    o.audio = buildGoogleCloudDialogflowCxV3beta1AudioInput();
    o.dtmf = buildGoogleCloudDialogflowCxV3beta1DtmfInput();
    o.event = buildGoogleCloudDialogflowCxV3beta1EventInput();
    o.intent = buildGoogleCloudDialogflowCxV3beta1IntentInput();
    o.languageCode = 'foo';
    o.text = buildGoogleCloudDialogflowCxV3beta1TextInput();
    o.toolCallResult = buildGoogleCloudDialogflowCxV3beta1ToolCallResult();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1QueryInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1QueryInput(
  api.GoogleCloudDialogflowCxV3beta1QueryInput o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1QueryInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1QueryInput < 3) {
    checkGoogleCloudDialogflowCxV3beta1AudioInput(o.audio!);
    checkGoogleCloudDialogflowCxV3beta1DtmfInput(o.dtmf!);
    checkGoogleCloudDialogflowCxV3beta1EventInput(o.event!);
    checkGoogleCloudDialogflowCxV3beta1IntentInput(o.intent!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1TextInput(o.text!);
    checkGoogleCloudDialogflowCxV3beta1ToolCallResult(o.toolCallResult!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1QueryInput--;
}

core.Map<core.String, core.Object?> buildUnnamed120() => {
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

void checkUnnamed120(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted32 = (o['x']!) as core.Map;
  unittest.expect(casted32, unittest.hasLength(3));
  unittest.expect(casted32['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted32['bool'], unittest.equals(true));
  unittest.expect(casted32['string'], unittest.equals('foo'));
  var casted33 = (o['y']!) as core.Map;
  unittest.expect(casted33, unittest.hasLength(3));
  unittest.expect(casted33['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted33['bool'], unittest.equals(true));
  unittest.expect(casted33['string'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed121() => ['foo', 'foo'];

void checkUnnamed121(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed122() => {
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

void checkUnnamed122(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted34 = (o['x']!) as core.Map;
  unittest.expect(casted34, unittest.hasLength(3));
  unittest.expect(casted34['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted34['bool'], unittest.equals(true));
  unittest.expect(casted34['string'], unittest.equals('foo'));
  var casted35 = (o['y']!) as core.Map;
  unittest.expect(casted35, unittest.hasLength(3));
  unittest.expect(casted35['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted35['bool'], unittest.equals(true));
  unittest.expect(casted35['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed123() => {
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

void checkUnnamed123(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted36 = (o['x']!) as core.Map;
  unittest.expect(casted36, unittest.hasLength(3));
  unittest.expect(casted36['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted36['bool'], unittest.equals(true));
  unittest.expect(casted36['string'], unittest.equals('foo'));
  var casted37 = (o['y']!) as core.Map;
  unittest.expect(casted37, unittest.hasLength(3));
  unittest.expect(casted37['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted37['bool'], unittest.equals(true));
  unittest.expect(casted37['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3beta1SessionEntityType>
buildUnnamed124() => [
  buildGoogleCloudDialogflowCxV3beta1SessionEntityType(),
  buildGoogleCloudDialogflowCxV3beta1SessionEntityType(),
];

void checkUnnamed124(
  core.List<api.GoogleCloudDialogflowCxV3beta1SessionEntityType> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1SessionEntityType(o[0]);
  checkGoogleCloudDialogflowCxV3beta1SessionEntityType(o[1]);
}

core.Map<core.String, core.String> buildUnnamed125() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed125(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1QueryParameters = 0;
api.GoogleCloudDialogflowCxV3beta1QueryParameters
buildGoogleCloudDialogflowCxV3beta1QueryParameters() {
  final o = api.GoogleCloudDialogflowCxV3beta1QueryParameters();
  buildCounterGoogleCloudDialogflowCxV3beta1QueryParameters++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1QueryParameters < 3) {
    o.analyzeQueryTextSentiment = true;
    o.channel = 'foo';
    o.currentPage = 'foo';
    o.currentPlaybook = 'foo';
    o.disableWebhook = true;
    o.endUserMetadata = buildUnnamed120();
    o.flowVersions = buildUnnamed121();
    o.geoLocation = buildGoogleTypeLatLng();
    o.llmModelSettings = buildGoogleCloudDialogflowCxV3beta1LlmModelSettings();
    o.parameterScope = 'foo';
    o.parameters = buildUnnamed122();
    o.payload = buildUnnamed123();
    o.populateDataStoreConnectionSignals = true;
    o.searchConfig = buildGoogleCloudDialogflowCxV3beta1SearchConfig();
    o.sessionEntityTypes = buildUnnamed124();
    o.sessionTtl = 'foo';
    o.timeZone = 'foo';
    o.webhookHeaders = buildUnnamed125();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1QueryParameters--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1QueryParameters(
  api.GoogleCloudDialogflowCxV3beta1QueryParameters o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1QueryParameters++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1QueryParameters < 3) {
    unittest.expect(o.analyzeQueryTextSentiment!, unittest.isTrue);
    unittest.expect(o.channel!, unittest.equals('foo'));
    unittest.expect(o.currentPage!, unittest.equals('foo'));
    unittest.expect(o.currentPlaybook!, unittest.equals('foo'));
    unittest.expect(o.disableWebhook!, unittest.isTrue);
    checkUnnamed120(o.endUserMetadata!);
    checkUnnamed121(o.flowVersions!);
    checkGoogleTypeLatLng(o.geoLocation!);
    checkGoogleCloudDialogflowCxV3beta1LlmModelSettings(o.llmModelSettings!);
    unittest.expect(o.parameterScope!, unittest.equals('foo'));
    checkUnnamed122(o.parameters!);
    checkUnnamed123(o.payload!);
    unittest.expect(o.populateDataStoreConnectionSignals!, unittest.isTrue);
    checkGoogleCloudDialogflowCxV3beta1SearchConfig(o.searchConfig!);
    checkUnnamed124(o.sessionEntityTypes!);
    unittest.expect(o.sessionTtl!, unittest.equals('foo'));
    unittest.expect(o.timeZone!, unittest.equals('foo'));
    checkUnnamed125(o.webhookHeaders!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1QueryParameters--;
}

core.Map<core.String, core.Object?> buildUnnamed126() => {
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

void checkUnnamed126(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted38 = (o['x']!) as core.Map;
  unittest.expect(casted38, unittest.hasLength(3));
  unittest.expect(casted38['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted38['bool'], unittest.equals(true));
  unittest.expect(casted38['string'], unittest.equals('foo'));
  var casted39 = (o['y']!) as core.Map;
  unittest.expect(casted39, unittest.hasLength(3));
  unittest.expect(casted39['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted39['bool'], unittest.equals(true));
  unittest.expect(casted39['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed127() => {
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

void checkUnnamed127(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted40 = (o['x']!) as core.Map;
  unittest.expect(casted40, unittest.hasLength(3));
  unittest.expect(casted40['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted40['bool'], unittest.equals(true));
  unittest.expect(casted40['string'], unittest.equals('foo'));
  var casted41 = (o['y']!) as core.Map;
  unittest.expect(casted41, unittest.hasLength(3));
  unittest.expect(casted41['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted41['bool'], unittest.equals(true));
  unittest.expect(casted41['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage>
buildUnnamed128() => [
  buildGoogleCloudDialogflowCxV3beta1ResponseMessage(),
  buildGoogleCloudDialogflowCxV3beta1ResponseMessage(),
];

void checkUnnamed128(
  core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(o[1]);
}

core.List<core.String> buildUnnamed129() => ['foo', 'foo'];

void checkUnnamed129(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed130() => ['foo', 'foo'];

void checkUnnamed130(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed131() => ['foo', 'foo'];

void checkUnnamed131(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed132() => {
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

void checkUnnamed132(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted42 = (o['x']!) as core.Map;
  unittest.expect(casted42, unittest.hasLength(3));
  unittest.expect(casted42['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted42['bool'], unittest.equals(true));
  unittest.expect(casted42['string'], unittest.equals('foo'));
  var casted43 = (o['y']!) as core.Map;
  unittest.expect(casted43, unittest.hasLength(3));
  unittest.expect(casted43['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted43['bool'], unittest.equals(true));
  unittest.expect(casted43['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed133() => [
  buildUnnamed132(),
  buildUnnamed132(),
];

void checkUnnamed133(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed132(o[0]);
  checkUnnamed132(o[1]);
}

core.List<api.GoogleRpcStatus> buildUnnamed134() => [
  buildGoogleRpcStatus(),
  buildGoogleRpcStatus(),
];

void checkUnnamed134(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.List<core.String> buildUnnamed135() => ['foo', 'foo'];

void checkUnnamed135(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1QueryResult = 0;
api.GoogleCloudDialogflowCxV3beta1QueryResult
buildGoogleCloudDialogflowCxV3beta1QueryResult() {
  final o = api.GoogleCloudDialogflowCxV3beta1QueryResult();
  buildCounterGoogleCloudDialogflowCxV3beta1QueryResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1QueryResult < 3) {
    o.advancedSettings = buildGoogleCloudDialogflowCxV3beta1AdvancedSettings();
    o.allowAnswerFeedback = true;
    o.currentFlow = buildGoogleCloudDialogflowCxV3beta1Flow();
    o.currentPage = buildGoogleCloudDialogflowCxV3beta1Page();
    o.dataStoreConnectionSignals =
        buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals();
    o.diagnosticInfo = buildUnnamed126();
    o.dtmf = buildGoogleCloudDialogflowCxV3beta1DtmfInput();
    o.generativeInfo = buildGoogleCloudDialogflowCxV3beta1GenerativeInfo();
    o.intent = buildGoogleCloudDialogflowCxV3beta1Intent();
    o.intentDetectionConfidence = 42.0;
    o.languageCode = 'foo';
    o.match = buildGoogleCloudDialogflowCxV3beta1Match();
    o.parameters = buildUnnamed127();
    o.responseMessages = buildUnnamed128();
    o.sentimentAnalysisResult =
        buildGoogleCloudDialogflowCxV3beta1SentimentAnalysisResult();
    o.text = 'foo';
    o.transcript = 'foo';
    o.triggerEvent = 'foo';
    o.triggerIntent = 'foo';
    o.webhookDisplayNames = buildUnnamed129();
    o.webhookIds = buildUnnamed130();
    o.webhookLatencies = buildUnnamed131();
    o.webhookPayloads = buildUnnamed133();
    o.webhookStatuses = buildUnnamed134();
    o.webhookTags = buildUnnamed135();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1QueryResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1QueryResult(
  api.GoogleCloudDialogflowCxV3beta1QueryResult o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1QueryResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1QueryResult < 3) {
    checkGoogleCloudDialogflowCxV3beta1AdvancedSettings(o.advancedSettings!);
    unittest.expect(o.allowAnswerFeedback!, unittest.isTrue);
    checkGoogleCloudDialogflowCxV3beta1Flow(o.currentFlow!);
    checkGoogleCloudDialogflowCxV3beta1Page(o.currentPage!);
    checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals(
      o.dataStoreConnectionSignals!,
    );
    checkUnnamed126(o.diagnosticInfo!);
    checkGoogleCloudDialogflowCxV3beta1DtmfInput(o.dtmf!);
    checkGoogleCloudDialogflowCxV3beta1GenerativeInfo(o.generativeInfo!);
    checkGoogleCloudDialogflowCxV3beta1Intent(o.intent!);
    unittest.expect(o.intentDetectionConfidence!, unittest.equals(42.0));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1Match(o.match!);
    checkUnnamed127(o.parameters!);
    checkUnnamed128(o.responseMessages!);
    checkGoogleCloudDialogflowCxV3beta1SentimentAnalysisResult(
      o.sentimentAnalysisResult!,
    );
    unittest.expect(o.text!, unittest.equals('foo'));
    unittest.expect(o.transcript!, unittest.equals('foo'));
    unittest.expect(o.triggerEvent!, unittest.equals('foo'));
    unittest.expect(o.triggerIntent!, unittest.equals('foo'));
    checkUnnamed129(o.webhookDisplayNames!);
    checkUnnamed130(o.webhookIds!);
    checkUnnamed131(o.webhookLatencies!);
    checkUnnamed133(o.webhookPayloads!);
    checkUnnamed134(o.webhookStatuses!);
    checkUnnamed135(o.webhookTags!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1QueryResult--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ResourceName = 0;
api.GoogleCloudDialogflowCxV3beta1ResourceName
buildGoogleCloudDialogflowCxV3beta1ResourceName() {
  final o = api.GoogleCloudDialogflowCxV3beta1ResourceName();
  buildCounterGoogleCloudDialogflowCxV3beta1ResourceName++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResourceName < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResourceName--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResourceName(
  api.GoogleCloudDialogflowCxV3beta1ResourceName o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResourceName++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResourceName < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResourceName--;
}

core.Map<core.String, core.Object?> buildUnnamed136() => {
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

void checkUnnamed136(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted44 = (o['x']!) as core.Map;
  unittest.expect(casted44, unittest.hasLength(3));
  unittest.expect(casted44['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted44['bool'], unittest.equals(true));
  unittest.expect(casted44['string'], unittest.equals('foo'));
  var casted45 = (o['y']!) as core.Map;
  unittest.expect(casted45, unittest.hasLength(3));
  unittest.expect(casted45['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted45['bool'], unittest.equals(true));
  unittest.expect(casted45['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage = 0;
api.GoogleCloudDialogflowCxV3beta1ResponseMessage
buildGoogleCloudDialogflowCxV3beta1ResponseMessage() {
  final o = api.GoogleCloudDialogflowCxV3beta1ResponseMessage();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage < 3) {
    o.channel = 'foo';
    o.conversationSuccess =
        buildGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess();
    o.endInteraction =
        buildGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction();
    o.knowledgeInfoCard =
        buildGoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard();
    o.liveAgentHandoff =
        buildGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff();
    o.mixedAudio =
        buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio();
    o.outputAudioText =
        buildGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText();
    o.payload = buildUnnamed136();
    o.playAudio = buildGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio();
    o.telephonyTransferCall =
        buildGoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall();
    o.text = buildGoogleCloudDialogflowCxV3beta1ResponseMessageText();
    o.toolCall = buildGoogleCloudDialogflowCxV3beta1ToolCall();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessage(
  api.GoogleCloudDialogflowCxV3beta1ResponseMessage o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage < 3) {
    unittest.expect(o.channel!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess(
      o.conversationSuccess!,
    );
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction(
      o.endInteraction!,
    );
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard(
      o.knowledgeInfoCard!,
    );
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff(
      o.liveAgentHandoff!,
    );
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio(o.mixedAudio!);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText(
      o.outputAudioText!,
    );
    checkUnnamed136(o.payload!);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio(o.playAudio!);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall(
      o.telephonyTransferCall!,
    );
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageText(o.text!);
    checkGoogleCloudDialogflowCxV3beta1ToolCall(o.toolCall!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage--;
}

core.Map<core.String, core.Object?> buildUnnamed137() => {
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

void checkUnnamed137(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted46 = (o['x']!) as core.Map;
  unittest.expect(casted46, unittest.hasLength(3));
  unittest.expect(casted46['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted46['bool'], unittest.equals(true));
  unittest.expect(casted46['string'], unittest.equals('foo'));
  var casted47 = (o['y']!) as core.Map;
  unittest.expect(casted47, unittest.hasLength(3));
  unittest.expect(casted47['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted47['bool'], unittest.equals(true));
  unittest.expect(casted47['string'], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess =
    0;
api.GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess
buildGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess <
      3) {
    o.metadata = buildUnnamed137();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess(
  api.GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess <
      3) {
    checkUnnamed137(o.metadata!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction = 0;
api.GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction
buildGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction() {
  final o = api.GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction <
      3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction(
  api.GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction <
      3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard = 0;
api.GoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard
buildGoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard <
      3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard(
  api.GoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard <
      3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard--;
}

core.Map<core.String, core.Object?> buildUnnamed138() => {
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

void checkUnnamed138(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted48 = (o['x']!) as core.Map;
  unittest.expect(casted48, unittest.hasLength(3));
  unittest.expect(casted48['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted48['bool'], unittest.equals(true));
  unittest.expect(casted48['string'], unittest.equals('foo'));
  var casted49 = (o['y']!) as core.Map;
  unittest.expect(casted49, unittest.hasLength(3));
  unittest.expect(casted49['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted49['bool'], unittest.equals(true));
  unittest.expect(casted49['string'], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff = 0;
api.GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff
buildGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff() {
  final o = api.GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff <
      3) {
    o.metadata = buildUnnamed138();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff(
  api.GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff <
      3) {
    checkUnnamed138(o.metadata!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment>
buildUnnamed139() => [
  buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment(),
  buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment(),
];

void checkUnnamed139(
  core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio =
    0;
api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio
buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio() {
  final o = api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio < 3) {
    o.segments = buildUnnamed139();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio(
  api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio < 3) {
    checkUnnamed139(o.segments!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment = 0;
api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment
buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment <
      3) {
    o.allowPlaybackInterruption = true;
    o.audio = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment(
  api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment <
      3) {
    unittest.expect(o.allowPlaybackInterruption!, unittest.isTrue);
    unittest.expect(o.audio!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText = 0;
api.GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText
buildGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText() {
  final o = api.GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText <
      3) {
    o.allowPlaybackInterruption = true;
    o.ssml = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText(
  api.GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText <
      3) {
    unittest.expect(o.allowPlaybackInterruption!, unittest.isTrue);
    unittest.expect(o.ssml!, unittest.equals('foo'));
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio = 0;
api.GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio
buildGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio() {
  final o = api.GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio < 3) {
    o.allowPlaybackInterruption = true;
    o.audioUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio(
  api.GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio < 3) {
    unittest.expect(o.allowPlaybackInterruption!, unittest.isTrue);
    unittest.expect(o.audioUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall =
    0;
api.GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall
buildGoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall <
      3) {
    o.phoneNumber = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall(
  api.GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall <
      3) {
    unittest.expect(o.phoneNumber!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall--;
}

core.List<core.String> buildUnnamed140() => ['foo', 'foo'];

void checkUnnamed140(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText = 0;
api.GoogleCloudDialogflowCxV3beta1ResponseMessageText
buildGoogleCloudDialogflowCxV3beta1ResponseMessageText() {
  final o = api.GoogleCloudDialogflowCxV3beta1ResponseMessageText();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText < 3) {
    o.allowPlaybackInterruption = true;
    o.text = buildUnnamed140();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageText(
  api.GoogleCloudDialogflowCxV3beta1ResponseMessageText o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText < 3) {
    unittest.expect(o.allowPlaybackInterruption!, unittest.isTrue);
    checkUnnamed140(o.text!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1RestoreAgentRequest = 0;
api.GoogleCloudDialogflowCxV3beta1RestoreAgentRequest
buildGoogleCloudDialogflowCxV3beta1RestoreAgentRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1RestoreAgentRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1RestoreAgentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RestoreAgentRequest < 3) {
    o.agentContent = 'foo';
    o.agentUri = 'foo';
    o.gitSource =
        buildGoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource();
    o.restoreOption = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1RestoreAgentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1RestoreAgentRequest(
  api.GoogleCloudDialogflowCxV3beta1RestoreAgentRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1RestoreAgentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RestoreAgentRequest < 3) {
    unittest.expect(o.agentContent!, unittest.equals('foo'));
    unittest.expect(o.agentUri!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource(
      o.gitSource!,
    );
    unittest.expect(o.restoreOption!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1RestoreAgentRequest--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource = 0;
api.GoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource
buildGoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource() {
  final o = api.GoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource();
  buildCounterGoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource <
      3) {
    o.trackingBranch = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource(
  api.GoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource <
      3) {
    unittest.expect(o.trackingBranch!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest = 0;
api.GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest
buildGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest <
      3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest(
  api.GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest <
      3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse = 0;
api.GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse
buildGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse <
      3) {
    o.playbook = buildGoogleCloudDialogflowCxV3beta1Playbook();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse(
  api.GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse <
      3) {
    checkGoogleCloudDialogflowCxV3beta1Playbook(o.playbook!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest =
    0;
api.GoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest
buildGoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest <
      3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest(
  api.GoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest <
      3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse =
    0;
api.GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse
buildGoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse() {
  final o = api.GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse <
      3) {
    o.tool = buildGoogleCloudDialogflowCxV3beta1Tool();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse(
  api.GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse <
      3) {
    checkGoogleCloudDialogflowCxV3beta1Tool(o.tool!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep>
buildUnnamed141() => [
  buildGoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep(),
  buildGoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep(),
];

void checkUnnamed141(
  core.List<api.GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep(o[0]);
  checkGoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1RolloutConfig = 0;
api.GoogleCloudDialogflowCxV3beta1RolloutConfig
buildGoogleCloudDialogflowCxV3beta1RolloutConfig() {
  final o = api.GoogleCloudDialogflowCxV3beta1RolloutConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1RolloutConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RolloutConfig < 3) {
    o.failureCondition = 'foo';
    o.rolloutCondition = 'foo';
    o.rolloutSteps = buildUnnamed141();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1RolloutConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1RolloutConfig(
  api.GoogleCloudDialogflowCxV3beta1RolloutConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1RolloutConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RolloutConfig < 3) {
    unittest.expect(o.failureCondition!, unittest.equals('foo'));
    unittest.expect(o.rolloutCondition!, unittest.equals('foo'));
    checkUnnamed141(o.rolloutSteps!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1RolloutConfig--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep = 0;
api.GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep
buildGoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep() {
  final o = api.GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep();
  buildCounterGoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep < 3) {
    o.displayName = 'foo';
    o.minDuration = 'foo';
    o.trafficPercent = 42;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep(
  api.GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.minDuration!, unittest.equals('foo'));
    unittest.expect(o.trafficPercent!, unittest.equals(42));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1RolloutState = 0;
api.GoogleCloudDialogflowCxV3beta1RolloutState
buildGoogleCloudDialogflowCxV3beta1RolloutState() {
  final o = api.GoogleCloudDialogflowCxV3beta1RolloutState();
  buildCounterGoogleCloudDialogflowCxV3beta1RolloutState++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RolloutState < 3) {
    o.startTime = 'foo';
    o.step = 'foo';
    o.stepIndex = 42;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1RolloutState--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1RolloutState(
  api.GoogleCloudDialogflowCxV3beta1RolloutState o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1RolloutState++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RolloutState < 3) {
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.step!, unittest.equals('foo'));
    unittest.expect(o.stepIndex!, unittest.equals(42));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1RolloutState--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1RunContinuousTestRequest = 0;
api.GoogleCloudDialogflowCxV3beta1RunContinuousTestRequest
buildGoogleCloudDialogflowCxV3beta1RunContinuousTestRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1RunContinuousTestRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1RunContinuousTestRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RunContinuousTestRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1RunContinuousTestRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1RunContinuousTestRequest(
  api.GoogleCloudDialogflowCxV3beta1RunContinuousTestRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1RunContinuousTestRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RunContinuousTestRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1RunContinuousTestRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseRequest = 0;
api.GoogleCloudDialogflowCxV3beta1RunTestCaseRequest
buildGoogleCloudDialogflowCxV3beta1RunTestCaseRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1RunTestCaseRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseRequest < 3) {
    o.environment = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1RunTestCaseRequest(
  api.GoogleCloudDialogflowCxV3beta1RunTestCaseRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseRequest < 3) {
    unittest.expect(o.environment!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseRequest--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1SafetySettingsPhrase>
buildUnnamed142() => [
  buildGoogleCloudDialogflowCxV3beta1SafetySettingsPhrase(),
  buildGoogleCloudDialogflowCxV3beta1SafetySettingsPhrase(),
];

void checkUnnamed142(
  core.List<api.GoogleCloudDialogflowCxV3beta1SafetySettingsPhrase> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1SafetySettingsPhrase(o[0]);
  checkGoogleCloudDialogflowCxV3beta1SafetySettingsPhrase(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1SafetySettings = 0;
api.GoogleCloudDialogflowCxV3beta1SafetySettings
buildGoogleCloudDialogflowCxV3beta1SafetySettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1SafetySettings();
  buildCounterGoogleCloudDialogflowCxV3beta1SafetySettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SafetySettings < 3) {
    o.bannedPhrases = buildUnnamed142();
    o.defaultBannedPhraseMatchStrategy = 'foo';
    o.promptSecuritySettings =
        buildGoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SafetySettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1SafetySettings(
  api.GoogleCloudDialogflowCxV3beta1SafetySettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1SafetySettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SafetySettings < 3) {
    checkUnnamed142(o.bannedPhrases!);
    unittest.expect(
      o.defaultBannedPhraseMatchStrategy!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings(
      o.promptSecuritySettings!,
    );
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SafetySettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1SafetySettingsPhrase = 0;
api.GoogleCloudDialogflowCxV3beta1SafetySettingsPhrase
buildGoogleCloudDialogflowCxV3beta1SafetySettingsPhrase() {
  final o = api.GoogleCloudDialogflowCxV3beta1SafetySettingsPhrase();
  buildCounterGoogleCloudDialogflowCxV3beta1SafetySettingsPhrase++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SafetySettingsPhrase < 3) {
    o.languageCode = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SafetySettingsPhrase--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1SafetySettingsPhrase(
  api.GoogleCloudDialogflowCxV3beta1SafetySettingsPhrase o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1SafetySettingsPhrase++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SafetySettingsPhrase < 3) {
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SafetySettingsPhrase--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings =
    0;
api.GoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings
buildGoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings();
  buildCounterGoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings <
      3) {
    o.enablePromptSecurity = true;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings(
  api.GoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings <
      3) {
    unittest.expect(o.enablePromptSecurity!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1BoostSpecs> buildUnnamed143() => [
  buildGoogleCloudDialogflowCxV3beta1BoostSpecs(),
  buildGoogleCloudDialogflowCxV3beta1BoostSpecs(),
];

void checkUnnamed143(
  core.List<api.GoogleCloudDialogflowCxV3beta1BoostSpecs> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1BoostSpecs(o[0]);
  checkGoogleCloudDialogflowCxV3beta1BoostSpecs(o[1]);
}

core.List<api.GoogleCloudDialogflowCxV3beta1FilterSpecs> buildUnnamed144() => [
  buildGoogleCloudDialogflowCxV3beta1FilterSpecs(),
  buildGoogleCloudDialogflowCxV3beta1FilterSpecs(),
];

void checkUnnamed144(
  core.List<api.GoogleCloudDialogflowCxV3beta1FilterSpecs> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1FilterSpecs(o[0]);
  checkGoogleCloudDialogflowCxV3beta1FilterSpecs(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1SearchConfig = 0;
api.GoogleCloudDialogflowCxV3beta1SearchConfig
buildGoogleCloudDialogflowCxV3beta1SearchConfig() {
  final o = api.GoogleCloudDialogflowCxV3beta1SearchConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1SearchConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SearchConfig < 3) {
    o.boostSpecs = buildUnnamed143();
    o.filterSpecs = buildUnnamed144();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SearchConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1SearchConfig(
  api.GoogleCloudDialogflowCxV3beta1SearchConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1SearchConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SearchConfig < 3) {
    checkUnnamed143(o.boostSpecs!);
    checkUnnamed144(o.filterSpecs!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SearchConfig--;
}

core.List<core.String> buildUnnamed145() => ['foo', 'foo'];

void checkUnnamed145(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettings = 0;
api.GoogleCloudDialogflowCxV3beta1SecuritySettings
buildGoogleCloudDialogflowCxV3beta1SecuritySettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1SecuritySettings();
  buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettings < 3) {
    o.audioExportSettings =
        buildGoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings();
    o.deidentifyTemplate = 'foo';
    o.displayName = 'foo';
    o.insightsExportSettings =
        buildGoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings();
    o.inspectTemplate = 'foo';
    o.name = 'foo';
    o.purgeDataTypes = buildUnnamed145();
    o.redactionScope = 'foo';
    o.redactionStrategy = 'foo';
    o.retentionStrategy = 'foo';
    o.retentionWindowDays = 42;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1SecuritySettings(
  api.GoogleCloudDialogflowCxV3beta1SecuritySettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettings < 3) {
    checkGoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings(
      o.audioExportSettings!,
    );
    unittest.expect(o.deidentifyTemplate!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings(
      o.insightsExportSettings!,
    );
    unittest.expect(o.inspectTemplate!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed145(o.purgeDataTypes!);
    unittest.expect(o.redactionScope!, unittest.equals('foo'));
    unittest.expect(o.redactionStrategy!, unittest.equals('foo'));
    unittest.expect(o.retentionStrategy!, unittest.equals('foo'));
    unittest.expect(o.retentionWindowDays!, unittest.equals(42));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettings--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings =
    0;
api.GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings
buildGoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings <
      3) {
    o.audioExportPattern = 'foo';
    o.audioFormat = 'foo';
    o.enableAudioRedaction = true;
    o.gcsBucket = 'foo';
    o.storeTtsAudio = true;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings(
  api.GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings <
      3) {
    unittest.expect(o.audioExportPattern!, unittest.equals('foo'));
    unittest.expect(o.audioFormat!, unittest.equals('foo'));
    unittest.expect(o.enableAudioRedaction!, unittest.isTrue);
    unittest.expect(o.gcsBucket!, unittest.equals('foo'));
    unittest.expect(o.storeTtsAudio!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings =
    0;
api.GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings
buildGoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings <
      3) {
    o.enableInsightsExport = true;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings(
  api.GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings <
      3) {
    unittest.expect(o.enableInsightsExport!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1SentimentAnalysisResult = 0;
api.GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult
buildGoogleCloudDialogflowCxV3beta1SentimentAnalysisResult() {
  final o = api.GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult();
  buildCounterGoogleCloudDialogflowCxV3beta1SentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SentimentAnalysisResult < 3) {
    o.magnitude = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SentimentAnalysisResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1SentimentAnalysisResult(
  api.GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1SentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SentimentAnalysisResult < 3) {
    unittest.expect(o.magnitude!, unittest.equals(42.0));
    unittest.expect(o.score!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SentimentAnalysisResult--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1EntityTypeEntity>
buildUnnamed146() => [
  buildGoogleCloudDialogflowCxV3beta1EntityTypeEntity(),
  buildGoogleCloudDialogflowCxV3beta1EntityTypeEntity(),
];

void checkUnnamed146(
  core.List<api.GoogleCloudDialogflowCxV3beta1EntityTypeEntity> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowCxV3beta1EntityTypeEntity(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1SessionEntityType = 0;
api.GoogleCloudDialogflowCxV3beta1SessionEntityType
buildGoogleCloudDialogflowCxV3beta1SessionEntityType() {
  final o = api.GoogleCloudDialogflowCxV3beta1SessionEntityType();
  buildCounterGoogleCloudDialogflowCxV3beta1SessionEntityType++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SessionEntityType < 3) {
    o.entities = buildUnnamed146();
    o.entityOverrideMode = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SessionEntityType--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1SessionEntityType(
  api.GoogleCloudDialogflowCxV3beta1SessionEntityType o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1SessionEntityType++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SessionEntityType < 3) {
    checkUnnamed146(o.entities!);
    unittest.expect(o.entityOverrideMode!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SessionEntityType--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1NamedMetric> buildUnnamed147() => [
  buildGoogleCloudDialogflowCxV3beta1NamedMetric(),
  buildGoogleCloudDialogflowCxV3beta1NamedMetric(),
];

void checkUnnamed147(
  core.List<api.GoogleCloudDialogflowCxV3beta1NamedMetric> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1NamedMetric(o[0]);
  checkGoogleCloudDialogflowCxV3beta1NamedMetric(o[1]);
}

core.List<core.String> buildUnnamed148() => ['foo', 'foo'];

void checkUnnamed148(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Span = 0;
api.GoogleCloudDialogflowCxV3beta1Span
buildGoogleCloudDialogflowCxV3beta1Span() {
  final o = api.GoogleCloudDialogflowCxV3beta1Span();
  buildCounterGoogleCloudDialogflowCxV3beta1Span++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Span < 3) {
    o.completeTime = 'foo';
    o.metrics = buildUnnamed147();
    o.name = 'foo';
    o.startTime = 'foo';
    o.tags = buildUnnamed148();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Span--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Span(
  api.GoogleCloudDialogflowCxV3beta1Span o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Span++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Span < 3) {
    unittest.expect(o.completeTime!, unittest.equals('foo'));
    checkUnnamed147(o.metrics!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    checkUnnamed148(o.tags!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Span--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1SpeechToTextSettings = 0;
api.GoogleCloudDialogflowCxV3beta1SpeechToTextSettings
buildGoogleCloudDialogflowCxV3beta1SpeechToTextSettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1SpeechToTextSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1SpeechToTextSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SpeechToTextSettings < 3) {
    o.enableSpeechAdaptation = true;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SpeechToTextSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1SpeechToTextSettings(
  api.GoogleCloudDialogflowCxV3beta1SpeechToTextSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1SpeechToTextSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SpeechToTextSettings < 3) {
    unittest.expect(o.enableSpeechAdaptation!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SpeechToTextSettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1StartExperimentRequest = 0;
api.GoogleCloudDialogflowCxV3beta1StartExperimentRequest
buildGoogleCloudDialogflowCxV3beta1StartExperimentRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1StartExperimentRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1StartExperimentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1StartExperimentRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1StartExperimentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1StartExperimentRequest(
  api.GoogleCloudDialogflowCxV3beta1StartExperimentRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1StartExperimentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1StartExperimentRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1StartExperimentRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Status = 0;
api.GoogleCloudDialogflowCxV3beta1Status
buildGoogleCloudDialogflowCxV3beta1Status() {
  final o = api.GoogleCloudDialogflowCxV3beta1Status();
  buildCounterGoogleCloudDialogflowCxV3beta1Status++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Status < 3) {
    o.exception = buildGoogleCloudDialogflowCxV3beta1ExceptionDetail();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Status--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Status(
  api.GoogleCloudDialogflowCxV3beta1Status o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Status++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Status < 3) {
    checkGoogleCloudDialogflowCxV3beta1ExceptionDetail(o.exception!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Status--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1StopExperimentRequest = 0;
api.GoogleCloudDialogflowCxV3beta1StopExperimentRequest
buildGoogleCloudDialogflowCxV3beta1StopExperimentRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1StopExperimentRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1StopExperimentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1StopExperimentRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1StopExperimentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1StopExperimentRequest(
  api.GoogleCloudDialogflowCxV3beta1StopExperimentRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1StopExperimentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1StopExperimentRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1StopExperimentRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest =
    0;
api.GoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest
buildGoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest <
      3) {
    o.answerFeedback = buildGoogleCloudDialogflowCxV3beta1AnswerFeedback();
    o.responseId = 'foo';
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest(
  api.GoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest <
      3) {
    checkGoogleCloudDialogflowCxV3beta1AnswerFeedback(o.answerFeedback!);
    unittest.expect(o.responseId!, unittest.equals('foo'));
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest--;
}

core.List<core.String> buildUnnamed149() => ['foo', 'foo'];

void checkUnnamed149(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig = 0;
api.GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig
buildGoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig() {
  final o = api.GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig < 3) {
    o.effectsProfileId = buildUnnamed149();
    o.pitch = 42.0;
    o.speakingRate = 42.0;
    o.voice = buildGoogleCloudDialogflowCxV3beta1VoiceSelectionParams();
    o.volumeGainDb = 42.0;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig(
  api.GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig < 3) {
    checkUnnamed149(o.effectsProfileId!);
    unittest.expect(o.pitch!, unittest.equals(42.0));
    unittest.expect(o.speakingRate!, unittest.equals(42.0));
    checkGoogleCloudDialogflowCxV3beta1VoiceSelectionParams(o.voice!);
    unittest.expect(o.volumeGainDb!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig--;
}

core.List<core.String> buildUnnamed150() => ['foo', 'foo'];

void checkUnnamed150(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3beta1ConversationTurn>
buildUnnamed151() => [
  buildGoogleCloudDialogflowCxV3beta1ConversationTurn(),
  buildGoogleCloudDialogflowCxV3beta1ConversationTurn(),
];

void checkUnnamed151(
  core.List<api.GoogleCloudDialogflowCxV3beta1ConversationTurn> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ConversationTurn(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ConversationTurn(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TestCase = 0;
api.GoogleCloudDialogflowCxV3beta1TestCase
buildGoogleCloudDialogflowCxV3beta1TestCase() {
  final o = api.GoogleCloudDialogflowCxV3beta1TestCase();
  buildCounterGoogleCloudDialogflowCxV3beta1TestCase++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestCase < 3) {
    o.creationTime = 'foo';
    o.displayName = 'foo';
    o.lastTestResult = buildGoogleCloudDialogflowCxV3beta1TestCaseResult();
    o.name = 'foo';
    o.notes = 'foo';
    o.tags = buildUnnamed150();
    o.testCaseConversationTurns = buildUnnamed151();
    o.testConfig = buildGoogleCloudDialogflowCxV3beta1TestConfig();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestCase--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TestCase(
  api.GoogleCloudDialogflowCxV3beta1TestCase o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1TestCase++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestCase < 3) {
    unittest.expect(o.creationTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1TestCaseResult(o.lastTestResult!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.notes!, unittest.equals('foo'));
    checkUnnamed150(o.tags!);
    checkUnnamed151(o.testCaseConversationTurns!);
    checkGoogleCloudDialogflowCxV3beta1TestConfig(o.testConfig!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestCase--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ConversationTurn>
buildUnnamed152() => [
  buildGoogleCloudDialogflowCxV3beta1ConversationTurn(),
  buildGoogleCloudDialogflowCxV3beta1ConversationTurn(),
];

void checkUnnamed152(
  core.List<api.GoogleCloudDialogflowCxV3beta1ConversationTurn> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ConversationTurn(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ConversationTurn(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TestCaseResult = 0;
api.GoogleCloudDialogflowCxV3beta1TestCaseResult
buildGoogleCloudDialogflowCxV3beta1TestCaseResult() {
  final o = api.GoogleCloudDialogflowCxV3beta1TestCaseResult();
  buildCounterGoogleCloudDialogflowCxV3beta1TestCaseResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestCaseResult < 3) {
    o.conversationTurns = buildUnnamed152();
    o.environment = 'foo';
    o.name = 'foo';
    o.testResult = 'foo';
    o.testTime = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestCaseResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TestCaseResult(
  api.GoogleCloudDialogflowCxV3beta1TestCaseResult o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1TestCaseResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestCaseResult < 3) {
    checkUnnamed152(o.conversationTurns!);
    unittest.expect(o.environment!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.testResult!, unittest.equals('foo'));
    unittest.expect(o.testTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestCaseResult--;
}

core.List<core.String> buildUnnamed153() => ['foo', 'foo'];

void checkUnnamed153(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TestConfig = 0;
api.GoogleCloudDialogflowCxV3beta1TestConfig
buildGoogleCloudDialogflowCxV3beta1TestConfig() {
  final o = api.GoogleCloudDialogflowCxV3beta1TestConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1TestConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestConfig < 3) {
    o.flow = 'foo';
    o.page = 'foo';
    o.trackingParameters = buildUnnamed153();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TestConfig(
  api.GoogleCloudDialogflowCxV3beta1TestConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1TestConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestConfig < 3) {
    unittest.expect(o.flow!, unittest.equals('foo'));
    unittest.expect(o.page!, unittest.equals('foo'));
    checkUnnamed153(o.trackingParameters!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestConfig--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TestRunDifference = 0;
api.GoogleCloudDialogflowCxV3beta1TestRunDifference
buildGoogleCloudDialogflowCxV3beta1TestRunDifference() {
  final o = api.GoogleCloudDialogflowCxV3beta1TestRunDifference();
  buildCounterGoogleCloudDialogflowCxV3beta1TestRunDifference++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestRunDifference < 3) {
    o.description = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestRunDifference--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TestRunDifference(
  api.GoogleCloudDialogflowCxV3beta1TestRunDifference o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1TestRunDifference++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestRunDifference < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestRunDifference--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TextInput = 0;
api.GoogleCloudDialogflowCxV3beta1TextInput
buildGoogleCloudDialogflowCxV3beta1TextInput() {
  final o = api.GoogleCloudDialogflowCxV3beta1TextInput();
  buildCounterGoogleCloudDialogflowCxV3beta1TextInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TextInput < 3) {
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TextInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TextInput(
  api.GoogleCloudDialogflowCxV3beta1TextInput o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1TextInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TextInput < 3) {
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TextInput--;
}

core.Map<core.String, api.GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig>
buildUnnamed154() => {
  'x': buildGoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig(),
  'y': buildGoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig(),
};

void checkUnnamed154(
  core.Map<
    core.String,
    api.GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig(o['x']!);
  checkGoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig(o['y']!);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TextToSpeechSettings = 0;
api.GoogleCloudDialogflowCxV3beta1TextToSpeechSettings
buildGoogleCloudDialogflowCxV3beta1TextToSpeechSettings() {
  final o = api.GoogleCloudDialogflowCxV3beta1TextToSpeechSettings();
  buildCounterGoogleCloudDialogflowCxV3beta1TextToSpeechSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TextToSpeechSettings < 3) {
    o.synthesizeSpeechConfigs = buildUnnamed154();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TextToSpeechSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TextToSpeechSettings(
  api.GoogleCloudDialogflowCxV3beta1TextToSpeechSettings o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1TextToSpeechSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TextToSpeechSettings < 3) {
    checkUnnamed154(o.synthesizeSpeechConfigs!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TextToSpeechSettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Tool = 0;
api.GoogleCloudDialogflowCxV3beta1Tool
buildGoogleCloudDialogflowCxV3beta1Tool() {
  final o = api.GoogleCloudDialogflowCxV3beta1Tool();
  buildCounterGoogleCloudDialogflowCxV3beta1Tool++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Tool < 3) {
    o.connectorSpec = buildGoogleCloudDialogflowCxV3beta1ToolConnectorTool();
    o.dataStoreSpec = buildGoogleCloudDialogflowCxV3beta1ToolDataStoreTool();
    o.description = 'foo';
    o.displayName = 'foo';
    o.extensionSpec = buildGoogleCloudDialogflowCxV3beta1ToolExtensionTool();
    o.functionSpec = buildGoogleCloudDialogflowCxV3beta1ToolFunctionTool();
    o.name = 'foo';
    o.openApiSpec = buildGoogleCloudDialogflowCxV3beta1ToolOpenApiTool();
    o.toolType = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Tool--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Tool(
  api.GoogleCloudDialogflowCxV3beta1Tool o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Tool++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Tool < 3) {
    checkGoogleCloudDialogflowCxV3beta1ToolConnectorTool(o.connectorSpec!);
    checkGoogleCloudDialogflowCxV3beta1ToolDataStoreTool(o.dataStoreSpec!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1ToolExtensionTool(o.extensionSpec!);
    checkGoogleCloudDialogflowCxV3beta1ToolFunctionTool(o.functionSpec!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1ToolOpenApiTool(o.openApiSpec!);
    unittest.expect(o.toolType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Tool--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthentication = 0;
api.GoogleCloudDialogflowCxV3beta1ToolAuthentication
buildGoogleCloudDialogflowCxV3beta1ToolAuthentication() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolAuthentication();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthentication++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthentication < 3) {
    o.apiKeyConfig =
        buildGoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig();
    o.bearerTokenConfig =
        buildGoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig();
    o.oauthConfig =
        buildGoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig();
    o.serviceAgentAuthConfig =
        buildGoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthentication--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolAuthentication(
  api.GoogleCloudDialogflowCxV3beta1ToolAuthentication o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthentication++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthentication < 3) {
    checkGoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig(
      o.apiKeyConfig!,
    );
    checkGoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig(
      o.bearerTokenConfig!,
    );
    checkGoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig(
      o.oauthConfig!,
    );
    checkGoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig(
      o.serviceAgentAuthConfig!,
    );
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthentication--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig = 0;
api.GoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig
buildGoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig <
      3) {
    o.apiKey = 'foo';
    o.keyName = 'foo';
    o.requestLocation = 'foo';
    o.secretVersionForApiKey = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig(
  api.GoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig <
      3) {
    unittest.expect(o.apiKey!, unittest.equals('foo'));
    unittest.expect(o.keyName!, unittest.equals('foo'));
    unittest.expect(o.requestLocation!, unittest.equals('foo'));
    unittest.expect(o.secretVersionForApiKey!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig =
    0;
api.GoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig
buildGoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig <
      3) {
    o.secretVersionForToken = 'foo';
    o.token = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig(
  api.GoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig <
      3) {
    unittest.expect(o.secretVersionForToken!, unittest.equals('foo'));
    unittest.expect(o.token!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig--;
}

core.List<core.String> buildUnnamed155() => ['foo', 'foo'];

void checkUnnamed155(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig = 0;
api.GoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig
buildGoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig <
      3) {
    o.clientId = 'foo';
    o.clientSecret = 'foo';
    o.oauthGrantType = 'foo';
    o.scopes = buildUnnamed155();
    o.secretVersionForClientSecret = 'foo';
    o.tokenEndpoint = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig(
  api.GoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig <
      3) {
    unittest.expect(o.clientId!, unittest.equals('foo'));
    unittest.expect(o.clientSecret!, unittest.equals('foo'));
    unittest.expect(o.oauthGrantType!, unittest.equals('foo'));
    checkUnnamed155(o.scopes!);
    unittest.expect(o.secretVersionForClientSecret!, unittest.equals('foo'));
    unittest.expect(o.tokenEndpoint!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig =
    0;
api.GoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig
buildGoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig <
      3) {
    o.serviceAgentAuth = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig--;
  return o;
}

void
checkGoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig(
  api.GoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig <
      3) {
    unittest.expect(o.serviceAgentAuth!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed156() => {
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

void checkUnnamed156(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted50 = (o['x']!) as core.Map;
  unittest.expect(casted50, unittest.hasLength(3));
  unittest.expect(casted50['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted50['bool'], unittest.equals(true));
  unittest.expect(casted50['string'], unittest.equals('foo'));
  var casted51 = (o['y']!) as core.Map;
  unittest.expect(casted51, unittest.hasLength(3));
  unittest.expect(casted51['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted51['bool'], unittest.equals(true));
  unittest.expect(casted51['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ToolCall = 0;
api.GoogleCloudDialogflowCxV3beta1ToolCall
buildGoogleCloudDialogflowCxV3beta1ToolCall() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolCall();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolCall++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolCall < 3) {
    o.action = 'foo';
    o.inputParameters = buildUnnamed156();
    o.tool = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolCall--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolCall(
  api.GoogleCloudDialogflowCxV3beta1ToolCall o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolCall++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolCall < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    checkUnnamed156(o.inputParameters!);
    unittest.expect(o.tool!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolCall--;
}

core.Map<core.String, core.Object?> buildUnnamed157() => {
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

void checkUnnamed157(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted52 = (o['x']!) as core.Map;
  unittest.expect(casted52, unittest.hasLength(3));
  unittest.expect(casted52['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted52['bool'], unittest.equals(true));
  unittest.expect(casted52['string'], unittest.equals('foo'));
  var casted53 = (o['y']!) as core.Map;
  unittest.expect(casted53, unittest.hasLength(3));
  unittest.expect(casted53['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted53['bool'], unittest.equals(true));
  unittest.expect(casted53['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ToolCallResult = 0;
api.GoogleCloudDialogflowCxV3beta1ToolCallResult
buildGoogleCloudDialogflowCxV3beta1ToolCallResult() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolCallResult();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolCallResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolCallResult < 3) {
    o.action = 'foo';
    o.error = buildGoogleCloudDialogflowCxV3beta1ToolCallResultError();
    o.outputParameters = buildUnnamed157();
    o.tool = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolCallResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolCallResult(
  api.GoogleCloudDialogflowCxV3beta1ToolCallResult o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolCallResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolCallResult < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1ToolCallResultError(o.error!);
    checkUnnamed157(o.outputParameters!);
    unittest.expect(o.tool!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolCallResult--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ToolCallResultError = 0;
api.GoogleCloudDialogflowCxV3beta1ToolCallResultError
buildGoogleCloudDialogflowCxV3beta1ToolCallResultError() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolCallResultError();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolCallResultError++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolCallResultError < 3) {
    o.message = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolCallResultError--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolCallResultError(
  api.GoogleCloudDialogflowCxV3beta1ToolCallResultError o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolCallResultError++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolCallResultError < 3) {
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolCallResultError--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ToolConnectorToolAction>
buildUnnamed158() => [
  buildGoogleCloudDialogflowCxV3beta1ToolConnectorToolAction(),
  buildGoogleCloudDialogflowCxV3beta1ToolConnectorToolAction(),
];

void checkUnnamed158(
  core.List<api.GoogleCloudDialogflowCxV3beta1ToolConnectorToolAction> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ToolConnectorToolAction(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ToolConnectorToolAction(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorTool = 0;
api.GoogleCloudDialogflowCxV3beta1ToolConnectorTool
buildGoogleCloudDialogflowCxV3beta1ToolConnectorTool() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolConnectorTool();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorTool++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorTool < 3) {
    o.actions = buildUnnamed158();
    o.endUserAuthConfig =
        buildGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig();
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorTool--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolConnectorTool(
  api.GoogleCloudDialogflowCxV3beta1ToolConnectorTool o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorTool++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorTool < 3) {
    checkUnnamed158(o.actions!);
    checkGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig(
      o.endUserAuthConfig!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorTool--;
}

core.List<core.String> buildUnnamed159() => ['foo', 'foo'];

void checkUnnamed159(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed160() => ['foo', 'foo'];

void checkUnnamed160(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorToolAction = 0;
api.GoogleCloudDialogflowCxV3beta1ToolConnectorToolAction
buildGoogleCloudDialogflowCxV3beta1ToolConnectorToolAction() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolConnectorToolAction();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorToolAction++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorToolAction < 3) {
    o.connectionActionId = 'foo';
    o.entityOperation =
        buildGoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation();
    o.inputFields = buildUnnamed159();
    o.outputFields = buildUnnamed160();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorToolAction--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolConnectorToolAction(
  api.GoogleCloudDialogflowCxV3beta1ToolConnectorToolAction o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorToolAction++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorToolAction < 3) {
    unittest.expect(o.connectionActionId!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation(
      o.entityOperation!,
    );
    checkUnnamed159(o.inputFields!);
    checkUnnamed160(o.outputFields!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorToolAction--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation =
    0;
api.GoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation
buildGoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation <
      3) {
    o.entityId = 'foo';
    o.operation = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation(
  api.GoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation <
      3) {
    unittest.expect(o.entityId!, unittest.equals('foo'));
    unittest.expect(o.operation!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1DataStoreConnection>
buildUnnamed161() => [
  buildGoogleCloudDialogflowCxV3beta1DataStoreConnection(),
  buildGoogleCloudDialogflowCxV3beta1DataStoreConnection(),
];

void checkUnnamed161(
  core.List<api.GoogleCloudDialogflowCxV3beta1DataStoreConnection> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1DataStoreConnection(o[0]);
  checkGoogleCloudDialogflowCxV3beta1DataStoreConnection(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ToolDataStoreTool = 0;
api.GoogleCloudDialogflowCxV3beta1ToolDataStoreTool
buildGoogleCloudDialogflowCxV3beta1ToolDataStoreTool() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolDataStoreTool();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolDataStoreTool++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolDataStoreTool < 3) {
    o.dataStoreConnections = buildUnnamed161();
    o.fallbackPrompt =
        buildGoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolDataStoreTool--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolDataStoreTool(
  api.GoogleCloudDialogflowCxV3beta1ToolDataStoreTool o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolDataStoreTool++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolDataStoreTool < 3) {
    checkUnnamed161(o.dataStoreConnections!);
    checkGoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt(
      o.fallbackPrompt!,
    );
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolDataStoreTool--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt = 0;
api.GoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt
buildGoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt <
      3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt(
  api.GoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt <
      3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig = 0;
api.GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig
buildGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig < 3) {
    o.oauth2AuthCodeConfig =
        buildGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig();
    o.oauth2JwtBearerConfig =
        buildGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig(
  api.GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig < 3) {
    checkGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig(
      o.oauth2AuthCodeConfig!,
    );
    checkGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig(
      o.oauth2JwtBearerConfig!,
    );
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig =
    0;
api.GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig
buildGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig <
      3) {
    o.oauthToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig--;
  return o;
}

void
checkGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig(
  api.GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig <
      3) {
    unittest.expect(o.oauthToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig =
    0;
api.GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig
buildGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig <
      3) {
    o.clientKey = 'foo';
    o.issuer = 'foo';
    o.subject = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig--;
  return o;
}

void
checkGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig(
  api.GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig
  o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig <
      3) {
    unittest.expect(o.clientKey!, unittest.equals('foo'));
    unittest.expect(o.issuer!, unittest.equals('foo'));
    unittest.expect(o.subject!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ToolExtensionTool = 0;
api.GoogleCloudDialogflowCxV3beta1ToolExtensionTool
buildGoogleCloudDialogflowCxV3beta1ToolExtensionTool() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolExtensionTool();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolExtensionTool++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolExtensionTool < 3) {
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolExtensionTool--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolExtensionTool(
  api.GoogleCloudDialogflowCxV3beta1ToolExtensionTool o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolExtensionTool++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolExtensionTool < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolExtensionTool--;
}

core.Map<core.String, core.Object?> buildUnnamed162() => {
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

void checkUnnamed162(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted54 = (o['x']!) as core.Map;
  unittest.expect(casted54, unittest.hasLength(3));
  unittest.expect(casted54['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted54['bool'], unittest.equals(true));
  unittest.expect(casted54['string'], unittest.equals('foo'));
  var casted55 = (o['y']!) as core.Map;
  unittest.expect(casted55, unittest.hasLength(3));
  unittest.expect(casted55['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted55['bool'], unittest.equals(true));
  unittest.expect(casted55['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed163() => {
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

void checkUnnamed163(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted56 = (o['x']!) as core.Map;
  unittest.expect(casted56, unittest.hasLength(3));
  unittest.expect(casted56['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted56['bool'], unittest.equals(true));
  unittest.expect(casted56['string'], unittest.equals('foo'));
  var casted57 = (o['y']!) as core.Map;
  unittest.expect(casted57, unittest.hasLength(3));
  unittest.expect(casted57['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted57['bool'], unittest.equals(true));
  unittest.expect(casted57['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ToolFunctionTool = 0;
api.GoogleCloudDialogflowCxV3beta1ToolFunctionTool
buildGoogleCloudDialogflowCxV3beta1ToolFunctionTool() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolFunctionTool();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolFunctionTool++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolFunctionTool < 3) {
    o.inputSchema = buildUnnamed162();
    o.outputSchema = buildUnnamed163();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolFunctionTool--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolFunctionTool(
  api.GoogleCloudDialogflowCxV3beta1ToolFunctionTool o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolFunctionTool++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolFunctionTool < 3) {
    checkUnnamed162(o.inputSchema!);
    checkUnnamed163(o.outputSchema!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolFunctionTool--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ToolOpenApiTool = 0;
api.GoogleCloudDialogflowCxV3beta1ToolOpenApiTool
buildGoogleCloudDialogflowCxV3beta1ToolOpenApiTool() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolOpenApiTool();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolOpenApiTool++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolOpenApiTool < 3) {
    o.authentication = buildGoogleCloudDialogflowCxV3beta1ToolAuthentication();
    o.serviceDirectoryConfig =
        buildGoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig();
    o.textSchema = 'foo';
    o.tlsConfig = buildGoogleCloudDialogflowCxV3beta1ToolTLSConfig();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolOpenApiTool--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolOpenApiTool(
  api.GoogleCloudDialogflowCxV3beta1ToolOpenApiTool o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolOpenApiTool++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolOpenApiTool < 3) {
    checkGoogleCloudDialogflowCxV3beta1ToolAuthentication(o.authentication!);
    checkGoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig(
      o.serviceDirectoryConfig!,
    );
    unittest.expect(o.textSchema!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1ToolTLSConfig(o.tlsConfig!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolOpenApiTool--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig =
    0;
api.GoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig
buildGoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig <
      3) {
    o.service = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig(
  api.GoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig <
      3) {
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert>
buildUnnamed164() => [
  buildGoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert(),
  buildGoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert(),
];

void checkUnnamed164(
  core.List<api.GoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ToolTLSConfig = 0;
api.GoogleCloudDialogflowCxV3beta1ToolTLSConfig
buildGoogleCloudDialogflowCxV3beta1ToolTLSConfig() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolTLSConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolTLSConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolTLSConfig < 3) {
    o.caCerts = buildUnnamed164();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolTLSConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolTLSConfig(
  api.GoogleCloudDialogflowCxV3beta1ToolTLSConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolTLSConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolTLSConfig < 3) {
    checkUnnamed164(o.caCerts!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolTLSConfig--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert = 0;
api.GoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert
buildGoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert < 3) {
    o.cert = 'foo';
    o.displayName = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert(
  api.GoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert < 3) {
    unittest.expect(o.cert!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert--;
}

core.Map<core.String, core.Object?> buildUnnamed165() => {
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

void checkUnnamed165(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted58 = (o['x']!) as core.Map;
  unittest.expect(casted58, unittest.hasLength(3));
  unittest.expect(casted58['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted58['bool'], unittest.equals(true));
  unittest.expect(casted58['string'], unittest.equals('foo'));
  var casted59 = (o['y']!) as core.Map;
  unittest.expect(casted59, unittest.hasLength(3));
  unittest.expect(casted59['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted59['bool'], unittest.equals(true));
  unittest.expect(casted59['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed166() => {
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

void checkUnnamed166(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted60 = (o['x']!) as core.Map;
  unittest.expect(casted60, unittest.hasLength(3));
  unittest.expect(casted60['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted60['bool'], unittest.equals(true));
  unittest.expect(casted60['string'], unittest.equals('foo'));
  var casted61 = (o['y']!) as core.Map;
  unittest.expect(casted61, unittest.hasLength(3));
  unittest.expect(casted61['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted61['bool'], unittest.equals(true));
  unittest.expect(casted61['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ToolUse = 0;
api.GoogleCloudDialogflowCxV3beta1ToolUse
buildGoogleCloudDialogflowCxV3beta1ToolUse() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolUse();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolUse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolUse < 3) {
    o.action = 'foo';
    o.dataStoreToolTrace =
        buildGoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace();
    o.displayName = 'foo';
    o.inputActionParameters = buildUnnamed165();
    o.outputActionParameters = buildUnnamed166();
    o.tool = 'foo';
    o.webhookToolTrace =
        buildGoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolUse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolUse(
  api.GoogleCloudDialogflowCxV3beta1ToolUse o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolUse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolUse < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace(
      o.dataStoreToolTrace!,
    );
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed165(o.inputActionParameters!);
    checkUnnamed166(o.outputActionParameters!);
    unittest.expect(o.tool!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace(
      o.webhookToolTrace!,
    );
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolUse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace =
    0;
api.GoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace
buildGoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace < 3) {
    o.dataStoreConnectionSignals =
        buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace(
  api.GoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace < 3) {
    checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals(
      o.dataStoreConnectionSignals!,
    );
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace = 0;
api.GoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace
buildGoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace < 3) {
    o.webhookTag = 'foo';
    o.webhookUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace(
  api.GoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace < 3) {
    unittest.expect(o.webhookTag!, unittest.equals('foo'));
    unittest.expect(o.webhookUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ToolVersion = 0;
api.GoogleCloudDialogflowCxV3beta1ToolVersion
buildGoogleCloudDialogflowCxV3beta1ToolVersion() {
  final o = api.GoogleCloudDialogflowCxV3beta1ToolVersion();
  buildCounterGoogleCloudDialogflowCxV3beta1ToolVersion++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolVersion < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.tool = buildGoogleCloudDialogflowCxV3beta1Tool();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolVersion--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ToolVersion(
  api.GoogleCloudDialogflowCxV3beta1ToolVersion o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ToolVersion++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ToolVersion < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1Tool(o.tool!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ToolVersion--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TrainFlowRequest = 0;
api.GoogleCloudDialogflowCxV3beta1TrainFlowRequest
buildGoogleCloudDialogflowCxV3beta1TrainFlowRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1TrainFlowRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1TrainFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TrainFlowRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1TrainFlowRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TrainFlowRequest(
  api.GoogleCloudDialogflowCxV3beta1TrainFlowRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1TrainFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TrainFlowRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1TrainFlowRequest--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1TransitionCoverageTransition>
buildUnnamed167() => [
  buildGoogleCloudDialogflowCxV3beta1TransitionCoverageTransition(),
  buildGoogleCloudDialogflowCxV3beta1TransitionCoverageTransition(),
];

void checkUnnamed167(
  core.List<api.GoogleCloudDialogflowCxV3beta1TransitionCoverageTransition> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1TransitionCoverageTransition(o[0]);
  checkGoogleCloudDialogflowCxV3beta1TransitionCoverageTransition(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverage = 0;
api.GoogleCloudDialogflowCxV3beta1TransitionCoverage
buildGoogleCloudDialogflowCxV3beta1TransitionCoverage() {
  final o = api.GoogleCloudDialogflowCxV3beta1TransitionCoverage();
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverage < 3) {
    o.coverageScore = 42.0;
    o.transitions = buildUnnamed167();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverage--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TransitionCoverage(
  api.GoogleCloudDialogflowCxV3beta1TransitionCoverage o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverage < 3) {
    unittest.expect(o.coverageScore!, unittest.equals(42.0));
    checkUnnamed167(o.transitions!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverage--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverageTransition = 0;
api.GoogleCloudDialogflowCxV3beta1TransitionCoverageTransition
buildGoogleCloudDialogflowCxV3beta1TransitionCoverageTransition() {
  final o = api.GoogleCloudDialogflowCxV3beta1TransitionCoverageTransition();
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverageTransition++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverageTransition <
      3) {
    o.covered = true;
    o.eventHandler = buildGoogleCloudDialogflowCxV3beta1EventHandler();
    o.index = 42;
    o.source =
        buildGoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode();
    o.target =
        buildGoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode();
    o.transitionRoute = buildGoogleCloudDialogflowCxV3beta1TransitionRoute();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverageTransition--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TransitionCoverageTransition(
  api.GoogleCloudDialogflowCxV3beta1TransitionCoverageTransition o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverageTransition++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverageTransition <
      3) {
    unittest.expect(o.covered!, unittest.isTrue);
    checkGoogleCloudDialogflowCxV3beta1EventHandler(o.eventHandler!);
    unittest.expect(o.index!, unittest.equals(42));
    checkGoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode(
      o.source!,
    );
    checkGoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode(
      o.target!,
    );
    checkGoogleCloudDialogflowCxV3beta1TransitionRoute(o.transitionRoute!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverageTransition--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode = 0;
api.GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode
buildGoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode();
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode <
      3) {
    o.flow = buildGoogleCloudDialogflowCxV3beta1Flow();
    o.page = buildGoogleCloudDialogflowCxV3beta1Page();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode(
  api.GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode <
      3) {
    checkGoogleCloudDialogflowCxV3beta1Flow(o.flow!);
    checkGoogleCloudDialogflowCxV3beta1Page(o.page!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TransitionRoute = 0;
api.GoogleCloudDialogflowCxV3beta1TransitionRoute
buildGoogleCloudDialogflowCxV3beta1TransitionRoute() {
  final o = api.GoogleCloudDialogflowCxV3beta1TransitionRoute();
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRoute++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TransitionRoute < 3) {
    o.condition = 'foo';
    o.description = 'foo';
    o.intent = 'foo';
    o.name = 'foo';
    o.targetFlow = 'foo';
    o.targetPage = 'foo';
    o.triggerFulfillment = buildGoogleCloudDialogflowCxV3beta1Fulfillment();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRoute--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TransitionRoute(
  api.GoogleCloudDialogflowCxV3beta1TransitionRoute o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRoute++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TransitionRoute < 3) {
    unittest.expect(o.condition!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.intent!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.targetFlow!, unittest.equals('foo'));
    unittest.expect(o.targetPage!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1Fulfillment(o.triggerFulfillment!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRoute--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1TransitionRoute>
buildUnnamed168() => [
  buildGoogleCloudDialogflowCxV3beta1TransitionRoute(),
  buildGoogleCloudDialogflowCxV3beta1TransitionRoute(),
];

void checkUnnamed168(
  core.List<api.GoogleCloudDialogflowCxV3beta1TransitionRoute> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1TransitionRoute(o[0]);
  checkGoogleCloudDialogflowCxV3beta1TransitionRoute(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroup = 0;
api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroup
buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroup() {
  final o = api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroup();
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroup++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroup < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.transitionRoutes = buildUnnamed168();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroup--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(
  api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroup o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroup++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroup < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed168(o.transitionRoutes!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroup--;
}

core.List<
  api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage
>
buildUnnamed169() => [
  buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage(),
  buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage(),
];

void checkUnnamed169(
  core.List<
    api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage(o[0]);
  checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage(o[1]);
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage = 0;
api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage
buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage() {
  final o = api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage();
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage <
      3) {
    o.coverageScore = 42.0;
    o.coverages = buildUnnamed169();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage(
  api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage <
      3) {
    unittest.expect(o.coverageScore!, unittest.equals(42.0));
    checkUnnamed169(o.coverages!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage--;
}

core.List<
  api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition
>
buildUnnamed170() => [
  buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition(),
  buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition(),
];

void checkUnnamed170(
  core.List<
    api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition(
    o[0],
  );
  checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition(
    o[1],
  );
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage =
    0;
api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage
buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage();
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage <
      3) {
    o.coverageScore = 42.0;
    o.routeGroup = buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroup();
    o.transitions = buildUnnamed170();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage(
  api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage <
      3) {
    unittest.expect(o.coverageScore!, unittest.equals(42.0));
    checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(o.routeGroup!);
    checkUnnamed170(o.transitions!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition =
    0;
api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition
buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition();
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition <
      3) {
    o.covered = true;
    o.transitionRoute = buildGoogleCloudDialogflowCxV3beta1TransitionRoute();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition--;
  return o;
}

void
checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition(
  api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition
  o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition <
      3) {
    unittest.expect(o.covered!, unittest.isTrue);
    checkGoogleCloudDialogflowCxV3beta1TransitionRoute(o.transitionRoute!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TypeSchema = 0;
api.GoogleCloudDialogflowCxV3beta1TypeSchema
buildGoogleCloudDialogflowCxV3beta1TypeSchema() {
  final o = api.GoogleCloudDialogflowCxV3beta1TypeSchema();
  buildCounterGoogleCloudDialogflowCxV3beta1TypeSchema++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TypeSchema < 3) {
    o.inlineSchema = buildGoogleCloudDialogflowCxV3beta1InlineSchema();
    o.schemaReference =
        buildGoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TypeSchema--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TypeSchema(
  api.GoogleCloudDialogflowCxV3beta1TypeSchema o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1TypeSchema++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TypeSchema < 3) {
    checkGoogleCloudDialogflowCxV3beta1InlineSchema(o.inlineSchema!);
    checkGoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference(
      o.schemaReference!,
    );
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TypeSchema--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference =
    0;
api.GoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference
buildGoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference() {
  final o = api.GoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference();
  buildCounterGoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference < 3) {
    o.schema = 'foo';
    o.tool = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference(
  api.GoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference < 3) {
    unittest.expect(o.schema!, unittest.equals('foo'));
    unittest.expect(o.tool!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference--;
}

core.List<core.int> buildUnnamed171() => [42, 42];

void checkUnnamed171(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1UserUtterance = 0;
api.GoogleCloudDialogflowCxV3beta1UserUtterance
buildGoogleCloudDialogflowCxV3beta1UserUtterance() {
  final o = api.GoogleCloudDialogflowCxV3beta1UserUtterance();
  buildCounterGoogleCloudDialogflowCxV3beta1UserUtterance++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1UserUtterance < 3) {
    o.audio = 'foo';
    o.audioTokens = buildUnnamed171();
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1UserUtterance--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1UserUtterance(
  api.GoogleCloudDialogflowCxV3beta1UserUtterance o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1UserUtterance++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1UserUtterance < 3) {
    unittest.expect(o.audio!, unittest.equals('foo'));
    checkUnnamed171(o.audioTokens!);
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1UserUtterance--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ValidateAgentRequest = 0;
api.GoogleCloudDialogflowCxV3beta1ValidateAgentRequest
buildGoogleCloudDialogflowCxV3beta1ValidateAgentRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1ValidateAgentRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1ValidateAgentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ValidateAgentRequest < 3) {
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ValidateAgentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ValidateAgentRequest(
  api.GoogleCloudDialogflowCxV3beta1ValidateAgentRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ValidateAgentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ValidateAgentRequest < 3) {
    unittest.expect(o.languageCode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ValidateAgentRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ValidateFlowRequest = 0;
api.GoogleCloudDialogflowCxV3beta1ValidateFlowRequest
buildGoogleCloudDialogflowCxV3beta1ValidateFlowRequest() {
  final o = api.GoogleCloudDialogflowCxV3beta1ValidateFlowRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1ValidateFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ValidateFlowRequest < 3) {
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ValidateFlowRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ValidateFlowRequest(
  api.GoogleCloudDialogflowCxV3beta1ValidateFlowRequest o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ValidateFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ValidateFlowRequest < 3) {
    unittest.expect(o.languageCode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ValidateFlowRequest--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ResourceName> buildUnnamed172() => [
  buildGoogleCloudDialogflowCxV3beta1ResourceName(),
  buildGoogleCloudDialogflowCxV3beta1ResourceName(),
];

void checkUnnamed172(
  core.List<api.GoogleCloudDialogflowCxV3beta1ResourceName> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ResourceName(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ResourceName(o[1]);
}

core.List<core.String> buildUnnamed173() => ['foo', 'foo'];

void checkUnnamed173(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ValidationMessage = 0;
api.GoogleCloudDialogflowCxV3beta1ValidationMessage
buildGoogleCloudDialogflowCxV3beta1ValidationMessage() {
  final o = api.GoogleCloudDialogflowCxV3beta1ValidationMessage();
  buildCounterGoogleCloudDialogflowCxV3beta1ValidationMessage++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ValidationMessage < 3) {
    o.detail = 'foo';
    o.resourceNames = buildUnnamed172();
    o.resourceType = 'foo';
    o.resources = buildUnnamed173();
    o.severity = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ValidationMessage--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ValidationMessage(
  api.GoogleCloudDialogflowCxV3beta1ValidationMessage o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1ValidationMessage++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ValidationMessage < 3) {
    unittest.expect(o.detail!, unittest.equals('foo'));
    checkUnnamed172(o.resourceNames!);
    unittest.expect(o.resourceType!, unittest.equals('foo'));
    checkUnnamed173(o.resources!);
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ValidationMessage--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1VariantsHistory = 0;
api.GoogleCloudDialogflowCxV3beta1VariantsHistory
buildGoogleCloudDialogflowCxV3beta1VariantsHistory() {
  final o = api.GoogleCloudDialogflowCxV3beta1VariantsHistory();
  buildCounterGoogleCloudDialogflowCxV3beta1VariantsHistory++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1VariantsHistory < 3) {
    o.updateTime = 'foo';
    o.versionVariants = buildGoogleCloudDialogflowCxV3beta1VersionVariants();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1VariantsHistory--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1VariantsHistory(
  api.GoogleCloudDialogflowCxV3beta1VariantsHistory o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1VariantsHistory++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1VariantsHistory < 3) {
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1VersionVariants(o.versionVariants!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1VariantsHistory--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Version = 0;
api.GoogleCloudDialogflowCxV3beta1Version
buildGoogleCloudDialogflowCxV3beta1Version() {
  final o = api.GoogleCloudDialogflowCxV3beta1Version();
  buildCounterGoogleCloudDialogflowCxV3beta1Version++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Version < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.nluSettings = buildGoogleCloudDialogflowCxV3beta1NluSettings();
    o.state = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Version--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Version(
  api.GoogleCloudDialogflowCxV3beta1Version o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Version++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Version < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1NluSettings(o.nluSettings!);
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Version--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1VersionVariantsVariant>
buildUnnamed174() => [
  buildGoogleCloudDialogflowCxV3beta1VersionVariantsVariant(),
  buildGoogleCloudDialogflowCxV3beta1VersionVariantsVariant(),
];

void checkUnnamed174(
  core.List<api.GoogleCloudDialogflowCxV3beta1VersionVariantsVariant> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1VersionVariantsVariant(o[0]);
  checkGoogleCloudDialogflowCxV3beta1VersionVariantsVariant(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1VersionVariants = 0;
api.GoogleCloudDialogflowCxV3beta1VersionVariants
buildGoogleCloudDialogflowCxV3beta1VersionVariants() {
  final o = api.GoogleCloudDialogflowCxV3beta1VersionVariants();
  buildCounterGoogleCloudDialogflowCxV3beta1VersionVariants++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1VersionVariants < 3) {
    o.variants = buildUnnamed174();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1VersionVariants--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1VersionVariants(
  api.GoogleCloudDialogflowCxV3beta1VersionVariants o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1VersionVariants++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1VersionVariants < 3) {
    checkUnnamed174(o.variants!);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1VersionVariants--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1VersionVariantsVariant = 0;
api.GoogleCloudDialogflowCxV3beta1VersionVariantsVariant
buildGoogleCloudDialogflowCxV3beta1VersionVariantsVariant() {
  final o = api.GoogleCloudDialogflowCxV3beta1VersionVariantsVariant();
  buildCounterGoogleCloudDialogflowCxV3beta1VersionVariantsVariant++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1VersionVariantsVariant < 3) {
    o.isControlGroup = true;
    o.trafficAllocation = 42.0;
    o.version = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1VersionVariantsVariant--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1VersionVariantsVariant(
  api.GoogleCloudDialogflowCxV3beta1VersionVariantsVariant o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1VersionVariantsVariant++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1VersionVariantsVariant < 3) {
    unittest.expect(o.isControlGroup!, unittest.isTrue);
    unittest.expect(o.trafficAllocation!, unittest.equals(42.0));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1VersionVariantsVariant--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1VoiceSelectionParams = 0;
api.GoogleCloudDialogflowCxV3beta1VoiceSelectionParams
buildGoogleCloudDialogflowCxV3beta1VoiceSelectionParams() {
  final o = api.GoogleCloudDialogflowCxV3beta1VoiceSelectionParams();
  buildCounterGoogleCloudDialogflowCxV3beta1VoiceSelectionParams++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1VoiceSelectionParams < 3) {
    o.name = 'foo';
    o.ssmlGender = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1VoiceSelectionParams--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1VoiceSelectionParams(
  api.GoogleCloudDialogflowCxV3beta1VoiceSelectionParams o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1VoiceSelectionParams++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1VoiceSelectionParams < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ssmlGender!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1VoiceSelectionParams--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Webhook = 0;
api.GoogleCloudDialogflowCxV3beta1Webhook
buildGoogleCloudDialogflowCxV3beta1Webhook() {
  final o = api.GoogleCloudDialogflowCxV3beta1Webhook();
  buildCounterGoogleCloudDialogflowCxV3beta1Webhook++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Webhook < 3) {
    o.disabled = true;
    o.displayName = 'foo';
    o.genericWebService =
        buildGoogleCloudDialogflowCxV3beta1WebhookGenericWebService();
    o.name = 'foo';
    o.serviceDirectory =
        buildGoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig();
    o.timeout = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Webhook--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Webhook(
  api.GoogleCloudDialogflowCxV3beta1Webhook o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1Webhook++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Webhook < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1WebhookGenericWebService(
      o.genericWebService!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig(
      o.serviceDirectory!,
    );
    unittest.expect(o.timeout!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Webhook--;
}

core.List<core.String> buildUnnamed175() => ['foo', 'foo'];

void checkUnnamed175(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed176() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed176(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed177() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed177(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<
  core.String,
  api.GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue
>
buildUnnamed178() => {
  'x':
      buildGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue(),
  'y':
      buildGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue(),
};

void checkUnnamed178(
  core.Map<
    core.String,
    api.GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue(
    o['x']!,
  );
  checkGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue(
    o['y']!,
  );
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebService = 0;
api.GoogleCloudDialogflowCxV3beta1WebhookGenericWebService
buildGoogleCloudDialogflowCxV3beta1WebhookGenericWebService() {
  final o = api.GoogleCloudDialogflowCxV3beta1WebhookGenericWebService();
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebService++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebService < 3) {
    o.allowedCaCerts = buildUnnamed175();
    o.httpMethod = 'foo';
    o.oauthConfig =
        buildGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig();
    o.parameterMapping = buildUnnamed176();
    o.password = 'foo';
    o.requestBody = 'foo';
    o.requestHeaders = buildUnnamed177();
    o.secretVersionForUsernamePassword = 'foo';
    o.secretVersionsForRequestHeaders = buildUnnamed178();
    o.serviceAgentAuth = 'foo';
    o.uri = 'foo';
    o.username = 'foo';
    o.webhookType = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebService--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1WebhookGenericWebService(
  api.GoogleCloudDialogflowCxV3beta1WebhookGenericWebService o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebService++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebService < 3) {
    checkUnnamed175(o.allowedCaCerts!);
    unittest.expect(o.httpMethod!, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig(
      o.oauthConfig!,
    );
    checkUnnamed176(o.parameterMapping!);
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.requestBody!, unittest.equals('foo'));
    checkUnnamed177(o.requestHeaders!);
    unittest.expect(
      o.secretVersionForUsernamePassword!,
      unittest.equals('foo'),
    );
    checkUnnamed178(o.secretVersionsForRequestHeaders!);
    unittest.expect(o.serviceAgentAuth!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
    unittest.expect(o.webhookType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebService--;
}

core.List<core.String> buildUnnamed179() => ['foo', 'foo'];

void checkUnnamed179(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig =
    0;
api.GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig
buildGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig <
      3) {
    o.clientId = 'foo';
    o.clientSecret = 'foo';
    o.scopes = buildUnnamed179();
    o.secretVersionForClientSecret = 'foo';
    o.tokenEndpoint = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig(
  api.GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig <
      3) {
    unittest.expect(o.clientId!, unittest.equals('foo'));
    unittest.expect(o.clientSecret!, unittest.equals('foo'));
    checkUnnamed179(o.scopes!);
    unittest.expect(o.secretVersionForClientSecret!, unittest.equals('foo'));
    unittest.expect(o.tokenEndpoint!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue =
    0;
api.GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue
buildGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue() {
  final o =
      api.GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue();
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue <
      3) {
    o.secretVersion = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue--;
  return o;
}

void
checkGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue(
  api.GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue
  o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue <
      3) {
    unittest.expect(o.secretVersion!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue--;
}

core.int
buildCounterGoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig = 0;
api.GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig
buildGoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig() {
  final o = api.GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig <
      3) {
    o.genericWebService =
        buildGoogleCloudDialogflowCxV3beta1WebhookGenericWebService();
    o.service = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig(
  api.GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig o,
) {
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig <
      3) {
    checkGoogleCloudDialogflowCxV3beta1WebhookGenericWebService(
      o.genericWebService!,
    );
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig--;
}

core.List<api.GoogleCloudLocationLocation> buildUnnamed180() => [
  buildGoogleCloudLocationLocation(),
  buildGoogleCloudLocationLocation(),
];

void checkUnnamed180(core.List<api.GoogleCloudLocationLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudLocationLocation(o[0]);
  checkGoogleCloudLocationLocation(o[1]);
}

core.int buildCounterGoogleCloudLocationListLocationsResponse = 0;
api.GoogleCloudLocationListLocationsResponse
buildGoogleCloudLocationListLocationsResponse() {
  final o = api.GoogleCloudLocationListLocationsResponse();
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    o.locations = buildUnnamed180();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
  return o;
}

void checkGoogleCloudLocationListLocationsResponse(
  api.GoogleCloudLocationListLocationsResponse o,
) {
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    checkUnnamed180(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed181() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed181(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed182() => {
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

void checkUnnamed182(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted62 = (o['x']!) as core.Map;
  unittest.expect(casted62, unittest.hasLength(3));
  unittest.expect(casted62['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted62['bool'], unittest.equals(true));
  unittest.expect(casted62['string'], unittest.equals('foo'));
  var casted63 = (o['y']!) as core.Map;
  unittest.expect(casted63, unittest.hasLength(3));
  unittest.expect(casted63['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted63['bool'], unittest.equals(true));
  unittest.expect(casted63['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudLocationLocation = 0;
api.GoogleCloudLocationLocation buildGoogleCloudLocationLocation() {
  final o = api.GoogleCloudLocationLocation();
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed181();
    o.locationId = 'foo';
    o.metadata = buildUnnamed182();
    o.name = 'foo';
  }
  buildCounterGoogleCloudLocationLocation--;
  return o;
}

void checkGoogleCloudLocationLocation(api.GoogleCloudLocationLocation o) {
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed181(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed182(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudLocationLocation--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed183() => [
  buildGoogleLongrunningOperation(),
  buildGoogleLongrunningOperation(),
];

void checkUnnamed183(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed183();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
  api.GoogleLongrunningListOperationsResponse o,
) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed183(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed184() => {
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

void checkUnnamed184(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted64 = (o['x']!) as core.Map;
  unittest.expect(casted64, unittest.hasLength(3));
  unittest.expect(casted64['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted64['bool'], unittest.equals(true));
  unittest.expect(casted64['string'], unittest.equals('foo'));
  var casted65 = (o['y']!) as core.Map;
  unittest.expect(casted65, unittest.hasLength(3));
  unittest.expect(casted65['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted65['bool'], unittest.equals(true));
  unittest.expect(casted65['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed185() => {
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

void checkUnnamed185(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted66 = (o['x']!) as core.Map;
  unittest.expect(casted66, unittest.hasLength(3));
  unittest.expect(casted66['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted66['bool'], unittest.equals(true));
  unittest.expect(casted66['string'], unittest.equals('foo'));
  var casted67 = (o['y']!) as core.Map;
  unittest.expect(casted67, unittest.hasLength(3));
  unittest.expect(casted67['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted67['bool'], unittest.equals(true));
  unittest.expect(casted67['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed184();
    o.name = 'foo';
    o.response = buildUnnamed185();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed184(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed185(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

core.Map<core.String, core.Object?> buildUnnamed186() => {
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

void checkUnnamed186(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted68 = (o['x']!) as core.Map;
  unittest.expect(casted68, unittest.hasLength(3));
  unittest.expect(casted68['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted68['bool'], unittest.equals(true));
  unittest.expect(casted68['string'], unittest.equals('foo'));
  var casted69 = (o['y']!) as core.Map;
  unittest.expect(casted69, unittest.hasLength(3));
  unittest.expect(casted69['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted69['bool'], unittest.equals(true));
  unittest.expect(casted69['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed187() => [
  buildUnnamed186(),
  buildUnnamed186(),
];

void checkUnnamed187(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed186(o[0]);
  checkUnnamed186(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed187();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed187(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeLatLng = 0;
api.GoogleTypeLatLng buildGoogleTypeLatLng() {
  final o = api.GoogleTypeLatLng();
  buildCounterGoogleTypeLatLng++;
  if (buildCounterGoogleTypeLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterGoogleTypeLatLng--;
  return o;
}

void checkGoogleTypeLatLng(api.GoogleTypeLatLng o) {
  buildCounterGoogleTypeLatLng++;
  if (buildCounterGoogleTypeLatLng < 3) {
    unittest.expect(o.latitude!, unittest.equals(42.0));
    unittest.expect(o.longitude!, unittest.equals(42.0));
  }
  buildCounterGoogleTypeLatLng--;
}

core.List<core.String> buildUnnamed188() => ['foo', 'foo'];

void checkUnnamed188(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Action', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Action();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Action.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Action(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdate(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdateFunctionCall(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ActionFlowStateUpdatePageState(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ActionIntentMatch',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ActionIntentMatch();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1ActionIntentMatch.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ActionIntentMatch(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ActionIntentMatchMatchedIntent(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1ActionSTT', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1ActionSTT();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1ActionSTT.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1ActionSTT(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1ActionTTS', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1ActionTTS();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1ActionTTS.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1ActionTTS(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1AdvancedSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1AdvancedSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1AdvancedSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1AdvancedSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1AdvancedSettingsSpeechSettings(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Agent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Agent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Agent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Agent(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1AgentClientCertificateSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGitConnectionSettings(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1AgentPersonalizationSettings(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1AgentUtterance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1AgentUtterance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1AgentUtterance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1AgentUtterance(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1AgentValidationResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1AgentValidationResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1AgentValidationResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1AgentValidationResult(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1AnswerFeedback', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1AnswerFeedback();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1AnswerFeedback.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1AnswerFeedback(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1AnswerFeedbackRatingReason(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1AudioInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1AudioInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1AudioInput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1AudioInput(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1BargeInConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1BargeInConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1BargeInConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1BargeInConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1BigQueryExportSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1BigQueryExportSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1BigQueryExportSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1BigQueryExportSettings(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1BoostSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1BoostSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1BoostSpec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1BoostSpec(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpec(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1BoostSpecConditionBoostSpecBoostControlSpecControlPoint(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1BoostSpecs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1BoostSpecs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1BoostSpecs.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1BoostSpecs(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1CalculateCoverageResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1CalculateCoverageResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Changelog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Changelog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Changelog.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Changelog(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1CompareVersionsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1CompareVersionsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1CompareVersionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1CompareVersionsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1CompareVersionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1CompareVersionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1CompareVersionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1CompareVersionsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ContinuousTestResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ContinuousTestResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ContinuousTestResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ContinuousTestResult(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Conversation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Conversation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Conversation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Conversation(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ConversationInteraction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ConversationInteraction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ConversationInteraction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ConversationInteraction(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ConversationInteractionMissingTransition(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ConversationInteractionStepMetrics(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ConversationMetrics',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ConversationMetrics();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ConversationMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ConversationMetrics(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ConversationMetricsMatchTypeCount(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ConversationMetricsQueryInputCount(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ConversationTurn',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ConversationTurn();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1ConversationTurn.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ConversationTurn(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1DataStoreConnection',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1DataStoreConnection();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1DataStoreConnection.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1DataStoreConnection(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignals(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerGenerationModelCallSignals(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsAnswerPart(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsCitedSnippet(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsGroundingSignals(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsRewriterModelCallSignals(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSafetySignals(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1DataStoreConnectionSignalsSearchSnippet(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1DeployFlowRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1DeployFlowRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1DeployFlowRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1DeployFlowRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Deployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Deployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Deployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Deployment(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1DeploymentResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1DeploymentResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1DeploymentResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1DeploymentResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1DetectIntentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1DetectIntentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1DetectIntentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1DetectIntentRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1DetectIntentResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1DetectIntentResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1DetectIntentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1DetectIntentResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1DtmfInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1DtmfInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1DtmfInput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1DtmfInput(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1EntityType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1EntityType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1EntityType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1EntityType(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1EntityTypeEntity',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1EntityTypeEntity();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1EntityTypeEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1EntityTypeEntity(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Environment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Environment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Environment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Environment(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Event', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Event();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Event.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Event(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1EventHandler', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1EventHandler();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1EventHandler.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1EventHandler(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1EventInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1EventInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1EventInput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1EventInput(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Example', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Example();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Example.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Example(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ExceptionDetail',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ExceptionDetail();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1ExceptionDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ExceptionDetail(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Experiment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Experiment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Experiment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Experiment(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ExperimentDefinition',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ExperimentDefinition();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ExperimentDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ExperimentDefinition(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ExperimentResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ExperimentResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1ExperimentResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ExperimentResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ExperimentResultMetric',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ExperimentResultMetric();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ExperimentResultMetric.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ExperimentResultMetric(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ExportAgentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ExportAgentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ExportAgentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ExportAgentRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ExportAgentRequestGitDestination(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ExportFlowRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ExportFlowRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1ExportFlowRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ExportFlowRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ExportIntentsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ExportIntentsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ExportIntentsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ExportIntentsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ExportPlaybookRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ExportPlaybookRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ExportPlaybookRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ExportPlaybookRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ExportTestCasesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ExportTestCasesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ExportTestCasesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ExportTestCasesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ExportToolsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ExportToolsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ExportToolsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ExportToolsRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1FilterSpecs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1FilterSpecs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1FilterSpecs.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1FilterSpecs(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Flow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Flow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Flow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Flow(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1FlowImportStrategy',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1FlowImportStrategy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1FlowImportStrategy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1FlowImportStrategy(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1FlowInvocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1FlowInvocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1FlowInvocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1FlowInvocation(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1FlowMultiLanguageSettings(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1FlowTransition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1FlowTransition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1FlowTransition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1FlowTransition(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1FlowValidationResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1FlowValidationResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1FlowValidationResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1FlowValidationResult(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Form', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Form();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Form.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Form(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1FormParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1FormParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1FormParameter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1FormParameter(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1FulfillIntentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1FulfillIntentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1FulfillIntentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1FulfillIntentRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1FulfillIntentResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1FulfillIntentResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1FulfillIntentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1FulfillIntentResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Fulfillment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Fulfillment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Fulfillment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Fulfillment(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1FulfillmentGeneratorSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1GcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1GcsDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1GcsDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1GenerativeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1GenerativeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1GenerativeInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1GenerativeInfo(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1GenerativeSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1GenerativeSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1GenerativeSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1GenerativeSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettings(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1GenerativeSettingsFallbackSettingsPromptTemplate(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1GenerativeSettingsKnowledgeConnectorSettings(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Generator', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Generator();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Generator.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Generator(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1GeneratorModelParameter',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1GeneratorModelParameter();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1GeneratorModelParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1GeneratorModelParameter(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1GeneratorPlaceholder',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1GeneratorPlaceholder();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1GeneratorPlaceholder.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1GeneratorPlaceholder(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Handler', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Handler();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Handler.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Handler(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1HandlerEventHandler',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1HandlerEventHandler();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1HandlerEventHandler.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1HandlerEventHandler(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1HandlerLifecycleHandler(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ImportFlowRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ImportFlowRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1ImportFlowRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ImportFlowRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ImportIntentsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ImportIntentsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ImportIntentsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ImportIntentsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ImportPlaybookRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ImportPlaybookRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ImportPlaybookRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ImportPlaybookRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ImportTestCasesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ImportTestCasesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ImportTestCasesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ImportTestCasesRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1InlineSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1InlineSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1InlineSchema.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1InlineSchema(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1InlineSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1InlineSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1InlineSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1InlineSource(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1InputAudioConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1InputAudioConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1InputAudioConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1InputAudioConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Intent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Intent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Intent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Intent(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1IntentCoverage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1IntentCoverage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1IntentCoverage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1IntentCoverage(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1IntentCoverageIntent',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1IntentCoverageIntent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1IntentCoverageIntent.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1IntentCoverageIntent(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1IntentInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1IntentInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1IntentInput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1IntentInput(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1IntentParameter',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1IntentParameter();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1IntentParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1IntentParameter(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListAgentsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ListAgentsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListAgentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListAgentsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListChangelogsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ListChangelogsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListChangelogsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListChangelogsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListConversationsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ListConversationsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListConversationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListConversationsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ListDeploymentsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListDeploymentsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ListEntityTypesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListEntityTypesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListExamplesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ListExamplesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListExamplesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListExamplesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListExperimentsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ListExperimentsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListExperimentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListExperimentsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListFlowsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ListFlowsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1ListFlowsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListFlowsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ListGeneratorsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListGeneratorsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListIntentsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ListIntentsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListIntentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListIntentsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListPagesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ListPagesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1ListPagesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListPagesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ListPlaybooksResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListPlaybooksResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListTestCasesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ListTestCasesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListTestCasesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListTestCasesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ListToolVersionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListToolVersionsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListToolsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ListToolsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1ListToolsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListToolsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListVersionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ListVersionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListVersionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListVersionsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ListWebhooksResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ListWebhooksResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ListWebhooksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ListWebhooksResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1LlmCall', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1LlmCall();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1LlmCall.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1LlmCall(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1LlmCallRetrievedExample(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1LlmCallTokenCount',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1LlmCallTokenCount();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1LlmCallTokenCount.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1LlmCallTokenCount(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1LlmModelSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1LlmModelSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1LlmModelSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1LlmModelSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1LoadVersionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1LoadVersionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1LoadVersionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1LoadVersionRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Match', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Match();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Match.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Match(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1MatchIntentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1MatchIntentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1MatchIntentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1MatchIntentRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1MatchIntentResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1MatchIntentResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1MatchIntentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1MatchIntentResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1NamedMetric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1NamedMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1NamedMetric.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1NamedMetric(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1NluSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1NluSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1NluSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1NluSettings(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1OutputAudioConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1OutputAudioConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1OutputAudioConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1OutputAudioConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Page', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Page();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Page.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Page(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ParameterDefinition',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ParameterDefinition();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ParameterDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ParameterDefinition(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Phrase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Phrase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Phrase.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Phrase(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Playbook', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Playbook();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Playbook.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Playbook(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1PlaybookImportStrategy',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1PlaybookImportStrategy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1PlaybookImportStrategy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1PlaybookImportStrategy(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1PlaybookInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1PlaybookInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1PlaybookInput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1PlaybookInput(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1PlaybookInstruction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1PlaybookInstruction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1PlaybookInstruction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1PlaybookInstruction(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1PlaybookInvocation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1PlaybookInvocation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1PlaybookInvocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1PlaybookInvocation(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1PlaybookOutput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1PlaybookOutput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1PlaybookOutput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1PlaybookOutput(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1PlaybookStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1PlaybookStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1PlaybookStep.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1PlaybookStep(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1PlaybookTransition',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1PlaybookTransition();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1PlaybookTransition.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1PlaybookTransition(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1PlaybookVersion',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1PlaybookVersion();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1PlaybookVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1PlaybookVersion(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1QueryInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1QueryInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1QueryInput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1QueryInput(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1QueryParameters',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1QueryParameters();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1QueryParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1QueryParameters(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1QueryResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1QueryResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1QueryResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1QueryResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1ResourceName', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1ResourceName();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1ResourceName.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1ResourceName(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessage',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ResponseMessage();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1ResponseMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ResponseMessage(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ResponseMessageKnowledgeInfoCard(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageText',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ResponseMessageText();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ResponseMessageText.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ResponseMessageText(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1RestoreAgentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1RestoreAgentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1RestoreAgentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1RestoreAgentRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1RestoreAgentRequestGitSource(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1RolloutConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1RolloutConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1RolloutConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1RolloutConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1RolloutState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1RolloutState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1RolloutState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1RolloutState(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1RunContinuousTestRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1RunContinuousTestRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1RunContinuousTestRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1RunContinuousTestRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1RunTestCaseRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1RunTestCaseRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1RunTestCaseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1RunTestCaseRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1SafetySettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1SafetySettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1SafetySettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1SafetySettings(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1SafetySettingsPhrase',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1SafetySettingsPhrase();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1SafetySettingsPhrase.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1SafetySettingsPhrase(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1SafetySettingsPromptSecuritySettings(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1SearchConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1SearchConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1SearchConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1SearchConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1SecuritySettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1SecuritySettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1SecuritySettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1SecuritySettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1SentimentAnalysisResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1SentimentAnalysisResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1SessionEntityType',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1SessionEntityType();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1SessionEntityType.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1SessionEntityType(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Span', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Span();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Span.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Span(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1SpeechToTextSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1SpeechToTextSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1SpeechToTextSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1SpeechToTextSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1StartExperimentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1StartExperimentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1StartExperimentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1StartExperimentRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Status();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Status.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Status(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1StopExperimentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1StopExperimentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1StopExperimentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1StopExperimentRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1TestCase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1TestCase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1TestCase.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1TestCase(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1TestCaseResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1TestCaseResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1TestCaseResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1TestCaseResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1TestConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1TestConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1TestConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1TestConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1TestRunDifference',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1TestRunDifference();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1TestRunDifference.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1TestRunDifference(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1TextInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1TextInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1TextInput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1TextInput(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1TextToSpeechSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1TextToSpeechSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1TextToSpeechSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1TextToSpeechSettings(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Tool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Tool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Tool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Tool(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolAuthentication',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ToolAuthentication();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ToolAuthentication.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolAuthentication(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolAuthenticationApiKeyConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolAuthenticationBearerTokenConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolAuthenticationOAuthConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolAuthenticationServiceAgentAuthConfig(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1ToolCall', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1ToolCall();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1ToolCall.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1ToolCall(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1ToolCallResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1ToolCallResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1ToolCallResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1ToolCallResult(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolCallResultError',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ToolCallResultError();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ToolCallResultError.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolCallResultError(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolConnectorTool',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ToolConnectorTool();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1ToolConnectorTool.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolConnectorTool(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolConnectorToolAction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ToolConnectorToolAction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ToolConnectorToolAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolConnectorToolAction(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolConnectorToolActionEntityOperation(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolDataStoreTool',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ToolDataStoreTool();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1ToolDataStoreTool.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolDataStoreTool(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolDataStoreToolFallbackPrompt(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2AuthCodeConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolEndUserAuthConfigOauth2JwtBearerConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolExtensionTool',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ToolExtensionTool();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1ToolExtensionTool.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolExtensionTool(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolFunctionTool',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ToolFunctionTool();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1ToolFunctionTool.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolFunctionTool(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolOpenApiTool',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ToolOpenApiTool();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1ToolOpenApiTool.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolOpenApiTool(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolServiceDirectoryConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1ToolTLSConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1ToolTLSConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1ToolTLSConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1ToolTLSConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolTLSConfigCACert(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1ToolUse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1ToolUse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1ToolUse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1ToolUse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolUseDataStoreToolTrace(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ToolUseWebhookToolTrace(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1ToolVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1ToolVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1ToolVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1ToolVersion(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1TrainFlowRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1TrainFlowRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1TrainFlowRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1TrainFlowRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1TransitionCoverage',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1TransitionCoverage();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1TransitionCoverage.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1TransitionCoverage(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1TransitionCoverageTransition',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1TransitionCoverageTransition();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1TransitionCoverageTransition.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1TransitionCoverageTransition(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1TransitionRoute',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1TransitionRoute();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1TransitionRoute.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1TransitionRoute(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1TransitionRouteGroup',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroup();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1TransitionRouteGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1TypeSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1TypeSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1TypeSchema.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1TypeSchema(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1TypeSchemaSchemaReference(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1UserUtterance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1UserUtterance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1UserUtterance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1UserUtterance(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ValidateAgentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ValidateAgentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ValidateAgentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ValidateAgentRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ValidateFlowRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ValidateFlowRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1ValidateFlowRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ValidateFlowRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1ValidationMessage',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1ValidationMessage();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1ValidationMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1ValidationMessage(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1VariantsHistory',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1VariantsHistory();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1VariantsHistory.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1VariantsHistory(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Version', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Version();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Version.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Version(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1VersionVariants',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1VersionVariants();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDialogflowCxV3beta1VersionVariants.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1VersionVariants(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1VersionVariantsVariant',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1VersionVariantsVariant();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1VersionVariantsVariant.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1VersionVariantsVariant(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1VoiceSelectionParams',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1VoiceSelectionParams();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1VoiceSelectionParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1VoiceSelectionParams(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Webhook', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3beta1Webhook();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3beta1Webhook.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDialogflowCxV3beta1Webhook(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1WebhookGenericWebService',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDialogflowCxV3beta1WebhookGenericWebService();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1WebhookGenericWebService.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1WebhookGenericWebService(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceSecretVersionHeaderValue(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudLocationListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudLocationListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudLocationLocation(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeLatLng', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeLatLng();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeLatLng.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeLatLng(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleCloudLocationLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudLocationLocation(
        response as api.GoogleCloudLocationLocation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed188();
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudLocationListLocationsResponse(),
          );
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
      checkGoogleCloudLocationListLocationsResponse(
        response as api.GoogleCloudLocationListLocationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Agent();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Agent.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Agent(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Agent(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Agent(
        response as api.GoogleCloudDialogflowCxV3beta1Agent,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1ExportAgentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1ExportAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1ExportAgentRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.export(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Agent(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3beta1Agent(
        response as api.GoogleCloudDialogflowCxV3beta1Agent,
      );
    });

    unittest.test('method--getGenerativeSettings', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1GenerativeSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getGenerativeSettings(
        arg_name,
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1GenerativeSettings(
        response as api.GoogleCloudDialogflowCxV3beta1GenerativeSettings,
      );
    });

    unittest.test('method--getValidationResult', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1AgentValidationResult(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getValidationResult(
        arg_name,
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1AgentValidationResult(
        response as api.GoogleCloudDialogflowCxV3beta1AgentValidationResult,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
      final arg_parent = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListAgentsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListAgentsResponse(
        response as api.GoogleCloudDialogflowCxV3beta1ListAgentsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Agent();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Agent.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Agent(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Agent(),
          );
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
      checkGoogleCloudDialogflowCxV3beta1Agent(
        response as api.GoogleCloudDialogflowCxV3beta1Agent,
      );
    });

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1RestoreAgentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1RestoreAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1RestoreAgentRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.restore(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--updateGenerativeSettings', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1GenerativeSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1GenerativeSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1GenerativeSettings(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1GenerativeSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateGenerativeSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1GenerativeSettings(
        response as api.GoogleCloudDialogflowCxV3beta1GenerativeSettings,
      );
    });

    unittest.test('method--validate', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1ValidateAgentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1ValidateAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1ValidateAgentRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1AgentValidationResult(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.validate(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1AgentValidationResult(
        response as api.GoogleCloudDialogflowCxV3beta1AgentValidationResult,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsChangelogsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.changelogs;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Changelog(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3beta1Changelog(
        response as api.GoogleCloudDialogflowCxV3beta1Changelog,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.changelogs;
      final arg_parent = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListChangelogsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListChangelogsResponse(
        response as api.GoogleCloudDialogflowCxV3beta1ListChangelogsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsConversationsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.conversations;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.conversations;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Conversation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3beta1Conversation(
        response as api.GoogleCloudDialogflowCxV3beta1Conversation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.conversations;
      final arg_parent = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListConversationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListConversationsResponse(
        response as api.GoogleCloudDialogflowCxV3beta1ListConversationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsEntityTypesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.entityTypes;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1EntityType();
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1EntityType.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1EntityType(obj);

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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1EntityType(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1EntityType(
        response as api.GoogleCloudDialogflowCxV3beta1EntityType,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.entityTypes;
      final arg_name = 'foo';
      final arg_force = true;
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
            unittest.equals('v3beta1/'),
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.entityTypes;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1ExportEntityTypesRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.export(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.entityTypes;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1EntityType(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1EntityType(
        response as api.GoogleCloudDialogflowCxV3beta1EntityType,
      );
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.entityTypes;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1ImportEntityTypesRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.import(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.entityTypes;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListEntityTypesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        languageCode: arg_languageCode,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListEntityTypesResponse(
        response as api.GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.entityTypes;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1EntityType();
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1EntityType.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1EntityType(obj);

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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1EntityType(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        languageCode: arg_languageCode,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1EntityType(
        response as api.GoogleCloudDialogflowCxV3beta1EntityType,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsEnvironmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.environments;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Environment();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Environment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Environment(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.environments;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--deployFlow', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.environments;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1DeployFlowRequest();
      final arg_environment = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1DeployFlowRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1DeployFlowRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.deployFlow(
        arg_request,
        arg_environment,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.environments;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Environment(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3beta1Environment(
        response as api.GoogleCloudDialogflowCxV3beta1Environment,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.environments;
      final arg_parent = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse(
        response as api.GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse,
      );
    });

    unittest.test('method--lookupEnvironmentHistory', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.environments;
      final arg_name = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.lookupEnvironmentHistory(
        arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse(
        response
            as api.GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.environments;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Environment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Environment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Environment(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
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
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--runContinuousTest', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.environments;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1RunContinuousTestRequest();
      final arg_environment = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1RunContinuousTestRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1RunContinuousTestRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.runContinuousTest(
        arg_request,
        arg_environment,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsAgentsEnvironmentsContinuousTestResultsResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.DialogflowApi(
              mock,
            ).projects.locations.agents.environments.continuousTestResults;
        final arg_parent = 'foo';
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
              unittest.equals('v3beta1/'),
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
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkGoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse(
          response
              as api.GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse,
        );
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsAgentsEnvironmentsDeploymentsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.DialogflowApi(
              mock,
            ).projects.locations.agents.environments.deployments;
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
              unittest.equals('v3beta1/'),
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
            final resp = convert.json.encode(
              buildGoogleCloudDialogflowCxV3beta1Deployment(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleCloudDialogflowCxV3beta1Deployment(
          response as api.GoogleCloudDialogflowCxV3beta1Deployment,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.DialogflowApi(
              mock,
            ).projects.locations.agents.environments.deployments;
        final arg_parent = 'foo';
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
              unittest.equals('v3beta1/'),
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
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudDialogflowCxV3beta1ListDeploymentsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkGoogleCloudDialogflowCxV3beta1ListDeploymentsResponse(
          response as api.GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsAgentsEnvironmentsExperimentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.environments.experiments;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Experiment();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Experiment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Experiment(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Experiment(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Experiment(
        response as api.GoogleCloudDialogflowCxV3beta1Experiment,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.environments.experiments;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.environments.experiments;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Experiment(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3beta1Experiment(
        response as api.GoogleCloudDialogflowCxV3beta1Experiment,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.environments.experiments;
      final arg_parent = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListExperimentsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListExperimentsResponse(
        response as api.GoogleCloudDialogflowCxV3beta1ListExperimentsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.environments.experiments;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Experiment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Experiment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Experiment(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Experiment(),
          );
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
      checkGoogleCloudDialogflowCxV3beta1Experiment(
        response as api.GoogleCloudDialogflowCxV3beta1Experiment,
      );
    });

    unittest.test('method--start', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.environments.experiments;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1StartExperimentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1StartExperimentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1StartExperimentRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Experiment(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.start(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Experiment(
        response as api.GoogleCloudDialogflowCxV3beta1Experiment,
      );
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.environments.experiments;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1StopExperimentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1StopExperimentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1StopExperimentRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Experiment(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.stop(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Experiment(
        response as api.GoogleCloudDialogflowCxV3beta1Experiment,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsEnvironmentsSessionsResource', () {
    unittest.test('method--detectIntent', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.environments.sessions;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1DetectIntentRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1DetectIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1DetectIntentRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1DetectIntentResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.detectIntent(
        arg_request,
        arg_session,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1DetectIntentResponse(
        response as api.GoogleCloudDialogflowCxV3beta1DetectIntentResponse,
      );
    });

    unittest.test('method--fulfillIntent', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.environments.sessions;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1FulfillIntentRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1FulfillIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1FulfillIntentRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1FulfillIntentResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fulfillIntent(
        arg_request,
        arg_session,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1FulfillIntentResponse(
        response as api.GoogleCloudDialogflowCxV3beta1FulfillIntentResponse,
      );
    });

    unittest.test('method--matchIntent', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.environments.sessions;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1MatchIntentRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1MatchIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1MatchIntentRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1MatchIntentResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.matchIntent(
        arg_request,
        arg_session,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1MatchIntentResponse(
        response as api.GoogleCloudDialogflowCxV3beta1MatchIntentResponse,
      );
    });

    unittest.test('method--serverStreamingDetectIntent', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.environments.sessions;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1DetectIntentRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1DetectIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1DetectIntentRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1DetectIntentResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.serverStreamingDetectIntent(
        arg_request,
        arg_session,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1DetectIntentResponse(
        response as api.GoogleCloudDialogflowCxV3beta1DetectIntentResponse,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesResource',
    () {
      unittest.test('method--create', () async {
        final mock = HttpServerMock();
        final res =
            api.DialogflowApi(
              mock,
            ).projects.locations.agents.environments.sessions.entityTypes;
        final arg_request =
            buildGoogleCloudDialogflowCxV3beta1SessionEntityType();
        final arg_parent = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api
                .GoogleCloudDialogflowCxV3beta1SessionEntityType.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkGoogleCloudDialogflowCxV3beta1SessionEntityType(obj);

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
              unittest.equals('v3beta1/'),
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
            final resp = convert.json.encode(
              buildGoogleCloudDialogflowCxV3beta1SessionEntityType(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.create(
          arg_request,
          arg_parent,
          $fields: arg_$fields,
        );
        checkGoogleCloudDialogflowCxV3beta1SessionEntityType(
          response as api.GoogleCloudDialogflowCxV3beta1SessionEntityType,
        );
      });

      unittest.test('method--delete', () async {
        final mock = HttpServerMock();
        final res =
            api.DialogflowApi(
              mock,
            ).projects.locations.agents.environments.sessions.entityTypes;
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
              unittest.equals('v3beta1/'),
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
            final resp = convert.json.encode(buildGoogleProtobufEmpty());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.delete(arg_name, $fields: arg_$fields);
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.DialogflowApi(
              mock,
            ).projects.locations.agents.environments.sessions.entityTypes;
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
              unittest.equals('v3beta1/'),
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
            final resp = convert.json.encode(
              buildGoogleCloudDialogflowCxV3beta1SessionEntityType(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleCloudDialogflowCxV3beta1SessionEntityType(
          response as api.GoogleCloudDialogflowCxV3beta1SessionEntityType,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.DialogflowApi(
              mock,
            ).projects.locations.agents.environments.sessions.entityTypes;
        final arg_parent = 'foo';
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
              unittest.equals('v3beta1/'),
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
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkGoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse(
          response
              as api.GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse,
        );
      });

      unittest.test('method--patch', () async {
        final mock = HttpServerMock();
        final res =
            api.DialogflowApi(
              mock,
            ).projects.locations.agents.environments.sessions.entityTypes;
        final arg_request =
            buildGoogleCloudDialogflowCxV3beta1SessionEntityType();
        final arg_name = 'foo';
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api
                .GoogleCloudDialogflowCxV3beta1SessionEntityType.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkGoogleCloudDialogflowCxV3beta1SessionEntityType(obj);

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
              unittest.equals('v3beta1/'),
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
            final resp = convert.json.encode(
              buildGoogleCloudDialogflowCxV3beta1SessionEntityType(),
            );
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
        checkGoogleCloudDialogflowCxV3beta1SessionEntityType(
          response as api.GoogleCloudDialogflowCxV3beta1SessionEntityType,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsAgentsFlowsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Flow();
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Flow.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Flow(obj);

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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Flow(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Flow(
        response as api.GoogleCloudDialogflowCxV3beta1Flow,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_name = 'foo';
      final arg_force = true;
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
            unittest.equals('v3beta1/'),
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1ExportFlowRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1ExportFlowRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1ExportFlowRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.export(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Flow(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Flow(
        response as api.GoogleCloudDialogflowCxV3beta1Flow,
      );
    });

    unittest.test('method--getValidationResult', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1FlowValidationResult(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getValidationResult(
        arg_name,
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1FlowValidationResult(
        response as api.GoogleCloudDialogflowCxV3beta1FlowValidationResult,
      );
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1ImportFlowRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1ImportFlowRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1ImportFlowRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.import(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListFlowsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        languageCode: arg_languageCode,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListFlowsResponse(
        response as api.GoogleCloudDialogflowCxV3beta1ListFlowsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Flow();
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Flow.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Flow(obj);

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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Flow(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        languageCode: arg_languageCode,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Flow(
        response as api.GoogleCloudDialogflowCxV3beta1Flow,
      );
    });

    unittest.test('method--train', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1TrainFlowRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1TrainFlowRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1TrainFlowRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.train(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--validate', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1ValidateFlowRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1ValidateFlowRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1ValidateFlowRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1FlowValidationResult(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.validate(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1FlowValidationResult(
        response as api.GoogleCloudDialogflowCxV3beta1FlowValidationResult,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsFlowsPagesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows.pages;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Page();
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Page.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Page(obj);

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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Page(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Page(
        response as api.GoogleCloudDialogflowCxV3beta1Page,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows.pages;
      final arg_name = 'foo';
      final arg_force = true;
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
            unittest.equals('v3beta1/'),
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows.pages;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Page(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Page(
        response as api.GoogleCloudDialogflowCxV3beta1Page,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows.pages;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListPagesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        languageCode: arg_languageCode,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListPagesResponse(
        response as api.GoogleCloudDialogflowCxV3beta1ListPagesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows.pages;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Page();
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Page.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Page(obj);

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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Page(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        languageCode: arg_languageCode,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Page(
        response as api.GoogleCloudDialogflowCxV3beta1Page,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsFlowsTransitionRouteGroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.flows.transitionRouteGroups;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroup();
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1TransitionRouteGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(obj);

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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(
        response as api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroup,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.flows.transitionRouteGroups;
      final arg_name = 'foo';
      final arg_force = true;
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
            unittest.equals('v3beta1/'),
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.flows.transitionRouteGroups;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(
        response as api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroup,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.flows.transitionRouteGroups;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        languageCode: arg_languageCode,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse(
        response
            as api.GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.flows.transitionRouteGroups;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroup();
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1TransitionRouteGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(obj);

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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        languageCode: arg_languageCode,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(
        response as api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroup,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsFlowsVersionsResource', () {
    unittest.test('method--compareVersions', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1CompareVersionsRequest();
      final arg_baseVersion = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1CompareVersionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1CompareVersionsRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1CompareVersionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.compareVersions(
        arg_request,
        arg_baseVersion,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1CompareVersionsResponse(
        response as api.GoogleCloudDialogflowCxV3beta1CompareVersionsResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Version();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Version.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Version(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Version(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3beta1Version(
        response as api.GoogleCloudDialogflowCxV3beta1Version,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
      final arg_parent = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListVersionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListVersionsResponse(
        response as api.GoogleCloudDialogflowCxV3beta1ListVersionsResponse,
      );
    });

    unittest.test('method--load', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1LoadVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1LoadVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1LoadVersionRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.load(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Version();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Version.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Version(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Version(),
          );
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
      checkGoogleCloudDialogflowCxV3beta1Version(
        response as api.GoogleCloudDialogflowCxV3beta1Version,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsGeneratorsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.generators;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Generator();
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Generator.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Generator(obj);

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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Generator(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Generator(
        response as api.GoogleCloudDialogflowCxV3beta1Generator,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.generators;
      final arg_name = 'foo';
      final arg_force = true;
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
            unittest.equals('v3beta1/'),
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.generators;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Generator(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Generator(
        response as api.GoogleCloudDialogflowCxV3beta1Generator,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.generators;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListGeneratorsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        languageCode: arg_languageCode,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListGeneratorsResponse(
        response as api.GoogleCloudDialogflowCxV3beta1ListGeneratorsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.generators;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Generator();
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Generator.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Generator(obj);

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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Generator(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        languageCode: arg_languageCode,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Generator(
        response as api.GoogleCloudDialogflowCxV3beta1Generator,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsIntentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.intents;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Intent();
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Intent.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Intent(obj);

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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Intent(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Intent(
        response as api.GoogleCloudDialogflowCxV3beta1Intent,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.intents;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.intents;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1ExportIntentsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1ExportIntentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1ExportIntentsRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.export(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.intents;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Intent(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Intent(
        response as api.GoogleCloudDialogflowCxV3beta1Intent,
      );
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.intents;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1ImportIntentsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1ImportIntentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1ImportIntentsRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.import(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.intents;
      final arg_parent = 'foo';
      final arg_intentView = 'foo';
      final arg_languageCode = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['intentView']!.first,
            unittest.equals(arg_intentView),
          );
          unittest.expect(
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListIntentsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        intentView: arg_intentView,
        languageCode: arg_languageCode,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListIntentsResponse(
        response as api.GoogleCloudDialogflowCxV3beta1ListIntentsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.intents;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Intent();
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Intent.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Intent(obj);

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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Intent(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        languageCode: arg_languageCode,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Intent(
        response as api.GoogleCloudDialogflowCxV3beta1Intent,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsPlaybooksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.playbooks;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Playbook();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Playbook.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Playbook(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Playbook(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Playbook(
        response as api.GoogleCloudDialogflowCxV3beta1Playbook,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.playbooks;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.playbooks;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1ExportPlaybookRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1ExportPlaybookRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1ExportPlaybookRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.export(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.playbooks;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Playbook(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3beta1Playbook(
        response as api.GoogleCloudDialogflowCxV3beta1Playbook,
      );
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.playbooks;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1ImportPlaybookRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1ImportPlaybookRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1ImportPlaybookRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.import(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.playbooks;
      final arg_parent = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListPlaybooksResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListPlaybooksResponse(
        response as api.GoogleCloudDialogflowCxV3beta1ListPlaybooksResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.playbooks;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Playbook();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Playbook.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Playbook(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Playbook(),
          );
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
      checkGoogleCloudDialogflowCxV3beta1Playbook(
        response as api.GoogleCloudDialogflowCxV3beta1Playbook,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsPlaybooksExamplesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.playbooks.examples;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Example();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Example.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Example(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Example(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Example(
        response as api.GoogleCloudDialogflowCxV3beta1Example,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.playbooks.examples;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.playbooks.examples;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Example(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3beta1Example(
        response as api.GoogleCloudDialogflowCxV3beta1Example,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.playbooks.examples;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListExamplesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        languageCode: arg_languageCode,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListExamplesResponse(
        response as api.GoogleCloudDialogflowCxV3beta1ListExamplesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.playbooks.examples;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Example();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Example.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Example(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Example(),
          );
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
      checkGoogleCloudDialogflowCxV3beta1Example(
        response as api.GoogleCloudDialogflowCxV3beta1Example,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsPlaybooksVersionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.playbooks.versions;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1PlaybookVersion();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1PlaybookVersion.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1PlaybookVersion(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1PlaybookVersion(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1PlaybookVersion(
        response as api.GoogleCloudDialogflowCxV3beta1PlaybookVersion,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.playbooks.versions;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.playbooks.versions;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1PlaybookVersion(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3beta1PlaybookVersion(
        response as api.GoogleCloudDialogflowCxV3beta1PlaybookVersion,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.playbooks.versions;
      final arg_parent = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse(
        response
            as api.GoogleCloudDialogflowCxV3beta1ListPlaybookVersionsResponse,
      );
    });

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.playbooks.versions;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.restore(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse(
        response
            as api.GoogleCloudDialogflowCxV3beta1RestorePlaybookVersionResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsSessionsResource', () {
    unittest.test('method--detectIntent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.sessions;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1DetectIntentRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1DetectIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1DetectIntentRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1DetectIntentResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.detectIntent(
        arg_request,
        arg_session,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1DetectIntentResponse(
        response as api.GoogleCloudDialogflowCxV3beta1DetectIntentResponse,
      );
    });

    unittest.test('method--fulfillIntent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.sessions;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1FulfillIntentRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1FulfillIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1FulfillIntentRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1FulfillIntentResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fulfillIntent(
        arg_request,
        arg_session,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1FulfillIntentResponse(
        response as api.GoogleCloudDialogflowCxV3beta1FulfillIntentResponse,
      );
    });

    unittest.test('method--matchIntent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.sessions;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1MatchIntentRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1MatchIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1MatchIntentRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1MatchIntentResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.matchIntent(
        arg_request,
        arg_session,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1MatchIntentResponse(
        response as api.GoogleCloudDialogflowCxV3beta1MatchIntentResponse,
      );
    });

    unittest.test('method--serverStreamingDetectIntent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.sessions;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1DetectIntentRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1DetectIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1DetectIntentRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1DetectIntentResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.serverStreamingDetectIntent(
        arg_request,
        arg_session,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1DetectIntentResponse(
        response as api.GoogleCloudDialogflowCxV3beta1DetectIntentResponse,
      );
    });

    unittest.test('method--submitAnswerFeedback', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.sessions;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1SubmitAnswerFeedbackRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1AnswerFeedback(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.submitAnswerFeedback(
        arg_request,
        arg_session,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1AnswerFeedback(
        response as api.GoogleCloudDialogflowCxV3beta1AnswerFeedback,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsSessionsEntityTypesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.sessions.entityTypes;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1SessionEntityType();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1SessionEntityType(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1SessionEntityType(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1SessionEntityType(
        response as api.GoogleCloudDialogflowCxV3beta1SessionEntityType,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.sessions.entityTypes;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.sessions.entityTypes;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1SessionEntityType(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3beta1SessionEntityType(
        response as api.GoogleCloudDialogflowCxV3beta1SessionEntityType,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.sessions.entityTypes;
      final arg_parent = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse(
        response
            as api.GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.sessions.entityTypes;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1SessionEntityType();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1SessionEntityType(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1SessionEntityType(),
          );
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
      checkGoogleCloudDialogflowCxV3beta1SessionEntityType(
        response as api.GoogleCloudDialogflowCxV3beta1SessionEntityType,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsTestCasesResource', () {
    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchDelete(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--batchRun', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchRun(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--calculateCoverage', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      final arg_agent = 'foo';
      final arg_type = 'foo';
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
            unittest.equals('v3beta1/'),
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
          unittest.expect(queryMap['type']!.first, unittest.equals(arg_type));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1CalculateCoverageResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.calculateCoverage(
        arg_agent,
        type: arg_type,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1CalculateCoverageResponse(
        response as api.GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1TestCase();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1TestCase.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1TestCase(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1TestCase(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1TestCase(
        response as api.GoogleCloudDialogflowCxV3beta1TestCase,
      );
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1ExportTestCasesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1ExportTestCasesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1ExportTestCasesRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.export(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1TestCase(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3beta1TestCase(
        response as api.GoogleCloudDialogflowCxV3beta1TestCase,
      );
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1ImportTestCasesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1ImportTestCasesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1ImportTestCasesRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.import(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v3beta1/'),
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListTestCasesResponse(),
          );
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
      checkGoogleCloudDialogflowCxV3beta1ListTestCasesResponse(
        response as api.GoogleCloudDialogflowCxV3beta1ListTestCasesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1TestCase();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1TestCase.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1TestCase(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1TestCase(),
          );
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
      checkGoogleCloudDialogflowCxV3beta1TestCase(
        response as api.GoogleCloudDialogflowCxV3beta1TestCase,
      );
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1RunTestCaseRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1RunTestCaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1RunTestCaseRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.run(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsTestCasesResultsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.testCases.results;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1TestCaseResult(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3beta1TestCaseResult(
        response as api.GoogleCloudDialogflowCxV3beta1TestCaseResult,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.testCases.results;
      final arg_parent = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse(
        response
            as api.GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsToolsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.tools;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Tool();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Tool.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Tool(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Tool(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Tool(
        response as api.GoogleCloudDialogflowCxV3beta1Tool,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.tools;
      final arg_name = 'foo';
      final arg_force = true;
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
            unittest.equals('v3beta1/'),
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.tools;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1ExportToolsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1ExportToolsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1ExportToolsRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.export(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.tools;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Tool(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3beta1Tool(
        response as api.GoogleCloudDialogflowCxV3beta1Tool,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.tools;
      final arg_parent = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListToolsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListToolsResponse(
        response as api.GoogleCloudDialogflowCxV3beta1ListToolsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.tools;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Tool();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Tool.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Tool(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Tool(),
          );
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
      checkGoogleCloudDialogflowCxV3beta1Tool(
        response as api.GoogleCloudDialogflowCxV3beta1Tool,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsToolsVersionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.tools.versions;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1ToolVersion();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1ToolVersion.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1ToolVersion(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ToolVersion(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ToolVersion(
        response as api.GoogleCloudDialogflowCxV3beta1ToolVersion,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.tools.versions;
      final arg_name = 'foo';
      final arg_force = true;
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
            unittest.equals('v3beta1/'),
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.tools.versions;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ToolVersion(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3beta1ToolVersion(
        response as api.GoogleCloudDialogflowCxV3beta1ToolVersion,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.tools.versions;
      final arg_parent = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListToolVersionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListToolVersionsResponse(
        response as api.GoogleCloudDialogflowCxV3beta1ListToolVersionsResponse,
      );
    });

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.tools.versions;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1RestoreToolVersionRequest(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.restore(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse(
        response
            as api.GoogleCloudDialogflowCxV3beta1RestoreToolVersionResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsTransitionRouteGroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.transitionRouteGroups;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroup();
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1TransitionRouteGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(obj);

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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(
        response as api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroup,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.transitionRouteGroups;
      final arg_name = 'foo';
      final arg_force = true;
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
            unittest.equals('v3beta1/'),
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.transitionRouteGroups;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(
        response as api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroup,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.transitionRouteGroups;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        languageCode: arg_languageCode,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse(
        response
            as api.GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(
            mock,
          ).projects.locations.agents.transitionRouteGroups;
      final arg_request =
          buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroup();
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1TransitionRouteGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(obj);

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
            unittest.equals('v3beta1/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        languageCode: arg_languageCode,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1TransitionRouteGroup(
        response as api.GoogleCloudDialogflowCxV3beta1TransitionRouteGroup,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsWebhooksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.webhooks;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Webhook();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Webhook.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Webhook(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Webhook(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1Webhook(
        response as api.GoogleCloudDialogflowCxV3beta1Webhook,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.webhooks;
      final arg_name = 'foo';
      final arg_force = true;
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
            unittest.equals('v3beta1/'),
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.webhooks;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Webhook(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3beta1Webhook(
        response as api.GoogleCloudDialogflowCxV3beta1Webhook,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.webhooks;
      final arg_parent = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListWebhooksResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListWebhooksResponse(
        response as api.GoogleCloudDialogflowCxV3beta1ListWebhooksResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.webhooks;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1Webhook();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDialogflowCxV3beta1Webhook.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1Webhook(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1Webhook(),
          );
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
      checkGoogleCloudDialogflowCxV3beta1Webhook(
        response as api.GoogleCloudDialogflowCxV3beta1Webhook,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.operations;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.operations;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.operations;
      final arg_name = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleLongrunningListOperationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningListOperationsResponse(
        response as api.GoogleLongrunningListOperationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsSecuritySettingsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.securitySettings;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1SecuritySettings();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1SecuritySettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1SecuritySettings(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1SecuritySettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1SecuritySettings(
        response as api.GoogleCloudDialogflowCxV3beta1SecuritySettings,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.securitySettings;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.securitySettings;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1SecuritySettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3beta1SecuritySettings(
        response as api.GoogleCloudDialogflowCxV3beta1SecuritySettings,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.securitySettings;
      final arg_parent = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse(
        response
            as api.GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.securitySettings;
      final arg_request = buildGoogleCloudDialogflowCxV3beta1SecuritySettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDialogflowCxV3beta1SecuritySettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDialogflowCxV3beta1SecuritySettings(obj);

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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3beta1SecuritySettings(),
          );
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
      checkGoogleCloudDialogflowCxV3beta1SecuritySettings(
        response as api.GoogleCloudDialogflowCxV3beta1SecuritySettings,
      );
    });
  });

  unittest.group('resource-ProjectsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.operations;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.operations;
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
            unittest.equals('v3beta1/'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.operations;
      final arg_name = 'foo';
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
            unittest.equals('v3beta1/'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleLongrunningListOperationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningListOperationsResponse(
        response as api.GoogleLongrunningListOperationsResponse,
      );
    });
  });
}
