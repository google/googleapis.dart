// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/dialogflow/v3.dart' as api;

import '../test_shared.dart';

core.int buildCounterGoogleCloudDialogflowCxV3Agent = 0;
api.GoogleCloudDialogflowCxV3Agent buildGoogleCloudDialogflowCxV3Agent() {
  var o = api.GoogleCloudDialogflowCxV3Agent();
  buildCounterGoogleCloudDialogflowCxV3Agent++;
  if (buildCounterGoogleCloudDialogflowCxV3Agent < 3) {
    o.avatarUri = 'foo';
    o.defaultLanguageCode = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.enableSpellCorrection = true;
    o.enableStackdriverLogging = true;
    o.name = 'foo';
    o.securitySettings = 'foo';
    o.speechToTextSettings =
        buildGoogleCloudDialogflowCxV3SpeechToTextSettings();
    o.startFlow = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3Agent--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Agent(api.GoogleCloudDialogflowCxV3Agent o) {
  buildCounterGoogleCloudDialogflowCxV3Agent++;
  if (buildCounterGoogleCloudDialogflowCxV3Agent < 3) {
    unittest.expect(o.avatarUri, unittest.equals('foo'));
    unittest.expect(o.defaultLanguageCode, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.enableSpellCorrection, unittest.isTrue);
    unittest.expect(o.enableStackdriverLogging, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.securitySettings, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3SpeechToTextSettings(o.speechToTextSettings
        as api.GoogleCloudDialogflowCxV3SpeechToTextSettings);
    unittest.expect(o.startFlow, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3Agent--;
}

core.List<api.GoogleCloudDialogflowCxV3FlowValidationResult>
    buildUnnamed5746() {
  var o = <api.GoogleCloudDialogflowCxV3FlowValidationResult>[];
  o.add(buildGoogleCloudDialogflowCxV3FlowValidationResult());
  o.add(buildGoogleCloudDialogflowCxV3FlowValidationResult());
  return o;
}

void checkUnnamed5746(
    core.List<api.GoogleCloudDialogflowCxV3FlowValidationResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3FlowValidationResult(
      o[0] as api.GoogleCloudDialogflowCxV3FlowValidationResult);
  checkGoogleCloudDialogflowCxV3FlowValidationResult(
      o[1] as api.GoogleCloudDialogflowCxV3FlowValidationResult);
}

core.int buildCounterGoogleCloudDialogflowCxV3AgentValidationResult = 0;
api.GoogleCloudDialogflowCxV3AgentValidationResult
    buildGoogleCloudDialogflowCxV3AgentValidationResult() {
  var o = api.GoogleCloudDialogflowCxV3AgentValidationResult();
  buildCounterGoogleCloudDialogflowCxV3AgentValidationResult++;
  if (buildCounterGoogleCloudDialogflowCxV3AgentValidationResult < 3) {
    o.flowValidationResults = buildUnnamed5746();
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3AgentValidationResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3AgentValidationResult(
    api.GoogleCloudDialogflowCxV3AgentValidationResult o) {
  buildCounterGoogleCloudDialogflowCxV3AgentValidationResult++;
  if (buildCounterGoogleCloudDialogflowCxV3AgentValidationResult < 3) {
    checkUnnamed5746(o.flowValidationResults);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3AgentValidationResult--;
}

core.int buildCounterGoogleCloudDialogflowCxV3AudioInput = 0;
api.GoogleCloudDialogflowCxV3AudioInput
    buildGoogleCloudDialogflowCxV3AudioInput() {
  var o = api.GoogleCloudDialogflowCxV3AudioInput();
  buildCounterGoogleCloudDialogflowCxV3AudioInput++;
  if (buildCounterGoogleCloudDialogflowCxV3AudioInput < 3) {
    o.audio = 'foo';
    o.config = buildGoogleCloudDialogflowCxV3InputAudioConfig();
  }
  buildCounterGoogleCloudDialogflowCxV3AudioInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3AudioInput(
    api.GoogleCloudDialogflowCxV3AudioInput o) {
  buildCounterGoogleCloudDialogflowCxV3AudioInput++;
  if (buildCounterGoogleCloudDialogflowCxV3AudioInput < 3) {
    unittest.expect(o.audio, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3InputAudioConfig(
        o.config as api.GoogleCloudDialogflowCxV3InputAudioConfig);
  }
  buildCounterGoogleCloudDialogflowCxV3AudioInput--;
}

core.List<core.String> buildUnnamed5747() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5747(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest = 0;
api.GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest
    buildGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest() {
  var o = api.GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest();
  buildCounterGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest < 3) {
    o.names = buildUnnamed5747();
  }
  buildCounterGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest(
    api.GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest o) {
  buildCounterGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest < 3) {
    checkUnnamed5747(o.names);
  }
  buildCounterGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest--;
}

core.List<api.GoogleCloudDialogflowCxV3TestError> buildUnnamed5748() {
  var o = <api.GoogleCloudDialogflowCxV3TestError>[];
  o.add(buildGoogleCloudDialogflowCxV3TestError());
  o.add(buildGoogleCloudDialogflowCxV3TestError());
  return o;
}

void checkUnnamed5748(core.List<api.GoogleCloudDialogflowCxV3TestError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TestError(
      o[0] as api.GoogleCloudDialogflowCxV3TestError);
  checkGoogleCloudDialogflowCxV3TestError(
      o[1] as api.GoogleCloudDialogflowCxV3TestError);
}

core.int buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesMetadata = 0;
api.GoogleCloudDialogflowCxV3BatchRunTestCasesMetadata
    buildGoogleCloudDialogflowCxV3BatchRunTestCasesMetadata() {
  var o = api.GoogleCloudDialogflowCxV3BatchRunTestCasesMetadata();
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesMetadata < 3) {
    o.errors = buildUnnamed5748();
  }
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3BatchRunTestCasesMetadata(
    api.GoogleCloudDialogflowCxV3BatchRunTestCasesMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesMetadata < 3) {
    checkUnnamed5748(o.errors);
  }
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesMetadata--;
}

core.List<core.String> buildUnnamed5749() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5749(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesRequest = 0;
api.GoogleCloudDialogflowCxV3BatchRunTestCasesRequest
    buildGoogleCloudDialogflowCxV3BatchRunTestCasesRequest() {
  var o = api.GoogleCloudDialogflowCxV3BatchRunTestCasesRequest();
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesRequest < 3) {
    o.environment = 'foo';
    o.testCases = buildUnnamed5749();
  }
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3BatchRunTestCasesRequest(
    api.GoogleCloudDialogflowCxV3BatchRunTestCasesRequest o) {
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesRequest < 3) {
    unittest.expect(o.environment, unittest.equals('foo'));
    checkUnnamed5749(o.testCases);
  }
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesRequest--;
}

core.List<api.GoogleCloudDialogflowCxV3TestCaseResult> buildUnnamed5750() {
  var o = <api.GoogleCloudDialogflowCxV3TestCaseResult>[];
  o.add(buildGoogleCloudDialogflowCxV3TestCaseResult());
  o.add(buildGoogleCloudDialogflowCxV3TestCaseResult());
  return o;
}

void checkUnnamed5750(
    core.List<api.GoogleCloudDialogflowCxV3TestCaseResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TestCaseResult(
      o[0] as api.GoogleCloudDialogflowCxV3TestCaseResult);
  checkGoogleCloudDialogflowCxV3TestCaseResult(
      o[1] as api.GoogleCloudDialogflowCxV3TestCaseResult);
}

core.int buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesResponse = 0;
api.GoogleCloudDialogflowCxV3BatchRunTestCasesResponse
    buildGoogleCloudDialogflowCxV3BatchRunTestCasesResponse() {
  var o = api.GoogleCloudDialogflowCxV3BatchRunTestCasesResponse();
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesResponse < 3) {
    o.results = buildUnnamed5750();
  }
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3BatchRunTestCasesResponse(
    api.GoogleCloudDialogflowCxV3BatchRunTestCasesResponse o) {
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesResponse < 3) {
    checkUnnamed5750(o.results);
  }
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesResponse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3CalculateCoverageResponse = 0;
api.GoogleCloudDialogflowCxV3CalculateCoverageResponse
    buildGoogleCloudDialogflowCxV3CalculateCoverageResponse() {
  var o = api.GoogleCloudDialogflowCxV3CalculateCoverageResponse();
  buildCounterGoogleCloudDialogflowCxV3CalculateCoverageResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3CalculateCoverageResponse < 3) {
    o.agent = 'foo';
    o.intentCoverage = buildGoogleCloudDialogflowCxV3IntentCoverage();
    o.routeGroupCoverage =
        buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage();
    o.transitionCoverage = buildGoogleCloudDialogflowCxV3TransitionCoverage();
  }
  buildCounterGoogleCloudDialogflowCxV3CalculateCoverageResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3CalculateCoverageResponse(
    api.GoogleCloudDialogflowCxV3CalculateCoverageResponse o) {
  buildCounterGoogleCloudDialogflowCxV3CalculateCoverageResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3CalculateCoverageResponse < 3) {
    unittest.expect(o.agent, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3IntentCoverage(
        o.intentCoverage as api.GoogleCloudDialogflowCxV3IntentCoverage);
    checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage(
        o.routeGroupCoverage
            as api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage);
    checkGoogleCloudDialogflowCxV3TransitionCoverage(o.transitionCoverage
        as api.GoogleCloudDialogflowCxV3TransitionCoverage);
  }
  buildCounterGoogleCloudDialogflowCxV3CalculateCoverageResponse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ConversationTurn = 0;
api.GoogleCloudDialogflowCxV3ConversationTurn
    buildGoogleCloudDialogflowCxV3ConversationTurn() {
  var o = api.GoogleCloudDialogflowCxV3ConversationTurn();
  buildCounterGoogleCloudDialogflowCxV3ConversationTurn++;
  if (buildCounterGoogleCloudDialogflowCxV3ConversationTurn < 3) {
    o.userInput = buildGoogleCloudDialogflowCxV3ConversationTurnUserInput();
    o.virtualAgentOutput =
        buildGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput();
  }
  buildCounterGoogleCloudDialogflowCxV3ConversationTurn--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ConversationTurn(
    api.GoogleCloudDialogflowCxV3ConversationTurn o) {
  buildCounterGoogleCloudDialogflowCxV3ConversationTurn++;
  if (buildCounterGoogleCloudDialogflowCxV3ConversationTurn < 3) {
    checkGoogleCloudDialogflowCxV3ConversationTurnUserInput(
        o.userInput as api.GoogleCloudDialogflowCxV3ConversationTurnUserInput);
    checkGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput(
        o.virtualAgentOutput
            as api.GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput);
  }
  buildCounterGoogleCloudDialogflowCxV3ConversationTurn--;
}

core.Map<core.String, core.Object> buildUnnamed5751() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5751(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3ConversationTurnUserInput = 0;
api.GoogleCloudDialogflowCxV3ConversationTurnUserInput
    buildGoogleCloudDialogflowCxV3ConversationTurnUserInput() {
  var o = api.GoogleCloudDialogflowCxV3ConversationTurnUserInput();
  buildCounterGoogleCloudDialogflowCxV3ConversationTurnUserInput++;
  if (buildCounterGoogleCloudDialogflowCxV3ConversationTurnUserInput < 3) {
    o.injectedParameters = buildUnnamed5751();
    o.input = buildGoogleCloudDialogflowCxV3QueryInput();
    o.isWebhookEnabled = true;
  }
  buildCounterGoogleCloudDialogflowCxV3ConversationTurnUserInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ConversationTurnUserInput(
    api.GoogleCloudDialogflowCxV3ConversationTurnUserInput o) {
  buildCounterGoogleCloudDialogflowCxV3ConversationTurnUserInput++;
  if (buildCounterGoogleCloudDialogflowCxV3ConversationTurnUserInput < 3) {
    checkUnnamed5751(o.injectedParameters);
    checkGoogleCloudDialogflowCxV3QueryInput(
        o.input as api.GoogleCloudDialogflowCxV3QueryInput);
    unittest.expect(o.isWebhookEnabled, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3ConversationTurnUserInput--;
}

core.Map<core.String, core.Object> buildUnnamed5752() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5752(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3TestRunDifference> buildUnnamed5753() {
  var o = <api.GoogleCloudDialogflowCxV3TestRunDifference>[];
  o.add(buildGoogleCloudDialogflowCxV3TestRunDifference());
  o.add(buildGoogleCloudDialogflowCxV3TestRunDifference());
  return o;
}

void checkUnnamed5753(
    core.List<api.GoogleCloudDialogflowCxV3TestRunDifference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TestRunDifference(
      o[0] as api.GoogleCloudDialogflowCxV3TestRunDifference);
  checkGoogleCloudDialogflowCxV3TestRunDifference(
      o[1] as api.GoogleCloudDialogflowCxV3TestRunDifference);
}

core.Map<core.String, core.Object> buildUnnamed5754() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5754(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3ResponseMessageText> buildUnnamed5755() {
  var o = <api.GoogleCloudDialogflowCxV3ResponseMessageText>[];
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessageText());
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessageText());
  return o;
}

void checkUnnamed5755(
    core.List<api.GoogleCloudDialogflowCxV3ResponseMessageText> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ResponseMessageText(
      o[0] as api.GoogleCloudDialogflowCxV3ResponseMessageText);
  checkGoogleCloudDialogflowCxV3ResponseMessageText(
      o[1] as api.GoogleCloudDialogflowCxV3ResponseMessageText);
}

core.int
    buildCounterGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput = 0;
api.GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput
    buildGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput() {
  var o = api.GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput();
  buildCounterGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput++;
  if (buildCounterGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput <
      3) {
    o.currentPage = buildGoogleCloudDialogflowCxV3Page();
    o.diagnosticInfo = buildUnnamed5752();
    o.differences = buildUnnamed5753();
    o.sessionParameters = buildUnnamed5754();
    o.status = buildGoogleRpcStatus();
    o.textResponses = buildUnnamed5755();
    o.triggeredIntent = buildGoogleCloudDialogflowCxV3Intent();
  }
  buildCounterGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput(
    api.GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput o) {
  buildCounterGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput++;
  if (buildCounterGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput <
      3) {
    checkGoogleCloudDialogflowCxV3Page(
        o.currentPage as api.GoogleCloudDialogflowCxV3Page);
    checkUnnamed5752(o.diagnosticInfo);
    checkUnnamed5753(o.differences);
    checkUnnamed5754(o.sessionParameters);
    checkGoogleRpcStatus(o.status as api.GoogleRpcStatus);
    checkUnnamed5755(o.textResponses);
    checkGoogleCloudDialogflowCxV3Intent(
        o.triggeredIntent as api.GoogleCloudDialogflowCxV3Intent);
  }
  buildCounterGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput--;
}

core.int buildCounterGoogleCloudDialogflowCxV3CreateDocumentOperationMetadata =
    0;
api.GoogleCloudDialogflowCxV3CreateDocumentOperationMetadata
    buildGoogleCloudDialogflowCxV3CreateDocumentOperationMetadata() {
  var o = api.GoogleCloudDialogflowCxV3CreateDocumentOperationMetadata();
  buildCounterGoogleCloudDialogflowCxV3CreateDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3CreateDocumentOperationMetadata <
      3) {
    o.genericMetadata =
        buildGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata();
  }
  buildCounterGoogleCloudDialogflowCxV3CreateDocumentOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3CreateDocumentOperationMetadata(
    api.GoogleCloudDialogflowCxV3CreateDocumentOperationMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3CreateDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3CreateDocumentOperationMetadata <
      3) {
    checkGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata(
        o.genericMetadata
            as api.GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata);
  }
  buildCounterGoogleCloudDialogflowCxV3CreateDocumentOperationMetadata--;
}

core.int buildCounterGoogleCloudDialogflowCxV3CreateVersionOperationMetadata =
    0;
api.GoogleCloudDialogflowCxV3CreateVersionOperationMetadata
    buildGoogleCloudDialogflowCxV3CreateVersionOperationMetadata() {
  var o = api.GoogleCloudDialogflowCxV3CreateVersionOperationMetadata();
  buildCounterGoogleCloudDialogflowCxV3CreateVersionOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3CreateVersionOperationMetadata < 3) {
    o.version = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3CreateVersionOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3CreateVersionOperationMetadata(
    api.GoogleCloudDialogflowCxV3CreateVersionOperationMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3CreateVersionOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3CreateVersionOperationMetadata < 3) {
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3CreateVersionOperationMetadata--;
}

core.int buildCounterGoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata =
    0;
api.GoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata
    buildGoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata() {
  var o = api.GoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata();
  buildCounterGoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata <
      3) {
    o.genericMetadata =
        buildGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata();
  }
  buildCounterGoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata(
    api.GoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata <
      3) {
    checkGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata(
        o.genericMetadata
            as api.GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata);
  }
  buildCounterGoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata--;
}

core.int buildCounterGoogleCloudDialogflowCxV3DetectIntentRequest = 0;
api.GoogleCloudDialogflowCxV3DetectIntentRequest
    buildGoogleCloudDialogflowCxV3DetectIntentRequest() {
  var o = api.GoogleCloudDialogflowCxV3DetectIntentRequest();
  buildCounterGoogleCloudDialogflowCxV3DetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3DetectIntentRequest < 3) {
    o.outputAudioConfig = buildGoogleCloudDialogflowCxV3OutputAudioConfig();
    o.queryInput = buildGoogleCloudDialogflowCxV3QueryInput();
    o.queryParams = buildGoogleCloudDialogflowCxV3QueryParameters();
  }
  buildCounterGoogleCloudDialogflowCxV3DetectIntentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3DetectIntentRequest(
    api.GoogleCloudDialogflowCxV3DetectIntentRequest o) {
  buildCounterGoogleCloudDialogflowCxV3DetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3DetectIntentRequest < 3) {
    checkGoogleCloudDialogflowCxV3OutputAudioConfig(
        o.outputAudioConfig as api.GoogleCloudDialogflowCxV3OutputAudioConfig);
    checkGoogleCloudDialogflowCxV3QueryInput(
        o.queryInput as api.GoogleCloudDialogflowCxV3QueryInput);
    checkGoogleCloudDialogflowCxV3QueryParameters(
        o.queryParams as api.GoogleCloudDialogflowCxV3QueryParameters);
  }
  buildCounterGoogleCloudDialogflowCxV3DetectIntentRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3DetectIntentResponse = 0;
api.GoogleCloudDialogflowCxV3DetectIntentResponse
    buildGoogleCloudDialogflowCxV3DetectIntentResponse() {
  var o = api.GoogleCloudDialogflowCxV3DetectIntentResponse();
  buildCounterGoogleCloudDialogflowCxV3DetectIntentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3DetectIntentResponse < 3) {
    o.outputAudio = 'foo';
    o.outputAudioConfig = buildGoogleCloudDialogflowCxV3OutputAudioConfig();
    o.queryResult = buildGoogleCloudDialogflowCxV3QueryResult();
    o.responseId = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3DetectIntentResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3DetectIntentResponse(
    api.GoogleCloudDialogflowCxV3DetectIntentResponse o) {
  buildCounterGoogleCloudDialogflowCxV3DetectIntentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3DetectIntentResponse < 3) {
    unittest.expect(o.outputAudio, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3OutputAudioConfig(
        o.outputAudioConfig as api.GoogleCloudDialogflowCxV3OutputAudioConfig);
    checkGoogleCloudDialogflowCxV3QueryResult(
        o.queryResult as api.GoogleCloudDialogflowCxV3QueryResult);
    unittest.expect(o.responseId, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3DetectIntentResponse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3DtmfInput = 0;
api.GoogleCloudDialogflowCxV3DtmfInput
    buildGoogleCloudDialogflowCxV3DtmfInput() {
  var o = api.GoogleCloudDialogflowCxV3DtmfInput();
  buildCounterGoogleCloudDialogflowCxV3DtmfInput++;
  if (buildCounterGoogleCloudDialogflowCxV3DtmfInput < 3) {
    o.digits = 'foo';
    o.finishDigit = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3DtmfInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3DtmfInput(
    api.GoogleCloudDialogflowCxV3DtmfInput o) {
  buildCounterGoogleCloudDialogflowCxV3DtmfInput++;
  if (buildCounterGoogleCloudDialogflowCxV3DtmfInput < 3) {
    unittest.expect(o.digits, unittest.equals('foo'));
    unittest.expect(o.finishDigit, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3DtmfInput--;
}

core.List<api.GoogleCloudDialogflowCxV3EntityTypeEntity> buildUnnamed5756() {
  var o = <api.GoogleCloudDialogflowCxV3EntityTypeEntity>[];
  o.add(buildGoogleCloudDialogflowCxV3EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowCxV3EntityTypeEntity());
  return o;
}

void checkUnnamed5756(
    core.List<api.GoogleCloudDialogflowCxV3EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3EntityTypeEntity(
      o[0] as api.GoogleCloudDialogflowCxV3EntityTypeEntity);
  checkGoogleCloudDialogflowCxV3EntityTypeEntity(
      o[1] as api.GoogleCloudDialogflowCxV3EntityTypeEntity);
}

core.List<api.GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase>
    buildUnnamed5757() {
  var o = <api.GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase>[];
  o.add(buildGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase());
  o.add(buildGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase());
  return o;
}

void checkUnnamed5757(
    core.List<api.GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase(
      o[0] as api.GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase);
  checkGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase(
      o[1] as api.GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase);
}

core.int buildCounterGoogleCloudDialogflowCxV3EntityType = 0;
api.GoogleCloudDialogflowCxV3EntityType
    buildGoogleCloudDialogflowCxV3EntityType() {
  var o = api.GoogleCloudDialogflowCxV3EntityType();
  buildCounterGoogleCloudDialogflowCxV3EntityType++;
  if (buildCounterGoogleCloudDialogflowCxV3EntityType < 3) {
    o.autoExpansionMode = 'foo';
    o.displayName = 'foo';
    o.enableFuzzyExtraction = true;
    o.entities = buildUnnamed5756();
    o.excludedPhrases = buildUnnamed5757();
    o.kind = 'foo';
    o.name = 'foo';
    o.redact = true;
  }
  buildCounterGoogleCloudDialogflowCxV3EntityType--;
  return o;
}

void checkGoogleCloudDialogflowCxV3EntityType(
    api.GoogleCloudDialogflowCxV3EntityType o) {
  buildCounterGoogleCloudDialogflowCxV3EntityType++;
  if (buildCounterGoogleCloudDialogflowCxV3EntityType < 3) {
    unittest.expect(o.autoExpansionMode, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.enableFuzzyExtraction, unittest.isTrue);
    checkUnnamed5756(o.entities);
    checkUnnamed5757(o.excludedPhrases);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.redact, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3EntityType--;
}

core.List<core.String> buildUnnamed5758() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5758(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3EntityTypeEntity = 0;
api.GoogleCloudDialogflowCxV3EntityTypeEntity
    buildGoogleCloudDialogflowCxV3EntityTypeEntity() {
  var o = api.GoogleCloudDialogflowCxV3EntityTypeEntity();
  buildCounterGoogleCloudDialogflowCxV3EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowCxV3EntityTypeEntity < 3) {
    o.synonyms = buildUnnamed5758();
    o.value = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3EntityTypeEntity--;
  return o;
}

void checkGoogleCloudDialogflowCxV3EntityTypeEntity(
    api.GoogleCloudDialogflowCxV3EntityTypeEntity o) {
  buildCounterGoogleCloudDialogflowCxV3EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowCxV3EntityTypeEntity < 3) {
    checkUnnamed5758(o.synonyms);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3EntityTypeEntity--;
}

core.int buildCounterGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase = 0;
api.GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase
    buildGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase() {
  var o = api.GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase();
  buildCounterGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase++;
  if (buildCounterGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase < 3) {
    o.value = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase--;
  return o;
}

void checkGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase(
    api.GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase o) {
  buildCounterGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase++;
  if (buildCounterGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase < 3) {
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase--;
}

core.List<api.GoogleCloudDialogflowCxV3EnvironmentVersionConfig>
    buildUnnamed5759() {
  var o = <api.GoogleCloudDialogflowCxV3EnvironmentVersionConfig>[];
  o.add(buildGoogleCloudDialogflowCxV3EnvironmentVersionConfig());
  o.add(buildGoogleCloudDialogflowCxV3EnvironmentVersionConfig());
  return o;
}

void checkUnnamed5759(
    core.List<api.GoogleCloudDialogflowCxV3EnvironmentVersionConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3EnvironmentVersionConfig(
      o[0] as api.GoogleCloudDialogflowCxV3EnvironmentVersionConfig);
  checkGoogleCloudDialogflowCxV3EnvironmentVersionConfig(
      o[1] as api.GoogleCloudDialogflowCxV3EnvironmentVersionConfig);
}

core.int buildCounterGoogleCloudDialogflowCxV3Environment = 0;
api.GoogleCloudDialogflowCxV3Environment
    buildGoogleCloudDialogflowCxV3Environment() {
  var o = api.GoogleCloudDialogflowCxV3Environment();
  buildCounterGoogleCloudDialogflowCxV3Environment++;
  if (buildCounterGoogleCloudDialogflowCxV3Environment < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
    o.versionConfigs = buildUnnamed5759();
  }
  buildCounterGoogleCloudDialogflowCxV3Environment--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Environment(
    api.GoogleCloudDialogflowCxV3Environment o) {
  buildCounterGoogleCloudDialogflowCxV3Environment++;
  if (buildCounterGoogleCloudDialogflowCxV3Environment < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    checkUnnamed5759(o.versionConfigs);
  }
  buildCounterGoogleCloudDialogflowCxV3Environment--;
}

core.int buildCounterGoogleCloudDialogflowCxV3EnvironmentVersionConfig = 0;
api.GoogleCloudDialogflowCxV3EnvironmentVersionConfig
    buildGoogleCloudDialogflowCxV3EnvironmentVersionConfig() {
  var o = api.GoogleCloudDialogflowCxV3EnvironmentVersionConfig();
  buildCounterGoogleCloudDialogflowCxV3EnvironmentVersionConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3EnvironmentVersionConfig < 3) {
    o.version = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3EnvironmentVersionConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3EnvironmentVersionConfig(
    api.GoogleCloudDialogflowCxV3EnvironmentVersionConfig o) {
  buildCounterGoogleCloudDialogflowCxV3EnvironmentVersionConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3EnvironmentVersionConfig < 3) {
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3EnvironmentVersionConfig--;
}

core.int buildCounterGoogleCloudDialogflowCxV3EventHandler = 0;
api.GoogleCloudDialogflowCxV3EventHandler
    buildGoogleCloudDialogflowCxV3EventHandler() {
  var o = api.GoogleCloudDialogflowCxV3EventHandler();
  buildCounterGoogleCloudDialogflowCxV3EventHandler++;
  if (buildCounterGoogleCloudDialogflowCxV3EventHandler < 3) {
    o.event = 'foo';
    o.name = 'foo';
    o.targetFlow = 'foo';
    o.targetPage = 'foo';
    o.triggerFulfillment = buildGoogleCloudDialogflowCxV3Fulfillment();
  }
  buildCounterGoogleCloudDialogflowCxV3EventHandler--;
  return o;
}

void checkGoogleCloudDialogflowCxV3EventHandler(
    api.GoogleCloudDialogflowCxV3EventHandler o) {
  buildCounterGoogleCloudDialogflowCxV3EventHandler++;
  if (buildCounterGoogleCloudDialogflowCxV3EventHandler < 3) {
    unittest.expect(o.event, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.targetFlow, unittest.equals('foo'));
    unittest.expect(o.targetPage, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3Fulfillment(
        o.triggerFulfillment as api.GoogleCloudDialogflowCxV3Fulfillment);
  }
  buildCounterGoogleCloudDialogflowCxV3EventHandler--;
}

core.int buildCounterGoogleCloudDialogflowCxV3EventInput = 0;
api.GoogleCloudDialogflowCxV3EventInput
    buildGoogleCloudDialogflowCxV3EventInput() {
  var o = api.GoogleCloudDialogflowCxV3EventInput();
  buildCounterGoogleCloudDialogflowCxV3EventInput++;
  if (buildCounterGoogleCloudDialogflowCxV3EventInput < 3) {
    o.event = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3EventInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3EventInput(
    api.GoogleCloudDialogflowCxV3EventInput o) {
  buildCounterGoogleCloudDialogflowCxV3EventInput++;
  if (buildCounterGoogleCloudDialogflowCxV3EventInput < 3) {
    unittest.expect(o.event, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3EventInput--;
}

core.List<api.GoogleCloudDialogflowCxV3VariantsHistory> buildUnnamed5760() {
  var o = <api.GoogleCloudDialogflowCxV3VariantsHistory>[];
  o.add(buildGoogleCloudDialogflowCxV3VariantsHistory());
  o.add(buildGoogleCloudDialogflowCxV3VariantsHistory());
  return o;
}

void checkUnnamed5760(
    core.List<api.GoogleCloudDialogflowCxV3VariantsHistory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3VariantsHistory(
      o[0] as api.GoogleCloudDialogflowCxV3VariantsHistory);
  checkGoogleCloudDialogflowCxV3VariantsHistory(
      o[1] as api.GoogleCloudDialogflowCxV3VariantsHistory);
}

core.int buildCounterGoogleCloudDialogflowCxV3Experiment = 0;
api.GoogleCloudDialogflowCxV3Experiment
    buildGoogleCloudDialogflowCxV3Experiment() {
  var o = api.GoogleCloudDialogflowCxV3Experiment();
  buildCounterGoogleCloudDialogflowCxV3Experiment++;
  if (buildCounterGoogleCloudDialogflowCxV3Experiment < 3) {
    o.createTime = 'foo';
    o.definition = buildGoogleCloudDialogflowCxV3ExperimentDefinition();
    o.description = 'foo';
    o.displayName = 'foo';
    o.endTime = 'foo';
    o.experimentLength = 'foo';
    o.lastUpdateTime = 'foo';
    o.name = 'foo';
    o.result = buildGoogleCloudDialogflowCxV3ExperimentResult();
    o.startTime = 'foo';
    o.state = 'foo';
    o.variantsHistory = buildUnnamed5760();
  }
  buildCounterGoogleCloudDialogflowCxV3Experiment--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Experiment(
    api.GoogleCloudDialogflowCxV3Experiment o) {
  buildCounterGoogleCloudDialogflowCxV3Experiment++;
  if (buildCounterGoogleCloudDialogflowCxV3Experiment < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3ExperimentDefinition(
        o.definition as api.GoogleCloudDialogflowCxV3ExperimentDefinition);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.experimentLength, unittest.equals('foo'));
    unittest.expect(o.lastUpdateTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3ExperimentResult(
        o.result as api.GoogleCloudDialogflowCxV3ExperimentResult);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed5760(o.variantsHistory);
  }
  buildCounterGoogleCloudDialogflowCxV3Experiment--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ExperimentDefinition = 0;
api.GoogleCloudDialogflowCxV3ExperimentDefinition
    buildGoogleCloudDialogflowCxV3ExperimentDefinition() {
  var o = api.GoogleCloudDialogflowCxV3ExperimentDefinition();
  buildCounterGoogleCloudDialogflowCxV3ExperimentDefinition++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentDefinition < 3) {
    o.condition = 'foo';
    o.versionVariants = buildGoogleCloudDialogflowCxV3VersionVariants();
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentDefinition--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExperimentDefinition(
    api.GoogleCloudDialogflowCxV3ExperimentDefinition o) {
  buildCounterGoogleCloudDialogflowCxV3ExperimentDefinition++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentDefinition < 3) {
    unittest.expect(o.condition, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3VersionVariants(
        o.versionVariants as api.GoogleCloudDialogflowCxV3VersionVariants);
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentDefinition--;
}

core.List<api.GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics>
    buildUnnamed5761() {
  var o = <api.GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics>[];
  o.add(buildGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics());
  o.add(buildGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics());
  return o;
}

void checkUnnamed5761(
    core.List<api.GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics(
      o[0] as api.GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics);
  checkGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics(
      o[1] as api.GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics);
}

core.int buildCounterGoogleCloudDialogflowCxV3ExperimentResult = 0;
api.GoogleCloudDialogflowCxV3ExperimentResult
    buildGoogleCloudDialogflowCxV3ExperimentResult() {
  var o = api.GoogleCloudDialogflowCxV3ExperimentResult();
  buildCounterGoogleCloudDialogflowCxV3ExperimentResult++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentResult < 3) {
    o.lastUpdateTime = 'foo';
    o.versionMetrics = buildUnnamed5761();
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExperimentResult(
    api.GoogleCloudDialogflowCxV3ExperimentResult o) {
  buildCounterGoogleCloudDialogflowCxV3ExperimentResult++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentResult < 3) {
    unittest.expect(o.lastUpdateTime, unittest.equals('foo'));
    checkUnnamed5761(o.versionMetrics);
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentResult--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval = 0;
api.GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval
    buildGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval() {
  var o = api.GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval();
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval <
      3) {
    o.confidenceLevel = 42.0;
    o.lowerBound = 42.0;
    o.ratio = 42.0;
    o.upperBound = 42.0;
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval(
    api.GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval o) {
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval <
      3) {
    unittest.expect(o.confidenceLevel, unittest.equals(42.0));
    unittest.expect(o.lowerBound, unittest.equals(42.0));
    unittest.expect(o.ratio, unittest.equals(42.0));
    unittest.expect(o.upperBound, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ExperimentResultMetric = 0;
api.GoogleCloudDialogflowCxV3ExperimentResultMetric
    buildGoogleCloudDialogflowCxV3ExperimentResultMetric() {
  var o = api.GoogleCloudDialogflowCxV3ExperimentResultMetric();
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultMetric++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentResultMetric < 3) {
    o.confidenceInterval =
        buildGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval();
    o.count = 42.0;
    o.countType = 'foo';
    o.ratio = 42.0;
    o.type = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultMetric--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExperimentResultMetric(
    api.GoogleCloudDialogflowCxV3ExperimentResultMetric o) {
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultMetric++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentResultMetric < 3) {
    checkGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval(
        o.confidenceInterval
            as api.GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval);
    unittest.expect(o.count, unittest.equals(42.0));
    unittest.expect(o.countType, unittest.equals('foo'));
    unittest.expect(o.ratio, unittest.equals(42.0));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultMetric--;
}

core.List<api.GoogleCloudDialogflowCxV3ExperimentResultMetric>
    buildUnnamed5762() {
  var o = <api.GoogleCloudDialogflowCxV3ExperimentResultMetric>[];
  o.add(buildGoogleCloudDialogflowCxV3ExperimentResultMetric());
  o.add(buildGoogleCloudDialogflowCxV3ExperimentResultMetric());
  return o;
}

void checkUnnamed5762(
    core.List<api.GoogleCloudDialogflowCxV3ExperimentResultMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ExperimentResultMetric(
      o[0] as api.GoogleCloudDialogflowCxV3ExperimentResultMetric);
  checkGoogleCloudDialogflowCxV3ExperimentResultMetric(
      o[1] as api.GoogleCloudDialogflowCxV3ExperimentResultMetric);
}

core.int buildCounterGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics =
    0;
api.GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics
    buildGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics() {
  var o = api.GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics();
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics < 3) {
    o.metrics = buildUnnamed5762();
    o.sessionCount = 42;
    o.version = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics(
    api.GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics o) {
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics < 3) {
    checkUnnamed5762(o.metrics);
    unittest.expect(o.sessionCount, unittest.equals(42));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ExportAgentRequest = 0;
api.GoogleCloudDialogflowCxV3ExportAgentRequest
    buildGoogleCloudDialogflowCxV3ExportAgentRequest() {
  var o = api.GoogleCloudDialogflowCxV3ExportAgentRequest();
  buildCounterGoogleCloudDialogflowCxV3ExportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportAgentRequest < 3) {
    o.agentUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ExportAgentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExportAgentRequest(
    api.GoogleCloudDialogflowCxV3ExportAgentRequest o) {
  buildCounterGoogleCloudDialogflowCxV3ExportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportAgentRequest < 3) {
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ExportAgentRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ExportAgentResponse = 0;
api.GoogleCloudDialogflowCxV3ExportAgentResponse
    buildGoogleCloudDialogflowCxV3ExportAgentResponse() {
  var o = api.GoogleCloudDialogflowCxV3ExportAgentResponse();
  buildCounterGoogleCloudDialogflowCxV3ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportAgentResponse < 3) {
    o.agentContent = 'foo';
    o.agentUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ExportAgentResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExportAgentResponse(
    api.GoogleCloudDialogflowCxV3ExportAgentResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportAgentResponse < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ExportAgentResponse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ExportTestCasesMetadata = 0;
api.GoogleCloudDialogflowCxV3ExportTestCasesMetadata
    buildGoogleCloudDialogflowCxV3ExportTestCasesMetadata() {
  var o = api.GoogleCloudDialogflowCxV3ExportTestCasesMetadata();
  buildCounterGoogleCloudDialogflowCxV3ExportTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportTestCasesMetadata < 3) {}
  buildCounterGoogleCloudDialogflowCxV3ExportTestCasesMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExportTestCasesMetadata(
    api.GoogleCloudDialogflowCxV3ExportTestCasesMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3ExportTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportTestCasesMetadata < 3) {}
  buildCounterGoogleCloudDialogflowCxV3ExportTestCasesMetadata--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ExportTestCasesRequest = 0;
api.GoogleCloudDialogflowCxV3ExportTestCasesRequest
    buildGoogleCloudDialogflowCxV3ExportTestCasesRequest() {
  var o = api.GoogleCloudDialogflowCxV3ExportTestCasesRequest();
  buildCounterGoogleCloudDialogflowCxV3ExportTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportTestCasesRequest < 3) {
    o.dataFormat = 'foo';
    o.filter = 'foo';
    o.gcsUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ExportTestCasesRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExportTestCasesRequest(
    api.GoogleCloudDialogflowCxV3ExportTestCasesRequest o) {
  buildCounterGoogleCloudDialogflowCxV3ExportTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportTestCasesRequest < 3) {
    unittest.expect(o.dataFormat, unittest.equals('foo'));
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.gcsUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ExportTestCasesRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ExportTestCasesResponse = 0;
api.GoogleCloudDialogflowCxV3ExportTestCasesResponse
    buildGoogleCloudDialogflowCxV3ExportTestCasesResponse() {
  var o = api.GoogleCloudDialogflowCxV3ExportTestCasesResponse();
  buildCounterGoogleCloudDialogflowCxV3ExportTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportTestCasesResponse < 3) {
    o.content = 'foo';
    o.gcsUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ExportTestCasesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExportTestCasesResponse(
    api.GoogleCloudDialogflowCxV3ExportTestCasesResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ExportTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportTestCasesResponse < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.gcsUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ExportTestCasesResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3EventHandler> buildUnnamed5763() {
  var o = <api.GoogleCloudDialogflowCxV3EventHandler>[];
  o.add(buildGoogleCloudDialogflowCxV3EventHandler());
  o.add(buildGoogleCloudDialogflowCxV3EventHandler());
  return o;
}

void checkUnnamed5763(core.List<api.GoogleCloudDialogflowCxV3EventHandler> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3EventHandler(
      o[0] as api.GoogleCloudDialogflowCxV3EventHandler);
  checkGoogleCloudDialogflowCxV3EventHandler(
      o[1] as api.GoogleCloudDialogflowCxV3EventHandler);
}

core.List<api.GoogleCloudDialogflowCxV3TransitionRoute> buildUnnamed5764() {
  var o = <api.GoogleCloudDialogflowCxV3TransitionRoute>[];
  o.add(buildGoogleCloudDialogflowCxV3TransitionRoute());
  o.add(buildGoogleCloudDialogflowCxV3TransitionRoute());
  return o;
}

void checkUnnamed5764(
    core.List<api.GoogleCloudDialogflowCxV3TransitionRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TransitionRoute(
      o[0] as api.GoogleCloudDialogflowCxV3TransitionRoute);
  checkGoogleCloudDialogflowCxV3TransitionRoute(
      o[1] as api.GoogleCloudDialogflowCxV3TransitionRoute);
}

core.int buildCounterGoogleCloudDialogflowCxV3Flow = 0;
api.GoogleCloudDialogflowCxV3Flow buildGoogleCloudDialogflowCxV3Flow() {
  var o = api.GoogleCloudDialogflowCxV3Flow();
  buildCounterGoogleCloudDialogflowCxV3Flow++;
  if (buildCounterGoogleCloudDialogflowCxV3Flow < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.eventHandlers = buildUnnamed5763();
    o.name = 'foo';
    o.nluSettings = buildGoogleCloudDialogflowCxV3NluSettings();
    o.transitionRoutes = buildUnnamed5764();
  }
  buildCounterGoogleCloudDialogflowCxV3Flow--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Flow(api.GoogleCloudDialogflowCxV3Flow o) {
  buildCounterGoogleCloudDialogflowCxV3Flow++;
  if (buildCounterGoogleCloudDialogflowCxV3Flow < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed5763(o.eventHandlers);
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3NluSettings(
        o.nluSettings as api.GoogleCloudDialogflowCxV3NluSettings);
    checkUnnamed5764(o.transitionRoutes);
  }
  buildCounterGoogleCloudDialogflowCxV3Flow--;
}

core.List<api.GoogleCloudDialogflowCxV3ValidationMessage> buildUnnamed5765() {
  var o = <api.GoogleCloudDialogflowCxV3ValidationMessage>[];
  o.add(buildGoogleCloudDialogflowCxV3ValidationMessage());
  o.add(buildGoogleCloudDialogflowCxV3ValidationMessage());
  return o;
}

void checkUnnamed5765(
    core.List<api.GoogleCloudDialogflowCxV3ValidationMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ValidationMessage(
      o[0] as api.GoogleCloudDialogflowCxV3ValidationMessage);
  checkGoogleCloudDialogflowCxV3ValidationMessage(
      o[1] as api.GoogleCloudDialogflowCxV3ValidationMessage);
}

core.int buildCounterGoogleCloudDialogflowCxV3FlowValidationResult = 0;
api.GoogleCloudDialogflowCxV3FlowValidationResult
    buildGoogleCloudDialogflowCxV3FlowValidationResult() {
  var o = api.GoogleCloudDialogflowCxV3FlowValidationResult();
  buildCounterGoogleCloudDialogflowCxV3FlowValidationResult++;
  if (buildCounterGoogleCloudDialogflowCxV3FlowValidationResult < 3) {
    o.name = 'foo';
    o.updateTime = 'foo';
    o.validationMessages = buildUnnamed5765();
  }
  buildCounterGoogleCloudDialogflowCxV3FlowValidationResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FlowValidationResult(
    api.GoogleCloudDialogflowCxV3FlowValidationResult o) {
  buildCounterGoogleCloudDialogflowCxV3FlowValidationResult++;
  if (buildCounterGoogleCloudDialogflowCxV3FlowValidationResult < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    checkUnnamed5765(o.validationMessages);
  }
  buildCounterGoogleCloudDialogflowCxV3FlowValidationResult--;
}

core.List<api.GoogleCloudDialogflowCxV3FormParameter> buildUnnamed5766() {
  var o = <api.GoogleCloudDialogflowCxV3FormParameter>[];
  o.add(buildGoogleCloudDialogflowCxV3FormParameter());
  o.add(buildGoogleCloudDialogflowCxV3FormParameter());
  return o;
}

void checkUnnamed5766(core.List<api.GoogleCloudDialogflowCxV3FormParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3FormParameter(
      o[0] as api.GoogleCloudDialogflowCxV3FormParameter);
  checkGoogleCloudDialogflowCxV3FormParameter(
      o[1] as api.GoogleCloudDialogflowCxV3FormParameter);
}

core.int buildCounterGoogleCloudDialogflowCxV3Form = 0;
api.GoogleCloudDialogflowCxV3Form buildGoogleCloudDialogflowCxV3Form() {
  var o = api.GoogleCloudDialogflowCxV3Form();
  buildCounterGoogleCloudDialogflowCxV3Form++;
  if (buildCounterGoogleCloudDialogflowCxV3Form < 3) {
    o.parameters = buildUnnamed5766();
  }
  buildCounterGoogleCloudDialogflowCxV3Form--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Form(api.GoogleCloudDialogflowCxV3Form o) {
  buildCounterGoogleCloudDialogflowCxV3Form++;
  if (buildCounterGoogleCloudDialogflowCxV3Form < 3) {
    checkUnnamed5766(o.parameters);
  }
  buildCounterGoogleCloudDialogflowCxV3Form--;
}

core.int buildCounterGoogleCloudDialogflowCxV3FormParameter = 0;
api.GoogleCloudDialogflowCxV3FormParameter
    buildGoogleCloudDialogflowCxV3FormParameter() {
  var o = api.GoogleCloudDialogflowCxV3FormParameter();
  buildCounterGoogleCloudDialogflowCxV3FormParameter++;
  if (buildCounterGoogleCloudDialogflowCxV3FormParameter < 3) {
    o.defaultValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.displayName = 'foo';
    o.entityType = 'foo';
    o.fillBehavior = buildGoogleCloudDialogflowCxV3FormParameterFillBehavior();
    o.isList = true;
    o.redact = true;
    o.required = true;
  }
  buildCounterGoogleCloudDialogflowCxV3FormParameter--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FormParameter(
    api.GoogleCloudDialogflowCxV3FormParameter o) {
  buildCounterGoogleCloudDialogflowCxV3FormParameter++;
  if (buildCounterGoogleCloudDialogflowCxV3FormParameter < 3) {
    var casted7 = (o.defaultValue) as core.Map;
    unittest.expect(casted7, unittest.hasLength(3));
    unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted7['bool'], unittest.equals(true));
    unittest.expect(casted7['string'], unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityType, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3FormParameterFillBehavior(o.fillBehavior
        as api.GoogleCloudDialogflowCxV3FormParameterFillBehavior);
    unittest.expect(o.isList, unittest.isTrue);
    unittest.expect(o.redact, unittest.isTrue);
    unittest.expect(o.required, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3FormParameter--;
}

core.List<api.GoogleCloudDialogflowCxV3EventHandler> buildUnnamed5767() {
  var o = <api.GoogleCloudDialogflowCxV3EventHandler>[];
  o.add(buildGoogleCloudDialogflowCxV3EventHandler());
  o.add(buildGoogleCloudDialogflowCxV3EventHandler());
  return o;
}

void checkUnnamed5767(core.List<api.GoogleCloudDialogflowCxV3EventHandler> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3EventHandler(
      o[0] as api.GoogleCloudDialogflowCxV3EventHandler);
  checkGoogleCloudDialogflowCxV3EventHandler(
      o[1] as api.GoogleCloudDialogflowCxV3EventHandler);
}

core.int buildCounterGoogleCloudDialogflowCxV3FormParameterFillBehavior = 0;
api.GoogleCloudDialogflowCxV3FormParameterFillBehavior
    buildGoogleCloudDialogflowCxV3FormParameterFillBehavior() {
  var o = api.GoogleCloudDialogflowCxV3FormParameterFillBehavior();
  buildCounterGoogleCloudDialogflowCxV3FormParameterFillBehavior++;
  if (buildCounterGoogleCloudDialogflowCxV3FormParameterFillBehavior < 3) {
    o.initialPromptFulfillment = buildGoogleCloudDialogflowCxV3Fulfillment();
    o.repromptEventHandlers = buildUnnamed5767();
  }
  buildCounterGoogleCloudDialogflowCxV3FormParameterFillBehavior--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FormParameterFillBehavior(
    api.GoogleCloudDialogflowCxV3FormParameterFillBehavior o) {
  buildCounterGoogleCloudDialogflowCxV3FormParameterFillBehavior++;
  if (buildCounterGoogleCloudDialogflowCxV3FormParameterFillBehavior < 3) {
    checkGoogleCloudDialogflowCxV3Fulfillment(
        o.initialPromptFulfillment as api.GoogleCloudDialogflowCxV3Fulfillment);
    checkUnnamed5767(o.repromptEventHandlers);
  }
  buildCounterGoogleCloudDialogflowCxV3FormParameterFillBehavior--;
}

core.int buildCounterGoogleCloudDialogflowCxV3FulfillIntentRequest = 0;
api.GoogleCloudDialogflowCxV3FulfillIntentRequest
    buildGoogleCloudDialogflowCxV3FulfillIntentRequest() {
  var o = api.GoogleCloudDialogflowCxV3FulfillIntentRequest();
  buildCounterGoogleCloudDialogflowCxV3FulfillIntentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillIntentRequest < 3) {
    o.match = buildGoogleCloudDialogflowCxV3Match();
    o.matchIntentRequest = buildGoogleCloudDialogflowCxV3MatchIntentRequest();
    o.outputAudioConfig = buildGoogleCloudDialogflowCxV3OutputAudioConfig();
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillIntentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FulfillIntentRequest(
    api.GoogleCloudDialogflowCxV3FulfillIntentRequest o) {
  buildCounterGoogleCloudDialogflowCxV3FulfillIntentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillIntentRequest < 3) {
    checkGoogleCloudDialogflowCxV3Match(
        o.match as api.GoogleCloudDialogflowCxV3Match);
    checkGoogleCloudDialogflowCxV3MatchIntentRequest(o.matchIntentRequest
        as api.GoogleCloudDialogflowCxV3MatchIntentRequest);
    checkGoogleCloudDialogflowCxV3OutputAudioConfig(
        o.outputAudioConfig as api.GoogleCloudDialogflowCxV3OutputAudioConfig);
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillIntentRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3FulfillIntentResponse = 0;
api.GoogleCloudDialogflowCxV3FulfillIntentResponse
    buildGoogleCloudDialogflowCxV3FulfillIntentResponse() {
  var o = api.GoogleCloudDialogflowCxV3FulfillIntentResponse();
  buildCounterGoogleCloudDialogflowCxV3FulfillIntentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillIntentResponse < 3) {
    o.outputAudio = 'foo';
    o.outputAudioConfig = buildGoogleCloudDialogflowCxV3OutputAudioConfig();
    o.queryResult = buildGoogleCloudDialogflowCxV3QueryResult();
    o.responseId = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillIntentResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FulfillIntentResponse(
    api.GoogleCloudDialogflowCxV3FulfillIntentResponse o) {
  buildCounterGoogleCloudDialogflowCxV3FulfillIntentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillIntentResponse < 3) {
    unittest.expect(o.outputAudio, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3OutputAudioConfig(
        o.outputAudioConfig as api.GoogleCloudDialogflowCxV3OutputAudioConfig);
    checkGoogleCloudDialogflowCxV3QueryResult(
        o.queryResult as api.GoogleCloudDialogflowCxV3QueryResult);
    unittest.expect(o.responseId, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillIntentResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases>
    buildUnnamed5768() {
  var o = <api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases>[];
  o.add(buildGoogleCloudDialogflowCxV3FulfillmentConditionalCases());
  o.add(buildGoogleCloudDialogflowCxV3FulfillmentConditionalCases());
  return o;
}

void checkUnnamed5768(
    core.List<api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3FulfillmentConditionalCases(
      o[0] as api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases);
  checkGoogleCloudDialogflowCxV3FulfillmentConditionalCases(
      o[1] as api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases);
}

core.List<api.GoogleCloudDialogflowCxV3ResponseMessage> buildUnnamed5769() {
  var o = <api.GoogleCloudDialogflowCxV3ResponseMessage>[];
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessage());
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessage());
  return o;
}

void checkUnnamed5769(
    core.List<api.GoogleCloudDialogflowCxV3ResponseMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ResponseMessage(
      o[0] as api.GoogleCloudDialogflowCxV3ResponseMessage);
  checkGoogleCloudDialogflowCxV3ResponseMessage(
      o[1] as api.GoogleCloudDialogflowCxV3ResponseMessage);
}

core.List<api.GoogleCloudDialogflowCxV3FulfillmentSetParameterAction>
    buildUnnamed5770() {
  var o = <api.GoogleCloudDialogflowCxV3FulfillmentSetParameterAction>[];
  o.add(buildGoogleCloudDialogflowCxV3FulfillmentSetParameterAction());
  o.add(buildGoogleCloudDialogflowCxV3FulfillmentSetParameterAction());
  return o;
}

void checkUnnamed5770(
    core.List<api.GoogleCloudDialogflowCxV3FulfillmentSetParameterAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3FulfillmentSetParameterAction(
      o[0] as api.GoogleCloudDialogflowCxV3FulfillmentSetParameterAction);
  checkGoogleCloudDialogflowCxV3FulfillmentSetParameterAction(
      o[1] as api.GoogleCloudDialogflowCxV3FulfillmentSetParameterAction);
}

core.int buildCounterGoogleCloudDialogflowCxV3Fulfillment = 0;
api.GoogleCloudDialogflowCxV3Fulfillment
    buildGoogleCloudDialogflowCxV3Fulfillment() {
  var o = api.GoogleCloudDialogflowCxV3Fulfillment();
  buildCounterGoogleCloudDialogflowCxV3Fulfillment++;
  if (buildCounterGoogleCloudDialogflowCxV3Fulfillment < 3) {
    o.conditionalCases = buildUnnamed5768();
    o.messages = buildUnnamed5769();
    o.setParameterActions = buildUnnamed5770();
    o.tag = 'foo';
    o.webhook = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3Fulfillment--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Fulfillment(
    api.GoogleCloudDialogflowCxV3Fulfillment o) {
  buildCounterGoogleCloudDialogflowCxV3Fulfillment++;
  if (buildCounterGoogleCloudDialogflowCxV3Fulfillment < 3) {
    checkUnnamed5768(o.conditionalCases);
    checkUnnamed5769(o.messages);
    checkUnnamed5770(o.setParameterActions);
    unittest.expect(o.tag, unittest.equals('foo'));
    unittest.expect(o.webhook, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3Fulfillment--;
}

core.List<api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase>
    buildUnnamed5771() {
  var o = <api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase>[];
  o.add(buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase());
  o.add(buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase());
  return o;
}

void checkUnnamed5771(
    core.List<api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase(
      o[0] as api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase);
  checkGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase(
      o[1] as api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase);
}

core.int buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCases = 0;
api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases
    buildGoogleCloudDialogflowCxV3FulfillmentConditionalCases() {
  var o = api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases();
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCases++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCases < 3) {
    o.cases = buildUnnamed5771();
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCases--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FulfillmentConditionalCases(
    api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases o) {
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCases++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCases < 3) {
    checkUnnamed5771(o.cases);
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCases--;
}

core.List<
        api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent>
    buildUnnamed5772() {
  var o = <
      api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent>[];
  o.add(
      buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent());
  o.add(
      buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent());
  return o;
}

void checkUnnamed5772(
    core.List<
            api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent(o[0]
      as api
          .GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent);
  checkGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent(o[1]
      as api
          .GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent);
}

core.int buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase =
    0;
api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase
    buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase() {
  var o = api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase();
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase <
      3) {
    o.caseContent = buildUnnamed5772();
    o.condition = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase(
    api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase o) {
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase <
      3) {
    checkUnnamed5772(o.caseContent);
    unittest.expect(o.condition, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent =
    0;
api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent
    buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent() {
  var o =
      api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent();
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent <
      3) {
    o.additionalCases =
        buildGoogleCloudDialogflowCxV3FulfillmentConditionalCases();
    o.message = buildGoogleCloudDialogflowCxV3ResponseMessage();
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent(
    api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent o) {
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent <
      3) {
    checkGoogleCloudDialogflowCxV3FulfillmentConditionalCases(o.additionalCases
        as api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases);
    checkGoogleCloudDialogflowCxV3ResponseMessage(
        o.message as api.GoogleCloudDialogflowCxV3ResponseMessage);
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent--;
}

core.int buildCounterGoogleCloudDialogflowCxV3FulfillmentSetParameterAction = 0;
api.GoogleCloudDialogflowCxV3FulfillmentSetParameterAction
    buildGoogleCloudDialogflowCxV3FulfillmentSetParameterAction() {
  var o = api.GoogleCloudDialogflowCxV3FulfillmentSetParameterAction();
  buildCounterGoogleCloudDialogflowCxV3FulfillmentSetParameterAction++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillmentSetParameterAction < 3) {
    o.parameter = 'foo';
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillmentSetParameterAction--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FulfillmentSetParameterAction(
    api.GoogleCloudDialogflowCxV3FulfillmentSetParameterAction o) {
  buildCounterGoogleCloudDialogflowCxV3FulfillmentSetParameterAction++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillmentSetParameterAction < 3) {
    unittest.expect(o.parameter, unittest.equals('foo'));
    var casted8 = (o.value) as core.Map;
    unittest.expect(casted8, unittest.hasLength(3));
    unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted8['bool'], unittest.equals(true));
    unittest.expect(casted8['string'], unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillmentSetParameterAction--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata = 0;
api.GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata
    buildGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata() {
  var o = api.GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata();
  buildCounterGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata <
      3) {
    o.state = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata(
    api.GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata <
      3) {
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata =
    0;
api.GoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata
    buildGoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata() {
  var o = api.GoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata();
  buildCounterGoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata <
      3) {
    o.genericMetadata =
        buildGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata();
  }
  buildCounterGoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata(
    api.GoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata <
      3) {
    checkGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata(
        o.genericMetadata
            as api.GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata);
  }
  buildCounterGoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata--;
}

core.List<api.GoogleRpcStatus> buildUnnamed5773() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed5773(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int buildCounterGoogleCloudDialogflowCxV3ImportDocumentsResponse = 0;
api.GoogleCloudDialogflowCxV3ImportDocumentsResponse
    buildGoogleCloudDialogflowCxV3ImportDocumentsResponse() {
  var o = api.GoogleCloudDialogflowCxV3ImportDocumentsResponse();
  buildCounterGoogleCloudDialogflowCxV3ImportDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ImportDocumentsResponse < 3) {
    o.warnings = buildUnnamed5773();
  }
  buildCounterGoogleCloudDialogflowCxV3ImportDocumentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ImportDocumentsResponse(
    api.GoogleCloudDialogflowCxV3ImportDocumentsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ImportDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ImportDocumentsResponse < 3) {
    checkUnnamed5773(o.warnings);
  }
  buildCounterGoogleCloudDialogflowCxV3ImportDocumentsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3TestCaseError> buildUnnamed5774() {
  var o = <api.GoogleCloudDialogflowCxV3TestCaseError>[];
  o.add(buildGoogleCloudDialogflowCxV3TestCaseError());
  o.add(buildGoogleCloudDialogflowCxV3TestCaseError());
  return o;
}

void checkUnnamed5774(core.List<api.GoogleCloudDialogflowCxV3TestCaseError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TestCaseError(
      o[0] as api.GoogleCloudDialogflowCxV3TestCaseError);
  checkGoogleCloudDialogflowCxV3TestCaseError(
      o[1] as api.GoogleCloudDialogflowCxV3TestCaseError);
}

core.int buildCounterGoogleCloudDialogflowCxV3ImportTestCasesMetadata = 0;
api.GoogleCloudDialogflowCxV3ImportTestCasesMetadata
    buildGoogleCloudDialogflowCxV3ImportTestCasesMetadata() {
  var o = api.GoogleCloudDialogflowCxV3ImportTestCasesMetadata();
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3ImportTestCasesMetadata < 3) {
    o.errors = buildUnnamed5774();
  }
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ImportTestCasesMetadata(
    api.GoogleCloudDialogflowCxV3ImportTestCasesMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3ImportTestCasesMetadata < 3) {
    checkUnnamed5774(o.errors);
  }
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesMetadata--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ImportTestCasesRequest = 0;
api.GoogleCloudDialogflowCxV3ImportTestCasesRequest
    buildGoogleCloudDialogflowCxV3ImportTestCasesRequest() {
  var o = api.GoogleCloudDialogflowCxV3ImportTestCasesRequest();
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ImportTestCasesRequest < 3) {
    o.content = 'foo';
    o.gcsUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ImportTestCasesRequest(
    api.GoogleCloudDialogflowCxV3ImportTestCasesRequest o) {
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ImportTestCasesRequest < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.gcsUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesRequest--;
}

core.List<core.String> buildUnnamed5775() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5775(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3ImportTestCasesResponse = 0;
api.GoogleCloudDialogflowCxV3ImportTestCasesResponse
    buildGoogleCloudDialogflowCxV3ImportTestCasesResponse() {
  var o = api.GoogleCloudDialogflowCxV3ImportTestCasesResponse();
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ImportTestCasesResponse < 3) {
    o.names = buildUnnamed5775();
  }
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ImportTestCasesResponse(
    api.GoogleCloudDialogflowCxV3ImportTestCasesResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ImportTestCasesResponse < 3) {
    checkUnnamed5775(o.names);
  }
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesResponse--;
}

core.List<core.String> buildUnnamed5776() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5776(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3InputAudioConfig = 0;
api.GoogleCloudDialogflowCxV3InputAudioConfig
    buildGoogleCloudDialogflowCxV3InputAudioConfig() {
  var o = api.GoogleCloudDialogflowCxV3InputAudioConfig();
  buildCounterGoogleCloudDialogflowCxV3InputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3InputAudioConfig < 3) {
    o.audioEncoding = 'foo';
    o.enableWordInfo = true;
    o.model = 'foo';
    o.modelVariant = 'foo';
    o.phraseHints = buildUnnamed5776();
    o.sampleRateHertz = 42;
    o.singleUtterance = true;
  }
  buildCounterGoogleCloudDialogflowCxV3InputAudioConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3InputAudioConfig(
    api.GoogleCloudDialogflowCxV3InputAudioConfig o) {
  buildCounterGoogleCloudDialogflowCxV3InputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3InputAudioConfig < 3) {
    unittest.expect(o.audioEncoding, unittest.equals('foo'));
    unittest.expect(o.enableWordInfo, unittest.isTrue);
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.modelVariant, unittest.equals('foo'));
    checkUnnamed5776(o.phraseHints);
    unittest.expect(o.sampleRateHertz, unittest.equals(42));
    unittest.expect(o.singleUtterance, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3InputAudioConfig--;
}

core.Map<core.String, core.String> buildUnnamed5777() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5777(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3IntentParameter> buildUnnamed5778() {
  var o = <api.GoogleCloudDialogflowCxV3IntentParameter>[];
  o.add(buildGoogleCloudDialogflowCxV3IntentParameter());
  o.add(buildGoogleCloudDialogflowCxV3IntentParameter());
  return o;
}

void checkUnnamed5778(
    core.List<api.GoogleCloudDialogflowCxV3IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3IntentParameter(
      o[0] as api.GoogleCloudDialogflowCxV3IntentParameter);
  checkGoogleCloudDialogflowCxV3IntentParameter(
      o[1] as api.GoogleCloudDialogflowCxV3IntentParameter);
}

core.List<api.GoogleCloudDialogflowCxV3IntentTrainingPhrase>
    buildUnnamed5779() {
  var o = <api.GoogleCloudDialogflowCxV3IntentTrainingPhrase>[];
  o.add(buildGoogleCloudDialogflowCxV3IntentTrainingPhrase());
  o.add(buildGoogleCloudDialogflowCxV3IntentTrainingPhrase());
  return o;
}

void checkUnnamed5779(
    core.List<api.GoogleCloudDialogflowCxV3IntentTrainingPhrase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3IntentTrainingPhrase(
      o[0] as api.GoogleCloudDialogflowCxV3IntentTrainingPhrase);
  checkGoogleCloudDialogflowCxV3IntentTrainingPhrase(
      o[1] as api.GoogleCloudDialogflowCxV3IntentTrainingPhrase);
}

core.int buildCounterGoogleCloudDialogflowCxV3Intent = 0;
api.GoogleCloudDialogflowCxV3Intent buildGoogleCloudDialogflowCxV3Intent() {
  var o = api.GoogleCloudDialogflowCxV3Intent();
  buildCounterGoogleCloudDialogflowCxV3Intent++;
  if (buildCounterGoogleCloudDialogflowCxV3Intent < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.isFallback = true;
    o.labels = buildUnnamed5777();
    o.name = 'foo';
    o.parameters = buildUnnamed5778();
    o.priority = 42;
    o.trainingPhrases = buildUnnamed5779();
  }
  buildCounterGoogleCloudDialogflowCxV3Intent--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Intent(
    api.GoogleCloudDialogflowCxV3Intent o) {
  buildCounterGoogleCloudDialogflowCxV3Intent++;
  if (buildCounterGoogleCloudDialogflowCxV3Intent < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.isFallback, unittest.isTrue);
    checkUnnamed5777(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5778(o.parameters);
    unittest.expect(o.priority, unittest.equals(42));
    checkUnnamed5779(o.trainingPhrases);
  }
  buildCounterGoogleCloudDialogflowCxV3Intent--;
}

core.List<api.GoogleCloudDialogflowCxV3IntentCoverageIntent>
    buildUnnamed5780() {
  var o = <api.GoogleCloudDialogflowCxV3IntentCoverageIntent>[];
  o.add(buildGoogleCloudDialogflowCxV3IntentCoverageIntent());
  o.add(buildGoogleCloudDialogflowCxV3IntentCoverageIntent());
  return o;
}

void checkUnnamed5780(
    core.List<api.GoogleCloudDialogflowCxV3IntentCoverageIntent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3IntentCoverageIntent(
      o[0] as api.GoogleCloudDialogflowCxV3IntentCoverageIntent);
  checkGoogleCloudDialogflowCxV3IntentCoverageIntent(
      o[1] as api.GoogleCloudDialogflowCxV3IntentCoverageIntent);
}

core.int buildCounterGoogleCloudDialogflowCxV3IntentCoverage = 0;
api.GoogleCloudDialogflowCxV3IntentCoverage
    buildGoogleCloudDialogflowCxV3IntentCoverage() {
  var o = api.GoogleCloudDialogflowCxV3IntentCoverage();
  buildCounterGoogleCloudDialogflowCxV3IntentCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentCoverage < 3) {
    o.coverageScore = 42.0;
    o.intents = buildUnnamed5780();
  }
  buildCounterGoogleCloudDialogflowCxV3IntentCoverage--;
  return o;
}

void checkGoogleCloudDialogflowCxV3IntentCoverage(
    api.GoogleCloudDialogflowCxV3IntentCoverage o) {
  buildCounterGoogleCloudDialogflowCxV3IntentCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentCoverage < 3) {
    unittest.expect(o.coverageScore, unittest.equals(42.0));
    checkUnnamed5780(o.intents);
  }
  buildCounterGoogleCloudDialogflowCxV3IntentCoverage--;
}

core.int buildCounterGoogleCloudDialogflowCxV3IntentCoverageIntent = 0;
api.GoogleCloudDialogflowCxV3IntentCoverageIntent
    buildGoogleCloudDialogflowCxV3IntentCoverageIntent() {
  var o = api.GoogleCloudDialogflowCxV3IntentCoverageIntent();
  buildCounterGoogleCloudDialogflowCxV3IntentCoverageIntent++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentCoverageIntent < 3) {
    o.covered = true;
    o.intent = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3IntentCoverageIntent--;
  return o;
}

void checkGoogleCloudDialogflowCxV3IntentCoverageIntent(
    api.GoogleCloudDialogflowCxV3IntentCoverageIntent o) {
  buildCounterGoogleCloudDialogflowCxV3IntentCoverageIntent++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentCoverageIntent < 3) {
    unittest.expect(o.covered, unittest.isTrue);
    unittest.expect(o.intent, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3IntentCoverageIntent--;
}

core.int buildCounterGoogleCloudDialogflowCxV3IntentInput = 0;
api.GoogleCloudDialogflowCxV3IntentInput
    buildGoogleCloudDialogflowCxV3IntentInput() {
  var o = api.GoogleCloudDialogflowCxV3IntentInput();
  buildCounterGoogleCloudDialogflowCxV3IntentInput++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentInput < 3) {
    o.intent = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3IntentInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3IntentInput(
    api.GoogleCloudDialogflowCxV3IntentInput o) {
  buildCounterGoogleCloudDialogflowCxV3IntentInput++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentInput < 3) {
    unittest.expect(o.intent, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3IntentInput--;
}

core.int buildCounterGoogleCloudDialogflowCxV3IntentParameter = 0;
api.GoogleCloudDialogflowCxV3IntentParameter
    buildGoogleCloudDialogflowCxV3IntentParameter() {
  var o = api.GoogleCloudDialogflowCxV3IntentParameter();
  buildCounterGoogleCloudDialogflowCxV3IntentParameter++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentParameter < 3) {
    o.entityType = 'foo';
    o.id = 'foo';
    o.isList = true;
    o.redact = true;
  }
  buildCounterGoogleCloudDialogflowCxV3IntentParameter--;
  return o;
}

void checkGoogleCloudDialogflowCxV3IntentParameter(
    api.GoogleCloudDialogflowCxV3IntentParameter o) {
  buildCounterGoogleCloudDialogflowCxV3IntentParameter++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentParameter < 3) {
    unittest.expect(o.entityType, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.isList, unittest.isTrue);
    unittest.expect(o.redact, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3IntentParameter--;
}

core.List<api.GoogleCloudDialogflowCxV3IntentTrainingPhrasePart>
    buildUnnamed5781() {
  var o = <api.GoogleCloudDialogflowCxV3IntentTrainingPhrasePart>[];
  o.add(buildGoogleCloudDialogflowCxV3IntentTrainingPhrasePart());
  o.add(buildGoogleCloudDialogflowCxV3IntentTrainingPhrasePart());
  return o;
}

void checkUnnamed5781(
    core.List<api.GoogleCloudDialogflowCxV3IntentTrainingPhrasePart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3IntentTrainingPhrasePart(
      o[0] as api.GoogleCloudDialogflowCxV3IntentTrainingPhrasePart);
  checkGoogleCloudDialogflowCxV3IntentTrainingPhrasePart(
      o[1] as api.GoogleCloudDialogflowCxV3IntentTrainingPhrasePart);
}

core.int buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrase = 0;
api.GoogleCloudDialogflowCxV3IntentTrainingPhrase
    buildGoogleCloudDialogflowCxV3IntentTrainingPhrase() {
  var o = api.GoogleCloudDialogflowCxV3IntentTrainingPhrase();
  buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrase < 3) {
    o.id = 'foo';
    o.parts = buildUnnamed5781();
    o.repeatCount = 42;
  }
  buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrase--;
  return o;
}

void checkGoogleCloudDialogflowCxV3IntentTrainingPhrase(
    api.GoogleCloudDialogflowCxV3IntentTrainingPhrase o) {
  buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrase < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed5781(o.parts);
    unittest.expect(o.repeatCount, unittest.equals(42));
  }
  buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrase--;
}

core.int buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrasePart = 0;
api.GoogleCloudDialogflowCxV3IntentTrainingPhrasePart
    buildGoogleCloudDialogflowCxV3IntentTrainingPhrasePart() {
  var o = api.GoogleCloudDialogflowCxV3IntentTrainingPhrasePart();
  buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrasePart++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrasePart < 3) {
    o.parameterId = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrasePart--;
  return o;
}

void checkGoogleCloudDialogflowCxV3IntentTrainingPhrasePart(
    api.GoogleCloudDialogflowCxV3IntentTrainingPhrasePart o) {
  buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrasePart++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrasePart < 3) {
    unittest.expect(o.parameterId, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrasePart--;
}

core.List<api.GoogleCloudDialogflowCxV3Agent> buildUnnamed5782() {
  var o = <api.GoogleCloudDialogflowCxV3Agent>[];
  o.add(buildGoogleCloudDialogflowCxV3Agent());
  o.add(buildGoogleCloudDialogflowCxV3Agent());
  return o;
}

void checkUnnamed5782(core.List<api.GoogleCloudDialogflowCxV3Agent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Agent(
      o[0] as api.GoogleCloudDialogflowCxV3Agent);
  checkGoogleCloudDialogflowCxV3Agent(
      o[1] as api.GoogleCloudDialogflowCxV3Agent);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListAgentsResponse = 0;
api.GoogleCloudDialogflowCxV3ListAgentsResponse
    buildGoogleCloudDialogflowCxV3ListAgentsResponse() {
  var o = api.GoogleCloudDialogflowCxV3ListAgentsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListAgentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListAgentsResponse < 3) {
    o.agents = buildUnnamed5782();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ListAgentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListAgentsResponse(
    api.GoogleCloudDialogflowCxV3ListAgentsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListAgentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListAgentsResponse < 3) {
    checkUnnamed5782(o.agents);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ListAgentsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3EntityType> buildUnnamed5783() {
  var o = <api.GoogleCloudDialogflowCxV3EntityType>[];
  o.add(buildGoogleCloudDialogflowCxV3EntityType());
  o.add(buildGoogleCloudDialogflowCxV3EntityType());
  return o;
}

void checkUnnamed5783(core.List<api.GoogleCloudDialogflowCxV3EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3EntityType(
      o[0] as api.GoogleCloudDialogflowCxV3EntityType);
  checkGoogleCloudDialogflowCxV3EntityType(
      o[1] as api.GoogleCloudDialogflowCxV3EntityType);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListEntityTypesResponse = 0;
api.GoogleCloudDialogflowCxV3ListEntityTypesResponse
    buildGoogleCloudDialogflowCxV3ListEntityTypesResponse() {
  var o = api.GoogleCloudDialogflowCxV3ListEntityTypesResponse();
  buildCounterGoogleCloudDialogflowCxV3ListEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListEntityTypesResponse < 3) {
    o.entityTypes = buildUnnamed5783();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ListEntityTypesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListEntityTypesResponse(
    api.GoogleCloudDialogflowCxV3ListEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListEntityTypesResponse < 3) {
    checkUnnamed5783(o.entityTypes);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ListEntityTypesResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3Environment> buildUnnamed5784() {
  var o = <api.GoogleCloudDialogflowCxV3Environment>[];
  o.add(buildGoogleCloudDialogflowCxV3Environment());
  o.add(buildGoogleCloudDialogflowCxV3Environment());
  return o;
}

void checkUnnamed5784(core.List<api.GoogleCloudDialogflowCxV3Environment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Environment(
      o[0] as api.GoogleCloudDialogflowCxV3Environment);
  checkGoogleCloudDialogflowCxV3Environment(
      o[1] as api.GoogleCloudDialogflowCxV3Environment);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListEnvironmentsResponse = 0;
api.GoogleCloudDialogflowCxV3ListEnvironmentsResponse
    buildGoogleCloudDialogflowCxV3ListEnvironmentsResponse() {
  var o = api.GoogleCloudDialogflowCxV3ListEnvironmentsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListEnvironmentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListEnvironmentsResponse < 3) {
    o.environments = buildUnnamed5784();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ListEnvironmentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListEnvironmentsResponse(
    api.GoogleCloudDialogflowCxV3ListEnvironmentsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListEnvironmentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListEnvironmentsResponse < 3) {
    checkUnnamed5784(o.environments);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ListEnvironmentsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3Experiment> buildUnnamed5785() {
  var o = <api.GoogleCloudDialogflowCxV3Experiment>[];
  o.add(buildGoogleCloudDialogflowCxV3Experiment());
  o.add(buildGoogleCloudDialogflowCxV3Experiment());
  return o;
}

void checkUnnamed5785(core.List<api.GoogleCloudDialogflowCxV3Experiment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Experiment(
      o[0] as api.GoogleCloudDialogflowCxV3Experiment);
  checkGoogleCloudDialogflowCxV3Experiment(
      o[1] as api.GoogleCloudDialogflowCxV3Experiment);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListExperimentsResponse = 0;
api.GoogleCloudDialogflowCxV3ListExperimentsResponse
    buildGoogleCloudDialogflowCxV3ListExperimentsResponse() {
  var o = api.GoogleCloudDialogflowCxV3ListExperimentsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListExperimentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListExperimentsResponse < 3) {
    o.experiments = buildUnnamed5785();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ListExperimentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListExperimentsResponse(
    api.GoogleCloudDialogflowCxV3ListExperimentsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListExperimentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListExperimentsResponse < 3) {
    checkUnnamed5785(o.experiments);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ListExperimentsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3Flow> buildUnnamed5786() {
  var o = <api.GoogleCloudDialogflowCxV3Flow>[];
  o.add(buildGoogleCloudDialogflowCxV3Flow());
  o.add(buildGoogleCloudDialogflowCxV3Flow());
  return o;
}

void checkUnnamed5786(core.List<api.GoogleCloudDialogflowCxV3Flow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Flow(o[0] as api.GoogleCloudDialogflowCxV3Flow);
  checkGoogleCloudDialogflowCxV3Flow(o[1] as api.GoogleCloudDialogflowCxV3Flow);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListFlowsResponse = 0;
api.GoogleCloudDialogflowCxV3ListFlowsResponse
    buildGoogleCloudDialogflowCxV3ListFlowsResponse() {
  var o = api.GoogleCloudDialogflowCxV3ListFlowsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListFlowsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListFlowsResponse < 3) {
    o.flows = buildUnnamed5786();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ListFlowsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListFlowsResponse(
    api.GoogleCloudDialogflowCxV3ListFlowsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListFlowsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListFlowsResponse < 3) {
    checkUnnamed5786(o.flows);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ListFlowsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3Intent> buildUnnamed5787() {
  var o = <api.GoogleCloudDialogflowCxV3Intent>[];
  o.add(buildGoogleCloudDialogflowCxV3Intent());
  o.add(buildGoogleCloudDialogflowCxV3Intent());
  return o;
}

void checkUnnamed5787(core.List<api.GoogleCloudDialogflowCxV3Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Intent(
      o[0] as api.GoogleCloudDialogflowCxV3Intent);
  checkGoogleCloudDialogflowCxV3Intent(
      o[1] as api.GoogleCloudDialogflowCxV3Intent);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListIntentsResponse = 0;
api.GoogleCloudDialogflowCxV3ListIntentsResponse
    buildGoogleCloudDialogflowCxV3ListIntentsResponse() {
  var o = api.GoogleCloudDialogflowCxV3ListIntentsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListIntentsResponse < 3) {
    o.intents = buildUnnamed5787();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ListIntentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListIntentsResponse(
    api.GoogleCloudDialogflowCxV3ListIntentsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListIntentsResponse < 3) {
    checkUnnamed5787(o.intents);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ListIntentsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3Page> buildUnnamed5788() {
  var o = <api.GoogleCloudDialogflowCxV3Page>[];
  o.add(buildGoogleCloudDialogflowCxV3Page());
  o.add(buildGoogleCloudDialogflowCxV3Page());
  return o;
}

void checkUnnamed5788(core.List<api.GoogleCloudDialogflowCxV3Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Page(o[0] as api.GoogleCloudDialogflowCxV3Page);
  checkGoogleCloudDialogflowCxV3Page(o[1] as api.GoogleCloudDialogflowCxV3Page);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListPagesResponse = 0;
api.GoogleCloudDialogflowCxV3ListPagesResponse
    buildGoogleCloudDialogflowCxV3ListPagesResponse() {
  var o = api.GoogleCloudDialogflowCxV3ListPagesResponse();
  buildCounterGoogleCloudDialogflowCxV3ListPagesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListPagesResponse < 3) {
    o.nextPageToken = 'foo';
    o.pages = buildUnnamed5788();
  }
  buildCounterGoogleCloudDialogflowCxV3ListPagesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListPagesResponse(
    api.GoogleCloudDialogflowCxV3ListPagesResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListPagesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListPagesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5788(o.pages);
  }
  buildCounterGoogleCloudDialogflowCxV3ListPagesResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3SecuritySettings> buildUnnamed5789() {
  var o = <api.GoogleCloudDialogflowCxV3SecuritySettings>[];
  o.add(buildGoogleCloudDialogflowCxV3SecuritySettings());
  o.add(buildGoogleCloudDialogflowCxV3SecuritySettings());
  return o;
}

void checkUnnamed5789(
    core.List<api.GoogleCloudDialogflowCxV3SecuritySettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3SecuritySettings(
      o[0] as api.GoogleCloudDialogflowCxV3SecuritySettings);
  checkGoogleCloudDialogflowCxV3SecuritySettings(
      o[1] as api.GoogleCloudDialogflowCxV3SecuritySettings);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListSecuritySettingsResponse = 0;
api.GoogleCloudDialogflowCxV3ListSecuritySettingsResponse
    buildGoogleCloudDialogflowCxV3ListSecuritySettingsResponse() {
  var o = api.GoogleCloudDialogflowCxV3ListSecuritySettingsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListSecuritySettingsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListSecuritySettingsResponse < 3) {
    o.nextPageToken = 'foo';
    o.securitySettings = buildUnnamed5789();
  }
  buildCounterGoogleCloudDialogflowCxV3ListSecuritySettingsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListSecuritySettingsResponse(
    api.GoogleCloudDialogflowCxV3ListSecuritySettingsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListSecuritySettingsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListSecuritySettingsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5789(o.securitySettings);
  }
  buildCounterGoogleCloudDialogflowCxV3ListSecuritySettingsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3SessionEntityType> buildUnnamed5790() {
  var o = <api.GoogleCloudDialogflowCxV3SessionEntityType>[];
  o.add(buildGoogleCloudDialogflowCxV3SessionEntityType());
  o.add(buildGoogleCloudDialogflowCxV3SessionEntityType());
  return o;
}

void checkUnnamed5790(
    core.List<api.GoogleCloudDialogflowCxV3SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3SessionEntityType(
      o[0] as api.GoogleCloudDialogflowCxV3SessionEntityType);
  checkGoogleCloudDialogflowCxV3SessionEntityType(
      o[1] as api.GoogleCloudDialogflowCxV3SessionEntityType);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse =
    0;
api.GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse
    buildGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse() {
  var o = api.GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse();
  buildCounterGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sessionEntityTypes = buildUnnamed5790();
  }
  buildCounterGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse(
    api.GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5790(o.sessionEntityTypes);
  }
  buildCounterGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3TestCaseResult> buildUnnamed5791() {
  var o = <api.GoogleCloudDialogflowCxV3TestCaseResult>[];
  o.add(buildGoogleCloudDialogflowCxV3TestCaseResult());
  o.add(buildGoogleCloudDialogflowCxV3TestCaseResult());
  return o;
}

void checkUnnamed5791(
    core.List<api.GoogleCloudDialogflowCxV3TestCaseResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TestCaseResult(
      o[0] as api.GoogleCloudDialogflowCxV3TestCaseResult);
  checkGoogleCloudDialogflowCxV3TestCaseResult(
      o[1] as api.GoogleCloudDialogflowCxV3TestCaseResult);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListTestCaseResultsResponse = 0;
api.GoogleCloudDialogflowCxV3ListTestCaseResultsResponse
    buildGoogleCloudDialogflowCxV3ListTestCaseResultsResponse() {
  var o = api.GoogleCloudDialogflowCxV3ListTestCaseResultsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListTestCaseResultsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListTestCaseResultsResponse < 3) {
    o.nextPageToken = 'foo';
    o.testCaseResults = buildUnnamed5791();
  }
  buildCounterGoogleCloudDialogflowCxV3ListTestCaseResultsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListTestCaseResultsResponse(
    api.GoogleCloudDialogflowCxV3ListTestCaseResultsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListTestCaseResultsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListTestCaseResultsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5791(o.testCaseResults);
  }
  buildCounterGoogleCloudDialogflowCxV3ListTestCaseResultsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3TestCase> buildUnnamed5792() {
  var o = <api.GoogleCloudDialogflowCxV3TestCase>[];
  o.add(buildGoogleCloudDialogflowCxV3TestCase());
  o.add(buildGoogleCloudDialogflowCxV3TestCase());
  return o;
}

void checkUnnamed5792(core.List<api.GoogleCloudDialogflowCxV3TestCase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TestCase(
      o[0] as api.GoogleCloudDialogflowCxV3TestCase);
  checkGoogleCloudDialogflowCxV3TestCase(
      o[1] as api.GoogleCloudDialogflowCxV3TestCase);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListTestCasesResponse = 0;
api.GoogleCloudDialogflowCxV3ListTestCasesResponse
    buildGoogleCloudDialogflowCxV3ListTestCasesResponse() {
  var o = api.GoogleCloudDialogflowCxV3ListTestCasesResponse();
  buildCounterGoogleCloudDialogflowCxV3ListTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListTestCasesResponse < 3) {
    o.nextPageToken = 'foo';
    o.testCases = buildUnnamed5792();
  }
  buildCounterGoogleCloudDialogflowCxV3ListTestCasesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListTestCasesResponse(
    api.GoogleCloudDialogflowCxV3ListTestCasesResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListTestCasesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5792(o.testCases);
  }
  buildCounterGoogleCloudDialogflowCxV3ListTestCasesResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3TransitionRouteGroup>
    buildUnnamed5793() {
  var o = <api.GoogleCloudDialogflowCxV3TransitionRouteGroup>[];
  o.add(buildGoogleCloudDialogflowCxV3TransitionRouteGroup());
  o.add(buildGoogleCloudDialogflowCxV3TransitionRouteGroup());
  return o;
}

void checkUnnamed5793(
    core.List<api.GoogleCloudDialogflowCxV3TransitionRouteGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TransitionRouteGroup(
      o[0] as api.GoogleCloudDialogflowCxV3TransitionRouteGroup);
  checkGoogleCloudDialogflowCxV3TransitionRouteGroup(
      o[1] as api.GoogleCloudDialogflowCxV3TransitionRouteGroup);
}

core.int
    buildCounterGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse = 0;
api.GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse
    buildGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse() {
  var o = api.GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.transitionRouteGroups = buildUnnamed5793();
  }
  buildCounterGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse(
    api.GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse <
      3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5793(o.transitionRouteGroups);
  }
  buildCounterGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3Version> buildUnnamed5794() {
  var o = <api.GoogleCloudDialogflowCxV3Version>[];
  o.add(buildGoogleCloudDialogflowCxV3Version());
  o.add(buildGoogleCloudDialogflowCxV3Version());
  return o;
}

void checkUnnamed5794(core.List<api.GoogleCloudDialogflowCxV3Version> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Version(
      o[0] as api.GoogleCloudDialogflowCxV3Version);
  checkGoogleCloudDialogflowCxV3Version(
      o[1] as api.GoogleCloudDialogflowCxV3Version);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListVersionsResponse = 0;
api.GoogleCloudDialogflowCxV3ListVersionsResponse
    buildGoogleCloudDialogflowCxV3ListVersionsResponse() {
  var o = api.GoogleCloudDialogflowCxV3ListVersionsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListVersionsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListVersionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.versions = buildUnnamed5794();
  }
  buildCounterGoogleCloudDialogflowCxV3ListVersionsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListVersionsResponse(
    api.GoogleCloudDialogflowCxV3ListVersionsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListVersionsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListVersionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5794(o.versions);
  }
  buildCounterGoogleCloudDialogflowCxV3ListVersionsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3Webhook> buildUnnamed5795() {
  var o = <api.GoogleCloudDialogflowCxV3Webhook>[];
  o.add(buildGoogleCloudDialogflowCxV3Webhook());
  o.add(buildGoogleCloudDialogflowCxV3Webhook());
  return o;
}

void checkUnnamed5795(core.List<api.GoogleCloudDialogflowCxV3Webhook> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Webhook(
      o[0] as api.GoogleCloudDialogflowCxV3Webhook);
  checkGoogleCloudDialogflowCxV3Webhook(
      o[1] as api.GoogleCloudDialogflowCxV3Webhook);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListWebhooksResponse = 0;
api.GoogleCloudDialogflowCxV3ListWebhooksResponse
    buildGoogleCloudDialogflowCxV3ListWebhooksResponse() {
  var o = api.GoogleCloudDialogflowCxV3ListWebhooksResponse();
  buildCounterGoogleCloudDialogflowCxV3ListWebhooksResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListWebhooksResponse < 3) {
    o.nextPageToken = 'foo';
    o.webhooks = buildUnnamed5795();
  }
  buildCounterGoogleCloudDialogflowCxV3ListWebhooksResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListWebhooksResponse(
    api.GoogleCloudDialogflowCxV3ListWebhooksResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListWebhooksResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListWebhooksResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5795(o.webhooks);
  }
  buildCounterGoogleCloudDialogflowCxV3ListWebhooksResponse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3LoadVersionRequest = 0;
api.GoogleCloudDialogflowCxV3LoadVersionRequest
    buildGoogleCloudDialogflowCxV3LoadVersionRequest() {
  var o = api.GoogleCloudDialogflowCxV3LoadVersionRequest();
  buildCounterGoogleCloudDialogflowCxV3LoadVersionRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3LoadVersionRequest < 3) {
    o.allowOverrideAgentResources = true;
  }
  buildCounterGoogleCloudDialogflowCxV3LoadVersionRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3LoadVersionRequest(
    api.GoogleCloudDialogflowCxV3LoadVersionRequest o) {
  buildCounterGoogleCloudDialogflowCxV3LoadVersionRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3LoadVersionRequest < 3) {
    unittest.expect(o.allowOverrideAgentResources, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3LoadVersionRequest--;
}

core.List<api.GoogleCloudDialogflowCxV3Environment> buildUnnamed5796() {
  var o = <api.GoogleCloudDialogflowCxV3Environment>[];
  o.add(buildGoogleCloudDialogflowCxV3Environment());
  o.add(buildGoogleCloudDialogflowCxV3Environment());
  return o;
}

void checkUnnamed5796(core.List<api.GoogleCloudDialogflowCxV3Environment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Environment(
      o[0] as api.GoogleCloudDialogflowCxV3Environment);
  checkGoogleCloudDialogflowCxV3Environment(
      o[1] as api.GoogleCloudDialogflowCxV3Environment);
}

core.int buildCounterGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse =
    0;
api.GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse
    buildGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse() {
  var o = api.GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse();
  buildCounterGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse <
      3) {
    o.environments = buildUnnamed5796();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse(
    api.GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse o) {
  buildCounterGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse <
      3) {
    checkUnnamed5796(o.environments);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse--;
}

core.Map<core.String, core.Object> buildUnnamed5797() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5797(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
  var casted10 = (o['y']) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3Match = 0;
api.GoogleCloudDialogflowCxV3Match buildGoogleCloudDialogflowCxV3Match() {
  var o = api.GoogleCloudDialogflowCxV3Match();
  buildCounterGoogleCloudDialogflowCxV3Match++;
  if (buildCounterGoogleCloudDialogflowCxV3Match < 3) {
    o.confidence = 42.0;
    o.event = 'foo';
    o.intent = buildGoogleCloudDialogflowCxV3Intent();
    o.matchType = 'foo';
    o.parameters = buildUnnamed5797();
    o.resolvedInput = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3Match--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Match(api.GoogleCloudDialogflowCxV3Match o) {
  buildCounterGoogleCloudDialogflowCxV3Match++;
  if (buildCounterGoogleCloudDialogflowCxV3Match < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.event, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3Intent(
        o.intent as api.GoogleCloudDialogflowCxV3Intent);
    unittest.expect(o.matchType, unittest.equals('foo'));
    checkUnnamed5797(o.parameters);
    unittest.expect(o.resolvedInput, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3Match--;
}

core.int buildCounterGoogleCloudDialogflowCxV3MatchIntentRequest = 0;
api.GoogleCloudDialogflowCxV3MatchIntentRequest
    buildGoogleCloudDialogflowCxV3MatchIntentRequest() {
  var o = api.GoogleCloudDialogflowCxV3MatchIntentRequest();
  buildCounterGoogleCloudDialogflowCxV3MatchIntentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3MatchIntentRequest < 3) {
    o.queryInput = buildGoogleCloudDialogflowCxV3QueryInput();
    o.queryParams = buildGoogleCloudDialogflowCxV3QueryParameters();
  }
  buildCounterGoogleCloudDialogflowCxV3MatchIntentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3MatchIntentRequest(
    api.GoogleCloudDialogflowCxV3MatchIntentRequest o) {
  buildCounterGoogleCloudDialogflowCxV3MatchIntentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3MatchIntentRequest < 3) {
    checkGoogleCloudDialogflowCxV3QueryInput(
        o.queryInput as api.GoogleCloudDialogflowCxV3QueryInput);
    checkGoogleCloudDialogflowCxV3QueryParameters(
        o.queryParams as api.GoogleCloudDialogflowCxV3QueryParameters);
  }
  buildCounterGoogleCloudDialogflowCxV3MatchIntentRequest--;
}

core.List<api.GoogleCloudDialogflowCxV3Match> buildUnnamed5798() {
  var o = <api.GoogleCloudDialogflowCxV3Match>[];
  o.add(buildGoogleCloudDialogflowCxV3Match());
  o.add(buildGoogleCloudDialogflowCxV3Match());
  return o;
}

void checkUnnamed5798(core.List<api.GoogleCloudDialogflowCxV3Match> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Match(
      o[0] as api.GoogleCloudDialogflowCxV3Match);
  checkGoogleCloudDialogflowCxV3Match(
      o[1] as api.GoogleCloudDialogflowCxV3Match);
}

core.int buildCounterGoogleCloudDialogflowCxV3MatchIntentResponse = 0;
api.GoogleCloudDialogflowCxV3MatchIntentResponse
    buildGoogleCloudDialogflowCxV3MatchIntentResponse() {
  var o = api.GoogleCloudDialogflowCxV3MatchIntentResponse();
  buildCounterGoogleCloudDialogflowCxV3MatchIntentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3MatchIntentResponse < 3) {
    o.currentPage = buildGoogleCloudDialogflowCxV3Page();
    o.matches = buildUnnamed5798();
    o.text = 'foo';
    o.transcript = 'foo';
    o.triggerEvent = 'foo';
    o.triggerIntent = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3MatchIntentResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3MatchIntentResponse(
    api.GoogleCloudDialogflowCxV3MatchIntentResponse o) {
  buildCounterGoogleCloudDialogflowCxV3MatchIntentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3MatchIntentResponse < 3) {
    checkGoogleCloudDialogflowCxV3Page(
        o.currentPage as api.GoogleCloudDialogflowCxV3Page);
    checkUnnamed5798(o.matches);
    unittest.expect(o.text, unittest.equals('foo'));
    unittest.expect(o.transcript, unittest.equals('foo'));
    unittest.expect(o.triggerEvent, unittest.equals('foo'));
    unittest.expect(o.triggerIntent, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3MatchIntentResponse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3NluSettings = 0;
api.GoogleCloudDialogflowCxV3NluSettings
    buildGoogleCloudDialogflowCxV3NluSettings() {
  var o = api.GoogleCloudDialogflowCxV3NluSettings();
  buildCounterGoogleCloudDialogflowCxV3NluSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3NluSettings < 3) {
    o.classificationThreshold = 42.0;
    o.modelTrainingMode = 'foo';
    o.modelType = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3NluSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3NluSettings(
    api.GoogleCloudDialogflowCxV3NluSettings o) {
  buildCounterGoogleCloudDialogflowCxV3NluSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3NluSettings < 3) {
    unittest.expect(o.classificationThreshold, unittest.equals(42.0));
    unittest.expect(o.modelTrainingMode, unittest.equals('foo'));
    unittest.expect(o.modelType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3NluSettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3OutputAudioConfig = 0;
api.GoogleCloudDialogflowCxV3OutputAudioConfig
    buildGoogleCloudDialogflowCxV3OutputAudioConfig() {
  var o = api.GoogleCloudDialogflowCxV3OutputAudioConfig();
  buildCounterGoogleCloudDialogflowCxV3OutputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3OutputAudioConfig < 3) {
    o.audioEncoding = 'foo';
    o.sampleRateHertz = 42;
    o.synthesizeSpeechConfig =
        buildGoogleCloudDialogflowCxV3SynthesizeSpeechConfig();
  }
  buildCounterGoogleCloudDialogflowCxV3OutputAudioConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3OutputAudioConfig(
    api.GoogleCloudDialogflowCxV3OutputAudioConfig o) {
  buildCounterGoogleCloudDialogflowCxV3OutputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3OutputAudioConfig < 3) {
    unittest.expect(o.audioEncoding, unittest.equals('foo'));
    unittest.expect(o.sampleRateHertz, unittest.equals(42));
    checkGoogleCloudDialogflowCxV3SynthesizeSpeechConfig(
        o.synthesizeSpeechConfig
            as api.GoogleCloudDialogflowCxV3SynthesizeSpeechConfig);
  }
  buildCounterGoogleCloudDialogflowCxV3OutputAudioConfig--;
}

core.List<api.GoogleCloudDialogflowCxV3EventHandler> buildUnnamed5799() {
  var o = <api.GoogleCloudDialogflowCxV3EventHandler>[];
  o.add(buildGoogleCloudDialogflowCxV3EventHandler());
  o.add(buildGoogleCloudDialogflowCxV3EventHandler());
  return o;
}

void checkUnnamed5799(core.List<api.GoogleCloudDialogflowCxV3EventHandler> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3EventHandler(
      o[0] as api.GoogleCloudDialogflowCxV3EventHandler);
  checkGoogleCloudDialogflowCxV3EventHandler(
      o[1] as api.GoogleCloudDialogflowCxV3EventHandler);
}

core.List<core.String> buildUnnamed5800() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5800(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3TransitionRoute> buildUnnamed5801() {
  var o = <api.GoogleCloudDialogflowCxV3TransitionRoute>[];
  o.add(buildGoogleCloudDialogflowCxV3TransitionRoute());
  o.add(buildGoogleCloudDialogflowCxV3TransitionRoute());
  return o;
}

void checkUnnamed5801(
    core.List<api.GoogleCloudDialogflowCxV3TransitionRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TransitionRoute(
      o[0] as api.GoogleCloudDialogflowCxV3TransitionRoute);
  checkGoogleCloudDialogflowCxV3TransitionRoute(
      o[1] as api.GoogleCloudDialogflowCxV3TransitionRoute);
}

core.int buildCounterGoogleCloudDialogflowCxV3Page = 0;
api.GoogleCloudDialogflowCxV3Page buildGoogleCloudDialogflowCxV3Page() {
  var o = api.GoogleCloudDialogflowCxV3Page();
  buildCounterGoogleCloudDialogflowCxV3Page++;
  if (buildCounterGoogleCloudDialogflowCxV3Page < 3) {
    o.displayName = 'foo';
    o.entryFulfillment = buildGoogleCloudDialogflowCxV3Fulfillment();
    o.eventHandlers = buildUnnamed5799();
    o.form = buildGoogleCloudDialogflowCxV3Form();
    o.name = 'foo';
    o.transitionRouteGroups = buildUnnamed5800();
    o.transitionRoutes = buildUnnamed5801();
  }
  buildCounterGoogleCloudDialogflowCxV3Page--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Page(api.GoogleCloudDialogflowCxV3Page o) {
  buildCounterGoogleCloudDialogflowCxV3Page++;
  if (buildCounterGoogleCloudDialogflowCxV3Page < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3Fulfillment(
        o.entryFulfillment as api.GoogleCloudDialogflowCxV3Fulfillment);
    checkUnnamed5799(o.eventHandlers);
    checkGoogleCloudDialogflowCxV3Form(
        o.form as api.GoogleCloudDialogflowCxV3Form);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5800(o.transitionRouteGroups);
    checkUnnamed5801(o.transitionRoutes);
  }
  buildCounterGoogleCloudDialogflowCxV3Page--;
}

core.int buildCounterGoogleCloudDialogflowCxV3PageInfo = 0;
api.GoogleCloudDialogflowCxV3PageInfo buildGoogleCloudDialogflowCxV3PageInfo() {
  var o = api.GoogleCloudDialogflowCxV3PageInfo();
  buildCounterGoogleCloudDialogflowCxV3PageInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3PageInfo < 3) {
    o.currentPage = 'foo';
    o.formInfo = buildGoogleCloudDialogflowCxV3PageInfoFormInfo();
  }
  buildCounterGoogleCloudDialogflowCxV3PageInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3PageInfo(
    api.GoogleCloudDialogflowCxV3PageInfo o) {
  buildCounterGoogleCloudDialogflowCxV3PageInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3PageInfo < 3) {
    unittest.expect(o.currentPage, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3PageInfoFormInfo(
        o.formInfo as api.GoogleCloudDialogflowCxV3PageInfoFormInfo);
  }
  buildCounterGoogleCloudDialogflowCxV3PageInfo--;
}

core.List<api.GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo>
    buildUnnamed5802() {
  var o = <api.GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo>[];
  o.add(buildGoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo());
  o.add(buildGoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo());
  return o;
}

void checkUnnamed5802(
    core.List<api.GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo(
      o[0] as api.GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo);
  checkGoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo(
      o[1] as api.GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo);
}

core.int buildCounterGoogleCloudDialogflowCxV3PageInfoFormInfo = 0;
api.GoogleCloudDialogflowCxV3PageInfoFormInfo
    buildGoogleCloudDialogflowCxV3PageInfoFormInfo() {
  var o = api.GoogleCloudDialogflowCxV3PageInfoFormInfo();
  buildCounterGoogleCloudDialogflowCxV3PageInfoFormInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3PageInfoFormInfo < 3) {
    o.parameterInfo = buildUnnamed5802();
  }
  buildCounterGoogleCloudDialogflowCxV3PageInfoFormInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3PageInfoFormInfo(
    api.GoogleCloudDialogflowCxV3PageInfoFormInfo o) {
  buildCounterGoogleCloudDialogflowCxV3PageInfoFormInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3PageInfoFormInfo < 3) {
    checkUnnamed5802(o.parameterInfo);
  }
  buildCounterGoogleCloudDialogflowCxV3PageInfoFormInfo--;
}

core.int buildCounterGoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo = 0;
api.GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo
    buildGoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo() {
  var o = api.GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo();
  buildCounterGoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo < 3) {
    o.displayName = 'foo';
    o.justCollected = true;
    o.required = true;
    o.state = 'foo';
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterGoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo(
    api.GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo o) {
  buildCounterGoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.justCollected, unittest.isTrue);
    unittest.expect(o.required, unittest.isTrue);
    unittest.expect(o.state, unittest.equals('foo'));
    var casted11 = (o.value) as core.Map;
    unittest.expect(casted11, unittest.hasLength(3));
    unittest.expect(casted11['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted11['bool'], unittest.equals(true));
    unittest.expect(casted11['string'], unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo--;
}

core.int buildCounterGoogleCloudDialogflowCxV3QueryInput = 0;
api.GoogleCloudDialogflowCxV3QueryInput
    buildGoogleCloudDialogflowCxV3QueryInput() {
  var o = api.GoogleCloudDialogflowCxV3QueryInput();
  buildCounterGoogleCloudDialogflowCxV3QueryInput++;
  if (buildCounterGoogleCloudDialogflowCxV3QueryInput < 3) {
    o.audio = buildGoogleCloudDialogflowCxV3AudioInput();
    o.dtmf = buildGoogleCloudDialogflowCxV3DtmfInput();
    o.event = buildGoogleCloudDialogflowCxV3EventInput();
    o.intent = buildGoogleCloudDialogflowCxV3IntentInput();
    o.languageCode = 'foo';
    o.text = buildGoogleCloudDialogflowCxV3TextInput();
  }
  buildCounterGoogleCloudDialogflowCxV3QueryInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3QueryInput(
    api.GoogleCloudDialogflowCxV3QueryInput o) {
  buildCounterGoogleCloudDialogflowCxV3QueryInput++;
  if (buildCounterGoogleCloudDialogflowCxV3QueryInput < 3) {
    checkGoogleCloudDialogflowCxV3AudioInput(
        o.audio as api.GoogleCloudDialogflowCxV3AudioInput);
    checkGoogleCloudDialogflowCxV3DtmfInput(
        o.dtmf as api.GoogleCloudDialogflowCxV3DtmfInput);
    checkGoogleCloudDialogflowCxV3EventInput(
        o.event as api.GoogleCloudDialogflowCxV3EventInput);
    checkGoogleCloudDialogflowCxV3IntentInput(
        o.intent as api.GoogleCloudDialogflowCxV3IntentInput);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3TextInput(
        o.text as api.GoogleCloudDialogflowCxV3TextInput);
  }
  buildCounterGoogleCloudDialogflowCxV3QueryInput--;
}

core.Map<core.String, core.Object> buildUnnamed5803() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5803(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted12 = (o['x']) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted12['bool'], unittest.equals(true));
  unittest.expect(casted12['string'], unittest.equals('foo'));
  var casted13 = (o['y']) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted13['bool'], unittest.equals(true));
  unittest.expect(casted13['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed5804() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5804(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted14 = (o['x']) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted14['bool'], unittest.equals(true));
  unittest.expect(casted14['string'], unittest.equals('foo'));
  var casted15 = (o['y']) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(casted15['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted15['bool'], unittest.equals(true));
  unittest.expect(casted15['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3SessionEntityType> buildUnnamed5805() {
  var o = <api.GoogleCloudDialogflowCxV3SessionEntityType>[];
  o.add(buildGoogleCloudDialogflowCxV3SessionEntityType());
  o.add(buildGoogleCloudDialogflowCxV3SessionEntityType());
  return o;
}

void checkUnnamed5805(
    core.List<api.GoogleCloudDialogflowCxV3SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3SessionEntityType(
      o[0] as api.GoogleCloudDialogflowCxV3SessionEntityType);
  checkGoogleCloudDialogflowCxV3SessionEntityType(
      o[1] as api.GoogleCloudDialogflowCxV3SessionEntityType);
}

core.Map<core.String, core.String> buildUnnamed5806() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5806(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3QueryParameters = 0;
api.GoogleCloudDialogflowCxV3QueryParameters
    buildGoogleCloudDialogflowCxV3QueryParameters() {
  var o = api.GoogleCloudDialogflowCxV3QueryParameters();
  buildCounterGoogleCloudDialogflowCxV3QueryParameters++;
  if (buildCounterGoogleCloudDialogflowCxV3QueryParameters < 3) {
    o.analyzeQueryTextSentiment = true;
    o.disableWebhook = true;
    o.geoLocation = buildGoogleTypeLatLng();
    o.parameters = buildUnnamed5803();
    o.payload = buildUnnamed5804();
    o.sessionEntityTypes = buildUnnamed5805();
    o.timeZone = 'foo';
    o.webhookHeaders = buildUnnamed5806();
  }
  buildCounterGoogleCloudDialogflowCxV3QueryParameters--;
  return o;
}

void checkGoogleCloudDialogflowCxV3QueryParameters(
    api.GoogleCloudDialogflowCxV3QueryParameters o) {
  buildCounterGoogleCloudDialogflowCxV3QueryParameters++;
  if (buildCounterGoogleCloudDialogflowCxV3QueryParameters < 3) {
    unittest.expect(o.analyzeQueryTextSentiment, unittest.isTrue);
    unittest.expect(o.disableWebhook, unittest.isTrue);
    checkGoogleTypeLatLng(o.geoLocation as api.GoogleTypeLatLng);
    checkUnnamed5803(o.parameters);
    checkUnnamed5804(o.payload);
    checkUnnamed5805(o.sessionEntityTypes);
    unittest.expect(o.timeZone, unittest.equals('foo'));
    checkUnnamed5806(o.webhookHeaders);
  }
  buildCounterGoogleCloudDialogflowCxV3QueryParameters--;
}

core.Map<core.String, core.Object> buildUnnamed5807() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5807(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted16 = (o['x']) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(casted16['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted16['bool'], unittest.equals(true));
  unittest.expect(casted16['string'], unittest.equals('foo'));
  var casted17 = (o['y']) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(casted17['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted17['bool'], unittest.equals(true));
  unittest.expect(casted17['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed5808() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5808(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted18 = (o['x']) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(casted18['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted18['bool'], unittest.equals(true));
  unittest.expect(casted18['string'], unittest.equals('foo'));
  var casted19 = (o['y']) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(casted19['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted19['bool'], unittest.equals(true));
  unittest.expect(casted19['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3ResponseMessage> buildUnnamed5809() {
  var o = <api.GoogleCloudDialogflowCxV3ResponseMessage>[];
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessage());
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessage());
  return o;
}

void checkUnnamed5809(
    core.List<api.GoogleCloudDialogflowCxV3ResponseMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ResponseMessage(
      o[0] as api.GoogleCloudDialogflowCxV3ResponseMessage);
  checkGoogleCloudDialogflowCxV3ResponseMessage(
      o[1] as api.GoogleCloudDialogflowCxV3ResponseMessage);
}

core.Map<core.String, core.Object> buildUnnamed5810() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5810(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted20 = (o['x']) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(casted20['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted20['bool'], unittest.equals(true));
  unittest.expect(casted20['string'], unittest.equals('foo'));
  var casted21 = (o['y']) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(casted21['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted21['bool'], unittest.equals(true));
  unittest.expect(casted21['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed5811() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed5810());
  o.add(buildUnnamed5810());
  return o;
}

void checkUnnamed5811(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5810(o[0]);
  checkUnnamed5810(o[1]);
}

core.List<api.GoogleRpcStatus> buildUnnamed5812() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed5812(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int buildCounterGoogleCloudDialogflowCxV3QueryResult = 0;
api.GoogleCloudDialogflowCxV3QueryResult
    buildGoogleCloudDialogflowCxV3QueryResult() {
  var o = api.GoogleCloudDialogflowCxV3QueryResult();
  buildCounterGoogleCloudDialogflowCxV3QueryResult++;
  if (buildCounterGoogleCloudDialogflowCxV3QueryResult < 3) {
    o.currentPage = buildGoogleCloudDialogflowCxV3Page();
    o.diagnosticInfo = buildUnnamed5807();
    o.intent = buildGoogleCloudDialogflowCxV3Intent();
    o.intentDetectionConfidence = 42.0;
    o.languageCode = 'foo';
    o.match = buildGoogleCloudDialogflowCxV3Match();
    o.parameters = buildUnnamed5808();
    o.responseMessages = buildUnnamed5809();
    o.sentimentAnalysisResult =
        buildGoogleCloudDialogflowCxV3SentimentAnalysisResult();
    o.text = 'foo';
    o.transcript = 'foo';
    o.triggerEvent = 'foo';
    o.triggerIntent = 'foo';
    o.webhookPayloads = buildUnnamed5811();
    o.webhookStatuses = buildUnnamed5812();
  }
  buildCounterGoogleCloudDialogflowCxV3QueryResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3QueryResult(
    api.GoogleCloudDialogflowCxV3QueryResult o) {
  buildCounterGoogleCloudDialogflowCxV3QueryResult++;
  if (buildCounterGoogleCloudDialogflowCxV3QueryResult < 3) {
    checkGoogleCloudDialogflowCxV3Page(
        o.currentPage as api.GoogleCloudDialogflowCxV3Page);
    checkUnnamed5807(o.diagnosticInfo);
    checkGoogleCloudDialogflowCxV3Intent(
        o.intent as api.GoogleCloudDialogflowCxV3Intent);
    unittest.expect(o.intentDetectionConfidence, unittest.equals(42.0));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3Match(
        o.match as api.GoogleCloudDialogflowCxV3Match);
    checkUnnamed5808(o.parameters);
    checkUnnamed5809(o.responseMessages);
    checkGoogleCloudDialogflowCxV3SentimentAnalysisResult(
        o.sentimentAnalysisResult
            as api.GoogleCloudDialogflowCxV3SentimentAnalysisResult);
    unittest.expect(o.text, unittest.equals('foo'));
    unittest.expect(o.transcript, unittest.equals('foo'));
    unittest.expect(o.triggerEvent, unittest.equals('foo'));
    unittest.expect(o.triggerIntent, unittest.equals('foo'));
    checkUnnamed5811(o.webhookPayloads);
    checkUnnamed5812(o.webhookStatuses);
  }
  buildCounterGoogleCloudDialogflowCxV3QueryResult--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata =
    0;
api.GoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata
    buildGoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata() {
  var o = api.GoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata();
  buildCounterGoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata <
      3) {
    o.genericMetadata =
        buildGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata();
  }
  buildCounterGoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata(
    api.GoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata <
      3) {
    checkGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata(
        o.genericMetadata
            as api.GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata);
  }
  buildCounterGoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ResourceName = 0;
api.GoogleCloudDialogflowCxV3ResourceName
    buildGoogleCloudDialogflowCxV3ResourceName() {
  var o = api.GoogleCloudDialogflowCxV3ResourceName();
  buildCounterGoogleCloudDialogflowCxV3ResourceName++;
  if (buildCounterGoogleCloudDialogflowCxV3ResourceName < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ResourceName--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResourceName(
    api.GoogleCloudDialogflowCxV3ResourceName o) {
  buildCounterGoogleCloudDialogflowCxV3ResourceName++;
  if (buildCounterGoogleCloudDialogflowCxV3ResourceName < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ResourceName--;
}

core.Map<core.String, core.Object> buildUnnamed5813() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5813(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted22 = (o['x']) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(casted22['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted22['bool'], unittest.equals(true));
  unittest.expect(casted22['string'], unittest.equals('foo'));
  var casted23 = (o['y']) as core.Map;
  unittest.expect(casted23, unittest.hasLength(3));
  unittest.expect(casted23['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted23['bool'], unittest.equals(true));
  unittest.expect(casted23['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3ResponseMessage = 0;
api.GoogleCloudDialogflowCxV3ResponseMessage
    buildGoogleCloudDialogflowCxV3ResponseMessage() {
  var o = api.GoogleCloudDialogflowCxV3ResponseMessage();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessage++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessage < 3) {
    o.conversationSuccess =
        buildGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess();
    o.endInteraction =
        buildGoogleCloudDialogflowCxV3ResponseMessageEndInteraction();
    o.liveAgentHandoff =
        buildGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff();
    o.mixedAudio = buildGoogleCloudDialogflowCxV3ResponseMessageMixedAudio();
    o.outputAudioText =
        buildGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText();
    o.payload = buildUnnamed5813();
    o.playAudio = buildGoogleCloudDialogflowCxV3ResponseMessagePlayAudio();
    o.text = buildGoogleCloudDialogflowCxV3ResponseMessageText();
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessage--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessage(
    api.GoogleCloudDialogflowCxV3ResponseMessage o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessage++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessage < 3) {
    checkGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess(
        o.conversationSuccess
            as api.GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess);
    checkGoogleCloudDialogflowCxV3ResponseMessageEndInteraction(o.endInteraction
        as api.GoogleCloudDialogflowCxV3ResponseMessageEndInteraction);
    checkGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff(
        o.liveAgentHandoff
            as api.GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff);
    checkGoogleCloudDialogflowCxV3ResponseMessageMixedAudio(
        o.mixedAudio as api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudio);
    checkGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText(
        o.outputAudioText
            as api.GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText);
    checkUnnamed5813(o.payload);
    checkGoogleCloudDialogflowCxV3ResponseMessagePlayAudio(
        o.playAudio as api.GoogleCloudDialogflowCxV3ResponseMessagePlayAudio);
    checkGoogleCloudDialogflowCxV3ResponseMessageText(
        o.text as api.GoogleCloudDialogflowCxV3ResponseMessageText);
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessage--;
}

core.Map<core.String, core.Object> buildUnnamed5814() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5814(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted24 = (o['x']) as core.Map;
  unittest.expect(casted24, unittest.hasLength(3));
  unittest.expect(casted24['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted24['bool'], unittest.equals(true));
  unittest.expect(casted24['string'], unittest.equals('foo'));
  var casted25 = (o['y']) as core.Map;
  unittest.expect(casted25, unittest.hasLength(3));
  unittest.expect(casted25['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted25['bool'], unittest.equals(true));
  unittest.expect(casted25['string'], unittest.equals('foo'));
}

core.int
    buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess = 0;
api.GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess
    buildGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess() {
  var o = api.GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess <
      3) {
    o.metadata = buildUnnamed5814();
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess(
    api.GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess <
      3) {
    checkUnnamed5814(o.metadata);
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ResponseMessageEndInteraction = 0;
api.GoogleCloudDialogflowCxV3ResponseMessageEndInteraction
    buildGoogleCloudDialogflowCxV3ResponseMessageEndInteraction() {
  var o = api.GoogleCloudDialogflowCxV3ResponseMessageEndInteraction();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageEndInteraction++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageEndInteraction < 3) {}
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageEndInteraction--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageEndInteraction(
    api.GoogleCloudDialogflowCxV3ResponseMessageEndInteraction o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageEndInteraction++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageEndInteraction < 3) {}
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageEndInteraction--;
}

core.Map<core.String, core.Object> buildUnnamed5815() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5815(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted26 = (o['x']) as core.Map;
  unittest.expect(casted26, unittest.hasLength(3));
  unittest.expect(casted26['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted26['bool'], unittest.equals(true));
  unittest.expect(casted26['string'], unittest.equals('foo'));
  var casted27 = (o['y']) as core.Map;
  unittest.expect(casted27, unittest.hasLength(3));
  unittest.expect(casted27['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted27['bool'], unittest.equals(true));
  unittest.expect(casted27['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff =
    0;
api.GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff
    buildGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff() {
  var o = api.GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff <
      3) {
    o.metadata = buildUnnamed5815();
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff(
    api.GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff <
      3) {
    checkUnnamed5815(o.metadata);
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff--;
}

core.List<api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment>
    buildUnnamed5816() {
  var o = <api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment>[];
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment());
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment());
  return o;
}

void checkUnnamed5816(
    core.List<api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment(
      o[0] as api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment);
  checkGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment(
      o[1] as api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment);
}

core.int buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudio = 0;
api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudio
    buildGoogleCloudDialogflowCxV3ResponseMessageMixedAudio() {
  var o = api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudio();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudio < 3) {
    o.segments = buildUnnamed5816();
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudio--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageMixedAudio(
    api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudio o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudio < 3) {
    checkUnnamed5816(o.segments);
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudio--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment =
    0;
api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment
    buildGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment() {
  var o = api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment <
      3) {
    o.allowPlaybackInterruption = true;
    o.audio = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment(
    api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment <
      3) {
    unittest.expect(o.allowPlaybackInterruption, unittest.isTrue);
    unittest.expect(o.audio, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText =
    0;
api.GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText
    buildGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText() {
  var o = api.GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText < 3) {
    o.allowPlaybackInterruption = true;
    o.ssml = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText(
    api.GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText < 3) {
    unittest.expect(o.allowPlaybackInterruption, unittest.isTrue);
    unittest.expect(o.ssml, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ResponseMessagePlayAudio = 0;
api.GoogleCloudDialogflowCxV3ResponseMessagePlayAudio
    buildGoogleCloudDialogflowCxV3ResponseMessagePlayAudio() {
  var o = api.GoogleCloudDialogflowCxV3ResponseMessagePlayAudio();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessagePlayAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessagePlayAudio < 3) {
    o.allowPlaybackInterruption = true;
    o.audioUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessagePlayAudio--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessagePlayAudio(
    api.GoogleCloudDialogflowCxV3ResponseMessagePlayAudio o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessagePlayAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessagePlayAudio < 3) {
    unittest.expect(o.allowPlaybackInterruption, unittest.isTrue);
    unittest.expect(o.audioUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessagePlayAudio--;
}

core.List<core.String> buildUnnamed5817() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5817(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3ResponseMessageText = 0;
api.GoogleCloudDialogflowCxV3ResponseMessageText
    buildGoogleCloudDialogflowCxV3ResponseMessageText() {
  var o = api.GoogleCloudDialogflowCxV3ResponseMessageText();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageText++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageText < 3) {
    o.allowPlaybackInterruption = true;
    o.text = buildUnnamed5817();
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageText--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageText(
    api.GoogleCloudDialogflowCxV3ResponseMessageText o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageText++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageText < 3) {
    unittest.expect(o.allowPlaybackInterruption, unittest.isTrue);
    checkUnnamed5817(o.text);
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageText--;
}

core.int buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequest = 0;
api.GoogleCloudDialogflowCxV3RestoreAgentRequest
    buildGoogleCloudDialogflowCxV3RestoreAgentRequest() {
  var o = api.GoogleCloudDialogflowCxV3RestoreAgentRequest();
  buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequest < 3) {
    o.agentContent = 'foo';
    o.agentUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3RestoreAgentRequest(
    api.GoogleCloudDialogflowCxV3RestoreAgentRequest o) {
  buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequest < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3RunTestCaseMetadata = 0;
api.GoogleCloudDialogflowCxV3RunTestCaseMetadata
    buildGoogleCloudDialogflowCxV3RunTestCaseMetadata() {
  var o = api.GoogleCloudDialogflowCxV3RunTestCaseMetadata();
  buildCounterGoogleCloudDialogflowCxV3RunTestCaseMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3RunTestCaseMetadata < 3) {}
  buildCounterGoogleCloudDialogflowCxV3RunTestCaseMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3RunTestCaseMetadata(
    api.GoogleCloudDialogflowCxV3RunTestCaseMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3RunTestCaseMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3RunTestCaseMetadata < 3) {}
  buildCounterGoogleCloudDialogflowCxV3RunTestCaseMetadata--;
}

core.int buildCounterGoogleCloudDialogflowCxV3RunTestCaseRequest = 0;
api.GoogleCloudDialogflowCxV3RunTestCaseRequest
    buildGoogleCloudDialogflowCxV3RunTestCaseRequest() {
  var o = api.GoogleCloudDialogflowCxV3RunTestCaseRequest();
  buildCounterGoogleCloudDialogflowCxV3RunTestCaseRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3RunTestCaseRequest < 3) {
    o.environment = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3RunTestCaseRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3RunTestCaseRequest(
    api.GoogleCloudDialogflowCxV3RunTestCaseRequest o) {
  buildCounterGoogleCloudDialogflowCxV3RunTestCaseRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3RunTestCaseRequest < 3) {
    unittest.expect(o.environment, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3RunTestCaseRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3RunTestCaseResponse = 0;
api.GoogleCloudDialogflowCxV3RunTestCaseResponse
    buildGoogleCloudDialogflowCxV3RunTestCaseResponse() {
  var o = api.GoogleCloudDialogflowCxV3RunTestCaseResponse();
  buildCounterGoogleCloudDialogflowCxV3RunTestCaseResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3RunTestCaseResponse < 3) {
    o.result = buildGoogleCloudDialogflowCxV3TestCaseResult();
  }
  buildCounterGoogleCloudDialogflowCxV3RunTestCaseResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3RunTestCaseResponse(
    api.GoogleCloudDialogflowCxV3RunTestCaseResponse o) {
  buildCounterGoogleCloudDialogflowCxV3RunTestCaseResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3RunTestCaseResponse < 3) {
    checkGoogleCloudDialogflowCxV3TestCaseResult(
        o.result as api.GoogleCloudDialogflowCxV3TestCaseResult);
  }
  buildCounterGoogleCloudDialogflowCxV3RunTestCaseResponse--;
}

core.List<core.String> buildUnnamed5818() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5818(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3SecuritySettings = 0;
api.GoogleCloudDialogflowCxV3SecuritySettings
    buildGoogleCloudDialogflowCxV3SecuritySettings() {
  var o = api.GoogleCloudDialogflowCxV3SecuritySettings();
  buildCounterGoogleCloudDialogflowCxV3SecuritySettings++;
  if (buildCounterGoogleCloudDialogflowCxV3SecuritySettings < 3) {
    o.displayName = 'foo';
    o.inspectTemplate = 'foo';
    o.name = 'foo';
    o.purgeDataTypes = buildUnnamed5818();
    o.redactionScope = 'foo';
    o.redactionStrategy = 'foo';
    o.retentionWindowDays = 42;
  }
  buildCounterGoogleCloudDialogflowCxV3SecuritySettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3SecuritySettings(
    api.GoogleCloudDialogflowCxV3SecuritySettings o) {
  buildCounterGoogleCloudDialogflowCxV3SecuritySettings++;
  if (buildCounterGoogleCloudDialogflowCxV3SecuritySettings < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.inspectTemplate, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5818(o.purgeDataTypes);
    unittest.expect(o.redactionScope, unittest.equals('foo'));
    unittest.expect(o.redactionStrategy, unittest.equals('foo'));
    unittest.expect(o.retentionWindowDays, unittest.equals(42));
  }
  buildCounterGoogleCloudDialogflowCxV3SecuritySettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3SentimentAnalysisResult = 0;
api.GoogleCloudDialogflowCxV3SentimentAnalysisResult
    buildGoogleCloudDialogflowCxV3SentimentAnalysisResult() {
  var o = api.GoogleCloudDialogflowCxV3SentimentAnalysisResult();
  buildCounterGoogleCloudDialogflowCxV3SentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowCxV3SentimentAnalysisResult < 3) {
    o.magnitude = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudDialogflowCxV3SentimentAnalysisResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3SentimentAnalysisResult(
    api.GoogleCloudDialogflowCxV3SentimentAnalysisResult o) {
  buildCounterGoogleCloudDialogflowCxV3SentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowCxV3SentimentAnalysisResult < 3) {
    unittest.expect(o.magnitude, unittest.equals(42.0));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowCxV3SentimentAnalysisResult--;
}

core.List<api.GoogleCloudDialogflowCxV3EntityTypeEntity> buildUnnamed5819() {
  var o = <api.GoogleCloudDialogflowCxV3EntityTypeEntity>[];
  o.add(buildGoogleCloudDialogflowCxV3EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowCxV3EntityTypeEntity());
  return o;
}

void checkUnnamed5819(
    core.List<api.GoogleCloudDialogflowCxV3EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3EntityTypeEntity(
      o[0] as api.GoogleCloudDialogflowCxV3EntityTypeEntity);
  checkGoogleCloudDialogflowCxV3EntityTypeEntity(
      o[1] as api.GoogleCloudDialogflowCxV3EntityTypeEntity);
}

core.int buildCounterGoogleCloudDialogflowCxV3SessionEntityType = 0;
api.GoogleCloudDialogflowCxV3SessionEntityType
    buildGoogleCloudDialogflowCxV3SessionEntityType() {
  var o = api.GoogleCloudDialogflowCxV3SessionEntityType();
  buildCounterGoogleCloudDialogflowCxV3SessionEntityType++;
  if (buildCounterGoogleCloudDialogflowCxV3SessionEntityType < 3) {
    o.entities = buildUnnamed5819();
    o.entityOverrideMode = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3SessionEntityType--;
  return o;
}

void checkGoogleCloudDialogflowCxV3SessionEntityType(
    api.GoogleCloudDialogflowCxV3SessionEntityType o) {
  buildCounterGoogleCloudDialogflowCxV3SessionEntityType++;
  if (buildCounterGoogleCloudDialogflowCxV3SessionEntityType < 3) {
    checkUnnamed5819(o.entities);
    unittest.expect(o.entityOverrideMode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3SessionEntityType--;
}

core.Map<core.String, core.Object> buildUnnamed5820() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5820(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted28 = (o['x']) as core.Map;
  unittest.expect(casted28, unittest.hasLength(3));
  unittest.expect(casted28['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted28['bool'], unittest.equals(true));
  unittest.expect(casted28['string'], unittest.equals('foo'));
  var casted29 = (o['y']) as core.Map;
  unittest.expect(casted29, unittest.hasLength(3));
  unittest.expect(casted29['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted29['bool'], unittest.equals(true));
  unittest.expect(casted29['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3SessionInfo = 0;
api.GoogleCloudDialogflowCxV3SessionInfo
    buildGoogleCloudDialogflowCxV3SessionInfo() {
  var o = api.GoogleCloudDialogflowCxV3SessionInfo();
  buildCounterGoogleCloudDialogflowCxV3SessionInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3SessionInfo < 3) {
    o.parameters = buildUnnamed5820();
    o.session = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3SessionInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3SessionInfo(
    api.GoogleCloudDialogflowCxV3SessionInfo o) {
  buildCounterGoogleCloudDialogflowCxV3SessionInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3SessionInfo < 3) {
    checkUnnamed5820(o.parameters);
    unittest.expect(o.session, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3SessionInfo--;
}

core.int buildCounterGoogleCloudDialogflowCxV3SpeechToTextSettings = 0;
api.GoogleCloudDialogflowCxV3SpeechToTextSettings
    buildGoogleCloudDialogflowCxV3SpeechToTextSettings() {
  var o = api.GoogleCloudDialogflowCxV3SpeechToTextSettings();
  buildCounterGoogleCloudDialogflowCxV3SpeechToTextSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3SpeechToTextSettings < 3) {
    o.enableSpeechAdaptation = true;
  }
  buildCounterGoogleCloudDialogflowCxV3SpeechToTextSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3SpeechToTextSettings(
    api.GoogleCloudDialogflowCxV3SpeechToTextSettings o) {
  buildCounterGoogleCloudDialogflowCxV3SpeechToTextSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3SpeechToTextSettings < 3) {
    unittest.expect(o.enableSpeechAdaptation, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3SpeechToTextSettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3StartExperimentRequest = 0;
api.GoogleCloudDialogflowCxV3StartExperimentRequest
    buildGoogleCloudDialogflowCxV3StartExperimentRequest() {
  var o = api.GoogleCloudDialogflowCxV3StartExperimentRequest();
  buildCounterGoogleCloudDialogflowCxV3StartExperimentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3StartExperimentRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3StartExperimentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3StartExperimentRequest(
    api.GoogleCloudDialogflowCxV3StartExperimentRequest o) {
  buildCounterGoogleCloudDialogflowCxV3StartExperimentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3StartExperimentRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3StartExperimentRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3StopExperimentRequest = 0;
api.GoogleCloudDialogflowCxV3StopExperimentRequest
    buildGoogleCloudDialogflowCxV3StopExperimentRequest() {
  var o = api.GoogleCloudDialogflowCxV3StopExperimentRequest();
  buildCounterGoogleCloudDialogflowCxV3StopExperimentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3StopExperimentRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3StopExperimentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3StopExperimentRequest(
    api.GoogleCloudDialogflowCxV3StopExperimentRequest o) {
  buildCounterGoogleCloudDialogflowCxV3StopExperimentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3StopExperimentRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3StopExperimentRequest--;
}

core.List<core.String> buildUnnamed5821() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5821(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3SynthesizeSpeechConfig = 0;
api.GoogleCloudDialogflowCxV3SynthesizeSpeechConfig
    buildGoogleCloudDialogflowCxV3SynthesizeSpeechConfig() {
  var o = api.GoogleCloudDialogflowCxV3SynthesizeSpeechConfig();
  buildCounterGoogleCloudDialogflowCxV3SynthesizeSpeechConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3SynthesizeSpeechConfig < 3) {
    o.effectsProfileId = buildUnnamed5821();
    o.pitch = 42.0;
    o.speakingRate = 42.0;
    o.voice = buildGoogleCloudDialogflowCxV3VoiceSelectionParams();
    o.volumeGainDb = 42.0;
  }
  buildCounterGoogleCloudDialogflowCxV3SynthesizeSpeechConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3SynthesizeSpeechConfig(
    api.GoogleCloudDialogflowCxV3SynthesizeSpeechConfig o) {
  buildCounterGoogleCloudDialogflowCxV3SynthesizeSpeechConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3SynthesizeSpeechConfig < 3) {
    checkUnnamed5821(o.effectsProfileId);
    unittest.expect(o.pitch, unittest.equals(42.0));
    unittest.expect(o.speakingRate, unittest.equals(42.0));
    checkGoogleCloudDialogflowCxV3VoiceSelectionParams(
        o.voice as api.GoogleCloudDialogflowCxV3VoiceSelectionParams);
    unittest.expect(o.volumeGainDb, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowCxV3SynthesizeSpeechConfig--;
}

core.List<core.String> buildUnnamed5822() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5822(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3ConversationTurn> buildUnnamed5823() {
  var o = <api.GoogleCloudDialogflowCxV3ConversationTurn>[];
  o.add(buildGoogleCloudDialogflowCxV3ConversationTurn());
  o.add(buildGoogleCloudDialogflowCxV3ConversationTurn());
  return o;
}

void checkUnnamed5823(
    core.List<api.GoogleCloudDialogflowCxV3ConversationTurn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ConversationTurn(
      o[0] as api.GoogleCloudDialogflowCxV3ConversationTurn);
  checkGoogleCloudDialogflowCxV3ConversationTurn(
      o[1] as api.GoogleCloudDialogflowCxV3ConversationTurn);
}

core.int buildCounterGoogleCloudDialogflowCxV3TestCase = 0;
api.GoogleCloudDialogflowCxV3TestCase buildGoogleCloudDialogflowCxV3TestCase() {
  var o = api.GoogleCloudDialogflowCxV3TestCase();
  buildCounterGoogleCloudDialogflowCxV3TestCase++;
  if (buildCounterGoogleCloudDialogflowCxV3TestCase < 3) {
    o.creationTime = 'foo';
    o.displayName = 'foo';
    o.lastTestResult = buildGoogleCloudDialogflowCxV3TestCaseResult();
    o.name = 'foo';
    o.notes = 'foo';
    o.tags = buildUnnamed5822();
    o.testCaseConversationTurns = buildUnnamed5823();
    o.testConfig = buildGoogleCloudDialogflowCxV3TestConfig();
  }
  buildCounterGoogleCloudDialogflowCxV3TestCase--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TestCase(
    api.GoogleCloudDialogflowCxV3TestCase o) {
  buildCounterGoogleCloudDialogflowCxV3TestCase++;
  if (buildCounterGoogleCloudDialogflowCxV3TestCase < 3) {
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3TestCaseResult(
        o.lastTestResult as api.GoogleCloudDialogflowCxV3TestCaseResult);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.notes, unittest.equals('foo'));
    checkUnnamed5822(o.tags);
    checkUnnamed5823(o.testCaseConversationTurns);
    checkGoogleCloudDialogflowCxV3TestConfig(
        o.testConfig as api.GoogleCloudDialogflowCxV3TestConfig);
  }
  buildCounterGoogleCloudDialogflowCxV3TestCase--;
}

core.int buildCounterGoogleCloudDialogflowCxV3TestCaseError = 0;
api.GoogleCloudDialogflowCxV3TestCaseError
    buildGoogleCloudDialogflowCxV3TestCaseError() {
  var o = api.GoogleCloudDialogflowCxV3TestCaseError();
  buildCounterGoogleCloudDialogflowCxV3TestCaseError++;
  if (buildCounterGoogleCloudDialogflowCxV3TestCaseError < 3) {
    o.status = buildGoogleRpcStatus();
    o.testCase = buildGoogleCloudDialogflowCxV3TestCase();
  }
  buildCounterGoogleCloudDialogflowCxV3TestCaseError--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TestCaseError(
    api.GoogleCloudDialogflowCxV3TestCaseError o) {
  buildCounterGoogleCloudDialogflowCxV3TestCaseError++;
  if (buildCounterGoogleCloudDialogflowCxV3TestCaseError < 3) {
    checkGoogleRpcStatus(o.status as api.GoogleRpcStatus);
    checkGoogleCloudDialogflowCxV3TestCase(
        o.testCase as api.GoogleCloudDialogflowCxV3TestCase);
  }
  buildCounterGoogleCloudDialogflowCxV3TestCaseError--;
}

core.List<api.GoogleCloudDialogflowCxV3ConversationTurn> buildUnnamed5824() {
  var o = <api.GoogleCloudDialogflowCxV3ConversationTurn>[];
  o.add(buildGoogleCloudDialogflowCxV3ConversationTurn());
  o.add(buildGoogleCloudDialogflowCxV3ConversationTurn());
  return o;
}

void checkUnnamed5824(
    core.List<api.GoogleCloudDialogflowCxV3ConversationTurn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ConversationTurn(
      o[0] as api.GoogleCloudDialogflowCxV3ConversationTurn);
  checkGoogleCloudDialogflowCxV3ConversationTurn(
      o[1] as api.GoogleCloudDialogflowCxV3ConversationTurn);
}

core.int buildCounterGoogleCloudDialogflowCxV3TestCaseResult = 0;
api.GoogleCloudDialogflowCxV3TestCaseResult
    buildGoogleCloudDialogflowCxV3TestCaseResult() {
  var o = api.GoogleCloudDialogflowCxV3TestCaseResult();
  buildCounterGoogleCloudDialogflowCxV3TestCaseResult++;
  if (buildCounterGoogleCloudDialogflowCxV3TestCaseResult < 3) {
    o.conversationTurns = buildUnnamed5824();
    o.environment = 'foo';
    o.name = 'foo';
    o.testResult = 'foo';
    o.testTime = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3TestCaseResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TestCaseResult(
    api.GoogleCloudDialogflowCxV3TestCaseResult o) {
  buildCounterGoogleCloudDialogflowCxV3TestCaseResult++;
  if (buildCounterGoogleCloudDialogflowCxV3TestCaseResult < 3) {
    checkUnnamed5824(o.conversationTurns);
    unittest.expect(o.environment, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.testResult, unittest.equals('foo'));
    unittest.expect(o.testTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3TestCaseResult--;
}

core.List<core.String> buildUnnamed5825() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5825(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3TestConfig = 0;
api.GoogleCloudDialogflowCxV3TestConfig
    buildGoogleCloudDialogflowCxV3TestConfig() {
  var o = api.GoogleCloudDialogflowCxV3TestConfig();
  buildCounterGoogleCloudDialogflowCxV3TestConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3TestConfig < 3) {
    o.flow = 'foo';
    o.trackingParameters = buildUnnamed5825();
  }
  buildCounterGoogleCloudDialogflowCxV3TestConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TestConfig(
    api.GoogleCloudDialogflowCxV3TestConfig o) {
  buildCounterGoogleCloudDialogflowCxV3TestConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3TestConfig < 3) {
    unittest.expect(o.flow, unittest.equals('foo'));
    checkUnnamed5825(o.trackingParameters);
  }
  buildCounterGoogleCloudDialogflowCxV3TestConfig--;
}

core.int buildCounterGoogleCloudDialogflowCxV3TestError = 0;
api.GoogleCloudDialogflowCxV3TestError
    buildGoogleCloudDialogflowCxV3TestError() {
  var o = api.GoogleCloudDialogflowCxV3TestError();
  buildCounterGoogleCloudDialogflowCxV3TestError++;
  if (buildCounterGoogleCloudDialogflowCxV3TestError < 3) {
    o.status = buildGoogleRpcStatus();
    o.testCase = 'foo';
    o.testTime = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3TestError--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TestError(
    api.GoogleCloudDialogflowCxV3TestError o) {
  buildCounterGoogleCloudDialogflowCxV3TestError++;
  if (buildCounterGoogleCloudDialogflowCxV3TestError < 3) {
    checkGoogleRpcStatus(o.status as api.GoogleRpcStatus);
    unittest.expect(o.testCase, unittest.equals('foo'));
    unittest.expect(o.testTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3TestError--;
}

core.int buildCounterGoogleCloudDialogflowCxV3TestRunDifference = 0;
api.GoogleCloudDialogflowCxV3TestRunDifference
    buildGoogleCloudDialogflowCxV3TestRunDifference() {
  var o = api.GoogleCloudDialogflowCxV3TestRunDifference();
  buildCounterGoogleCloudDialogflowCxV3TestRunDifference++;
  if (buildCounterGoogleCloudDialogflowCxV3TestRunDifference < 3) {
    o.description = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3TestRunDifference--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TestRunDifference(
    api.GoogleCloudDialogflowCxV3TestRunDifference o) {
  buildCounterGoogleCloudDialogflowCxV3TestRunDifference++;
  if (buildCounterGoogleCloudDialogflowCxV3TestRunDifference < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3TestRunDifference--;
}

core.int buildCounterGoogleCloudDialogflowCxV3TextInput = 0;
api.GoogleCloudDialogflowCxV3TextInput
    buildGoogleCloudDialogflowCxV3TextInput() {
  var o = api.GoogleCloudDialogflowCxV3TextInput();
  buildCounterGoogleCloudDialogflowCxV3TextInput++;
  if (buildCounterGoogleCloudDialogflowCxV3TextInput < 3) {
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3TextInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TextInput(
    api.GoogleCloudDialogflowCxV3TextInput o) {
  buildCounterGoogleCloudDialogflowCxV3TextInput++;
  if (buildCounterGoogleCloudDialogflowCxV3TextInput < 3) {
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3TextInput--;
}

core.int buildCounterGoogleCloudDialogflowCxV3TrainFlowRequest = 0;
api.GoogleCloudDialogflowCxV3TrainFlowRequest
    buildGoogleCloudDialogflowCxV3TrainFlowRequest() {
  var o = api.GoogleCloudDialogflowCxV3TrainFlowRequest();
  buildCounterGoogleCloudDialogflowCxV3TrainFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3TrainFlowRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3TrainFlowRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TrainFlowRequest(
    api.GoogleCloudDialogflowCxV3TrainFlowRequest o) {
  buildCounterGoogleCloudDialogflowCxV3TrainFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3TrainFlowRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3TrainFlowRequest--;
}

core.List<api.GoogleCloudDialogflowCxV3TransitionCoverageTransition>
    buildUnnamed5826() {
  var o = <api.GoogleCloudDialogflowCxV3TransitionCoverageTransition>[];
  o.add(buildGoogleCloudDialogflowCxV3TransitionCoverageTransition());
  o.add(buildGoogleCloudDialogflowCxV3TransitionCoverageTransition());
  return o;
}

void checkUnnamed5826(
    core.List<api.GoogleCloudDialogflowCxV3TransitionCoverageTransition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TransitionCoverageTransition(
      o[0] as api.GoogleCloudDialogflowCxV3TransitionCoverageTransition);
  checkGoogleCloudDialogflowCxV3TransitionCoverageTransition(
      o[1] as api.GoogleCloudDialogflowCxV3TransitionCoverageTransition);
}

core.int buildCounterGoogleCloudDialogflowCxV3TransitionCoverage = 0;
api.GoogleCloudDialogflowCxV3TransitionCoverage
    buildGoogleCloudDialogflowCxV3TransitionCoverage() {
  var o = api.GoogleCloudDialogflowCxV3TransitionCoverage();
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionCoverage < 3) {
    o.coverageScore = 42.0;
    o.transitions = buildUnnamed5826();
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverage--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TransitionCoverage(
    api.GoogleCloudDialogflowCxV3TransitionCoverage o) {
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionCoverage < 3) {
    unittest.expect(o.coverageScore, unittest.equals(42.0));
    checkUnnamed5826(o.transitions);
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverage--;
}

core.int buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransition = 0;
api.GoogleCloudDialogflowCxV3TransitionCoverageTransition
    buildGoogleCloudDialogflowCxV3TransitionCoverageTransition() {
  var o = api.GoogleCloudDialogflowCxV3TransitionCoverageTransition();
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransition++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransition < 3) {
    o.covered = true;
    o.eventHandler = buildGoogleCloudDialogflowCxV3EventHandler();
    o.index = 42;
    o.source = buildGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode();
    o.target = buildGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode();
    o.transitionRoute = buildGoogleCloudDialogflowCxV3TransitionRoute();
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransition--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TransitionCoverageTransition(
    api.GoogleCloudDialogflowCxV3TransitionCoverageTransition o) {
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransition++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransition < 3) {
    unittest.expect(o.covered, unittest.isTrue);
    checkGoogleCloudDialogflowCxV3EventHandler(
        o.eventHandler as api.GoogleCloudDialogflowCxV3EventHandler);
    unittest.expect(o.index, unittest.equals(42));
    checkGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode(o.source
        as api.GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode);
    checkGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode(o.target
        as api.GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode);
    checkGoogleCloudDialogflowCxV3TransitionRoute(
        o.transitionRoute as api.GoogleCloudDialogflowCxV3TransitionRoute);
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransition--;
}

core.int buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode =
    0;
api.GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode
    buildGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode() {
  var o = api.GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode();
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode <
      3) {
    o.flow = buildGoogleCloudDialogflowCxV3Flow();
    o.page = buildGoogleCloudDialogflowCxV3Page();
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode(
    api.GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode o) {
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode <
      3) {
    checkGoogleCloudDialogflowCxV3Flow(
        o.flow as api.GoogleCloudDialogflowCxV3Flow);
    checkGoogleCloudDialogflowCxV3Page(
        o.page as api.GoogleCloudDialogflowCxV3Page);
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode--;
}

core.int buildCounterGoogleCloudDialogflowCxV3TransitionRoute = 0;
api.GoogleCloudDialogflowCxV3TransitionRoute
    buildGoogleCloudDialogflowCxV3TransitionRoute() {
  var o = api.GoogleCloudDialogflowCxV3TransitionRoute();
  buildCounterGoogleCloudDialogflowCxV3TransitionRoute++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRoute < 3) {
    o.condition = 'foo';
    o.intent = 'foo';
    o.name = 'foo';
    o.targetFlow = 'foo';
    o.targetPage = 'foo';
    o.triggerFulfillment = buildGoogleCloudDialogflowCxV3Fulfillment();
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRoute--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TransitionRoute(
    api.GoogleCloudDialogflowCxV3TransitionRoute o) {
  buildCounterGoogleCloudDialogflowCxV3TransitionRoute++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRoute < 3) {
    unittest.expect(o.condition, unittest.equals('foo'));
    unittest.expect(o.intent, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.targetFlow, unittest.equals('foo'));
    unittest.expect(o.targetPage, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3Fulfillment(
        o.triggerFulfillment as api.GoogleCloudDialogflowCxV3Fulfillment);
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRoute--;
}

core.List<api.GoogleCloudDialogflowCxV3TransitionRoute> buildUnnamed5827() {
  var o = <api.GoogleCloudDialogflowCxV3TransitionRoute>[];
  o.add(buildGoogleCloudDialogflowCxV3TransitionRoute());
  o.add(buildGoogleCloudDialogflowCxV3TransitionRoute());
  return o;
}

void checkUnnamed5827(
    core.List<api.GoogleCloudDialogflowCxV3TransitionRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TransitionRoute(
      o[0] as api.GoogleCloudDialogflowCxV3TransitionRoute);
  checkGoogleCloudDialogflowCxV3TransitionRoute(
      o[1] as api.GoogleCloudDialogflowCxV3TransitionRoute);
}

core.int buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroup = 0;
api.GoogleCloudDialogflowCxV3TransitionRouteGroup
    buildGoogleCloudDialogflowCxV3TransitionRouteGroup() {
  var o = api.GoogleCloudDialogflowCxV3TransitionRouteGroup();
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroup++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroup < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.transitionRoutes = buildUnnamed5827();
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroup--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TransitionRouteGroup(
    api.GoogleCloudDialogflowCxV3TransitionRouteGroup o) {
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroup++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroup < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5827(o.transitionRoutes);
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroup--;
}

core.List<api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage>
    buildUnnamed5828() {
  var o = <api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage>[];
  o.add(buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage());
  o.add(buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage());
  return o;
}

void checkUnnamed5828(
    core.List<api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage(o[0]
      as api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage);
  checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage(o[1]
      as api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage);
}

core.int buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage = 0;
api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage
    buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage() {
  var o = api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage();
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage < 3) {
    o.coverageScore = 42.0;
    o.coverages = buildUnnamed5828();
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage(
    api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage o) {
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage < 3) {
    unittest.expect(o.coverageScore, unittest.equals(42.0));
    checkUnnamed5828(o.coverages);
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage--;
}

core.List<
        api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition>
    buildUnnamed5829() {
  var o = <
      api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition>[];
  o.add(
      buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition());
  o.add(
      buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition());
  return o;
}

void checkUnnamed5829(
    core.List<
            api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition(
      o[0] as api
          .GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition);
  checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition(
      o[1] as api
          .GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition);
}

core.int
    buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage =
    0;
api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage
    buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage() {
  var o = api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage();
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage <
      3) {
    o.coverageScore = 42.0;
    o.routeGroup = buildGoogleCloudDialogflowCxV3TransitionRouteGroup();
    o.transitions = buildUnnamed5829();
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage(
    api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage o) {
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage <
      3) {
    unittest.expect(o.coverageScore, unittest.equals(42.0));
    checkGoogleCloudDialogflowCxV3TransitionRouteGroup(
        o.routeGroup as api.GoogleCloudDialogflowCxV3TransitionRouteGroup);
    checkUnnamed5829(o.transitions);
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition =
    0;
api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition
    buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition() {
  var o = api
      .GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition();
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition <
      3) {
    o.covered = true;
    o.transitionRoute = buildGoogleCloudDialogflowCxV3TransitionRoute();
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition(
    api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition
        o) {
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition <
      3) {
    unittest.expect(o.covered, unittest.isTrue);
    checkGoogleCloudDialogflowCxV3TransitionRoute(
        o.transitionRoute as api.GoogleCloudDialogflowCxV3TransitionRoute);
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition--;
}

core.int buildCounterGoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata =
    0;
api.GoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata
    buildGoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata() {
  var o = api.GoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata();
  buildCounterGoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata <
      3) {
    o.genericMetadata =
        buildGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata();
  }
  buildCounterGoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata(
    api.GoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata <
      3) {
    checkGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata(
        o.genericMetadata
            as api.GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata);
  }
  buildCounterGoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ValidateAgentRequest = 0;
api.GoogleCloudDialogflowCxV3ValidateAgentRequest
    buildGoogleCloudDialogflowCxV3ValidateAgentRequest() {
  var o = api.GoogleCloudDialogflowCxV3ValidateAgentRequest();
  buildCounterGoogleCloudDialogflowCxV3ValidateAgentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ValidateAgentRequest < 3) {
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ValidateAgentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ValidateAgentRequest(
    api.GoogleCloudDialogflowCxV3ValidateAgentRequest o) {
  buildCounterGoogleCloudDialogflowCxV3ValidateAgentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ValidateAgentRequest < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ValidateAgentRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ValidateFlowRequest = 0;
api.GoogleCloudDialogflowCxV3ValidateFlowRequest
    buildGoogleCloudDialogflowCxV3ValidateFlowRequest() {
  var o = api.GoogleCloudDialogflowCxV3ValidateFlowRequest();
  buildCounterGoogleCloudDialogflowCxV3ValidateFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ValidateFlowRequest < 3) {
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ValidateFlowRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ValidateFlowRequest(
    api.GoogleCloudDialogflowCxV3ValidateFlowRequest o) {
  buildCounterGoogleCloudDialogflowCxV3ValidateFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ValidateFlowRequest < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ValidateFlowRequest--;
}

core.List<api.GoogleCloudDialogflowCxV3ResourceName> buildUnnamed5830() {
  var o = <api.GoogleCloudDialogflowCxV3ResourceName>[];
  o.add(buildGoogleCloudDialogflowCxV3ResourceName());
  o.add(buildGoogleCloudDialogflowCxV3ResourceName());
  return o;
}

void checkUnnamed5830(core.List<api.GoogleCloudDialogflowCxV3ResourceName> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ResourceName(
      o[0] as api.GoogleCloudDialogflowCxV3ResourceName);
  checkGoogleCloudDialogflowCxV3ResourceName(
      o[1] as api.GoogleCloudDialogflowCxV3ResourceName);
}

core.List<core.String> buildUnnamed5831() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5831(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3ValidationMessage = 0;
api.GoogleCloudDialogflowCxV3ValidationMessage
    buildGoogleCloudDialogflowCxV3ValidationMessage() {
  var o = api.GoogleCloudDialogflowCxV3ValidationMessage();
  buildCounterGoogleCloudDialogflowCxV3ValidationMessage++;
  if (buildCounterGoogleCloudDialogflowCxV3ValidationMessage < 3) {
    o.detail = 'foo';
    o.resourceNames = buildUnnamed5830();
    o.resourceType = 'foo';
    o.resources = buildUnnamed5831();
    o.severity = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ValidationMessage--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ValidationMessage(
    api.GoogleCloudDialogflowCxV3ValidationMessage o) {
  buildCounterGoogleCloudDialogflowCxV3ValidationMessage++;
  if (buildCounterGoogleCloudDialogflowCxV3ValidationMessage < 3) {
    unittest.expect(o.detail, unittest.equals('foo'));
    checkUnnamed5830(o.resourceNames);
    unittest.expect(o.resourceType, unittest.equals('foo'));
    checkUnnamed5831(o.resources);
    unittest.expect(o.severity, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3ValidationMessage--;
}

core.int buildCounterGoogleCloudDialogflowCxV3VariantsHistory = 0;
api.GoogleCloudDialogflowCxV3VariantsHistory
    buildGoogleCloudDialogflowCxV3VariantsHistory() {
  var o = api.GoogleCloudDialogflowCxV3VariantsHistory();
  buildCounterGoogleCloudDialogflowCxV3VariantsHistory++;
  if (buildCounterGoogleCloudDialogflowCxV3VariantsHistory < 3) {
    o.updateTime = 'foo';
    o.versionVariants = buildGoogleCloudDialogflowCxV3VersionVariants();
  }
  buildCounterGoogleCloudDialogflowCxV3VariantsHistory--;
  return o;
}

void checkGoogleCloudDialogflowCxV3VariantsHistory(
    api.GoogleCloudDialogflowCxV3VariantsHistory o) {
  buildCounterGoogleCloudDialogflowCxV3VariantsHistory++;
  if (buildCounterGoogleCloudDialogflowCxV3VariantsHistory < 3) {
    unittest.expect(o.updateTime, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3VersionVariants(
        o.versionVariants as api.GoogleCloudDialogflowCxV3VersionVariants);
  }
  buildCounterGoogleCloudDialogflowCxV3VariantsHistory--;
}

core.int buildCounterGoogleCloudDialogflowCxV3Version = 0;
api.GoogleCloudDialogflowCxV3Version buildGoogleCloudDialogflowCxV3Version() {
  var o = api.GoogleCloudDialogflowCxV3Version();
  buildCounterGoogleCloudDialogflowCxV3Version++;
  if (buildCounterGoogleCloudDialogflowCxV3Version < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.nluSettings = buildGoogleCloudDialogflowCxV3NluSettings();
    o.state = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3Version--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Version(
    api.GoogleCloudDialogflowCxV3Version o) {
  buildCounterGoogleCloudDialogflowCxV3Version++;
  if (buildCounterGoogleCloudDialogflowCxV3Version < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3NluSettings(
        o.nluSettings as api.GoogleCloudDialogflowCxV3NluSettings);
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3Version--;
}

core.List<api.GoogleCloudDialogflowCxV3VersionVariantsVariant>
    buildUnnamed5832() {
  var o = <api.GoogleCloudDialogflowCxV3VersionVariantsVariant>[];
  o.add(buildGoogleCloudDialogflowCxV3VersionVariantsVariant());
  o.add(buildGoogleCloudDialogflowCxV3VersionVariantsVariant());
  return o;
}

void checkUnnamed5832(
    core.List<api.GoogleCloudDialogflowCxV3VersionVariantsVariant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3VersionVariantsVariant(
      o[0] as api.GoogleCloudDialogflowCxV3VersionVariantsVariant);
  checkGoogleCloudDialogflowCxV3VersionVariantsVariant(
      o[1] as api.GoogleCloudDialogflowCxV3VersionVariantsVariant);
}

core.int buildCounterGoogleCloudDialogflowCxV3VersionVariants = 0;
api.GoogleCloudDialogflowCxV3VersionVariants
    buildGoogleCloudDialogflowCxV3VersionVariants() {
  var o = api.GoogleCloudDialogflowCxV3VersionVariants();
  buildCounterGoogleCloudDialogflowCxV3VersionVariants++;
  if (buildCounterGoogleCloudDialogflowCxV3VersionVariants < 3) {
    o.variants = buildUnnamed5832();
  }
  buildCounterGoogleCloudDialogflowCxV3VersionVariants--;
  return o;
}

void checkGoogleCloudDialogflowCxV3VersionVariants(
    api.GoogleCloudDialogflowCxV3VersionVariants o) {
  buildCounterGoogleCloudDialogflowCxV3VersionVariants++;
  if (buildCounterGoogleCloudDialogflowCxV3VersionVariants < 3) {
    checkUnnamed5832(o.variants);
  }
  buildCounterGoogleCloudDialogflowCxV3VersionVariants--;
}

core.int buildCounterGoogleCloudDialogflowCxV3VersionVariantsVariant = 0;
api.GoogleCloudDialogflowCxV3VersionVariantsVariant
    buildGoogleCloudDialogflowCxV3VersionVariantsVariant() {
  var o = api.GoogleCloudDialogflowCxV3VersionVariantsVariant();
  buildCounterGoogleCloudDialogflowCxV3VersionVariantsVariant++;
  if (buildCounterGoogleCloudDialogflowCxV3VersionVariantsVariant < 3) {
    o.isControlGroup = true;
    o.trafficAllocation = 42.0;
    o.version = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3VersionVariantsVariant--;
  return o;
}

void checkGoogleCloudDialogflowCxV3VersionVariantsVariant(
    api.GoogleCloudDialogflowCxV3VersionVariantsVariant o) {
  buildCounterGoogleCloudDialogflowCxV3VersionVariantsVariant++;
  if (buildCounterGoogleCloudDialogflowCxV3VersionVariantsVariant < 3) {
    unittest.expect(o.isControlGroup, unittest.isTrue);
    unittest.expect(o.trafficAllocation, unittest.equals(42.0));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3VersionVariantsVariant--;
}

core.int buildCounterGoogleCloudDialogflowCxV3VoiceSelectionParams = 0;
api.GoogleCloudDialogflowCxV3VoiceSelectionParams
    buildGoogleCloudDialogflowCxV3VoiceSelectionParams() {
  var o = api.GoogleCloudDialogflowCxV3VoiceSelectionParams();
  buildCounterGoogleCloudDialogflowCxV3VoiceSelectionParams++;
  if (buildCounterGoogleCloudDialogflowCxV3VoiceSelectionParams < 3) {
    o.name = 'foo';
    o.ssmlGender = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3VoiceSelectionParams--;
  return o;
}

void checkGoogleCloudDialogflowCxV3VoiceSelectionParams(
    api.GoogleCloudDialogflowCxV3VoiceSelectionParams o) {
  buildCounterGoogleCloudDialogflowCxV3VoiceSelectionParams++;
  if (buildCounterGoogleCloudDialogflowCxV3VoiceSelectionParams < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.ssmlGender, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3VoiceSelectionParams--;
}

core.int buildCounterGoogleCloudDialogflowCxV3Webhook = 0;
api.GoogleCloudDialogflowCxV3Webhook buildGoogleCloudDialogflowCxV3Webhook() {
  var o = api.GoogleCloudDialogflowCxV3Webhook();
  buildCounterGoogleCloudDialogflowCxV3Webhook++;
  if (buildCounterGoogleCloudDialogflowCxV3Webhook < 3) {
    o.disabled = true;
    o.displayName = 'foo';
    o.genericWebService =
        buildGoogleCloudDialogflowCxV3WebhookGenericWebService();
    o.name = 'foo';
    o.timeout = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3Webhook--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Webhook(
    api.GoogleCloudDialogflowCxV3Webhook o) {
  buildCounterGoogleCloudDialogflowCxV3Webhook++;
  if (buildCounterGoogleCloudDialogflowCxV3Webhook < 3) {
    unittest.expect(o.disabled, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3WebhookGenericWebService(o.genericWebService
        as api.GoogleCloudDialogflowCxV3WebhookGenericWebService);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.timeout, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3Webhook--;
}

core.Map<core.String, core.String> buildUnnamed5833() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5833(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3WebhookGenericWebService = 0;
api.GoogleCloudDialogflowCxV3WebhookGenericWebService
    buildGoogleCloudDialogflowCxV3WebhookGenericWebService() {
  var o = api.GoogleCloudDialogflowCxV3WebhookGenericWebService();
  buildCounterGoogleCloudDialogflowCxV3WebhookGenericWebService++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookGenericWebService < 3) {
    o.password = 'foo';
    o.requestHeaders = buildUnnamed5833();
    o.uri = 'foo';
    o.username = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookGenericWebService--;
  return o;
}

void checkGoogleCloudDialogflowCxV3WebhookGenericWebService(
    api.GoogleCloudDialogflowCxV3WebhookGenericWebService o) {
  buildCounterGoogleCloudDialogflowCxV3WebhookGenericWebService++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookGenericWebService < 3) {
    unittest.expect(o.password, unittest.equals('foo'));
    checkUnnamed5833(o.requestHeaders);
    unittest.expect(o.uri, unittest.equals('foo'));
    unittest.expect(o.username, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookGenericWebService--;
}

core.List<api.GoogleCloudDialogflowCxV3ResponseMessage> buildUnnamed5834() {
  var o = <api.GoogleCloudDialogflowCxV3ResponseMessage>[];
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessage());
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessage());
  return o;
}

void checkUnnamed5834(
    core.List<api.GoogleCloudDialogflowCxV3ResponseMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ResponseMessage(
      o[0] as api.GoogleCloudDialogflowCxV3ResponseMessage);
  checkGoogleCloudDialogflowCxV3ResponseMessage(
      o[1] as api.GoogleCloudDialogflowCxV3ResponseMessage);
}

core.Map<core.String, core.Object> buildUnnamed5835() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5835(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted30 = (o['x']) as core.Map;
  unittest.expect(casted30, unittest.hasLength(3));
  unittest.expect(casted30['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted30['bool'], unittest.equals(true));
  unittest.expect(casted30['string'], unittest.equals('foo'));
  var casted31 = (o['y']) as core.Map;
  unittest.expect(casted31, unittest.hasLength(3));
  unittest.expect(casted31['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted31['bool'], unittest.equals(true));
  unittest.expect(casted31['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3WebhookRequest = 0;
api.GoogleCloudDialogflowCxV3WebhookRequest
    buildGoogleCloudDialogflowCxV3WebhookRequest() {
  var o = api.GoogleCloudDialogflowCxV3WebhookRequest();
  buildCounterGoogleCloudDialogflowCxV3WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookRequest < 3) {
    o.detectIntentResponseId = 'foo';
    o.fulfillmentInfo =
        buildGoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo();
    o.intentInfo = buildGoogleCloudDialogflowCxV3WebhookRequestIntentInfo();
    o.messages = buildUnnamed5834();
    o.pageInfo = buildGoogleCloudDialogflowCxV3PageInfo();
    o.payload = buildUnnamed5835();
    o.sentimentAnalysisResult =
        buildGoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult();
    o.sessionInfo = buildGoogleCloudDialogflowCxV3SessionInfo();
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3WebhookRequest(
    api.GoogleCloudDialogflowCxV3WebhookRequest o) {
  buildCounterGoogleCloudDialogflowCxV3WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookRequest < 3) {
    unittest.expect(o.detectIntentResponseId, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo(
        o.fulfillmentInfo
            as api.GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo);
    checkGoogleCloudDialogflowCxV3WebhookRequestIntentInfo(
        o.intentInfo as api.GoogleCloudDialogflowCxV3WebhookRequestIntentInfo);
    checkUnnamed5834(o.messages);
    checkGoogleCloudDialogflowCxV3PageInfo(
        o.pageInfo as api.GoogleCloudDialogflowCxV3PageInfo);
    checkUnnamed5835(o.payload);
    checkGoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult(o
            .sentimentAnalysisResult
        as api.GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult);
    checkGoogleCloudDialogflowCxV3SessionInfo(
        o.sessionInfo as api.GoogleCloudDialogflowCxV3SessionInfo);
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo = 0;
api.GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo
    buildGoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo() {
  var o = api.GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo();
  buildCounterGoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo < 3) {
    o.tag = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo(
    api.GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo o) {
  buildCounterGoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo < 3) {
    unittest.expect(o.tag, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo--;
}

core.Map<core.String,
        api.GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue>
    buildUnnamed5836() {
  var o = <core.String,
      api.GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue>{};
  o['x'] =
      buildGoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue();
  o['y'] =
      buildGoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue();
  return o;
}

void checkUnnamed5836(
    core.Map<core.String,
            api.GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue(
      o['x'] as api
          .GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue);
  checkGoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue(
      o['y'] as api
          .GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue);
}

core.int buildCounterGoogleCloudDialogflowCxV3WebhookRequestIntentInfo = 0;
api.GoogleCloudDialogflowCxV3WebhookRequestIntentInfo
    buildGoogleCloudDialogflowCxV3WebhookRequestIntentInfo() {
  var o = api.GoogleCloudDialogflowCxV3WebhookRequestIntentInfo();
  buildCounterGoogleCloudDialogflowCxV3WebhookRequestIntentInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookRequestIntentInfo < 3) {
    o.confidence = 42.0;
    o.displayName = 'foo';
    o.lastMatchedIntent = 'foo';
    o.parameters = buildUnnamed5836();
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookRequestIntentInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3WebhookRequestIntentInfo(
    api.GoogleCloudDialogflowCxV3WebhookRequestIntentInfo o) {
  buildCounterGoogleCloudDialogflowCxV3WebhookRequestIntentInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookRequestIntentInfo < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.lastMatchedIntent, unittest.equals('foo'));
    checkUnnamed5836(o.parameters);
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookRequestIntentInfo--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue =
    0;
api.GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue
    buildGoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue() {
  var o = api
      .GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue();
  buildCounterGoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue <
      3) {
    o.originalValue = 'foo';
    o.resolvedValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue--;
  return o;
}

void checkGoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue(
    api.GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue
        o) {
  buildCounterGoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue <
      3) {
    unittest.expect(o.originalValue, unittest.equals('foo'));
    var casted32 = (o.resolvedValue) as core.Map;
    unittest.expect(casted32, unittest.hasLength(3));
    unittest.expect(casted32['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted32['bool'], unittest.equals(true));
    unittest.expect(casted32['string'], unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult =
    0;
api.GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult
    buildGoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult() {
  var o = api.GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult();
  buildCounterGoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult <
      3) {
    o.magnitude = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult(
    api.GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult o) {
  buildCounterGoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult <
      3) {
    unittest.expect(o.magnitude, unittest.equals(42.0));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult--;
}

core.Map<core.String, core.Object> buildUnnamed5837() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5837(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted33 = (o['x']) as core.Map;
  unittest.expect(casted33, unittest.hasLength(3));
  unittest.expect(casted33['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted33['bool'], unittest.equals(true));
  unittest.expect(casted33['string'], unittest.equals('foo'));
  var casted34 = (o['y']) as core.Map;
  unittest.expect(casted34, unittest.hasLength(3));
  unittest.expect(casted34['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted34['bool'], unittest.equals(true));
  unittest.expect(casted34['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3WebhookResponse = 0;
api.GoogleCloudDialogflowCxV3WebhookResponse
    buildGoogleCloudDialogflowCxV3WebhookResponse() {
  var o = api.GoogleCloudDialogflowCxV3WebhookResponse();
  buildCounterGoogleCloudDialogflowCxV3WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookResponse < 3) {
    o.fulfillmentResponse =
        buildGoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse();
    o.pageInfo = buildGoogleCloudDialogflowCxV3PageInfo();
    o.payload = buildUnnamed5837();
    o.sessionInfo = buildGoogleCloudDialogflowCxV3SessionInfo();
    o.targetFlow = 'foo';
    o.targetPage = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3WebhookResponse(
    api.GoogleCloudDialogflowCxV3WebhookResponse o) {
  buildCounterGoogleCloudDialogflowCxV3WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookResponse < 3) {
    checkGoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse(
        o.fulfillmentResponse
            as api.GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse);
    checkGoogleCloudDialogflowCxV3PageInfo(
        o.pageInfo as api.GoogleCloudDialogflowCxV3PageInfo);
    checkUnnamed5837(o.payload);
    checkGoogleCloudDialogflowCxV3SessionInfo(
        o.sessionInfo as api.GoogleCloudDialogflowCxV3SessionInfo);
    unittest.expect(o.targetFlow, unittest.equals('foo'));
    unittest.expect(o.targetPage, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3ResponseMessage> buildUnnamed5838() {
  var o = <api.GoogleCloudDialogflowCxV3ResponseMessage>[];
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessage());
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessage());
  return o;
}

void checkUnnamed5838(
    core.List<api.GoogleCloudDialogflowCxV3ResponseMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ResponseMessage(
      o[0] as api.GoogleCloudDialogflowCxV3ResponseMessage);
  checkGoogleCloudDialogflowCxV3ResponseMessage(
      o[1] as api.GoogleCloudDialogflowCxV3ResponseMessage);
}

core.int
    buildCounterGoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse = 0;
api.GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse
    buildGoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse() {
  var o = api.GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse();
  buildCounterGoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse <
      3) {
    o.mergeBehavior = 'foo';
    o.messages = buildUnnamed5838();
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse(
    api.GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse o) {
  buildCounterGoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse <
      3) {
    unittest.expect(o.mergeBehavior, unittest.equals('foo'));
    checkUnnamed5838(o.messages);
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1AudioInput = 0;
api.GoogleCloudDialogflowCxV3beta1AudioInput
    buildGoogleCloudDialogflowCxV3beta1AudioInput() {
  var o = api.GoogleCloudDialogflowCxV3beta1AudioInput();
  buildCounterGoogleCloudDialogflowCxV3beta1AudioInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AudioInput < 3) {
    o.audio = 'foo';
    o.config = buildGoogleCloudDialogflowCxV3beta1InputAudioConfig();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AudioInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1AudioInput(
    api.GoogleCloudDialogflowCxV3beta1AudioInput o) {
  buildCounterGoogleCloudDialogflowCxV3beta1AudioInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1AudioInput < 3) {
    unittest.expect(o.audio, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1InputAudioConfig(
        o.config as api.GoogleCloudDialogflowCxV3beta1InputAudioConfig);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1AudioInput--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1TestError> buildUnnamed5839() {
  var o = <api.GoogleCloudDialogflowCxV3beta1TestError>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1TestError());
  o.add(buildGoogleCloudDialogflowCxV3beta1TestError());
  return o;
}

void checkUnnamed5839(
    core.List<api.GoogleCloudDialogflowCxV3beta1TestError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1TestError(
      o[0] as api.GoogleCloudDialogflowCxV3beta1TestError);
  checkGoogleCloudDialogflowCxV3beta1TestError(
      o[1] as api.GoogleCloudDialogflowCxV3beta1TestError);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata =
    0;
api.GoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata
    buildGoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata() {
  var o = api.GoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata();
  buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata < 3) {
    o.errors = buildUnnamed5839();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata(
    api.GoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata < 3) {
    checkUnnamed5839(o.errors);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1TestCaseResult> buildUnnamed5840() {
  var o = <api.GoogleCloudDialogflowCxV3beta1TestCaseResult>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1TestCaseResult());
  o.add(buildGoogleCloudDialogflowCxV3beta1TestCaseResult());
  return o;
}

void checkUnnamed5840(
    core.List<api.GoogleCloudDialogflowCxV3beta1TestCaseResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1TestCaseResult(
      o[0] as api.GoogleCloudDialogflowCxV3beta1TestCaseResult);
  checkGoogleCloudDialogflowCxV3beta1TestCaseResult(
      o[1] as api.GoogleCloudDialogflowCxV3beta1TestCaseResult);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse =
    0;
api.GoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse
    buildGoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse() {
  var o = api.GoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse < 3) {
    o.results = buildUnnamed5840();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse(
    api.GoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse o) {
  buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse < 3) {
    checkUnnamed5840(o.results);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurn = 0;
api.GoogleCloudDialogflowCxV3beta1ConversationTurn
    buildGoogleCloudDialogflowCxV3beta1ConversationTurn() {
  var o = api.GoogleCloudDialogflowCxV3beta1ConversationTurn();
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
    api.GoogleCloudDialogflowCxV3beta1ConversationTurn o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurn++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurn < 3) {
    checkGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput(o.userInput
        as api.GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput);
    checkGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput(
        o.virtualAgentOutput as api
            .GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurn--;
}

core.Map<core.String, core.Object> buildUnnamed5841() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5841(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted35 = (o['x']) as core.Map;
  unittest.expect(casted35, unittest.hasLength(3));
  unittest.expect(casted35['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted35['bool'], unittest.equals(true));
  unittest.expect(casted35['string'], unittest.equals('foo'));
  var casted36 = (o['y']) as core.Map;
  unittest.expect(casted36, unittest.hasLength(3));
  unittest.expect(casted36['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted36['bool'], unittest.equals(true));
  unittest.expect(casted36['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput =
    0;
api.GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput
    buildGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput() {
  var o = api.GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput();
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput < 3) {
    o.injectedParameters = buildUnnamed5841();
    o.input = buildGoogleCloudDialogflowCxV3beta1QueryInput();
    o.isWebhookEnabled = true;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput(
    api.GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput < 3) {
    checkUnnamed5841(o.injectedParameters);
    checkGoogleCloudDialogflowCxV3beta1QueryInput(
        o.input as api.GoogleCloudDialogflowCxV3beta1QueryInput);
    unittest.expect(o.isWebhookEnabled, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput--;
}

core.Map<core.String, core.Object> buildUnnamed5842() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5842(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted37 = (o['x']) as core.Map;
  unittest.expect(casted37, unittest.hasLength(3));
  unittest.expect(casted37['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted37['bool'], unittest.equals(true));
  unittest.expect(casted37['string'], unittest.equals('foo'));
  var casted38 = (o['y']) as core.Map;
  unittest.expect(casted38, unittest.hasLength(3));
  unittest.expect(casted38['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted38['bool'], unittest.equals(true));
  unittest.expect(casted38['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3beta1TestRunDifference>
    buildUnnamed5843() {
  var o = <api.GoogleCloudDialogflowCxV3beta1TestRunDifference>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1TestRunDifference());
  o.add(buildGoogleCloudDialogflowCxV3beta1TestRunDifference());
  return o;
}

void checkUnnamed5843(
    core.List<api.GoogleCloudDialogflowCxV3beta1TestRunDifference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1TestRunDifference(
      o[0] as api.GoogleCloudDialogflowCxV3beta1TestRunDifference);
  checkGoogleCloudDialogflowCxV3beta1TestRunDifference(
      o[1] as api.GoogleCloudDialogflowCxV3beta1TestRunDifference);
}

core.Map<core.String, core.Object> buildUnnamed5844() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5844(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted39 = (o['x']) as core.Map;
  unittest.expect(casted39, unittest.hasLength(3));
  unittest.expect(casted39['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted39['bool'], unittest.equals(true));
  unittest.expect(casted39['string'], unittest.equals('foo'));
  var casted40 = (o['y']) as core.Map;
  unittest.expect(casted40, unittest.hasLength(3));
  unittest.expect(casted40['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted40['bool'], unittest.equals(true));
  unittest.expect(casted40['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessageText>
    buildUnnamed5845() {
  var o = <api.GoogleCloudDialogflowCxV3beta1ResponseMessageText>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessageText());
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessageText());
  return o;
}

void checkUnnamed5845(
    core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessageText> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ResponseMessageText(
      o[0] as api.GoogleCloudDialogflowCxV3beta1ResponseMessageText);
  checkGoogleCloudDialogflowCxV3beta1ResponseMessageText(
      o[1] as api.GoogleCloudDialogflowCxV3beta1ResponseMessageText);
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput =
    0;
api.GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput
    buildGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput() {
  var o =
      api.GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput();
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput <
      3) {
    o.currentPage = buildGoogleCloudDialogflowCxV3beta1Page();
    o.diagnosticInfo = buildUnnamed5842();
    o.differences = buildUnnamed5843();
    o.sessionParameters = buildUnnamed5844();
    o.status = buildGoogleRpcStatus();
    o.textResponses = buildUnnamed5845();
    o.triggeredIntent = buildGoogleCloudDialogflowCxV3beta1Intent();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput(
    api.GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput <
      3) {
    checkGoogleCloudDialogflowCxV3beta1Page(
        o.currentPage as api.GoogleCloudDialogflowCxV3beta1Page);
    checkUnnamed5842(o.diagnosticInfo);
    checkUnnamed5843(o.differences);
    checkUnnamed5844(o.sessionParameters);
    checkGoogleRpcStatus(o.status as api.GoogleRpcStatus);
    checkUnnamed5845(o.textResponses);
    checkGoogleCloudDialogflowCxV3beta1Intent(
        o.triggeredIntent as api.GoogleCloudDialogflowCxV3beta1Intent);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata =
    0;
api.GoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata
    buildGoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata() {
  var o = api.GoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata();
  buildCounterGoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata <
      3) {
    o.genericMetadata =
        buildGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata(
    api.GoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata <
      3) {
    checkGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata(o
            .genericMetadata
        as api.GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata =
    0;
api.GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata
    buildGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata() {
  var o = api.GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata();
  buildCounterGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata <
      3) {
    o.version = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata(
    api.GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata <
      3) {
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata =
    0;
api.GoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata
    buildGoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata() {
  var o = api.GoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata();
  buildCounterGoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata <
      3) {
    o.genericMetadata =
        buildGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata(
    api.GoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata <
      3) {
    checkGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata(o
            .genericMetadata
        as api.GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1DtmfInput = 0;
api.GoogleCloudDialogflowCxV3beta1DtmfInput
    buildGoogleCloudDialogflowCxV3beta1DtmfInput() {
  var o = api.GoogleCloudDialogflowCxV3beta1DtmfInput();
  buildCounterGoogleCloudDialogflowCxV3beta1DtmfInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DtmfInput < 3) {
    o.digits = 'foo';
    o.finishDigit = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DtmfInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1DtmfInput(
    api.GoogleCloudDialogflowCxV3beta1DtmfInput o) {
  buildCounterGoogleCloudDialogflowCxV3beta1DtmfInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1DtmfInput < 3) {
    unittest.expect(o.digits, unittest.equals('foo'));
    unittest.expect(o.finishDigit, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1DtmfInput--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1EventHandler = 0;
api.GoogleCloudDialogflowCxV3beta1EventHandler
    buildGoogleCloudDialogflowCxV3beta1EventHandler() {
  var o = api.GoogleCloudDialogflowCxV3beta1EventHandler();
  buildCounterGoogleCloudDialogflowCxV3beta1EventHandler++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EventHandler < 3) {
    o.event = 'foo';
    o.name = 'foo';
    o.targetFlow = 'foo';
    o.targetPage = 'foo';
    o.triggerFulfillment = buildGoogleCloudDialogflowCxV3beta1Fulfillment();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EventHandler--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1EventHandler(
    api.GoogleCloudDialogflowCxV3beta1EventHandler o) {
  buildCounterGoogleCloudDialogflowCxV3beta1EventHandler++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EventHandler < 3) {
    unittest.expect(o.event, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.targetFlow, unittest.equals('foo'));
    unittest.expect(o.targetPage, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1Fulfillment(
        o.triggerFulfillment as api.GoogleCloudDialogflowCxV3beta1Fulfillment);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EventHandler--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1EventInput = 0;
api.GoogleCloudDialogflowCxV3beta1EventInput
    buildGoogleCloudDialogflowCxV3beta1EventInput() {
  var o = api.GoogleCloudDialogflowCxV3beta1EventInput();
  buildCounterGoogleCloudDialogflowCxV3beta1EventInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EventInput < 3) {
    o.event = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EventInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1EventInput(
    api.GoogleCloudDialogflowCxV3beta1EventInput o) {
  buildCounterGoogleCloudDialogflowCxV3beta1EventInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1EventInput < 3) {
    unittest.expect(o.event, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1EventInput--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ExportAgentResponse
    buildGoogleCloudDialogflowCxV3beta1ExportAgentResponse() {
  var o = api.GoogleCloudDialogflowCxV3beta1ExportAgentResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentResponse < 3) {
    o.agentContent = 'foo';
    o.agentUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ExportAgentResponse(
    api.GoogleCloudDialogflowCxV3beta1ExportAgentResponse o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentResponse < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentResponse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata = 0;
api.GoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata
    buildGoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata() {
  var o = api.GoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata();
  buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata < 3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata(
    api.GoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata < 3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ExportTestCasesResponse
    buildGoogleCloudDialogflowCxV3beta1ExportTestCasesResponse() {
  var o = api.GoogleCloudDialogflowCxV3beta1ExportTestCasesResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesResponse < 3) {
    o.content = 'foo';
    o.gcsUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ExportTestCasesResponse(
    api.GoogleCloudDialogflowCxV3beta1ExportTestCasesResponse o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesResponse < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.gcsUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportTestCasesResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1FormParameter> buildUnnamed5846() {
  var o = <api.GoogleCloudDialogflowCxV3beta1FormParameter>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1FormParameter());
  o.add(buildGoogleCloudDialogflowCxV3beta1FormParameter());
  return o;
}

void checkUnnamed5846(
    core.List<api.GoogleCloudDialogflowCxV3beta1FormParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1FormParameter(
      o[0] as api.GoogleCloudDialogflowCxV3beta1FormParameter);
  checkGoogleCloudDialogflowCxV3beta1FormParameter(
      o[1] as api.GoogleCloudDialogflowCxV3beta1FormParameter);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Form = 0;
api.GoogleCloudDialogflowCxV3beta1Form
    buildGoogleCloudDialogflowCxV3beta1Form() {
  var o = api.GoogleCloudDialogflowCxV3beta1Form();
  buildCounterGoogleCloudDialogflowCxV3beta1Form++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Form < 3) {
    o.parameters = buildUnnamed5846();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Form--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Form(
    api.GoogleCloudDialogflowCxV3beta1Form o) {
  buildCounterGoogleCloudDialogflowCxV3beta1Form++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Form < 3) {
    checkUnnamed5846(o.parameters);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Form--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1FormParameter = 0;
api.GoogleCloudDialogflowCxV3beta1FormParameter
    buildGoogleCloudDialogflowCxV3beta1FormParameter() {
  var o = api.GoogleCloudDialogflowCxV3beta1FormParameter();
  buildCounterGoogleCloudDialogflowCxV3beta1FormParameter++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FormParameter < 3) {
    o.defaultValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
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
    api.GoogleCloudDialogflowCxV3beta1FormParameter o) {
  buildCounterGoogleCloudDialogflowCxV3beta1FormParameter++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FormParameter < 3) {
    var casted41 = (o.defaultValue) as core.Map;
    unittest.expect(casted41, unittest.hasLength(3));
    unittest.expect(casted41['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted41['bool'], unittest.equals(true));
    unittest.expect(casted41['string'], unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityType, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior(o.fillBehavior
        as api.GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior);
    unittest.expect(o.isList, unittest.isTrue);
    unittest.expect(o.redact, unittest.isTrue);
    unittest.expect(o.required, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FormParameter--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1EventHandler> buildUnnamed5847() {
  var o = <api.GoogleCloudDialogflowCxV3beta1EventHandler>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1EventHandler());
  o.add(buildGoogleCloudDialogflowCxV3beta1EventHandler());
  return o;
}

void checkUnnamed5847(
    core.List<api.GoogleCloudDialogflowCxV3beta1EventHandler> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1EventHandler(
      o[0] as api.GoogleCloudDialogflowCxV3beta1EventHandler);
  checkGoogleCloudDialogflowCxV3beta1EventHandler(
      o[1] as api.GoogleCloudDialogflowCxV3beta1EventHandler);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior =
    0;
api.GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior
    buildGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior() {
  var o = api.GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior();
  buildCounterGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior < 3) {
    o.initialPromptFulfillment =
        buildGoogleCloudDialogflowCxV3beta1Fulfillment();
    o.repromptEventHandlers = buildUnnamed5847();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior(
    api.GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior o) {
  buildCounterGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior < 3) {
    checkGoogleCloudDialogflowCxV3beta1Fulfillment(o.initialPromptFulfillment
        as api.GoogleCloudDialogflowCxV3beta1Fulfillment);
    checkUnnamed5847(o.repromptEventHandlers);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases>
    buildUnnamed5848() {
  var o = <api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases());
  o.add(buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases());
  return o;
}

void checkUnnamed5848(
    core.List<api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases(
      o[0] as api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases);
  checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases(
      o[1] as api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases);
}

core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage>
    buildUnnamed5849() {
  var o = <api.GoogleCloudDialogflowCxV3beta1ResponseMessage>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  return o;
}

void checkUnnamed5849(
    core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(
      o[0] as api.GoogleCloudDialogflowCxV3beta1ResponseMessage);
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(
      o[1] as api.GoogleCloudDialogflowCxV3beta1ResponseMessage);
}

core.List<api.GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction>
    buildUnnamed5850() {
  var o = <api.GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction());
  o.add(buildGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction());
  return o;
}

void checkUnnamed5850(
    core.List<api.GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction(
      o[0] as api.GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction);
  checkGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction(
      o[1] as api.GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Fulfillment = 0;
api.GoogleCloudDialogflowCxV3beta1Fulfillment
    buildGoogleCloudDialogflowCxV3beta1Fulfillment() {
  var o = api.GoogleCloudDialogflowCxV3beta1Fulfillment();
  buildCounterGoogleCloudDialogflowCxV3beta1Fulfillment++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Fulfillment < 3) {
    o.conditionalCases = buildUnnamed5848();
    o.messages = buildUnnamed5849();
    o.setParameterActions = buildUnnamed5850();
    o.tag = 'foo';
    o.webhook = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Fulfillment--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Fulfillment(
    api.GoogleCloudDialogflowCxV3beta1Fulfillment o) {
  buildCounterGoogleCloudDialogflowCxV3beta1Fulfillment++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Fulfillment < 3) {
    checkUnnamed5848(o.conditionalCases);
    checkUnnamed5849(o.messages);
    checkUnnamed5850(o.setParameterActions);
    unittest.expect(o.tag, unittest.equals('foo'));
    unittest.expect(o.webhook, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Fulfillment--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase>
    buildUnnamed5851() {
  var o = <api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase());
  o.add(buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase());
  return o;
}

void checkUnnamed5851(
    core.List<api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase(o[0]
      as api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase);
  checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase(o[1]
      as api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases =
    0;
api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases
    buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases() {
  var o = api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases();
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases <
      3) {
    o.cases = buildUnnamed5851();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases(
    api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases o) {
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases <
      3) {
    checkUnnamed5851(o.cases);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases--;
}

core.List<
        api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent>
    buildUnnamed5852() {
  var o = <
      api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent>[];
  o.add(
      buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent());
  o.add(
      buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent());
  return o;
}

void checkUnnamed5852(
    core.List<
            api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent(
      o[0] as api
          .GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent);
  checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent(
      o[1] as api
          .GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent);
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase =
    0;
api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase
    buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase() {
  var o = api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase();
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase <
      3) {
    o.caseContent = buildUnnamed5852();
    o.condition = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase(
    api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase o) {
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase <
      3) {
    checkUnnamed5852(o.caseContent);
    unittest.expect(o.condition, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent =
    0;
api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent
    buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent() {
  var o = api
      .GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent();
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

void checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent(
    api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent
        o) {
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent <
      3) {
    checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases(
        o.additionalCases
            as api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessage(
        o.message as api.GoogleCloudDialogflowCxV3beta1ResponseMessage);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction = 0;
api.GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction
    buildGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction() {
  var o = api.GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction();
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction <
      3) {
    o.parameter = 'foo';
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction(
    api.GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction o) {
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction <
      3) {
    unittest.expect(o.parameter, unittest.equals('foo'));
    var casted42 = (o.value) as core.Map;
    unittest.expect(casted42, unittest.hasLength(3));
    unittest.expect(casted42['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted42['bool'], unittest.equals(true));
    unittest.expect(casted42['string'], unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata =
    0;
api.GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata
    buildGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata() {
  var o = api.GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata();
  buildCounterGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata <
      3) {
    o.state = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata(
    api.GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata <
      3) {
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata =
    0;
api.GoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata
    buildGoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata() {
  var o = api.GoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata();
  buildCounterGoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata <
      3) {
    o.genericMetadata =
        buildGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata(
    api.GoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata <
      3) {
    checkGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata(o
            .genericMetadata
        as api.GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata--;
}

core.List<api.GoogleRpcStatus> buildUnnamed5853() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed5853(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ImportDocumentsResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ImportDocumentsResponse
    buildGoogleCloudDialogflowCxV3beta1ImportDocumentsResponse() {
  var o = api.GoogleCloudDialogflowCxV3beta1ImportDocumentsResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ImportDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportDocumentsResponse < 3) {
    o.warnings = buildUnnamed5853();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportDocumentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ImportDocumentsResponse(
    api.GoogleCloudDialogflowCxV3beta1ImportDocumentsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ImportDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportDocumentsResponse < 3) {
    checkUnnamed5853(o.warnings);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportDocumentsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1TestCaseError> buildUnnamed5854() {
  var o = <api.GoogleCloudDialogflowCxV3beta1TestCaseError>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1TestCaseError());
  o.add(buildGoogleCloudDialogflowCxV3beta1TestCaseError());
  return o;
}

void checkUnnamed5854(
    core.List<api.GoogleCloudDialogflowCxV3beta1TestCaseError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1TestCaseError(
      o[0] as api.GoogleCloudDialogflowCxV3beta1TestCaseError);
  checkGoogleCloudDialogflowCxV3beta1TestCaseError(
      o[1] as api.GoogleCloudDialogflowCxV3beta1TestCaseError);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata = 0;
api.GoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata
    buildGoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata() {
  var o = api.GoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata();
  buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata < 3) {
    o.errors = buildUnnamed5854();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata(
    api.GoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata < 3) {
    checkUnnamed5854(o.errors);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata--;
}

core.List<core.String> buildUnnamed5855() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5855(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ImportTestCasesResponse
    buildGoogleCloudDialogflowCxV3beta1ImportTestCasesResponse() {
  var o = api.GoogleCloudDialogflowCxV3beta1ImportTestCasesResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesResponse < 3) {
    o.names = buildUnnamed5855();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ImportTestCasesResponse(
    api.GoogleCloudDialogflowCxV3beta1ImportTestCasesResponse o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesResponse < 3) {
    checkUnnamed5855(o.names);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesResponse--;
}

core.List<core.String> buildUnnamed5856() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5856(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1InputAudioConfig = 0;
api.GoogleCloudDialogflowCxV3beta1InputAudioConfig
    buildGoogleCloudDialogflowCxV3beta1InputAudioConfig() {
  var o = api.GoogleCloudDialogflowCxV3beta1InputAudioConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1InputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1InputAudioConfig < 3) {
    o.audioEncoding = 'foo';
    o.enableWordInfo = true;
    o.model = 'foo';
    o.modelVariant = 'foo';
    o.phraseHints = buildUnnamed5856();
    o.sampleRateHertz = 42;
    o.singleUtterance = true;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1InputAudioConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1InputAudioConfig(
    api.GoogleCloudDialogflowCxV3beta1InputAudioConfig o) {
  buildCounterGoogleCloudDialogflowCxV3beta1InputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1InputAudioConfig < 3) {
    unittest.expect(o.audioEncoding, unittest.equals('foo'));
    unittest.expect(o.enableWordInfo, unittest.isTrue);
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.modelVariant, unittest.equals('foo'));
    checkUnnamed5856(o.phraseHints);
    unittest.expect(o.sampleRateHertz, unittest.equals(42));
    unittest.expect(o.singleUtterance, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1InputAudioConfig--;
}

core.Map<core.String, core.String> buildUnnamed5857() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5857(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3beta1IntentParameter>
    buildUnnamed5858() {
  var o = <api.GoogleCloudDialogflowCxV3beta1IntentParameter>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1IntentParameter());
  o.add(buildGoogleCloudDialogflowCxV3beta1IntentParameter());
  return o;
}

void checkUnnamed5858(
    core.List<api.GoogleCloudDialogflowCxV3beta1IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1IntentParameter(
      o[0] as api.GoogleCloudDialogflowCxV3beta1IntentParameter);
  checkGoogleCloudDialogflowCxV3beta1IntentParameter(
      o[1] as api.GoogleCloudDialogflowCxV3beta1IntentParameter);
}

core.List<api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase>
    buildUnnamed5859() {
  var o = <api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase());
  o.add(buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase());
  return o;
}

void checkUnnamed5859(
    core.List<api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase(
      o[0] as api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase);
  checkGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase(
      o[1] as api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Intent = 0;
api.GoogleCloudDialogflowCxV3beta1Intent
    buildGoogleCloudDialogflowCxV3beta1Intent() {
  var o = api.GoogleCloudDialogflowCxV3beta1Intent();
  buildCounterGoogleCloudDialogflowCxV3beta1Intent++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Intent < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.isFallback = true;
    o.labels = buildUnnamed5857();
    o.name = 'foo';
    o.parameters = buildUnnamed5858();
    o.priority = 42;
    o.trainingPhrases = buildUnnamed5859();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Intent--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Intent(
    api.GoogleCloudDialogflowCxV3beta1Intent o) {
  buildCounterGoogleCloudDialogflowCxV3beta1Intent++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Intent < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.isFallback, unittest.isTrue);
    checkUnnamed5857(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5858(o.parameters);
    unittest.expect(o.priority, unittest.equals(42));
    checkUnnamed5859(o.trainingPhrases);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Intent--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1IntentInput = 0;
api.GoogleCloudDialogflowCxV3beta1IntentInput
    buildGoogleCloudDialogflowCxV3beta1IntentInput() {
  var o = api.GoogleCloudDialogflowCxV3beta1IntentInput();
  buildCounterGoogleCloudDialogflowCxV3beta1IntentInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1IntentInput < 3) {
    o.intent = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1IntentInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1IntentInput(
    api.GoogleCloudDialogflowCxV3beta1IntentInput o) {
  buildCounterGoogleCloudDialogflowCxV3beta1IntentInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1IntentInput < 3) {
    unittest.expect(o.intent, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1IntentInput--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1IntentParameter = 0;
api.GoogleCloudDialogflowCxV3beta1IntentParameter
    buildGoogleCloudDialogflowCxV3beta1IntentParameter() {
  var o = api.GoogleCloudDialogflowCxV3beta1IntentParameter();
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
    api.GoogleCloudDialogflowCxV3beta1IntentParameter o) {
  buildCounterGoogleCloudDialogflowCxV3beta1IntentParameter++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1IntentParameter < 3) {
    unittest.expect(o.entityType, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.isList, unittest.isTrue);
    unittest.expect(o.redact, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1IntentParameter--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart>
    buildUnnamed5860() {
  var o = <api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart());
  o.add(buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart());
  return o;
}

void checkUnnamed5860(
    core.List<api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart(
      o[0] as api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart);
  checkGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart(
      o[1] as api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase = 0;
api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase
    buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase() {
  var o = api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase();
  buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase < 3) {
    o.id = 'foo';
    o.parts = buildUnnamed5860();
    o.repeatCount = 42;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase(
    api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase o) {
  buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed5860(o.parts);
    unittest.expect(o.repeatCount, unittest.equals(42));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart = 0;
api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart
    buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart() {
  var o = api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart();
  buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart < 3) {
    o.parameterId = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart(
    api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart o) {
  buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart < 3) {
    unittest.expect(o.parameterId, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1EventHandler> buildUnnamed5861() {
  var o = <api.GoogleCloudDialogflowCxV3beta1EventHandler>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1EventHandler());
  o.add(buildGoogleCloudDialogflowCxV3beta1EventHandler());
  return o;
}

void checkUnnamed5861(
    core.List<api.GoogleCloudDialogflowCxV3beta1EventHandler> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1EventHandler(
      o[0] as api.GoogleCloudDialogflowCxV3beta1EventHandler);
  checkGoogleCloudDialogflowCxV3beta1EventHandler(
      o[1] as api.GoogleCloudDialogflowCxV3beta1EventHandler);
}

core.List<core.String> buildUnnamed5862() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5862(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3beta1TransitionRoute>
    buildUnnamed5863() {
  var o = <api.GoogleCloudDialogflowCxV3beta1TransitionRoute>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1TransitionRoute());
  o.add(buildGoogleCloudDialogflowCxV3beta1TransitionRoute());
  return o;
}

void checkUnnamed5863(
    core.List<api.GoogleCloudDialogflowCxV3beta1TransitionRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1TransitionRoute(
      o[0] as api.GoogleCloudDialogflowCxV3beta1TransitionRoute);
  checkGoogleCloudDialogflowCxV3beta1TransitionRoute(
      o[1] as api.GoogleCloudDialogflowCxV3beta1TransitionRoute);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1Page = 0;
api.GoogleCloudDialogflowCxV3beta1Page
    buildGoogleCloudDialogflowCxV3beta1Page() {
  var o = api.GoogleCloudDialogflowCxV3beta1Page();
  buildCounterGoogleCloudDialogflowCxV3beta1Page++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Page < 3) {
    o.displayName = 'foo';
    o.entryFulfillment = buildGoogleCloudDialogflowCxV3beta1Fulfillment();
    o.eventHandlers = buildUnnamed5861();
    o.form = buildGoogleCloudDialogflowCxV3beta1Form();
    o.name = 'foo';
    o.transitionRouteGroups = buildUnnamed5862();
    o.transitionRoutes = buildUnnamed5863();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Page--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Page(
    api.GoogleCloudDialogflowCxV3beta1Page o) {
  buildCounterGoogleCloudDialogflowCxV3beta1Page++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Page < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1Fulfillment(
        o.entryFulfillment as api.GoogleCloudDialogflowCxV3beta1Fulfillment);
    checkUnnamed5861(o.eventHandlers);
    checkGoogleCloudDialogflowCxV3beta1Form(
        o.form as api.GoogleCloudDialogflowCxV3beta1Form);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5862(o.transitionRouteGroups);
    checkUnnamed5863(o.transitionRoutes);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Page--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1PageInfo = 0;
api.GoogleCloudDialogflowCxV3beta1PageInfo
    buildGoogleCloudDialogflowCxV3beta1PageInfo() {
  var o = api.GoogleCloudDialogflowCxV3beta1PageInfo();
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PageInfo < 3) {
    o.currentPage = 'foo';
    o.formInfo = buildGoogleCloudDialogflowCxV3beta1PageInfoFormInfo();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1PageInfo(
    api.GoogleCloudDialogflowCxV3beta1PageInfo o) {
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PageInfo < 3) {
    unittest.expect(o.currentPage, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1PageInfoFormInfo(
        o.formInfo as api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfo);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfo--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo>
    buildUnnamed5864() {
  var o = <api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo());
  o.add(buildGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo());
  return o;
}

void checkUnnamed5864(
    core.List<api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo(
      o[0] as api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo);
  checkGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo(
      o[1] as api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo = 0;
api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfo
    buildGoogleCloudDialogflowCxV3beta1PageInfoFormInfo() {
  var o = api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfo();
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo < 3) {
    o.parameterInfo = buildUnnamed5864();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1PageInfoFormInfo(
    api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfo o) {
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo < 3) {
    checkUnnamed5864(o.parameterInfo);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo = 0;
api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo
    buildGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo() {
  var o = api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo();
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo <
      3) {
    o.displayName = 'foo';
    o.justCollected = true;
    o.required = true;
    o.state = 'foo';
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo(
    api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo o) {
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo <
      3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.justCollected, unittest.isTrue);
    unittest.expect(o.required, unittest.isTrue);
    unittest.expect(o.state, unittest.equals('foo'));
    var casted43 = (o.value) as core.Map;
    unittest.expect(casted43, unittest.hasLength(3));
    unittest.expect(casted43['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted43['bool'], unittest.equals(true));
    unittest.expect(casted43['string'], unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1QueryInput = 0;
api.GoogleCloudDialogflowCxV3beta1QueryInput
    buildGoogleCloudDialogflowCxV3beta1QueryInput() {
  var o = api.GoogleCloudDialogflowCxV3beta1QueryInput();
  buildCounterGoogleCloudDialogflowCxV3beta1QueryInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1QueryInput < 3) {
    o.audio = buildGoogleCloudDialogflowCxV3beta1AudioInput();
    o.dtmf = buildGoogleCloudDialogflowCxV3beta1DtmfInput();
    o.event = buildGoogleCloudDialogflowCxV3beta1EventInput();
    o.intent = buildGoogleCloudDialogflowCxV3beta1IntentInput();
    o.languageCode = 'foo';
    o.text = buildGoogleCloudDialogflowCxV3beta1TextInput();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1QueryInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1QueryInput(
    api.GoogleCloudDialogflowCxV3beta1QueryInput o) {
  buildCounterGoogleCloudDialogflowCxV3beta1QueryInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1QueryInput < 3) {
    checkGoogleCloudDialogflowCxV3beta1AudioInput(
        o.audio as api.GoogleCloudDialogflowCxV3beta1AudioInput);
    checkGoogleCloudDialogflowCxV3beta1DtmfInput(
        o.dtmf as api.GoogleCloudDialogflowCxV3beta1DtmfInput);
    checkGoogleCloudDialogflowCxV3beta1EventInput(
        o.event as api.GoogleCloudDialogflowCxV3beta1EventInput);
    checkGoogleCloudDialogflowCxV3beta1IntentInput(
        o.intent as api.GoogleCloudDialogflowCxV3beta1IntentInput);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1TextInput(
        o.text as api.GoogleCloudDialogflowCxV3beta1TextInput);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1QueryInput--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata =
    0;
api.GoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata
    buildGoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata() {
  var o = api.GoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata();
  buildCounterGoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata <
      3) {
    o.genericMetadata =
        buildGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata(
    api.GoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata <
      3) {
    checkGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata(o
            .genericMetadata
        as api.GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata--;
}

core.Map<core.String, core.Object> buildUnnamed5865() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5865(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted44 = (o['x']) as core.Map;
  unittest.expect(casted44, unittest.hasLength(3));
  unittest.expect(casted44['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted44['bool'], unittest.equals(true));
  unittest.expect(casted44['string'], unittest.equals('foo'));
  var casted45 = (o['y']) as core.Map;
  unittest.expect(casted45, unittest.hasLength(3));
  unittest.expect(casted45['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted45['bool'], unittest.equals(true));
  unittest.expect(casted45['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage = 0;
api.GoogleCloudDialogflowCxV3beta1ResponseMessage
    buildGoogleCloudDialogflowCxV3beta1ResponseMessage() {
  var o = api.GoogleCloudDialogflowCxV3beta1ResponseMessage();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage < 3) {
    o.conversationSuccess =
        buildGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess();
    o.endInteraction =
        buildGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction();
    o.liveAgentHandoff =
        buildGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff();
    o.mixedAudio =
        buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio();
    o.outputAudioText =
        buildGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText();
    o.payload = buildUnnamed5865();
    o.playAudio = buildGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio();
    o.text = buildGoogleCloudDialogflowCxV3beta1ResponseMessageText();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessage(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessage o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage < 3) {
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess(
        o.conversationSuccess as api
            .GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction(
        o.endInteraction
            as api.GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff(o
            .liveAgentHandoff
        as api.GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio(o.mixedAudio
        as api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText(o
            .outputAudioText
        as api.GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText);
    checkUnnamed5865(o.payload);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio(o.playAudio
        as api.GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageText(
        o.text as api.GoogleCloudDialogflowCxV3beta1ResponseMessageText);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage--;
}

core.Map<core.String, core.Object> buildUnnamed5866() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5866(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted46 = (o['x']) as core.Map;
  unittest.expect(casted46, unittest.hasLength(3));
  unittest.expect(casted46['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted46['bool'], unittest.equals(true));
  unittest.expect(casted46['string'], unittest.equals('foo'));
  var casted47 = (o['y']) as core.Map;
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
  var o =
      api.GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess <
      3) {
    o.metadata = buildUnnamed5866();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess <
      3) {
    checkUnnamed5866(o.metadata);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction = 0;
api.GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction
    buildGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction() {
  var o = api.GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction <
      3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction <
      3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction--;
}

core.Map<core.String, core.Object> buildUnnamed5867() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5867(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted48 = (o['x']) as core.Map;
  unittest.expect(casted48, unittest.hasLength(3));
  unittest.expect(casted48['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted48['bool'], unittest.equals(true));
  unittest.expect(casted48['string'], unittest.equals('foo'));
  var casted49 = (o['y']) as core.Map;
  unittest.expect(casted49, unittest.hasLength(3));
  unittest.expect(casted49['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted49['bool'], unittest.equals(true));
  unittest.expect(casted49['string'], unittest.equals('foo'));
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff =
    0;
api.GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff
    buildGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff() {
  var o = api.GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff <
      3) {
    o.metadata = buildUnnamed5867();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff <
      3) {
    checkUnnamed5867(o.metadata);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment>
    buildUnnamed5868() {
  var o =
      <api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment());
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment());
  return o;
}

void checkUnnamed5868(
    core.List<
            api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment(o[0]
      as api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment);
  checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment(o[1]
      as api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio =
    0;
api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio
    buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio() {
  var o = api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio < 3) {
    o.segments = buildUnnamed5868();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio < 3) {
    checkUnnamed5868(o.segments);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment =
    0;
api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment
    buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment() {
  var o = api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment();
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
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment <
      3) {
    unittest.expect(o.allowPlaybackInterruption, unittest.isTrue);
    unittest.expect(o.audio, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText =
    0;
api.GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText
    buildGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText() {
  var o = api.GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText();
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
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText <
      3) {
    unittest.expect(o.allowPlaybackInterruption, unittest.isTrue);
    unittest.expect(o.ssml, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio = 0;
api.GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio
    buildGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio() {
  var o = api.GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio < 3) {
    o.allowPlaybackInterruption = true;
    o.audioUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio < 3) {
    unittest.expect(o.allowPlaybackInterruption, unittest.isTrue);
    unittest.expect(o.audioUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio--;
}

core.List<core.String> buildUnnamed5869() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5869(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText = 0;
api.GoogleCloudDialogflowCxV3beta1ResponseMessageText
    buildGoogleCloudDialogflowCxV3beta1ResponseMessageText() {
  var o = api.GoogleCloudDialogflowCxV3beta1ResponseMessageText();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText < 3) {
    o.allowPlaybackInterruption = true;
    o.text = buildUnnamed5869();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageText(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageText o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText < 3) {
    unittest.expect(o.allowPlaybackInterruption, unittest.isTrue);
    checkUnnamed5869(o.text);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseMetadata = 0;
api.GoogleCloudDialogflowCxV3beta1RunTestCaseMetadata
    buildGoogleCloudDialogflowCxV3beta1RunTestCaseMetadata() {
  var o = api.GoogleCloudDialogflowCxV3beta1RunTestCaseMetadata();
  buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseMetadata < 3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1RunTestCaseMetadata(
    api.GoogleCloudDialogflowCxV3beta1RunTestCaseMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseMetadata < 3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseMetadata--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseResponse = 0;
api.GoogleCloudDialogflowCxV3beta1RunTestCaseResponse
    buildGoogleCloudDialogflowCxV3beta1RunTestCaseResponse() {
  var o = api.GoogleCloudDialogflowCxV3beta1RunTestCaseResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseResponse < 3) {
    o.result = buildGoogleCloudDialogflowCxV3beta1TestCaseResult();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1RunTestCaseResponse(
    api.GoogleCloudDialogflowCxV3beta1RunTestCaseResponse o) {
  buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseResponse < 3) {
    checkGoogleCloudDialogflowCxV3beta1TestCaseResult(
        o.result as api.GoogleCloudDialogflowCxV3beta1TestCaseResult);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1RunTestCaseResponse--;
}

core.Map<core.String, core.Object> buildUnnamed5870() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5870(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted50 = (o['x']) as core.Map;
  unittest.expect(casted50, unittest.hasLength(3));
  unittest.expect(casted50['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted50['bool'], unittest.equals(true));
  unittest.expect(casted50['string'], unittest.equals('foo'));
  var casted51 = (o['y']) as core.Map;
  unittest.expect(casted51, unittest.hasLength(3));
  unittest.expect(casted51['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted51['bool'], unittest.equals(true));
  unittest.expect(casted51['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo = 0;
api.GoogleCloudDialogflowCxV3beta1SessionInfo
    buildGoogleCloudDialogflowCxV3beta1SessionInfo() {
  var o = api.GoogleCloudDialogflowCxV3beta1SessionInfo();
  buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo < 3) {
    o.parameters = buildUnnamed5870();
    o.session = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1SessionInfo(
    api.GoogleCloudDialogflowCxV3beta1SessionInfo o) {
  buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo < 3) {
    checkUnnamed5870(o.parameters);
    unittest.expect(o.session, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo--;
}

core.List<core.String> buildUnnamed5871() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5871(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3beta1ConversationTurn>
    buildUnnamed5872() {
  var o = <api.GoogleCloudDialogflowCxV3beta1ConversationTurn>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1ConversationTurn());
  o.add(buildGoogleCloudDialogflowCxV3beta1ConversationTurn());
  return o;
}

void checkUnnamed5872(
    core.List<api.GoogleCloudDialogflowCxV3beta1ConversationTurn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ConversationTurn(
      o[0] as api.GoogleCloudDialogflowCxV3beta1ConversationTurn);
  checkGoogleCloudDialogflowCxV3beta1ConversationTurn(
      o[1] as api.GoogleCloudDialogflowCxV3beta1ConversationTurn);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TestCase = 0;
api.GoogleCloudDialogflowCxV3beta1TestCase
    buildGoogleCloudDialogflowCxV3beta1TestCase() {
  var o = api.GoogleCloudDialogflowCxV3beta1TestCase();
  buildCounterGoogleCloudDialogflowCxV3beta1TestCase++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestCase < 3) {
    o.creationTime = 'foo';
    o.displayName = 'foo';
    o.lastTestResult = buildGoogleCloudDialogflowCxV3beta1TestCaseResult();
    o.name = 'foo';
    o.notes = 'foo';
    o.tags = buildUnnamed5871();
    o.testCaseConversationTurns = buildUnnamed5872();
    o.testConfig = buildGoogleCloudDialogflowCxV3beta1TestConfig();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestCase--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TestCase(
    api.GoogleCloudDialogflowCxV3beta1TestCase o) {
  buildCounterGoogleCloudDialogflowCxV3beta1TestCase++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestCase < 3) {
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1TestCaseResult(
        o.lastTestResult as api.GoogleCloudDialogflowCxV3beta1TestCaseResult);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.notes, unittest.equals('foo'));
    checkUnnamed5871(o.tags);
    checkUnnamed5872(o.testCaseConversationTurns);
    checkGoogleCloudDialogflowCxV3beta1TestConfig(
        o.testConfig as api.GoogleCloudDialogflowCxV3beta1TestConfig);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestCase--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TestCaseError = 0;
api.GoogleCloudDialogflowCxV3beta1TestCaseError
    buildGoogleCloudDialogflowCxV3beta1TestCaseError() {
  var o = api.GoogleCloudDialogflowCxV3beta1TestCaseError();
  buildCounterGoogleCloudDialogflowCxV3beta1TestCaseError++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestCaseError < 3) {
    o.status = buildGoogleRpcStatus();
    o.testCase = buildGoogleCloudDialogflowCxV3beta1TestCase();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestCaseError--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TestCaseError(
    api.GoogleCloudDialogflowCxV3beta1TestCaseError o) {
  buildCounterGoogleCloudDialogflowCxV3beta1TestCaseError++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestCaseError < 3) {
    checkGoogleRpcStatus(o.status as api.GoogleRpcStatus);
    checkGoogleCloudDialogflowCxV3beta1TestCase(
        o.testCase as api.GoogleCloudDialogflowCxV3beta1TestCase);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestCaseError--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ConversationTurn>
    buildUnnamed5873() {
  var o = <api.GoogleCloudDialogflowCxV3beta1ConversationTurn>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1ConversationTurn());
  o.add(buildGoogleCloudDialogflowCxV3beta1ConversationTurn());
  return o;
}

void checkUnnamed5873(
    core.List<api.GoogleCloudDialogflowCxV3beta1ConversationTurn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ConversationTurn(
      o[0] as api.GoogleCloudDialogflowCxV3beta1ConversationTurn);
  checkGoogleCloudDialogflowCxV3beta1ConversationTurn(
      o[1] as api.GoogleCloudDialogflowCxV3beta1ConversationTurn);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TestCaseResult = 0;
api.GoogleCloudDialogflowCxV3beta1TestCaseResult
    buildGoogleCloudDialogflowCxV3beta1TestCaseResult() {
  var o = api.GoogleCloudDialogflowCxV3beta1TestCaseResult();
  buildCounterGoogleCloudDialogflowCxV3beta1TestCaseResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestCaseResult < 3) {
    o.conversationTurns = buildUnnamed5873();
    o.environment = 'foo';
    o.name = 'foo';
    o.testResult = 'foo';
    o.testTime = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestCaseResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TestCaseResult(
    api.GoogleCloudDialogflowCxV3beta1TestCaseResult o) {
  buildCounterGoogleCloudDialogflowCxV3beta1TestCaseResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestCaseResult < 3) {
    checkUnnamed5873(o.conversationTurns);
    unittest.expect(o.environment, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.testResult, unittest.equals('foo'));
    unittest.expect(o.testTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestCaseResult--;
}

core.List<core.String> buildUnnamed5874() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5874(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TestConfig = 0;
api.GoogleCloudDialogflowCxV3beta1TestConfig
    buildGoogleCloudDialogflowCxV3beta1TestConfig() {
  var o = api.GoogleCloudDialogflowCxV3beta1TestConfig();
  buildCounterGoogleCloudDialogflowCxV3beta1TestConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestConfig < 3) {
    o.flow = 'foo';
    o.trackingParameters = buildUnnamed5874();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TestConfig(
    api.GoogleCloudDialogflowCxV3beta1TestConfig o) {
  buildCounterGoogleCloudDialogflowCxV3beta1TestConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestConfig < 3) {
    unittest.expect(o.flow, unittest.equals('foo'));
    checkUnnamed5874(o.trackingParameters);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestConfig--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TestError = 0;
api.GoogleCloudDialogflowCxV3beta1TestError
    buildGoogleCloudDialogflowCxV3beta1TestError() {
  var o = api.GoogleCloudDialogflowCxV3beta1TestError();
  buildCounterGoogleCloudDialogflowCxV3beta1TestError++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestError < 3) {
    o.status = buildGoogleRpcStatus();
    o.testCase = 'foo';
    o.testTime = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestError--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TestError(
    api.GoogleCloudDialogflowCxV3beta1TestError o) {
  buildCounterGoogleCloudDialogflowCxV3beta1TestError++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestError < 3) {
    checkGoogleRpcStatus(o.status as api.GoogleRpcStatus);
    unittest.expect(o.testCase, unittest.equals('foo'));
    unittest.expect(o.testTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestError--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TestRunDifference = 0;
api.GoogleCloudDialogflowCxV3beta1TestRunDifference
    buildGoogleCloudDialogflowCxV3beta1TestRunDifference() {
  var o = api.GoogleCloudDialogflowCxV3beta1TestRunDifference();
  buildCounterGoogleCloudDialogflowCxV3beta1TestRunDifference++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestRunDifference < 3) {
    o.description = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestRunDifference--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TestRunDifference(
    api.GoogleCloudDialogflowCxV3beta1TestRunDifference o) {
  buildCounterGoogleCloudDialogflowCxV3beta1TestRunDifference++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestRunDifference < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestRunDifference--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TextInput = 0;
api.GoogleCloudDialogflowCxV3beta1TextInput
    buildGoogleCloudDialogflowCxV3beta1TextInput() {
  var o = api.GoogleCloudDialogflowCxV3beta1TextInput();
  buildCounterGoogleCloudDialogflowCxV3beta1TextInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TextInput < 3) {
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TextInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TextInput(
    api.GoogleCloudDialogflowCxV3beta1TextInput o) {
  buildCounterGoogleCloudDialogflowCxV3beta1TextInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TextInput < 3) {
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TextInput--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1TransitionRoute = 0;
api.GoogleCloudDialogflowCxV3beta1TransitionRoute
    buildGoogleCloudDialogflowCxV3beta1TransitionRoute() {
  var o = api.GoogleCloudDialogflowCxV3beta1TransitionRoute();
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRoute++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TransitionRoute < 3) {
    o.condition = 'foo';
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
    api.GoogleCloudDialogflowCxV3beta1TransitionRoute o) {
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRoute++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TransitionRoute < 3) {
    unittest.expect(o.condition, unittest.equals('foo'));
    unittest.expect(o.intent, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.targetFlow, unittest.equals('foo'));
    unittest.expect(o.targetPage, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1Fulfillment(
        o.triggerFulfillment as api.GoogleCloudDialogflowCxV3beta1Fulfillment);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TransitionRoute--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata =
    0;
api.GoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata
    buildGoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata() {
  var o = api.GoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata();
  buildCounterGoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata <
      3) {
    o.genericMetadata =
        buildGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata(
    api.GoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata <
      3) {
    checkGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata(o
            .genericMetadata
        as api.GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage>
    buildUnnamed5875() {
  var o = <api.GoogleCloudDialogflowCxV3beta1ResponseMessage>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  return o;
}

void checkUnnamed5875(
    core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(
      o[0] as api.GoogleCloudDialogflowCxV3beta1ResponseMessage);
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(
      o[1] as api.GoogleCloudDialogflowCxV3beta1ResponseMessage);
}

core.Map<core.String, core.Object> buildUnnamed5876() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5876(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted52 = (o['x']) as core.Map;
  unittest.expect(casted52, unittest.hasLength(3));
  unittest.expect(casted52['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted52['bool'], unittest.equals(true));
  unittest.expect(casted52['string'], unittest.equals('foo'));
  var casted53 = (o['y']) as core.Map;
  unittest.expect(casted53, unittest.hasLength(3));
  unittest.expect(casted53['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted53['bool'], unittest.equals(true));
  unittest.expect(casted53['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequest = 0;
api.GoogleCloudDialogflowCxV3beta1WebhookRequest
    buildGoogleCloudDialogflowCxV3beta1WebhookRequest() {
  var o = api.GoogleCloudDialogflowCxV3beta1WebhookRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequest < 3) {
    o.detectIntentResponseId = 'foo';
    o.fulfillmentInfo =
        buildGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo();
    o.intentInfo =
        buildGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo();
    o.messages = buildUnnamed5875();
    o.pageInfo = buildGoogleCloudDialogflowCxV3beta1PageInfo();
    o.payload = buildUnnamed5876();
    o.sentimentAnalysisResult =
        buildGoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult();
    o.sessionInfo = buildGoogleCloudDialogflowCxV3beta1SessionInfo();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1WebhookRequest(
    api.GoogleCloudDialogflowCxV3beta1WebhookRequest o) {
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequest < 3) {
    unittest.expect(o.detectIntentResponseId, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo(
        o.fulfillmentInfo
            as api.GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo);
    checkGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo(o.intentInfo
        as api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo);
    checkUnnamed5875(o.messages);
    checkGoogleCloudDialogflowCxV3beta1PageInfo(
        o.pageInfo as api.GoogleCloudDialogflowCxV3beta1PageInfo);
    checkUnnamed5876(o.payload);
    checkGoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult(
        o.sentimentAnalysisResult as api
            .GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult);
    checkGoogleCloudDialogflowCxV3beta1SessionInfo(
        o.sessionInfo as api.GoogleCloudDialogflowCxV3beta1SessionInfo);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequest--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo = 0;
api.GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo
    buildGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo() {
  var o = api.GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo();
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo <
      3) {
    o.tag = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo(
    api.GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo o) {
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo <
      3) {
    unittest.expect(o.tag, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo--;
}

core.Map<core.String,
        api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue>
    buildUnnamed5877() {
  var o = <core.String,
      api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue>{};
  o['x'] =
      buildGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue();
  o['y'] =
      buildGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue();
  return o;
}

void checkUnnamed5877(
    core.Map<core.String,
            api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue(
      o['x'] as api
          .GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue);
  checkGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue(
      o['y'] as api
          .GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo = 0;
api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo
    buildGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo() {
  var o = api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo();
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo < 3) {
    o.confidence = 42.0;
    o.displayName = 'foo';
    o.lastMatchedIntent = 'foo';
    o.parameters = buildUnnamed5877();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo(
    api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo o) {
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.lastMatchedIntent, unittest.equals('foo'));
    checkUnnamed5877(o.parameters);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue =
    0;
api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue
    buildGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue() {
  var o = api
      .GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue();
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue <
      3) {
    o.originalValue = 'foo';
    o.resolvedValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue(
    api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue
        o) {
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue <
      3) {
    unittest.expect(o.originalValue, unittest.equals('foo'));
    var casted54 = (o.resolvedValue) as core.Map;
    unittest.expect(casted54, unittest.hasLength(3));
    unittest.expect(casted54['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted54['bool'], unittest.equals(true));
    unittest.expect(casted54['string'], unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult =
    0;
api.GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult
    buildGoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult() {
  var o =
      api.GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult();
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult <
      3) {
    o.magnitude = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult(
    api.GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult o) {
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult <
      3) {
    unittest.expect(o.magnitude, unittest.equals(42.0));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult--;
}

core.Map<core.String, core.Object> buildUnnamed5878() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5878(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted55 = (o['x']) as core.Map;
  unittest.expect(casted55, unittest.hasLength(3));
  unittest.expect(casted55['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted55['bool'], unittest.equals(true));
  unittest.expect(casted55['string'], unittest.equals('foo'));
  var casted56 = (o['y']) as core.Map;
  unittest.expect(casted56, unittest.hasLength(3));
  unittest.expect(casted56['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted56['bool'], unittest.equals(true));
  unittest.expect(casted56['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponse = 0;
api.GoogleCloudDialogflowCxV3beta1WebhookResponse
    buildGoogleCloudDialogflowCxV3beta1WebhookResponse() {
  var o = api.GoogleCloudDialogflowCxV3beta1WebhookResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponse < 3) {
    o.fulfillmentResponse =
        buildGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse();
    o.pageInfo = buildGoogleCloudDialogflowCxV3beta1PageInfo();
    o.payload = buildUnnamed5878();
    o.sessionInfo = buildGoogleCloudDialogflowCxV3beta1SessionInfo();
    o.targetFlow = 'foo';
    o.targetPage = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1WebhookResponse(
    api.GoogleCloudDialogflowCxV3beta1WebhookResponse o) {
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponse < 3) {
    checkGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse(
        o.fulfillmentResponse as api
            .GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse);
    checkGoogleCloudDialogflowCxV3beta1PageInfo(
        o.pageInfo as api.GoogleCloudDialogflowCxV3beta1PageInfo);
    checkUnnamed5878(o.payload);
    checkGoogleCloudDialogflowCxV3beta1SessionInfo(
        o.sessionInfo as api.GoogleCloudDialogflowCxV3beta1SessionInfo);
    unittest.expect(o.targetFlow, unittest.equals('foo'));
    unittest.expect(o.targetPage, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage>
    buildUnnamed5879() {
  var o = <api.GoogleCloudDialogflowCxV3beta1ResponseMessage>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  return o;
}

void checkUnnamed5879(
    core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(
      o[0] as api.GoogleCloudDialogflowCxV3beta1ResponseMessage);
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(
      o[1] as api.GoogleCloudDialogflowCxV3beta1ResponseMessage);
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse =
    0;
api.GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse
    buildGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse() {
  var o =
      api.GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse <
      3) {
    o.mergeBehavior = 'foo';
    o.messages = buildUnnamed5879();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse(
    api.GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse o) {
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse <
      3) {
    unittest.expect(o.mergeBehavior, unittest.equals('foo'));
    checkUnnamed5879(o.messages);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse--;
}

core.int buildCounterGoogleCloudDialogflowV2AnnotatedMessagePart = 0;
api.GoogleCloudDialogflowV2AnnotatedMessagePart
    buildGoogleCloudDialogflowV2AnnotatedMessagePart() {
  var o = api.GoogleCloudDialogflowV2AnnotatedMessagePart();
  buildCounterGoogleCloudDialogflowV2AnnotatedMessagePart++;
  if (buildCounterGoogleCloudDialogflowV2AnnotatedMessagePart < 3) {
    o.entityType = 'foo';
    o.formattedValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2AnnotatedMessagePart--;
  return o;
}

void checkGoogleCloudDialogflowV2AnnotatedMessagePart(
    api.GoogleCloudDialogflowV2AnnotatedMessagePart o) {
  buildCounterGoogleCloudDialogflowV2AnnotatedMessagePart++;
  if (buildCounterGoogleCloudDialogflowV2AnnotatedMessagePart < 3) {
    unittest.expect(o.entityType, unittest.equals('foo'));
    var casted57 = (o.formattedValue) as core.Map;
    unittest.expect(casted57, unittest.hasLength(3));
    unittest.expect(casted57['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted57['bool'], unittest.equals(true));
    unittest.expect(casted57['string'], unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2AnnotatedMessagePart--;
}

core.List<api.GoogleCloudDialogflowV2EntityType> buildUnnamed5880() {
  var o = <api.GoogleCloudDialogflowV2EntityType>[];
  o.add(buildGoogleCloudDialogflowV2EntityType());
  o.add(buildGoogleCloudDialogflowV2EntityType());
  return o;
}

void checkUnnamed5880(core.List<api.GoogleCloudDialogflowV2EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityType(
      o[0] as api.GoogleCloudDialogflowV2EntityType);
  checkGoogleCloudDialogflowV2EntityType(
      o[1] as api.GoogleCloudDialogflowV2EntityType);
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse = 0;
api.GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse
    buildGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse() {
  var o = api.GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse();
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse < 3) {
    o.entityTypes = buildUnnamed5880();
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse(
    api.GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse < 3) {
    checkUnnamed5880(o.entityTypes);
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse--;
}

core.List<api.GoogleCloudDialogflowV2Intent> buildUnnamed5881() {
  var o = <api.GoogleCloudDialogflowV2Intent>[];
  o.add(buildGoogleCloudDialogflowV2Intent());
  o.add(buildGoogleCloudDialogflowV2Intent());
  return o;
}

void checkUnnamed5881(core.List<api.GoogleCloudDialogflowV2Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Intent(o[0] as api.GoogleCloudDialogflowV2Intent);
  checkGoogleCloudDialogflowV2Intent(o[1] as api.GoogleCloudDialogflowV2Intent);
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse = 0;
api.GoogleCloudDialogflowV2BatchUpdateIntentsResponse
    buildGoogleCloudDialogflowV2BatchUpdateIntentsResponse() {
  var o = api.GoogleCloudDialogflowV2BatchUpdateIntentsResponse();
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse < 3) {
    o.intents = buildUnnamed5881();
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchUpdateIntentsResponse(
    api.GoogleCloudDialogflowV2BatchUpdateIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse < 3) {
    checkUnnamed5881(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed5882() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5882(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted58 = (o['x']) as core.Map;
  unittest.expect(casted58, unittest.hasLength(3));
  unittest.expect(casted58['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted58['bool'], unittest.equals(true));
  unittest.expect(casted58['string'], unittest.equals('foo'));
  var casted59 = (o['y']) as core.Map;
  unittest.expect(casted59, unittest.hasLength(3));
  unittest.expect(casted59['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted59['bool'], unittest.equals(true));
  unittest.expect(casted59['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2Context = 0;
api.GoogleCloudDialogflowV2Context buildGoogleCloudDialogflowV2Context() {
  var o = api.GoogleCloudDialogflowV2Context();
  buildCounterGoogleCloudDialogflowV2Context++;
  if (buildCounterGoogleCloudDialogflowV2Context < 3) {
    o.lifespanCount = 42;
    o.name = 'foo';
    o.parameters = buildUnnamed5882();
  }
  buildCounterGoogleCloudDialogflowV2Context--;
  return o;
}

void checkGoogleCloudDialogflowV2Context(api.GoogleCloudDialogflowV2Context o) {
  buildCounterGoogleCloudDialogflowV2Context++;
  if (buildCounterGoogleCloudDialogflowV2Context < 3) {
    unittest.expect(o.lifespanCount, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5882(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2Context--;
}

core.int buildCounterGoogleCloudDialogflowV2ConversationEvent = 0;
api.GoogleCloudDialogflowV2ConversationEvent
    buildGoogleCloudDialogflowV2ConversationEvent() {
  var o = api.GoogleCloudDialogflowV2ConversationEvent();
  buildCounterGoogleCloudDialogflowV2ConversationEvent++;
  if (buildCounterGoogleCloudDialogflowV2ConversationEvent < 3) {
    o.conversation = 'foo';
    o.errorStatus = buildGoogleRpcStatus();
    o.newMessagePayload = buildGoogleCloudDialogflowV2Message();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ConversationEvent--;
  return o;
}

void checkGoogleCloudDialogflowV2ConversationEvent(
    api.GoogleCloudDialogflowV2ConversationEvent o) {
  buildCounterGoogleCloudDialogflowV2ConversationEvent++;
  if (buildCounterGoogleCloudDialogflowV2ConversationEvent < 3) {
    unittest.expect(o.conversation, unittest.equals('foo'));
    checkGoogleRpcStatus(o.errorStatus as api.GoogleRpcStatus);
    checkGoogleCloudDialogflowV2Message(
        o.newMessagePayload as api.GoogleCloudDialogflowV2Message);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ConversationEvent--;
}

core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> buildUnnamed5883() {
  var o = <api.GoogleCloudDialogflowV2EntityTypeEntity>[];
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

void checkUnnamed5883(
    core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityTypeEntity(
      o[0] as api.GoogleCloudDialogflowV2EntityTypeEntity);
  checkGoogleCloudDialogflowV2EntityTypeEntity(
      o[1] as api.GoogleCloudDialogflowV2EntityTypeEntity);
}

core.int buildCounterGoogleCloudDialogflowV2EntityType = 0;
api.GoogleCloudDialogflowV2EntityType buildGoogleCloudDialogflowV2EntityType() {
  var o = api.GoogleCloudDialogflowV2EntityType();
  buildCounterGoogleCloudDialogflowV2EntityType++;
  if (buildCounterGoogleCloudDialogflowV2EntityType < 3) {
    o.autoExpansionMode = 'foo';
    o.displayName = 'foo';
    o.enableFuzzyExtraction = true;
    o.entities = buildUnnamed5883();
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2EntityType--;
  return o;
}

void checkGoogleCloudDialogflowV2EntityType(
    api.GoogleCloudDialogflowV2EntityType o) {
  buildCounterGoogleCloudDialogflowV2EntityType++;
  if (buildCounterGoogleCloudDialogflowV2EntityType < 3) {
    unittest.expect(o.autoExpansionMode, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.enableFuzzyExtraction, unittest.isTrue);
    checkUnnamed5883(o.entities);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2EntityType--;
}

core.List<core.String> buildUnnamed5884() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5884(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2EntityTypeEntity = 0;
api.GoogleCloudDialogflowV2EntityTypeEntity
    buildGoogleCloudDialogflowV2EntityTypeEntity() {
  var o = api.GoogleCloudDialogflowV2EntityTypeEntity();
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeEntity < 3) {
    o.synonyms = buildUnnamed5884();
    o.value = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity--;
  return o;
}

void checkGoogleCloudDialogflowV2EntityTypeEntity(
    api.GoogleCloudDialogflowV2EntityTypeEntity o) {
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeEntity < 3) {
    checkUnnamed5884(o.synonyms);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity--;
}

core.Map<core.String, core.Object> buildUnnamed5885() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5885(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted60 = (o['x']) as core.Map;
  unittest.expect(casted60, unittest.hasLength(3));
  unittest.expect(casted60['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted60['bool'], unittest.equals(true));
  unittest.expect(casted60['string'], unittest.equals('foo'));
  var casted61 = (o['y']) as core.Map;
  unittest.expect(casted61, unittest.hasLength(3));
  unittest.expect(casted61['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted61['bool'], unittest.equals(true));
  unittest.expect(casted61['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2EventInput = 0;
api.GoogleCloudDialogflowV2EventInput buildGoogleCloudDialogflowV2EventInput() {
  var o = api.GoogleCloudDialogflowV2EventInput();
  buildCounterGoogleCloudDialogflowV2EventInput++;
  if (buildCounterGoogleCloudDialogflowV2EventInput < 3) {
    o.languageCode = 'foo';
    o.name = 'foo';
    o.parameters = buildUnnamed5885();
  }
  buildCounterGoogleCloudDialogflowV2EventInput--;
  return o;
}

void checkGoogleCloudDialogflowV2EventInput(
    api.GoogleCloudDialogflowV2EventInput o) {
  buildCounterGoogleCloudDialogflowV2EventInput++;
  if (buildCounterGoogleCloudDialogflowV2EventInput < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5885(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2EventInput--;
}

core.int buildCounterGoogleCloudDialogflowV2ExportAgentResponse = 0;
api.GoogleCloudDialogflowV2ExportAgentResponse
    buildGoogleCloudDialogflowV2ExportAgentResponse() {
  var o = api.GoogleCloudDialogflowV2ExportAgentResponse();
  buildCounterGoogleCloudDialogflowV2ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV2ExportAgentResponse < 3) {
    o.agentContent = 'foo';
    o.agentUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ExportAgentResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ExportAgentResponse(
    api.GoogleCloudDialogflowV2ExportAgentResponse o) {
  buildCounterGoogleCloudDialogflowV2ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV2ExportAgentResponse < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ExportAgentResponse--;
}

core.List<core.String> buildUnnamed5886() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5886(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5887() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5887(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2IntentFollowupIntentInfo>
    buildUnnamed5888() {
  var o = <api.GoogleCloudDialogflowV2IntentFollowupIntentInfo>[];
  o.add(buildGoogleCloudDialogflowV2IntentFollowupIntentInfo());
  o.add(buildGoogleCloudDialogflowV2IntentFollowupIntentInfo());
  return o;
}

void checkUnnamed5888(
    core.List<api.GoogleCloudDialogflowV2IntentFollowupIntentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(
      o[0] as api.GoogleCloudDialogflowV2IntentFollowupIntentInfo);
  checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(
      o[1] as api.GoogleCloudDialogflowV2IntentFollowupIntentInfo);
}

core.List<core.String> buildUnnamed5889() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5889(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2IntentMessage> buildUnnamed5890() {
  var o = <api.GoogleCloudDialogflowV2IntentMessage>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

void checkUnnamed5890(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(
      o[0] as api.GoogleCloudDialogflowV2IntentMessage);
  checkGoogleCloudDialogflowV2IntentMessage(
      o[1] as api.GoogleCloudDialogflowV2IntentMessage);
}

core.List<api.GoogleCloudDialogflowV2Context> buildUnnamed5891() {
  var o = <api.GoogleCloudDialogflowV2Context>[];
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

void checkUnnamed5891(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(
      o[0] as api.GoogleCloudDialogflowV2Context);
  checkGoogleCloudDialogflowV2Context(
      o[1] as api.GoogleCloudDialogflowV2Context);
}

core.List<api.GoogleCloudDialogflowV2IntentParameter> buildUnnamed5892() {
  var o = <api.GoogleCloudDialogflowV2IntentParameter>[];
  o.add(buildGoogleCloudDialogflowV2IntentParameter());
  o.add(buildGoogleCloudDialogflowV2IntentParameter());
  return o;
}

void checkUnnamed5892(core.List<api.GoogleCloudDialogflowV2IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentParameter(
      o[0] as api.GoogleCloudDialogflowV2IntentParameter);
  checkGoogleCloudDialogflowV2IntentParameter(
      o[1] as api.GoogleCloudDialogflowV2IntentParameter);
}

core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrase> buildUnnamed5893() {
  var o = <api.GoogleCloudDialogflowV2IntentTrainingPhrase>[];
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrase());
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrase());
  return o;
}

void checkUnnamed5893(
    core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentTrainingPhrase(
      o[0] as api.GoogleCloudDialogflowV2IntentTrainingPhrase);
  checkGoogleCloudDialogflowV2IntentTrainingPhrase(
      o[1] as api.GoogleCloudDialogflowV2IntentTrainingPhrase);
}

core.int buildCounterGoogleCloudDialogflowV2Intent = 0;
api.GoogleCloudDialogflowV2Intent buildGoogleCloudDialogflowV2Intent() {
  var o = api.GoogleCloudDialogflowV2Intent();
  buildCounterGoogleCloudDialogflowV2Intent++;
  if (buildCounterGoogleCloudDialogflowV2Intent < 3) {
    o.action = 'foo';
    o.defaultResponsePlatforms = buildUnnamed5886();
    o.displayName = 'foo';
    o.events = buildUnnamed5887();
    o.followupIntentInfo = buildUnnamed5888();
    o.inputContextNames = buildUnnamed5889();
    o.isFallback = true;
    o.messages = buildUnnamed5890();
    o.mlDisabled = true;
    o.name = 'foo';
    o.outputContexts = buildUnnamed5891();
    o.parameters = buildUnnamed5892();
    o.parentFollowupIntentName = 'foo';
    o.priority = 42;
    o.resetContexts = true;
    o.rootFollowupIntentName = 'foo';
    o.trainingPhrases = buildUnnamed5893();
    o.webhookState = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2Intent--;
  return o;
}

void checkGoogleCloudDialogflowV2Intent(api.GoogleCloudDialogflowV2Intent o) {
  buildCounterGoogleCloudDialogflowV2Intent++;
  if (buildCounterGoogleCloudDialogflowV2Intent < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed5886(o.defaultResponsePlatforms);
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed5887(o.events);
    checkUnnamed5888(o.followupIntentInfo);
    checkUnnamed5889(o.inputContextNames);
    unittest.expect(o.isFallback, unittest.isTrue);
    checkUnnamed5890(o.messages);
    unittest.expect(o.mlDisabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5891(o.outputContexts);
    checkUnnamed5892(o.parameters);
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    unittest.expect(o.resetContexts, unittest.isTrue);
    unittest.expect(o.rootFollowupIntentName, unittest.equals('foo'));
    checkUnnamed5893(o.trainingPhrases);
    unittest.expect(o.webhookState, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2Intent--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo = 0;
api.GoogleCloudDialogflowV2IntentFollowupIntentInfo
    buildGoogleCloudDialogflowV2IntentFollowupIntentInfo() {
  var o = api.GoogleCloudDialogflowV2IntentFollowupIntentInfo();
  buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo++;
  if (buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo < 3) {
    o.followupIntentName = 'foo';
    o.parentFollowupIntentName = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(
    api.GoogleCloudDialogflowV2IntentFollowupIntentInfo o) {
  buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo++;
  if (buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo < 3) {
    unittest.expect(o.followupIntentName, unittest.equals('foo'));
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo--;
}

core.Map<core.String, core.Object> buildUnnamed5894() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5894(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted62 = (o['x']) as core.Map;
  unittest.expect(casted62, unittest.hasLength(3));
  unittest.expect(casted62['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted62['bool'], unittest.equals(true));
  unittest.expect(casted62['string'], unittest.equals('foo'));
  var casted63 = (o['y']) as core.Map;
  unittest.expect(casted63, unittest.hasLength(3));
  unittest.expect(casted63['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted63['bool'], unittest.equals(true));
  unittest.expect(casted63['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessage = 0;
api.GoogleCloudDialogflowV2IntentMessage
    buildGoogleCloudDialogflowV2IntentMessage() {
  var o = api.GoogleCloudDialogflowV2IntentMessage();
  buildCounterGoogleCloudDialogflowV2IntentMessage++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessage < 3) {
    o.basicCard = buildGoogleCloudDialogflowV2IntentMessageBasicCard();
    o.browseCarouselCard =
        buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard();
    o.card = buildGoogleCloudDialogflowV2IntentMessageCard();
    o.carouselSelect =
        buildGoogleCloudDialogflowV2IntentMessageCarouselSelect();
    o.image = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.linkOutSuggestion =
        buildGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion();
    o.listSelect = buildGoogleCloudDialogflowV2IntentMessageListSelect();
    o.mediaContent = buildGoogleCloudDialogflowV2IntentMessageMediaContent();
    o.payload = buildUnnamed5894();
    o.platform = 'foo';
    o.quickReplies = buildGoogleCloudDialogflowV2IntentMessageQuickReplies();
    o.simpleResponses =
        buildGoogleCloudDialogflowV2IntentMessageSimpleResponses();
    o.suggestions = buildGoogleCloudDialogflowV2IntentMessageSuggestions();
    o.tableCard = buildGoogleCloudDialogflowV2IntentMessageTableCard();
    o.text = buildGoogleCloudDialogflowV2IntentMessageText();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessage--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessage(
    api.GoogleCloudDialogflowV2IntentMessage o) {
  buildCounterGoogleCloudDialogflowV2IntentMessage++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessage < 3) {
    checkGoogleCloudDialogflowV2IntentMessageBasicCard(
        o.basicCard as api.GoogleCloudDialogflowV2IntentMessageBasicCard);
    checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard(
        o.browseCarouselCard
            as api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard);
    checkGoogleCloudDialogflowV2IntentMessageCard(
        o.card as api.GoogleCloudDialogflowV2IntentMessageCard);
    checkGoogleCloudDialogflowV2IntentMessageCarouselSelect(o.carouselSelect
        as api.GoogleCloudDialogflowV2IntentMessageCarouselSelect);
    checkGoogleCloudDialogflowV2IntentMessageImage(
        o.image as api.GoogleCloudDialogflowV2IntentMessageImage);
    checkGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion(
        o.linkOutSuggestion
            as api.GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion);
    checkGoogleCloudDialogflowV2IntentMessageListSelect(
        o.listSelect as api.GoogleCloudDialogflowV2IntentMessageListSelect);
    checkGoogleCloudDialogflowV2IntentMessageMediaContent(
        o.mediaContent as api.GoogleCloudDialogflowV2IntentMessageMediaContent);
    checkUnnamed5894(o.payload);
    unittest.expect(o.platform, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2IntentMessageQuickReplies(
        o.quickReplies as api.GoogleCloudDialogflowV2IntentMessageQuickReplies);
    checkGoogleCloudDialogflowV2IntentMessageSimpleResponses(o.simpleResponses
        as api.GoogleCloudDialogflowV2IntentMessageSimpleResponses);
    checkGoogleCloudDialogflowV2IntentMessageSuggestions(
        o.suggestions as api.GoogleCloudDialogflowV2IntentMessageSuggestions);
    checkGoogleCloudDialogflowV2IntentMessageTableCard(
        o.tableCard as api.GoogleCloudDialogflowV2IntentMessageTableCard);
    checkGoogleCloudDialogflowV2IntentMessageText(
        o.text as api.GoogleCloudDialogflowV2IntentMessageText);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessage--;
}

core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton>
    buildUnnamed5895() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageBasicCardButton>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  return o;
}

void checkUnnamed5895(
    core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(
      o[0] as api.GoogleCloudDialogflowV2IntentMessageBasicCardButton);
  checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(
      o[1] as api.GoogleCloudDialogflowV2IntentMessageBasicCardButton);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard = 0;
api.GoogleCloudDialogflowV2IntentMessageBasicCard
    buildGoogleCloudDialogflowV2IntentMessageBasicCard() {
  var o = api.GoogleCloudDialogflowV2IntentMessageBasicCard();
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard < 3) {
    o.buttons = buildUnnamed5895();
    o.formattedText = 'foo';
    o.image = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.subtitle = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageBasicCard(
    api.GoogleCloudDialogflowV2IntentMessageBasicCard o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard < 3) {
    checkUnnamed5895(o.buttons);
    unittest.expect(o.formattedText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2IntentMessageImage(
        o.image as api.GoogleCloudDialogflowV2IntentMessageImage);
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton = 0;
api.GoogleCloudDialogflowV2IntentMessageBasicCardButton
    buildGoogleCloudDialogflowV2IntentMessageBasicCardButton() {
  var o = api.GoogleCloudDialogflowV2IntentMessageBasicCardButton();
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton < 3) {
    o.openUriAction =
        buildGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction();
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(
    api.GoogleCloudDialogflowV2IntentMessageBasicCardButton o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton < 3) {
    checkGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction(
        o.openUriAction as api
            .GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton--;
}

core.int
    buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction =
    0;
api.GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction
    buildGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction() {
  var o =
      api.GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction();
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction <
      3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction(
    api.GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction <
      3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction--;
}

core.List<
        api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem>
    buildUnnamed5896() {
  var o = <
      api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem>[];
  o.add(
      buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem());
  o.add(
      buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem());
  return o;
}

void checkUnnamed5896(
    core.List<
            api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
      o[0] as api
          .GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem);
  checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
      o[1] as api
          .GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard = 0;
api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard
    buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard() {
  var o = api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard();
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard < 3) {
    o.imageDisplayOptions = 'foo';
    o.items = buildUnnamed5896();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard(
    api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard < 3) {
    unittest.expect(o.imageDisplayOptions, unittest.equals('foo'));
    checkUnnamed5896(o.items);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard--;
}

core.int
    buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem =
    0;
api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem
    buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem() {
  var o = api
      .GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem();
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem <
      3) {
    o.description = 'foo';
    o.footer = 'foo';
    o.image = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.openUriAction =
        buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction();
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
    api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem
        o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem <
      3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.footer, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2IntentMessageImage(
        o.image as api.GoogleCloudDialogflowV2IntentMessageImage);
    checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction(
        o.openUriAction as api
            .GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem--;
}

core.int
    buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction =
    0;
api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
    buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction() {
  var o = api
      .GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction();
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction <
      3) {
    o.url = 'foo';
    o.urlTypeHint = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction(
    api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
        o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction <
      3) {
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.urlTypeHint, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction--;
}

core.List<api.GoogleCloudDialogflowV2IntentMessageCardButton>
    buildUnnamed5897() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageCardButton>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageCardButton());
  o.add(buildGoogleCloudDialogflowV2IntentMessageCardButton());
  return o;
}

void checkUnnamed5897(
    core.List<api.GoogleCloudDialogflowV2IntentMessageCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageCardButton(
      o[0] as api.GoogleCloudDialogflowV2IntentMessageCardButton);
  checkGoogleCloudDialogflowV2IntentMessageCardButton(
      o[1] as api.GoogleCloudDialogflowV2IntentMessageCardButton);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageCard = 0;
api.GoogleCloudDialogflowV2IntentMessageCard
    buildGoogleCloudDialogflowV2IntentMessageCard() {
  var o = api.GoogleCloudDialogflowV2IntentMessageCard();
  buildCounterGoogleCloudDialogflowV2IntentMessageCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCard < 3) {
    o.buttons = buildUnnamed5897();
    o.imageUri = 'foo';
    o.subtitle = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCard--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageCard(
    api.GoogleCloudDialogflowV2IntentMessageCard o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCard < 3) {
    checkUnnamed5897(o.buttons);
    unittest.expect(o.imageUri, unittest.equals('foo'));
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCard--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageCardButton = 0;
api.GoogleCloudDialogflowV2IntentMessageCardButton
    buildGoogleCloudDialogflowV2IntentMessageCardButton() {
  var o = api.GoogleCloudDialogflowV2IntentMessageCardButton();
  buildCounterGoogleCloudDialogflowV2IntentMessageCardButton++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCardButton < 3) {
    o.postback = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCardButton--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageCardButton(
    api.GoogleCloudDialogflowV2IntentMessageCardButton o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageCardButton++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCardButton < 3) {
    unittest.expect(o.postback, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCardButton--;
}

core.List<api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem>
    buildUnnamed5898() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem());
  o.add(buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem());
  return o;
}

void checkUnnamed5898(
    core.List<api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageCarouselSelectItem(
      o[0] as api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem);
  checkGoogleCloudDialogflowV2IntentMessageCarouselSelectItem(
      o[1] as api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect = 0;
api.GoogleCloudDialogflowV2IntentMessageCarouselSelect
    buildGoogleCloudDialogflowV2IntentMessageCarouselSelect() {
  var o = api.GoogleCloudDialogflowV2IntentMessageCarouselSelect();
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect < 3) {
    o.items = buildUnnamed5898();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageCarouselSelect(
    api.GoogleCloudDialogflowV2IntentMessageCarouselSelect o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect < 3) {
    checkUnnamed5898(o.items);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem = 0;
api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
    buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem() {
  var o = api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem();
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem < 3) {
    o.description = 'foo';
    o.image = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.info = buildGoogleCloudDialogflowV2IntentMessageSelectItemInfo();
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageCarouselSelectItem(
    api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2IntentMessageImage(
        o.image as api.GoogleCloudDialogflowV2IntentMessageImage);
    checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(
        o.info as api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageColumnProperties = 0;
api.GoogleCloudDialogflowV2IntentMessageColumnProperties
    buildGoogleCloudDialogflowV2IntentMessageColumnProperties() {
  var o = api.GoogleCloudDialogflowV2IntentMessageColumnProperties();
  buildCounterGoogleCloudDialogflowV2IntentMessageColumnProperties++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageColumnProperties < 3) {
    o.header = 'foo';
    o.horizontalAlignment = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageColumnProperties--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageColumnProperties(
    api.GoogleCloudDialogflowV2IntentMessageColumnProperties o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageColumnProperties++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageColumnProperties < 3) {
    unittest.expect(o.header, unittest.equals('foo'));
    unittest.expect(o.horizontalAlignment, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageColumnProperties--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageImage = 0;
api.GoogleCloudDialogflowV2IntentMessageImage
    buildGoogleCloudDialogflowV2IntentMessageImage() {
  var o = api.GoogleCloudDialogflowV2IntentMessageImage();
  buildCounterGoogleCloudDialogflowV2IntentMessageImage++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageImage < 3) {
    o.accessibilityText = 'foo';
    o.imageUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageImage--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageImage(
    api.GoogleCloudDialogflowV2IntentMessageImage o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageImage++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageImage < 3) {
    unittest.expect(o.accessibilityText, unittest.equals('foo'));
    unittest.expect(o.imageUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageImage--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion = 0;
api.GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion
    buildGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion() {
  var o = api.GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion();
  buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion < 3) {
    o.destinationName = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion(
    api.GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion < 3) {
    unittest.expect(o.destinationName, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion--;
}

core.List<api.GoogleCloudDialogflowV2IntentMessageListSelectItem>
    buildUnnamed5899() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageListSelectItem>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageListSelectItem());
  o.add(buildGoogleCloudDialogflowV2IntentMessageListSelectItem());
  return o;
}

void checkUnnamed5899(
    core.List<api.GoogleCloudDialogflowV2IntentMessageListSelectItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageListSelectItem(
      o[0] as api.GoogleCloudDialogflowV2IntentMessageListSelectItem);
  checkGoogleCloudDialogflowV2IntentMessageListSelectItem(
      o[1] as api.GoogleCloudDialogflowV2IntentMessageListSelectItem);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageListSelect = 0;
api.GoogleCloudDialogflowV2IntentMessageListSelect
    buildGoogleCloudDialogflowV2IntentMessageListSelect() {
  var o = api.GoogleCloudDialogflowV2IntentMessageListSelect();
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageListSelect < 3) {
    o.items = buildUnnamed5899();
    o.subtitle = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelect--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageListSelect(
    api.GoogleCloudDialogflowV2IntentMessageListSelect o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageListSelect < 3) {
    checkUnnamed5899(o.items);
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelect--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem = 0;
api.GoogleCloudDialogflowV2IntentMessageListSelectItem
    buildGoogleCloudDialogflowV2IntentMessageListSelectItem() {
  var o = api.GoogleCloudDialogflowV2IntentMessageListSelectItem();
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem < 3) {
    o.description = 'foo';
    o.image = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.info = buildGoogleCloudDialogflowV2IntentMessageSelectItemInfo();
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageListSelectItem(
    api.GoogleCloudDialogflowV2IntentMessageListSelectItem o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2IntentMessageImage(
        o.image as api.GoogleCloudDialogflowV2IntentMessageImage);
    checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(
        o.info as api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem--;
}

core.List<
        api.GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject>
    buildUnnamed5900() {
  var o = <
      api.GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject>[];
  o.add(
      buildGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject());
  o.add(
      buildGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject());
  return o;
}

void checkUnnamed5900(
    core.List<
            api.GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject(o[0]
      as api
          .GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject);
  checkGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject(o[1]
      as api
          .GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent = 0;
api.GoogleCloudDialogflowV2IntentMessageMediaContent
    buildGoogleCloudDialogflowV2IntentMessageMediaContent() {
  var o = api.GoogleCloudDialogflowV2IntentMessageMediaContent();
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent < 3) {
    o.mediaObjects = buildUnnamed5900();
    o.mediaType = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageMediaContent(
    api.GoogleCloudDialogflowV2IntentMessageMediaContent o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent < 3) {
    checkUnnamed5900(o.mediaObjects);
    unittest.expect(o.mediaType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent--;
}

core.int
    buildCounterGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject =
    0;
api.GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject
    buildGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject() {
  var o =
      api.GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject();
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject <
      3) {
    o.contentUrl = 'foo';
    o.description = 'foo';
    o.icon = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.largeImage = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject(
    api.GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject <
      3) {
    unittest.expect(o.contentUrl, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2IntentMessageImage(
        o.icon as api.GoogleCloudDialogflowV2IntentMessageImage);
    checkGoogleCloudDialogflowV2IntentMessageImage(
        o.largeImage as api.GoogleCloudDialogflowV2IntentMessageImage);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject--;
}

core.List<core.String> buildUnnamed5901() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5901(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies = 0;
api.GoogleCloudDialogflowV2IntentMessageQuickReplies
    buildGoogleCloudDialogflowV2IntentMessageQuickReplies() {
  var o = api.GoogleCloudDialogflowV2IntentMessageQuickReplies();
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies < 3) {
    o.quickReplies = buildUnnamed5901();
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageQuickReplies(
    api.GoogleCloudDialogflowV2IntentMessageQuickReplies o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies < 3) {
    checkUnnamed5901(o.quickReplies);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies--;
}

core.List<core.String> buildUnnamed5902() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5902(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo = 0;
api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo
    buildGoogleCloudDialogflowV2IntentMessageSelectItemInfo() {
  var o = api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo();
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo < 3) {
    o.key = 'foo';
    o.synonyms = buildUnnamed5902();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(
    api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed5902(o.synonyms);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse = 0;
api.GoogleCloudDialogflowV2IntentMessageSimpleResponse
    buildGoogleCloudDialogflowV2IntentMessageSimpleResponse() {
  var o = api.GoogleCloudDialogflowV2IntentMessageSimpleResponse();
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse < 3) {
    o.displayText = 'foo';
    o.ssml = 'foo';
    o.textToSpeech = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageSimpleResponse(
    api.GoogleCloudDialogflowV2IntentMessageSimpleResponse o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse < 3) {
    unittest.expect(o.displayText, unittest.equals('foo'));
    unittest.expect(o.ssml, unittest.equals('foo'));
    unittest.expect(o.textToSpeech, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse--;
}

core.List<api.GoogleCloudDialogflowV2IntentMessageSimpleResponse>
    buildUnnamed5903() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageSimpleResponse>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageSimpleResponse());
  o.add(buildGoogleCloudDialogflowV2IntentMessageSimpleResponse());
  return o;
}

void checkUnnamed5903(
    core.List<api.GoogleCloudDialogflowV2IntentMessageSimpleResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageSimpleResponse(
      o[0] as api.GoogleCloudDialogflowV2IntentMessageSimpleResponse);
  checkGoogleCloudDialogflowV2IntentMessageSimpleResponse(
      o[1] as api.GoogleCloudDialogflowV2IntentMessageSimpleResponse);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses = 0;
api.GoogleCloudDialogflowV2IntentMessageSimpleResponses
    buildGoogleCloudDialogflowV2IntentMessageSimpleResponses() {
  var o = api.GoogleCloudDialogflowV2IntentMessageSimpleResponses();
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses < 3) {
    o.simpleResponses = buildUnnamed5903();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageSimpleResponses(
    api.GoogleCloudDialogflowV2IntentMessageSimpleResponses o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses < 3) {
    checkUnnamed5903(o.simpleResponses);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion = 0;
api.GoogleCloudDialogflowV2IntentMessageSuggestion
    buildGoogleCloudDialogflowV2IntentMessageSuggestion() {
  var o = api.GoogleCloudDialogflowV2IntentMessageSuggestion();
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion < 3) {
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageSuggestion(
    api.GoogleCloudDialogflowV2IntentMessageSuggestion o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion < 3) {
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion--;
}

core.List<api.GoogleCloudDialogflowV2IntentMessageSuggestion>
    buildUnnamed5904() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageSuggestion>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageSuggestion());
  o.add(buildGoogleCloudDialogflowV2IntentMessageSuggestion());
  return o;
}

void checkUnnamed5904(
    core.List<api.GoogleCloudDialogflowV2IntentMessageSuggestion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageSuggestion(
      o[0] as api.GoogleCloudDialogflowV2IntentMessageSuggestion);
  checkGoogleCloudDialogflowV2IntentMessageSuggestion(
      o[1] as api.GoogleCloudDialogflowV2IntentMessageSuggestion);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions = 0;
api.GoogleCloudDialogflowV2IntentMessageSuggestions
    buildGoogleCloudDialogflowV2IntentMessageSuggestions() {
  var o = api.GoogleCloudDialogflowV2IntentMessageSuggestions();
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions < 3) {
    o.suggestions = buildUnnamed5904();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageSuggestions(
    api.GoogleCloudDialogflowV2IntentMessageSuggestions o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions < 3) {
    checkUnnamed5904(o.suggestions);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions--;
}

core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton>
    buildUnnamed5905() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageBasicCardButton>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  return o;
}

void checkUnnamed5905(
    core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(
      o[0] as api.GoogleCloudDialogflowV2IntentMessageBasicCardButton);
  checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(
      o[1] as api.GoogleCloudDialogflowV2IntentMessageBasicCardButton);
}

core.List<api.GoogleCloudDialogflowV2IntentMessageColumnProperties>
    buildUnnamed5906() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageColumnProperties>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageColumnProperties());
  o.add(buildGoogleCloudDialogflowV2IntentMessageColumnProperties());
  return o;
}

void checkUnnamed5906(
    core.List<api.GoogleCloudDialogflowV2IntentMessageColumnProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageColumnProperties(
      o[0] as api.GoogleCloudDialogflowV2IntentMessageColumnProperties);
  checkGoogleCloudDialogflowV2IntentMessageColumnProperties(
      o[1] as api.GoogleCloudDialogflowV2IntentMessageColumnProperties);
}

core.List<api.GoogleCloudDialogflowV2IntentMessageTableCardRow>
    buildUnnamed5907() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageTableCardRow>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageTableCardRow());
  o.add(buildGoogleCloudDialogflowV2IntentMessageTableCardRow());
  return o;
}

void checkUnnamed5907(
    core.List<api.GoogleCloudDialogflowV2IntentMessageTableCardRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageTableCardRow(
      o[0] as api.GoogleCloudDialogflowV2IntentMessageTableCardRow);
  checkGoogleCloudDialogflowV2IntentMessageTableCardRow(
      o[1] as api.GoogleCloudDialogflowV2IntentMessageTableCardRow);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageTableCard = 0;
api.GoogleCloudDialogflowV2IntentMessageTableCard
    buildGoogleCloudDialogflowV2IntentMessageTableCard() {
  var o = api.GoogleCloudDialogflowV2IntentMessageTableCard();
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageTableCard < 3) {
    o.buttons = buildUnnamed5905();
    o.columnProperties = buildUnnamed5906();
    o.image = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.rows = buildUnnamed5907();
    o.subtitle = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCard--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageTableCard(
    api.GoogleCloudDialogflowV2IntentMessageTableCard o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageTableCard < 3) {
    checkUnnamed5905(o.buttons);
    checkUnnamed5906(o.columnProperties);
    checkGoogleCloudDialogflowV2IntentMessageImage(
        o.image as api.GoogleCloudDialogflowV2IntentMessageImage);
    checkUnnamed5907(o.rows);
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCard--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageTableCardCell = 0;
api.GoogleCloudDialogflowV2IntentMessageTableCardCell
    buildGoogleCloudDialogflowV2IntentMessageTableCardCell() {
  var o = api.GoogleCloudDialogflowV2IntentMessageTableCardCell();
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardCell++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageTableCardCell < 3) {
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardCell--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageTableCardCell(
    api.GoogleCloudDialogflowV2IntentMessageTableCardCell o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardCell++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageTableCardCell < 3) {
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardCell--;
}

core.List<api.GoogleCloudDialogflowV2IntentMessageTableCardCell>
    buildUnnamed5908() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageTableCardCell>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageTableCardCell());
  o.add(buildGoogleCloudDialogflowV2IntentMessageTableCardCell());
  return o;
}

void checkUnnamed5908(
    core.List<api.GoogleCloudDialogflowV2IntentMessageTableCardCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageTableCardCell(
      o[0] as api.GoogleCloudDialogflowV2IntentMessageTableCardCell);
  checkGoogleCloudDialogflowV2IntentMessageTableCardCell(
      o[1] as api.GoogleCloudDialogflowV2IntentMessageTableCardCell);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow = 0;
api.GoogleCloudDialogflowV2IntentMessageTableCardRow
    buildGoogleCloudDialogflowV2IntentMessageTableCardRow() {
  var o = api.GoogleCloudDialogflowV2IntentMessageTableCardRow();
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow < 3) {
    o.cells = buildUnnamed5908();
    o.dividerAfter = true;
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageTableCardRow(
    api.GoogleCloudDialogflowV2IntentMessageTableCardRow o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow < 3) {
    checkUnnamed5908(o.cells);
    unittest.expect(o.dividerAfter, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow--;
}

core.List<core.String> buildUnnamed5909() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5909(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageText = 0;
api.GoogleCloudDialogflowV2IntentMessageText
    buildGoogleCloudDialogflowV2IntentMessageText() {
  var o = api.GoogleCloudDialogflowV2IntentMessageText();
  buildCounterGoogleCloudDialogflowV2IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageText < 3) {
    o.text = buildUnnamed5909();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageText--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageText(
    api.GoogleCloudDialogflowV2IntentMessageText o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageText < 3) {
    checkUnnamed5909(o.text);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageText--;
}

core.List<core.String> buildUnnamed5910() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5910(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2IntentParameter = 0;
api.GoogleCloudDialogflowV2IntentParameter
    buildGoogleCloudDialogflowV2IntentParameter() {
  var o = api.GoogleCloudDialogflowV2IntentParameter();
  buildCounterGoogleCloudDialogflowV2IntentParameter++;
  if (buildCounterGoogleCloudDialogflowV2IntentParameter < 3) {
    o.defaultValue = 'foo';
    o.displayName = 'foo';
    o.entityTypeDisplayName = 'foo';
    o.isList = true;
    o.mandatory = true;
    o.name = 'foo';
    o.prompts = buildUnnamed5910();
    o.value = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentParameter--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentParameter(
    api.GoogleCloudDialogflowV2IntentParameter o) {
  buildCounterGoogleCloudDialogflowV2IntentParameter++;
  if (buildCounterGoogleCloudDialogflowV2IntentParameter < 3) {
    unittest.expect(o.defaultValue, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityTypeDisplayName, unittest.equals('foo'));
    unittest.expect(o.isList, unittest.isTrue);
    unittest.expect(o.mandatory, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5910(o.prompts);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentParameter--;
}

core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrasePart>
    buildUnnamed5911() {
  var o = <api.GoogleCloudDialogflowV2IntentTrainingPhrasePart>[];
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrasePart());
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrasePart());
  return o;
}

void checkUnnamed5911(
    core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrasePart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentTrainingPhrasePart(
      o[0] as api.GoogleCloudDialogflowV2IntentTrainingPhrasePart);
  checkGoogleCloudDialogflowV2IntentTrainingPhrasePart(
      o[1] as api.GoogleCloudDialogflowV2IntentTrainingPhrasePart);
}

core.int buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase = 0;
api.GoogleCloudDialogflowV2IntentTrainingPhrase
    buildGoogleCloudDialogflowV2IntentTrainingPhrase() {
  var o = api.GoogleCloudDialogflowV2IntentTrainingPhrase();
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase < 3) {
    o.name = 'foo';
    o.parts = buildUnnamed5911();
    o.timesAddedCount = 42;
    o.type = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentTrainingPhrase(
    api.GoogleCloudDialogflowV2IntentTrainingPhrase o) {
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5911(o.parts);
    unittest.expect(o.timesAddedCount, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart = 0;
api.GoogleCloudDialogflowV2IntentTrainingPhrasePart
    buildGoogleCloudDialogflowV2IntentTrainingPhrasePart() {
  var o = api.GoogleCloudDialogflowV2IntentTrainingPhrasePart();
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart++;
  if (buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart < 3) {
    o.alias = 'foo';
    o.entityType = 'foo';
    o.text = 'foo';
    o.userDefined = true;
  }
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentTrainingPhrasePart(
    api.GoogleCloudDialogflowV2IntentTrainingPhrasePart o) {
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart++;
  if (buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart < 3) {
    unittest.expect(o.alias, unittest.equals('foo'));
    unittest.expect(o.entityType, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
    unittest.expect(o.userDefined, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart--;
}

core.int buildCounterGoogleCloudDialogflowV2Message = 0;
api.GoogleCloudDialogflowV2Message buildGoogleCloudDialogflowV2Message() {
  var o = api.GoogleCloudDialogflowV2Message();
  buildCounterGoogleCloudDialogflowV2Message++;
  if (buildCounterGoogleCloudDialogflowV2Message < 3) {
    o.content = 'foo';
    o.createTime = 'foo';
    o.languageCode = 'foo';
    o.messageAnnotation = buildGoogleCloudDialogflowV2MessageAnnotation();
    o.name = 'foo';
    o.participant = 'foo';
    o.participantRole = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2Message--;
  return o;
}

void checkGoogleCloudDialogflowV2Message(api.GoogleCloudDialogflowV2Message o) {
  buildCounterGoogleCloudDialogflowV2Message++;
  if (buildCounterGoogleCloudDialogflowV2Message < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2MessageAnnotation(
        o.messageAnnotation as api.GoogleCloudDialogflowV2MessageAnnotation);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.participant, unittest.equals('foo'));
    unittest.expect(o.participantRole, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2Message--;
}

core.List<api.GoogleCloudDialogflowV2AnnotatedMessagePart> buildUnnamed5912() {
  var o = <api.GoogleCloudDialogflowV2AnnotatedMessagePart>[];
  o.add(buildGoogleCloudDialogflowV2AnnotatedMessagePart());
  o.add(buildGoogleCloudDialogflowV2AnnotatedMessagePart());
  return o;
}

void checkUnnamed5912(
    core.List<api.GoogleCloudDialogflowV2AnnotatedMessagePart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2AnnotatedMessagePart(
      o[0] as api.GoogleCloudDialogflowV2AnnotatedMessagePart);
  checkGoogleCloudDialogflowV2AnnotatedMessagePart(
      o[1] as api.GoogleCloudDialogflowV2AnnotatedMessagePart);
}

core.int buildCounterGoogleCloudDialogflowV2MessageAnnotation = 0;
api.GoogleCloudDialogflowV2MessageAnnotation
    buildGoogleCloudDialogflowV2MessageAnnotation() {
  var o = api.GoogleCloudDialogflowV2MessageAnnotation();
  buildCounterGoogleCloudDialogflowV2MessageAnnotation++;
  if (buildCounterGoogleCloudDialogflowV2MessageAnnotation < 3) {
    o.containEntities = true;
    o.parts = buildUnnamed5912();
  }
  buildCounterGoogleCloudDialogflowV2MessageAnnotation--;
  return o;
}

void checkGoogleCloudDialogflowV2MessageAnnotation(
    api.GoogleCloudDialogflowV2MessageAnnotation o) {
  buildCounterGoogleCloudDialogflowV2MessageAnnotation++;
  if (buildCounterGoogleCloudDialogflowV2MessageAnnotation < 3) {
    unittest.expect(o.containEntities, unittest.isTrue);
    checkUnnamed5912(o.parts);
  }
  buildCounterGoogleCloudDialogflowV2MessageAnnotation--;
}

core.Map<core.String, core.Object> buildUnnamed5913() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5913(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted64 = (o['x']) as core.Map;
  unittest.expect(casted64, unittest.hasLength(3));
  unittest.expect(casted64['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted64['bool'], unittest.equals(true));
  unittest.expect(casted64['string'], unittest.equals('foo'));
  var casted65 = (o['y']) as core.Map;
  unittest.expect(casted65, unittest.hasLength(3));
  unittest.expect(casted65['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted65['bool'], unittest.equals(true));
  unittest.expect(casted65['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest = 0;
api.GoogleCloudDialogflowV2OriginalDetectIntentRequest
    buildGoogleCloudDialogflowV2OriginalDetectIntentRequest() {
  var o = api.GoogleCloudDialogflowV2OriginalDetectIntentRequest();
  buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest < 3) {
    o.payload = buildUnnamed5913();
    o.source = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2OriginalDetectIntentRequest(
    api.GoogleCloudDialogflowV2OriginalDetectIntentRequest o) {
  buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest < 3) {
    checkUnnamed5913(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest--;
}

core.Map<core.String, core.Object> buildUnnamed5914() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5914(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted66 = (o['x']) as core.Map;
  unittest.expect(casted66, unittest.hasLength(3));
  unittest.expect(casted66['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted66['bool'], unittest.equals(true));
  unittest.expect(casted66['string'], unittest.equals('foo'));
  var casted67 = (o['y']) as core.Map;
  unittest.expect(casted67, unittest.hasLength(3));
  unittest.expect(casted67['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted67['bool'], unittest.equals(true));
  unittest.expect(casted67['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2IntentMessage> buildUnnamed5915() {
  var o = <api.GoogleCloudDialogflowV2IntentMessage>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

void checkUnnamed5915(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(
      o[0] as api.GoogleCloudDialogflowV2IntentMessage);
  checkGoogleCloudDialogflowV2IntentMessage(
      o[1] as api.GoogleCloudDialogflowV2IntentMessage);
}

core.List<api.GoogleCloudDialogflowV2Context> buildUnnamed5916() {
  var o = <api.GoogleCloudDialogflowV2Context>[];
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

void checkUnnamed5916(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(
      o[0] as api.GoogleCloudDialogflowV2Context);
  checkGoogleCloudDialogflowV2Context(
      o[1] as api.GoogleCloudDialogflowV2Context);
}

core.Map<core.String, core.Object> buildUnnamed5917() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5917(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted68 = (o['x']) as core.Map;
  unittest.expect(casted68, unittest.hasLength(3));
  unittest.expect(casted68['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted68['bool'], unittest.equals(true));
  unittest.expect(casted68['string'], unittest.equals('foo'));
  var casted69 = (o['y']) as core.Map;
  unittest.expect(casted69, unittest.hasLength(3));
  unittest.expect(casted69['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted69['bool'], unittest.equals(true));
  unittest.expect(casted69['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed5918() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5918(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted70 = (o['x']) as core.Map;
  unittest.expect(casted70, unittest.hasLength(3));
  unittest.expect(casted70['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted70['bool'], unittest.equals(true));
  unittest.expect(casted70['string'], unittest.equals('foo'));
  var casted71 = (o['y']) as core.Map;
  unittest.expect(casted71, unittest.hasLength(3));
  unittest.expect(casted71['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted71['bool'], unittest.equals(true));
  unittest.expect(casted71['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2QueryResult = 0;
api.GoogleCloudDialogflowV2QueryResult
    buildGoogleCloudDialogflowV2QueryResult() {
  var o = api.GoogleCloudDialogflowV2QueryResult();
  buildCounterGoogleCloudDialogflowV2QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2QueryResult < 3) {
    o.action = 'foo';
    o.allRequiredParamsPresent = true;
    o.diagnosticInfo = buildUnnamed5914();
    o.fulfillmentMessages = buildUnnamed5915();
    o.fulfillmentText = 'foo';
    o.intent = buildGoogleCloudDialogflowV2Intent();
    o.intentDetectionConfidence = 42.0;
    o.languageCode = 'foo';
    o.outputContexts = buildUnnamed5916();
    o.parameters = buildUnnamed5917();
    o.queryText = 'foo';
    o.sentimentAnalysisResult =
        buildGoogleCloudDialogflowV2SentimentAnalysisResult();
    o.speechRecognitionConfidence = 42.0;
    o.webhookPayload = buildUnnamed5918();
    o.webhookSource = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2QueryResult--;
  return o;
}

void checkGoogleCloudDialogflowV2QueryResult(
    api.GoogleCloudDialogflowV2QueryResult o) {
  buildCounterGoogleCloudDialogflowV2QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2QueryResult < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.allRequiredParamsPresent, unittest.isTrue);
    checkUnnamed5914(o.diagnosticInfo);
    checkUnnamed5915(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2Intent(
        o.intent as api.GoogleCloudDialogflowV2Intent);
    unittest.expect(o.intentDetectionConfidence, unittest.equals(42.0));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed5916(o.outputContexts);
    checkUnnamed5917(o.parameters);
    unittest.expect(o.queryText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2SentimentAnalysisResult(
        o.sentimentAnalysisResult
            as api.GoogleCloudDialogflowV2SentimentAnalysisResult);
    unittest.expect(o.speechRecognitionConfidence, unittest.equals(42.0));
    checkUnnamed5918(o.webhookPayload);
    unittest.expect(o.webhookSource, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2QueryResult--;
}

core.int buildCounterGoogleCloudDialogflowV2Sentiment = 0;
api.GoogleCloudDialogflowV2Sentiment buildGoogleCloudDialogflowV2Sentiment() {
  var o = api.GoogleCloudDialogflowV2Sentiment();
  buildCounterGoogleCloudDialogflowV2Sentiment++;
  if (buildCounterGoogleCloudDialogflowV2Sentiment < 3) {
    o.magnitude = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudDialogflowV2Sentiment--;
  return o;
}

void checkGoogleCloudDialogflowV2Sentiment(
    api.GoogleCloudDialogflowV2Sentiment o) {
  buildCounterGoogleCloudDialogflowV2Sentiment++;
  if (buildCounterGoogleCloudDialogflowV2Sentiment < 3) {
    unittest.expect(o.magnitude, unittest.equals(42.0));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowV2Sentiment--;
}

core.int buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult = 0;
api.GoogleCloudDialogflowV2SentimentAnalysisResult
    buildGoogleCloudDialogflowV2SentimentAnalysisResult() {
  var o = api.GoogleCloudDialogflowV2SentimentAnalysisResult();
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult < 3) {
    o.queryTextSentiment = buildGoogleCloudDialogflowV2Sentiment();
  }
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult--;
  return o;
}

void checkGoogleCloudDialogflowV2SentimentAnalysisResult(
    api.GoogleCloudDialogflowV2SentimentAnalysisResult o) {
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult < 3) {
    checkGoogleCloudDialogflowV2Sentiment(
        o.queryTextSentiment as api.GoogleCloudDialogflowV2Sentiment);
  }
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult--;
}

core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> buildUnnamed5919() {
  var o = <api.GoogleCloudDialogflowV2EntityTypeEntity>[];
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

void checkUnnamed5919(
    core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityTypeEntity(
      o[0] as api.GoogleCloudDialogflowV2EntityTypeEntity);
  checkGoogleCloudDialogflowV2EntityTypeEntity(
      o[1] as api.GoogleCloudDialogflowV2EntityTypeEntity);
}

core.int buildCounterGoogleCloudDialogflowV2SessionEntityType = 0;
api.GoogleCloudDialogflowV2SessionEntityType
    buildGoogleCloudDialogflowV2SessionEntityType() {
  var o = api.GoogleCloudDialogflowV2SessionEntityType();
  buildCounterGoogleCloudDialogflowV2SessionEntityType++;
  if (buildCounterGoogleCloudDialogflowV2SessionEntityType < 3) {
    o.entities = buildUnnamed5919();
    o.entityOverrideMode = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2SessionEntityType--;
  return o;
}

void checkGoogleCloudDialogflowV2SessionEntityType(
    api.GoogleCloudDialogflowV2SessionEntityType o) {
  buildCounterGoogleCloudDialogflowV2SessionEntityType++;
  if (buildCounterGoogleCloudDialogflowV2SessionEntityType < 3) {
    checkUnnamed5919(o.entities);
    unittest.expect(o.entityOverrideMode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2SessionEntityType--;
}

core.int buildCounterGoogleCloudDialogflowV2WebhookRequest = 0;
api.GoogleCloudDialogflowV2WebhookRequest
    buildGoogleCloudDialogflowV2WebhookRequest() {
  var o = api.GoogleCloudDialogflowV2WebhookRequest();
  buildCounterGoogleCloudDialogflowV2WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowV2WebhookRequest < 3) {
    o.originalDetectIntentRequest =
        buildGoogleCloudDialogflowV2OriginalDetectIntentRequest();
    o.queryResult = buildGoogleCloudDialogflowV2QueryResult();
    o.responseId = 'foo';
    o.session = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2WebhookRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2WebhookRequest(
    api.GoogleCloudDialogflowV2WebhookRequest o) {
  buildCounterGoogleCloudDialogflowV2WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowV2WebhookRequest < 3) {
    checkGoogleCloudDialogflowV2OriginalDetectIntentRequest(
        o.originalDetectIntentRequest
            as api.GoogleCloudDialogflowV2OriginalDetectIntentRequest);
    checkGoogleCloudDialogflowV2QueryResult(
        o.queryResult as api.GoogleCloudDialogflowV2QueryResult);
    unittest.expect(o.responseId, unittest.equals('foo'));
    unittest.expect(o.session, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2WebhookRequest--;
}

core.List<api.GoogleCloudDialogflowV2IntentMessage> buildUnnamed5920() {
  var o = <api.GoogleCloudDialogflowV2IntentMessage>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

void checkUnnamed5920(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(
      o[0] as api.GoogleCloudDialogflowV2IntentMessage);
  checkGoogleCloudDialogflowV2IntentMessage(
      o[1] as api.GoogleCloudDialogflowV2IntentMessage);
}

core.List<api.GoogleCloudDialogflowV2Context> buildUnnamed5921() {
  var o = <api.GoogleCloudDialogflowV2Context>[];
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

void checkUnnamed5921(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(
      o[0] as api.GoogleCloudDialogflowV2Context);
  checkGoogleCloudDialogflowV2Context(
      o[1] as api.GoogleCloudDialogflowV2Context);
}

core.Map<core.String, core.Object> buildUnnamed5922() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5922(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted72 = (o['x']) as core.Map;
  unittest.expect(casted72, unittest.hasLength(3));
  unittest.expect(casted72['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted72['bool'], unittest.equals(true));
  unittest.expect(casted72['string'], unittest.equals('foo'));
  var casted73 = (o['y']) as core.Map;
  unittest.expect(casted73, unittest.hasLength(3));
  unittest.expect(casted73['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted73['bool'], unittest.equals(true));
  unittest.expect(casted73['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2SessionEntityType> buildUnnamed5923() {
  var o = <api.GoogleCloudDialogflowV2SessionEntityType>[];
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  return o;
}

void checkUnnamed5923(
    core.List<api.GoogleCloudDialogflowV2SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2SessionEntityType(
      o[0] as api.GoogleCloudDialogflowV2SessionEntityType);
  checkGoogleCloudDialogflowV2SessionEntityType(
      o[1] as api.GoogleCloudDialogflowV2SessionEntityType);
}

core.int buildCounterGoogleCloudDialogflowV2WebhookResponse = 0;
api.GoogleCloudDialogflowV2WebhookResponse
    buildGoogleCloudDialogflowV2WebhookResponse() {
  var o = api.GoogleCloudDialogflowV2WebhookResponse();
  buildCounterGoogleCloudDialogflowV2WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowV2WebhookResponse < 3) {
    o.followupEventInput = buildGoogleCloudDialogflowV2EventInput();
    o.fulfillmentMessages = buildUnnamed5920();
    o.fulfillmentText = 'foo';
    o.outputContexts = buildUnnamed5921();
    o.payload = buildUnnamed5922();
    o.sessionEntityTypes = buildUnnamed5923();
    o.source = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2WebhookResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2WebhookResponse(
    api.GoogleCloudDialogflowV2WebhookResponse o) {
  buildCounterGoogleCloudDialogflowV2WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowV2WebhookResponse < 3) {
    checkGoogleCloudDialogflowV2EventInput(
        o.followupEventInput as api.GoogleCloudDialogflowV2EventInput);
    checkUnnamed5920(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkUnnamed5921(o.outputContexts);
    checkUnnamed5922(o.payload);
    checkUnnamed5923(o.sessionEntityTypes);
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2WebhookResponse--;
}

core.List<api.GoogleCloudDialogflowV2beta1EntityType> buildUnnamed5924() {
  var o = <api.GoogleCloudDialogflowV2beta1EntityType>[];
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  return o;
}

void checkUnnamed5924(core.List<api.GoogleCloudDialogflowV2beta1EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1EntityType(
      o[0] as api.GoogleCloudDialogflowV2beta1EntityType);
  checkGoogleCloudDialogflowV2beta1EntityType(
      o[1] as api.GoogleCloudDialogflowV2beta1EntityType);
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse = 0;
api.GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse
    buildGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse() {
  var o = api.GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse();
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse <
      3) {
    o.entityTypes = buildUnnamed5924();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse(
    api.GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse <
      3) {
    checkUnnamed5924(o.entityTypes);
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse--;
}

core.List<api.GoogleCloudDialogflowV2beta1Intent> buildUnnamed5925() {
  var o = <api.GoogleCloudDialogflowV2beta1Intent>[];
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  return o;
}

void checkUnnamed5925(core.List<api.GoogleCloudDialogflowV2beta1Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Intent(
      o[0] as api.GoogleCloudDialogflowV2beta1Intent);
  checkGoogleCloudDialogflowV2beta1Intent(
      o[1] as api.GoogleCloudDialogflowV2beta1Intent);
}

core.int buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse = 0;
api.GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse
    buildGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse() {
  var o = api.GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse();
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse < 3) {
    o.intents = buildUnnamed5925();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse(
    api.GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse < 3) {
    checkUnnamed5925(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed5926() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5926(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted74 = (o['x']) as core.Map;
  unittest.expect(casted74, unittest.hasLength(3));
  unittest.expect(casted74['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted74['bool'], unittest.equals(true));
  unittest.expect(casted74['string'], unittest.equals('foo'));
  var casted75 = (o['y']) as core.Map;
  unittest.expect(casted75, unittest.hasLength(3));
  unittest.expect(casted75['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted75['bool'], unittest.equals(true));
  unittest.expect(casted75['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1Context = 0;
api.GoogleCloudDialogflowV2beta1Context
    buildGoogleCloudDialogflowV2beta1Context() {
  var o = api.GoogleCloudDialogflowV2beta1Context();
  buildCounterGoogleCloudDialogflowV2beta1Context++;
  if (buildCounterGoogleCloudDialogflowV2beta1Context < 3) {
    o.lifespanCount = 42;
    o.name = 'foo';
    o.parameters = buildUnnamed5926();
  }
  buildCounterGoogleCloudDialogflowV2beta1Context--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1Context(
    api.GoogleCloudDialogflowV2beta1Context o) {
  buildCounterGoogleCloudDialogflowV2beta1Context++;
  if (buildCounterGoogleCloudDialogflowV2beta1Context < 3) {
    unittest.expect(o.lifespanCount, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5926(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2beta1Context--;
}

core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity> buildUnnamed5927() {
  var o = <api.GoogleCloudDialogflowV2beta1EntityTypeEntity>[];
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  return o;
}

void checkUnnamed5927(
    core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1EntityTypeEntity(
      o[0] as api.GoogleCloudDialogflowV2beta1EntityTypeEntity);
  checkGoogleCloudDialogflowV2beta1EntityTypeEntity(
      o[1] as api.GoogleCloudDialogflowV2beta1EntityTypeEntity);
}

core.int buildCounterGoogleCloudDialogflowV2beta1EntityType = 0;
api.GoogleCloudDialogflowV2beta1EntityType
    buildGoogleCloudDialogflowV2beta1EntityType() {
  var o = api.GoogleCloudDialogflowV2beta1EntityType();
  buildCounterGoogleCloudDialogflowV2beta1EntityType++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityType < 3) {
    o.autoExpansionMode = 'foo';
    o.displayName = 'foo';
    o.enableFuzzyExtraction = true;
    o.entities = buildUnnamed5927();
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityType--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1EntityType(
    api.GoogleCloudDialogflowV2beta1EntityType o) {
  buildCounterGoogleCloudDialogflowV2beta1EntityType++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityType < 3) {
    unittest.expect(o.autoExpansionMode, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.enableFuzzyExtraction, unittest.isTrue);
    checkUnnamed5927(o.entities);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityType--;
}

core.List<core.String> buildUnnamed5928() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5928(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity = 0;
api.GoogleCloudDialogflowV2beta1EntityTypeEntity
    buildGoogleCloudDialogflowV2beta1EntityTypeEntity() {
  var o = api.GoogleCloudDialogflowV2beta1EntityTypeEntity();
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity < 3) {
    o.synonyms = buildUnnamed5928();
    o.value = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1EntityTypeEntity(
    api.GoogleCloudDialogflowV2beta1EntityTypeEntity o) {
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity < 3) {
    checkUnnamed5928(o.synonyms);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity--;
}

core.Map<core.String, core.Object> buildUnnamed5929() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5929(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted76 = (o['x']) as core.Map;
  unittest.expect(casted76, unittest.hasLength(3));
  unittest.expect(casted76['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted76['bool'], unittest.equals(true));
  unittest.expect(casted76['string'], unittest.equals('foo'));
  var casted77 = (o['y']) as core.Map;
  unittest.expect(casted77, unittest.hasLength(3));
  unittest.expect(casted77['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted77['bool'], unittest.equals(true));
  unittest.expect(casted77['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1EventInput = 0;
api.GoogleCloudDialogflowV2beta1EventInput
    buildGoogleCloudDialogflowV2beta1EventInput() {
  var o = api.GoogleCloudDialogflowV2beta1EventInput();
  buildCounterGoogleCloudDialogflowV2beta1EventInput++;
  if (buildCounterGoogleCloudDialogflowV2beta1EventInput < 3) {
    o.languageCode = 'foo';
    o.name = 'foo';
    o.parameters = buildUnnamed5929();
  }
  buildCounterGoogleCloudDialogflowV2beta1EventInput--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1EventInput(
    api.GoogleCloudDialogflowV2beta1EventInput o) {
  buildCounterGoogleCloudDialogflowV2beta1EventInput++;
  if (buildCounterGoogleCloudDialogflowV2beta1EventInput < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5929(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2beta1EventInput--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse = 0;
api.GoogleCloudDialogflowV2beta1ExportAgentResponse
    buildGoogleCloudDialogflowV2beta1ExportAgentResponse() {
  var o = api.GoogleCloudDialogflowV2beta1ExportAgentResponse();
  buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse < 3) {
    o.agentContent = 'foo';
    o.agentUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1ExportAgentResponse(
    api.GoogleCloudDialogflowV2beta1ExportAgentResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse--;
}

core.List<core.String> buildUnnamed5930() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5930(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5931() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5931(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>
    buildUnnamed5932() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo());
  o.add(buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo());
  return o;
}

void checkUnnamed5932(
    core.List<api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo);
  checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo);
}

core.List<core.String> buildUnnamed5933() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5933(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> buildUnnamed5934() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessage>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

void checkUnnamed5934(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessage);
  checkGoogleCloudDialogflowV2beta1IntentMessage(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessage);
}

core.List<api.GoogleCloudDialogflowV2beta1Context> buildUnnamed5935() {
  var o = <api.GoogleCloudDialogflowV2beta1Context>[];
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

void checkUnnamed5935(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(
      o[0] as api.GoogleCloudDialogflowV2beta1Context);
  checkGoogleCloudDialogflowV2beta1Context(
      o[1] as api.GoogleCloudDialogflowV2beta1Context);
}

core.List<api.GoogleCloudDialogflowV2beta1IntentParameter> buildUnnamed5936() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentParameter>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentParameter());
  o.add(buildGoogleCloudDialogflowV2beta1IntentParameter());
  return o;
}

void checkUnnamed5936(
    core.List<api.GoogleCloudDialogflowV2beta1IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentParameter(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentParameter);
  checkGoogleCloudDialogflowV2beta1IntentParameter(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentParameter);
}

core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase>
    buildUnnamed5937() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase());
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase());
  return o;
}

void checkUnnamed5937(
    core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentTrainingPhrase(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase);
  checkGoogleCloudDialogflowV2beta1IntentTrainingPhrase(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase);
}

core.int buildCounterGoogleCloudDialogflowV2beta1Intent = 0;
api.GoogleCloudDialogflowV2beta1Intent
    buildGoogleCloudDialogflowV2beta1Intent() {
  var o = api.GoogleCloudDialogflowV2beta1Intent();
  buildCounterGoogleCloudDialogflowV2beta1Intent++;
  if (buildCounterGoogleCloudDialogflowV2beta1Intent < 3) {
    o.action = 'foo';
    o.defaultResponsePlatforms = buildUnnamed5930();
    o.displayName = 'foo';
    o.endInteraction = true;
    o.events = buildUnnamed5931();
    o.followupIntentInfo = buildUnnamed5932();
    o.inputContextNames = buildUnnamed5933();
    o.isFallback = true;
    o.messages = buildUnnamed5934();
    o.mlDisabled = true;
    o.mlEnabled = true;
    o.name = 'foo';
    o.outputContexts = buildUnnamed5935();
    o.parameters = buildUnnamed5936();
    o.parentFollowupIntentName = 'foo';
    o.priority = 42;
    o.resetContexts = true;
    o.rootFollowupIntentName = 'foo';
    o.trainingPhrases = buildUnnamed5937();
    o.webhookState = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1Intent--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1Intent(
    api.GoogleCloudDialogflowV2beta1Intent o) {
  buildCounterGoogleCloudDialogflowV2beta1Intent++;
  if (buildCounterGoogleCloudDialogflowV2beta1Intent < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed5930(o.defaultResponsePlatforms);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.endInteraction, unittest.isTrue);
    checkUnnamed5931(o.events);
    checkUnnamed5932(o.followupIntentInfo);
    checkUnnamed5933(o.inputContextNames);
    unittest.expect(o.isFallback, unittest.isTrue);
    checkUnnamed5934(o.messages);
    unittest.expect(o.mlDisabled, unittest.isTrue);
    unittest.expect(o.mlEnabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5935(o.outputContexts);
    checkUnnamed5936(o.parameters);
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    unittest.expect(o.resetContexts, unittest.isTrue);
    unittest.expect(o.rootFollowupIntentName, unittest.equals('foo'));
    checkUnnamed5937(o.trainingPhrases);
    unittest.expect(o.webhookState, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1Intent--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo = 0;
api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo
    buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo() {
  var o = api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo();
  buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo < 3) {
    o.followupIntentName = 'foo';
    o.parentFollowupIntentName = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(
    api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo < 3) {
    unittest.expect(o.followupIntentName, unittest.equals('foo'));
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo--;
}

core.Map<core.String, core.Object> buildUnnamed5938() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5938(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted78 = (o['x']) as core.Map;
  unittest.expect(casted78, unittest.hasLength(3));
  unittest.expect(casted78['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted78['bool'], unittest.equals(true));
  unittest.expect(casted78['string'], unittest.equals('foo'));
  var casted79 = (o['y']) as core.Map;
  unittest.expect(casted79, unittest.hasLength(3));
  unittest.expect(casted79['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted79['bool'], unittest.equals(true));
  unittest.expect(casted79['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessage = 0;
api.GoogleCloudDialogflowV2beta1IntentMessage
    buildGoogleCloudDialogflowV2beta1IntentMessage() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessage();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessage++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessage < 3) {
    o.basicCard = buildGoogleCloudDialogflowV2beta1IntentMessageBasicCard();
    o.browseCarouselCard =
        buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard();
    o.card = buildGoogleCloudDialogflowV2beta1IntentMessageCard();
    o.carouselSelect =
        buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect();
    o.image = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.linkOutSuggestion =
        buildGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion();
    o.listSelect = buildGoogleCloudDialogflowV2beta1IntentMessageListSelect();
    o.mediaContent =
        buildGoogleCloudDialogflowV2beta1IntentMessageMediaContent();
    o.payload = buildUnnamed5938();
    o.platform = 'foo';
    o.quickReplies =
        buildGoogleCloudDialogflowV2beta1IntentMessageQuickReplies();
    o.rbmCarouselRichCard =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard();
    o.rbmStandaloneRichCard =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard();
    o.rbmText = buildGoogleCloudDialogflowV2beta1IntentMessageRbmText();
    o.simpleResponses =
        buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses();
    o.suggestions = buildGoogleCloudDialogflowV2beta1IntentMessageSuggestions();
    o.tableCard = buildGoogleCloudDialogflowV2beta1IntentMessageTableCard();
    o.telephonyPlayAudio =
        buildGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio();
    o.telephonySynthesizeSpeech =
        buildGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech();
    o.telephonyTransferCall =
        buildGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall();
    o.text = buildGoogleCloudDialogflowV2beta1IntentMessageText();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessage--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessage(
    api.GoogleCloudDialogflowV2beta1IntentMessage o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessage++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessage < 3) {
    checkGoogleCloudDialogflowV2beta1IntentMessageBasicCard(
        o.basicCard as api.GoogleCloudDialogflowV2beta1IntentMessageBasicCard);
    checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard(
        o.browseCarouselCard
            as api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard);
    checkGoogleCloudDialogflowV2beta1IntentMessageCard(
        o.card as api.GoogleCloudDialogflowV2beta1IntentMessageCard);
    checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect(
        o.carouselSelect
            as api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect);
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(
        o.image as api.GoogleCloudDialogflowV2beta1IntentMessageImage);
    checkGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion(
        o.linkOutSuggestion
            as api.GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion);
    checkGoogleCloudDialogflowV2beta1IntentMessageListSelect(o.listSelect
        as api.GoogleCloudDialogflowV2beta1IntentMessageListSelect);
    checkGoogleCloudDialogflowV2beta1IntentMessageMediaContent(o.mediaContent
        as api.GoogleCloudDialogflowV2beta1IntentMessageMediaContent);
    checkUnnamed5938(o.payload);
    unittest.expect(o.platform, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageQuickReplies(o.quickReplies
        as api.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies);
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard(
        o.rbmCarouselRichCard
            as api.GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard);
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard(
        o.rbmStandaloneRichCard
            as api.GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard);
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmText(
        o.rbmText as api.GoogleCloudDialogflowV2beta1IntentMessageRbmText);
    checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses(
        o.simpleResponses
            as api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses);
    checkGoogleCloudDialogflowV2beta1IntentMessageSuggestions(o.suggestions
        as api.GoogleCloudDialogflowV2beta1IntentMessageSuggestions);
    checkGoogleCloudDialogflowV2beta1IntentMessageTableCard(
        o.tableCard as api.GoogleCloudDialogflowV2beta1IntentMessageTableCard);
    checkGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio(
        o.telephonyPlayAudio
            as api.GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio);
    checkGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech(
        o.telephonySynthesizeSpeech as api
            .GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech);
    checkGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall(o
            .telephonyTransferCall
        as api.GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall);
    checkGoogleCloudDialogflowV2beta1IntentMessageText(
        o.text as api.GoogleCloudDialogflowV2beta1IntentMessageText);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessage--;
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>
    buildUnnamed5939() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  return o;
}

void checkUnnamed5939(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton);
  checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageBasicCard
    buildGoogleCloudDialogflowV2beta1IntentMessageBasicCard() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageBasicCard();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard < 3) {
    o.buttons = buildUnnamed5939();
    o.formattedText = 'foo';
    o.image = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.subtitle = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageBasicCard(
    api.GoogleCloudDialogflowV2beta1IntentMessageBasicCard o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard < 3) {
    checkUnnamed5939(o.buttons);
    unittest.expect(o.formattedText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(
        o.image as api.GoogleCloudDialogflowV2beta1IntentMessageImage);
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton =
    0;
api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton
    buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton <
      3) {
    o.openUriAction =
        buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction();
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(
    api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton <
      3) {
    checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction(
        o.openUriAction as api
            .GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction =
    0;
api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction
    buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction() {
  var o = api
      .GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction <
      3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction(
    api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction
        o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction <
      3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction--;
}

core.List<
        api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem>
    buildUnnamed5940() {
  var o = <
      api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem>[];
  o.add(
      buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem());
  o.add(
      buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem());
  return o;
}

void checkUnnamed5940(
    core.List<
            api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
      o[0] as api
          .GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem);
  checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
      o[1] as api
          .GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem);
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard
    buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard <
      3) {
    o.imageDisplayOptions = 'foo';
    o.items = buildUnnamed5940();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard(
    api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard <
      3) {
    unittest.expect(o.imageDisplayOptions, unittest.equals('foo'));
    checkUnnamed5940(o.items);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem =
    0;
api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem
    buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem() {
  var o = api
      .GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem <
      3) {
    o.description = 'foo';
    o.footer = 'foo';
    o.image = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.openUriAction =
        buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction();
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
    api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem
        o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem <
      3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.footer, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(
        o.image as api.GoogleCloudDialogflowV2beta1IntentMessageImage);
    checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction(
        o.openUriAction as api
            .GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction =
    0;
api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
    buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction() {
  var o = api
      .GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction <
      3) {
    o.url = 'foo';
    o.urlTypeHint = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction(
    api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
        o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction <
      3) {
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.urlTypeHint, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction--;
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageCardButton>
    buildUnnamed5941() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageCardButton>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCardButton());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCardButton());
  return o;
}

void checkUnnamed5941(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageCardButton(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessageCardButton);
  checkGoogleCloudDialogflowV2beta1IntentMessageCardButton(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessageCardButton);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageCard
    buildGoogleCloudDialogflowV2beta1IntentMessageCard() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageCard();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard < 3) {
    o.buttons = buildUnnamed5941();
    o.imageUri = 'foo';
    o.subtitle = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageCard(
    api.GoogleCloudDialogflowV2beta1IntentMessageCard o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard < 3) {
    checkUnnamed5941(o.buttons);
    unittest.expect(o.imageUri, unittest.equals('foo'));
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageCardButton
    buildGoogleCloudDialogflowV2beta1IntentMessageCardButton() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageCardButton();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton < 3) {
    o.postback = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageCardButton(
    api.GoogleCloudDialogflowV2beta1IntentMessageCardButton o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton < 3) {
    unittest.expect(o.postback, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton--;
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>
    buildUnnamed5942() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem());
  return o;
}

void checkUnnamed5942(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem);
  checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect =
    0;
api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect
    buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect < 3) {
    o.items = buildUnnamed5942();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect(
    api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect < 3) {
    checkUnnamed5942(o.items);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
    buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem <
      3) {
    o.description = 'foo';
    o.image = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.info = buildGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo();
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem(
    api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem <
      3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(
        o.image as api.GoogleCloudDialogflowV2beta1IntentMessageImage);
    checkGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo(
        o.info as api.GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageColumnProperties =
    0;
api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties
    buildGoogleCloudDialogflowV2beta1IntentMessageColumnProperties() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageColumnProperties++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageColumnProperties <
      3) {
    o.header = 'foo';
    o.horizontalAlignment = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageColumnProperties--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageColumnProperties(
    api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageColumnProperties++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageColumnProperties <
      3) {
    unittest.expect(o.header, unittest.equals('foo'));
    unittest.expect(o.horizontalAlignment, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageColumnProperties--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageImage = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageImage
    buildGoogleCloudDialogflowV2beta1IntentMessageImage() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageImage();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageImage++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageImage < 3) {
    o.accessibilityText = 'foo';
    o.imageUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageImage--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageImage(
    api.GoogleCloudDialogflowV2beta1IntentMessageImage o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageImage++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageImage < 3) {
    unittest.expect(o.accessibilityText, unittest.equals('foo'));
    unittest.expect(o.imageUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageImage--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
    buildGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion <
      3) {
    o.destinationName = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion(
    api.GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion <
      3) {
    unittest.expect(o.destinationName, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion--;
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>
    buildUnnamed5943() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem());
  return o;
}

void checkUnnamed5943(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageListSelectItem(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem);
  checkGoogleCloudDialogflowV2beta1IntentMessageListSelectItem(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageListSelect
    buildGoogleCloudDialogflowV2beta1IntentMessageListSelect() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageListSelect();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect < 3) {
    o.items = buildUnnamed5943();
    o.subtitle = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageListSelect(
    api.GoogleCloudDialogflowV2beta1IntentMessageListSelect o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect < 3) {
    checkUnnamed5943(o.items);
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem =
    0;
api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem
    buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem < 3) {
    o.description = 'foo';
    o.image = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.info = buildGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo();
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageListSelectItem(
    api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(
        o.image as api.GoogleCloudDialogflowV2beta1IntentMessageImage);
    checkGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo(
        o.info as api.GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem--;
}

core.List<
        api.GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject>
    buildUnnamed5944() {
  var o = <
      api.GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject>[];
  o.add(
      buildGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject());
  o.add(
      buildGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject());
  return o;
}

void checkUnnamed5944(
    core.List<
            api.GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject(
      o[0] as api
          .GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject);
  checkGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject(
      o[1] as api
          .GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageMediaContent
    buildGoogleCloudDialogflowV2beta1IntentMessageMediaContent() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageMediaContent();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent < 3) {
    o.mediaObjects = buildUnnamed5944();
    o.mediaType = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageMediaContent(
    api.GoogleCloudDialogflowV2beta1IntentMessageMediaContent o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent < 3) {
    checkUnnamed5944(o.mediaObjects);
    unittest.expect(o.mediaType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject =
    0;
api.GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject
    buildGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject() {
  var o = api
      .GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject <
      3) {
    o.contentUrl = 'foo';
    o.description = 'foo';
    o.icon = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.largeImage = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject(
    api.GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject
        o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject <
      3) {
    unittest.expect(o.contentUrl, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(
        o.icon as api.GoogleCloudDialogflowV2beta1IntentMessageImage);
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(
        o.largeImage as api.GoogleCloudDialogflowV2beta1IntentMessageImage);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject--;
}

core.List<core.String> buildUnnamed5945() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5945(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies
    buildGoogleCloudDialogflowV2beta1IntentMessageQuickReplies() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies < 3) {
    o.quickReplies = buildUnnamed5945();
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageQuickReplies(
    api.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies < 3) {
    checkUnnamed5945(o.quickReplies);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies--;
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>
    buildUnnamed5946() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  return o;
}

void checkUnnamed5946(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion);
  checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent =
    0;
api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent
    buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent < 3) {
    o.description = 'foo';
    o.media =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia();
    o.suggestions = buildUnnamed5946();
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia(o.media
        as api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia);
    checkUnnamed5946(o.suggestions);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia =
    0;
api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia
    buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia <
      3) {
    o.fileUri = 'foo';
    o.height = 'foo';
    o.thumbnailUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia <
      3) {
    unittest.expect(o.fileUri, unittest.equals('foo'));
    unittest.expect(o.height, unittest.equals('foo'));
    unittest.expect(o.thumbnailUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia--;
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent>
    buildUnnamed5947() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent());
  return o;
}

void checkUnnamed5947(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent);
  checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard =
    0;
api.GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard
    buildGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard <
      3) {
    o.cardContents = buildUnnamed5947();
    o.cardWidth = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard <
      3) {
    checkUnnamed5947(o.cardContents);
    unittest.expect(o.cardWidth, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard
    buildGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard <
      3) {
    o.cardContent =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent();
    o.cardOrientation = 'foo';
    o.thumbnailImageAlignment = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard <
      3) {
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent(o.cardContent
        as api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent);
    unittest.expect(o.cardOrientation, unittest.equals('foo'));
    unittest.expect(o.thumbnailImageAlignment, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction
    buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction <
      3) {
    o.dial =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial();
    o.openUrl =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri();
    o.postbackData = 'foo';
    o.shareLocation =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation();
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction <
      3) {
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial(
        o.dial as api
            .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial);
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri(
        o.openUrl as api
            .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri);
    unittest.expect(o.postbackData, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation(
        o.shareLocation as api
            .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial =
    0;
api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial
    buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial() {
  var o = api
      .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial <
      3) {
    o.phoneNumber = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial
        o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial <
      3) {
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri =
    0;
api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri
    buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri() {
  var o = api
      .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri <
      3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri
        o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri <
      3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation =
    0;
api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation
    buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation() {
  var o = api
      .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation <
      3) {}
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation
        o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation <
      3) {}
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply
    buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply <
      3) {
    o.postbackData = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply <
      3) {
    unittest.expect(o.postbackData, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion
    buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion < 3) {
    o.action =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction();
    o.reply = buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion < 3) {
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction(o.action
        as api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction);
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply(o.reply
        as api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion--;
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>
    buildUnnamed5948() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  return o;
}

void checkUnnamed5948(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion);
  checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageRbmText
    buildGoogleCloudDialogflowV2beta1IntentMessageRbmText() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageRbmText();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText < 3) {
    o.rbmSuggestion = buildUnnamed5948();
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageRbmText(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmText o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText < 3) {
    checkUnnamed5948(o.rbmSuggestion);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText--;
}

core.List<core.String> buildUnnamed5949() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5949(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo =
    0;
api.GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo
    buildGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo < 3) {
    o.key = 'foo';
    o.synonyms = buildUnnamed5949();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo(
    api.GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed5949(o.synonyms);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse =
    0;
api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse
    buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse < 3) {
    o.displayText = 'foo';
    o.ssml = 'foo';
    o.textToSpeech = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse(
    api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse < 3) {
    unittest.expect(o.displayText, unittest.equals('foo'));
    unittest.expect(o.ssml, unittest.equals('foo'));
    unittest.expect(o.textToSpeech, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse--;
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>
    buildUnnamed5950() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse());
  return o;
}

void checkUnnamed5950(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse);
  checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses =
    0;
api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses
    buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses <
      3) {
    o.simpleResponses = buildUnnamed5950();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses(
    api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses <
      3) {
    checkUnnamed5950(o.simpleResponses);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion
    buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion < 3) {
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageSuggestion(
    api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion < 3) {
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion--;
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion>
    buildUnnamed5951() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion());
  return o;
}

void checkUnnamed5951(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageSuggestion(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion);
  checkGoogleCloudDialogflowV2beta1IntentMessageSuggestion(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageSuggestions
    buildGoogleCloudDialogflowV2beta1IntentMessageSuggestions() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageSuggestions();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions < 3) {
    o.suggestions = buildUnnamed5951();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageSuggestions(
    api.GoogleCloudDialogflowV2beta1IntentMessageSuggestions o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions < 3) {
    checkUnnamed5951(o.suggestions);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions--;
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>
    buildUnnamed5952() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  return o;
}

void checkUnnamed5952(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton);
  checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton);
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>
    buildUnnamed5953() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageColumnProperties());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageColumnProperties());
  return o;
}

void checkUnnamed5953(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageColumnProperties(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties);
  checkGoogleCloudDialogflowV2beta1IntentMessageColumnProperties(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties);
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow>
    buildUnnamed5954() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageTableCardRow());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageTableCardRow());
  return o;
}

void checkUnnamed5954(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageTableCardRow(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow);
  checkGoogleCloudDialogflowV2beta1IntentMessageTableCardRow(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCard = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageTableCard
    buildGoogleCloudDialogflowV2beta1IntentMessageTableCard() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageTableCard();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCard < 3) {
    o.buttons = buildUnnamed5952();
    o.columnProperties = buildUnnamed5953();
    o.image = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.rows = buildUnnamed5954();
    o.subtitle = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCard--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageTableCard(
    api.GoogleCloudDialogflowV2beta1IntentMessageTableCard o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCard < 3) {
    checkUnnamed5952(o.buttons);
    checkUnnamed5953(o.columnProperties);
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(
        o.image as api.GoogleCloudDialogflowV2beta1IntentMessageImage);
    checkUnnamed5954(o.rows);
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCard--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardCell = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageTableCardCell
    buildGoogleCloudDialogflowV2beta1IntentMessageTableCardCell() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageTableCardCell();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardCell++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardCell < 3) {
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardCell--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageTableCardCell(
    api.GoogleCloudDialogflowV2beta1IntentMessageTableCardCell o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardCell++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardCell < 3) {
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardCell--;
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageTableCardCell>
    buildUnnamed5955() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageTableCardCell>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageTableCardCell());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageTableCardCell());
  return o;
}

void checkUnnamed5955(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageTableCardCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageTableCardCell(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessageTableCardCell);
  checkGoogleCloudDialogflowV2beta1IntentMessageTableCardCell(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessageTableCardCell);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow
    buildGoogleCloudDialogflowV2beta1IntentMessageTableCardRow() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow < 3) {
    o.cells = buildUnnamed5955();
    o.dividerAfter = true;
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageTableCardRow(
    api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow < 3) {
    checkUnnamed5955(o.cells);
    unittest.expect(o.dividerAfter, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
    buildGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio <
      3) {
    o.audioUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio(
    api.GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio <
      3) {
    unittest.expect(o.audioUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech =
    0;
api.GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
    buildGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech() {
  var o =
      api.GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech <
      3) {
    o.ssml = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech(
    api.GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech <
      3) {
    unittest.expect(o.ssml, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall =
    0;
api.GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
    buildGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall <
      3) {
    o.phoneNumber = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall(
    api.GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall <
      3) {
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall--;
}

core.List<core.String> buildUnnamed5956() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5956(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageText = 0;
api.GoogleCloudDialogflowV2beta1IntentMessageText
    buildGoogleCloudDialogflowV2beta1IntentMessageText() {
  var o = api.GoogleCloudDialogflowV2beta1IntentMessageText();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageText < 3) {
    o.text = buildUnnamed5956();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageText(
    api.GoogleCloudDialogflowV2beta1IntentMessageText o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageText < 3) {
    checkUnnamed5956(o.text);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText--;
}

core.List<core.String> buildUnnamed5957() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5957(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentParameter = 0;
api.GoogleCloudDialogflowV2beta1IntentParameter
    buildGoogleCloudDialogflowV2beta1IntentParameter() {
  var o = api.GoogleCloudDialogflowV2beta1IntentParameter();
  buildCounterGoogleCloudDialogflowV2beta1IntentParameter++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentParameter < 3) {
    o.defaultValue = 'foo';
    o.displayName = 'foo';
    o.entityTypeDisplayName = 'foo';
    o.isList = true;
    o.mandatory = true;
    o.name = 'foo';
    o.prompts = buildUnnamed5957();
    o.value = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentParameter--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentParameter(
    api.GoogleCloudDialogflowV2beta1IntentParameter o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentParameter++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentParameter < 3) {
    unittest.expect(o.defaultValue, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityTypeDisplayName, unittest.equals('foo'));
    unittest.expect(o.isList, unittest.isTrue);
    unittest.expect(o.mandatory, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5957(o.prompts);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentParameter--;
}

core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart>
    buildUnnamed5958() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart());
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart());
  return o;
}

void checkUnnamed5958(
    core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart);
  checkGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase = 0;
api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase
    buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase() {
  var o = api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase();
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase < 3) {
    o.name = 'foo';
    o.parts = buildUnnamed5958();
    o.timesAddedCount = 42;
    o.type = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentTrainingPhrase(
    api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5958(o.parts);
    unittest.expect(o.timesAddedCount, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart = 0;
api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart
    buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart() {
  var o = api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart();
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart < 3) {
    o.alias = 'foo';
    o.entityType = 'foo';
    o.text = 'foo';
    o.userDefined = true;
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart(
    api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart < 3) {
    unittest.expect(o.alias, unittest.equals('foo'));
    unittest.expect(o.entityType, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
    unittest.expect(o.userDefined, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart--;
}

core.List<api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer>
    buildUnnamed5959() {
  var o = <api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer>[];
  o.add(buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer());
  o.add(buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer());
  return o;
}

void checkUnnamed5959(
    core.List<api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer(
      o[0] as api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer);
  checkGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer(
      o[1] as api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer);
}

core.int buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers = 0;
api.GoogleCloudDialogflowV2beta1KnowledgeAnswers
    buildGoogleCloudDialogflowV2beta1KnowledgeAnswers() {
  var o = api.GoogleCloudDialogflowV2beta1KnowledgeAnswers();
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers < 3) {
    o.answers = buildUnnamed5959();
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1KnowledgeAnswers(
    api.GoogleCloudDialogflowV2beta1KnowledgeAnswers o) {
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers < 3) {
    checkUnnamed5959(o.answers);
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer = 0;
api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer
    buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer() {
  var o = api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer();
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer < 3) {
    o.answer = 'foo';
    o.faqQuestion = 'foo';
    o.matchConfidence = 42.0;
    o.matchConfidenceLevel = 'foo';
    o.source = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer(
    api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer o) {
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer < 3) {
    unittest.expect(o.answer, unittest.equals('foo'));
    unittest.expect(o.faqQuestion, unittest.equals('foo'));
    unittest.expect(o.matchConfidence, unittest.equals(42.0));
    unittest.expect(o.matchConfidenceLevel, unittest.equals('foo'));
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata = 0;
api.GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata
    buildGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata() {
  var o = api.GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata();
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata < 3) {
    o.state = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata(
    api.GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata o) {
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata < 3) {
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata--;
}

core.Map<core.String, core.Object> buildUnnamed5960() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5960(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted80 = (o['x']) as core.Map;
  unittest.expect(casted80, unittest.hasLength(3));
  unittest.expect(casted80['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted80['bool'], unittest.equals(true));
  unittest.expect(casted80['string'], unittest.equals('foo'));
  var casted81 = (o['y']) as core.Map;
  unittest.expect(casted81, unittest.hasLength(3));
  unittest.expect(casted81['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted81['bool'], unittest.equals(true));
  unittest.expect(casted81['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest =
    0;
api.GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest
    buildGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest() {
  var o = api.GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest();
  buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest < 3) {
    o.payload = buildUnnamed5960();
    o.source = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest(
    api.GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest < 3) {
    checkUnnamed5960(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest--;
}

core.Map<core.String, core.Object> buildUnnamed5961() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5961(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted82 = (o['x']) as core.Map;
  unittest.expect(casted82, unittest.hasLength(3));
  unittest.expect(casted82['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted82['bool'], unittest.equals(true));
  unittest.expect(casted82['string'], unittest.equals('foo'));
  var casted83 = (o['y']) as core.Map;
  unittest.expect(casted83, unittest.hasLength(3));
  unittest.expect(casted83['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted83['bool'], unittest.equals(true));
  unittest.expect(casted83['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> buildUnnamed5962() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessage>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

void checkUnnamed5962(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessage);
  checkGoogleCloudDialogflowV2beta1IntentMessage(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessage);
}

core.List<api.GoogleCloudDialogflowV2beta1Context> buildUnnamed5963() {
  var o = <api.GoogleCloudDialogflowV2beta1Context>[];
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

void checkUnnamed5963(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(
      o[0] as api.GoogleCloudDialogflowV2beta1Context);
  checkGoogleCloudDialogflowV2beta1Context(
      o[1] as api.GoogleCloudDialogflowV2beta1Context);
}

core.Map<core.String, core.Object> buildUnnamed5964() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5964(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted84 = (o['x']) as core.Map;
  unittest.expect(casted84, unittest.hasLength(3));
  unittest.expect(casted84['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted84['bool'], unittest.equals(true));
  unittest.expect(casted84['string'], unittest.equals('foo'));
  var casted85 = (o['y']) as core.Map;
  unittest.expect(casted85, unittest.hasLength(3));
  unittest.expect(casted85['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted85['bool'], unittest.equals(true));
  unittest.expect(casted85['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed5965() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5965(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted86 = (o['x']) as core.Map;
  unittest.expect(casted86, unittest.hasLength(3));
  unittest.expect(casted86['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted86['bool'], unittest.equals(true));
  unittest.expect(casted86['string'], unittest.equals('foo'));
  var casted87 = (o['y']) as core.Map;
  unittest.expect(casted87, unittest.hasLength(3));
  unittest.expect(casted87['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted87['bool'], unittest.equals(true));
  unittest.expect(casted87['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1QueryResult = 0;
api.GoogleCloudDialogflowV2beta1QueryResult
    buildGoogleCloudDialogflowV2beta1QueryResult() {
  var o = api.GoogleCloudDialogflowV2beta1QueryResult();
  buildCounterGoogleCloudDialogflowV2beta1QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2beta1QueryResult < 3) {
    o.action = 'foo';
    o.allRequiredParamsPresent = true;
    o.diagnosticInfo = buildUnnamed5961();
    o.fulfillmentMessages = buildUnnamed5962();
    o.fulfillmentText = 'foo';
    o.intent = buildGoogleCloudDialogflowV2beta1Intent();
    o.intentDetectionConfidence = 42.0;
    o.knowledgeAnswers = buildGoogleCloudDialogflowV2beta1KnowledgeAnswers();
    o.languageCode = 'foo';
    o.outputContexts = buildUnnamed5963();
    o.parameters = buildUnnamed5964();
    o.queryText = 'foo';
    o.sentimentAnalysisResult =
        buildGoogleCloudDialogflowV2beta1SentimentAnalysisResult();
    o.speechRecognitionConfidence = 42.0;
    o.webhookPayload = buildUnnamed5965();
    o.webhookSource = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1QueryResult--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1QueryResult(
    api.GoogleCloudDialogflowV2beta1QueryResult o) {
  buildCounterGoogleCloudDialogflowV2beta1QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2beta1QueryResult < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.allRequiredParamsPresent, unittest.isTrue);
    checkUnnamed5961(o.diagnosticInfo);
    checkUnnamed5962(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1Intent(
        o.intent as api.GoogleCloudDialogflowV2beta1Intent);
    unittest.expect(o.intentDetectionConfidence, unittest.equals(42.0));
    checkGoogleCloudDialogflowV2beta1KnowledgeAnswers(
        o.knowledgeAnswers as api.GoogleCloudDialogflowV2beta1KnowledgeAnswers);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed5963(o.outputContexts);
    checkUnnamed5964(o.parameters);
    unittest.expect(o.queryText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1SentimentAnalysisResult(
        o.sentimentAnalysisResult
            as api.GoogleCloudDialogflowV2beta1SentimentAnalysisResult);
    unittest.expect(o.speechRecognitionConfidence, unittest.equals(42.0));
    checkUnnamed5965(o.webhookPayload);
    unittest.expect(o.webhookSource, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1QueryResult--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1Sentiment = 0;
api.GoogleCloudDialogflowV2beta1Sentiment
    buildGoogleCloudDialogflowV2beta1Sentiment() {
  var o = api.GoogleCloudDialogflowV2beta1Sentiment();
  buildCounterGoogleCloudDialogflowV2beta1Sentiment++;
  if (buildCounterGoogleCloudDialogflowV2beta1Sentiment < 3) {
    o.magnitude = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudDialogflowV2beta1Sentiment--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1Sentiment(
    api.GoogleCloudDialogflowV2beta1Sentiment o) {
  buildCounterGoogleCloudDialogflowV2beta1Sentiment++;
  if (buildCounterGoogleCloudDialogflowV2beta1Sentiment < 3) {
    unittest.expect(o.magnitude, unittest.equals(42.0));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowV2beta1Sentiment--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult = 0;
api.GoogleCloudDialogflowV2beta1SentimentAnalysisResult
    buildGoogleCloudDialogflowV2beta1SentimentAnalysisResult() {
  var o = api.GoogleCloudDialogflowV2beta1SentimentAnalysisResult();
  buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult < 3) {
    o.queryTextSentiment = buildGoogleCloudDialogflowV2beta1Sentiment();
  }
  buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1SentimentAnalysisResult(
    api.GoogleCloudDialogflowV2beta1SentimentAnalysisResult o) {
  buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult < 3) {
    checkGoogleCloudDialogflowV2beta1Sentiment(
        o.queryTextSentiment as api.GoogleCloudDialogflowV2beta1Sentiment);
  }
  buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult--;
}

core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity> buildUnnamed5966() {
  var o = <api.GoogleCloudDialogflowV2beta1EntityTypeEntity>[];
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  return o;
}

void checkUnnamed5966(
    core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1EntityTypeEntity(
      o[0] as api.GoogleCloudDialogflowV2beta1EntityTypeEntity);
  checkGoogleCloudDialogflowV2beta1EntityTypeEntity(
      o[1] as api.GoogleCloudDialogflowV2beta1EntityTypeEntity);
}

core.int buildCounterGoogleCloudDialogflowV2beta1SessionEntityType = 0;
api.GoogleCloudDialogflowV2beta1SessionEntityType
    buildGoogleCloudDialogflowV2beta1SessionEntityType() {
  var o = api.GoogleCloudDialogflowV2beta1SessionEntityType();
  buildCounterGoogleCloudDialogflowV2beta1SessionEntityType++;
  if (buildCounterGoogleCloudDialogflowV2beta1SessionEntityType < 3) {
    o.entities = buildUnnamed5966();
    o.entityOverrideMode = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1SessionEntityType--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1SessionEntityType(
    api.GoogleCloudDialogflowV2beta1SessionEntityType o) {
  buildCounterGoogleCloudDialogflowV2beta1SessionEntityType++;
  if (buildCounterGoogleCloudDialogflowV2beta1SessionEntityType < 3) {
    checkUnnamed5966(o.entities);
    unittest.expect(o.entityOverrideMode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1SessionEntityType--;
}

core.List<api.GoogleCloudDialogflowV2beta1QueryResult> buildUnnamed5967() {
  var o = <api.GoogleCloudDialogflowV2beta1QueryResult>[];
  o.add(buildGoogleCloudDialogflowV2beta1QueryResult());
  o.add(buildGoogleCloudDialogflowV2beta1QueryResult());
  return o;
}

void checkUnnamed5967(
    core.List<api.GoogleCloudDialogflowV2beta1QueryResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1QueryResult(
      o[0] as api.GoogleCloudDialogflowV2beta1QueryResult);
  checkGoogleCloudDialogflowV2beta1QueryResult(
      o[1] as api.GoogleCloudDialogflowV2beta1QueryResult);
}

core.int buildCounterGoogleCloudDialogflowV2beta1WebhookRequest = 0;
api.GoogleCloudDialogflowV2beta1WebhookRequest
    buildGoogleCloudDialogflowV2beta1WebhookRequest() {
  var o = api.GoogleCloudDialogflowV2beta1WebhookRequest();
  buildCounterGoogleCloudDialogflowV2beta1WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1WebhookRequest < 3) {
    o.alternativeQueryResults = buildUnnamed5967();
    o.originalDetectIntentRequest =
        buildGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest();
    o.queryResult = buildGoogleCloudDialogflowV2beta1QueryResult();
    o.responseId = 'foo';
    o.session = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1WebhookRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1WebhookRequest(
    api.GoogleCloudDialogflowV2beta1WebhookRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1WebhookRequest < 3) {
    checkUnnamed5967(o.alternativeQueryResults);
    checkGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest(
        o.originalDetectIntentRequest
            as api.GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest);
    checkGoogleCloudDialogflowV2beta1QueryResult(
        o.queryResult as api.GoogleCloudDialogflowV2beta1QueryResult);
    unittest.expect(o.responseId, unittest.equals('foo'));
    unittest.expect(o.session, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1WebhookRequest--;
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> buildUnnamed5968() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessage>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

void checkUnnamed5968(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessage);
  checkGoogleCloudDialogflowV2beta1IntentMessage(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessage);
}

core.List<api.GoogleCloudDialogflowV2beta1Context> buildUnnamed5969() {
  var o = <api.GoogleCloudDialogflowV2beta1Context>[];
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

void checkUnnamed5969(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(
      o[0] as api.GoogleCloudDialogflowV2beta1Context);
  checkGoogleCloudDialogflowV2beta1Context(
      o[1] as api.GoogleCloudDialogflowV2beta1Context);
}

core.Map<core.String, core.Object> buildUnnamed5970() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5970(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted88 = (o['x']) as core.Map;
  unittest.expect(casted88, unittest.hasLength(3));
  unittest.expect(casted88['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted88['bool'], unittest.equals(true));
  unittest.expect(casted88['string'], unittest.equals('foo'));
  var casted89 = (o['y']) as core.Map;
  unittest.expect(casted89, unittest.hasLength(3));
  unittest.expect(casted89['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted89['bool'], unittest.equals(true));
  unittest.expect(casted89['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2beta1SessionEntityType>
    buildUnnamed5971() {
  var o = <api.GoogleCloudDialogflowV2beta1SessionEntityType>[];
  o.add(buildGoogleCloudDialogflowV2beta1SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2beta1SessionEntityType());
  return o;
}

void checkUnnamed5971(
    core.List<api.GoogleCloudDialogflowV2beta1SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1SessionEntityType(
      o[0] as api.GoogleCloudDialogflowV2beta1SessionEntityType);
  checkGoogleCloudDialogflowV2beta1SessionEntityType(
      o[1] as api.GoogleCloudDialogflowV2beta1SessionEntityType);
}

core.int buildCounterGoogleCloudDialogflowV2beta1WebhookResponse = 0;
api.GoogleCloudDialogflowV2beta1WebhookResponse
    buildGoogleCloudDialogflowV2beta1WebhookResponse() {
  var o = api.GoogleCloudDialogflowV2beta1WebhookResponse();
  buildCounterGoogleCloudDialogflowV2beta1WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1WebhookResponse < 3) {
    o.endInteraction = true;
    o.followupEventInput = buildGoogleCloudDialogflowV2beta1EventInput();
    o.fulfillmentMessages = buildUnnamed5968();
    o.fulfillmentText = 'foo';
    o.outputContexts = buildUnnamed5969();
    o.payload = buildUnnamed5970();
    o.sessionEntityTypes = buildUnnamed5971();
    o.source = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1WebhookResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1WebhookResponse(
    api.GoogleCloudDialogflowV2beta1WebhookResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1WebhookResponse < 3) {
    unittest.expect(o.endInteraction, unittest.isTrue);
    checkGoogleCloudDialogflowV2beta1EventInput(
        o.followupEventInput as api.GoogleCloudDialogflowV2beta1EventInput);
    checkUnnamed5968(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkUnnamed5969(o.outputContexts);
    checkUnnamed5970(o.payload);
    checkUnnamed5971(o.sessionEntityTypes);
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1WebhookResponse--;
}

core.int
    buildCounterGoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata =
    0;
api.GoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata
    buildGoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata() {
  var o = api.GoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata();
  buildCounterGoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata <
      3) {
    o.genericMetadata =
        buildGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata();
  }
  buildCounterGoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata(
    api.GoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata o) {
  buildCounterGoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata <
      3) {
    checkGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata(o
            .genericMetadata
        as api.GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata);
  }
  buildCounterGoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata =
    0;
api.GoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata
    buildGoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata() {
  var o = api.GoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata();
  buildCounterGoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata <
      3) {
    o.genericMetadata =
        buildGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata();
  }
  buildCounterGoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata(
    api.GoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata o) {
  buildCounterGoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata <
      3) {
    checkGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata(o
            .genericMetadata
        as api.GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata);
  }
  buildCounterGoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata =
    0;
api.GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata
    buildGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata() {
  var o = api.GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata();
  buildCounterGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata <
      3) {
    o.state = 'foo';
  }
  buildCounterGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata(
    api.GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata o) {
  buildCounterGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata <
      3) {
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata =
    0;
api.GoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata
    buildGoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata() {
  var o = api.GoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata();
  buildCounterGoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata <
      3) {
    o.genericMetadata =
        buildGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata();
  }
  buildCounterGoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata(
    api.GoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata o) {
  buildCounterGoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata <
      3) {
    checkGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata(o
            .genericMetadata
        as api.GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata);
  }
  buildCounterGoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata--;
}

core.List<api.GoogleRpcStatus> buildUnnamed5972() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed5972(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int buildCounterGoogleCloudDialogflowV3alpha1ImportDocumentsResponse = 0;
api.GoogleCloudDialogflowV3alpha1ImportDocumentsResponse
    buildGoogleCloudDialogflowV3alpha1ImportDocumentsResponse() {
  var o = api.GoogleCloudDialogflowV3alpha1ImportDocumentsResponse();
  buildCounterGoogleCloudDialogflowV3alpha1ImportDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ImportDocumentsResponse < 3) {
    o.warnings = buildUnnamed5972();
  }
  buildCounterGoogleCloudDialogflowV3alpha1ImportDocumentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV3alpha1ImportDocumentsResponse(
    api.GoogleCloudDialogflowV3alpha1ImportDocumentsResponse o) {
  buildCounterGoogleCloudDialogflowV3alpha1ImportDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ImportDocumentsResponse < 3) {
    checkUnnamed5972(o.warnings);
  }
  buildCounterGoogleCloudDialogflowV3alpha1ImportDocumentsResponse--;
}

core.int
    buildCounterGoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata =
    0;
api.GoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata
    buildGoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata() {
  var o = api.GoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata();
  buildCounterGoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata <
      3) {
    o.genericMetadata =
        buildGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata();
  }
  buildCounterGoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata(
    api.GoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata o) {
  buildCounterGoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata <
      3) {
    checkGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata(o
            .genericMetadata
        as api.GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata);
  }
  buildCounterGoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata =
    0;
api.GoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata
    buildGoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata() {
  var o = api.GoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata();
  buildCounterGoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata <
      3) {
    o.genericMetadata =
        buildGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata();
  }
  buildCounterGoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata--;
  return o;
}

void checkGoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata(
    api.GoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata o) {
  buildCounterGoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata <
      3) {
    checkGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata(o
            .genericMetadata
        as api.GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata);
  }
  buildCounterGoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed5973() {
  var o = <api.GoogleLongrunningOperation>[];
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

void checkUnnamed5973(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0] as api.GoogleLongrunningOperation);
  checkGoogleLongrunningOperation(o[1] as api.GoogleLongrunningOperation);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  var o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed5973();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5973(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed5974() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5974(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted90 = (o['x']) as core.Map;
  unittest.expect(casted90, unittest.hasLength(3));
  unittest.expect(casted90['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted90['bool'], unittest.equals(true));
  unittest.expect(casted90['string'], unittest.equals('foo'));
  var casted91 = (o['y']) as core.Map;
  unittest.expect(casted91, unittest.hasLength(3));
  unittest.expect(casted91['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted91['bool'], unittest.equals(true));
  unittest.expect(casted91['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed5975() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5975(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted92 = (o['x']) as core.Map;
  unittest.expect(casted92, unittest.hasLength(3));
  unittest.expect(casted92['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted92['bool'], unittest.equals(true));
  unittest.expect(casted92['string'], unittest.equals('foo'));
  var casted93 = (o['y']) as core.Map;
  unittest.expect(casted93, unittest.hasLength(3));
  unittest.expect(casted93['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted93['bool'], unittest.equals(true));
  unittest.expect(casted93['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  var o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed5974();
    o.name = 'foo';
    o.response = buildUnnamed5975();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error as api.GoogleRpcStatus);
    checkUnnamed5974(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5975(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  var o = api.GoogleProtobufEmpty();
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

core.Map<core.String, core.Object> buildUnnamed5976() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5976(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted94 = (o['x']) as core.Map;
  unittest.expect(casted94, unittest.hasLength(3));
  unittest.expect(casted94['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted94['bool'], unittest.equals(true));
  unittest.expect(casted94['string'], unittest.equals('foo'));
  var casted95 = (o['y']) as core.Map;
  unittest.expect(casted95, unittest.hasLength(3));
  unittest.expect(casted95['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted95['bool'], unittest.equals(true));
  unittest.expect(casted95['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed5977() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed5976());
  o.add(buildUnnamed5976());
  return o;
}

void checkUnnamed5977(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5976(o[0]);
  checkUnnamed5976(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  var o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5977();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed5977(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeLatLng = 0;
api.GoogleTypeLatLng buildGoogleTypeLatLng() {
  var o = api.GoogleTypeLatLng();
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
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterGoogleTypeLatLng--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Agent', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3Agent();
      var od = api.GoogleCloudDialogflowCxV3Agent.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3Agent(
          od as api.GoogleCloudDialogflowCxV3Agent);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3AgentValidationResult',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3AgentValidationResult();
      var od = api.GoogleCloudDialogflowCxV3AgentValidationResult.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3AgentValidationResult(
          od as api.GoogleCloudDialogflowCxV3AgentValidationResult);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3AudioInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3AudioInput();
      var od = api.GoogleCloudDialogflowCxV3AudioInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3AudioInput(
          od as api.GoogleCloudDialogflowCxV3AudioInput);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest();
      var od =
          api.GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest(
          od as api.GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3BatchRunTestCasesMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3BatchRunTestCasesMetadata();
      var od = api.GoogleCloudDialogflowCxV3BatchRunTestCasesMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3BatchRunTestCasesMetadata(
          od as api.GoogleCloudDialogflowCxV3BatchRunTestCasesMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3BatchRunTestCasesRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3BatchRunTestCasesRequest();
      var od = api.GoogleCloudDialogflowCxV3BatchRunTestCasesRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3BatchRunTestCasesRequest(
          od as api.GoogleCloudDialogflowCxV3BatchRunTestCasesRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3BatchRunTestCasesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3BatchRunTestCasesResponse();
      var od = api.GoogleCloudDialogflowCxV3BatchRunTestCasesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3BatchRunTestCasesResponse(
          od as api.GoogleCloudDialogflowCxV3BatchRunTestCasesResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3CalculateCoverageResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3CalculateCoverageResponse();
      var od = api.GoogleCloudDialogflowCxV3CalculateCoverageResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3CalculateCoverageResponse(
          od as api.GoogleCloudDialogflowCxV3CalculateCoverageResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ConversationTurn', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ConversationTurn();
      var od =
          api.GoogleCloudDialogflowCxV3ConversationTurn.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3ConversationTurn(
          od as api.GoogleCloudDialogflowCxV3ConversationTurn);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ConversationTurnUserInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ConversationTurnUserInput();
      var od = api.GoogleCloudDialogflowCxV3ConversationTurnUserInput.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3ConversationTurnUserInput(
          od as api.GoogleCloudDialogflowCxV3ConversationTurnUserInput);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput();
      var od = api.GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput(od
          as api.GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3CreateDocumentOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3CreateDocumentOperationMetadata();
      var od =
          api.GoogleCloudDialogflowCxV3CreateDocumentOperationMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3CreateDocumentOperationMetadata(
          od as api.GoogleCloudDialogflowCxV3CreateDocumentOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3CreateVersionOperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3CreateVersionOperationMetadata();
      var od =
          api.GoogleCloudDialogflowCxV3CreateVersionOperationMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3CreateVersionOperationMetadata(
          od as api.GoogleCloudDialogflowCxV3CreateVersionOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata();
      var od =
          api.GoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata(
          od as api.GoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3DetectIntentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3DetectIntentRequest();
      var od =
          api.GoogleCloudDialogflowCxV3DetectIntentRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3DetectIntentRequest(
          od as api.GoogleCloudDialogflowCxV3DetectIntentRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3DetectIntentResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3DetectIntentResponse();
      var od = api.GoogleCloudDialogflowCxV3DetectIntentResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3DetectIntentResponse(
          od as api.GoogleCloudDialogflowCxV3DetectIntentResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3DtmfInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3DtmfInput();
      var od = api.GoogleCloudDialogflowCxV3DtmfInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3DtmfInput(
          od as api.GoogleCloudDialogflowCxV3DtmfInput);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3EntityType', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3EntityType();
      var od = api.GoogleCloudDialogflowCxV3EntityType.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3EntityType(
          od as api.GoogleCloudDialogflowCxV3EntityType);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3EntityTypeEntity', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3EntityTypeEntity();
      var od =
          api.GoogleCloudDialogflowCxV3EntityTypeEntity.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3EntityTypeEntity(
          od as api.GoogleCloudDialogflowCxV3EntityTypeEntity);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase();
      var od = api.GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase(
          od as api.GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Environment', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3Environment();
      var od = api.GoogleCloudDialogflowCxV3Environment.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3Environment(
          od as api.GoogleCloudDialogflowCxV3Environment);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3EnvironmentVersionConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3EnvironmentVersionConfig();
      var od = api.GoogleCloudDialogflowCxV3EnvironmentVersionConfig.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3EnvironmentVersionConfig(
          od as api.GoogleCloudDialogflowCxV3EnvironmentVersionConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3EventHandler', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3EventHandler();
      var od = api.GoogleCloudDialogflowCxV3EventHandler.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3EventHandler(
          od as api.GoogleCloudDialogflowCxV3EventHandler);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3EventInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3EventInput();
      var od = api.GoogleCloudDialogflowCxV3EventInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3EventInput(
          od as api.GoogleCloudDialogflowCxV3EventInput);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Experiment', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3Experiment();
      var od = api.GoogleCloudDialogflowCxV3Experiment.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3Experiment(
          od as api.GoogleCloudDialogflowCxV3Experiment);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ExperimentDefinition',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ExperimentDefinition();
      var od = api.GoogleCloudDialogflowCxV3ExperimentDefinition.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3ExperimentDefinition(
          od as api.GoogleCloudDialogflowCxV3ExperimentDefinition);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ExperimentResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ExperimentResult();
      var od =
          api.GoogleCloudDialogflowCxV3ExperimentResult.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3ExperimentResult(
          od as api.GoogleCloudDialogflowCxV3ExperimentResult);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval();
      var od = api.GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval(od
          as api.GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ExperimentResultMetric',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ExperimentResultMetric();
      var od = api.GoogleCloudDialogflowCxV3ExperimentResultMetric.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3ExperimentResultMetric(
          od as api.GoogleCloudDialogflowCxV3ExperimentResultMetric);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics();
      var od =
          api.GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics(
          od as api.GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ExportAgentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ExportAgentRequest();
      var od =
          api.GoogleCloudDialogflowCxV3ExportAgentRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3ExportAgentRequest(
          od as api.GoogleCloudDialogflowCxV3ExportAgentRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ExportAgentResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ExportAgentResponse();
      var od =
          api.GoogleCloudDialogflowCxV3ExportAgentResponse.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3ExportAgentResponse(
          od as api.GoogleCloudDialogflowCxV3ExportAgentResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ExportTestCasesMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ExportTestCasesMetadata();
      var od = api.GoogleCloudDialogflowCxV3ExportTestCasesMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3ExportTestCasesMetadata(
          od as api.GoogleCloudDialogflowCxV3ExportTestCasesMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ExportTestCasesRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ExportTestCasesRequest();
      var od = api.GoogleCloudDialogflowCxV3ExportTestCasesRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3ExportTestCasesRequest(
          od as api.GoogleCloudDialogflowCxV3ExportTestCasesRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ExportTestCasesResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ExportTestCasesResponse();
      var od = api.GoogleCloudDialogflowCxV3ExportTestCasesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3ExportTestCasesResponse(
          od as api.GoogleCloudDialogflowCxV3ExportTestCasesResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Flow', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3Flow();
      var od = api.GoogleCloudDialogflowCxV3Flow.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3Flow(
          od as api.GoogleCloudDialogflowCxV3Flow);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3FlowValidationResult',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3FlowValidationResult();
      var od = api.GoogleCloudDialogflowCxV3FlowValidationResult.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3FlowValidationResult(
          od as api.GoogleCloudDialogflowCxV3FlowValidationResult);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Form', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3Form();
      var od = api.GoogleCloudDialogflowCxV3Form.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3Form(
          od as api.GoogleCloudDialogflowCxV3Form);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3FormParameter', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3FormParameter();
      var od = api.GoogleCloudDialogflowCxV3FormParameter.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3FormParameter(
          od as api.GoogleCloudDialogflowCxV3FormParameter);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3FormParameterFillBehavior', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3FormParameterFillBehavior();
      var od = api.GoogleCloudDialogflowCxV3FormParameterFillBehavior.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3FormParameterFillBehavior(
          od as api.GoogleCloudDialogflowCxV3FormParameterFillBehavior);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3FulfillIntentRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3FulfillIntentRequest();
      var od = api.GoogleCloudDialogflowCxV3FulfillIntentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3FulfillIntentRequest(
          od as api.GoogleCloudDialogflowCxV3FulfillIntentRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3FulfillIntentResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3FulfillIntentResponse();
      var od = api.GoogleCloudDialogflowCxV3FulfillIntentResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3FulfillIntentResponse(
          od as api.GoogleCloudDialogflowCxV3FulfillIntentResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Fulfillment', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3Fulfillment();
      var od = api.GoogleCloudDialogflowCxV3Fulfillment.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3Fulfillment(
          od as api.GoogleCloudDialogflowCxV3Fulfillment);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3FulfillmentConditionalCases', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3FulfillmentConditionalCases();
      var od =
          api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3FulfillmentConditionalCases(
          od as api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase();
      var od =
          api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase(
          od as api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent();
      var od =
          api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent(
          od as api
              .GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3FulfillmentSetParameterAction', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3FulfillmentSetParameterAction();
      var od =
          api.GoogleCloudDialogflowCxV3FulfillmentSetParameterAction.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3FulfillmentSetParameterAction(
          od as api.GoogleCloudDialogflowCxV3FulfillmentSetParameterAction);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata();
      var od = api.GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata(
          od as api.GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata();
      var od = api.GoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata(
          od as api.GoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ImportDocumentsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ImportDocumentsResponse();
      var od = api.GoogleCloudDialogflowCxV3ImportDocumentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3ImportDocumentsResponse(
          od as api.GoogleCloudDialogflowCxV3ImportDocumentsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ImportTestCasesMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ImportTestCasesMetadata();
      var od = api.GoogleCloudDialogflowCxV3ImportTestCasesMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3ImportTestCasesMetadata(
          od as api.GoogleCloudDialogflowCxV3ImportTestCasesMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ImportTestCasesRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ImportTestCasesRequest();
      var od = api.GoogleCloudDialogflowCxV3ImportTestCasesRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3ImportTestCasesRequest(
          od as api.GoogleCloudDialogflowCxV3ImportTestCasesRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ImportTestCasesResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ImportTestCasesResponse();
      var od = api.GoogleCloudDialogflowCxV3ImportTestCasesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3ImportTestCasesResponse(
          od as api.GoogleCloudDialogflowCxV3ImportTestCasesResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3InputAudioConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3InputAudioConfig();
      var od =
          api.GoogleCloudDialogflowCxV3InputAudioConfig.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3InputAudioConfig(
          od as api.GoogleCloudDialogflowCxV3InputAudioConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Intent', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3Intent();
      var od = api.GoogleCloudDialogflowCxV3Intent.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3Intent(
          od as api.GoogleCloudDialogflowCxV3Intent);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3IntentCoverage', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3IntentCoverage();
      var od = api.GoogleCloudDialogflowCxV3IntentCoverage.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3IntentCoverage(
          od as api.GoogleCloudDialogflowCxV3IntentCoverage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3IntentCoverageIntent',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3IntentCoverageIntent();
      var od = api.GoogleCloudDialogflowCxV3IntentCoverageIntent.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3IntentCoverageIntent(
          od as api.GoogleCloudDialogflowCxV3IntentCoverageIntent);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3IntentInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3IntentInput();
      var od = api.GoogleCloudDialogflowCxV3IntentInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3IntentInput(
          od as api.GoogleCloudDialogflowCxV3IntentInput);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3IntentParameter', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3IntentParameter();
      var od =
          api.GoogleCloudDialogflowCxV3IntentParameter.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3IntentParameter(
          od as api.GoogleCloudDialogflowCxV3IntentParameter);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3IntentTrainingPhrase',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3IntentTrainingPhrase();
      var od = api.GoogleCloudDialogflowCxV3IntentTrainingPhrase.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3IntentTrainingPhrase(
          od as api.GoogleCloudDialogflowCxV3IntentTrainingPhrase);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3IntentTrainingPhrasePart',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3IntentTrainingPhrasePart();
      var od = api.GoogleCloudDialogflowCxV3IntentTrainingPhrasePart.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3IntentTrainingPhrasePart(
          od as api.GoogleCloudDialogflowCxV3IntentTrainingPhrasePart);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListAgentsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ListAgentsResponse();
      var od =
          api.GoogleCloudDialogflowCxV3ListAgentsResponse.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3ListAgentsResponse(
          od as api.GoogleCloudDialogflowCxV3ListAgentsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListEntityTypesResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ListEntityTypesResponse();
      var od = api.GoogleCloudDialogflowCxV3ListEntityTypesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3ListEntityTypesResponse(
          od as api.GoogleCloudDialogflowCxV3ListEntityTypesResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListEnvironmentsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ListEnvironmentsResponse();
      var od = api.GoogleCloudDialogflowCxV3ListEnvironmentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3ListEnvironmentsResponse(
          od as api.GoogleCloudDialogflowCxV3ListEnvironmentsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListExperimentsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ListExperimentsResponse();
      var od = api.GoogleCloudDialogflowCxV3ListExperimentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3ListExperimentsResponse(
          od as api.GoogleCloudDialogflowCxV3ListExperimentsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListFlowsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ListFlowsResponse();
      var od =
          api.GoogleCloudDialogflowCxV3ListFlowsResponse.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3ListFlowsResponse(
          od as api.GoogleCloudDialogflowCxV3ListFlowsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListIntentsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ListIntentsResponse();
      var od =
          api.GoogleCloudDialogflowCxV3ListIntentsResponse.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3ListIntentsResponse(
          od as api.GoogleCloudDialogflowCxV3ListIntentsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListPagesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ListPagesResponse();
      var od =
          api.GoogleCloudDialogflowCxV3ListPagesResponse.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3ListPagesResponse(
          od as api.GoogleCloudDialogflowCxV3ListPagesResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ListSecuritySettingsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ListSecuritySettingsResponse();
      var od =
          api.GoogleCloudDialogflowCxV3ListSecuritySettingsResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3ListSecuritySettingsResponse(
          od as api.GoogleCloudDialogflowCxV3ListSecuritySettingsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse();
      var od =
          api.GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse(
          od as api.GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ListTestCaseResultsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ListTestCaseResultsResponse();
      var od =
          api.GoogleCloudDialogflowCxV3ListTestCaseResultsResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3ListTestCaseResultsResponse(
          od as api.GoogleCloudDialogflowCxV3ListTestCaseResultsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListTestCasesResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ListTestCasesResponse();
      var od = api.GoogleCloudDialogflowCxV3ListTestCasesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3ListTestCasesResponse(
          od as api.GoogleCloudDialogflowCxV3ListTestCasesResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse();
      var od = api.GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse(
          od as api.GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListVersionsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ListVersionsResponse();
      var od = api.GoogleCloudDialogflowCxV3ListVersionsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3ListVersionsResponse(
          od as api.GoogleCloudDialogflowCxV3ListVersionsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListWebhooksResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ListWebhooksResponse();
      var od = api.GoogleCloudDialogflowCxV3ListWebhooksResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3ListWebhooksResponse(
          od as api.GoogleCloudDialogflowCxV3ListWebhooksResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3LoadVersionRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3LoadVersionRequest();
      var od =
          api.GoogleCloudDialogflowCxV3LoadVersionRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3LoadVersionRequest(
          od as api.GoogleCloudDialogflowCxV3LoadVersionRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse();
      var od = api.GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse(
          od as api.GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Match', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3Match();
      var od = api.GoogleCloudDialogflowCxV3Match.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3Match(
          od as api.GoogleCloudDialogflowCxV3Match);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3MatchIntentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3MatchIntentRequest();
      var od =
          api.GoogleCloudDialogflowCxV3MatchIntentRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3MatchIntentRequest(
          od as api.GoogleCloudDialogflowCxV3MatchIntentRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3MatchIntentResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3MatchIntentResponse();
      var od =
          api.GoogleCloudDialogflowCxV3MatchIntentResponse.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3MatchIntentResponse(
          od as api.GoogleCloudDialogflowCxV3MatchIntentResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3NluSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3NluSettings();
      var od = api.GoogleCloudDialogflowCxV3NluSettings.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3NluSettings(
          od as api.GoogleCloudDialogflowCxV3NluSettings);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3OutputAudioConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3OutputAudioConfig();
      var od =
          api.GoogleCloudDialogflowCxV3OutputAudioConfig.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3OutputAudioConfig(
          od as api.GoogleCloudDialogflowCxV3OutputAudioConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Page', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3Page();
      var od = api.GoogleCloudDialogflowCxV3Page.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3Page(
          od as api.GoogleCloudDialogflowCxV3Page);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3PageInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3PageInfo();
      var od = api.GoogleCloudDialogflowCxV3PageInfo.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3PageInfo(
          od as api.GoogleCloudDialogflowCxV3PageInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3PageInfoFormInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3PageInfoFormInfo();
      var od =
          api.GoogleCloudDialogflowCxV3PageInfoFormInfo.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3PageInfoFormInfo(
          od as api.GoogleCloudDialogflowCxV3PageInfoFormInfo);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo();
      var od =
          api.GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo(
          od as api.GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3QueryInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3QueryInput();
      var od = api.GoogleCloudDialogflowCxV3QueryInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3QueryInput(
          od as api.GoogleCloudDialogflowCxV3QueryInput);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3QueryParameters', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3QueryParameters();
      var od =
          api.GoogleCloudDialogflowCxV3QueryParameters.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3QueryParameters(
          od as api.GoogleCloudDialogflowCxV3QueryParameters);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3QueryResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3QueryResult();
      var od = api.GoogleCloudDialogflowCxV3QueryResult.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3QueryResult(
          od as api.GoogleCloudDialogflowCxV3QueryResult);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata();
      var od =
          api.GoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata(
          od as api.GoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ResourceName', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ResourceName();
      var od = api.GoogleCloudDialogflowCxV3ResourceName.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3ResourceName(
          od as api.GoogleCloudDialogflowCxV3ResourceName);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ResponseMessage', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ResponseMessage();
      var od =
          api.GoogleCloudDialogflowCxV3ResponseMessage.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3ResponseMessage(
          od as api.GoogleCloudDialogflowCxV3ResponseMessage);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess();
      var od = api.GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess(od
          as api.GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ResponseMessageEndInteraction', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ResponseMessageEndInteraction();
      var od =
          api.GoogleCloudDialogflowCxV3ResponseMessageEndInteraction.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3ResponseMessageEndInteraction(
          od as api.GoogleCloudDialogflowCxV3ResponseMessageEndInteraction);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff();
      var od =
          api.GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff(
          od as api.GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ResponseMessageMixedAudio', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ResponseMessageMixedAudio();
      var od = api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudio.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3ResponseMessageMixedAudio(
          od as api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudio);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment();
      var od = api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment(
          od as api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText();
      var od =
          api.GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText(
          od as api.GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ResponseMessagePlayAudio',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ResponseMessagePlayAudio();
      var od = api.GoogleCloudDialogflowCxV3ResponseMessagePlayAudio.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3ResponseMessagePlayAudio(
          od as api.GoogleCloudDialogflowCxV3ResponseMessagePlayAudio);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ResponseMessageText', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ResponseMessageText();
      var od =
          api.GoogleCloudDialogflowCxV3ResponseMessageText.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3ResponseMessageText(
          od as api.GoogleCloudDialogflowCxV3ResponseMessageText);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3RestoreAgentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3RestoreAgentRequest();
      var od =
          api.GoogleCloudDialogflowCxV3RestoreAgentRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3RestoreAgentRequest(
          od as api.GoogleCloudDialogflowCxV3RestoreAgentRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3RunTestCaseMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3RunTestCaseMetadata();
      var od =
          api.GoogleCloudDialogflowCxV3RunTestCaseMetadata.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3RunTestCaseMetadata(
          od as api.GoogleCloudDialogflowCxV3RunTestCaseMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3RunTestCaseRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3RunTestCaseRequest();
      var od =
          api.GoogleCloudDialogflowCxV3RunTestCaseRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3RunTestCaseRequest(
          od as api.GoogleCloudDialogflowCxV3RunTestCaseRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3RunTestCaseResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3RunTestCaseResponse();
      var od =
          api.GoogleCloudDialogflowCxV3RunTestCaseResponse.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3RunTestCaseResponse(
          od as api.GoogleCloudDialogflowCxV3RunTestCaseResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3SecuritySettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3SecuritySettings();
      var od =
          api.GoogleCloudDialogflowCxV3SecuritySettings.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3SecuritySettings(
          od as api.GoogleCloudDialogflowCxV3SecuritySettings);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3SentimentAnalysisResult',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3SentimentAnalysisResult();
      var od = api.GoogleCloudDialogflowCxV3SentimentAnalysisResult.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3SentimentAnalysisResult(
          od as api.GoogleCloudDialogflowCxV3SentimentAnalysisResult);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3SessionEntityType', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3SessionEntityType();
      var od =
          api.GoogleCloudDialogflowCxV3SessionEntityType.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3SessionEntityType(
          od as api.GoogleCloudDialogflowCxV3SessionEntityType);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3SessionInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3SessionInfo();
      var od = api.GoogleCloudDialogflowCxV3SessionInfo.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3SessionInfo(
          od as api.GoogleCloudDialogflowCxV3SessionInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3SpeechToTextSettings',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3SpeechToTextSettings();
      var od = api.GoogleCloudDialogflowCxV3SpeechToTextSettings.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3SpeechToTextSettings(
          od as api.GoogleCloudDialogflowCxV3SpeechToTextSettings);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3StartExperimentRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3StartExperimentRequest();
      var od = api.GoogleCloudDialogflowCxV3StartExperimentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3StartExperimentRequest(
          od as api.GoogleCloudDialogflowCxV3StartExperimentRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3StopExperimentRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3StopExperimentRequest();
      var od = api.GoogleCloudDialogflowCxV3StopExperimentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3StopExperimentRequest(
          od as api.GoogleCloudDialogflowCxV3StopExperimentRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3SynthesizeSpeechConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3SynthesizeSpeechConfig();
      var od = api.GoogleCloudDialogflowCxV3SynthesizeSpeechConfig.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3SynthesizeSpeechConfig(
          od as api.GoogleCloudDialogflowCxV3SynthesizeSpeechConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TestCase', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3TestCase();
      var od = api.GoogleCloudDialogflowCxV3TestCase.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3TestCase(
          od as api.GoogleCloudDialogflowCxV3TestCase);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TestCaseError', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3TestCaseError();
      var od = api.GoogleCloudDialogflowCxV3TestCaseError.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3TestCaseError(
          od as api.GoogleCloudDialogflowCxV3TestCaseError);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TestCaseResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3TestCaseResult();
      var od = api.GoogleCloudDialogflowCxV3TestCaseResult.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3TestCaseResult(
          od as api.GoogleCloudDialogflowCxV3TestCaseResult);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TestConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3TestConfig();
      var od = api.GoogleCloudDialogflowCxV3TestConfig.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3TestConfig(
          od as api.GoogleCloudDialogflowCxV3TestConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TestError', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3TestError();
      var od = api.GoogleCloudDialogflowCxV3TestError.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3TestError(
          od as api.GoogleCloudDialogflowCxV3TestError);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TestRunDifference', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3TestRunDifference();
      var od =
          api.GoogleCloudDialogflowCxV3TestRunDifference.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3TestRunDifference(
          od as api.GoogleCloudDialogflowCxV3TestRunDifference);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TextInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3TextInput();
      var od = api.GoogleCloudDialogflowCxV3TextInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3TextInput(
          od as api.GoogleCloudDialogflowCxV3TextInput);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TrainFlowRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3TrainFlowRequest();
      var od =
          api.GoogleCloudDialogflowCxV3TrainFlowRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3TrainFlowRequest(
          od as api.GoogleCloudDialogflowCxV3TrainFlowRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TransitionCoverage', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3TransitionCoverage();
      var od =
          api.GoogleCloudDialogflowCxV3TransitionCoverage.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3TransitionCoverage(
          od as api.GoogleCloudDialogflowCxV3TransitionCoverage);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3TransitionCoverageTransition', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3TransitionCoverageTransition();
      var od =
          api.GoogleCloudDialogflowCxV3TransitionCoverageTransition.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3TransitionCoverageTransition(
          od as api.GoogleCloudDialogflowCxV3TransitionCoverageTransition);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode();
      var od = api.GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode(
          od as api.GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TransitionRoute', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3TransitionRoute();
      var od =
          api.GoogleCloudDialogflowCxV3TransitionRoute.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3TransitionRoute(
          od as api.GoogleCloudDialogflowCxV3TransitionRoute);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TransitionRouteGroup',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3TransitionRouteGroup();
      var od = api.GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3TransitionRouteGroup(
          od as api.GoogleCloudDialogflowCxV3TransitionRouteGroup);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage();
      var od =
          api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage(
          od as api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage();
      var od = api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage(od
          as api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition();
      var od =
          api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition(
          od as api
              .GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata();
      var od =
          api.GoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata(
          od as api.GoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ValidateAgentRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ValidateAgentRequest();
      var od = api.GoogleCloudDialogflowCxV3ValidateAgentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3ValidateAgentRequest(
          od as api.GoogleCloudDialogflowCxV3ValidateAgentRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ValidateFlowRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ValidateFlowRequest();
      var od =
          api.GoogleCloudDialogflowCxV3ValidateFlowRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3ValidateFlowRequest(
          od as api.GoogleCloudDialogflowCxV3ValidateFlowRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ValidationMessage', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3ValidationMessage();
      var od =
          api.GoogleCloudDialogflowCxV3ValidationMessage.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3ValidationMessage(
          od as api.GoogleCloudDialogflowCxV3ValidationMessage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3VariantsHistory', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3VariantsHistory();
      var od =
          api.GoogleCloudDialogflowCxV3VariantsHistory.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3VariantsHistory(
          od as api.GoogleCloudDialogflowCxV3VariantsHistory);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Version', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3Version();
      var od = api.GoogleCloudDialogflowCxV3Version.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3Version(
          od as api.GoogleCloudDialogflowCxV3Version);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3VersionVariants', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3VersionVariants();
      var od =
          api.GoogleCloudDialogflowCxV3VersionVariants.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3VersionVariants(
          od as api.GoogleCloudDialogflowCxV3VersionVariants);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3VersionVariantsVariant',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3VersionVariantsVariant();
      var od = api.GoogleCloudDialogflowCxV3VersionVariantsVariant.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3VersionVariantsVariant(
          od as api.GoogleCloudDialogflowCxV3VersionVariantsVariant);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3VoiceSelectionParams',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3VoiceSelectionParams();
      var od = api.GoogleCloudDialogflowCxV3VoiceSelectionParams.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3VoiceSelectionParams(
          od as api.GoogleCloudDialogflowCxV3VoiceSelectionParams);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Webhook', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3Webhook();
      var od = api.GoogleCloudDialogflowCxV3Webhook.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3Webhook(
          od as api.GoogleCloudDialogflowCxV3Webhook);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3WebhookGenericWebService',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3WebhookGenericWebService();
      var od = api.GoogleCloudDialogflowCxV3WebhookGenericWebService.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3WebhookGenericWebService(
          od as api.GoogleCloudDialogflowCxV3WebhookGenericWebService);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3WebhookRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3WebhookRequest();
      var od = api.GoogleCloudDialogflowCxV3WebhookRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3WebhookRequest(
          od as api.GoogleCloudDialogflowCxV3WebhookRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo();
      var od =
          api.GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo(
          od as api.GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3WebhookRequestIntentInfo',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3WebhookRequestIntentInfo();
      var od = api.GoogleCloudDialogflowCxV3WebhookRequestIntentInfo.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3WebhookRequestIntentInfo(
          od as api.GoogleCloudDialogflowCxV3WebhookRequestIntentInfo);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue();
      var od =
          api.GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue(
          od as api
              .GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult();
      var od =
          api.GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult(od
          as api
              .GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3WebhookResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3WebhookResponse();
      var od =
          api.GoogleCloudDialogflowCxV3WebhookResponse.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3WebhookResponse(
          od as api.GoogleCloudDialogflowCxV3WebhookResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse();
      var od = api.GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse(od
          as api.GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1AudioInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1AudioInput();
      var od =
          api.GoogleCloudDialogflowCxV3beta1AudioInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1AudioInput(
          od as api.GoogleCloudDialogflowCxV3beta1AudioInput);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata();
      var od =
          api.GoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata(
          od as api.GoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse();
      var od =
          api.GoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse(
          od as api.GoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1ConversationTurn',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1ConversationTurn();
      var od = api.GoogleCloudDialogflowCxV3beta1ConversationTurn.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ConversationTurn(
          od as api.GoogleCloudDialogflowCxV3beta1ConversationTurn);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput();
      var od =
          api.GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput(
          od as api.GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput();
      var od =
          api.GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput(od
          as api
              .GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata();
      var od = api.GoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata(od
          as api.GoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata();
      var od = api.GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata(od
          as api.GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata();
      var od = api.GoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata(od
          as api.GoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1DtmfInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1DtmfInput();
      var od = api.GoogleCloudDialogflowCxV3beta1DtmfInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1DtmfInput(
          od as api.GoogleCloudDialogflowCxV3beta1DtmfInput);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1EventHandler', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1EventHandler();
      var od =
          api.GoogleCloudDialogflowCxV3beta1EventHandler.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1EventHandler(
          od as api.GoogleCloudDialogflowCxV3beta1EventHandler);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1EventInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1EventInput();
      var od =
          api.GoogleCloudDialogflowCxV3beta1EventInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1EventInput(
          od as api.GoogleCloudDialogflowCxV3beta1EventInput);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1ExportAgentResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1ExportAgentResponse();
      var od = api.GoogleCloudDialogflowCxV3beta1ExportAgentResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ExportAgentResponse(
          od as api.GoogleCloudDialogflowCxV3beta1ExportAgentResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata();
      var od =
          api.GoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata(
          od as api.GoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1ExportTestCasesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1ExportTestCasesResponse();
      var od =
          api.GoogleCloudDialogflowCxV3beta1ExportTestCasesResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ExportTestCasesResponse(
          od as api.GoogleCloudDialogflowCxV3beta1ExportTestCasesResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Form', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1Form();
      var od = api.GoogleCloudDialogflowCxV3beta1Form.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1Form(
          od as api.GoogleCloudDialogflowCxV3beta1Form);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1FormParameter', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1FormParameter();
      var od =
          api.GoogleCloudDialogflowCxV3beta1FormParameter.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1FormParameter(
          od as api.GoogleCloudDialogflowCxV3beta1FormParameter);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior();
      var od =
          api.GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior(
          od as api.GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Fulfillment', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1Fulfillment();
      var od =
          api.GoogleCloudDialogflowCxV3beta1Fulfillment.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1Fulfillment(
          od as api.GoogleCloudDialogflowCxV3beta1Fulfillment);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases();
      var od = api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases(
          od as api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase();
      var od = api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase(od
          as api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent();
      var od =
          api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent(
          od as api
              .GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction();
      var od = api.GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction(od
          as api.GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata();
      var od =
          api.GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata(od
          as api
              .GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata();
      var od =
          api.GoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata(od
          as api
              .GoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1ImportDocumentsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1ImportDocumentsResponse();
      var od =
          api.GoogleCloudDialogflowCxV3beta1ImportDocumentsResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ImportDocumentsResponse(
          od as api.GoogleCloudDialogflowCxV3beta1ImportDocumentsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata();
      var od =
          api.GoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata(
          od as api.GoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1ImportTestCasesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1ImportTestCasesResponse();
      var od =
          api.GoogleCloudDialogflowCxV3beta1ImportTestCasesResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ImportTestCasesResponse(
          od as api.GoogleCloudDialogflowCxV3beta1ImportTestCasesResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1InputAudioConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1InputAudioConfig();
      var od = api.GoogleCloudDialogflowCxV3beta1InputAudioConfig.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1InputAudioConfig(
          od as api.GoogleCloudDialogflowCxV3beta1InputAudioConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Intent', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1Intent();
      var od = api.GoogleCloudDialogflowCxV3beta1Intent.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1Intent(
          od as api.GoogleCloudDialogflowCxV3beta1Intent);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1IntentInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1IntentInput();
      var od =
          api.GoogleCloudDialogflowCxV3beta1IntentInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1IntentInput(
          od as api.GoogleCloudDialogflowCxV3beta1IntentInput);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1IntentParameter',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1IntentParameter();
      var od = api.GoogleCloudDialogflowCxV3beta1IntentParameter.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1IntentParameter(
          od as api.GoogleCloudDialogflowCxV3beta1IntentParameter);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase();
      var od = api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase(
          od as api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart();
      var od =
          api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart(
          od as api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1Page', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1Page();
      var od = api.GoogleCloudDialogflowCxV3beta1Page.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1Page(
          od as api.GoogleCloudDialogflowCxV3beta1Page);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1PageInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1PageInfo();
      var od = api.GoogleCloudDialogflowCxV3beta1PageInfo.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1PageInfo(
          od as api.GoogleCloudDialogflowCxV3beta1PageInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1PageInfoFormInfo',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1PageInfoFormInfo();
      var od = api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfo.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1PageInfoFormInfo(
          od as api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfo);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo();
      var od = api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo(od
          as api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1QueryInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1QueryInput();
      var od =
          api.GoogleCloudDialogflowCxV3beta1QueryInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1QueryInput(
          od as api.GoogleCloudDialogflowCxV3beta1QueryInput);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata();
      var od = api.GoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata(od
          as api.GoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessage',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1ResponseMessage();
      var od = api.GoogleCloudDialogflowCxV3beta1ResponseMessage.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ResponseMessage(
          od as api.GoogleCloudDialogflowCxV3beta1ResponseMessage);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess();
      var od =
          api.GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess(od
          as api
              .GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction();
      var od = api.GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction(od
          as api.GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff();
      var od = api.GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff(od
          as api.GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio();
      var od =
          api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio(
          od as api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment();
      var od =
          api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment(od
          as api
              .GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText();
      var od = api.GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText(od
          as api.GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio();
      var od =
          api.GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio(
          od as api.GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageText',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1ResponseMessageText();
      var od = api.GoogleCloudDialogflowCxV3beta1ResponseMessageText.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ResponseMessageText(
          od as api.GoogleCloudDialogflowCxV3beta1ResponseMessageText);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1RunTestCaseMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1RunTestCaseMetadata();
      var od = api.GoogleCloudDialogflowCxV3beta1RunTestCaseMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1RunTestCaseMetadata(
          od as api.GoogleCloudDialogflowCxV3beta1RunTestCaseMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1RunTestCaseResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1RunTestCaseResponse();
      var od = api.GoogleCloudDialogflowCxV3beta1RunTestCaseResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1RunTestCaseResponse(
          od as api.GoogleCloudDialogflowCxV3beta1RunTestCaseResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1SessionInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1SessionInfo();
      var od =
          api.GoogleCloudDialogflowCxV3beta1SessionInfo.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1SessionInfo(
          od as api.GoogleCloudDialogflowCxV3beta1SessionInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1TestCase', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1TestCase();
      var od = api.GoogleCloudDialogflowCxV3beta1TestCase.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1TestCase(
          od as api.GoogleCloudDialogflowCxV3beta1TestCase);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1TestCaseError', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1TestCaseError();
      var od =
          api.GoogleCloudDialogflowCxV3beta1TestCaseError.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1TestCaseError(
          od as api.GoogleCloudDialogflowCxV3beta1TestCaseError);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1TestCaseResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1TestCaseResult();
      var od =
          api.GoogleCloudDialogflowCxV3beta1TestCaseResult.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1TestCaseResult(
          od as api.GoogleCloudDialogflowCxV3beta1TestCaseResult);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1TestConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1TestConfig();
      var od =
          api.GoogleCloudDialogflowCxV3beta1TestConfig.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1TestConfig(
          od as api.GoogleCloudDialogflowCxV3beta1TestConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1TestError', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1TestError();
      var od = api.GoogleCloudDialogflowCxV3beta1TestError.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1TestError(
          od as api.GoogleCloudDialogflowCxV3beta1TestError);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1TestRunDifference',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1TestRunDifference();
      var od = api.GoogleCloudDialogflowCxV3beta1TestRunDifference.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1TestRunDifference(
          od as api.GoogleCloudDialogflowCxV3beta1TestRunDifference);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1TextInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1TextInput();
      var od = api.GoogleCloudDialogflowCxV3beta1TextInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1TextInput(
          od as api.GoogleCloudDialogflowCxV3beta1TextInput);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1TransitionRoute',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1TransitionRoute();
      var od = api.GoogleCloudDialogflowCxV3beta1TransitionRoute.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1TransitionRoute(
          od as api.GoogleCloudDialogflowCxV3beta1TransitionRoute);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata();
      var od = api.GoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata(od
          as api.GoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1WebhookRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1WebhookRequest();
      var od =
          api.GoogleCloudDialogflowCxV3beta1WebhookRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1WebhookRequest(
          od as api.GoogleCloudDialogflowCxV3beta1WebhookRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo();
      var od = api.GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo(od
          as api.GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo();
      var od =
          api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo(
          od as api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue();
      var od =
          api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue(
          od as api
              .GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult();
      var od =
          api.GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult(
          od as api
              .GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1WebhookResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1WebhookResponse();
      var od = api.GoogleCloudDialogflowCxV3beta1WebhookResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1WebhookResponse(
          od as api.GoogleCloudDialogflowCxV3beta1WebhookResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse();
      var od =
          api.GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse(od
          as api
              .GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2AnnotatedMessagePart', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2AnnotatedMessagePart();
      var od =
          api.GoogleCloudDialogflowV2AnnotatedMessagePart.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2AnnotatedMessagePart(
          od as api.GoogleCloudDialogflowV2AnnotatedMessagePart);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse();
      var od =
          api.GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse(
          od as api.GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2BatchUpdateIntentsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2BatchUpdateIntentsResponse();
      var od = api.GoogleCloudDialogflowV2BatchUpdateIntentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2BatchUpdateIntentsResponse(
          od as api.GoogleCloudDialogflowV2BatchUpdateIntentsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2Context', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2Context();
      var od = api.GoogleCloudDialogflowV2Context.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Context(
          od as api.GoogleCloudDialogflowV2Context);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ConversationEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2ConversationEvent();
      var od =
          api.GoogleCloudDialogflowV2ConversationEvent.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2ConversationEvent(
          od as api.GoogleCloudDialogflowV2ConversationEvent);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2EntityType', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2EntityType();
      var od = api.GoogleCloudDialogflowV2EntityType.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2EntityType(
          od as api.GoogleCloudDialogflowV2EntityType);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2EntityTypeEntity', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2EntityTypeEntity();
      var od = api.GoogleCloudDialogflowV2EntityTypeEntity.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2EntityTypeEntity(
          od as api.GoogleCloudDialogflowV2EntityTypeEntity);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2EventInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2EventInput();
      var od = api.GoogleCloudDialogflowV2EventInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2EventInput(
          od as api.GoogleCloudDialogflowV2EventInput);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ExportAgentResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2ExportAgentResponse();
      var od =
          api.GoogleCloudDialogflowV2ExportAgentResponse.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2ExportAgentResponse(
          od as api.GoogleCloudDialogflowV2ExportAgentResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2Intent', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2Intent();
      var od = api.GoogleCloudDialogflowV2Intent.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Intent(
          od as api.GoogleCloudDialogflowV2Intent);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentFollowupIntentInfo',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentFollowupIntentInfo();
      var od = api.GoogleCloudDialogflowV2IntentFollowupIntentInfo.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(
          od as api.GoogleCloudDialogflowV2IntentFollowupIntentInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessage', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessage();
      var od = api.GoogleCloudDialogflowV2IntentMessage.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentMessage(
          od as api.GoogleCloudDialogflowV2IntentMessage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageBasicCard',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageBasicCard();
      var od = api.GoogleCloudDialogflowV2IntentMessageBasicCard.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageBasicCard(
          od as api.GoogleCloudDialogflowV2IntentMessageBasicCard);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageBasicCardButton', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageBasicCardButton();
      var od = api.GoogleCloudDialogflowV2IntentMessageBasicCardButton.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(
          od as api.GoogleCloudDialogflowV2IntentMessageBasicCardButton);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction();
      var od =
          api.GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction(od
          as api
              .GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard();
      var od =
          api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard(
          od as api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem();
      var od =
          api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
          od as api
              .GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction();
      var od =
          api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction(
          od as api
              .GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageCard', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageCard();
      var od =
          api.GoogleCloudDialogflowV2IntentMessageCard.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageCard(
          od as api.GoogleCloudDialogflowV2IntentMessageCard);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageCardButton',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageCardButton();
      var od = api.GoogleCloudDialogflowV2IntentMessageCardButton.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageCardButton(
          od as api.GoogleCloudDialogflowV2IntentMessageCardButton);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageCarouselSelect', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageCarouselSelect();
      var od = api.GoogleCloudDialogflowV2IntentMessageCarouselSelect.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageCarouselSelect(
          od as api.GoogleCloudDialogflowV2IntentMessageCarouselSelect);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageCarouselSelectItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem();
      var od =
          api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageCarouselSelectItem(
          od as api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageColumnProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageColumnProperties();
      var od =
          api.GoogleCloudDialogflowV2IntentMessageColumnProperties.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageColumnProperties(
          od as api.GoogleCloudDialogflowV2IntentMessageColumnProperties);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageImage', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageImage();
      var od =
          api.GoogleCloudDialogflowV2IntentMessageImage.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageImage(
          od as api.GoogleCloudDialogflowV2IntentMessageImage);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion();
      var od =
          api.GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion(
          od as api.GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageListSelect',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageListSelect();
      var od = api.GoogleCloudDialogflowV2IntentMessageListSelect.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageListSelect(
          od as api.GoogleCloudDialogflowV2IntentMessageListSelect);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageListSelectItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageListSelectItem();
      var od = api.GoogleCloudDialogflowV2IntentMessageListSelectItem.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageListSelectItem(
          od as api.GoogleCloudDialogflowV2IntentMessageListSelectItem);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageMediaContent',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageMediaContent();
      var od = api.GoogleCloudDialogflowV2IntentMessageMediaContent.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageMediaContent(
          od as api.GoogleCloudDialogflowV2IntentMessageMediaContent);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject();
      var od =
          api.GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject(
          od as api
              .GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageQuickReplies',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageQuickReplies();
      var od = api.GoogleCloudDialogflowV2IntentMessageQuickReplies.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageQuickReplies(
          od as api.GoogleCloudDialogflowV2IntentMessageQuickReplies);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageSelectItemInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageSelectItemInfo();
      var od = api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(
          od as api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageSimpleResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageSimpleResponse();
      var od = api.GoogleCloudDialogflowV2IntentMessageSimpleResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageSimpleResponse(
          od as api.GoogleCloudDialogflowV2IntentMessageSimpleResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageSimpleResponses', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageSimpleResponses();
      var od = api.GoogleCloudDialogflowV2IntentMessageSimpleResponses.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageSimpleResponses(
          od as api.GoogleCloudDialogflowV2IntentMessageSimpleResponses);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageSuggestion',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageSuggestion();
      var od = api.GoogleCloudDialogflowV2IntentMessageSuggestion.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageSuggestion(
          od as api.GoogleCloudDialogflowV2IntentMessageSuggestion);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageSuggestions',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageSuggestions();
      var od = api.GoogleCloudDialogflowV2IntentMessageSuggestions.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageSuggestions(
          od as api.GoogleCloudDialogflowV2IntentMessageSuggestions);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageTableCard',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageTableCard();
      var od = api.GoogleCloudDialogflowV2IntentMessageTableCard.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageTableCard(
          od as api.GoogleCloudDialogflowV2IntentMessageTableCard);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageTableCardCell',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageTableCardCell();
      var od = api.GoogleCloudDialogflowV2IntentMessageTableCardCell.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageTableCardCell(
          od as api.GoogleCloudDialogflowV2IntentMessageTableCardCell);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageTableCardRow',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageTableCardRow();
      var od = api.GoogleCloudDialogflowV2IntentMessageTableCardRow.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageTableCardRow(
          od as api.GoogleCloudDialogflowV2IntentMessageTableCardRow);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageText', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentMessageText();
      var od =
          api.GoogleCloudDialogflowV2IntentMessageText.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageText(
          od as api.GoogleCloudDialogflowV2IntentMessageText);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentParameter', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentParameter();
      var od = api.GoogleCloudDialogflowV2IntentParameter.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentParameter(
          od as api.GoogleCloudDialogflowV2IntentParameter);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentTrainingPhrase', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentTrainingPhrase();
      var od =
          api.GoogleCloudDialogflowV2IntentTrainingPhrase.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentTrainingPhrase(
          od as api.GoogleCloudDialogflowV2IntentTrainingPhrase);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentTrainingPhrasePart',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentTrainingPhrasePart();
      var od = api.GoogleCloudDialogflowV2IntentTrainingPhrasePart.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentTrainingPhrasePart(
          od as api.GoogleCloudDialogflowV2IntentTrainingPhrasePart);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2Message', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2Message();
      var od = api.GoogleCloudDialogflowV2Message.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Message(
          od as api.GoogleCloudDialogflowV2Message);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2MessageAnnotation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2MessageAnnotation();
      var od =
          api.GoogleCloudDialogflowV2MessageAnnotation.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2MessageAnnotation(
          od as api.GoogleCloudDialogflowV2MessageAnnotation);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2OriginalDetectIntentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2OriginalDetectIntentRequest();
      var od = api.GoogleCloudDialogflowV2OriginalDetectIntentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2OriginalDetectIntentRequest(
          od as api.GoogleCloudDialogflowV2OriginalDetectIntentRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2QueryResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2QueryResult();
      var od = api.GoogleCloudDialogflowV2QueryResult.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2QueryResult(
          od as api.GoogleCloudDialogflowV2QueryResult);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2Sentiment', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2Sentiment();
      var od = api.GoogleCloudDialogflowV2Sentiment.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Sentiment(
          od as api.GoogleCloudDialogflowV2Sentiment);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2SentimentAnalysisResult',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2SentimentAnalysisResult();
      var od = api.GoogleCloudDialogflowV2SentimentAnalysisResult.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2SentimentAnalysisResult(
          od as api.GoogleCloudDialogflowV2SentimentAnalysisResult);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2SessionEntityType', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2SessionEntityType();
      var od =
          api.GoogleCloudDialogflowV2SessionEntityType.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2SessionEntityType(
          od as api.GoogleCloudDialogflowV2SessionEntityType);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2WebhookRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2WebhookRequest();
      var od = api.GoogleCloudDialogflowV2WebhookRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2WebhookRequest(
          od as api.GoogleCloudDialogflowV2WebhookRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2WebhookResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2WebhookResponse();
      var od = api.GoogleCloudDialogflowV2WebhookResponse.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2WebhookResponse(
          od as api.GoogleCloudDialogflowV2WebhookResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse();
      var od = api.GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse(
          od as api.GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse();
      var od =
          api.GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse(
          od as api.GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1Context', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1Context();
      var od = api.GoogleCloudDialogflowV2beta1Context.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1Context(
          od as api.GoogleCloudDialogflowV2beta1Context);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1EntityType', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1EntityType();
      var od = api.GoogleCloudDialogflowV2beta1EntityType.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1EntityType(
          od as api.GoogleCloudDialogflowV2beta1EntityType);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1EntityTypeEntity', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1EntityTypeEntity();
      var od =
          api.GoogleCloudDialogflowV2beta1EntityTypeEntity.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1EntityTypeEntity(
          od as api.GoogleCloudDialogflowV2beta1EntityTypeEntity);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1EventInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1EventInput();
      var od = api.GoogleCloudDialogflowV2beta1EventInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1EventInput(
          od as api.GoogleCloudDialogflowV2beta1EventInput);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1ExportAgentResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1ExportAgentResponse();
      var od = api.GoogleCloudDialogflowV2beta1ExportAgentResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1ExportAgentResponse(
          od as api.GoogleCloudDialogflowV2beta1ExportAgentResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1Intent', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1Intent();
      var od = api.GoogleCloudDialogflowV2beta1Intent.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1Intent(
          od as api.GoogleCloudDialogflowV2beta1Intent);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(
          od as api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1IntentMessage', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessage();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessage.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessage(
          od as api.GoogleCloudDialogflowV2beta1IntentMessage);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageBasicCard', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageBasicCard();
      var od = api.GoogleCloudDialogflowV2beta1IntentMessageBasicCard.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageBasicCard(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageBasicCard);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction(
          od as api
              .GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard();
      var od = api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard(od
          as api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
          od as api
              .GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction(
          od as api
              .GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1IntentMessageCard',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageCard();
      var od = api.GoogleCloudDialogflowV2beta1IntentMessageCard.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageCard(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageCard);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageCardButton', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageCardButton();
      var od = api.GoogleCloudDialogflowV2beta1IntentMessageCardButton.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageCardButton(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageCardButton);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem();
      var od = api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem(od
          as api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageColumnProperties',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageColumnProperties();
      var od = api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageColumnProperties(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1IntentMessageImage',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
      var od = api.GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageImage(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageImage);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion();
      var od = api.GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageListSelect', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageListSelect();
      var od = api.GoogleCloudDialogflowV2beta1IntentMessageListSelect.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageListSelect(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageListSelect);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageListSelectItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageListSelectItem(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageMediaContent', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageMediaContent();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageMediaContent.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageMediaContent(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageMediaContent);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject(
          od as api
              .GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageQuickReplies', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageQuickReplies();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageQuickReplies(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia(od
          as api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard();
      var od = api.GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction();
      var od = api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction(od
          as api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial(
          od as api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri(
          od as api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation(
          od as api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply();
      var od = api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmText',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageRbmText();
      var od = api.GoogleCloudDialogflowV2beta1IntentMessageRbmText.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmText(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageRbmText);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageSuggestion', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion();
      var od = api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageSuggestion(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageSuggestions', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageSuggestions();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageSuggestions.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageSuggestions(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageSuggestions);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageTableCard', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageTableCard();
      var od = api.GoogleCloudDialogflowV2beta1IntentMessageTableCard.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageTableCard(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageTableCard);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageTableCardCell', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageTableCardCell();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageTableCardCell.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageTableCardCell(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageTableCardCell);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageTableCardRow', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageTableCardRow();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageTableCardRow(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio();
      var od = api.GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio(od
          as api.GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech(od
          as api
              .GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall(od
          as api
              .GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1IntentMessageText',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageText();
      var od = api.GoogleCloudDialogflowV2beta1IntentMessageText.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageText(
          od as api.GoogleCloudDialogflowV2beta1IntentMessageText);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1IntentParameter', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentParameter();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentParameter.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentParameter(
          od as api.GoogleCloudDialogflowV2beta1IntentParameter);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1IntentTrainingPhrase',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase();
      var od = api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentTrainingPhrase(
          od as api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart();
      var od =
          api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart(
          od as api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1KnowledgeAnswers', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1KnowledgeAnswers();
      var od =
          api.GoogleCloudDialogflowV2beta1KnowledgeAnswers.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1KnowledgeAnswers(
          od as api.GoogleCloudDialogflowV2beta1KnowledgeAnswers);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer();
      var od = api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer(
          od as api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata();
      var od =
          api.GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata(
          od as api.GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest();
      var od =
          api.GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest(
          od as api.GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1QueryResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1QueryResult();
      var od = api.GoogleCloudDialogflowV2beta1QueryResult.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1QueryResult(
          od as api.GoogleCloudDialogflowV2beta1QueryResult);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1Sentiment', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1Sentiment();
      var od = api.GoogleCloudDialogflowV2beta1Sentiment.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1Sentiment(
          od as api.GoogleCloudDialogflowV2beta1Sentiment);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1SentimentAnalysisResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1SentimentAnalysisResult();
      var od = api.GoogleCloudDialogflowV2beta1SentimentAnalysisResult.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1SentimentAnalysisResult(
          od as api.GoogleCloudDialogflowV2beta1SentimentAnalysisResult);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1SessionEntityType',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1SessionEntityType();
      var od = api.GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1SessionEntityType(
          od as api.GoogleCloudDialogflowV2beta1SessionEntityType);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1WebhookRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1WebhookRequest();
      var od =
          api.GoogleCloudDialogflowV2beta1WebhookRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1WebhookRequest(
          od as api.GoogleCloudDialogflowV2beta1WebhookRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1WebhookResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1WebhookResponse();
      var od =
          api.GoogleCloudDialogflowV2beta1WebhookResponse.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1WebhookResponse(
          od as api.GoogleCloudDialogflowV2beta1WebhookResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata();
      var od = api.GoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata(od
          as api.GoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata();
      var od = api.GoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata(od
          as api.GoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata();
      var od =
          api.GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata(od
          as api
              .GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata();
      var od = api.GoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata(od
          as api.GoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV3alpha1ImportDocumentsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV3alpha1ImportDocumentsResponse();
      var od =
          api.GoogleCloudDialogflowV3alpha1ImportDocumentsResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV3alpha1ImportDocumentsResponse(
          od as api.GoogleCloudDialogflowV3alpha1ImportDocumentsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata();
      var od = api.GoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata(od
          as api.GoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata();
      var od = api.GoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata(od
          as api.GoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleLongrunningListOperationsResponse();
      var od = api.GoogleLongrunningListOperationsResponse.fromJson(o.toJson());
      checkGoogleLongrunningListOperationsResponse(
          od as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleLongrunningOperation();
      var od = api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleProtobufEmpty();
      var od = api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleRpcStatus();
      var od = api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od as api.GoogleRpcStatus);
    });
  });

  unittest.group('obj-schema-GoogleTypeLatLng', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleTypeLatLng();
      var od = api.GoogleTypeLatLng.fromJson(o.toJson());
      checkGoogleTypeLatLng(od as api.GoogleTypeLatLng);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents;
      var arg_request = buildGoogleCloudDialogflowCxV3Agent();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3Agent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Agent(
            obj as api.GoogleCloudDialogflowCxV3Agent);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Agent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Agent(
            response as api.GoogleCloudDialogflowCxV3Agent);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--export', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents;
      var arg_request = buildGoogleCloudDialogflowCxV3ExportAgentRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3ExportAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3ExportAgentRequest(
            obj as api.GoogleCloudDialogflowCxV3ExportAgentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .export(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Agent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Agent(
            response as api.GoogleCloudDialogflowCxV3Agent);
      })));
    });

    unittest.test('method--getValidationResult', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents;
      var arg_name = 'foo';
      var arg_languageCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3AgentValidationResult());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getValidationResult(arg_name,
              languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3AgentValidationResult(
            response as api.GoogleCloudDialogflowCxV3AgentValidationResult);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListAgentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3ListAgentsResponse(
            response as api.GoogleCloudDialogflowCxV3ListAgentsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents;
      var arg_request = buildGoogleCloudDialogflowCxV3Agent();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3Agent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Agent(
            obj as api.GoogleCloudDialogflowCxV3Agent);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Agent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Agent(
            response as api.GoogleCloudDialogflowCxV3Agent);
      })));
    });

    unittest.test('method--restore', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents;
      var arg_request = buildGoogleCloudDialogflowCxV3RestoreAgentRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3RestoreAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3RestoreAgentRequest(
            obj as api.GoogleCloudDialogflowCxV3RestoreAgentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .restore(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--validate', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents;
      var arg_request = buildGoogleCloudDialogflowCxV3ValidateAgentRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3ValidateAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3ValidateAgentRequest(
            obj as api.GoogleCloudDialogflowCxV3ValidateAgentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3AgentValidationResult());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .validate(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3AgentValidationResult(
            response as api.GoogleCloudDialogflowCxV3AgentValidationResult);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsEntityTypesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.entityTypes;
      var arg_request = buildGoogleCloudDialogflowCxV3EntityType();
      var arg_parent = 'foo';
      var arg_languageCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3EntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3EntityType(
            obj as api.GoogleCloudDialogflowCxV3EntityType);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3EntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3EntityType(
            response as api.GoogleCloudDialogflowCxV3EntityType);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.entityTypes;
      var arg_name = 'foo';
      var arg_force = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, force: arg_force, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.entityTypes;
      var arg_name = 'foo';
      var arg_languageCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3EntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3EntityType(
            response as api.GoogleCloudDialogflowCxV3EntityType);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.entityTypes;
      var arg_parent = 'foo';
      var arg_languageCode = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListEntityTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              languageCode: arg_languageCode,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3ListEntityTypesResponse(
            response as api.GoogleCloudDialogflowCxV3ListEntityTypesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.entityTypes;
      var arg_request = buildGoogleCloudDialogflowCxV3EntityType();
      var arg_name = 'foo';
      var arg_languageCode = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3EntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3EntityType(
            obj as api.GoogleCloudDialogflowCxV3EntityType);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3EntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              languageCode: arg_languageCode,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3EntityType(
            response as api.GoogleCloudDialogflowCxV3EntityType);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsEnvironmentsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.environments;
      var arg_request = buildGoogleCloudDialogflowCxV3Environment();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3Environment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Environment(
            obj as api.GoogleCloudDialogflowCxV3Environment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.environments;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.environments;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Environment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Environment(
            response as api.GoogleCloudDialogflowCxV3Environment);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.environments;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListEnvironmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3ListEnvironmentsResponse(
            response as api.GoogleCloudDialogflowCxV3ListEnvironmentsResponse);
      })));
    });

    unittest.test('method--lookupEnvironmentHistory', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.environments;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .lookupEnvironmentHistory(arg_name,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse(response
            as api.GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.environments;
      var arg_request = buildGoogleCloudDialogflowCxV3Environment();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3Environment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Environment(
            obj as api.GoogleCloudDialogflowCxV3Environment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });
  });

  unittest.group(
      'resource-ProjectsLocationsAgentsEnvironmentsExperimentsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .experiments;
      var arg_request = buildGoogleCloudDialogflowCxV3Experiment();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3Experiment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Experiment(
            obj as api.GoogleCloudDialogflowCxV3Experiment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Experiment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Experiment(
            response as api.GoogleCloudDialogflowCxV3Experiment);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .experiments;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .experiments;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Experiment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Experiment(
            response as api.GoogleCloudDialogflowCxV3Experiment);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .experiments;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListExperimentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3ListExperimentsResponse(
            response as api.GoogleCloudDialogflowCxV3ListExperimentsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .experiments;
      var arg_request = buildGoogleCloudDialogflowCxV3Experiment();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3Experiment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Experiment(
            obj as api.GoogleCloudDialogflowCxV3Experiment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Experiment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Experiment(
            response as api.GoogleCloudDialogflowCxV3Experiment);
      })));
    });

    unittest.test('method--start', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .experiments;
      var arg_request = buildGoogleCloudDialogflowCxV3StartExperimentRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3StartExperimentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3StartExperimentRequest(
            obj as api.GoogleCloudDialogflowCxV3StartExperimentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Experiment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .start(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Experiment(
            response as api.GoogleCloudDialogflowCxV3Experiment);
      })));
    });

    unittest.test('method--stop', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .experiments;
      var arg_request = buildGoogleCloudDialogflowCxV3StopExperimentRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3StopExperimentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3StopExperimentRequest(
            obj as api.GoogleCloudDialogflowCxV3StopExperimentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Experiment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .stop(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Experiment(
            response as api.GoogleCloudDialogflowCxV3Experiment);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsEnvironmentsSessionsResource',
      () {
    unittest.test('method--detectIntent', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .sessions;
      var arg_request = buildGoogleCloudDialogflowCxV3DetectIntentRequest();
      var arg_session = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3DetectIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3DetectIntentRequest(
            obj as api.GoogleCloudDialogflowCxV3DetectIntentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3DetectIntentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .detectIntent(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3DetectIntentResponse(
            response as api.GoogleCloudDialogflowCxV3DetectIntentResponse);
      })));
    });

    unittest.test('method--fulfillIntent', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .sessions;
      var arg_request = buildGoogleCloudDialogflowCxV3FulfillIntentRequest();
      var arg_session = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3FulfillIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3FulfillIntentRequest(
            obj as api.GoogleCloudDialogflowCxV3FulfillIntentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3FulfillIntentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .fulfillIntent(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3FulfillIntentResponse(
            response as api.GoogleCloudDialogflowCxV3FulfillIntentResponse);
      })));
    });

    unittest.test('method--matchIntent', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .sessions;
      var arg_request = buildGoogleCloudDialogflowCxV3MatchIntentRequest();
      var arg_session = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3MatchIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3MatchIntentRequest(
            obj as api.GoogleCloudDialogflowCxV3MatchIntentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3MatchIntentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .matchIntent(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3MatchIntentResponse(
            response as api.GoogleCloudDialogflowCxV3MatchIntentResponse);
      })));
    });
  });

  unittest.group(
      'resource-ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesResource',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .sessions
          .entityTypes;
      var arg_request = buildGoogleCloudDialogflowCxV3SessionEntityType();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3SessionEntityType(
            obj as api.GoogleCloudDialogflowCxV3SessionEntityType);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3SessionEntityType(
            response as api.GoogleCloudDialogflowCxV3SessionEntityType);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .sessions
          .entityTypes;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .sessions
          .entityTypes;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3SessionEntityType(
            response as api.GoogleCloudDialogflowCxV3SessionEntityType);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .sessions
          .entityTypes;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse(response
            as api.GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .sessions
          .entityTypes;
      var arg_request = buildGoogleCloudDialogflowCxV3SessionEntityType();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3SessionEntityType(
            obj as api.GoogleCloudDialogflowCxV3SessionEntityType);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3SessionEntityType(
            response as api.GoogleCloudDialogflowCxV3SessionEntityType);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsFlowsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.flows;
      var arg_request = buildGoogleCloudDialogflowCxV3Flow();
      var arg_parent = 'foo';
      var arg_languageCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3Flow.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Flow(
            obj as api.GoogleCloudDialogflowCxV3Flow);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Flow());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Flow(
            response as api.GoogleCloudDialogflowCxV3Flow);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.flows;
      var arg_name = 'foo';
      var arg_force = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, force: arg_force, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.flows;
      var arg_name = 'foo';
      var arg_languageCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Flow());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Flow(
            response as api.GoogleCloudDialogflowCxV3Flow);
      })));
    });

    unittest.test('method--getValidationResult', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.flows;
      var arg_name = 'foo';
      var arg_languageCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3FlowValidationResult());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getValidationResult(arg_name,
              languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3FlowValidationResult(
            response as api.GoogleCloudDialogflowCxV3FlowValidationResult);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.flows;
      var arg_parent = 'foo';
      var arg_languageCode = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListFlowsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              languageCode: arg_languageCode,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3ListFlowsResponse(
            response as api.GoogleCloudDialogflowCxV3ListFlowsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.flows;
      var arg_request = buildGoogleCloudDialogflowCxV3Flow();
      var arg_name = 'foo';
      var arg_languageCode = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3Flow.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Flow(
            obj as api.GoogleCloudDialogflowCxV3Flow);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Flow());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              languageCode: arg_languageCode,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Flow(
            response as api.GoogleCloudDialogflowCxV3Flow);
      })));
    });

    unittest.test('method--train', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.flows;
      var arg_request = buildGoogleCloudDialogflowCxV3TrainFlowRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3TrainFlowRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3TrainFlowRequest(
            obj as api.GoogleCloudDialogflowCxV3TrainFlowRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .train(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--validate', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.flows;
      var arg_request = buildGoogleCloudDialogflowCxV3ValidateFlowRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3ValidateFlowRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3ValidateFlowRequest(
            obj as api.GoogleCloudDialogflowCxV3ValidateFlowRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3FlowValidationResult());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .validate(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3FlowValidationResult(
            response as api.GoogleCloudDialogflowCxV3FlowValidationResult);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsFlowsPagesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.flows.pages;
      var arg_request = buildGoogleCloudDialogflowCxV3Page();
      var arg_parent = 'foo';
      var arg_languageCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3Page.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Page(
            obj as api.GoogleCloudDialogflowCxV3Page);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Page());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Page(
            response as api.GoogleCloudDialogflowCxV3Page);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.flows.pages;
      var arg_name = 'foo';
      var arg_force = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, force: arg_force, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.flows.pages;
      var arg_name = 'foo';
      var arg_languageCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Page());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Page(
            response as api.GoogleCloudDialogflowCxV3Page);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.flows.pages;
      var arg_parent = 'foo';
      var arg_languageCode = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListPagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              languageCode: arg_languageCode,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3ListPagesResponse(
            response as api.GoogleCloudDialogflowCxV3ListPagesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.flows.pages;
      var arg_request = buildGoogleCloudDialogflowCxV3Page();
      var arg_name = 'foo';
      var arg_languageCode = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3Page.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Page(
            obj as api.GoogleCloudDialogflowCxV3Page);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Page());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              languageCode: arg_languageCode,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Page(
            response as api.GoogleCloudDialogflowCxV3Page);
      })));
    });
  });

  unittest.group(
      'resource-ProjectsLocationsAgentsFlowsTransitionRouteGroupsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .flows
          .transitionRouteGroups;
      var arg_request = buildGoogleCloudDialogflowCxV3TransitionRouteGroup();
      var arg_parent = 'foo';
      var arg_languageCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3TransitionRouteGroup(
            obj as api.GoogleCloudDialogflowCxV3TransitionRouteGroup);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3TransitionRouteGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3TransitionRouteGroup(
            response as api.GoogleCloudDialogflowCxV3TransitionRouteGroup);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .flows
          .transitionRouteGroups;
      var arg_name = 'foo';
      var arg_force = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, force: arg_force, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .flows
          .transitionRouteGroups;
      var arg_name = 'foo';
      var arg_languageCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3TransitionRouteGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3TransitionRouteGroup(
            response as api.GoogleCloudDialogflowCxV3TransitionRouteGroup);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .flows
          .transitionRouteGroups;
      var arg_parent = 'foo';
      var arg_languageCode = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              languageCode: arg_languageCode,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse(response
            as api.GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .flows
          .transitionRouteGroups;
      var arg_request = buildGoogleCloudDialogflowCxV3TransitionRouteGroup();
      var arg_name = 'foo';
      var arg_languageCode = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3TransitionRouteGroup(
            obj as api.GoogleCloudDialogflowCxV3TransitionRouteGroup);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3TransitionRouteGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              languageCode: arg_languageCode,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3TransitionRouteGroup(
            response as api.GoogleCloudDialogflowCxV3TransitionRouteGroup);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsFlowsVersionsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
      var arg_request = buildGoogleCloudDialogflowCxV3Version();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3Version.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Version(
            obj as api.GoogleCloudDialogflowCxV3Version);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Version());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Version(
            response as api.GoogleCloudDialogflowCxV3Version);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3ListVersionsResponse(
            response as api.GoogleCloudDialogflowCxV3ListVersionsResponse);
      })));
    });

    unittest.test('method--load', () {
      var mock = HttpServerMock();
      var res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
      var arg_request = buildGoogleCloudDialogflowCxV3LoadVersionRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3LoadVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3LoadVersionRequest(
            obj as api.GoogleCloudDialogflowCxV3LoadVersionRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .load(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
      var arg_request = buildGoogleCloudDialogflowCxV3Version();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3Version.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Version(
            obj as api.GoogleCloudDialogflowCxV3Version);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Version());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Version(
            response as api.GoogleCloudDialogflowCxV3Version);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsIntentsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.intents;
      var arg_request = buildGoogleCloudDialogflowCxV3Intent();
      var arg_parent = 'foo';
      var arg_languageCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3Intent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Intent(
            obj as api.GoogleCloudDialogflowCxV3Intent);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Intent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Intent(
            response as api.GoogleCloudDialogflowCxV3Intent);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.intents;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.intents;
      var arg_name = 'foo';
      var arg_languageCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Intent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Intent(
            response as api.GoogleCloudDialogflowCxV3Intent);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.intents;
      var arg_parent = 'foo';
      var arg_intentView = 'foo';
      var arg_languageCode = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["intentView"].first, unittest.equals(arg_intentView));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListIntentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              intentView: arg_intentView,
              languageCode: arg_languageCode,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3ListIntentsResponse(
            response as api.GoogleCloudDialogflowCxV3ListIntentsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.intents;
      var arg_request = buildGoogleCloudDialogflowCxV3Intent();
      var arg_name = 'foo';
      var arg_languageCode = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3Intent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Intent(
            obj as api.GoogleCloudDialogflowCxV3Intent);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Intent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              languageCode: arg_languageCode,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Intent(
            response as api.GoogleCloudDialogflowCxV3Intent);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsSessionsResource', () {
    unittest.test('method--detectIntent', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.sessions;
      var arg_request = buildGoogleCloudDialogflowCxV3DetectIntentRequest();
      var arg_session = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3DetectIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3DetectIntentRequest(
            obj as api.GoogleCloudDialogflowCxV3DetectIntentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3DetectIntentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .detectIntent(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3DetectIntentResponse(
            response as api.GoogleCloudDialogflowCxV3DetectIntentResponse);
      })));
    });

    unittest.test('method--fulfillIntent', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.sessions;
      var arg_request = buildGoogleCloudDialogflowCxV3FulfillIntentRequest();
      var arg_session = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3FulfillIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3FulfillIntentRequest(
            obj as api.GoogleCloudDialogflowCxV3FulfillIntentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3FulfillIntentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .fulfillIntent(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3FulfillIntentResponse(
            response as api.GoogleCloudDialogflowCxV3FulfillIntentResponse);
      })));
    });

    unittest.test('method--matchIntent', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.sessions;
      var arg_request = buildGoogleCloudDialogflowCxV3MatchIntentRequest();
      var arg_session = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3MatchIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3MatchIntentRequest(
            obj as api.GoogleCloudDialogflowCxV3MatchIntentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3MatchIntentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .matchIntent(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3MatchIntentResponse(
            response as api.GoogleCloudDialogflowCxV3MatchIntentResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsSessionsEntityTypesResource',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .sessions
          .entityTypes;
      var arg_request = buildGoogleCloudDialogflowCxV3SessionEntityType();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3SessionEntityType(
            obj as api.GoogleCloudDialogflowCxV3SessionEntityType);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3SessionEntityType(
            response as api.GoogleCloudDialogflowCxV3SessionEntityType);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .sessions
          .entityTypes;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .sessions
          .entityTypes;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3SessionEntityType(
            response as api.GoogleCloudDialogflowCxV3SessionEntityType);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .sessions
          .entityTypes;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse(response
            as api.GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .sessions
          .entityTypes;
      var arg_request = buildGoogleCloudDialogflowCxV3SessionEntityType();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3SessionEntityType(
            obj as api.GoogleCloudDialogflowCxV3SessionEntityType);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3SessionEntityType(
            response as api.GoogleCloudDialogflowCxV3SessionEntityType);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsTestCasesResource', () {
    unittest.test('method--batchDelete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      var arg_request =
          buildGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest(
            obj as api.GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchDelete(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--batchRun', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      var arg_request =
          buildGoogleCloudDialogflowCxV3BatchRunTestCasesRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDialogflowCxV3BatchRunTestCasesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3BatchRunTestCasesRequest(
            obj as api.GoogleCloudDialogflowCxV3BatchRunTestCasesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchRun(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--calculateCoverage', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      var arg_agent = 'foo';
      var arg_type = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3CalculateCoverageResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .calculateCoverage(arg_agent, type: arg_type, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3CalculateCoverageResponse(
            response as api.GoogleCloudDialogflowCxV3CalculateCoverageResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      var arg_request = buildGoogleCloudDialogflowCxV3TestCase();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3TestCase.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3TestCase(
            obj as api.GoogleCloudDialogflowCxV3TestCase);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3TestCase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3TestCase(
            response as api.GoogleCloudDialogflowCxV3TestCase);
      })));
    });

    unittest.test('method--export', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      var arg_request = buildGoogleCloudDialogflowCxV3ExportTestCasesRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3ExportTestCasesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3ExportTestCasesRequest(
            obj as api.GoogleCloudDialogflowCxV3ExportTestCasesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .export(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3TestCase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3TestCase(
            response as api.GoogleCloudDialogflowCxV3TestCase);
      })));
    });

    unittest.test('method--import', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      var arg_request = buildGoogleCloudDialogflowCxV3ImportTestCasesRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3ImportTestCasesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3ImportTestCasesRequest(
            obj as api.GoogleCloudDialogflowCxV3ImportTestCasesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .import(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListTestCasesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3ListTestCasesResponse(
            response as api.GoogleCloudDialogflowCxV3ListTestCasesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      var arg_request = buildGoogleCloudDialogflowCxV3TestCase();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3TestCase.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3TestCase(
            obj as api.GoogleCloudDialogflowCxV3TestCase);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3TestCase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3TestCase(
            response as api.GoogleCloudDialogflowCxV3TestCase);
      })));
    });

    unittest.test('method--run', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      var arg_request = buildGoogleCloudDialogflowCxV3RunTestCaseRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3RunTestCaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3RunTestCaseRequest(
            obj as api.GoogleCloudDialogflowCxV3RunTestCaseRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .run(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsTestCasesResultsResource',
      () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res =
          api.DialogflowApi(mock).projects.locations.agents.testCases.results;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3ListTestCaseResultsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3ListTestCaseResultsResponse(response
            as api.GoogleCloudDialogflowCxV3ListTestCaseResultsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsWebhooksResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.webhooks;
      var arg_request = buildGoogleCloudDialogflowCxV3Webhook();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3Webhook.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Webhook(
            obj as api.GoogleCloudDialogflowCxV3Webhook);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Webhook());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Webhook(
            response as api.GoogleCloudDialogflowCxV3Webhook);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.webhooks;
      var arg_name = 'foo';
      var arg_force = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, force: arg_force, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.webhooks;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Webhook());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Webhook(
            response as api.GoogleCloudDialogflowCxV3Webhook);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.webhooks;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListWebhooksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3ListWebhooksResponse(
            response as api.GoogleCloudDialogflowCxV3ListWebhooksResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.agents.webhooks;
      var arg_request = buildGoogleCloudDialogflowCxV3Webhook();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3Webhook.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Webhook(
            obj as api.GoogleCloudDialogflowCxV3Webhook);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Webhook());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3Webhook(
            response as api.GoogleCloudDialogflowCxV3Webhook);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.operations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(
            response as api.GoogleLongrunningListOperationsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsSecuritySettingsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.securitySettings;
      var arg_request = buildGoogleCloudDialogflowCxV3SecuritySettings();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3SecuritySettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3SecuritySettings(
            obj as api.GoogleCloudDialogflowCxV3SecuritySettings);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3SecuritySettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3SecuritySettings(
            response as api.GoogleCloudDialogflowCxV3SecuritySettings);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.securitySettings;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.securitySettings;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3SecuritySettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3SecuritySettings(
            response as api.GoogleCloudDialogflowCxV3SecuritySettings);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.securitySettings;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3ListSecuritySettingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3ListSecuritySettingsResponse(response
            as api.GoogleCloudDialogflowCxV3ListSecuritySettingsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.locations.securitySettings;
      var arg_request = buildGoogleCloudDialogflowCxV3SecuritySettings();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowCxV3SecuritySettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3SecuritySettings(
            obj as api.GoogleCloudDialogflowCxV3SecuritySettings);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3SecuritySettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowCxV3SecuritySettings(
            response as api.GoogleCloudDialogflowCxV3SecuritySettings);
      })));
    });
  });

  unittest.group('resource-ProjectsOperationsResource', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.operations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(
            response as api.GoogleLongrunningListOperationsResponse);
      })));
    });
  });
}
