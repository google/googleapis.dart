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
import 'package:googleapis/dialogflow/v2.dart' as api;

import '../test_shared.dart';

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

core.List<api.GoogleCloudDialogflowCxV3TestError> buildUnnamed6113() {
  var o = <api.GoogleCloudDialogflowCxV3TestError>[];
  o.add(buildGoogleCloudDialogflowCxV3TestError());
  o.add(buildGoogleCloudDialogflowCxV3TestError());
  return o;
}

void checkUnnamed6113(core.List<api.GoogleCloudDialogflowCxV3TestError> o) {
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
    o.errors = buildUnnamed6113();
  }
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3BatchRunTestCasesMetadata(
    api.GoogleCloudDialogflowCxV3BatchRunTestCasesMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesMetadata < 3) {
    checkUnnamed6113(o.errors);
  }
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesMetadata--;
}

core.List<api.GoogleCloudDialogflowCxV3TestCaseResult> buildUnnamed6114() {
  var o = <api.GoogleCloudDialogflowCxV3TestCaseResult>[];
  o.add(buildGoogleCloudDialogflowCxV3TestCaseResult());
  o.add(buildGoogleCloudDialogflowCxV3TestCaseResult());
  return o;
}

void checkUnnamed6114(
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
    o.results = buildUnnamed6114();
  }
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3BatchRunTestCasesResponse(
    api.GoogleCloudDialogflowCxV3BatchRunTestCasesResponse o) {
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesResponse < 3) {
    checkUnnamed6114(o.results);
  }
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesResponse--;
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

core.Map<core.String, core.Object> buildUnnamed6115() {
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

void checkUnnamed6115(core.Map<core.String, core.Object> o) {
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
    o.injectedParameters = buildUnnamed6115();
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
    checkUnnamed6115(o.injectedParameters);
    checkGoogleCloudDialogflowCxV3QueryInput(
        o.input as api.GoogleCloudDialogflowCxV3QueryInput);
    unittest.expect(o.isWebhookEnabled, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3ConversationTurnUserInput--;
}

core.Map<core.String, core.Object> buildUnnamed6116() {
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

void checkUnnamed6116(core.Map<core.String, core.Object> o) {
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

core.List<api.GoogleCloudDialogflowCxV3TestRunDifference> buildUnnamed6117() {
  var o = <api.GoogleCloudDialogflowCxV3TestRunDifference>[];
  o.add(buildGoogleCloudDialogflowCxV3TestRunDifference());
  o.add(buildGoogleCloudDialogflowCxV3TestRunDifference());
  return o;
}

void checkUnnamed6117(
    core.List<api.GoogleCloudDialogflowCxV3TestRunDifference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TestRunDifference(
      o[0] as api.GoogleCloudDialogflowCxV3TestRunDifference);
  checkGoogleCloudDialogflowCxV3TestRunDifference(
      o[1] as api.GoogleCloudDialogflowCxV3TestRunDifference);
}

core.Map<core.String, core.Object> buildUnnamed6118() {
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

void checkUnnamed6118(core.Map<core.String, core.Object> o) {
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

core.List<api.GoogleCloudDialogflowCxV3ResponseMessageText> buildUnnamed6119() {
  var o = <api.GoogleCloudDialogflowCxV3ResponseMessageText>[];
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessageText());
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessageText());
  return o;
}

void checkUnnamed6119(
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
    o.diagnosticInfo = buildUnnamed6116();
    o.differences = buildUnnamed6117();
    o.sessionParameters = buildUnnamed6118();
    o.status = buildGoogleRpcStatus();
    o.textResponses = buildUnnamed6119();
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
    checkUnnamed6116(o.diagnosticInfo);
    checkUnnamed6117(o.differences);
    checkUnnamed6118(o.sessionParameters);
    checkGoogleRpcStatus(o.status as api.GoogleRpcStatus);
    checkUnnamed6119(o.textResponses);
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

core.List<api.GoogleCloudDialogflowCxV3FormParameter> buildUnnamed6120() {
  var o = <api.GoogleCloudDialogflowCxV3FormParameter>[];
  o.add(buildGoogleCloudDialogflowCxV3FormParameter());
  o.add(buildGoogleCloudDialogflowCxV3FormParameter());
  return o;
}

void checkUnnamed6120(core.List<api.GoogleCloudDialogflowCxV3FormParameter> o) {
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
    o.parameters = buildUnnamed6120();
  }
  buildCounterGoogleCloudDialogflowCxV3Form--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Form(api.GoogleCloudDialogflowCxV3Form o) {
  buildCounterGoogleCloudDialogflowCxV3Form++;
  if (buildCounterGoogleCloudDialogflowCxV3Form < 3) {
    checkUnnamed6120(o.parameters);
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

core.List<api.GoogleCloudDialogflowCxV3EventHandler> buildUnnamed6121() {
  var o = <api.GoogleCloudDialogflowCxV3EventHandler>[];
  o.add(buildGoogleCloudDialogflowCxV3EventHandler());
  o.add(buildGoogleCloudDialogflowCxV3EventHandler());
  return o;
}

void checkUnnamed6121(core.List<api.GoogleCloudDialogflowCxV3EventHandler> o) {
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
    o.repromptEventHandlers = buildUnnamed6121();
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
    checkUnnamed6121(o.repromptEventHandlers);
  }
  buildCounterGoogleCloudDialogflowCxV3FormParameterFillBehavior--;
}

core.List<api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases>
    buildUnnamed6122() {
  var o = <api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases>[];
  o.add(buildGoogleCloudDialogflowCxV3FulfillmentConditionalCases());
  o.add(buildGoogleCloudDialogflowCxV3FulfillmentConditionalCases());
  return o;
}

void checkUnnamed6122(
    core.List<api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3FulfillmentConditionalCases(
      o[0] as api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases);
  checkGoogleCloudDialogflowCxV3FulfillmentConditionalCases(
      o[1] as api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases);
}

core.List<api.GoogleCloudDialogflowCxV3ResponseMessage> buildUnnamed6123() {
  var o = <api.GoogleCloudDialogflowCxV3ResponseMessage>[];
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessage());
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessage());
  return o;
}

void checkUnnamed6123(
    core.List<api.GoogleCloudDialogflowCxV3ResponseMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ResponseMessage(
      o[0] as api.GoogleCloudDialogflowCxV3ResponseMessage);
  checkGoogleCloudDialogflowCxV3ResponseMessage(
      o[1] as api.GoogleCloudDialogflowCxV3ResponseMessage);
}

core.List<api.GoogleCloudDialogflowCxV3FulfillmentSetParameterAction>
    buildUnnamed6124() {
  var o = <api.GoogleCloudDialogflowCxV3FulfillmentSetParameterAction>[];
  o.add(buildGoogleCloudDialogflowCxV3FulfillmentSetParameterAction());
  o.add(buildGoogleCloudDialogflowCxV3FulfillmentSetParameterAction());
  return o;
}

void checkUnnamed6124(
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
    o.conditionalCases = buildUnnamed6122();
    o.messages = buildUnnamed6123();
    o.setParameterActions = buildUnnamed6124();
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
    checkUnnamed6122(o.conditionalCases);
    checkUnnamed6123(o.messages);
    checkUnnamed6124(o.setParameterActions);
    unittest.expect(o.tag, unittest.equals('foo'));
    unittest.expect(o.webhook, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3Fulfillment--;
}

core.List<api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase>
    buildUnnamed6125() {
  var o = <api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase>[];
  o.add(buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase());
  o.add(buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase());
  return o;
}

void checkUnnamed6125(
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
    o.cases = buildUnnamed6125();
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCases--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FulfillmentConditionalCases(
    api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases o) {
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCases++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCases < 3) {
    checkUnnamed6125(o.cases);
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCases--;
}

core.List<
        api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent>
    buildUnnamed6126() {
  var o = <
      api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent>[];
  o.add(
      buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent());
  o.add(
      buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent());
  return o;
}

void checkUnnamed6126(
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
    o.caseContent = buildUnnamed6126();
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
    checkUnnamed6126(o.caseContent);
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

core.List<api.GoogleRpcStatus> buildUnnamed6127() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed6127(core.List<api.GoogleRpcStatus> o) {
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
    o.warnings = buildUnnamed6127();
  }
  buildCounterGoogleCloudDialogflowCxV3ImportDocumentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ImportDocumentsResponse(
    api.GoogleCloudDialogflowCxV3ImportDocumentsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ImportDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ImportDocumentsResponse < 3) {
    checkUnnamed6127(o.warnings);
  }
  buildCounterGoogleCloudDialogflowCxV3ImportDocumentsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3TestCaseError> buildUnnamed6128() {
  var o = <api.GoogleCloudDialogflowCxV3TestCaseError>[];
  o.add(buildGoogleCloudDialogflowCxV3TestCaseError());
  o.add(buildGoogleCloudDialogflowCxV3TestCaseError());
  return o;
}

void checkUnnamed6128(core.List<api.GoogleCloudDialogflowCxV3TestCaseError> o) {
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
    o.errors = buildUnnamed6128();
  }
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ImportTestCasesMetadata(
    api.GoogleCloudDialogflowCxV3ImportTestCasesMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3ImportTestCasesMetadata < 3) {
    checkUnnamed6128(o.errors);
  }
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesMetadata--;
}

core.List<core.String> buildUnnamed6129() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6129(core.List<core.String> o) {
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
    o.names = buildUnnamed6129();
  }
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ImportTestCasesResponse(
    api.GoogleCloudDialogflowCxV3ImportTestCasesResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ImportTestCasesResponse < 3) {
    checkUnnamed6129(o.names);
  }
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesResponse--;
}

core.List<core.String> buildUnnamed6130() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6130(core.List<core.String> o) {
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
    o.phraseHints = buildUnnamed6130();
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
    checkUnnamed6130(o.phraseHints);
    unittest.expect(o.sampleRateHertz, unittest.equals(42));
    unittest.expect(o.singleUtterance, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3InputAudioConfig--;
}

core.Map<core.String, core.String> buildUnnamed6131() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6131(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3IntentParameter> buildUnnamed6132() {
  var o = <api.GoogleCloudDialogflowCxV3IntentParameter>[];
  o.add(buildGoogleCloudDialogflowCxV3IntentParameter());
  o.add(buildGoogleCloudDialogflowCxV3IntentParameter());
  return o;
}

void checkUnnamed6132(
    core.List<api.GoogleCloudDialogflowCxV3IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3IntentParameter(
      o[0] as api.GoogleCloudDialogflowCxV3IntentParameter);
  checkGoogleCloudDialogflowCxV3IntentParameter(
      o[1] as api.GoogleCloudDialogflowCxV3IntentParameter);
}

core.List<api.GoogleCloudDialogflowCxV3IntentTrainingPhrase>
    buildUnnamed6133() {
  var o = <api.GoogleCloudDialogflowCxV3IntentTrainingPhrase>[];
  o.add(buildGoogleCloudDialogflowCxV3IntentTrainingPhrase());
  o.add(buildGoogleCloudDialogflowCxV3IntentTrainingPhrase());
  return o;
}

void checkUnnamed6133(
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
    o.labels = buildUnnamed6131();
    o.name = 'foo';
    o.parameters = buildUnnamed6132();
    o.priority = 42;
    o.trainingPhrases = buildUnnamed6133();
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
    checkUnnamed6131(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6132(o.parameters);
    unittest.expect(o.priority, unittest.equals(42));
    checkUnnamed6133(o.trainingPhrases);
  }
  buildCounterGoogleCloudDialogflowCxV3Intent--;
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
    buildUnnamed6134() {
  var o = <api.GoogleCloudDialogflowCxV3IntentTrainingPhrasePart>[];
  o.add(buildGoogleCloudDialogflowCxV3IntentTrainingPhrasePart());
  o.add(buildGoogleCloudDialogflowCxV3IntentTrainingPhrasePart());
  return o;
}

void checkUnnamed6134(
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
    o.parts = buildUnnamed6134();
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
    checkUnnamed6134(o.parts);
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

core.List<api.GoogleCloudDialogflowCxV3EventHandler> buildUnnamed6135() {
  var o = <api.GoogleCloudDialogflowCxV3EventHandler>[];
  o.add(buildGoogleCloudDialogflowCxV3EventHandler());
  o.add(buildGoogleCloudDialogflowCxV3EventHandler());
  return o;
}

void checkUnnamed6135(core.List<api.GoogleCloudDialogflowCxV3EventHandler> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3EventHandler(
      o[0] as api.GoogleCloudDialogflowCxV3EventHandler);
  checkGoogleCloudDialogflowCxV3EventHandler(
      o[1] as api.GoogleCloudDialogflowCxV3EventHandler);
}

core.List<core.String> buildUnnamed6136() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6136(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3TransitionRoute> buildUnnamed6137() {
  var o = <api.GoogleCloudDialogflowCxV3TransitionRoute>[];
  o.add(buildGoogleCloudDialogflowCxV3TransitionRoute());
  o.add(buildGoogleCloudDialogflowCxV3TransitionRoute());
  return o;
}

void checkUnnamed6137(
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
    o.eventHandlers = buildUnnamed6135();
    o.form = buildGoogleCloudDialogflowCxV3Form();
    o.name = 'foo';
    o.transitionRouteGroups = buildUnnamed6136();
    o.transitionRoutes = buildUnnamed6137();
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
    checkUnnamed6135(o.eventHandlers);
    checkGoogleCloudDialogflowCxV3Form(
        o.form as api.GoogleCloudDialogflowCxV3Form);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6136(o.transitionRouteGroups);
    checkUnnamed6137(o.transitionRoutes);
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
    buildUnnamed6138() {
  var o = <api.GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo>[];
  o.add(buildGoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo());
  o.add(buildGoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo());
  return o;
}

void checkUnnamed6138(
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
    o.parameterInfo = buildUnnamed6138();
  }
  buildCounterGoogleCloudDialogflowCxV3PageInfoFormInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3PageInfoFormInfo(
    api.GoogleCloudDialogflowCxV3PageInfoFormInfo o) {
  buildCounterGoogleCloudDialogflowCxV3PageInfoFormInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3PageInfoFormInfo < 3) {
    checkUnnamed6138(o.parameterInfo);
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
    var casted9 = (o.value) as core.Map;
    unittest.expect(casted9, unittest.hasLength(3));
    unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted9['bool'], unittest.equals(true));
    unittest.expect(casted9['string'], unittest.equals('foo'));
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

core.Map<core.String, core.Object> buildUnnamed6139() {
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

void checkUnnamed6139(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted10 = (o['x']) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
  var casted11 = (o['y']) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted11['bool'], unittest.equals(true));
  unittest.expect(casted11['string'], unittest.equals('foo'));
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
    o.payload = buildUnnamed6139();
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
    checkUnnamed6139(o.payload);
    checkGoogleCloudDialogflowCxV3ResponseMessagePlayAudio(
        o.playAudio as api.GoogleCloudDialogflowCxV3ResponseMessagePlayAudio);
    checkGoogleCloudDialogflowCxV3ResponseMessageText(
        o.text as api.GoogleCloudDialogflowCxV3ResponseMessageText);
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessage--;
}

core.Map<core.String, core.Object> buildUnnamed6140() {
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

void checkUnnamed6140(core.Map<core.String, core.Object> o) {
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

core.int
    buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess = 0;
api.GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess
    buildGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess() {
  var o = api.GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess <
      3) {
    o.metadata = buildUnnamed6140();
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess(
    api.GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess <
      3) {
    checkUnnamed6140(o.metadata);
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

core.Map<core.String, core.Object> buildUnnamed6141() {
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

void checkUnnamed6141(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff =
    0;
api.GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff
    buildGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff() {
  var o = api.GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff <
      3) {
    o.metadata = buildUnnamed6141();
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff(
    api.GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff <
      3) {
    checkUnnamed6141(o.metadata);
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff--;
}

core.List<api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment>
    buildUnnamed6142() {
  var o = <api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment>[];
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment());
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment());
  return o;
}

void checkUnnamed6142(
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
    o.segments = buildUnnamed6142();
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudio--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageMixedAudio(
    api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudio o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudio < 3) {
    checkUnnamed6142(o.segments);
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

core.List<core.String> buildUnnamed6143() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6143(core.List<core.String> o) {
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
    o.text = buildUnnamed6143();
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageText--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageText(
    api.GoogleCloudDialogflowCxV3ResponseMessageText o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageText++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageText < 3) {
    unittest.expect(o.allowPlaybackInterruption, unittest.isTrue);
    checkUnnamed6143(o.text);
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageText--;
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

core.Map<core.String, core.Object> buildUnnamed6144() {
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

void checkUnnamed6144(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3SessionInfo = 0;
api.GoogleCloudDialogflowCxV3SessionInfo
    buildGoogleCloudDialogflowCxV3SessionInfo() {
  var o = api.GoogleCloudDialogflowCxV3SessionInfo();
  buildCounterGoogleCloudDialogflowCxV3SessionInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3SessionInfo < 3) {
    o.parameters = buildUnnamed6144();
    o.session = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3SessionInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3SessionInfo(
    api.GoogleCloudDialogflowCxV3SessionInfo o) {
  buildCounterGoogleCloudDialogflowCxV3SessionInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3SessionInfo < 3) {
    checkUnnamed6144(o.parameters);
    unittest.expect(o.session, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3SessionInfo--;
}

core.List<core.String> buildUnnamed6145() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6145(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3ConversationTurn> buildUnnamed6146() {
  var o = <api.GoogleCloudDialogflowCxV3ConversationTurn>[];
  o.add(buildGoogleCloudDialogflowCxV3ConversationTurn());
  o.add(buildGoogleCloudDialogflowCxV3ConversationTurn());
  return o;
}

void checkUnnamed6146(
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
    o.tags = buildUnnamed6145();
    o.testCaseConversationTurns = buildUnnamed6146();
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
    checkUnnamed6145(o.tags);
    checkUnnamed6146(o.testCaseConversationTurns);
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

core.List<api.GoogleCloudDialogflowCxV3ConversationTurn> buildUnnamed6147() {
  var o = <api.GoogleCloudDialogflowCxV3ConversationTurn>[];
  o.add(buildGoogleCloudDialogflowCxV3ConversationTurn());
  o.add(buildGoogleCloudDialogflowCxV3ConversationTurn());
  return o;
}

void checkUnnamed6147(
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
    o.conversationTurns = buildUnnamed6147();
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
    checkUnnamed6147(o.conversationTurns);
    unittest.expect(o.environment, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.testResult, unittest.equals('foo'));
    unittest.expect(o.testTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3TestCaseResult--;
}

core.List<core.String> buildUnnamed6148() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6148(core.List<core.String> o) {
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
    o.trackingParameters = buildUnnamed6148();
  }
  buildCounterGoogleCloudDialogflowCxV3TestConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TestConfig(
    api.GoogleCloudDialogflowCxV3TestConfig o) {
  buildCounterGoogleCloudDialogflowCxV3TestConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3TestConfig < 3) {
    unittest.expect(o.flow, unittest.equals('foo'));
    checkUnnamed6148(o.trackingParameters);
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

core.List<api.GoogleCloudDialogflowCxV3ResponseMessage> buildUnnamed6149() {
  var o = <api.GoogleCloudDialogflowCxV3ResponseMessage>[];
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessage());
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessage());
  return o;
}

void checkUnnamed6149(
    core.List<api.GoogleCloudDialogflowCxV3ResponseMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ResponseMessage(
      o[0] as api.GoogleCloudDialogflowCxV3ResponseMessage);
  checkGoogleCloudDialogflowCxV3ResponseMessage(
      o[1] as api.GoogleCloudDialogflowCxV3ResponseMessage);
}

core.Map<core.String, core.Object> buildUnnamed6150() {
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

void checkUnnamed6150(core.Map<core.String, core.Object> o) {
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
    o.messages = buildUnnamed6149();
    o.pageInfo = buildGoogleCloudDialogflowCxV3PageInfo();
    o.payload = buildUnnamed6150();
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
    checkUnnamed6149(o.messages);
    checkGoogleCloudDialogflowCxV3PageInfo(
        o.pageInfo as api.GoogleCloudDialogflowCxV3PageInfo);
    checkUnnamed6150(o.payload);
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
    buildUnnamed6151() {
  var o = <core.String,
      api.GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue>{};
  o['x'] =
      buildGoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue();
  o['y'] =
      buildGoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue();
  return o;
}

void checkUnnamed6151(
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
    o.parameters = buildUnnamed6151();
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
    checkUnnamed6151(o.parameters);
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
    var casted20 = (o.resolvedValue) as core.Map;
    unittest.expect(casted20, unittest.hasLength(3));
    unittest.expect(casted20['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted20['bool'], unittest.equals(true));
    unittest.expect(casted20['string'], unittest.equals('foo'));
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

core.Map<core.String, core.Object> buildUnnamed6152() {
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

void checkUnnamed6152(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted21 = (o['x']) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(casted21['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted21['bool'], unittest.equals(true));
  unittest.expect(casted21['string'], unittest.equals('foo'));
  var casted22 = (o['y']) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(casted22['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted22['bool'], unittest.equals(true));
  unittest.expect(casted22['string'], unittest.equals('foo'));
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
    o.payload = buildUnnamed6152();
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
    checkUnnamed6152(o.payload);
    checkGoogleCloudDialogflowCxV3SessionInfo(
        o.sessionInfo as api.GoogleCloudDialogflowCxV3SessionInfo);
    unittest.expect(o.targetFlow, unittest.equals('foo'));
    unittest.expect(o.targetPage, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3ResponseMessage> buildUnnamed6153() {
  var o = <api.GoogleCloudDialogflowCxV3ResponseMessage>[];
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessage());
  o.add(buildGoogleCloudDialogflowCxV3ResponseMessage());
  return o;
}

void checkUnnamed6153(
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
    o.messages = buildUnnamed6153();
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
    checkUnnamed6153(o.messages);
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

core.List<api.GoogleCloudDialogflowCxV3beta1TestError> buildUnnamed6154() {
  var o = <api.GoogleCloudDialogflowCxV3beta1TestError>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1TestError());
  o.add(buildGoogleCloudDialogflowCxV3beta1TestError());
  return o;
}

void checkUnnamed6154(
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
    o.errors = buildUnnamed6154();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata(
    api.GoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata < 3) {
    checkUnnamed6154(o.errors);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1TestCaseResult> buildUnnamed6155() {
  var o = <api.GoogleCloudDialogflowCxV3beta1TestCaseResult>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1TestCaseResult());
  o.add(buildGoogleCloudDialogflowCxV3beta1TestCaseResult());
  return o;
}

void checkUnnamed6155(
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
    o.results = buildUnnamed6155();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse(
    api.GoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse o) {
  buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse < 3) {
    checkUnnamed6155(o.results);
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

core.Map<core.String, core.Object> buildUnnamed6156() {
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

void checkUnnamed6156(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted23 = (o['x']) as core.Map;
  unittest.expect(casted23, unittest.hasLength(3));
  unittest.expect(casted23['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted23['bool'], unittest.equals(true));
  unittest.expect(casted23['string'], unittest.equals('foo'));
  var casted24 = (o['y']) as core.Map;
  unittest.expect(casted24, unittest.hasLength(3));
  unittest.expect(casted24['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted24['bool'], unittest.equals(true));
  unittest.expect(casted24['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput =
    0;
api.GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput
    buildGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput() {
  var o = api.GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput();
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput < 3) {
    o.injectedParameters = buildUnnamed6156();
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
    checkUnnamed6156(o.injectedParameters);
    checkGoogleCloudDialogflowCxV3beta1QueryInput(
        o.input as api.GoogleCloudDialogflowCxV3beta1QueryInput);
    unittest.expect(o.isWebhookEnabled, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ConversationTurnUserInput--;
}

core.Map<core.String, core.Object> buildUnnamed6157() {
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

void checkUnnamed6157(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted25 = (o['x']) as core.Map;
  unittest.expect(casted25, unittest.hasLength(3));
  unittest.expect(casted25['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted25['bool'], unittest.equals(true));
  unittest.expect(casted25['string'], unittest.equals('foo'));
  var casted26 = (o['y']) as core.Map;
  unittest.expect(casted26, unittest.hasLength(3));
  unittest.expect(casted26['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted26['bool'], unittest.equals(true));
  unittest.expect(casted26['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3beta1TestRunDifference>
    buildUnnamed6158() {
  var o = <api.GoogleCloudDialogflowCxV3beta1TestRunDifference>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1TestRunDifference());
  o.add(buildGoogleCloudDialogflowCxV3beta1TestRunDifference());
  return o;
}

void checkUnnamed6158(
    core.List<api.GoogleCloudDialogflowCxV3beta1TestRunDifference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1TestRunDifference(
      o[0] as api.GoogleCloudDialogflowCxV3beta1TestRunDifference);
  checkGoogleCloudDialogflowCxV3beta1TestRunDifference(
      o[1] as api.GoogleCloudDialogflowCxV3beta1TestRunDifference);
}

core.Map<core.String, core.Object> buildUnnamed6159() {
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

void checkUnnamed6159(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted27 = (o['x']) as core.Map;
  unittest.expect(casted27, unittest.hasLength(3));
  unittest.expect(casted27['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted27['bool'], unittest.equals(true));
  unittest.expect(casted27['string'], unittest.equals('foo'));
  var casted28 = (o['y']) as core.Map;
  unittest.expect(casted28, unittest.hasLength(3));
  unittest.expect(casted28['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted28['bool'], unittest.equals(true));
  unittest.expect(casted28['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessageText>
    buildUnnamed6160() {
  var o = <api.GoogleCloudDialogflowCxV3beta1ResponseMessageText>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessageText());
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessageText());
  return o;
}

void checkUnnamed6160(
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
    o.diagnosticInfo = buildUnnamed6157();
    o.differences = buildUnnamed6158();
    o.sessionParameters = buildUnnamed6159();
    o.status = buildGoogleRpcStatus();
    o.textResponses = buildUnnamed6160();
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
    checkUnnamed6157(o.diagnosticInfo);
    checkUnnamed6158(o.differences);
    checkUnnamed6159(o.sessionParameters);
    checkGoogleRpcStatus(o.status as api.GoogleRpcStatus);
    checkUnnamed6160(o.textResponses);
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

core.List<api.GoogleCloudDialogflowCxV3beta1FormParameter> buildUnnamed6161() {
  var o = <api.GoogleCloudDialogflowCxV3beta1FormParameter>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1FormParameter());
  o.add(buildGoogleCloudDialogflowCxV3beta1FormParameter());
  return o;
}

void checkUnnamed6161(
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
    o.parameters = buildUnnamed6161();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Form--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1Form(
    api.GoogleCloudDialogflowCxV3beta1Form o) {
  buildCounterGoogleCloudDialogflowCxV3beta1Form++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1Form < 3) {
    checkUnnamed6161(o.parameters);
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
    var casted29 = (o.defaultValue) as core.Map;
    unittest.expect(casted29, unittest.hasLength(3));
    unittest.expect(casted29['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted29['bool'], unittest.equals(true));
    unittest.expect(casted29['string'], unittest.equals('foo'));
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

core.List<api.GoogleCloudDialogflowCxV3beta1EventHandler> buildUnnamed6162() {
  var o = <api.GoogleCloudDialogflowCxV3beta1EventHandler>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1EventHandler());
  o.add(buildGoogleCloudDialogflowCxV3beta1EventHandler());
  return o;
}

void checkUnnamed6162(
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
    o.repromptEventHandlers = buildUnnamed6162();
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
    checkUnnamed6162(o.repromptEventHandlers);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FormParameterFillBehavior--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases>
    buildUnnamed6163() {
  var o = <api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases());
  o.add(buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases());
  return o;
}

void checkUnnamed6163(
    core.List<api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases(
      o[0] as api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases);
  checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases(
      o[1] as api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases);
}

core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage>
    buildUnnamed6164() {
  var o = <api.GoogleCloudDialogflowCxV3beta1ResponseMessage>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  return o;
}

void checkUnnamed6164(
    core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(
      o[0] as api.GoogleCloudDialogflowCxV3beta1ResponseMessage);
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(
      o[1] as api.GoogleCloudDialogflowCxV3beta1ResponseMessage);
}

core.List<api.GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction>
    buildUnnamed6165() {
  var o = <api.GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction());
  o.add(buildGoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction());
  return o;
}

void checkUnnamed6165(
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
    o.conditionalCases = buildUnnamed6163();
    o.messages = buildUnnamed6164();
    o.setParameterActions = buildUnnamed6165();
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
    checkUnnamed6163(o.conditionalCases);
    checkUnnamed6164(o.messages);
    checkUnnamed6165(o.setParameterActions);
    unittest.expect(o.tag, unittest.equals('foo'));
    unittest.expect(o.webhook, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1Fulfillment--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase>
    buildUnnamed6166() {
  var o = <api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase());
  o.add(buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase());
  return o;
}

void checkUnnamed6166(
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
    o.cases = buildUnnamed6166();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases(
    api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases o) {
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases <
      3) {
    checkUnnamed6166(o.cases);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases--;
}

core.List<
        api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent>
    buildUnnamed6167() {
  var o = <
      api.GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent>[];
  o.add(
      buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent());
  o.add(
      buildGoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent());
  return o;
}

void checkUnnamed6167(
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
    o.caseContent = buildUnnamed6167();
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
    checkUnnamed6167(o.caseContent);
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
    var casted30 = (o.value) as core.Map;
    unittest.expect(casted30, unittest.hasLength(3));
    unittest.expect(casted30['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted30['bool'], unittest.equals(true));
    unittest.expect(casted30['string'], unittest.equals('foo'));
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

core.List<api.GoogleRpcStatus> buildUnnamed6168() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed6168(core.List<api.GoogleRpcStatus> o) {
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
    o.warnings = buildUnnamed6168();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportDocumentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ImportDocumentsResponse(
    api.GoogleCloudDialogflowCxV3beta1ImportDocumentsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ImportDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportDocumentsResponse < 3) {
    checkUnnamed6168(o.warnings);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportDocumentsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1TestCaseError> buildUnnamed6169() {
  var o = <api.GoogleCloudDialogflowCxV3beta1TestCaseError>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1TestCaseError());
  o.add(buildGoogleCloudDialogflowCxV3beta1TestCaseError());
  return o;
}

void checkUnnamed6169(
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
    o.errors = buildUnnamed6169();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata(
    api.GoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata < 3) {
    checkUnnamed6169(o.errors);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata--;
}

core.List<core.String> buildUnnamed6170() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6170(core.List<core.String> o) {
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
    o.names = buildUnnamed6170();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ImportTestCasesResponse(
    api.GoogleCloudDialogflowCxV3beta1ImportTestCasesResponse o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesResponse < 3) {
    checkUnnamed6170(o.names);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportTestCasesResponse--;
}

core.List<core.String> buildUnnamed6171() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6171(core.List<core.String> o) {
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
    o.phraseHints = buildUnnamed6171();
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
    checkUnnamed6171(o.phraseHints);
    unittest.expect(o.sampleRateHertz, unittest.equals(42));
    unittest.expect(o.singleUtterance, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1InputAudioConfig--;
}

core.Map<core.String, core.String> buildUnnamed6172() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6172(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3beta1IntentParameter>
    buildUnnamed6173() {
  var o = <api.GoogleCloudDialogflowCxV3beta1IntentParameter>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1IntentParameter());
  o.add(buildGoogleCloudDialogflowCxV3beta1IntentParameter());
  return o;
}

void checkUnnamed6173(
    core.List<api.GoogleCloudDialogflowCxV3beta1IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1IntentParameter(
      o[0] as api.GoogleCloudDialogflowCxV3beta1IntentParameter);
  checkGoogleCloudDialogflowCxV3beta1IntentParameter(
      o[1] as api.GoogleCloudDialogflowCxV3beta1IntentParameter);
}

core.List<api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase>
    buildUnnamed6174() {
  var o = <api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase());
  o.add(buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrase());
  return o;
}

void checkUnnamed6174(
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
    o.labels = buildUnnamed6172();
    o.name = 'foo';
    o.parameters = buildUnnamed6173();
    o.priority = 42;
    o.trainingPhrases = buildUnnamed6174();
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
    checkUnnamed6172(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6173(o.parameters);
    unittest.expect(o.priority, unittest.equals(42));
    checkUnnamed6174(o.trainingPhrases);
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
    buildUnnamed6175() {
  var o = <api.GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart());
  o.add(buildGoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart());
  return o;
}

void checkUnnamed6175(
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
    o.parts = buildUnnamed6175();
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
    checkUnnamed6175(o.parts);
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

core.List<api.GoogleCloudDialogflowCxV3beta1EventHandler> buildUnnamed6176() {
  var o = <api.GoogleCloudDialogflowCxV3beta1EventHandler>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1EventHandler());
  o.add(buildGoogleCloudDialogflowCxV3beta1EventHandler());
  return o;
}

void checkUnnamed6176(
    core.List<api.GoogleCloudDialogflowCxV3beta1EventHandler> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1EventHandler(
      o[0] as api.GoogleCloudDialogflowCxV3beta1EventHandler);
  checkGoogleCloudDialogflowCxV3beta1EventHandler(
      o[1] as api.GoogleCloudDialogflowCxV3beta1EventHandler);
}

core.List<core.String> buildUnnamed6177() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6177(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3beta1TransitionRoute>
    buildUnnamed6178() {
  var o = <api.GoogleCloudDialogflowCxV3beta1TransitionRoute>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1TransitionRoute());
  o.add(buildGoogleCloudDialogflowCxV3beta1TransitionRoute());
  return o;
}

void checkUnnamed6178(
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
    o.eventHandlers = buildUnnamed6176();
    o.form = buildGoogleCloudDialogflowCxV3beta1Form();
    o.name = 'foo';
    o.transitionRouteGroups = buildUnnamed6177();
    o.transitionRoutes = buildUnnamed6178();
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
    checkUnnamed6176(o.eventHandlers);
    checkGoogleCloudDialogflowCxV3beta1Form(
        o.form as api.GoogleCloudDialogflowCxV3beta1Form);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6177(o.transitionRouteGroups);
    checkUnnamed6178(o.transitionRoutes);
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
    buildUnnamed6179() {
  var o = <api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo());
  o.add(buildGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo());
  return o;
}

void checkUnnamed6179(
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
    o.parameterInfo = buildUnnamed6179();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1PageInfoFormInfo(
    api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfo o) {
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo < 3) {
    checkUnnamed6179(o.parameterInfo);
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
    var casted31 = (o.value) as core.Map;
    unittest.expect(casted31, unittest.hasLength(3));
    unittest.expect(casted31['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted31['bool'], unittest.equals(true));
    unittest.expect(casted31['string'], unittest.equals('foo'));
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

core.Map<core.String, core.Object> buildUnnamed6180() {
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

void checkUnnamed6180(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted32 = (o['x']) as core.Map;
  unittest.expect(casted32, unittest.hasLength(3));
  unittest.expect(casted32['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted32['bool'], unittest.equals(true));
  unittest.expect(casted32['string'], unittest.equals('foo'));
  var casted33 = (o['y']) as core.Map;
  unittest.expect(casted33, unittest.hasLength(3));
  unittest.expect(casted33['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted33['bool'], unittest.equals(true));
  unittest.expect(casted33['string'], unittest.equals('foo'));
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
    o.payload = buildUnnamed6180();
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
    checkUnnamed6180(o.payload);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio(o.playAudio
        as api.GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageText(
        o.text as api.GoogleCloudDialogflowCxV3beta1ResponseMessageText);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage--;
}

core.Map<core.String, core.Object> buildUnnamed6181() {
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

void checkUnnamed6181(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted34 = (o['x']) as core.Map;
  unittest.expect(casted34, unittest.hasLength(3));
  unittest.expect(casted34['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted34['bool'], unittest.equals(true));
  unittest.expect(casted34['string'], unittest.equals('foo'));
  var casted35 = (o['y']) as core.Map;
  unittest.expect(casted35, unittest.hasLength(3));
  unittest.expect(casted35['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted35['bool'], unittest.equals(true));
  unittest.expect(casted35['string'], unittest.equals('foo'));
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
    o.metadata = buildUnnamed6181();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess <
      3) {
    checkUnnamed6181(o.metadata);
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

core.Map<core.String, core.Object> buildUnnamed6182() {
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

void checkUnnamed6182(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted36 = (o['x']) as core.Map;
  unittest.expect(casted36, unittest.hasLength(3));
  unittest.expect(casted36['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted36['bool'], unittest.equals(true));
  unittest.expect(casted36['string'], unittest.equals('foo'));
  var casted37 = (o['y']) as core.Map;
  unittest.expect(casted37, unittest.hasLength(3));
  unittest.expect(casted37['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted37['bool'], unittest.equals(true));
  unittest.expect(casted37['string'], unittest.equals('foo'));
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
    o.metadata = buildUnnamed6182();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff <
      3) {
    checkUnnamed6182(o.metadata);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment>
    buildUnnamed6183() {
  var o =
      <api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment());
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment());
  return o;
}

void checkUnnamed6183(
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
    o.segments = buildUnnamed6183();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio < 3) {
    checkUnnamed6183(o.segments);
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

core.List<core.String> buildUnnamed6184() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6184(core.List<core.String> o) {
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
    o.text = buildUnnamed6184();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageText(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageText o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText < 3) {
    unittest.expect(o.allowPlaybackInterruption, unittest.isTrue);
    checkUnnamed6184(o.text);
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

core.Map<core.String, core.Object> buildUnnamed6185() {
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

void checkUnnamed6185(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted38 = (o['x']) as core.Map;
  unittest.expect(casted38, unittest.hasLength(3));
  unittest.expect(casted38['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted38['bool'], unittest.equals(true));
  unittest.expect(casted38['string'], unittest.equals('foo'));
  var casted39 = (o['y']) as core.Map;
  unittest.expect(casted39, unittest.hasLength(3));
  unittest.expect(casted39['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted39['bool'], unittest.equals(true));
  unittest.expect(casted39['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo = 0;
api.GoogleCloudDialogflowCxV3beta1SessionInfo
    buildGoogleCloudDialogflowCxV3beta1SessionInfo() {
  var o = api.GoogleCloudDialogflowCxV3beta1SessionInfo();
  buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo < 3) {
    o.parameters = buildUnnamed6185();
    o.session = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1SessionInfo(
    api.GoogleCloudDialogflowCxV3beta1SessionInfo o) {
  buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo < 3) {
    checkUnnamed6185(o.parameters);
    unittest.expect(o.session, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo--;
}

core.List<core.String> buildUnnamed6186() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6186(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowCxV3beta1ConversationTurn>
    buildUnnamed6187() {
  var o = <api.GoogleCloudDialogflowCxV3beta1ConversationTurn>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1ConversationTurn());
  o.add(buildGoogleCloudDialogflowCxV3beta1ConversationTurn());
  return o;
}

void checkUnnamed6187(
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
    o.tags = buildUnnamed6186();
    o.testCaseConversationTurns = buildUnnamed6187();
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
    checkUnnamed6186(o.tags);
    checkUnnamed6187(o.testCaseConversationTurns);
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
    buildUnnamed6188() {
  var o = <api.GoogleCloudDialogflowCxV3beta1ConversationTurn>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1ConversationTurn());
  o.add(buildGoogleCloudDialogflowCxV3beta1ConversationTurn());
  return o;
}

void checkUnnamed6188(
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
    o.conversationTurns = buildUnnamed6188();
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
    checkUnnamed6188(o.conversationTurns);
    unittest.expect(o.environment, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.testResult, unittest.equals('foo'));
    unittest.expect(o.testTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestCaseResult--;
}

core.List<core.String> buildUnnamed6189() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6189(core.List<core.String> o) {
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
    o.trackingParameters = buildUnnamed6189();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1TestConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1TestConfig(
    api.GoogleCloudDialogflowCxV3beta1TestConfig o) {
  buildCounterGoogleCloudDialogflowCxV3beta1TestConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1TestConfig < 3) {
    unittest.expect(o.flow, unittest.equals('foo'));
    checkUnnamed6189(o.trackingParameters);
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
    buildUnnamed6190() {
  var o = <api.GoogleCloudDialogflowCxV3beta1ResponseMessage>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  return o;
}

void checkUnnamed6190(
    core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(
      o[0] as api.GoogleCloudDialogflowCxV3beta1ResponseMessage);
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(
      o[1] as api.GoogleCloudDialogflowCxV3beta1ResponseMessage);
}

core.Map<core.String, core.Object> buildUnnamed6191() {
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

void checkUnnamed6191(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted40 = (o['x']) as core.Map;
  unittest.expect(casted40, unittest.hasLength(3));
  unittest.expect(casted40['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted40['bool'], unittest.equals(true));
  unittest.expect(casted40['string'], unittest.equals('foo'));
  var casted41 = (o['y']) as core.Map;
  unittest.expect(casted41, unittest.hasLength(3));
  unittest.expect(casted41['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted41['bool'], unittest.equals(true));
  unittest.expect(casted41['string'], unittest.equals('foo'));
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
    o.messages = buildUnnamed6190();
    o.pageInfo = buildGoogleCloudDialogflowCxV3beta1PageInfo();
    o.payload = buildUnnamed6191();
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
    checkUnnamed6190(o.messages);
    checkGoogleCloudDialogflowCxV3beta1PageInfo(
        o.pageInfo as api.GoogleCloudDialogflowCxV3beta1PageInfo);
    checkUnnamed6191(o.payload);
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
    buildUnnamed6192() {
  var o = <core.String,
      api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue>{};
  o['x'] =
      buildGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue();
  o['y'] =
      buildGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue();
  return o;
}

void checkUnnamed6192(
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
    o.parameters = buildUnnamed6192();
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
    checkUnnamed6192(o.parameters);
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
    var casted42 = (o.resolvedValue) as core.Map;
    unittest.expect(casted42, unittest.hasLength(3));
    unittest.expect(casted42['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted42['bool'], unittest.equals(true));
    unittest.expect(casted42['string'], unittest.equals('foo'));
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

core.Map<core.String, core.Object> buildUnnamed6193() {
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

void checkUnnamed6193(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted43 = (o['x']) as core.Map;
  unittest.expect(casted43, unittest.hasLength(3));
  unittest.expect(casted43['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted43['bool'], unittest.equals(true));
  unittest.expect(casted43['string'], unittest.equals('foo'));
  var casted44 = (o['y']) as core.Map;
  unittest.expect(casted44, unittest.hasLength(3));
  unittest.expect(casted44['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted44['bool'], unittest.equals(true));
  unittest.expect(casted44['string'], unittest.equals('foo'));
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
    o.payload = buildUnnamed6193();
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
    checkUnnamed6193(o.payload);
    checkGoogleCloudDialogflowCxV3beta1SessionInfo(
        o.sessionInfo as api.GoogleCloudDialogflowCxV3beta1SessionInfo);
    unittest.expect(o.targetFlow, unittest.equals('foo'));
    unittest.expect(o.targetPage, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage>
    buildUnnamed6194() {
  var o = <api.GoogleCloudDialogflowCxV3beta1ResponseMessage>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  return o;
}

void checkUnnamed6194(
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
    o.messages = buildUnnamed6194();
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
    checkUnnamed6194(o.messages);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse--;
}

core.List<core.String> buildUnnamed6195() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6195(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2Agent = 0;
api.GoogleCloudDialogflowV2Agent buildGoogleCloudDialogflowV2Agent() {
  var o = api.GoogleCloudDialogflowV2Agent();
  buildCounterGoogleCloudDialogflowV2Agent++;
  if (buildCounterGoogleCloudDialogflowV2Agent < 3) {
    o.apiVersion = 'foo';
    o.avatarUri = 'foo';
    o.classificationThreshold = 42.0;
    o.defaultLanguageCode = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.enableLogging = true;
    o.matchMode = 'foo';
    o.parent = 'foo';
    o.supportedLanguageCodes = buildUnnamed6195();
    o.tier = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2Agent--;
  return o;
}

void checkGoogleCloudDialogflowV2Agent(api.GoogleCloudDialogflowV2Agent o) {
  buildCounterGoogleCloudDialogflowV2Agent++;
  if (buildCounterGoogleCloudDialogflowV2Agent < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.avatarUri, unittest.equals('foo'));
    unittest.expect(o.classificationThreshold, unittest.equals(42.0));
    unittest.expect(o.defaultLanguageCode, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.enableLogging, unittest.isTrue);
    unittest.expect(o.matchMode, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    checkUnnamed6195(o.supportedLanguageCodes);
    unittest.expect(o.tier, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2Agent--;
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
    var casted45 = (o.formattedValue) as core.Map;
    unittest.expect(casted45, unittest.hasLength(3));
    unittest.expect(casted45['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted45['bool'], unittest.equals(true));
    unittest.expect(casted45['string'], unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2AnnotatedMessagePart--;
}

core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> buildUnnamed6196() {
  var o = <api.GoogleCloudDialogflowV2EntityTypeEntity>[];
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

void checkUnnamed6196(
    core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityTypeEntity(
      o[0] as api.GoogleCloudDialogflowV2EntityTypeEntity);
  checkGoogleCloudDialogflowV2EntityTypeEntity(
      o[1] as api.GoogleCloudDialogflowV2EntityTypeEntity);
}

core.int buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest = 0;
api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest
    buildGoogleCloudDialogflowV2BatchCreateEntitiesRequest() {
  var o = api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest();
  buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest < 3) {
    o.entities = buildUnnamed6196();
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchCreateEntitiesRequest(
    api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest < 3) {
    checkUnnamed6196(o.entities);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest--;
}

core.List<core.String> buildUnnamed6197() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6197(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest = 0;
api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest
    buildGoogleCloudDialogflowV2BatchDeleteEntitiesRequest() {
  var o = api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest();
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest < 3) {
    o.entityValues = buildUnnamed6197();
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchDeleteEntitiesRequest(
    api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest < 3) {
    checkUnnamed6197(o.entityValues);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest--;
}

core.List<core.String> buildUnnamed6198() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6198(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest = 0;
api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest
    buildGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest() {
  var o = api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest();
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest < 3) {
    o.entityTypeNames = buildUnnamed6198();
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest(
    api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest < 3) {
    checkUnnamed6198(o.entityTypeNames);
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest--;
}

core.List<api.GoogleCloudDialogflowV2Intent> buildUnnamed6199() {
  var o = <api.GoogleCloudDialogflowV2Intent>[];
  o.add(buildGoogleCloudDialogflowV2Intent());
  o.add(buildGoogleCloudDialogflowV2Intent());
  return o;
}

void checkUnnamed6199(core.List<api.GoogleCloudDialogflowV2Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Intent(o[0] as api.GoogleCloudDialogflowV2Intent);
  checkGoogleCloudDialogflowV2Intent(o[1] as api.GoogleCloudDialogflowV2Intent);
}

core.int buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest = 0;
api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest
    buildGoogleCloudDialogflowV2BatchDeleteIntentsRequest() {
  var o = api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest();
  buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest < 3) {
    o.intents = buildUnnamed6199();
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchDeleteIntentsRequest(
    api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest < 3) {
    checkUnnamed6199(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest--;
}

core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> buildUnnamed6200() {
  var o = <api.GoogleCloudDialogflowV2EntityTypeEntity>[];
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

void checkUnnamed6200(
    core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityTypeEntity(
      o[0] as api.GoogleCloudDialogflowV2EntityTypeEntity);
  checkGoogleCloudDialogflowV2EntityTypeEntity(
      o[1] as api.GoogleCloudDialogflowV2EntityTypeEntity);
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest = 0;
api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest
    buildGoogleCloudDialogflowV2BatchUpdateEntitiesRequest() {
  var o = api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest();
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest < 3) {
    o.entities = buildUnnamed6200();
    o.languageCode = 'foo';
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchUpdateEntitiesRequest(
    api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest < 3) {
    checkUnnamed6200(o.entities);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest = 0;
api.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest
    buildGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest() {
  var o = api.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest();
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest < 3) {
    o.entityTypeBatchInline = buildGoogleCloudDialogflowV2EntityTypeBatch();
    o.entityTypeBatchUri = 'foo';
    o.languageCode = 'foo';
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest(
    api.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest < 3) {
    checkGoogleCloudDialogflowV2EntityTypeBatch(
        o.entityTypeBatchInline as api.GoogleCloudDialogflowV2EntityTypeBatch);
    unittest.expect(o.entityTypeBatchUri, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest--;
}

core.List<api.GoogleCloudDialogflowV2EntityType> buildUnnamed6201() {
  var o = <api.GoogleCloudDialogflowV2EntityType>[];
  o.add(buildGoogleCloudDialogflowV2EntityType());
  o.add(buildGoogleCloudDialogflowV2EntityType());
  return o;
}

void checkUnnamed6201(core.List<api.GoogleCloudDialogflowV2EntityType> o) {
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
    o.entityTypes = buildUnnamed6201();
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse(
    api.GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse < 3) {
    checkUnnamed6201(o.entityTypes);
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse--;
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest = 0;
api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest
    buildGoogleCloudDialogflowV2BatchUpdateIntentsRequest() {
  var o = api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest();
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest < 3) {
    o.intentBatchInline = buildGoogleCloudDialogflowV2IntentBatch();
    o.intentBatchUri = 'foo';
    o.intentView = 'foo';
    o.languageCode = 'foo';
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchUpdateIntentsRequest(
    api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest < 3) {
    checkGoogleCloudDialogflowV2IntentBatch(
        o.intentBatchInline as api.GoogleCloudDialogflowV2IntentBatch);
    unittest.expect(o.intentBatchUri, unittest.equals('foo'));
    unittest.expect(o.intentView, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest--;
}

core.List<api.GoogleCloudDialogflowV2Intent> buildUnnamed6202() {
  var o = <api.GoogleCloudDialogflowV2Intent>[];
  o.add(buildGoogleCloudDialogflowV2Intent());
  o.add(buildGoogleCloudDialogflowV2Intent());
  return o;
}

void checkUnnamed6202(core.List<api.GoogleCloudDialogflowV2Intent> o) {
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
    o.intents = buildUnnamed6202();
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchUpdateIntentsResponse(
    api.GoogleCloudDialogflowV2BatchUpdateIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse < 3) {
    checkUnnamed6202(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed6203() {
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

void checkUnnamed6203(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2Context = 0;
api.GoogleCloudDialogflowV2Context buildGoogleCloudDialogflowV2Context() {
  var o = api.GoogleCloudDialogflowV2Context();
  buildCounterGoogleCloudDialogflowV2Context++;
  if (buildCounterGoogleCloudDialogflowV2Context < 3) {
    o.lifespanCount = 42;
    o.name = 'foo';
    o.parameters = buildUnnamed6203();
  }
  buildCounterGoogleCloudDialogflowV2Context--;
  return o;
}

void checkGoogleCloudDialogflowV2Context(api.GoogleCloudDialogflowV2Context o) {
  buildCounterGoogleCloudDialogflowV2Context++;
  if (buildCounterGoogleCloudDialogflowV2Context < 3) {
    unittest.expect(o.lifespanCount, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6203(o.parameters);
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

core.int buildCounterGoogleCloudDialogflowV2DetectIntentRequest = 0;
api.GoogleCloudDialogflowV2DetectIntentRequest
    buildGoogleCloudDialogflowV2DetectIntentRequest() {
  var o = api.GoogleCloudDialogflowV2DetectIntentRequest();
  buildCounterGoogleCloudDialogflowV2DetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2DetectIntentRequest < 3) {
    o.inputAudio = 'foo';
    o.outputAudioConfig = buildGoogleCloudDialogflowV2OutputAudioConfig();
    o.outputAudioConfigMask = 'foo';
    o.queryInput = buildGoogleCloudDialogflowV2QueryInput();
    o.queryParams = buildGoogleCloudDialogflowV2QueryParameters();
  }
  buildCounterGoogleCloudDialogflowV2DetectIntentRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2DetectIntentRequest(
    api.GoogleCloudDialogflowV2DetectIntentRequest o) {
  buildCounterGoogleCloudDialogflowV2DetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2DetectIntentRequest < 3) {
    unittest.expect(o.inputAudio, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2OutputAudioConfig(
        o.outputAudioConfig as api.GoogleCloudDialogflowV2OutputAudioConfig);
    unittest.expect(o.outputAudioConfigMask, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2QueryInput(
        o.queryInput as api.GoogleCloudDialogflowV2QueryInput);
    checkGoogleCloudDialogflowV2QueryParameters(
        o.queryParams as api.GoogleCloudDialogflowV2QueryParameters);
  }
  buildCounterGoogleCloudDialogflowV2DetectIntentRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2DetectIntentResponse = 0;
api.GoogleCloudDialogflowV2DetectIntentResponse
    buildGoogleCloudDialogflowV2DetectIntentResponse() {
  var o = api.GoogleCloudDialogflowV2DetectIntentResponse();
  buildCounterGoogleCloudDialogflowV2DetectIntentResponse++;
  if (buildCounterGoogleCloudDialogflowV2DetectIntentResponse < 3) {
    o.outputAudio = 'foo';
    o.outputAudioConfig = buildGoogleCloudDialogflowV2OutputAudioConfig();
    o.queryResult = buildGoogleCloudDialogflowV2QueryResult();
    o.responseId = 'foo';
    o.webhookStatus = buildGoogleRpcStatus();
  }
  buildCounterGoogleCloudDialogflowV2DetectIntentResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2DetectIntentResponse(
    api.GoogleCloudDialogflowV2DetectIntentResponse o) {
  buildCounterGoogleCloudDialogflowV2DetectIntentResponse++;
  if (buildCounterGoogleCloudDialogflowV2DetectIntentResponse < 3) {
    unittest.expect(o.outputAudio, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2OutputAudioConfig(
        o.outputAudioConfig as api.GoogleCloudDialogflowV2OutputAudioConfig);
    checkGoogleCloudDialogflowV2QueryResult(
        o.queryResult as api.GoogleCloudDialogflowV2QueryResult);
    unittest.expect(o.responseId, unittest.equals('foo'));
    checkGoogleRpcStatus(o.webhookStatus as api.GoogleRpcStatus);
  }
  buildCounterGoogleCloudDialogflowV2DetectIntentResponse--;
}

core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> buildUnnamed6204() {
  var o = <api.GoogleCloudDialogflowV2EntityTypeEntity>[];
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

void checkUnnamed6204(
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
    o.entities = buildUnnamed6204();
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
    checkUnnamed6204(o.entities);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2EntityType--;
}

core.List<api.GoogleCloudDialogflowV2EntityType> buildUnnamed6205() {
  var o = <api.GoogleCloudDialogflowV2EntityType>[];
  o.add(buildGoogleCloudDialogflowV2EntityType());
  o.add(buildGoogleCloudDialogflowV2EntityType());
  return o;
}

void checkUnnamed6205(core.List<api.GoogleCloudDialogflowV2EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityType(
      o[0] as api.GoogleCloudDialogflowV2EntityType);
  checkGoogleCloudDialogflowV2EntityType(
      o[1] as api.GoogleCloudDialogflowV2EntityType);
}

core.int buildCounterGoogleCloudDialogflowV2EntityTypeBatch = 0;
api.GoogleCloudDialogflowV2EntityTypeBatch
    buildGoogleCloudDialogflowV2EntityTypeBatch() {
  var o = api.GoogleCloudDialogflowV2EntityTypeBatch();
  buildCounterGoogleCloudDialogflowV2EntityTypeBatch++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeBatch < 3) {
    o.entityTypes = buildUnnamed6205();
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeBatch--;
  return o;
}

void checkGoogleCloudDialogflowV2EntityTypeBatch(
    api.GoogleCloudDialogflowV2EntityTypeBatch o) {
  buildCounterGoogleCloudDialogflowV2EntityTypeBatch++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeBatch < 3) {
    checkUnnamed6205(o.entityTypes);
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeBatch--;
}

core.List<core.String> buildUnnamed6206() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6206(core.List<core.String> o) {
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
    o.synonyms = buildUnnamed6206();
    o.value = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity--;
  return o;
}

void checkGoogleCloudDialogflowV2EntityTypeEntity(
    api.GoogleCloudDialogflowV2EntityTypeEntity o) {
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeEntity < 3) {
    checkUnnamed6206(o.synonyms);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity--;
}

core.int buildCounterGoogleCloudDialogflowV2Environment = 0;
api.GoogleCloudDialogflowV2Environment
    buildGoogleCloudDialogflowV2Environment() {
  var o = api.GoogleCloudDialogflowV2Environment();
  buildCounterGoogleCloudDialogflowV2Environment++;
  if (buildCounterGoogleCloudDialogflowV2Environment < 3) {
    o.agentVersion = 'foo';
    o.description = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2Environment--;
  return o;
}

void checkGoogleCloudDialogflowV2Environment(
    api.GoogleCloudDialogflowV2Environment o) {
  buildCounterGoogleCloudDialogflowV2Environment++;
  if (buildCounterGoogleCloudDialogflowV2Environment < 3) {
    unittest.expect(o.agentVersion, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2Environment--;
}

core.Map<core.String, core.Object> buildUnnamed6207() {
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

void checkUnnamed6207(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2EventInput = 0;
api.GoogleCloudDialogflowV2EventInput buildGoogleCloudDialogflowV2EventInput() {
  var o = api.GoogleCloudDialogflowV2EventInput();
  buildCounterGoogleCloudDialogflowV2EventInput++;
  if (buildCounterGoogleCloudDialogflowV2EventInput < 3) {
    o.languageCode = 'foo';
    o.name = 'foo';
    o.parameters = buildUnnamed6207();
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
    checkUnnamed6207(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2EventInput--;
}

core.int buildCounterGoogleCloudDialogflowV2ExportAgentRequest = 0;
api.GoogleCloudDialogflowV2ExportAgentRequest
    buildGoogleCloudDialogflowV2ExportAgentRequest() {
  var o = api.GoogleCloudDialogflowV2ExportAgentRequest();
  buildCounterGoogleCloudDialogflowV2ExportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2ExportAgentRequest < 3) {
    o.agentUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ExportAgentRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2ExportAgentRequest(
    api.GoogleCloudDialogflowV2ExportAgentRequest o) {
  buildCounterGoogleCloudDialogflowV2ExportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2ExportAgentRequest < 3) {
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ExportAgentRequest--;
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

core.List<api.GoogleCloudDialogflowV2FulfillmentFeature> buildUnnamed6208() {
  var o = <api.GoogleCloudDialogflowV2FulfillmentFeature>[];
  o.add(buildGoogleCloudDialogflowV2FulfillmentFeature());
  o.add(buildGoogleCloudDialogflowV2FulfillmentFeature());
  return o;
}

void checkUnnamed6208(
    core.List<api.GoogleCloudDialogflowV2FulfillmentFeature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2FulfillmentFeature(
      o[0] as api.GoogleCloudDialogflowV2FulfillmentFeature);
  checkGoogleCloudDialogflowV2FulfillmentFeature(
      o[1] as api.GoogleCloudDialogflowV2FulfillmentFeature);
}

core.int buildCounterGoogleCloudDialogflowV2Fulfillment = 0;
api.GoogleCloudDialogflowV2Fulfillment
    buildGoogleCloudDialogflowV2Fulfillment() {
  var o = api.GoogleCloudDialogflowV2Fulfillment();
  buildCounterGoogleCloudDialogflowV2Fulfillment++;
  if (buildCounterGoogleCloudDialogflowV2Fulfillment < 3) {
    o.displayName = 'foo';
    o.enabled = true;
    o.features = buildUnnamed6208();
    o.genericWebService =
        buildGoogleCloudDialogflowV2FulfillmentGenericWebService();
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2Fulfillment--;
  return o;
}

void checkGoogleCloudDialogflowV2Fulfillment(
    api.GoogleCloudDialogflowV2Fulfillment o) {
  buildCounterGoogleCloudDialogflowV2Fulfillment++;
  if (buildCounterGoogleCloudDialogflowV2Fulfillment < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.enabled, unittest.isTrue);
    checkUnnamed6208(o.features);
    checkGoogleCloudDialogflowV2FulfillmentGenericWebService(o.genericWebService
        as api.GoogleCloudDialogflowV2FulfillmentGenericWebService);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2Fulfillment--;
}

core.int buildCounterGoogleCloudDialogflowV2FulfillmentFeature = 0;
api.GoogleCloudDialogflowV2FulfillmentFeature
    buildGoogleCloudDialogflowV2FulfillmentFeature() {
  var o = api.GoogleCloudDialogflowV2FulfillmentFeature();
  buildCounterGoogleCloudDialogflowV2FulfillmentFeature++;
  if (buildCounterGoogleCloudDialogflowV2FulfillmentFeature < 3) {
    o.type = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2FulfillmentFeature--;
  return o;
}

void checkGoogleCloudDialogflowV2FulfillmentFeature(
    api.GoogleCloudDialogflowV2FulfillmentFeature o) {
  buildCounterGoogleCloudDialogflowV2FulfillmentFeature++;
  if (buildCounterGoogleCloudDialogflowV2FulfillmentFeature < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2FulfillmentFeature--;
}

core.Map<core.String, core.String> buildUnnamed6209() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6209(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2FulfillmentGenericWebService = 0;
api.GoogleCloudDialogflowV2FulfillmentGenericWebService
    buildGoogleCloudDialogflowV2FulfillmentGenericWebService() {
  var o = api.GoogleCloudDialogflowV2FulfillmentGenericWebService();
  buildCounterGoogleCloudDialogflowV2FulfillmentGenericWebService++;
  if (buildCounterGoogleCloudDialogflowV2FulfillmentGenericWebService < 3) {
    o.isCloudFunction = true;
    o.password = 'foo';
    o.requestHeaders = buildUnnamed6209();
    o.uri = 'foo';
    o.username = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2FulfillmentGenericWebService--;
  return o;
}

void checkGoogleCloudDialogflowV2FulfillmentGenericWebService(
    api.GoogleCloudDialogflowV2FulfillmentGenericWebService o) {
  buildCounterGoogleCloudDialogflowV2FulfillmentGenericWebService++;
  if (buildCounterGoogleCloudDialogflowV2FulfillmentGenericWebService < 3) {
    unittest.expect(o.isCloudFunction, unittest.isTrue);
    unittest.expect(o.password, unittest.equals('foo'));
    checkUnnamed6209(o.requestHeaders);
    unittest.expect(o.uri, unittest.equals('foo'));
    unittest.expect(o.username, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2FulfillmentGenericWebService--;
}

core.int buildCounterGoogleCloudDialogflowV2ImportAgentRequest = 0;
api.GoogleCloudDialogflowV2ImportAgentRequest
    buildGoogleCloudDialogflowV2ImportAgentRequest() {
  var o = api.GoogleCloudDialogflowV2ImportAgentRequest();
  buildCounterGoogleCloudDialogflowV2ImportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2ImportAgentRequest < 3) {
    o.agentContent = 'foo';
    o.agentUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ImportAgentRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2ImportAgentRequest(
    api.GoogleCloudDialogflowV2ImportAgentRequest o) {
  buildCounterGoogleCloudDialogflowV2ImportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2ImportAgentRequest < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ImportAgentRequest--;
}

core.List<core.String> buildUnnamed6210() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6210(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2SpeechContext> buildUnnamed6211() {
  var o = <api.GoogleCloudDialogflowV2SpeechContext>[];
  o.add(buildGoogleCloudDialogflowV2SpeechContext());
  o.add(buildGoogleCloudDialogflowV2SpeechContext());
  return o;
}

void checkUnnamed6211(core.List<api.GoogleCloudDialogflowV2SpeechContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2SpeechContext(
      o[0] as api.GoogleCloudDialogflowV2SpeechContext);
  checkGoogleCloudDialogflowV2SpeechContext(
      o[1] as api.GoogleCloudDialogflowV2SpeechContext);
}

core.int buildCounterGoogleCloudDialogflowV2InputAudioConfig = 0;
api.GoogleCloudDialogflowV2InputAudioConfig
    buildGoogleCloudDialogflowV2InputAudioConfig() {
  var o = api.GoogleCloudDialogflowV2InputAudioConfig();
  buildCounterGoogleCloudDialogflowV2InputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowV2InputAudioConfig < 3) {
    o.audioEncoding = 'foo';
    o.enableWordInfo = true;
    o.languageCode = 'foo';
    o.model = 'foo';
    o.modelVariant = 'foo';
    o.phraseHints = buildUnnamed6210();
    o.sampleRateHertz = 42;
    o.singleUtterance = true;
    o.speechContexts = buildUnnamed6211();
  }
  buildCounterGoogleCloudDialogflowV2InputAudioConfig--;
  return o;
}

void checkGoogleCloudDialogflowV2InputAudioConfig(
    api.GoogleCloudDialogflowV2InputAudioConfig o) {
  buildCounterGoogleCloudDialogflowV2InputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowV2InputAudioConfig < 3) {
    unittest.expect(o.audioEncoding, unittest.equals('foo'));
    unittest.expect(o.enableWordInfo, unittest.isTrue);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.modelVariant, unittest.equals('foo'));
    checkUnnamed6210(o.phraseHints);
    unittest.expect(o.sampleRateHertz, unittest.equals(42));
    unittest.expect(o.singleUtterance, unittest.isTrue);
    checkUnnamed6211(o.speechContexts);
  }
  buildCounterGoogleCloudDialogflowV2InputAudioConfig--;
}

core.List<core.String> buildUnnamed6212() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6212(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6213() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6213(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2IntentFollowupIntentInfo>
    buildUnnamed6214() {
  var o = <api.GoogleCloudDialogflowV2IntentFollowupIntentInfo>[];
  o.add(buildGoogleCloudDialogflowV2IntentFollowupIntentInfo());
  o.add(buildGoogleCloudDialogflowV2IntentFollowupIntentInfo());
  return o;
}

void checkUnnamed6214(
    core.List<api.GoogleCloudDialogflowV2IntentFollowupIntentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(
      o[0] as api.GoogleCloudDialogflowV2IntentFollowupIntentInfo);
  checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(
      o[1] as api.GoogleCloudDialogflowV2IntentFollowupIntentInfo);
}

core.List<core.String> buildUnnamed6215() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6215(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2IntentMessage> buildUnnamed6216() {
  var o = <api.GoogleCloudDialogflowV2IntentMessage>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

void checkUnnamed6216(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(
      o[0] as api.GoogleCloudDialogflowV2IntentMessage);
  checkGoogleCloudDialogflowV2IntentMessage(
      o[1] as api.GoogleCloudDialogflowV2IntentMessage);
}

core.List<api.GoogleCloudDialogflowV2Context> buildUnnamed6217() {
  var o = <api.GoogleCloudDialogflowV2Context>[];
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

void checkUnnamed6217(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(
      o[0] as api.GoogleCloudDialogflowV2Context);
  checkGoogleCloudDialogflowV2Context(
      o[1] as api.GoogleCloudDialogflowV2Context);
}

core.List<api.GoogleCloudDialogflowV2IntentParameter> buildUnnamed6218() {
  var o = <api.GoogleCloudDialogflowV2IntentParameter>[];
  o.add(buildGoogleCloudDialogflowV2IntentParameter());
  o.add(buildGoogleCloudDialogflowV2IntentParameter());
  return o;
}

void checkUnnamed6218(core.List<api.GoogleCloudDialogflowV2IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentParameter(
      o[0] as api.GoogleCloudDialogflowV2IntentParameter);
  checkGoogleCloudDialogflowV2IntentParameter(
      o[1] as api.GoogleCloudDialogflowV2IntentParameter);
}

core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrase> buildUnnamed6219() {
  var o = <api.GoogleCloudDialogflowV2IntentTrainingPhrase>[];
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrase());
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrase());
  return o;
}

void checkUnnamed6219(
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
    o.defaultResponsePlatforms = buildUnnamed6212();
    o.displayName = 'foo';
    o.events = buildUnnamed6213();
    o.followupIntentInfo = buildUnnamed6214();
    o.inputContextNames = buildUnnamed6215();
    o.isFallback = true;
    o.messages = buildUnnamed6216();
    o.mlDisabled = true;
    o.name = 'foo';
    o.outputContexts = buildUnnamed6217();
    o.parameters = buildUnnamed6218();
    o.parentFollowupIntentName = 'foo';
    o.priority = 42;
    o.resetContexts = true;
    o.rootFollowupIntentName = 'foo';
    o.trainingPhrases = buildUnnamed6219();
    o.webhookState = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2Intent--;
  return o;
}

void checkGoogleCloudDialogflowV2Intent(api.GoogleCloudDialogflowV2Intent o) {
  buildCounterGoogleCloudDialogflowV2Intent++;
  if (buildCounterGoogleCloudDialogflowV2Intent < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed6212(o.defaultResponsePlatforms);
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed6213(o.events);
    checkUnnamed6214(o.followupIntentInfo);
    checkUnnamed6215(o.inputContextNames);
    unittest.expect(o.isFallback, unittest.isTrue);
    checkUnnamed6216(o.messages);
    unittest.expect(o.mlDisabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6217(o.outputContexts);
    checkUnnamed6218(o.parameters);
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    unittest.expect(o.resetContexts, unittest.isTrue);
    unittest.expect(o.rootFollowupIntentName, unittest.equals('foo'));
    checkUnnamed6219(o.trainingPhrases);
    unittest.expect(o.webhookState, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2Intent--;
}

core.List<api.GoogleCloudDialogflowV2Intent> buildUnnamed6220() {
  var o = <api.GoogleCloudDialogflowV2Intent>[];
  o.add(buildGoogleCloudDialogflowV2Intent());
  o.add(buildGoogleCloudDialogflowV2Intent());
  return o;
}

void checkUnnamed6220(core.List<api.GoogleCloudDialogflowV2Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Intent(o[0] as api.GoogleCloudDialogflowV2Intent);
  checkGoogleCloudDialogflowV2Intent(o[1] as api.GoogleCloudDialogflowV2Intent);
}

core.int buildCounterGoogleCloudDialogflowV2IntentBatch = 0;
api.GoogleCloudDialogflowV2IntentBatch
    buildGoogleCloudDialogflowV2IntentBatch() {
  var o = api.GoogleCloudDialogflowV2IntentBatch();
  buildCounterGoogleCloudDialogflowV2IntentBatch++;
  if (buildCounterGoogleCloudDialogflowV2IntentBatch < 3) {
    o.intents = buildUnnamed6220();
  }
  buildCounterGoogleCloudDialogflowV2IntentBatch--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentBatch(
    api.GoogleCloudDialogflowV2IntentBatch o) {
  buildCounterGoogleCloudDialogflowV2IntentBatch++;
  if (buildCounterGoogleCloudDialogflowV2IntentBatch < 3) {
    checkUnnamed6220(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2IntentBatch--;
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

core.Map<core.String, core.Object> buildUnnamed6221() {
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

void checkUnnamed6221(core.Map<core.String, core.Object> o) {
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
    o.payload = buildUnnamed6221();
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
    checkUnnamed6221(o.payload);
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
    buildUnnamed6222() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageBasicCardButton>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  return o;
}

void checkUnnamed6222(
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
    o.buttons = buildUnnamed6222();
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
    checkUnnamed6222(o.buttons);
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
    buildUnnamed6223() {
  var o = <
      api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem>[];
  o.add(
      buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem());
  o.add(
      buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem());
  return o;
}

void checkUnnamed6223(
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
    o.items = buildUnnamed6223();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard(
    api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard < 3) {
    unittest.expect(o.imageDisplayOptions, unittest.equals('foo'));
    checkUnnamed6223(o.items);
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
    buildUnnamed6224() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageCardButton>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageCardButton());
  o.add(buildGoogleCloudDialogflowV2IntentMessageCardButton());
  return o;
}

void checkUnnamed6224(
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
    o.buttons = buildUnnamed6224();
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
    checkUnnamed6224(o.buttons);
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
    buildUnnamed6225() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem());
  o.add(buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem());
  return o;
}

void checkUnnamed6225(
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
    o.items = buildUnnamed6225();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageCarouselSelect(
    api.GoogleCloudDialogflowV2IntentMessageCarouselSelect o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect < 3) {
    checkUnnamed6225(o.items);
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
    buildUnnamed6226() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageListSelectItem>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageListSelectItem());
  o.add(buildGoogleCloudDialogflowV2IntentMessageListSelectItem());
  return o;
}

void checkUnnamed6226(
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
    o.items = buildUnnamed6226();
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
    checkUnnamed6226(o.items);
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
    buildUnnamed6227() {
  var o = <
      api.GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject>[];
  o.add(
      buildGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject());
  o.add(
      buildGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject());
  return o;
}

void checkUnnamed6227(
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
    o.mediaObjects = buildUnnamed6227();
    o.mediaType = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageMediaContent(
    api.GoogleCloudDialogflowV2IntentMessageMediaContent o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent < 3) {
    checkUnnamed6227(o.mediaObjects);
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

core.List<core.String> buildUnnamed6228() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6228(core.List<core.String> o) {
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
    o.quickReplies = buildUnnamed6228();
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageQuickReplies(
    api.GoogleCloudDialogflowV2IntentMessageQuickReplies o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies < 3) {
    checkUnnamed6228(o.quickReplies);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies--;
}

core.List<core.String> buildUnnamed6229() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6229(core.List<core.String> o) {
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
    o.synonyms = buildUnnamed6229();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(
    api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed6229(o.synonyms);
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
    buildUnnamed6230() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageSimpleResponse>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageSimpleResponse());
  o.add(buildGoogleCloudDialogflowV2IntentMessageSimpleResponse());
  return o;
}

void checkUnnamed6230(
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
    o.simpleResponses = buildUnnamed6230();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageSimpleResponses(
    api.GoogleCloudDialogflowV2IntentMessageSimpleResponses o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses < 3) {
    checkUnnamed6230(o.simpleResponses);
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
    buildUnnamed6231() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageSuggestion>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageSuggestion());
  o.add(buildGoogleCloudDialogflowV2IntentMessageSuggestion());
  return o;
}

void checkUnnamed6231(
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
    o.suggestions = buildUnnamed6231();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageSuggestions(
    api.GoogleCloudDialogflowV2IntentMessageSuggestions o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions < 3) {
    checkUnnamed6231(o.suggestions);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions--;
}

core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton>
    buildUnnamed6232() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageBasicCardButton>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  return o;
}

void checkUnnamed6232(
    core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(
      o[0] as api.GoogleCloudDialogflowV2IntentMessageBasicCardButton);
  checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(
      o[1] as api.GoogleCloudDialogflowV2IntentMessageBasicCardButton);
}

core.List<api.GoogleCloudDialogflowV2IntentMessageColumnProperties>
    buildUnnamed6233() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageColumnProperties>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageColumnProperties());
  o.add(buildGoogleCloudDialogflowV2IntentMessageColumnProperties());
  return o;
}

void checkUnnamed6233(
    core.List<api.GoogleCloudDialogflowV2IntentMessageColumnProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageColumnProperties(
      o[0] as api.GoogleCloudDialogflowV2IntentMessageColumnProperties);
  checkGoogleCloudDialogflowV2IntentMessageColumnProperties(
      o[1] as api.GoogleCloudDialogflowV2IntentMessageColumnProperties);
}

core.List<api.GoogleCloudDialogflowV2IntentMessageTableCardRow>
    buildUnnamed6234() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageTableCardRow>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageTableCardRow());
  o.add(buildGoogleCloudDialogflowV2IntentMessageTableCardRow());
  return o;
}

void checkUnnamed6234(
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
    o.buttons = buildUnnamed6232();
    o.columnProperties = buildUnnamed6233();
    o.image = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.rows = buildUnnamed6234();
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
    checkUnnamed6232(o.buttons);
    checkUnnamed6233(o.columnProperties);
    checkGoogleCloudDialogflowV2IntentMessageImage(
        o.image as api.GoogleCloudDialogflowV2IntentMessageImage);
    checkUnnamed6234(o.rows);
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
    buildUnnamed6235() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageTableCardCell>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageTableCardCell());
  o.add(buildGoogleCloudDialogflowV2IntentMessageTableCardCell());
  return o;
}

void checkUnnamed6235(
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
    o.cells = buildUnnamed6235();
    o.dividerAfter = true;
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageTableCardRow(
    api.GoogleCloudDialogflowV2IntentMessageTableCardRow o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow < 3) {
    checkUnnamed6235(o.cells);
    unittest.expect(o.dividerAfter, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow--;
}

core.List<core.String> buildUnnamed6236() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6236(core.List<core.String> o) {
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
    o.text = buildUnnamed6236();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageText--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageText(
    api.GoogleCloudDialogflowV2IntentMessageText o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageText < 3) {
    checkUnnamed6236(o.text);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageText--;
}

core.List<core.String> buildUnnamed6237() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6237(core.List<core.String> o) {
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
    o.prompts = buildUnnamed6237();
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
    checkUnnamed6237(o.prompts);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentParameter--;
}

core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrasePart>
    buildUnnamed6238() {
  var o = <api.GoogleCloudDialogflowV2IntentTrainingPhrasePart>[];
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrasePart());
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrasePart());
  return o;
}

void checkUnnamed6238(
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
    o.parts = buildUnnamed6238();
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
    checkUnnamed6238(o.parts);
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

core.List<api.GoogleCloudDialogflowV2Context> buildUnnamed6239() {
  var o = <api.GoogleCloudDialogflowV2Context>[];
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

void checkUnnamed6239(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(
      o[0] as api.GoogleCloudDialogflowV2Context);
  checkGoogleCloudDialogflowV2Context(
      o[1] as api.GoogleCloudDialogflowV2Context);
}

core.int buildCounterGoogleCloudDialogflowV2ListContextsResponse = 0;
api.GoogleCloudDialogflowV2ListContextsResponse
    buildGoogleCloudDialogflowV2ListContextsResponse() {
  var o = api.GoogleCloudDialogflowV2ListContextsResponse();
  buildCounterGoogleCloudDialogflowV2ListContextsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListContextsResponse < 3) {
    o.contexts = buildUnnamed6239();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ListContextsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListContextsResponse(
    api.GoogleCloudDialogflowV2ListContextsResponse o) {
  buildCounterGoogleCloudDialogflowV2ListContextsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListContextsResponse < 3) {
    checkUnnamed6239(o.contexts);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ListContextsResponse--;
}

core.List<api.GoogleCloudDialogflowV2EntityType> buildUnnamed6240() {
  var o = <api.GoogleCloudDialogflowV2EntityType>[];
  o.add(buildGoogleCloudDialogflowV2EntityType());
  o.add(buildGoogleCloudDialogflowV2EntityType());
  return o;
}

void checkUnnamed6240(core.List<api.GoogleCloudDialogflowV2EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityType(
      o[0] as api.GoogleCloudDialogflowV2EntityType);
  checkGoogleCloudDialogflowV2EntityType(
      o[1] as api.GoogleCloudDialogflowV2EntityType);
}

core.int buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse = 0;
api.GoogleCloudDialogflowV2ListEntityTypesResponse
    buildGoogleCloudDialogflowV2ListEntityTypesResponse() {
  var o = api.GoogleCloudDialogflowV2ListEntityTypesResponse();
  buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse < 3) {
    o.entityTypes = buildUnnamed6240();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListEntityTypesResponse(
    api.GoogleCloudDialogflowV2ListEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse < 3) {
    checkUnnamed6240(o.entityTypes);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse--;
}

core.List<api.GoogleCloudDialogflowV2Environment> buildUnnamed6241() {
  var o = <api.GoogleCloudDialogflowV2Environment>[];
  o.add(buildGoogleCloudDialogflowV2Environment());
  o.add(buildGoogleCloudDialogflowV2Environment());
  return o;
}

void checkUnnamed6241(core.List<api.GoogleCloudDialogflowV2Environment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Environment(
      o[0] as api.GoogleCloudDialogflowV2Environment);
  checkGoogleCloudDialogflowV2Environment(
      o[1] as api.GoogleCloudDialogflowV2Environment);
}

core.int buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse = 0;
api.GoogleCloudDialogflowV2ListEnvironmentsResponse
    buildGoogleCloudDialogflowV2ListEnvironmentsResponse() {
  var o = api.GoogleCloudDialogflowV2ListEnvironmentsResponse();
  buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse < 3) {
    o.environments = buildUnnamed6241();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListEnvironmentsResponse(
    api.GoogleCloudDialogflowV2ListEnvironmentsResponse o) {
  buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse < 3) {
    checkUnnamed6241(o.environments);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse--;
}

core.List<api.GoogleCloudDialogflowV2Intent> buildUnnamed6242() {
  var o = <api.GoogleCloudDialogflowV2Intent>[];
  o.add(buildGoogleCloudDialogflowV2Intent());
  o.add(buildGoogleCloudDialogflowV2Intent());
  return o;
}

void checkUnnamed6242(core.List<api.GoogleCloudDialogflowV2Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Intent(o[0] as api.GoogleCloudDialogflowV2Intent);
  checkGoogleCloudDialogflowV2Intent(o[1] as api.GoogleCloudDialogflowV2Intent);
}

core.int buildCounterGoogleCloudDialogflowV2ListIntentsResponse = 0;
api.GoogleCloudDialogflowV2ListIntentsResponse
    buildGoogleCloudDialogflowV2ListIntentsResponse() {
  var o = api.GoogleCloudDialogflowV2ListIntentsResponse();
  buildCounterGoogleCloudDialogflowV2ListIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListIntentsResponse < 3) {
    o.intents = buildUnnamed6242();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ListIntentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListIntentsResponse(
    api.GoogleCloudDialogflowV2ListIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2ListIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListIntentsResponse < 3) {
    checkUnnamed6242(o.intents);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ListIntentsResponse--;
}

core.List<api.GoogleCloudDialogflowV2SessionEntityType> buildUnnamed6243() {
  var o = <api.GoogleCloudDialogflowV2SessionEntityType>[];
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  return o;
}

void checkUnnamed6243(
    core.List<api.GoogleCloudDialogflowV2SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2SessionEntityType(
      o[0] as api.GoogleCloudDialogflowV2SessionEntityType);
  checkGoogleCloudDialogflowV2SessionEntityType(
      o[1] as api.GoogleCloudDialogflowV2SessionEntityType);
}

core.int buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse = 0;
api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse
    buildGoogleCloudDialogflowV2ListSessionEntityTypesResponse() {
  var o = api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse();
  buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sessionEntityTypes = buildUnnamed6243();
  }
  buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListSessionEntityTypesResponse(
    api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6243(o.sessionEntityTypes);
  }
  buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse--;
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

core.List<api.GoogleCloudDialogflowV2AnnotatedMessagePart> buildUnnamed6244() {
  var o = <api.GoogleCloudDialogflowV2AnnotatedMessagePart>[];
  o.add(buildGoogleCloudDialogflowV2AnnotatedMessagePart());
  o.add(buildGoogleCloudDialogflowV2AnnotatedMessagePart());
  return o;
}

void checkUnnamed6244(
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
    o.parts = buildUnnamed6244();
  }
  buildCounterGoogleCloudDialogflowV2MessageAnnotation--;
  return o;
}

void checkGoogleCloudDialogflowV2MessageAnnotation(
    api.GoogleCloudDialogflowV2MessageAnnotation o) {
  buildCounterGoogleCloudDialogflowV2MessageAnnotation++;
  if (buildCounterGoogleCloudDialogflowV2MessageAnnotation < 3) {
    unittest.expect(o.containEntities, unittest.isTrue);
    checkUnnamed6244(o.parts);
  }
  buildCounterGoogleCloudDialogflowV2MessageAnnotation--;
}

core.Map<core.String, core.Object> buildUnnamed6245() {
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

void checkUnnamed6245(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest = 0;
api.GoogleCloudDialogflowV2OriginalDetectIntentRequest
    buildGoogleCloudDialogflowV2OriginalDetectIntentRequest() {
  var o = api.GoogleCloudDialogflowV2OriginalDetectIntentRequest();
  buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest < 3) {
    o.payload = buildUnnamed6245();
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
    checkUnnamed6245(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2OutputAudioConfig = 0;
api.GoogleCloudDialogflowV2OutputAudioConfig
    buildGoogleCloudDialogflowV2OutputAudioConfig() {
  var o = api.GoogleCloudDialogflowV2OutputAudioConfig();
  buildCounterGoogleCloudDialogflowV2OutputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowV2OutputAudioConfig < 3) {
    o.audioEncoding = 'foo';
    o.sampleRateHertz = 42;
    o.synthesizeSpeechConfig =
        buildGoogleCloudDialogflowV2SynthesizeSpeechConfig();
  }
  buildCounterGoogleCloudDialogflowV2OutputAudioConfig--;
  return o;
}

void checkGoogleCloudDialogflowV2OutputAudioConfig(
    api.GoogleCloudDialogflowV2OutputAudioConfig o) {
  buildCounterGoogleCloudDialogflowV2OutputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowV2OutputAudioConfig < 3) {
    unittest.expect(o.audioEncoding, unittest.equals('foo'));
    unittest.expect(o.sampleRateHertz, unittest.equals(42));
    checkGoogleCloudDialogflowV2SynthesizeSpeechConfig(o.synthesizeSpeechConfig
        as api.GoogleCloudDialogflowV2SynthesizeSpeechConfig);
  }
  buildCounterGoogleCloudDialogflowV2OutputAudioConfig--;
}

core.int buildCounterGoogleCloudDialogflowV2QueryInput = 0;
api.GoogleCloudDialogflowV2QueryInput buildGoogleCloudDialogflowV2QueryInput() {
  var o = api.GoogleCloudDialogflowV2QueryInput();
  buildCounterGoogleCloudDialogflowV2QueryInput++;
  if (buildCounterGoogleCloudDialogflowV2QueryInput < 3) {
    o.audioConfig = buildGoogleCloudDialogflowV2InputAudioConfig();
    o.event = buildGoogleCloudDialogflowV2EventInput();
    o.text = buildGoogleCloudDialogflowV2TextInput();
  }
  buildCounterGoogleCloudDialogflowV2QueryInput--;
  return o;
}

void checkGoogleCloudDialogflowV2QueryInput(
    api.GoogleCloudDialogflowV2QueryInput o) {
  buildCounterGoogleCloudDialogflowV2QueryInput++;
  if (buildCounterGoogleCloudDialogflowV2QueryInput < 3) {
    checkGoogleCloudDialogflowV2InputAudioConfig(
        o.audioConfig as api.GoogleCloudDialogflowV2InputAudioConfig);
    checkGoogleCloudDialogflowV2EventInput(
        o.event as api.GoogleCloudDialogflowV2EventInput);
    checkGoogleCloudDialogflowV2TextInput(
        o.text as api.GoogleCloudDialogflowV2TextInput);
  }
  buildCounterGoogleCloudDialogflowV2QueryInput--;
}

core.List<api.GoogleCloudDialogflowV2Context> buildUnnamed6246() {
  var o = <api.GoogleCloudDialogflowV2Context>[];
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

void checkUnnamed6246(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(
      o[0] as api.GoogleCloudDialogflowV2Context);
  checkGoogleCloudDialogflowV2Context(
      o[1] as api.GoogleCloudDialogflowV2Context);
}

core.Map<core.String, core.Object> buildUnnamed6247() {
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

void checkUnnamed6247(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted54 = (o['x']) as core.Map;
  unittest.expect(casted54, unittest.hasLength(3));
  unittest.expect(casted54['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted54['bool'], unittest.equals(true));
  unittest.expect(casted54['string'], unittest.equals('foo'));
  var casted55 = (o['y']) as core.Map;
  unittest.expect(casted55, unittest.hasLength(3));
  unittest.expect(casted55['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted55['bool'], unittest.equals(true));
  unittest.expect(casted55['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2SessionEntityType> buildUnnamed6248() {
  var o = <api.GoogleCloudDialogflowV2SessionEntityType>[];
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  return o;
}

void checkUnnamed6248(
    core.List<api.GoogleCloudDialogflowV2SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2SessionEntityType(
      o[0] as api.GoogleCloudDialogflowV2SessionEntityType);
  checkGoogleCloudDialogflowV2SessionEntityType(
      o[1] as api.GoogleCloudDialogflowV2SessionEntityType);
}

core.Map<core.String, core.String> buildUnnamed6249() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6249(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2QueryParameters = 0;
api.GoogleCloudDialogflowV2QueryParameters
    buildGoogleCloudDialogflowV2QueryParameters() {
  var o = api.GoogleCloudDialogflowV2QueryParameters();
  buildCounterGoogleCloudDialogflowV2QueryParameters++;
  if (buildCounterGoogleCloudDialogflowV2QueryParameters < 3) {
    o.contexts = buildUnnamed6246();
    o.geoLocation = buildGoogleTypeLatLng();
    o.payload = buildUnnamed6247();
    o.resetContexts = true;
    o.sentimentAnalysisRequestConfig =
        buildGoogleCloudDialogflowV2SentimentAnalysisRequestConfig();
    o.sessionEntityTypes = buildUnnamed6248();
    o.timeZone = 'foo';
    o.webhookHeaders = buildUnnamed6249();
  }
  buildCounterGoogleCloudDialogflowV2QueryParameters--;
  return o;
}

void checkGoogleCloudDialogflowV2QueryParameters(
    api.GoogleCloudDialogflowV2QueryParameters o) {
  buildCounterGoogleCloudDialogflowV2QueryParameters++;
  if (buildCounterGoogleCloudDialogflowV2QueryParameters < 3) {
    checkUnnamed6246(o.contexts);
    checkGoogleTypeLatLng(o.geoLocation as api.GoogleTypeLatLng);
    checkUnnamed6247(o.payload);
    unittest.expect(o.resetContexts, unittest.isTrue);
    checkGoogleCloudDialogflowV2SentimentAnalysisRequestConfig(
        o.sentimentAnalysisRequestConfig
            as api.GoogleCloudDialogflowV2SentimentAnalysisRequestConfig);
    checkUnnamed6248(o.sessionEntityTypes);
    unittest.expect(o.timeZone, unittest.equals('foo'));
    checkUnnamed6249(o.webhookHeaders);
  }
  buildCounterGoogleCloudDialogflowV2QueryParameters--;
}

core.Map<core.String, core.Object> buildUnnamed6250() {
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

void checkUnnamed6250(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted56 = (o['x']) as core.Map;
  unittest.expect(casted56, unittest.hasLength(3));
  unittest.expect(casted56['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted56['bool'], unittest.equals(true));
  unittest.expect(casted56['string'], unittest.equals('foo'));
  var casted57 = (o['y']) as core.Map;
  unittest.expect(casted57, unittest.hasLength(3));
  unittest.expect(casted57['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted57['bool'], unittest.equals(true));
  unittest.expect(casted57['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2IntentMessage> buildUnnamed6251() {
  var o = <api.GoogleCloudDialogflowV2IntentMessage>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

void checkUnnamed6251(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(
      o[0] as api.GoogleCloudDialogflowV2IntentMessage);
  checkGoogleCloudDialogflowV2IntentMessage(
      o[1] as api.GoogleCloudDialogflowV2IntentMessage);
}

core.List<api.GoogleCloudDialogflowV2Context> buildUnnamed6252() {
  var o = <api.GoogleCloudDialogflowV2Context>[];
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

void checkUnnamed6252(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(
      o[0] as api.GoogleCloudDialogflowV2Context);
  checkGoogleCloudDialogflowV2Context(
      o[1] as api.GoogleCloudDialogflowV2Context);
}

core.Map<core.String, core.Object> buildUnnamed6253() {
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

void checkUnnamed6253(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed6254() {
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

void checkUnnamed6254(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2QueryResult = 0;
api.GoogleCloudDialogflowV2QueryResult
    buildGoogleCloudDialogflowV2QueryResult() {
  var o = api.GoogleCloudDialogflowV2QueryResult();
  buildCounterGoogleCloudDialogflowV2QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2QueryResult < 3) {
    o.action = 'foo';
    o.allRequiredParamsPresent = true;
    o.diagnosticInfo = buildUnnamed6250();
    o.fulfillmentMessages = buildUnnamed6251();
    o.fulfillmentText = 'foo';
    o.intent = buildGoogleCloudDialogflowV2Intent();
    o.intentDetectionConfidence = 42.0;
    o.languageCode = 'foo';
    o.outputContexts = buildUnnamed6252();
    o.parameters = buildUnnamed6253();
    o.queryText = 'foo';
    o.sentimentAnalysisResult =
        buildGoogleCloudDialogflowV2SentimentAnalysisResult();
    o.speechRecognitionConfidence = 42.0;
    o.webhookPayload = buildUnnamed6254();
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
    checkUnnamed6250(o.diagnosticInfo);
    checkUnnamed6251(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2Intent(
        o.intent as api.GoogleCloudDialogflowV2Intent);
    unittest.expect(o.intentDetectionConfidence, unittest.equals(42.0));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed6252(o.outputContexts);
    checkUnnamed6253(o.parameters);
    unittest.expect(o.queryText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2SentimentAnalysisResult(
        o.sentimentAnalysisResult
            as api.GoogleCloudDialogflowV2SentimentAnalysisResult);
    unittest.expect(o.speechRecognitionConfidence, unittest.equals(42.0));
    checkUnnamed6254(o.webhookPayload);
    unittest.expect(o.webhookSource, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2QueryResult--;
}

core.int buildCounterGoogleCloudDialogflowV2RestoreAgentRequest = 0;
api.GoogleCloudDialogflowV2RestoreAgentRequest
    buildGoogleCloudDialogflowV2RestoreAgentRequest() {
  var o = api.GoogleCloudDialogflowV2RestoreAgentRequest();
  buildCounterGoogleCloudDialogflowV2RestoreAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2RestoreAgentRequest < 3) {
    o.agentContent = 'foo';
    o.agentUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2RestoreAgentRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2RestoreAgentRequest(
    api.GoogleCloudDialogflowV2RestoreAgentRequest o) {
  buildCounterGoogleCloudDialogflowV2RestoreAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2RestoreAgentRequest < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2RestoreAgentRequest--;
}

core.List<api.GoogleCloudDialogflowV2Agent> buildUnnamed6255() {
  var o = <api.GoogleCloudDialogflowV2Agent>[];
  o.add(buildGoogleCloudDialogflowV2Agent());
  o.add(buildGoogleCloudDialogflowV2Agent());
  return o;
}

void checkUnnamed6255(core.List<api.GoogleCloudDialogflowV2Agent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Agent(o[0] as api.GoogleCloudDialogflowV2Agent);
  checkGoogleCloudDialogflowV2Agent(o[1] as api.GoogleCloudDialogflowV2Agent);
}

core.int buildCounterGoogleCloudDialogflowV2SearchAgentsResponse = 0;
api.GoogleCloudDialogflowV2SearchAgentsResponse
    buildGoogleCloudDialogflowV2SearchAgentsResponse() {
  var o = api.GoogleCloudDialogflowV2SearchAgentsResponse();
  buildCounterGoogleCloudDialogflowV2SearchAgentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2SearchAgentsResponse < 3) {
    o.agents = buildUnnamed6255();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2SearchAgentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2SearchAgentsResponse(
    api.GoogleCloudDialogflowV2SearchAgentsResponse o) {
  buildCounterGoogleCloudDialogflowV2SearchAgentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2SearchAgentsResponse < 3) {
    checkUnnamed6255(o.agents);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2SearchAgentsResponse--;
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

core.int buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig = 0;
api.GoogleCloudDialogflowV2SentimentAnalysisRequestConfig
    buildGoogleCloudDialogflowV2SentimentAnalysisRequestConfig() {
  var o = api.GoogleCloudDialogflowV2SentimentAnalysisRequestConfig();
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig++;
  if (buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig < 3) {
    o.analyzeQueryTextSentiment = true;
  }
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig--;
  return o;
}

void checkGoogleCloudDialogflowV2SentimentAnalysisRequestConfig(
    api.GoogleCloudDialogflowV2SentimentAnalysisRequestConfig o) {
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig++;
  if (buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig < 3) {
    unittest.expect(o.analyzeQueryTextSentiment, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig--;
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

core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> buildUnnamed6256() {
  var o = <api.GoogleCloudDialogflowV2EntityTypeEntity>[];
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

void checkUnnamed6256(
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
    o.entities = buildUnnamed6256();
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
    checkUnnamed6256(o.entities);
    unittest.expect(o.entityOverrideMode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2SessionEntityType--;
}

core.List<core.String> buildUnnamed6257() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6257(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2SpeechContext = 0;
api.GoogleCloudDialogflowV2SpeechContext
    buildGoogleCloudDialogflowV2SpeechContext() {
  var o = api.GoogleCloudDialogflowV2SpeechContext();
  buildCounterGoogleCloudDialogflowV2SpeechContext++;
  if (buildCounterGoogleCloudDialogflowV2SpeechContext < 3) {
    o.boost = 42.0;
    o.phrases = buildUnnamed6257();
  }
  buildCounterGoogleCloudDialogflowV2SpeechContext--;
  return o;
}

void checkGoogleCloudDialogflowV2SpeechContext(
    api.GoogleCloudDialogflowV2SpeechContext o) {
  buildCounterGoogleCloudDialogflowV2SpeechContext++;
  if (buildCounterGoogleCloudDialogflowV2SpeechContext < 3) {
    unittest.expect(o.boost, unittest.equals(42.0));
    checkUnnamed6257(o.phrases);
  }
  buildCounterGoogleCloudDialogflowV2SpeechContext--;
}

core.List<core.String> buildUnnamed6258() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6258(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig = 0;
api.GoogleCloudDialogflowV2SynthesizeSpeechConfig
    buildGoogleCloudDialogflowV2SynthesizeSpeechConfig() {
  var o = api.GoogleCloudDialogflowV2SynthesizeSpeechConfig();
  buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig++;
  if (buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig < 3) {
    o.effectsProfileId = buildUnnamed6258();
    o.pitch = 42.0;
    o.speakingRate = 42.0;
    o.voice = buildGoogleCloudDialogflowV2VoiceSelectionParams();
    o.volumeGainDb = 42.0;
  }
  buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig--;
  return o;
}

void checkGoogleCloudDialogflowV2SynthesizeSpeechConfig(
    api.GoogleCloudDialogflowV2SynthesizeSpeechConfig o) {
  buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig++;
  if (buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig < 3) {
    checkUnnamed6258(o.effectsProfileId);
    unittest.expect(o.pitch, unittest.equals(42.0));
    unittest.expect(o.speakingRate, unittest.equals(42.0));
    checkGoogleCloudDialogflowV2VoiceSelectionParams(
        o.voice as api.GoogleCloudDialogflowV2VoiceSelectionParams);
    unittest.expect(o.volumeGainDb, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig--;
}

core.int buildCounterGoogleCloudDialogflowV2TextInput = 0;
api.GoogleCloudDialogflowV2TextInput buildGoogleCloudDialogflowV2TextInput() {
  var o = api.GoogleCloudDialogflowV2TextInput();
  buildCounterGoogleCloudDialogflowV2TextInput++;
  if (buildCounterGoogleCloudDialogflowV2TextInput < 3) {
    o.languageCode = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2TextInput--;
  return o;
}

void checkGoogleCloudDialogflowV2TextInput(
    api.GoogleCloudDialogflowV2TextInput o) {
  buildCounterGoogleCloudDialogflowV2TextInput++;
  if (buildCounterGoogleCloudDialogflowV2TextInput < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2TextInput--;
}

core.int buildCounterGoogleCloudDialogflowV2TrainAgentRequest = 0;
api.GoogleCloudDialogflowV2TrainAgentRequest
    buildGoogleCloudDialogflowV2TrainAgentRequest() {
  var o = api.GoogleCloudDialogflowV2TrainAgentRequest();
  buildCounterGoogleCloudDialogflowV2TrainAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2TrainAgentRequest < 3) {}
  buildCounterGoogleCloudDialogflowV2TrainAgentRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2TrainAgentRequest(
    api.GoogleCloudDialogflowV2TrainAgentRequest o) {
  buildCounterGoogleCloudDialogflowV2TrainAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2TrainAgentRequest < 3) {}
  buildCounterGoogleCloudDialogflowV2TrainAgentRequest--;
}

core.List<core.String> buildUnnamed6259() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6259(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2ValidationError = 0;
api.GoogleCloudDialogflowV2ValidationError
    buildGoogleCloudDialogflowV2ValidationError() {
  var o = api.GoogleCloudDialogflowV2ValidationError();
  buildCounterGoogleCloudDialogflowV2ValidationError++;
  if (buildCounterGoogleCloudDialogflowV2ValidationError < 3) {
    o.entries = buildUnnamed6259();
    o.errorMessage = 'foo';
    o.severity = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ValidationError--;
  return o;
}

void checkGoogleCloudDialogflowV2ValidationError(
    api.GoogleCloudDialogflowV2ValidationError o) {
  buildCounterGoogleCloudDialogflowV2ValidationError++;
  if (buildCounterGoogleCloudDialogflowV2ValidationError < 3) {
    checkUnnamed6259(o.entries);
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ValidationError--;
}

core.List<api.GoogleCloudDialogflowV2ValidationError> buildUnnamed6260() {
  var o = <api.GoogleCloudDialogflowV2ValidationError>[];
  o.add(buildGoogleCloudDialogflowV2ValidationError());
  o.add(buildGoogleCloudDialogflowV2ValidationError());
  return o;
}

void checkUnnamed6260(core.List<api.GoogleCloudDialogflowV2ValidationError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2ValidationError(
      o[0] as api.GoogleCloudDialogflowV2ValidationError);
  checkGoogleCloudDialogflowV2ValidationError(
      o[1] as api.GoogleCloudDialogflowV2ValidationError);
}

core.int buildCounterGoogleCloudDialogflowV2ValidationResult = 0;
api.GoogleCloudDialogflowV2ValidationResult
    buildGoogleCloudDialogflowV2ValidationResult() {
  var o = api.GoogleCloudDialogflowV2ValidationResult();
  buildCounterGoogleCloudDialogflowV2ValidationResult++;
  if (buildCounterGoogleCloudDialogflowV2ValidationResult < 3) {
    o.validationErrors = buildUnnamed6260();
  }
  buildCounterGoogleCloudDialogflowV2ValidationResult--;
  return o;
}

void checkGoogleCloudDialogflowV2ValidationResult(
    api.GoogleCloudDialogflowV2ValidationResult o) {
  buildCounterGoogleCloudDialogflowV2ValidationResult++;
  if (buildCounterGoogleCloudDialogflowV2ValidationResult < 3) {
    checkUnnamed6260(o.validationErrors);
  }
  buildCounterGoogleCloudDialogflowV2ValidationResult--;
}

core.int buildCounterGoogleCloudDialogflowV2VoiceSelectionParams = 0;
api.GoogleCloudDialogflowV2VoiceSelectionParams
    buildGoogleCloudDialogflowV2VoiceSelectionParams() {
  var o = api.GoogleCloudDialogflowV2VoiceSelectionParams();
  buildCounterGoogleCloudDialogflowV2VoiceSelectionParams++;
  if (buildCounterGoogleCloudDialogflowV2VoiceSelectionParams < 3) {
    o.name = 'foo';
    o.ssmlGender = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2VoiceSelectionParams--;
  return o;
}

void checkGoogleCloudDialogflowV2VoiceSelectionParams(
    api.GoogleCloudDialogflowV2VoiceSelectionParams o) {
  buildCounterGoogleCloudDialogflowV2VoiceSelectionParams++;
  if (buildCounterGoogleCloudDialogflowV2VoiceSelectionParams < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.ssmlGender, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2VoiceSelectionParams--;
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

core.List<api.GoogleCloudDialogflowV2IntentMessage> buildUnnamed6261() {
  var o = <api.GoogleCloudDialogflowV2IntentMessage>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

void checkUnnamed6261(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(
      o[0] as api.GoogleCloudDialogflowV2IntentMessage);
  checkGoogleCloudDialogflowV2IntentMessage(
      o[1] as api.GoogleCloudDialogflowV2IntentMessage);
}

core.List<api.GoogleCloudDialogflowV2Context> buildUnnamed6262() {
  var o = <api.GoogleCloudDialogflowV2Context>[];
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

void checkUnnamed6262(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(
      o[0] as api.GoogleCloudDialogflowV2Context);
  checkGoogleCloudDialogflowV2Context(
      o[1] as api.GoogleCloudDialogflowV2Context);
}

core.Map<core.String, core.Object> buildUnnamed6263() {
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

void checkUnnamed6263(core.Map<core.String, core.Object> o) {
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

core.List<api.GoogleCloudDialogflowV2SessionEntityType> buildUnnamed6264() {
  var o = <api.GoogleCloudDialogflowV2SessionEntityType>[];
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  return o;
}

void checkUnnamed6264(
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
    o.fulfillmentMessages = buildUnnamed6261();
    o.fulfillmentText = 'foo';
    o.outputContexts = buildUnnamed6262();
    o.payload = buildUnnamed6263();
    o.sessionEntityTypes = buildUnnamed6264();
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
    checkUnnamed6261(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkUnnamed6262(o.outputContexts);
    checkUnnamed6263(o.payload);
    checkUnnamed6264(o.sessionEntityTypes);
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2WebhookResponse--;
}

core.List<api.GoogleCloudDialogflowV2beta1EntityType> buildUnnamed6265() {
  var o = <api.GoogleCloudDialogflowV2beta1EntityType>[];
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  return o;
}

void checkUnnamed6265(core.List<api.GoogleCloudDialogflowV2beta1EntityType> o) {
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
    o.entityTypes = buildUnnamed6265();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse(
    api.GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse <
      3) {
    checkUnnamed6265(o.entityTypes);
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse--;
}

core.List<api.GoogleCloudDialogflowV2beta1Intent> buildUnnamed6266() {
  var o = <api.GoogleCloudDialogflowV2beta1Intent>[];
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  return o;
}

void checkUnnamed6266(core.List<api.GoogleCloudDialogflowV2beta1Intent> o) {
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
    o.intents = buildUnnamed6266();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse(
    api.GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse < 3) {
    checkUnnamed6266(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed6267() {
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

void checkUnnamed6267(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2beta1Context = 0;
api.GoogleCloudDialogflowV2beta1Context
    buildGoogleCloudDialogflowV2beta1Context() {
  var o = api.GoogleCloudDialogflowV2beta1Context();
  buildCounterGoogleCloudDialogflowV2beta1Context++;
  if (buildCounterGoogleCloudDialogflowV2beta1Context < 3) {
    o.lifespanCount = 42;
    o.name = 'foo';
    o.parameters = buildUnnamed6267();
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
    checkUnnamed6267(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2beta1Context--;
}

core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity> buildUnnamed6268() {
  var o = <api.GoogleCloudDialogflowV2beta1EntityTypeEntity>[];
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  return o;
}

void checkUnnamed6268(
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
    o.entities = buildUnnamed6268();
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
    checkUnnamed6268(o.entities);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityType--;
}

core.List<core.String> buildUnnamed6269() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6269(core.List<core.String> o) {
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
    o.synonyms = buildUnnamed6269();
    o.value = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1EntityTypeEntity(
    api.GoogleCloudDialogflowV2beta1EntityTypeEntity o) {
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity < 3) {
    checkUnnamed6269(o.synonyms);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity--;
}

core.Map<core.String, core.Object> buildUnnamed6270() {
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

void checkUnnamed6270(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2beta1EventInput = 0;
api.GoogleCloudDialogflowV2beta1EventInput
    buildGoogleCloudDialogflowV2beta1EventInput() {
  var o = api.GoogleCloudDialogflowV2beta1EventInput();
  buildCounterGoogleCloudDialogflowV2beta1EventInput++;
  if (buildCounterGoogleCloudDialogflowV2beta1EventInput < 3) {
    o.languageCode = 'foo';
    o.name = 'foo';
    o.parameters = buildUnnamed6270();
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
    checkUnnamed6270(o.parameters);
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

core.List<core.String> buildUnnamed6271() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6271(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6272() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6272(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>
    buildUnnamed6273() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo());
  o.add(buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo());
  return o;
}

void checkUnnamed6273(
    core.List<api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo);
  checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo);
}

core.List<core.String> buildUnnamed6274() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6274(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> buildUnnamed6275() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessage>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

void checkUnnamed6275(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessage);
  checkGoogleCloudDialogflowV2beta1IntentMessage(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessage);
}

core.List<api.GoogleCloudDialogflowV2beta1Context> buildUnnamed6276() {
  var o = <api.GoogleCloudDialogflowV2beta1Context>[];
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

void checkUnnamed6276(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(
      o[0] as api.GoogleCloudDialogflowV2beta1Context);
  checkGoogleCloudDialogflowV2beta1Context(
      o[1] as api.GoogleCloudDialogflowV2beta1Context);
}

core.List<api.GoogleCloudDialogflowV2beta1IntentParameter> buildUnnamed6277() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentParameter>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentParameter());
  o.add(buildGoogleCloudDialogflowV2beta1IntentParameter());
  return o;
}

void checkUnnamed6277(
    core.List<api.GoogleCloudDialogflowV2beta1IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentParameter(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentParameter);
  checkGoogleCloudDialogflowV2beta1IntentParameter(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentParameter);
}

core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase>
    buildUnnamed6278() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase());
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase());
  return o;
}

void checkUnnamed6278(
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
    o.defaultResponsePlatforms = buildUnnamed6271();
    o.displayName = 'foo';
    o.endInteraction = true;
    o.events = buildUnnamed6272();
    o.followupIntentInfo = buildUnnamed6273();
    o.inputContextNames = buildUnnamed6274();
    o.isFallback = true;
    o.messages = buildUnnamed6275();
    o.mlDisabled = true;
    o.mlEnabled = true;
    o.name = 'foo';
    o.outputContexts = buildUnnamed6276();
    o.parameters = buildUnnamed6277();
    o.parentFollowupIntentName = 'foo';
    o.priority = 42;
    o.resetContexts = true;
    o.rootFollowupIntentName = 'foo';
    o.trainingPhrases = buildUnnamed6278();
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
    checkUnnamed6271(o.defaultResponsePlatforms);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.endInteraction, unittest.isTrue);
    checkUnnamed6272(o.events);
    checkUnnamed6273(o.followupIntentInfo);
    checkUnnamed6274(o.inputContextNames);
    unittest.expect(o.isFallback, unittest.isTrue);
    checkUnnamed6275(o.messages);
    unittest.expect(o.mlDisabled, unittest.isTrue);
    unittest.expect(o.mlEnabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6276(o.outputContexts);
    checkUnnamed6277(o.parameters);
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    unittest.expect(o.resetContexts, unittest.isTrue);
    unittest.expect(o.rootFollowupIntentName, unittest.equals('foo'));
    checkUnnamed6278(o.trainingPhrases);
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

core.Map<core.String, core.Object> buildUnnamed6279() {
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

void checkUnnamed6279(core.Map<core.String, core.Object> o) {
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
    o.payload = buildUnnamed6279();
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
    checkUnnamed6279(o.payload);
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
    buildUnnamed6280() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  return o;
}

void checkUnnamed6280(
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
    o.buttons = buildUnnamed6280();
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
    checkUnnamed6280(o.buttons);
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
    buildUnnamed6281() {
  var o = <
      api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem>[];
  o.add(
      buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem());
  o.add(
      buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem());
  return o;
}

void checkUnnamed6281(
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
    o.items = buildUnnamed6281();
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
    checkUnnamed6281(o.items);
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
    buildUnnamed6282() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageCardButton>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCardButton());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCardButton());
  return o;
}

void checkUnnamed6282(
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
    o.buttons = buildUnnamed6282();
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
    checkUnnamed6282(o.buttons);
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
    buildUnnamed6283() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem());
  return o;
}

void checkUnnamed6283(
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
    o.items = buildUnnamed6283();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect(
    api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect < 3) {
    checkUnnamed6283(o.items);
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
    buildUnnamed6284() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem());
  return o;
}

void checkUnnamed6284(
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
    o.items = buildUnnamed6284();
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
    checkUnnamed6284(o.items);
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
    buildUnnamed6285() {
  var o = <
      api.GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject>[];
  o.add(
      buildGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject());
  o.add(
      buildGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject());
  return o;
}

void checkUnnamed6285(
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
    o.mediaObjects = buildUnnamed6285();
    o.mediaType = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageMediaContent(
    api.GoogleCloudDialogflowV2beta1IntentMessageMediaContent o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent < 3) {
    checkUnnamed6285(o.mediaObjects);
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

core.List<core.String> buildUnnamed6286() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6286(core.List<core.String> o) {
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
    o.quickReplies = buildUnnamed6286();
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageQuickReplies(
    api.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies < 3) {
    checkUnnamed6286(o.quickReplies);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies--;
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>
    buildUnnamed6287() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  return o;
}

void checkUnnamed6287(
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
    o.suggestions = buildUnnamed6287();
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
    checkUnnamed6287(o.suggestions);
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
    buildUnnamed6288() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent());
  return o;
}

void checkUnnamed6288(
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
    o.cardContents = buildUnnamed6288();
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
    checkUnnamed6288(o.cardContents);
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
    buildUnnamed6289() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  return o;
}

void checkUnnamed6289(
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
    o.rbmSuggestion = buildUnnamed6289();
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageRbmText(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmText o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText < 3) {
    checkUnnamed6289(o.rbmSuggestion);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText--;
}

core.List<core.String> buildUnnamed6290() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6290(core.List<core.String> o) {
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
    o.synonyms = buildUnnamed6290();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo(
    api.GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed6290(o.synonyms);
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
    buildUnnamed6291() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse());
  return o;
}

void checkUnnamed6291(
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
    o.simpleResponses = buildUnnamed6291();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses(
    api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses <
      3) {
    checkUnnamed6291(o.simpleResponses);
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
    buildUnnamed6292() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion());
  return o;
}

void checkUnnamed6292(
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
    o.suggestions = buildUnnamed6292();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageSuggestions(
    api.GoogleCloudDialogflowV2beta1IntentMessageSuggestions o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions < 3) {
    checkUnnamed6292(o.suggestions);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions--;
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>
    buildUnnamed6293() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  return o;
}

void checkUnnamed6293(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton);
  checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton);
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>
    buildUnnamed6294() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageColumnProperties());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageColumnProperties());
  return o;
}

void checkUnnamed6294(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageColumnProperties(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties);
  checkGoogleCloudDialogflowV2beta1IntentMessageColumnProperties(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties);
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow>
    buildUnnamed6295() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageTableCardRow());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageTableCardRow());
  return o;
}

void checkUnnamed6295(
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
    o.buttons = buildUnnamed6293();
    o.columnProperties = buildUnnamed6294();
    o.image = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.rows = buildUnnamed6295();
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
    checkUnnamed6293(o.buttons);
    checkUnnamed6294(o.columnProperties);
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(
        o.image as api.GoogleCloudDialogflowV2beta1IntentMessageImage);
    checkUnnamed6295(o.rows);
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
    buildUnnamed6296() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageTableCardCell>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageTableCardCell());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageTableCardCell());
  return o;
}

void checkUnnamed6296(
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
    o.cells = buildUnnamed6296();
    o.dividerAfter = true;
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageTableCardRow(
    api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow < 3) {
    checkUnnamed6296(o.cells);
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

core.List<core.String> buildUnnamed6297() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6297(core.List<core.String> o) {
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
    o.text = buildUnnamed6297();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageText(
    api.GoogleCloudDialogflowV2beta1IntentMessageText o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageText < 3) {
    checkUnnamed6297(o.text);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText--;
}

core.List<core.String> buildUnnamed6298() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6298(core.List<core.String> o) {
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
    o.prompts = buildUnnamed6298();
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
    checkUnnamed6298(o.prompts);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentParameter--;
}

core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart>
    buildUnnamed6299() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart());
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart());
  return o;
}

void checkUnnamed6299(
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
    o.parts = buildUnnamed6299();
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
    checkUnnamed6299(o.parts);
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
    buildUnnamed6300() {
  var o = <api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer>[];
  o.add(buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer());
  o.add(buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer());
  return o;
}

void checkUnnamed6300(
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
    o.answers = buildUnnamed6300();
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1KnowledgeAnswers(
    api.GoogleCloudDialogflowV2beta1KnowledgeAnswers o) {
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers < 3) {
    checkUnnamed6300(o.answers);
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

core.Map<core.String, core.Object> buildUnnamed6301() {
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

void checkUnnamed6301(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest =
    0;
api.GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest
    buildGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest() {
  var o = api.GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest();
  buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest < 3) {
    o.payload = buildUnnamed6301();
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
    checkUnnamed6301(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest--;
}

core.Map<core.String, core.Object> buildUnnamed6302() {
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

void checkUnnamed6302(core.Map<core.String, core.Object> o) {
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

core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> buildUnnamed6303() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessage>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

void checkUnnamed6303(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessage);
  checkGoogleCloudDialogflowV2beta1IntentMessage(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessage);
}

core.List<api.GoogleCloudDialogflowV2beta1Context> buildUnnamed6304() {
  var o = <api.GoogleCloudDialogflowV2beta1Context>[];
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

void checkUnnamed6304(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(
      o[0] as api.GoogleCloudDialogflowV2beta1Context);
  checkGoogleCloudDialogflowV2beta1Context(
      o[1] as api.GoogleCloudDialogflowV2beta1Context);
}

core.Map<core.String, core.Object> buildUnnamed6305() {
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

void checkUnnamed6305(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed6306() {
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

void checkUnnamed6306(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2beta1QueryResult = 0;
api.GoogleCloudDialogflowV2beta1QueryResult
    buildGoogleCloudDialogflowV2beta1QueryResult() {
  var o = api.GoogleCloudDialogflowV2beta1QueryResult();
  buildCounterGoogleCloudDialogflowV2beta1QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2beta1QueryResult < 3) {
    o.action = 'foo';
    o.allRequiredParamsPresent = true;
    o.diagnosticInfo = buildUnnamed6302();
    o.fulfillmentMessages = buildUnnamed6303();
    o.fulfillmentText = 'foo';
    o.intent = buildGoogleCloudDialogflowV2beta1Intent();
    o.intentDetectionConfidence = 42.0;
    o.knowledgeAnswers = buildGoogleCloudDialogflowV2beta1KnowledgeAnswers();
    o.languageCode = 'foo';
    o.outputContexts = buildUnnamed6304();
    o.parameters = buildUnnamed6305();
    o.queryText = 'foo';
    o.sentimentAnalysisResult =
        buildGoogleCloudDialogflowV2beta1SentimentAnalysisResult();
    o.speechRecognitionConfidence = 42.0;
    o.webhookPayload = buildUnnamed6306();
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
    checkUnnamed6302(o.diagnosticInfo);
    checkUnnamed6303(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1Intent(
        o.intent as api.GoogleCloudDialogflowV2beta1Intent);
    unittest.expect(o.intentDetectionConfidence, unittest.equals(42.0));
    checkGoogleCloudDialogflowV2beta1KnowledgeAnswers(
        o.knowledgeAnswers as api.GoogleCloudDialogflowV2beta1KnowledgeAnswers);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed6304(o.outputContexts);
    checkUnnamed6305(o.parameters);
    unittest.expect(o.queryText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1SentimentAnalysisResult(
        o.sentimentAnalysisResult
            as api.GoogleCloudDialogflowV2beta1SentimentAnalysisResult);
    unittest.expect(o.speechRecognitionConfidence, unittest.equals(42.0));
    checkUnnamed6306(o.webhookPayload);
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

core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity> buildUnnamed6307() {
  var o = <api.GoogleCloudDialogflowV2beta1EntityTypeEntity>[];
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  return o;
}

void checkUnnamed6307(
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
    o.entities = buildUnnamed6307();
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
    checkUnnamed6307(o.entities);
    unittest.expect(o.entityOverrideMode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1SessionEntityType--;
}

core.List<api.GoogleCloudDialogflowV2beta1QueryResult> buildUnnamed6308() {
  var o = <api.GoogleCloudDialogflowV2beta1QueryResult>[];
  o.add(buildGoogleCloudDialogflowV2beta1QueryResult());
  o.add(buildGoogleCloudDialogflowV2beta1QueryResult());
  return o;
}

void checkUnnamed6308(
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
    o.alternativeQueryResults = buildUnnamed6308();
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
    checkUnnamed6308(o.alternativeQueryResults);
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

core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> buildUnnamed6309() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessage>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

void checkUnnamed6309(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessage);
  checkGoogleCloudDialogflowV2beta1IntentMessage(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessage);
}

core.List<api.GoogleCloudDialogflowV2beta1Context> buildUnnamed6310() {
  var o = <api.GoogleCloudDialogflowV2beta1Context>[];
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

void checkUnnamed6310(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(
      o[0] as api.GoogleCloudDialogflowV2beta1Context);
  checkGoogleCloudDialogflowV2beta1Context(
      o[1] as api.GoogleCloudDialogflowV2beta1Context);
}

core.Map<core.String, core.Object> buildUnnamed6311() {
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

void checkUnnamed6311(core.Map<core.String, core.Object> o) {
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

core.List<api.GoogleCloudDialogflowV2beta1SessionEntityType>
    buildUnnamed6312() {
  var o = <api.GoogleCloudDialogflowV2beta1SessionEntityType>[];
  o.add(buildGoogleCloudDialogflowV2beta1SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2beta1SessionEntityType());
  return o;
}

void checkUnnamed6312(
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
    o.fulfillmentMessages = buildUnnamed6309();
    o.fulfillmentText = 'foo';
    o.outputContexts = buildUnnamed6310();
    o.payload = buildUnnamed6311();
    o.sessionEntityTypes = buildUnnamed6312();
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
    checkUnnamed6309(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkUnnamed6310(o.outputContexts);
    checkUnnamed6311(o.payload);
    checkUnnamed6312(o.sessionEntityTypes);
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

core.List<api.GoogleRpcStatus> buildUnnamed6313() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed6313(core.List<api.GoogleRpcStatus> o) {
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
    o.warnings = buildUnnamed6313();
  }
  buildCounterGoogleCloudDialogflowV3alpha1ImportDocumentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV3alpha1ImportDocumentsResponse(
    api.GoogleCloudDialogflowV3alpha1ImportDocumentsResponse o) {
  buildCounterGoogleCloudDialogflowV3alpha1ImportDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ImportDocumentsResponse < 3) {
    checkUnnamed6313(o.warnings);
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

core.List<api.GoogleLongrunningOperation> buildUnnamed6314() {
  var o = <api.GoogleLongrunningOperation>[];
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

void checkUnnamed6314(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed6314();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6314(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed6315() {
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

void checkUnnamed6315(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed6316() {
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

void checkUnnamed6316(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  var o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed6315();
    o.name = 'foo';
    o.response = buildUnnamed6316();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error as api.GoogleRpcStatus);
    checkUnnamed6315(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6316(o.response);
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

core.Map<core.String, core.Object> buildUnnamed6317() {
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

void checkUnnamed6317(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed6318() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed6317());
  o.add(buildUnnamed6317());
  return o;
}

void checkUnnamed6318(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6317(o[0]);
  checkUnnamed6317(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  var o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6318();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed6318(o.details);
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
  unittest.group('obj-schema-GoogleCloudDialogflowCxV3AudioInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3AudioInput();
      var od = api.GoogleCloudDialogflowCxV3AudioInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3AudioInput(
          od as api.GoogleCloudDialogflowCxV3AudioInput);
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

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3DtmfInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3DtmfInput();
      var od = api.GoogleCloudDialogflowCxV3DtmfInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3DtmfInput(
          od as api.GoogleCloudDialogflowCxV3DtmfInput);
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

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3RunTestCaseMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3RunTestCaseMetadata();
      var od =
          api.GoogleCloudDialogflowCxV3RunTestCaseMetadata.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3RunTestCaseMetadata(
          od as api.GoogleCloudDialogflowCxV3RunTestCaseMetadata);
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

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3SessionInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3SessionInfo();
      var od = api.GoogleCloudDialogflowCxV3SessionInfo.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3SessionInfo(
          od as api.GoogleCloudDialogflowCxV3SessionInfo);
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

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TransitionRoute', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3TransitionRoute();
      var od =
          api.GoogleCloudDialogflowCxV3TransitionRoute.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3TransitionRoute(
          od as api.GoogleCloudDialogflowCxV3TransitionRoute);
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

  unittest.group('obj-schema-GoogleCloudDialogflowV2Agent', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2Agent();
      var od = api.GoogleCloudDialogflowV2Agent.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Agent(od as api.GoogleCloudDialogflowV2Agent);
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

  unittest.group('obj-schema-GoogleCloudDialogflowV2BatchCreateEntitiesRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2BatchCreateEntitiesRequest();
      var od = api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2BatchCreateEntitiesRequest(
          od as api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2BatchDeleteEntitiesRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2BatchDeleteEntitiesRequest();
      var od = api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2BatchDeleteEntitiesRequest(
          od as api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest();
      var od =
          api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest(
          od as api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2BatchDeleteIntentsRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2BatchDeleteIntentsRequest();
      var od = api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2BatchDeleteIntentsRequest(
          od as api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2BatchUpdateEntitiesRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2BatchUpdateEntitiesRequest();
      var od = api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2BatchUpdateEntitiesRequest(
          od as api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest();
      var od =
          api.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest(
          od as api.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest);
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

  unittest.group('obj-schema-GoogleCloudDialogflowV2BatchUpdateIntentsRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2BatchUpdateIntentsRequest();
      var od = api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2BatchUpdateIntentsRequest(
          od as api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest);
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

  unittest.group('obj-schema-GoogleCloudDialogflowV2DetectIntentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2DetectIntentRequest();
      var od =
          api.GoogleCloudDialogflowV2DetectIntentRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2DetectIntentRequest(
          od as api.GoogleCloudDialogflowV2DetectIntentRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2DetectIntentResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2DetectIntentResponse();
      var od =
          api.GoogleCloudDialogflowV2DetectIntentResponse.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2DetectIntentResponse(
          od as api.GoogleCloudDialogflowV2DetectIntentResponse);
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

  unittest.group('obj-schema-GoogleCloudDialogflowV2EntityTypeBatch', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2EntityTypeBatch();
      var od = api.GoogleCloudDialogflowV2EntityTypeBatch.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2EntityTypeBatch(
          od as api.GoogleCloudDialogflowV2EntityTypeBatch);
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

  unittest.group('obj-schema-GoogleCloudDialogflowV2Environment', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2Environment();
      var od = api.GoogleCloudDialogflowV2Environment.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Environment(
          od as api.GoogleCloudDialogflowV2Environment);
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

  unittest.group('obj-schema-GoogleCloudDialogflowV2ExportAgentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2ExportAgentRequest();
      var od =
          api.GoogleCloudDialogflowV2ExportAgentRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2ExportAgentRequest(
          od as api.GoogleCloudDialogflowV2ExportAgentRequest);
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

  unittest.group('obj-schema-GoogleCloudDialogflowV2Fulfillment', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2Fulfillment();
      var od = api.GoogleCloudDialogflowV2Fulfillment.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Fulfillment(
          od as api.GoogleCloudDialogflowV2Fulfillment);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2FulfillmentFeature', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2FulfillmentFeature();
      var od =
          api.GoogleCloudDialogflowV2FulfillmentFeature.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2FulfillmentFeature(
          od as api.GoogleCloudDialogflowV2FulfillmentFeature);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2FulfillmentGenericWebService', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2FulfillmentGenericWebService();
      var od = api.GoogleCloudDialogflowV2FulfillmentGenericWebService.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2FulfillmentGenericWebService(
          od as api.GoogleCloudDialogflowV2FulfillmentGenericWebService);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ImportAgentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2ImportAgentRequest();
      var od =
          api.GoogleCloudDialogflowV2ImportAgentRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2ImportAgentRequest(
          od as api.GoogleCloudDialogflowV2ImportAgentRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2InputAudioConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2InputAudioConfig();
      var od = api.GoogleCloudDialogflowV2InputAudioConfig.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2InputAudioConfig(
          od as api.GoogleCloudDialogflowV2InputAudioConfig);
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

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentBatch', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2IntentBatch();
      var od = api.GoogleCloudDialogflowV2IntentBatch.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentBatch(
          od as api.GoogleCloudDialogflowV2IntentBatch);
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

  unittest.group('obj-schema-GoogleCloudDialogflowV2ListContextsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2ListContextsResponse();
      var od =
          api.GoogleCloudDialogflowV2ListContextsResponse.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2ListContextsResponse(
          od as api.GoogleCloudDialogflowV2ListContextsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ListEntityTypesResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2ListEntityTypesResponse();
      var od = api.GoogleCloudDialogflowV2ListEntityTypesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2ListEntityTypesResponse(
          od as api.GoogleCloudDialogflowV2ListEntityTypesResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ListEnvironmentsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2ListEnvironmentsResponse();
      var od = api.GoogleCloudDialogflowV2ListEnvironmentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2ListEnvironmentsResponse(
          od as api.GoogleCloudDialogflowV2ListEnvironmentsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ListIntentsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2ListIntentsResponse();
      var od =
          api.GoogleCloudDialogflowV2ListIntentsResponse.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2ListIntentsResponse(
          od as api.GoogleCloudDialogflowV2ListIntentsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2ListSessionEntityTypesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2ListSessionEntityTypesResponse();
      var od =
          api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2ListSessionEntityTypesResponse(
          od as api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse);
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

  unittest.group('obj-schema-GoogleCloudDialogflowV2OutputAudioConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2OutputAudioConfig();
      var od =
          api.GoogleCloudDialogflowV2OutputAudioConfig.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2OutputAudioConfig(
          od as api.GoogleCloudDialogflowV2OutputAudioConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2QueryInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2QueryInput();
      var od = api.GoogleCloudDialogflowV2QueryInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2QueryInput(
          od as api.GoogleCloudDialogflowV2QueryInput);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2QueryParameters', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2QueryParameters();
      var od = api.GoogleCloudDialogflowV2QueryParameters.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2QueryParameters(
          od as api.GoogleCloudDialogflowV2QueryParameters);
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

  unittest.group('obj-schema-GoogleCloudDialogflowV2RestoreAgentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2RestoreAgentRequest();
      var od =
          api.GoogleCloudDialogflowV2RestoreAgentRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2RestoreAgentRequest(
          od as api.GoogleCloudDialogflowV2RestoreAgentRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2SearchAgentsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2SearchAgentsResponse();
      var od =
          api.GoogleCloudDialogflowV2SearchAgentsResponse.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2SearchAgentsResponse(
          od as api.GoogleCloudDialogflowV2SearchAgentsResponse);
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

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2SentimentAnalysisRequestConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2SentimentAnalysisRequestConfig();
      var od =
          api.GoogleCloudDialogflowV2SentimentAnalysisRequestConfig.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2SentimentAnalysisRequestConfig(
          od as api.GoogleCloudDialogflowV2SentimentAnalysisRequestConfig);
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

  unittest.group('obj-schema-GoogleCloudDialogflowV2SpeechContext', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2SpeechContext();
      var od = api.GoogleCloudDialogflowV2SpeechContext.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2SpeechContext(
          od as api.GoogleCloudDialogflowV2SpeechContext);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2SynthesizeSpeechConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2SynthesizeSpeechConfig();
      var od = api.GoogleCloudDialogflowV2SynthesizeSpeechConfig.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2SynthesizeSpeechConfig(
          od as api.GoogleCloudDialogflowV2SynthesizeSpeechConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2TextInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2TextInput();
      var od = api.GoogleCloudDialogflowV2TextInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2TextInput(
          od as api.GoogleCloudDialogflowV2TextInput);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2TrainAgentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2TrainAgentRequest();
      var od =
          api.GoogleCloudDialogflowV2TrainAgentRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2TrainAgentRequest(
          od as api.GoogleCloudDialogflowV2TrainAgentRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ValidationError', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2ValidationError();
      var od = api.GoogleCloudDialogflowV2ValidationError.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2ValidationError(
          od as api.GoogleCloudDialogflowV2ValidationError);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ValidationResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2ValidationResult();
      var od = api.GoogleCloudDialogflowV2ValidationResult.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2ValidationResult(
          od as api.GoogleCloudDialogflowV2ValidationResult);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2VoiceSelectionParams', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2VoiceSelectionParams();
      var od =
          api.GoogleCloudDialogflowV2VoiceSelectionParams.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2VoiceSelectionParams(
          od as api.GoogleCloudDialogflowV2VoiceSelectionParams);
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

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--deleteAgent', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects;
      var arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .deleteAgent(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--getAgent', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects;
      var arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Agent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAgent(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Agent(
            response as api.GoogleCloudDialogflowV2Agent);
      })));
    });

    unittest.test('method--setAgent', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects;
      var arg_request = buildGoogleCloudDialogflowV2Agent();
      var arg_parent = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2Agent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Agent(
            obj as api.GoogleCloudDialogflowV2Agent);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Agent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setAgent(arg_request, arg_parent,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Agent(
            response as api.GoogleCloudDialogflowV2Agent);
      })));
    });
  });

  unittest.group('resource-ProjectsAgentResource', () {
    unittest.test('method--export', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent;
      var arg_request = buildGoogleCloudDialogflowV2ExportAgentRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2ExportAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2ExportAgentRequest(
            obj as api.GoogleCloudDialogflowV2ExportAgentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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

    unittest.test('method--getFulfillment', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            convert.json.encode(buildGoogleCloudDialogflowV2Fulfillment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getFulfillment(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Fulfillment(
            response as api.GoogleCloudDialogflowV2Fulfillment);
      })));
    });

    unittest.test('method--getValidationResult', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent;
      var arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            convert.json.encode(buildGoogleCloudDialogflowV2ValidationResult());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getValidationResult(arg_parent,
              languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2ValidationResult(
            response as api.GoogleCloudDialogflowV2ValidationResult);
      })));
    });

    unittest.test('method--import', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent;
      var arg_request = buildGoogleCloudDialogflowV2ImportAgentRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2ImportAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2ImportAgentRequest(
            obj as api.GoogleCloudDialogflowV2ImportAgentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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

    unittest.test('method--restore', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent;
      var arg_request = buildGoogleCloudDialogflowV2RestoreAgentRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2RestoreAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2RestoreAgentRequest(
            obj as api.GoogleCloudDialogflowV2RestoreAgentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .restore(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--search', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            .encode(buildGoogleCloudDialogflowV2SearchAgentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2SearchAgentsResponse(
            response as api.GoogleCloudDialogflowV2SearchAgentsResponse);
      })));
    });

    unittest.test('method--train', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent;
      var arg_request = buildGoogleCloudDialogflowV2TrainAgentRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2TrainAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2TrainAgentRequest(
            obj as api.GoogleCloudDialogflowV2TrainAgentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .train(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--updateFulfillment', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent;
      var arg_request = buildGoogleCloudDialogflowV2Fulfillment();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2Fulfillment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Fulfillment(
            obj as api.GoogleCloudDialogflowV2Fulfillment);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            convert.json.encode(buildGoogleCloudDialogflowV2Fulfillment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateFulfillment(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Fulfillment(
            response as api.GoogleCloudDialogflowV2Fulfillment);
      })));
    });
  });

  unittest.group('resource-ProjectsAgentEntityTypesResource', () {
    unittest.test('method--batchDelete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.entityTypes;
      var arg_request =
          buildGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest(
            obj as api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .batchDelete(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--batchUpdate', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.entityTypes;
      var arg_request =
          buildGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest(
            obj as api.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .batchUpdate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.entityTypes;
      var arg_request = buildGoogleCloudDialogflowV2EntityType();
      var arg_parent = 'foo';
      var arg_languageCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2EntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2EntityType(
            obj as api.GoogleCloudDialogflowV2EntityType);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            convert.json.encode(buildGoogleCloudDialogflowV2EntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2EntityType(
            response as api.GoogleCloudDialogflowV2EntityType);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.entityTypes;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      var res = api.DialogflowApi(mock).projects.agent.entityTypes;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            convert.json.encode(buildGoogleCloudDialogflowV2EntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2EntityType(
            response as api.GoogleCloudDialogflowV2EntityType);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.entityTypes;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            .encode(buildGoogleCloudDialogflowV2ListEntityTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              languageCode: arg_languageCode,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2ListEntityTypesResponse(
            response as api.GoogleCloudDialogflowV2ListEntityTypesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.entityTypes;
      var arg_request = buildGoogleCloudDialogflowV2EntityType();
      var arg_name = 'foo';
      var arg_languageCode = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2EntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2EntityType(
            obj as api.GoogleCloudDialogflowV2EntityType);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            convert.json.encode(buildGoogleCloudDialogflowV2EntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              languageCode: arg_languageCode,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2EntityType(
            response as api.GoogleCloudDialogflowV2EntityType);
      })));
    });
  });

  unittest.group('resource-ProjectsAgentEntityTypesEntitiesResource', () {
    unittest.test('method--batchCreate', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.entityTypes.entities;
      var arg_request =
          buildGoogleCloudDialogflowV2BatchCreateEntitiesRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchCreateEntitiesRequest(
            obj as api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .batchCreate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--batchDelete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.entityTypes.entities;
      var arg_request =
          buildGoogleCloudDialogflowV2BatchDeleteEntitiesRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchDeleteEntitiesRequest(
            obj as api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .batchDelete(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--batchUpdate', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.entityTypes.entities;
      var arg_request =
          buildGoogleCloudDialogflowV2BatchUpdateEntitiesRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchUpdateEntitiesRequest(
            obj as api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .batchUpdate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });
  });

  unittest.group('resource-ProjectsAgentEnvironmentsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.environments;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            .encode(buildGoogleCloudDialogflowV2ListEnvironmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2ListEnvironmentsResponse(
            response as api.GoogleCloudDialogflowV2ListEnvironmentsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsAgentEnvironmentsUsersSessionsResource', () {
    unittest.test('method--deleteContexts', () {
      var mock = HttpServerMock();
      var res =
          api.DialogflowApi(mock).projects.agent.environments.users.sessions;
      var arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .deleteContexts(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--detectIntent', () {
      var mock = HttpServerMock();
      var res =
          api.DialogflowApi(mock).projects.agent.environments.users.sessions;
      var arg_request = buildGoogleCloudDialogflowV2DetectIntentRequest();
      var arg_session = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2DetectIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2DetectIntentRequest(
            obj as api.GoogleCloudDialogflowV2DetectIntentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            .encode(buildGoogleCloudDialogflowV2DetectIntentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .detectIntent(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2DetectIntentResponse(
            response as api.GoogleCloudDialogflowV2DetectIntentResponse);
      })));
    });
  });

  unittest.group(
      'resource-ProjectsAgentEnvironmentsUsersSessionsContextsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .agent
          .environments
          .users
          .sessions
          .contexts;
      var arg_request = buildGoogleCloudDialogflowV2Context();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2Context.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Context(
            obj as api.GoogleCloudDialogflowV2Context);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Context(
            response as api.GoogleCloudDialogflowV2Context);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .agent
          .environments
          .users
          .sessions
          .contexts;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .agent
          .environments
          .users
          .sessions
          .contexts;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Context(
            response as api.GoogleCloudDialogflowV2Context);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .agent
          .environments
          .users
          .sessions
          .contexts;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            .encode(buildGoogleCloudDialogflowV2ListContextsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2ListContextsResponse(
            response as api.GoogleCloudDialogflowV2ListContextsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .agent
          .environments
          .users
          .sessions
          .contexts;
      var arg_request = buildGoogleCloudDialogflowV2Context();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2Context.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Context(
            obj as api.GoogleCloudDialogflowV2Context);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Context(
            response as api.GoogleCloudDialogflowV2Context);
      })));
    });
  });

  unittest.group(
      'resource-ProjectsAgentEnvironmentsUsersSessionsEntityTypesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .agent
          .environments
          .users
          .sessions
          .entityTypes;
      var arg_request = buildGoogleCloudDialogflowV2SessionEntityType();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2SessionEntityType(
            obj as api.GoogleCloudDialogflowV2SessionEntityType);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2SessionEntityType(
            response as api.GoogleCloudDialogflowV2SessionEntityType);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .agent
          .environments
          .users
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .agent
          .environments
          .users
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2SessionEntityType(
            response as api.GoogleCloudDialogflowV2SessionEntityType);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .agent
          .environments
          .users
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            buildGoogleCloudDialogflowV2ListSessionEntityTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2ListSessionEntityTypesResponse(response
            as api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock)
          .projects
          .agent
          .environments
          .users
          .sessions
          .entityTypes;
      var arg_request = buildGoogleCloudDialogflowV2SessionEntityType();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2SessionEntityType(
            obj as api.GoogleCloudDialogflowV2SessionEntityType);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2SessionEntityType(
            response as api.GoogleCloudDialogflowV2SessionEntityType);
      })));
    });
  });

  unittest.group('resource-ProjectsAgentIntentsResource', () {
    unittest.test('method--batchDelete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.intents;
      var arg_request = buildGoogleCloudDialogflowV2BatchDeleteIntentsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchDeleteIntentsRequest(
            obj as api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .batchDelete(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--batchUpdate', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.intents;
      var arg_request = buildGoogleCloudDialogflowV2BatchUpdateIntentsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchUpdateIntentsRequest(
            obj as api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .batchUpdate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.intents;
      var arg_request = buildGoogleCloudDialogflowV2Intent();
      var arg_parent = 'foo';
      var arg_intentView = 'foo';
      var arg_languageCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2Intent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Intent(
            obj as api.GoogleCloudDialogflowV2Intent);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Intent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              intentView: arg_intentView,
              languageCode: arg_languageCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Intent(
            response as api.GoogleCloudDialogflowV2Intent);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.intents;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      var res = api.DialogflowApi(mock).projects.agent.intents;
      var arg_name = 'foo';
      var arg_intentView = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Intent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              intentView: arg_intentView,
              languageCode: arg_languageCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Intent(
            response as api.GoogleCloudDialogflowV2Intent);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.intents;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            .encode(buildGoogleCloudDialogflowV2ListIntentsResponse());
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
        checkGoogleCloudDialogflowV2ListIntentsResponse(
            response as api.GoogleCloudDialogflowV2ListIntentsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.intents;
      var arg_request = buildGoogleCloudDialogflowV2Intent();
      var arg_name = 'foo';
      var arg_intentView = 'foo';
      var arg_languageCode = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2Intent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Intent(
            obj as api.GoogleCloudDialogflowV2Intent);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Intent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              intentView: arg_intentView,
              languageCode: arg_languageCode,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Intent(
            response as api.GoogleCloudDialogflowV2Intent);
      })));
    });
  });

  unittest.group('resource-ProjectsAgentSessionsResource', () {
    unittest.test('method--deleteContexts', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.sessions;
      var arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
          .deleteContexts(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--detectIntent', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.sessions;
      var arg_request = buildGoogleCloudDialogflowV2DetectIntentRequest();
      var arg_session = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2DetectIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2DetectIntentRequest(
            obj as api.GoogleCloudDialogflowV2DetectIntentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            .encode(buildGoogleCloudDialogflowV2DetectIntentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .detectIntent(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2DetectIntentResponse(
            response as api.GoogleCloudDialogflowV2DetectIntentResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsAgentSessionsContextsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.sessions.contexts;
      var arg_request = buildGoogleCloudDialogflowV2Context();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2Context.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Context(
            obj as api.GoogleCloudDialogflowV2Context);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Context(
            response as api.GoogleCloudDialogflowV2Context);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.sessions.contexts;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      var res = api.DialogflowApi(mock).projects.agent.sessions.contexts;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Context(
            response as api.GoogleCloudDialogflowV2Context);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.sessions.contexts;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            .encode(buildGoogleCloudDialogflowV2ListContextsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2ListContextsResponse(
            response as api.GoogleCloudDialogflowV2ListContextsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.sessions.contexts;
      var arg_request = buildGoogleCloudDialogflowV2Context();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2Context.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Context(
            obj as api.GoogleCloudDialogflowV2Context);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Context(
            response as api.GoogleCloudDialogflowV2Context);
      })));
    });
  });

  unittest.group('resource-ProjectsAgentSessionsEntityTypesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
      var arg_request = buildGoogleCloudDialogflowV2SessionEntityType();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2SessionEntityType(
            obj as api.GoogleCloudDialogflowV2SessionEntityType);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2SessionEntityType(
            response as api.GoogleCloudDialogflowV2SessionEntityType);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
      var res = api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2SessionEntityType(
            response as api.GoogleCloudDialogflowV2SessionEntityType);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            buildGoogleCloudDialogflowV2ListSessionEntityTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2ListSessionEntityTypesResponse(response
            as api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
      var arg_request = buildGoogleCloudDialogflowV2SessionEntityType();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDialogflowV2SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2SessionEntityType(
            obj as api.GoogleCloudDialogflowV2SessionEntityType);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2SessionEntityType(
            response as api.GoogleCloudDialogflowV2SessionEntityType);
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
