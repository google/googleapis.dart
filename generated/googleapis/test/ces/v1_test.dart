// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

import 'package:googleapis/ces/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAction = 0;
api.Action buildAction() {
  final o = api.Action();
  buildCounterAction++;
  if (buildCounterAction < 3) {
    o.connectionActionId = 'foo';
    o.entityOperation = buildActionEntityOperation();
    o.inputFields = buildUnnamed0();
    o.outputFields = buildUnnamed1();
  }
  buildCounterAction--;
  return o;
}

void checkAction(api.Action o) {
  buildCounterAction++;
  if (buildCounterAction < 3) {
    unittest.expect(o.connectionActionId!, unittest.equals('foo'));
    checkActionEntityOperation(o.entityOperation!);
    checkUnnamed0(o.inputFields!);
    checkUnnamed1(o.outputFields!);
  }
  buildCounterAction--;
}

core.int buildCounterActionEntityOperation = 0;
api.ActionEntityOperation buildActionEntityOperation() {
  final o = api.ActionEntityOperation();
  buildCounterActionEntityOperation++;
  if (buildCounterActionEntityOperation < 3) {
    o.entityId = 'foo';
    o.operation = 'foo';
  }
  buildCounterActionEntityOperation--;
  return o;
}

void checkActionEntityOperation(api.ActionEntityOperation o) {
  buildCounterActionEntityOperation++;
  if (buildCounterActionEntityOperation < 3) {
    unittest.expect(o.entityId!, unittest.equals('foo'));
    unittest.expect(o.operation!, unittest.equals('foo'));
  }
  buildCounterActionEntityOperation--;
}

core.List<api.Callback> buildUnnamed2() => [buildCallback(), buildCallback()];

void checkUnnamed2(core.List<api.Callback> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCallback(o[0]);
  checkCallback(o[1]);
}

core.List<api.Callback> buildUnnamed3() => [buildCallback(), buildCallback()];

void checkUnnamed3(core.List<api.Callback> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCallback(o[0]);
  checkCallback(o[1]);
}

core.List<api.Callback> buildUnnamed4() => [buildCallback(), buildCallback()];

void checkUnnamed4(core.List<api.Callback> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCallback(o[0]);
  checkCallback(o[1]);
}

core.List<api.Callback> buildUnnamed5() => [buildCallback(), buildCallback()];

void checkUnnamed5(core.List<api.Callback> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCallback(o[0]);
  checkCallback(o[1]);
}

core.List<api.Callback> buildUnnamed6() => [buildCallback(), buildCallback()];

void checkUnnamed6(core.List<api.Callback> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCallback(o[0]);
  checkCallback(o[1]);
}

core.List<api.Callback> buildUnnamed7() => [buildCallback(), buildCallback()];

void checkUnnamed7(core.List<api.Callback> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCallback(o[0]);
  checkCallback(o[1]);
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.AgentAgentToolset> buildUnnamed11() => [
  buildAgentAgentToolset(),
  buildAgentAgentToolset(),
];

void checkUnnamed11(core.List<api.AgentAgentToolset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentAgentToolset(o[0]);
  checkAgentAgentToolset(o[1]);
}

core.List<api.TransferRule> buildUnnamed12() => [
  buildTransferRule(),
  buildTransferRule(),
];

void checkUnnamed12(core.List<api.TransferRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransferRule(o[0]);
  checkTransferRule(o[1]);
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAgent = 0;
api.Agent buildAgent() {
  final o = api.Agent();
  buildCounterAgent++;
  if (buildCounterAgent < 3) {
    o.afterAgentCallbacks = buildUnnamed2();
    o.afterModelCallbacks = buildUnnamed3();
    o.afterToolCallbacks = buildUnnamed4();
    o.beforeAgentCallbacks = buildUnnamed5();
    o.beforeModelCallbacks = buildUnnamed6();
    o.beforeToolCallbacks = buildUnnamed7();
    o.childAgents = buildUnnamed8();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.generatedSummary = 'foo';
    o.guardrails = buildUnnamed9();
    o.instruction = 'foo';
    o.llmAgent = buildAgentLlmAgent();
    o.modelSettings = buildModelSettings();
    o.name = 'foo';
    o.remoteA2aAgent = buildAgentRemoteA2aAgent();
    o.remoteDialogflowAgent = buildAgentRemoteDialogflowAgent();
    o.tools = buildUnnamed10();
    o.toolsets = buildUnnamed11();
    o.transferRules = buildUnnamed12();
    o.updateTime = 'foo';
    o.validationErrors = buildUnnamed13();
  }
  buildCounterAgent--;
  return o;
}

void checkAgent(api.Agent o) {
  buildCounterAgent++;
  if (buildCounterAgent < 3) {
    checkUnnamed2(o.afterAgentCallbacks!);
    checkUnnamed3(o.afterModelCallbacks!);
    checkUnnamed4(o.afterToolCallbacks!);
    checkUnnamed5(o.beforeAgentCallbacks!);
    checkUnnamed6(o.beforeModelCallbacks!);
    checkUnnamed7(o.beforeToolCallbacks!);
    checkUnnamed8(o.childAgents!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.generatedSummary!, unittest.equals('foo'));
    checkUnnamed9(o.guardrails!);
    unittest.expect(o.instruction!, unittest.equals('foo'));
    checkAgentLlmAgent(o.llmAgent!);
    checkModelSettings(o.modelSettings!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkAgentRemoteA2aAgent(o.remoteA2aAgent!);
    checkAgentRemoteDialogflowAgent(o.remoteDialogflowAgent!);
    checkUnnamed10(o.tools!);
    checkUnnamed11(o.toolsets!);
    checkUnnamed12(o.transferRules!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkUnnamed13(o.validationErrors!);
  }
  buildCounterAgent--;
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAgentAgentToolset = 0;
api.AgentAgentToolset buildAgentAgentToolset() {
  final o = api.AgentAgentToolset();
  buildCounterAgentAgentToolset++;
  if (buildCounterAgentAgentToolset < 3) {
    o.toolIds = buildUnnamed14();
    o.toolset = 'foo';
  }
  buildCounterAgentAgentToolset--;
  return o;
}

void checkAgentAgentToolset(api.AgentAgentToolset o) {
  buildCounterAgentAgentToolset++;
  if (buildCounterAgentAgentToolset < 3) {
    checkUnnamed14(o.toolIds!);
    unittest.expect(o.toolset!, unittest.equals('foo'));
  }
  buildCounterAgentAgentToolset--;
}

core.List<api.AgentSkill> buildUnnamed15() => [
  buildAgentSkill(),
  buildAgentSkill(),
];

void checkUnnamed15(core.List<api.AgentSkill> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentSkill(o[0]);
  checkAgentSkill(o[1]);
}

core.List<api.AgentInterface> buildUnnamed16() => [
  buildAgentInterface(),
  buildAgentInterface(),
];

void checkUnnamed16(core.List<api.AgentInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgentInterface(o[0]);
  checkAgentInterface(o[1]);
}

core.int buildCounterAgentCard = 0;
api.AgentCard buildAgentCard() {
  final o = api.AgentCard();
  buildCounterAgentCard++;
  if (buildCounterAgentCard < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.skills = buildUnnamed15();
    o.supportedInterfaces = buildUnnamed16();
    o.version = 'foo';
  }
  buildCounterAgentCard--;
  return o;
}

void checkAgentCard(api.AgentCard o) {
  buildCounterAgentCard++;
  if (buildCounterAgentCard < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed15(o.skills!);
    checkUnnamed16(o.supportedInterfaces!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterAgentCard--;
}

core.int buildCounterAgentInterface = 0;
api.AgentInterface buildAgentInterface() {
  final o = api.AgentInterface();
  buildCounterAgentInterface++;
  if (buildCounterAgentInterface < 3) {
    o.protocolBinding = 'foo';
    o.protocolVersion = 'foo';
    o.tenant = 'foo';
    o.url = 'foo';
  }
  buildCounterAgentInterface--;
  return o;
}

void checkAgentInterface(api.AgentInterface o) {
  buildCounterAgentInterface++;
  if (buildCounterAgentInterface < 3) {
    unittest.expect(o.protocolBinding!, unittest.equals('foo'));
    unittest.expect(o.protocolVersion!, unittest.equals('foo'));
    unittest.expect(o.tenant!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterAgentInterface--;
}

core.int buildCounterAgentLlmAgent = 0;
api.AgentLlmAgent buildAgentLlmAgent() {
  final o = api.AgentLlmAgent();
  buildCounterAgentLlmAgent++;
  if (buildCounterAgentLlmAgent < 3) {}
  buildCounterAgentLlmAgent--;
  return o;
}

void checkAgentLlmAgent(api.AgentLlmAgent o) {
  buildCounterAgentLlmAgent++;
  if (buildCounterAgentLlmAgent < 3) {}
  buildCounterAgentLlmAgent--;
}

core.int buildCounterAgentRegistryDeployment = 0;
api.AgentRegistryDeployment buildAgentRegistryDeployment() {
  final o = api.AgentRegistryDeployment();
  buildCounterAgentRegistryDeployment++;
  if (buildCounterAgentRegistryDeployment < 3) {
    o.agentRegistryServiceName = 'foo';
  }
  buildCounterAgentRegistryDeployment--;
  return o;
}

void checkAgentRegistryDeployment(api.AgentRegistryDeployment o) {
  buildCounterAgentRegistryDeployment++;
  if (buildCounterAgentRegistryDeployment < 3) {
    unittest.expect(o.agentRegistryServiceName!, unittest.equals('foo'));
  }
  buildCounterAgentRegistryDeployment--;
}

core.int buildCounterAgentRemoteA2aAgent = 0;
api.AgentRemoteA2aAgent buildAgentRemoteA2aAgent() {
  final o = api.AgentRemoteA2aAgent();
  buildCounterAgentRemoteA2aAgent++;
  if (buildCounterAgentRemoteA2aAgent < 3) {
    o.a2aConfig = buildRemoteA2aConfig();
  }
  buildCounterAgentRemoteA2aAgent--;
  return o;
}

void checkAgentRemoteA2aAgent(api.AgentRemoteA2aAgent o) {
  buildCounterAgentRemoteA2aAgent++;
  if (buildCounterAgentRemoteA2aAgent < 3) {
    checkRemoteA2aConfig(o.a2aConfig!);
  }
  buildCounterAgentRemoteA2aAgent--;
}

core.Map<core.String, core.String> buildUnnamed17() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed17(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed18() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed18(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAgentRemoteDialogflowAgent = 0;
api.AgentRemoteDialogflowAgent buildAgentRemoteDialogflowAgent() {
  final o = api.AgentRemoteDialogflowAgent();
  buildCounterAgentRemoteDialogflowAgent++;
  if (buildCounterAgentRemoteDialogflowAgent < 3) {
    o.agent = 'foo';
    o.environmentId = 'foo';
    o.flowId = 'foo';
    o.inputVariableMapping = buildUnnamed17();
    o.languageCodeVariable = 'foo';
    o.outputVariableMapping = buildUnnamed18();
    o.respectResponseInterruptionSettings = true;
  }
  buildCounterAgentRemoteDialogflowAgent--;
  return o;
}

void checkAgentRemoteDialogflowAgent(api.AgentRemoteDialogflowAgent o) {
  buildCounterAgentRemoteDialogflowAgent++;
  if (buildCounterAgentRemoteDialogflowAgent < 3) {
    unittest.expect(o.agent!, unittest.equals('foo'));
    unittest.expect(o.environmentId!, unittest.equals('foo'));
    unittest.expect(o.flowId!, unittest.equals('foo'));
    checkUnnamed17(o.inputVariableMapping!);
    unittest.expect(o.languageCodeVariable!, unittest.equals('foo'));
    checkUnnamed18(o.outputVariableMapping!);
    unittest.expect(o.respectResponseInterruptionSettings!, unittest.isTrue);
  }
  buildCounterAgentRemoteDialogflowAgent--;
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAgentSkill = 0;
api.AgentSkill buildAgentSkill() {
  final o = api.AgentSkill();
  buildCounterAgentSkill++;
  if (buildCounterAgentSkill < 3) {
    o.description = 'foo';
    o.examples = buildUnnamed19();
    o.id = 'foo';
    o.inputModes = buildUnnamed20();
    o.name = 'foo';
    o.outputModes = buildUnnamed21();
    o.tags = buildUnnamed22();
  }
  buildCounterAgentSkill--;
  return o;
}

void checkAgentSkill(api.AgentSkill o) {
  buildCounterAgentSkill++;
  if (buildCounterAgentSkill < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed19(o.examples!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed20(o.inputModes!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed21(o.outputModes!);
    checkUnnamed22(o.tags!);
  }
  buildCounterAgentSkill--;
}

core.int buildCounterAgentTool = 0;
api.AgentTool buildAgentTool() {
  final o = api.AgentTool();
  buildCounterAgentTool++;
  if (buildCounterAgentTool < 3) {
    o.agent = 'foo';
    o.description = 'foo';
    o.name = 'foo';
  }
  buildCounterAgentTool--;
  return o;
}

void checkAgentTool(api.AgentTool o) {
  buildCounterAgentTool++;
  if (buildCounterAgentTool < 3) {
    unittest.expect(o.agent!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterAgentTool--;
}

core.int buildCounterAgentTransfer = 0;
api.AgentTransfer buildAgentTransfer() {
  final o = api.AgentTransfer();
  buildCounterAgentTransfer++;
  if (buildCounterAgentTransfer < 3) {
    o.displayName = 'foo';
    o.targetAgent = 'foo';
  }
  buildCounterAgentTransfer--;
  return o;
}

void checkAgentTransfer(api.AgentTransfer o) {
  buildCounterAgentTransfer++;
  if (buildCounterAgentTransfer < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.targetAgent!, unittest.equals('foo'));
  }
  buildCounterAgentTransfer--;
}

core.int buildCounterAmbientSoundConfig = 0;
api.AmbientSoundConfig buildAmbientSoundConfig() {
  final o = api.AmbientSoundConfig();
  buildCounterAmbientSoundConfig++;
  if (buildCounterAmbientSoundConfig < 3) {
    o.gcsUri = 'foo';
    o.prebuiltAmbientNoise = 'foo';
    o.prebuiltAmbientSound = 'foo';
    o.volumeGainDb = 42.0;
  }
  buildCounterAmbientSoundConfig--;
  return o;
}

void checkAmbientSoundConfig(api.AmbientSoundConfig o) {
  buildCounterAmbientSoundConfig++;
  if (buildCounterAmbientSoundConfig < 3) {
    unittest.expect(o.gcsUri!, unittest.equals('foo'));
    unittest.expect(o.prebuiltAmbientNoise!, unittest.equals('foo'));
    unittest.expect(o.prebuiltAmbientSound!, unittest.equals('foo'));
    unittest.expect(o.volumeGainDb!, unittest.equals(42.0));
  }
  buildCounterAmbientSoundConfig--;
}

core.int buildCounterApiAuthentication = 0;
api.ApiAuthentication buildApiAuthentication() {
  final o = api.ApiAuthentication();
  buildCounterApiAuthentication++;
  if (buildCounterApiAuthentication < 3) {
    o.apiKeyConfig = buildApiKeyConfig();
    o.bearerTokenConfig = buildBearerTokenConfig();
    o.oauthConfig = buildOAuthConfig();
    o.serviceAccountAuthConfig = buildServiceAccountAuthConfig();
    o.serviceAgentIdTokenAuthConfig = buildServiceAgentIdTokenAuthConfig();
  }
  buildCounterApiAuthentication--;
  return o;
}

void checkApiAuthentication(api.ApiAuthentication o) {
  buildCounterApiAuthentication++;
  if (buildCounterApiAuthentication < 3) {
    checkApiKeyConfig(o.apiKeyConfig!);
    checkBearerTokenConfig(o.bearerTokenConfig!);
    checkOAuthConfig(o.oauthConfig!);
    checkServiceAccountAuthConfig(o.serviceAccountAuthConfig!);
    checkServiceAgentIdTokenAuthConfig(o.serviceAgentIdTokenAuthConfig!);
  }
  buildCounterApiAuthentication--;
}

core.int buildCounterApiKeyConfig = 0;
api.ApiKeyConfig buildApiKeyConfig() {
  final o = api.ApiKeyConfig();
  buildCounterApiKeyConfig++;
  if (buildCounterApiKeyConfig < 3) {
    o.apiKeySecretVersion = 'foo';
    o.keyName = 'foo';
    o.requestLocation = 'foo';
  }
  buildCounterApiKeyConfig--;
  return o;
}

void checkApiKeyConfig(api.ApiKeyConfig o) {
  buildCounterApiKeyConfig++;
  if (buildCounterApiKeyConfig < 3) {
    unittest.expect(o.apiKeySecretVersion!, unittest.equals('foo'));
    unittest.expect(o.keyName!, unittest.equals('foo'));
    unittest.expect(o.requestLocation!, unittest.equals('foo'));
  }
  buildCounterApiKeyConfig--;
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed24() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed24(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.AppVariableDeclaration> buildUnnamed25() => [
  buildAppVariableDeclaration(),
  buildAppVariableDeclaration(),
];

void checkUnnamed25(core.List<api.AppVariableDeclaration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppVariableDeclaration(o[0]);
  checkAppVariableDeclaration(o[1]);
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.AppVariableDeclaration> buildUnnamed27() => [
  buildAppVariableDeclaration(),
  buildAppVariableDeclaration(),
];

void checkUnnamed27(core.List<api.AppVariableDeclaration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppVariableDeclaration(o[0]);
  checkAppVariableDeclaration(o[1]);
}

core.int buildCounterApp = 0;
api.App buildApp() {
  final o = api.App();
  buildCounterApp++;
  if (buildCounterApp < 3) {
    o.audioProcessingConfig = buildAudioProcessingConfig();
    o.clientCertificateSettings = buildClientCertificateSettings();
    o.createTime = 'foo';
    o.dashboardSettings = buildDashboardSettings();
    o.dataStoreSettings = buildDataStoreSettings();
    o.defaultChannelProfile = buildChannelProfile();
    o.deploymentCount = 42;
    o.description = 'foo';
    o.displayName = 'foo';
    o.errorHandlingSettings = buildErrorHandlingSettings();
    o.etag = 'foo';
    o.evaluationMetricsThresholds = buildEvaluationMetricsThresholds();
    o.globalInstruction = 'foo';
    o.guardrails = buildUnnamed23();
    o.languageSettings = buildLanguageSettings();
    o.locked = true;
    o.loggingSettings = buildLoggingSettings();
    o.metadata = buildUnnamed24();
    o.modelSettings = buildModelSettings();
    o.name = 'foo';
    o.pinned = true;
    o.predefinedVariableDeclarations = buildUnnamed25();
    o.rootAgent = 'foo';
    o.timeZoneSettings = buildTimeZoneSettings();
    o.toolExecutionMode = 'foo';
    o.updateTime = 'foo';
    o.validationErrors = buildUnnamed26();
    o.variableDeclarations = buildUnnamed27();
    o.vpcScSettings = buildVpcScSettings();
  }
  buildCounterApp--;
  return o;
}

void checkApp(api.App o) {
  buildCounterApp++;
  if (buildCounterApp < 3) {
    checkAudioProcessingConfig(o.audioProcessingConfig!);
    checkClientCertificateSettings(o.clientCertificateSettings!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDashboardSettings(o.dashboardSettings!);
    checkDataStoreSettings(o.dataStoreSettings!);
    checkChannelProfile(o.defaultChannelProfile!);
    unittest.expect(o.deploymentCount!, unittest.equals(42));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkErrorHandlingSettings(o.errorHandlingSettings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkEvaluationMetricsThresholds(o.evaluationMetricsThresholds!);
    unittest.expect(o.globalInstruction!, unittest.equals('foo'));
    checkUnnamed23(o.guardrails!);
    checkLanguageSettings(o.languageSettings!);
    unittest.expect(o.locked!, unittest.isTrue);
    checkLoggingSettings(o.loggingSettings!);
    checkUnnamed24(o.metadata!);
    checkModelSettings(o.modelSettings!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.pinned!, unittest.isTrue);
    checkUnnamed25(o.predefinedVariableDeclarations!);
    unittest.expect(o.rootAgent!, unittest.equals('foo'));
    checkTimeZoneSettings(o.timeZoneSettings!);
    unittest.expect(o.toolExecutionMode!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkUnnamed26(o.validationErrors!);
    checkUnnamed27(o.variableDeclarations!);
    checkVpcScSettings(o.vpcScSettings!);
  }
  buildCounterApp--;
}

core.List<api.Agent> buildUnnamed28() => [buildAgent(), buildAgent()];

void checkUnnamed28(core.List<api.Agent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgent(o[0]);
  checkAgent(o[1]);
}

core.List<api.Example> buildUnnamed29() => [buildExample(), buildExample()];

void checkUnnamed29(core.List<api.Example> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExample(o[0]);
  checkExample(o[1]);
}

core.List<api.Guardrail> buildUnnamed30() => [
  buildGuardrail(),
  buildGuardrail(),
];

void checkUnnamed30(core.List<api.Guardrail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGuardrail(o[0]);
  checkGuardrail(o[1]);
}

core.List<api.Tool> buildUnnamed31() => [buildTool(), buildTool()];

void checkUnnamed31(core.List<api.Tool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTool(o[0]);
  checkTool(o[1]);
}

core.List<api.Toolset> buildUnnamed32() => [buildToolset(), buildToolset()];

void checkUnnamed32(core.List<api.Toolset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToolset(o[0]);
  checkToolset(o[1]);
}

core.int buildCounterAppSnapshot = 0;
api.AppSnapshot buildAppSnapshot() {
  final o = api.AppSnapshot();
  buildCounterAppSnapshot++;
  if (buildCounterAppSnapshot < 3) {
    o.agents = buildUnnamed28();
    o.app = buildApp();
    o.examples = buildUnnamed29();
    o.guardrails = buildUnnamed30();
    o.tools = buildUnnamed31();
    o.toolsets = buildUnnamed32();
  }
  buildCounterAppSnapshot--;
  return o;
}

void checkAppSnapshot(api.AppSnapshot o) {
  buildCounterAppSnapshot++;
  if (buildCounterAppSnapshot < 3) {
    checkUnnamed28(o.agents!);
    checkApp(o.app!);
    checkUnnamed29(o.examples!);
    checkUnnamed30(o.guardrails!);
    checkUnnamed31(o.tools!);
    checkUnnamed32(o.toolsets!);
  }
  buildCounterAppSnapshot--;
}

core.int buildCounterAppVariableDeclaration = 0;
api.AppVariableDeclaration buildAppVariableDeclaration() {
  final o = api.AppVariableDeclaration();
  buildCounterAppVariableDeclaration++;
  if (buildCounterAppVariableDeclaration < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.schema = buildSchema();
  }
  buildCounterAppVariableDeclaration--;
  return o;
}

void checkAppVariableDeclaration(api.AppVariableDeclaration o) {
  buildCounterAppVariableDeclaration++;
  if (buildCounterAppVariableDeclaration < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkSchema(o.schema!);
  }
  buildCounterAppVariableDeclaration--;
}

core.int buildCounterAppVersion = 0;
api.AppVersion buildAppVersion() {
  final o = api.AppVersion();
  buildCounterAppVersion++;
  if (buildCounterAppVersion < 3) {
    o.createTime = 'foo';
    o.creator = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.name = 'foo';
    o.snapshot = buildAppSnapshot();
    o.updateTime = 'foo';
  }
  buildCounterAppVersion--;
  return o;
}

void checkAppVersion(api.AppVersion o) {
  buildCounterAppVersion++;
  if (buildCounterAppVersion < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.creator!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkAppSnapshot(o.snapshot!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterAppVersion--;
}

core.List<api.CustomVoiceSample> buildUnnamed33() => [
  buildCustomVoiceSample(),
  buildCustomVoiceSample(),
];

void checkUnnamed33(core.List<api.CustomVoiceSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomVoiceSample(o[0]);
  checkCustomVoiceSample(o[1]);
}

core.Map<core.String, api.SynthesizeSpeechConfig> buildUnnamed34() => {
  'x': buildSynthesizeSpeechConfig(),
  'y': buildSynthesizeSpeechConfig(),
};

void checkUnnamed34(core.Map<core.String, api.SynthesizeSpeechConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSynthesizeSpeechConfig(o['x']!);
  checkSynthesizeSpeechConfig(o['y']!);
}

core.int buildCounterAudioProcessingConfig = 0;
api.AudioProcessingConfig buildAudioProcessingConfig() {
  final o = api.AudioProcessingConfig();
  buildCounterAudioProcessingConfig++;
  if (buildCounterAudioProcessingConfig < 3) {
    o.ambientSoundConfig = buildAmbientSoundConfig();
    o.bargeInConfig = buildBargeInConfig();
    o.customVoiceSamples = buildUnnamed33();
    o.inactivityTimeout = 'foo';
    o.synthesizeSpeechConfigs = buildUnnamed34();
  }
  buildCounterAudioProcessingConfig--;
  return o;
}

void checkAudioProcessingConfig(api.AudioProcessingConfig o) {
  buildCounterAudioProcessingConfig++;
  if (buildCounterAudioProcessingConfig < 3) {
    checkAmbientSoundConfig(o.ambientSoundConfig!);
    checkBargeInConfig(o.bargeInConfig!);
    checkUnnamed33(o.customVoiceSamples!);
    unittest.expect(o.inactivityTimeout!, unittest.equals('foo'));
    checkUnnamed34(o.synthesizeSpeechConfigs!);
  }
  buildCounterAudioProcessingConfig--;
}

core.int buildCounterAudioRecordingConfig = 0;
api.AudioRecordingConfig buildAudioRecordingConfig() {
  final o = api.AudioRecordingConfig();
  buildCounterAudioRecordingConfig++;
  if (buildCounterAudioRecordingConfig < 3) {
    o.gcsBucket = 'foo';
    o.gcsPathPrefix = 'foo';
  }
  buildCounterAudioRecordingConfig--;
  return o;
}

void checkAudioRecordingConfig(api.AudioRecordingConfig o) {
  buildCounterAudioRecordingConfig++;
  if (buildCounterAudioRecordingConfig < 3) {
    unittest.expect(o.gcsBucket!, unittest.equals('foo'));
    unittest.expect(o.gcsPathPrefix!, unittest.equals('foo'));
  }
  buildCounterAudioRecordingConfig--;
}

core.int buildCounterBargeInConfig = 0;
api.BargeInConfig buildBargeInConfig() {
  final o = api.BargeInConfig();
  buildCounterBargeInConfig++;
  if (buildCounterBargeInConfig < 3) {
    o.bargeInAwareness = true;
    o.disableBargeIn = true;
  }
  buildCounterBargeInConfig--;
  return o;
}

void checkBargeInConfig(api.BargeInConfig o) {
  buildCounterBargeInConfig++;
  if (buildCounterBargeInConfig < 3) {
    unittest.expect(o.bargeInAwareness!, unittest.isTrue);
    unittest.expect(o.disableBargeIn!, unittest.isTrue);
  }
  buildCounterBargeInConfig--;
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchDeleteConversationsRequest = 0;
api.BatchDeleteConversationsRequest buildBatchDeleteConversationsRequest() {
  final o = api.BatchDeleteConversationsRequest();
  buildCounterBatchDeleteConversationsRequest++;
  if (buildCounterBatchDeleteConversationsRequest < 3) {
    o.conversations = buildUnnamed35();
  }
  buildCounterBatchDeleteConversationsRequest--;
  return o;
}

void checkBatchDeleteConversationsRequest(
  api.BatchDeleteConversationsRequest o,
) {
  buildCounterBatchDeleteConversationsRequest++;
  if (buildCounterBatchDeleteConversationsRequest < 3) {
    checkUnnamed35(o.conversations!);
  }
  buildCounterBatchDeleteConversationsRequest--;
}

core.int buildCounterBearerTokenConfig = 0;
api.BearerTokenConfig buildBearerTokenConfig() {
  final o = api.BearerTokenConfig();
  buildCounterBearerTokenConfig++;
  if (buildCounterBearerTokenConfig < 3) {
    o.token = 'foo';
  }
  buildCounterBearerTokenConfig--;
  return o;
}

void checkBearerTokenConfig(api.BearerTokenConfig o) {
  buildCounterBearerTokenConfig++;
  if (buildCounterBearerTokenConfig < 3) {
    unittest.expect(o.token!, unittest.equals('foo'));
  }
  buildCounterBearerTokenConfig--;
}

core.int buildCounterBigQueryExportSettings = 0;
api.BigQueryExportSettings buildBigQueryExportSettings() {
  final o = api.BigQueryExportSettings();
  buildCounterBigQueryExportSettings++;
  if (buildCounterBigQueryExportSettings < 3) {
    o.dataset = 'foo';
    o.enabled = true;
    o.project = 'foo';
  }
  buildCounterBigQueryExportSettings--;
  return o;
}

void checkBigQueryExportSettings(api.BigQueryExportSettings o) {
  buildCounterBigQueryExportSettings++;
  if (buildCounterBigQueryExportSettings < 3) {
    unittest.expect(o.dataset!, unittest.equals('foo'));
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.project!, unittest.equals('foo'));
  }
  buildCounterBigQueryExportSettings--;
}

core.int buildCounterBlob = 0;
api.Blob buildBlob() {
  final o = api.Blob();
  buildCounterBlob++;
  if (buildCounterBlob < 3) {
    o.data = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterBlob--;
  return o;
}

void checkBlob(api.Blob o) {
  buildCounterBlob++;
  if (buildCounterBlob < 3) {
    unittest.expect(o.data!, unittest.equals('foo'));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
  }
  buildCounterBlob--;
}

core.int buildCounterCallback = 0;
api.Callback buildCallback() {
  final o = api.Callback();
  buildCounterCallback++;
  if (buildCounterCallback < 3) {
    o.description = 'foo';
    o.disabled = true;
    o.proactiveExecutionEnabled = true;
    o.pythonCode = 'foo';
  }
  buildCounterCallback--;
  return o;
}

void checkCallback(api.Callback o) {
  buildCounterCallback++;
  if (buildCounterCallback < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.proactiveExecutionEnabled!, unittest.isTrue);
    unittest.expect(o.pythonCode!, unittest.equals('foo'));
  }
  buildCounterCallback--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed36() => {
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

void checkUnnamed36(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed37() => [
  buildUnnamed36(),
  buildUnnamed36(),
];

void checkUnnamed37(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed36(o[0]);
  checkUnnamed36(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed38() => {
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

void checkUnnamed38(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed39() => {
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

void checkUnnamed39(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterChangelog = 0;
api.Changelog buildChangelog() {
  final o = api.Changelog();
  buildCounterChangelog++;
  if (buildCounterChangelog < 3) {
    o.action = 'foo';
    o.author = 'foo';
    o.createTime = 'foo';
    o.dependentResources = buildUnnamed37();
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.newResource = buildUnnamed38();
    o.originalResource = buildUnnamed39();
    o.resource = 'foo';
    o.resourceType = 'foo';
    o.sequenceNumber = 'foo';
  }
  buildCounterChangelog--;
  return o;
}

void checkChangelog(api.Changelog o) {
  buildCounterChangelog++;
  if (buildCounterChangelog < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    unittest.expect(o.author!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed37(o.dependentResources!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed38(o.newResource!);
    checkUnnamed39(o.originalResource!);
    unittest.expect(o.resource!, unittest.equals('foo'));
    unittest.expect(o.resourceType!, unittest.equals('foo'));
    unittest.expect(o.sequenceNumber!, unittest.equals('foo'));
  }
  buildCounterChangelog--;
}

core.int buildCounterChannelProfile = 0;
api.ChannelProfile buildChannelProfile() {
  final o = api.ChannelProfile();
  buildCounterChannelProfile++;
  if (buildCounterChannelProfile < 3) {
    o.channelType = 'foo';
    o.disableBargeInControl = true;
    o.disableDtmf = true;
    o.instagramConfig = buildChannelProfileInstagramConfig();
    o.noiseSuppressionLevel = 'foo';
    o.personaProperty = buildChannelProfilePersonaProperty();
    o.profileId = 'foo';
    o.webWidgetConfig = buildChannelProfileWebWidgetConfig();
    o.whatsappConfig = buildChannelProfileWhatsAppConfig();
  }
  buildCounterChannelProfile--;
  return o;
}

void checkChannelProfile(api.ChannelProfile o) {
  buildCounterChannelProfile++;
  if (buildCounterChannelProfile < 3) {
    unittest.expect(o.channelType!, unittest.equals('foo'));
    unittest.expect(o.disableBargeInControl!, unittest.isTrue);
    unittest.expect(o.disableDtmf!, unittest.isTrue);
    checkChannelProfileInstagramConfig(o.instagramConfig!);
    unittest.expect(o.noiseSuppressionLevel!, unittest.equals('foo'));
    checkChannelProfilePersonaProperty(o.personaProperty!);
    unittest.expect(o.profileId!, unittest.equals('foo'));
    checkChannelProfileWebWidgetConfig(o.webWidgetConfig!);
    checkChannelProfileWhatsAppConfig(o.whatsappConfig!);
  }
  buildCounterChannelProfile--;
}

core.int buildCounterChannelProfileInstagramConfig = 0;
api.ChannelProfileInstagramConfig buildChannelProfileInstagramConfig() {
  final o = api.ChannelProfileInstagramConfig();
  buildCounterChannelProfileInstagramConfig++;
  if (buildCounterChannelProfileInstagramConfig < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.instagramAccountId = 'foo';
    o.thumbnailUrl = 'foo';
  }
  buildCounterChannelProfileInstagramConfig--;
  return o;
}

void checkChannelProfileInstagramConfig(api.ChannelProfileInstagramConfig o) {
  buildCounterChannelProfileInstagramConfig++;
  if (buildCounterChannelProfileInstagramConfig < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.instagramAccountId!, unittest.equals('foo'));
    unittest.expect(o.thumbnailUrl!, unittest.equals('foo'));
  }
  buildCounterChannelProfileInstagramConfig--;
}

core.int buildCounterChannelProfilePersonaProperty = 0;
api.ChannelProfilePersonaProperty buildChannelProfilePersonaProperty() {
  final o = api.ChannelProfilePersonaProperty();
  buildCounterChannelProfilePersonaProperty++;
  if (buildCounterChannelProfilePersonaProperty < 3) {
    o.persona = 'foo';
  }
  buildCounterChannelProfilePersonaProperty--;
  return o;
}

void checkChannelProfilePersonaProperty(api.ChannelProfilePersonaProperty o) {
  buildCounterChannelProfilePersonaProperty++;
  if (buildCounterChannelProfilePersonaProperty < 3) {
    unittest.expect(o.persona!, unittest.equals('foo'));
  }
  buildCounterChannelProfilePersonaProperty--;
}

core.int buildCounterChannelProfileWebWidgetConfig = 0;
api.ChannelProfileWebWidgetConfig buildChannelProfileWebWidgetConfig() {
  final o = api.ChannelProfileWebWidgetConfig();
  buildCounterChannelProfileWebWidgetConfig++;
  if (buildCounterChannelProfileWebWidgetConfig < 3) {
    o.modality = 'foo';
    o.securitySettings = buildChannelProfileWebWidgetConfigSecuritySettings();
    o.theme = 'foo';
    o.webWidgetTitle = 'foo';
  }
  buildCounterChannelProfileWebWidgetConfig--;
  return o;
}

void checkChannelProfileWebWidgetConfig(api.ChannelProfileWebWidgetConfig o) {
  buildCounterChannelProfileWebWidgetConfig++;
  if (buildCounterChannelProfileWebWidgetConfig < 3) {
    unittest.expect(o.modality!, unittest.equals('foo'));
    checkChannelProfileWebWidgetConfigSecuritySettings(o.securitySettings!);
    unittest.expect(o.theme!, unittest.equals('foo'));
    unittest.expect(o.webWidgetTitle!, unittest.equals('foo'));
  }
  buildCounterChannelProfileWebWidgetConfig--;
}

core.List<core.String> buildUnnamed40() => ['foo', 'foo'];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterChannelProfileWebWidgetConfigSecuritySettings = 0;
api.ChannelProfileWebWidgetConfigSecuritySettings
buildChannelProfileWebWidgetConfigSecuritySettings() {
  final o = api.ChannelProfileWebWidgetConfigSecuritySettings();
  buildCounterChannelProfileWebWidgetConfigSecuritySettings++;
  if (buildCounterChannelProfileWebWidgetConfigSecuritySettings < 3) {
    o.allowedOrigins = buildUnnamed40();
    o.enableOriginCheck = true;
    o.enablePublicAccess = true;
    o.enableRecaptcha = true;
  }
  buildCounterChannelProfileWebWidgetConfigSecuritySettings--;
  return o;
}

void checkChannelProfileWebWidgetConfigSecuritySettings(
  api.ChannelProfileWebWidgetConfigSecuritySettings o,
) {
  buildCounterChannelProfileWebWidgetConfigSecuritySettings++;
  if (buildCounterChannelProfileWebWidgetConfigSecuritySettings < 3) {
    checkUnnamed40(o.allowedOrigins!);
    unittest.expect(o.enableOriginCheck!, unittest.isTrue);
    unittest.expect(o.enablePublicAccess!, unittest.isTrue);
    unittest.expect(o.enableRecaptcha!, unittest.isTrue);
  }
  buildCounterChannelProfileWebWidgetConfigSecuritySettings--;
}

core.int buildCounterChannelProfileWhatsAppConfig = 0;
api.ChannelProfileWhatsAppConfig buildChannelProfileWhatsAppConfig() {
  final o = api.ChannelProfileWhatsAppConfig();
  buildCounterChannelProfileWhatsAppConfig++;
  if (buildCounterChannelProfileWhatsAppConfig < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.phoneNumber = 'foo';
    o.phoneNumberId = 'foo';
    o.thumbnailUrl = 'foo';
    o.wabaId = 'foo';
  }
  buildCounterChannelProfileWhatsAppConfig--;
  return o;
}

void checkChannelProfileWhatsAppConfig(api.ChannelProfileWhatsAppConfig o) {
  buildCounterChannelProfileWhatsAppConfig++;
  if (buildCounterChannelProfileWhatsAppConfig < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.phoneNumber!, unittest.equals('foo'));
    unittest.expect(o.phoneNumberId!, unittest.equals('foo'));
    unittest.expect(o.thumbnailUrl!, unittest.equals('foo'));
    unittest.expect(o.wabaId!, unittest.equals('foo'));
  }
  buildCounterChannelProfileWhatsAppConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed41() => {
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

void checkUnnamed41(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed42() => {
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

void checkUnnamed42(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed43() => {
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

void checkUnnamed43(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterChunk = 0;
api.Chunk buildChunk() {
  final o = api.Chunk();
  buildCounterChunk++;
  if (buildCounterChunk < 3) {
    o.agentTransfer = buildAgentTransfer();
    o.blob = buildBlob();
    o.defaultVariables = buildUnnamed41();
    o.image = buildImage();
    o.payload = buildUnnamed42();
    o.text = 'foo';
    o.toolCall = buildToolCall();
    o.toolResponse = buildToolResponse();
    o.transcript = 'foo';
    o.updatedVariables = buildUnnamed43();
  }
  buildCounterChunk--;
  return o;
}

void checkChunk(api.Chunk o) {
  buildCounterChunk++;
  if (buildCounterChunk < 3) {
    checkAgentTransfer(o.agentTransfer!);
    checkBlob(o.blob!);
    checkUnnamed41(o.defaultVariables!);
    checkImage(o.image!);
    checkUnnamed42(o.payload!);
    unittest.expect(o.text!, unittest.equals('foo'));
    checkToolCall(o.toolCall!);
    checkToolResponse(o.toolResponse!);
    unittest.expect(o.transcript!, unittest.equals('foo'));
    checkUnnamed43(o.updatedVariables!);
  }
  buildCounterChunk--;
}

core.List<api.CitationsCitedChunk> buildUnnamed44() => [
  buildCitationsCitedChunk(),
  buildCitationsCitedChunk(),
];

void checkUnnamed44(core.List<api.CitationsCitedChunk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCitationsCitedChunk(o[0]);
  checkCitationsCitedChunk(o[1]);
}

core.List<api.CitationsInlineCitation> buildUnnamed45() => [
  buildCitationsInlineCitation(),
  buildCitationsInlineCitation(),
];

void checkUnnamed45(core.List<api.CitationsInlineCitation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCitationsInlineCitation(o[0]);
  checkCitationsInlineCitation(o[1]);
}

core.int buildCounterCitations = 0;
api.Citations buildCitations() {
  final o = api.Citations();
  buildCounterCitations++;
  if (buildCounterCitations < 3) {
    o.citedChunks = buildUnnamed44();
    o.inlineCitations = buildUnnamed45();
  }
  buildCounterCitations--;
  return o;
}

void checkCitations(api.Citations o) {
  buildCounterCitations++;
  if (buildCounterCitations < 3) {
    checkUnnamed44(o.citedChunks!);
    checkUnnamed45(o.inlineCitations!);
  }
  buildCounterCitations--;
}

core.int buildCounterCitationsCitedChunk = 0;
api.CitationsCitedChunk buildCitationsCitedChunk() {
  final o = api.CitationsCitedChunk();
  buildCounterCitationsCitedChunk++;
  if (buildCounterCitationsCitedChunk < 3) {
    o.requiresAttribution = true;
    o.text = 'foo';
    o.title = 'foo';
    o.uri = 'foo';
  }
  buildCounterCitationsCitedChunk--;
  return o;
}

void checkCitationsCitedChunk(api.CitationsCitedChunk o) {
  buildCounterCitationsCitedChunk++;
  if (buildCounterCitationsCitedChunk < 3) {
    unittest.expect(o.requiresAttribution!, unittest.isTrue);
    unittest.expect(o.text!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterCitationsCitedChunk--;
}

core.List<core.int> buildUnnamed46() => [42, 42];

void checkUnnamed46(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterCitationsInlineCitation = 0;
api.CitationsInlineCitation buildCitationsInlineCitation() {
  final o = api.CitationsInlineCitation();
  buildCounterCitationsInlineCitation++;
  if (buildCounterCitationsInlineCitation < 3) {
    o.citedChunkIndices = buildUnnamed46();
    o.endIndex = 42;
    o.startIndex = 42;
  }
  buildCounterCitationsInlineCitation--;
  return o;
}

void checkCitationsInlineCitation(api.CitationsInlineCitation o) {
  buildCounterCitationsInlineCitation++;
  if (buildCounterCitationsInlineCitation < 3) {
    checkUnnamed46(o.citedChunkIndices!);
    unittest.expect(o.endIndex!, unittest.equals(42));
    unittest.expect(o.startIndex!, unittest.equals(42));
  }
  buildCounterCitationsInlineCitation--;
}

core.int buildCounterClientCertificateSettings = 0;
api.ClientCertificateSettings buildClientCertificateSettings() {
  final o = api.ClientCertificateSettings();
  buildCounterClientCertificateSettings++;
  if (buildCounterClientCertificateSettings < 3) {
    o.passphrase = 'foo';
    o.privateKey = 'foo';
    o.tlsCertificate = 'foo';
  }
  buildCounterClientCertificateSettings--;
  return o;
}

void checkClientCertificateSettings(api.ClientCertificateSettings o) {
  buildCounterClientCertificateSettings++;
  if (buildCounterClientCertificateSettings < 3) {
    unittest.expect(o.passphrase!, unittest.equals('foo'));
    unittest.expect(o.privateKey!, unittest.equals('foo'));
    unittest.expect(o.tlsCertificate!, unittest.equals('foo'));
  }
  buildCounterClientCertificateSettings--;
}

core.int buildCounterClientFunction = 0;
api.ClientFunction buildClientFunction() {
  final o = api.ClientFunction();
  buildCounterClientFunction++;
  if (buildCounterClientFunction < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.parameters = buildSchema();
    o.response = buildSchema();
  }
  buildCounterClientFunction--;
  return o;
}

void checkClientFunction(api.ClientFunction o) {
  buildCounterClientFunction++;
  if (buildCounterClientFunction < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkSchema(o.parameters!);
    checkSchema(o.response!);
  }
  buildCounterClientFunction--;
}

core.int buildCounterCloudLoggingSettings = 0;
api.CloudLoggingSettings buildCloudLoggingSettings() {
  final o = api.CloudLoggingSettings();
  buildCounterCloudLoggingSettings++;
  if (buildCounterCloudLoggingSettings < 3) {
    o.enableCloudLogging = true;
  }
  buildCounterCloudLoggingSettings--;
  return o;
}

void checkCloudLoggingSettings(api.CloudLoggingSettings o) {
  buildCounterCloudLoggingSettings++;
  if (buildCounterCloudLoggingSettings < 3) {
    unittest.expect(o.enableCloudLogging!, unittest.isTrue);
  }
  buildCounterCloudLoggingSettings--;
}

core.int buildCounterCodeBlock = 0;
api.CodeBlock buildCodeBlock() {
  final o = api.CodeBlock();
  buildCounterCodeBlock++;
  if (buildCounterCodeBlock < 3) {
    o.pythonCode = 'foo';
  }
  buildCounterCodeBlock--;
  return o;
}

void checkCodeBlock(api.CodeBlock o) {
  buildCounterCodeBlock++;
  if (buildCounterCodeBlock < 3) {
    unittest.expect(o.pythonCode!, unittest.equals('foo'));
  }
  buildCounterCodeBlock--;
}

core.int buildCounterConnectorTool = 0;
api.ConnectorTool buildConnectorTool() {
  final o = api.ConnectorTool();
  buildCounterConnectorTool++;
  if (buildCounterConnectorTool < 3) {
    o.action = buildAction();
    o.authConfig = buildEndUserAuthConfig();
    o.connection = 'foo';
    o.description = 'foo';
    o.name = 'foo';
  }
  buildCounterConnectorTool--;
  return o;
}

void checkConnectorTool(api.ConnectorTool o) {
  buildCounterConnectorTool++;
  if (buildCounterConnectorTool < 3) {
    checkAction(o.action!);
    checkEndUserAuthConfig(o.authConfig!);
    unittest.expect(o.connection!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterConnectorTool--;
}

core.List<api.Action> buildUnnamed47() => [buildAction(), buildAction()];

void checkUnnamed47(core.List<api.Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAction(o[0]);
  checkAction(o[1]);
}

core.int buildCounterConnectorToolset = 0;
api.ConnectorToolset buildConnectorToolset() {
  final o = api.ConnectorToolset();
  buildCounterConnectorToolset++;
  if (buildCounterConnectorToolset < 3) {
    o.authConfig = buildEndUserAuthConfig();
    o.connection = 'foo';
    o.connectorActions = buildUnnamed47();
  }
  buildCounterConnectorToolset--;
  return o;
}

void checkConnectorToolset(api.ConnectorToolset o) {
  buildCounterConnectorToolset++;
  if (buildCounterConnectorToolset < 3) {
    checkEndUserAuthConfig(o.authConfig!);
    unittest.expect(o.connection!, unittest.equals('foo'));
    checkUnnamed47(o.connectorActions!);
  }
  buildCounterConnectorToolset--;
}

core.List<core.String> buildUnnamed48() => ['foo', 'foo'];

void checkUnnamed48(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Message> buildUnnamed49() => [buildMessage(), buildMessage()];

void checkUnnamed49(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.List<api.ConversationTurn> buildUnnamed50() => [
  buildConversationTurn(),
  buildConversationTurn(),
];

void checkUnnamed50(core.List<api.ConversationTurn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConversationTurn(o[0]);
  checkConversationTurn(o[1]);
}

core.int buildCounterConversation = 0;
api.Conversation buildConversation() {
  final o = api.Conversation();
  buildCounterConversation++;
  if (buildCounterConversation < 3) {
    o.appVersion = 'foo';
    o.channelType = 'foo';
    o.deployment = 'foo';
    o.endTime = 'foo';
    o.entryAgent = 'foo';
    o.inputTypes = buildUnnamed48();
    o.languageCode = 'foo';
    o.messages = buildUnnamed49();
    o.name = 'foo';
    o.source = 'foo';
    o.startTime = 'foo';
    o.turnCount = 42;
    o.turns = buildUnnamed50();
  }
  buildCounterConversation--;
  return o;
}

void checkConversation(api.Conversation o) {
  buildCounterConversation++;
  if (buildCounterConversation < 3) {
    unittest.expect(o.appVersion!, unittest.equals('foo'));
    unittest.expect(o.channelType!, unittest.equals('foo'));
    unittest.expect(o.deployment!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.entryAgent!, unittest.equals('foo'));
    checkUnnamed48(o.inputTypes!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    checkUnnamed49(o.messages!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.source!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.turnCount!, unittest.equals(42));
    checkUnnamed50(o.turns!);
  }
  buildCounterConversation--;
}

core.int buildCounterConversationLoggingSettings = 0;
api.ConversationLoggingSettings buildConversationLoggingSettings() {
  final o = api.ConversationLoggingSettings();
  buildCounterConversationLoggingSettings++;
  if (buildCounterConversationLoggingSettings < 3) {
    o.disableConversationLogging = true;
    o.retentionWindow = 'foo';
  }
  buildCounterConversationLoggingSettings--;
  return o;
}

void checkConversationLoggingSettings(api.ConversationLoggingSettings o) {
  buildCounterConversationLoggingSettings++;
  if (buildCounterConversationLoggingSettings < 3) {
    unittest.expect(o.disableConversationLogging!, unittest.isTrue);
    unittest.expect(o.retentionWindow!, unittest.equals('foo'));
  }
  buildCounterConversationLoggingSettings--;
}

core.List<api.Message> buildUnnamed51() => [buildMessage(), buildMessage()];

void checkUnnamed51(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.int buildCounterConversationTurn = 0;
api.ConversationTurn buildConversationTurn() {
  final o = api.ConversationTurn();
  buildCounterConversationTurn++;
  if (buildCounterConversationTurn < 3) {
    o.messages = buildUnnamed51();
    o.rootSpan = buildSpan();
    o.userIntendedText = 'foo';
  }
  buildCounterConversationTurn--;
  return o;
}

void checkConversationTurn(api.ConversationTurn o) {
  buildCounterConversationTurn++;
  if (buildCounterConversationTurn < 3) {
    checkUnnamed51(o.messages!);
    checkSpan(o.rootSpan!);
    unittest.expect(o.userIntendedText!, unittest.equals('foo'));
  }
  buildCounterConversationTurn--;
}

core.int buildCounterCustomVoiceSample = 0;
api.CustomVoiceSample buildCustomVoiceSample() {
  final o = api.CustomVoiceSample();
  buildCounterCustomVoiceSample++;
  if (buildCounterCustomVoiceSample < 3) {
    o.consentAudioGcsUri = 'foo';
    o.name = 'foo';
    o.previewAudioContent = 'foo';
    o.previewText = 'foo';
    o.voiceInstruction = 'foo';
    o.voiceSampleGcsUri = 'foo';
  }
  buildCounterCustomVoiceSample--;
  return o;
}

void checkCustomVoiceSample(api.CustomVoiceSample o) {
  buildCounterCustomVoiceSample++;
  if (buildCounterCustomVoiceSample < 3) {
    unittest.expect(o.consentAudioGcsUri!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.previewAudioContent!, unittest.equals('foo'));
    unittest.expect(o.previewText!, unittest.equals('foo'));
    unittest.expect(o.voiceInstruction!, unittest.equals('foo'));
    unittest.expect(o.voiceSampleGcsUri!, unittest.equals('foo'));
  }
  buildCounterCustomVoiceSample--;
}

core.int buildCounterDashboardSettings = 0;
api.DashboardSettings buildDashboardSettings() {
  final o = api.DashboardSettings();
  buildCounterDashboardSettings++;
  if (buildCounterDashboardSettings < 3) {
    o.defaultDashboard = 'foo';
  }
  buildCounterDashboardSettings--;
  return o;
}

void checkDashboardSettings(api.DashboardSettings o) {
  buildCounterDashboardSettings++;
  if (buildCounterDashboardSettings < 3) {
    unittest.expect(o.defaultDashboard!, unittest.equals('foo'));
  }
  buildCounterDashboardSettings--;
}

core.int buildCounterDataStore = 0;
api.DataStore buildDataStore() {
  final o = api.DataStore();
  buildCounterDataStore++;
  if (buildCounterDataStore < 3) {
    o.connectorConfig = buildDataStoreConnectorConfig();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.documentProcessingMode = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterDataStore--;
  return o;
}

void checkDataStore(api.DataStore o) {
  buildCounterDataStore++;
  if (buildCounterDataStore < 3) {
    checkDataStoreConnectorConfig(o.connectorConfig!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.documentProcessingMode!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterDataStore--;
}

core.int buildCounterDataStoreConnectorConfig = 0;
api.DataStoreConnectorConfig buildDataStoreConnectorConfig() {
  final o = api.DataStoreConnectorConfig();
  buildCounterDataStoreConnectorConfig++;
  if (buildCounterDataStoreConnectorConfig < 3) {
    o.collection = 'foo';
    o.collectionDisplayName = 'foo';
    o.dataSource = 'foo';
  }
  buildCounterDataStoreConnectorConfig--;
  return o;
}

void checkDataStoreConnectorConfig(api.DataStoreConnectorConfig o) {
  buildCounterDataStoreConnectorConfig++;
  if (buildCounterDataStoreConnectorConfig < 3) {
    unittest.expect(o.collection!, unittest.equals('foo'));
    unittest.expect(o.collectionDisplayName!, unittest.equals('foo'));
    unittest.expect(o.dataSource!, unittest.equals('foo'));
  }
  buildCounterDataStoreConnectorConfig--;
}

core.List<api.DataStoreSettingsEngine> buildUnnamed52() => [
  buildDataStoreSettingsEngine(),
  buildDataStoreSettingsEngine(),
];

void checkUnnamed52(core.List<api.DataStoreSettingsEngine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataStoreSettingsEngine(o[0]);
  checkDataStoreSettingsEngine(o[1]);
}

core.int buildCounterDataStoreSettings = 0;
api.DataStoreSettings buildDataStoreSettings() {
  final o = api.DataStoreSettings();
  buildCounterDataStoreSettings++;
  if (buildCounterDataStoreSettings < 3) {
    o.engines = buildUnnamed52();
  }
  buildCounterDataStoreSettings--;
  return o;
}

void checkDataStoreSettings(api.DataStoreSettings o) {
  buildCounterDataStoreSettings++;
  if (buildCounterDataStoreSettings < 3) {
    checkUnnamed52(o.engines!);
  }
  buildCounterDataStoreSettings--;
}

core.int buildCounterDataStoreSettingsEngine = 0;
api.DataStoreSettingsEngine buildDataStoreSettingsEngine() {
  final o = api.DataStoreSettingsEngine();
  buildCounterDataStoreSettingsEngine++;
  if (buildCounterDataStoreSettingsEngine < 3) {
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterDataStoreSettingsEngine--;
  return o;
}

void checkDataStoreSettingsEngine(api.DataStoreSettingsEngine o) {
  buildCounterDataStoreSettingsEngine++;
  if (buildCounterDataStoreSettingsEngine < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterDataStoreSettingsEngine--;
}

core.List<api.DataStoreToolBoostSpecs> buildUnnamed53() => [
  buildDataStoreToolBoostSpecs(),
  buildDataStoreToolBoostSpecs(),
];

void checkUnnamed53(core.List<api.DataStoreToolBoostSpecs> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataStoreToolBoostSpecs(o[0]);
  checkDataStoreToolBoostSpecs(o[1]);
}

core.List<api.DataStoreToolModalityConfig> buildUnnamed54() => [
  buildDataStoreToolModalityConfig(),
  buildDataStoreToolModalityConfig(),
];

void checkUnnamed54(core.List<api.DataStoreToolModalityConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataStoreToolModalityConfig(o[0]);
  checkDataStoreToolModalityConfig(o[1]);
}

core.int buildCounterDataStoreTool = 0;
api.DataStoreTool buildDataStoreTool() {
  final o = api.DataStoreTool();
  buildCounterDataStoreTool++;
  if (buildCounterDataStoreTool < 3) {
    o.boostSpecs = buildUnnamed53();
    o.dataStoreSource = buildDataStoreToolDataStoreSource();
    o.description = 'foo';
    o.engineSource = buildDataStoreToolEngineSource();
    o.filterParameterBehavior = 'foo';
    o.modalityConfigs = buildUnnamed54();
    o.name = 'foo';
  }
  buildCounterDataStoreTool--;
  return o;
}

void checkDataStoreTool(api.DataStoreTool o) {
  buildCounterDataStoreTool++;
  if (buildCounterDataStoreTool < 3) {
    checkUnnamed53(o.boostSpecs!);
    checkDataStoreToolDataStoreSource(o.dataStoreSource!);
    unittest.expect(o.description!, unittest.equals('foo'));
    checkDataStoreToolEngineSource(o.engineSource!);
    unittest.expect(o.filterParameterBehavior!, unittest.equals('foo'));
    checkUnnamed54(o.modalityConfigs!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterDataStoreTool--;
}

core.List<api.DataStoreToolBoostSpecConditionBoostSpec> buildUnnamed55() => [
  buildDataStoreToolBoostSpecConditionBoostSpec(),
  buildDataStoreToolBoostSpecConditionBoostSpec(),
];

void checkUnnamed55(core.List<api.DataStoreToolBoostSpecConditionBoostSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataStoreToolBoostSpecConditionBoostSpec(o[0]);
  checkDataStoreToolBoostSpecConditionBoostSpec(o[1]);
}

core.int buildCounterDataStoreToolBoostSpec = 0;
api.DataStoreToolBoostSpec buildDataStoreToolBoostSpec() {
  final o = api.DataStoreToolBoostSpec();
  buildCounterDataStoreToolBoostSpec++;
  if (buildCounterDataStoreToolBoostSpec < 3) {
    o.conditionBoostSpecs = buildUnnamed55();
  }
  buildCounterDataStoreToolBoostSpec--;
  return o;
}

void checkDataStoreToolBoostSpec(api.DataStoreToolBoostSpec o) {
  buildCounterDataStoreToolBoostSpec++;
  if (buildCounterDataStoreToolBoostSpec < 3) {
    checkUnnamed55(o.conditionBoostSpecs!);
  }
  buildCounterDataStoreToolBoostSpec--;
}

core.int buildCounterDataStoreToolBoostSpecConditionBoostSpec = 0;
api.DataStoreToolBoostSpecConditionBoostSpec
buildDataStoreToolBoostSpecConditionBoostSpec() {
  final o = api.DataStoreToolBoostSpecConditionBoostSpec();
  buildCounterDataStoreToolBoostSpecConditionBoostSpec++;
  if (buildCounterDataStoreToolBoostSpecConditionBoostSpec < 3) {
    o.boost = 42.0;
    o.boostControlSpec =
        buildDataStoreToolBoostSpecConditionBoostSpecBoostControlSpec();
    o.condition = 'foo';
  }
  buildCounterDataStoreToolBoostSpecConditionBoostSpec--;
  return o;
}

void checkDataStoreToolBoostSpecConditionBoostSpec(
  api.DataStoreToolBoostSpecConditionBoostSpec o,
) {
  buildCounterDataStoreToolBoostSpecConditionBoostSpec++;
  if (buildCounterDataStoreToolBoostSpecConditionBoostSpec < 3) {
    unittest.expect(o.boost!, unittest.equals(42.0));
    checkDataStoreToolBoostSpecConditionBoostSpecBoostControlSpec(
      o.boostControlSpec!,
    );
    unittest.expect(o.condition!, unittest.equals('foo'));
  }
  buildCounterDataStoreToolBoostSpecConditionBoostSpec--;
}

core.List<
  api.DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint
>
buildUnnamed56() => [
  buildDataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint(),
  buildDataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint(),
];

void checkUnnamed56(
  core.List<
    api.DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint(
    o[0],
  );
  checkDataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint(
    o[1],
  );
}

core.int buildCounterDataStoreToolBoostSpecConditionBoostSpecBoostControlSpec =
    0;
api.DataStoreToolBoostSpecConditionBoostSpecBoostControlSpec
buildDataStoreToolBoostSpecConditionBoostSpecBoostControlSpec() {
  final o = api.DataStoreToolBoostSpecConditionBoostSpecBoostControlSpec();
  buildCounterDataStoreToolBoostSpecConditionBoostSpecBoostControlSpec++;
  if (buildCounterDataStoreToolBoostSpecConditionBoostSpecBoostControlSpec <
      3) {
    o.attributeType = 'foo';
    o.controlPoints = buildUnnamed56();
    o.fieldName = 'foo';
    o.interpolationType = 'foo';
  }
  buildCounterDataStoreToolBoostSpecConditionBoostSpecBoostControlSpec--;
  return o;
}

void checkDataStoreToolBoostSpecConditionBoostSpecBoostControlSpec(
  api.DataStoreToolBoostSpecConditionBoostSpecBoostControlSpec o,
) {
  buildCounterDataStoreToolBoostSpecConditionBoostSpecBoostControlSpec++;
  if (buildCounterDataStoreToolBoostSpecConditionBoostSpecBoostControlSpec <
      3) {
    unittest.expect(o.attributeType!, unittest.equals('foo'));
    checkUnnamed56(o.controlPoints!);
    unittest.expect(o.fieldName!, unittest.equals('foo'));
    unittest.expect(o.interpolationType!, unittest.equals('foo'));
  }
  buildCounterDataStoreToolBoostSpecConditionBoostSpecBoostControlSpec--;
}

core.int
buildCounterDataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint =
    0;
api.DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint
buildDataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint() {
  final o =
      api.DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint();
  buildCounterDataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint++;
  if (buildCounterDataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint <
      3) {
    o.attributeValue = 'foo';
    o.boostAmount = 42.0;
  }
  buildCounterDataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint--;
  return o;
}

void checkDataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint(
  api.DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint o,
) {
  buildCounterDataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint++;
  if (buildCounterDataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint <
      3) {
    unittest.expect(o.attributeValue!, unittest.equals('foo'));
    unittest.expect(o.boostAmount!, unittest.equals(42.0));
  }
  buildCounterDataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint--;
}

core.List<core.String> buildUnnamed57() => ['foo', 'foo'];

void checkUnnamed57(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.DataStoreToolBoostSpec> buildUnnamed58() => [
  buildDataStoreToolBoostSpec(),
  buildDataStoreToolBoostSpec(),
];

void checkUnnamed58(core.List<api.DataStoreToolBoostSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataStoreToolBoostSpec(o[0]);
  checkDataStoreToolBoostSpec(o[1]);
}

core.int buildCounterDataStoreToolBoostSpecs = 0;
api.DataStoreToolBoostSpecs buildDataStoreToolBoostSpecs() {
  final o = api.DataStoreToolBoostSpecs();
  buildCounterDataStoreToolBoostSpecs++;
  if (buildCounterDataStoreToolBoostSpecs < 3) {
    o.dataStores = buildUnnamed57();
    o.spec = buildUnnamed58();
  }
  buildCounterDataStoreToolBoostSpecs--;
  return o;
}

void checkDataStoreToolBoostSpecs(api.DataStoreToolBoostSpecs o) {
  buildCounterDataStoreToolBoostSpecs++;
  if (buildCounterDataStoreToolBoostSpecs < 3) {
    checkUnnamed57(o.dataStores!);
    checkUnnamed58(o.spec!);
  }
  buildCounterDataStoreToolBoostSpecs--;
}

core.int buildCounterDataStoreToolDataStoreSource = 0;
api.DataStoreToolDataStoreSource buildDataStoreToolDataStoreSource() {
  final o = api.DataStoreToolDataStoreSource();
  buildCounterDataStoreToolDataStoreSource++;
  if (buildCounterDataStoreToolDataStoreSource < 3) {
    o.dataStore = buildDataStore();
    o.filter = 'foo';
  }
  buildCounterDataStoreToolDataStoreSource--;
  return o;
}

void checkDataStoreToolDataStoreSource(api.DataStoreToolDataStoreSource o) {
  buildCounterDataStoreToolDataStoreSource++;
  if (buildCounterDataStoreToolDataStoreSource < 3) {
    checkDataStore(o.dataStore!);
    unittest.expect(o.filter!, unittest.equals('foo'));
  }
  buildCounterDataStoreToolDataStoreSource--;
}

core.List<api.DataStoreToolDataStoreSource> buildUnnamed59() => [
  buildDataStoreToolDataStoreSource(),
  buildDataStoreToolDataStoreSource(),
];

void checkUnnamed59(core.List<api.DataStoreToolDataStoreSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataStoreToolDataStoreSource(o[0]);
  checkDataStoreToolDataStoreSource(o[1]);
}

core.int buildCounterDataStoreToolEngineSource = 0;
api.DataStoreToolEngineSource buildDataStoreToolEngineSource() {
  final o = api.DataStoreToolEngineSource();
  buildCounterDataStoreToolEngineSource++;
  if (buildCounterDataStoreToolEngineSource < 3) {
    o.dataStoreSources = buildUnnamed59();
    o.engine = 'foo';
    o.filter = 'foo';
  }
  buildCounterDataStoreToolEngineSource--;
  return o;
}

void checkDataStoreToolEngineSource(api.DataStoreToolEngineSource o) {
  buildCounterDataStoreToolEngineSource++;
  if (buildCounterDataStoreToolEngineSource < 3) {
    checkUnnamed59(o.dataStoreSources!);
    unittest.expect(o.engine!, unittest.equals('foo'));
    unittest.expect(o.filter!, unittest.equals('foo'));
  }
  buildCounterDataStoreToolEngineSource--;
}

core.int buildCounterDataStoreToolGroundingConfig = 0;
api.DataStoreToolGroundingConfig buildDataStoreToolGroundingConfig() {
  final o = api.DataStoreToolGroundingConfig();
  buildCounterDataStoreToolGroundingConfig++;
  if (buildCounterDataStoreToolGroundingConfig < 3) {
    o.disabled = true;
    o.groundingLevel = 42.0;
  }
  buildCounterDataStoreToolGroundingConfig--;
  return o;
}

void checkDataStoreToolGroundingConfig(api.DataStoreToolGroundingConfig o) {
  buildCounterDataStoreToolGroundingConfig++;
  if (buildCounterDataStoreToolGroundingConfig < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.groundingLevel!, unittest.equals(42.0));
  }
  buildCounterDataStoreToolGroundingConfig--;
}

core.int buildCounterDataStoreToolModalityConfig = 0;
api.DataStoreToolModalityConfig buildDataStoreToolModalityConfig() {
  final o = api.DataStoreToolModalityConfig();
  buildCounterDataStoreToolModalityConfig++;
  if (buildCounterDataStoreToolModalityConfig < 3) {
    o.groundingConfig = buildDataStoreToolGroundingConfig();
    o.modalityType = 'foo';
    o.rewriterConfig = buildDataStoreToolRewriterConfig();
    o.snippetsConfig = buildDataStoreToolSnippetsConfig();
    o.summarizationConfig = buildDataStoreToolSummarizationConfig();
  }
  buildCounterDataStoreToolModalityConfig--;
  return o;
}

void checkDataStoreToolModalityConfig(api.DataStoreToolModalityConfig o) {
  buildCounterDataStoreToolModalityConfig++;
  if (buildCounterDataStoreToolModalityConfig < 3) {
    checkDataStoreToolGroundingConfig(o.groundingConfig!);
    unittest.expect(o.modalityType!, unittest.equals('foo'));
    checkDataStoreToolRewriterConfig(o.rewriterConfig!);
    checkDataStoreToolSnippetsConfig(o.snippetsConfig!);
    checkDataStoreToolSummarizationConfig(o.summarizationConfig!);
  }
  buildCounterDataStoreToolModalityConfig--;
}

core.int buildCounterDataStoreToolRewriterConfig = 0;
api.DataStoreToolRewriterConfig buildDataStoreToolRewriterConfig() {
  final o = api.DataStoreToolRewriterConfig();
  buildCounterDataStoreToolRewriterConfig++;
  if (buildCounterDataStoreToolRewriterConfig < 3) {
    o.disabled = true;
    o.modelSettings = buildModelSettings();
    o.prompt = 'foo';
  }
  buildCounterDataStoreToolRewriterConfig--;
  return o;
}

void checkDataStoreToolRewriterConfig(api.DataStoreToolRewriterConfig o) {
  buildCounterDataStoreToolRewriterConfig++;
  if (buildCounterDataStoreToolRewriterConfig < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
    checkModelSettings(o.modelSettings!);
    unittest.expect(o.prompt!, unittest.equals('foo'));
  }
  buildCounterDataStoreToolRewriterConfig--;
}

core.int buildCounterDataStoreToolSnippetsConfig = 0;
api.DataStoreToolSnippetsConfig buildDataStoreToolSnippetsConfig() {
  final o = api.DataStoreToolSnippetsConfig();
  buildCounterDataStoreToolSnippetsConfig++;
  if (buildCounterDataStoreToolSnippetsConfig < 3) {
    o.enableSnippets = true;
    o.maxSnippets = 42;
  }
  buildCounterDataStoreToolSnippetsConfig--;
  return o;
}

void checkDataStoreToolSnippetsConfig(api.DataStoreToolSnippetsConfig o) {
  buildCounterDataStoreToolSnippetsConfig++;
  if (buildCounterDataStoreToolSnippetsConfig < 3) {
    unittest.expect(o.enableSnippets!, unittest.isTrue);
    unittest.expect(o.maxSnippets!, unittest.equals(42));
  }
  buildCounterDataStoreToolSnippetsConfig--;
}

core.int buildCounterDataStoreToolSummarizationConfig = 0;
api.DataStoreToolSummarizationConfig buildDataStoreToolSummarizationConfig() {
  final o = api.DataStoreToolSummarizationConfig();
  buildCounterDataStoreToolSummarizationConfig++;
  if (buildCounterDataStoreToolSummarizationConfig < 3) {
    o.disabled = true;
    o.modelSettings = buildModelSettings();
    o.prompt = 'foo';
  }
  buildCounterDataStoreToolSummarizationConfig--;
  return o;
}

void checkDataStoreToolSummarizationConfig(
  api.DataStoreToolSummarizationConfig o,
) {
  buildCounterDataStoreToolSummarizationConfig++;
  if (buildCounterDataStoreToolSummarizationConfig < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
    checkModelSettings(o.modelSettings!);
    unittest.expect(o.prompt!, unittest.equals('foo'));
  }
  buildCounterDataStoreToolSummarizationConfig--;
}

core.int buildCounterDeployment = 0;
api.Deployment buildDeployment() {
  final o = api.Deployment();
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    o.agentRegistryDeployment = buildAgentRegistryDeployment();
    o.appVersion = 'foo';
    o.channelProfile = buildChannelProfile();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.experimentConfig = buildExperimentConfig();
    o.instagramCredentials = buildInstagramCredentials();
    o.modality = 'foo';
    o.modelSettings = buildModelSettings();
    o.name = 'foo';
    o.updateTime = 'foo';
    o.whatsappCredentials = buildWhatsAppCredentials();
  }
  buildCounterDeployment--;
  return o;
}

void checkDeployment(api.Deployment o) {
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    checkAgentRegistryDeployment(o.agentRegistryDeployment!);
    unittest.expect(o.appVersion!, unittest.equals('foo'));
    checkChannelProfile(o.channelProfile!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkExperimentConfig(o.experimentConfig!);
    checkInstagramCredentials(o.instagramCredentials!);
    unittest.expect(o.modality!, unittest.equals('foo'));
    checkModelSettings(o.modelSettings!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkWhatsAppCredentials(o.whatsappCredentials!);
  }
  buildCounterDeployment--;
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

core.Map<core.String, core.Object?> buildUnnamed60() => {
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

void checkUnnamed60(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterEndSession = 0;
api.EndSession buildEndSession() {
  final o = api.EndSession();
  buildCounterEndSession++;
  if (buildCounterEndSession < 3) {
    o.metadata = buildUnnamed60();
  }
  buildCounterEndSession--;
  return o;
}

void checkEndSession(api.EndSession o) {
  buildCounterEndSession++;
  if (buildCounterEndSession < 3) {
    checkUnnamed60(o.metadata!);
  }
  buildCounterEndSession--;
}

core.int buildCounterEndUserAuthConfig = 0;
api.EndUserAuthConfig buildEndUserAuthConfig() {
  final o = api.EndUserAuthConfig();
  buildCounterEndUserAuthConfig++;
  if (buildCounterEndUserAuthConfig < 3) {
    o.oauth2AuthCodeConfig = buildEndUserAuthConfigOauth2AuthCodeConfig();
    o.oauth2JwtBearerConfig = buildEndUserAuthConfigOauth2JwtBearerConfig();
  }
  buildCounterEndUserAuthConfig--;
  return o;
}

void checkEndUserAuthConfig(api.EndUserAuthConfig o) {
  buildCounterEndUserAuthConfig++;
  if (buildCounterEndUserAuthConfig < 3) {
    checkEndUserAuthConfigOauth2AuthCodeConfig(o.oauth2AuthCodeConfig!);
    checkEndUserAuthConfigOauth2JwtBearerConfig(o.oauth2JwtBearerConfig!);
  }
  buildCounterEndUserAuthConfig--;
}

core.int buildCounterEndUserAuthConfigOauth2AuthCodeConfig = 0;
api.EndUserAuthConfigOauth2AuthCodeConfig
buildEndUserAuthConfigOauth2AuthCodeConfig() {
  final o = api.EndUserAuthConfigOauth2AuthCodeConfig();
  buildCounterEndUserAuthConfigOauth2AuthCodeConfig++;
  if (buildCounterEndUserAuthConfigOauth2AuthCodeConfig < 3) {
    o.oauthToken = 'foo';
  }
  buildCounterEndUserAuthConfigOauth2AuthCodeConfig--;
  return o;
}

void checkEndUserAuthConfigOauth2AuthCodeConfig(
  api.EndUserAuthConfigOauth2AuthCodeConfig o,
) {
  buildCounterEndUserAuthConfigOauth2AuthCodeConfig++;
  if (buildCounterEndUserAuthConfigOauth2AuthCodeConfig < 3) {
    unittest.expect(o.oauthToken!, unittest.equals('foo'));
  }
  buildCounterEndUserAuthConfigOauth2AuthCodeConfig--;
}

core.int buildCounterEndUserAuthConfigOauth2JwtBearerConfig = 0;
api.EndUserAuthConfigOauth2JwtBearerConfig
buildEndUserAuthConfigOauth2JwtBearerConfig() {
  final o = api.EndUserAuthConfigOauth2JwtBearerConfig();
  buildCounterEndUserAuthConfigOauth2JwtBearerConfig++;
  if (buildCounterEndUserAuthConfigOauth2JwtBearerConfig < 3) {
    o.clientKey = 'foo';
    o.issuer = 'foo';
    o.subject = 'foo';
  }
  buildCounterEndUserAuthConfigOauth2JwtBearerConfig--;
  return o;
}

void checkEndUserAuthConfigOauth2JwtBearerConfig(
  api.EndUserAuthConfigOauth2JwtBearerConfig o,
) {
  buildCounterEndUserAuthConfigOauth2JwtBearerConfig++;
  if (buildCounterEndUserAuthConfigOauth2JwtBearerConfig < 3) {
    unittest.expect(o.clientKey!, unittest.equals('foo'));
    unittest.expect(o.issuer!, unittest.equals('foo'));
    unittest.expect(o.subject!, unittest.equals('foo'));
  }
  buildCounterEndUserAuthConfigOauth2JwtBearerConfig--;
}

core.int buildCounterErrorHandlingSettings = 0;
api.ErrorHandlingSettings buildErrorHandlingSettings() {
  final o = api.ErrorHandlingSettings();
  buildCounterErrorHandlingSettings++;
  if (buildCounterErrorHandlingSettings < 3) {
    o.endSessionConfig = buildErrorHandlingSettingsEndSessionConfig();
    o.errorHandlingStrategy = 'foo';
    o.fallbackResponseConfig =
        buildErrorHandlingSettingsFallbackResponseConfig();
  }
  buildCounterErrorHandlingSettings--;
  return o;
}

void checkErrorHandlingSettings(api.ErrorHandlingSettings o) {
  buildCounterErrorHandlingSettings++;
  if (buildCounterErrorHandlingSettings < 3) {
    checkErrorHandlingSettingsEndSessionConfig(o.endSessionConfig!);
    unittest.expect(o.errorHandlingStrategy!, unittest.equals('foo'));
    checkErrorHandlingSettingsFallbackResponseConfig(o.fallbackResponseConfig!);
  }
  buildCounterErrorHandlingSettings--;
}

core.int buildCounterErrorHandlingSettingsEndSessionConfig = 0;
api.ErrorHandlingSettingsEndSessionConfig
buildErrorHandlingSettingsEndSessionConfig() {
  final o = api.ErrorHandlingSettingsEndSessionConfig();
  buildCounterErrorHandlingSettingsEndSessionConfig++;
  if (buildCounterErrorHandlingSettingsEndSessionConfig < 3) {
    o.escalateSession = true;
  }
  buildCounterErrorHandlingSettingsEndSessionConfig--;
  return o;
}

void checkErrorHandlingSettingsEndSessionConfig(
  api.ErrorHandlingSettingsEndSessionConfig o,
) {
  buildCounterErrorHandlingSettingsEndSessionConfig++;
  if (buildCounterErrorHandlingSettingsEndSessionConfig < 3) {
    unittest.expect(o.escalateSession!, unittest.isTrue);
  }
  buildCounterErrorHandlingSettingsEndSessionConfig--;
}

core.Map<core.String, core.String> buildUnnamed61() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed61(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterErrorHandlingSettingsFallbackResponseConfig = 0;
api.ErrorHandlingSettingsFallbackResponseConfig
buildErrorHandlingSettingsFallbackResponseConfig() {
  final o = api.ErrorHandlingSettingsFallbackResponseConfig();
  buildCounterErrorHandlingSettingsFallbackResponseConfig++;
  if (buildCounterErrorHandlingSettingsFallbackResponseConfig < 3) {
    o.customFallbackMessages = buildUnnamed61();
    o.maxFallbackAttempts = 42;
  }
  buildCounterErrorHandlingSettingsFallbackResponseConfig--;
  return o;
}

void checkErrorHandlingSettingsFallbackResponseConfig(
  api.ErrorHandlingSettingsFallbackResponseConfig o,
) {
  buildCounterErrorHandlingSettingsFallbackResponseConfig++;
  if (buildCounterErrorHandlingSettingsFallbackResponseConfig < 3) {
    checkUnnamed61(o.customFallbackMessages!);
    unittest.expect(o.maxFallbackAttempts!, unittest.equals(42));
  }
  buildCounterErrorHandlingSettingsFallbackResponseConfig--;
}

core.int buildCounterEvaluationMetricsThresholds = 0;
api.EvaluationMetricsThresholds buildEvaluationMetricsThresholds() {
  final o = api.EvaluationMetricsThresholds();
  buildCounterEvaluationMetricsThresholds++;
  if (buildCounterEvaluationMetricsThresholds < 3) {
    o.goldenEvaluationMetricsThresholds =
        buildEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds();
    o.goldenHallucinationMetricBehavior = 'foo';
    o.hallucinationMetricBehavior = 'foo';
    o.scenarioHallucinationMetricBehavior = 'foo';
  }
  buildCounterEvaluationMetricsThresholds--;
  return o;
}

void checkEvaluationMetricsThresholds(api.EvaluationMetricsThresholds o) {
  buildCounterEvaluationMetricsThresholds++;
  if (buildCounterEvaluationMetricsThresholds < 3) {
    checkEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds(
      o.goldenEvaluationMetricsThresholds!,
    );
    unittest.expect(
      o.goldenHallucinationMetricBehavior!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hallucinationMetricBehavior!, unittest.equals('foo'));
    unittest.expect(
      o.scenarioHallucinationMetricBehavior!,
      unittest.equals('foo'),
    );
  }
  buildCounterEvaluationMetricsThresholds--;
}

core.int
buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds = 0;
api.EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds
buildEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds() {
  final o = api.EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds();
  buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds++;
  if (buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds <
      3) {
    o.expectationLevelMetricsThresholds =
        buildEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds();
    o.toolMatchingSettings =
        buildEvaluationMetricsThresholdsToolMatchingSettings();
    o.turnLevelMetricsThresholds =
        buildEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds();
  }
  buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds--;
  return o;
}

void checkEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds(
  api.EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds o,
) {
  buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds++;
  if (buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds <
      3) {
    checkEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds(
      o.expectationLevelMetricsThresholds!,
    );
    checkEvaluationMetricsThresholdsToolMatchingSettings(
      o.toolMatchingSettings!,
    );
    checkEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds(
      o.turnLevelMetricsThresholds!,
    );
  }
  buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds--;
}

core.int
buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds =
    0;
api.EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds
buildEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds() {
  final o =
      api.EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds();
  buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds++;
  if (buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds <
      3) {
    o.toolInvocationParameterCorrectnessThreshold = 42.0;
  }
  buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds--;
  return o;
}

void
checkEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds(
  api.EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds
  o,
) {
  buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds++;
  if (buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds <
      3) {
    unittest.expect(
      o.toolInvocationParameterCorrectnessThreshold!,
      unittest.equals(42.0),
    );
  }
  buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds--;
}

core.int
buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds =
    0;
api.EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds
buildEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds() {
  final o =
      api.EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds();
  buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds++;
  if (buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds <
      3) {
    o.overallToolInvocationCorrectnessThreshold = 42.0;
    o.semanticSimilarityChannel = 'foo';
    o.semanticSimilaritySuccessThreshold = 42;
  }
  buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds--;
  return o;
}

void
checkEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds(
  api.EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds
  o,
) {
  buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds++;
  if (buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds <
      3) {
    unittest.expect(
      o.overallToolInvocationCorrectnessThreshold!,
      unittest.equals(42.0),
    );
    unittest.expect(o.semanticSimilarityChannel!, unittest.equals('foo'));
    unittest.expect(o.semanticSimilaritySuccessThreshold!, unittest.equals(42));
  }
  buildCounterEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds--;
}

core.int buildCounterEvaluationMetricsThresholdsToolMatchingSettings = 0;
api.EvaluationMetricsThresholdsToolMatchingSettings
buildEvaluationMetricsThresholdsToolMatchingSettings() {
  final o = api.EvaluationMetricsThresholdsToolMatchingSettings();
  buildCounterEvaluationMetricsThresholdsToolMatchingSettings++;
  if (buildCounterEvaluationMetricsThresholdsToolMatchingSettings < 3) {
    o.extraToolCallBehavior = 'foo';
  }
  buildCounterEvaluationMetricsThresholdsToolMatchingSettings--;
  return o;
}

void checkEvaluationMetricsThresholdsToolMatchingSettings(
  api.EvaluationMetricsThresholdsToolMatchingSettings o,
) {
  buildCounterEvaluationMetricsThresholdsToolMatchingSettings++;
  if (buildCounterEvaluationMetricsThresholdsToolMatchingSettings < 3) {
    unittest.expect(o.extraToolCallBehavior!, unittest.equals('foo'));
  }
  buildCounterEvaluationMetricsThresholdsToolMatchingSettings--;
}

core.Map<core.String, core.Object?> buildUnnamed62() => {
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

void checkUnnamed62(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterEvent = 0;
api.Event buildEvent() {
  final o = api.Event();
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    o.event = 'foo';
    o.variables = buildUnnamed62();
  }
  buildCounterEvent--;
  return o;
}

void checkEvent(api.Event o) {
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    unittest.expect(o.event!, unittest.equals('foo'));
    checkUnnamed62(o.variables!);
  }
  buildCounterEvent--;
}

core.List<api.Message> buildUnnamed63() => [buildMessage(), buildMessage()];

void checkUnnamed63(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.int buildCounterExample = 0;
api.Example buildExample() {
  final o = api.Example();
  buildCounterExample++;
  if (buildCounterExample < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.entryAgent = 'foo';
    o.etag = 'foo';
    o.invalid = true;
    o.messages = buildUnnamed63();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterExample--;
  return o;
}

void checkExample(api.Example o) {
  buildCounterExample++;
  if (buildCounterExample < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.entryAgent!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.invalid!, unittest.isTrue);
    checkUnnamed63(o.messages!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterExample--;
}

core.Map<core.String, core.Object?> buildUnnamed64() => {
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

void checkUnnamed64(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed65() => {
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

void checkUnnamed65(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed66() => {
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

void checkUnnamed66(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterExecuteToolRequest = 0;
api.ExecuteToolRequest buildExecuteToolRequest() {
  final o = api.ExecuteToolRequest();
  buildCounterExecuteToolRequest++;
  if (buildCounterExecuteToolRequest < 3) {
    o.args = buildUnnamed64();
    o.context = buildUnnamed65();
    o.mockConfig = buildMockConfig();
    o.tool = 'foo';
    o.toolsetTool = buildToolsetTool();
    o.variables = buildUnnamed66();
  }
  buildCounterExecuteToolRequest--;
  return o;
}

void checkExecuteToolRequest(api.ExecuteToolRequest o) {
  buildCounterExecuteToolRequest++;
  if (buildCounterExecuteToolRequest < 3) {
    checkUnnamed64(o.args!);
    checkUnnamed65(o.context!);
    checkMockConfig(o.mockConfig!);
    unittest.expect(o.tool!, unittest.equals('foo'));
    checkToolsetTool(o.toolsetTool!);
    checkUnnamed66(o.variables!);
  }
  buildCounterExecuteToolRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed67() => {
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

void checkUnnamed67(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed68() => {
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

void checkUnnamed68(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted25 = (o['x']!) as core.Map;
  unittest.expect(casted25, unittest.hasLength(3));
  unittest.expect(casted25['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted25['bool'], unittest.equals(true));
  unittest.expect(casted25['string'], unittest.equals('foo'));
  var casted26 = (o['y']!) as core.Map;
  unittest.expect(casted26, unittest.hasLength(3));
  unittest.expect(casted26['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted26['bool'], unittest.equals(true));
  unittest.expect(casted26['string'], unittest.equals('foo'));
}

core.int buildCounterExecuteToolResponse = 0;
api.ExecuteToolResponse buildExecuteToolResponse() {
  final o = api.ExecuteToolResponse();
  buildCounterExecuteToolResponse++;
  if (buildCounterExecuteToolResponse < 3) {
    o.citations = buildCitations();
    o.googleSearchSuggestions = buildGoogleSearchSuggestions();
    o.response = buildUnnamed67();
    o.tool = 'foo';
    o.toolsetTool = buildToolsetTool();
    o.variables = buildUnnamed68();
  }
  buildCounterExecuteToolResponse--;
  return o;
}

void checkExecuteToolResponse(api.ExecuteToolResponse o) {
  buildCounterExecuteToolResponse++;
  if (buildCounterExecuteToolResponse < 3) {
    checkCitations(o.citations!);
    checkGoogleSearchSuggestions(o.googleSearchSuggestions!);
    checkUnnamed67(o.response!);
    unittest.expect(o.tool!, unittest.equals('foo'));
    checkToolsetTool(o.toolsetTool!);
    checkUnnamed68(o.variables!);
  }
  buildCounterExecuteToolResponse--;
}

core.int buildCounterExperimentConfig = 0;
api.ExperimentConfig buildExperimentConfig() {
  final o = api.ExperimentConfig();
  buildCounterExperimentConfig++;
  if (buildCounterExperimentConfig < 3) {
    o.versionRelease = buildExperimentConfigVersionRelease();
  }
  buildCounterExperimentConfig--;
  return o;
}

void checkExperimentConfig(api.ExperimentConfig o) {
  buildCounterExperimentConfig++;
  if (buildCounterExperimentConfig < 3) {
    checkExperimentConfigVersionRelease(o.versionRelease!);
  }
  buildCounterExperimentConfig--;
}

core.List<api.ExperimentConfigVersionReleaseTrafficAllocation>
buildUnnamed69() => [
  buildExperimentConfigVersionReleaseTrafficAllocation(),
  buildExperimentConfigVersionReleaseTrafficAllocation(),
];

void checkUnnamed69(
  core.List<api.ExperimentConfigVersionReleaseTrafficAllocation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkExperimentConfigVersionReleaseTrafficAllocation(o[0]);
  checkExperimentConfigVersionReleaseTrafficAllocation(o[1]);
}

core.int buildCounterExperimentConfigVersionRelease = 0;
api.ExperimentConfigVersionRelease buildExperimentConfigVersionRelease() {
  final o = api.ExperimentConfigVersionRelease();
  buildCounterExperimentConfigVersionRelease++;
  if (buildCounterExperimentConfigVersionRelease < 3) {
    o.state = 'foo';
    o.trafficAllocations = buildUnnamed69();
  }
  buildCounterExperimentConfigVersionRelease--;
  return o;
}

void checkExperimentConfigVersionRelease(api.ExperimentConfigVersionRelease o) {
  buildCounterExperimentConfigVersionRelease++;
  if (buildCounterExperimentConfigVersionRelease < 3) {
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed69(o.trafficAllocations!);
  }
  buildCounterExperimentConfigVersionRelease--;
}

core.int buildCounterExperimentConfigVersionReleaseTrafficAllocation = 0;
api.ExperimentConfigVersionReleaseTrafficAllocation
buildExperimentConfigVersionReleaseTrafficAllocation() {
  final o = api.ExperimentConfigVersionReleaseTrafficAllocation();
  buildCounterExperimentConfigVersionReleaseTrafficAllocation++;
  if (buildCounterExperimentConfigVersionReleaseTrafficAllocation < 3) {
    o.appVersion = 'foo';
    o.id = 'foo';
    o.trafficPercentage = 42;
  }
  buildCounterExperimentConfigVersionReleaseTrafficAllocation--;
  return o;
}

void checkExperimentConfigVersionReleaseTrafficAllocation(
  api.ExperimentConfigVersionReleaseTrafficAllocation o,
) {
  buildCounterExperimentConfigVersionReleaseTrafficAllocation++;
  if (buildCounterExperimentConfigVersionReleaseTrafficAllocation < 3) {
    unittest.expect(o.appVersion!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.trafficPercentage!, unittest.equals(42));
  }
  buildCounterExperimentConfigVersionReleaseTrafficAllocation--;
}

core.int buildCounterExportAppRequest = 0;
api.ExportAppRequest buildExportAppRequest() {
  final o = api.ExportAppRequest();
  buildCounterExportAppRequest++;
  if (buildCounterExportAppRequest < 3) {
    o.appVersion = 'foo';
    o.exportFormat = 'foo';
    o.gcsUri = 'foo';
  }
  buildCounterExportAppRequest--;
  return o;
}

void checkExportAppRequest(api.ExportAppRequest o) {
  buildCounterExportAppRequest++;
  if (buildCounterExportAppRequest < 3) {
    unittest.expect(o.appVersion!, unittest.equals('foo'));
    unittest.expect(o.exportFormat!, unittest.equals('foo'));
    unittest.expect(o.gcsUri!, unittest.equals('foo'));
  }
  buildCounterExportAppRequest--;
}

core.int buildCounterExpressionCondition = 0;
api.ExpressionCondition buildExpressionCondition() {
  final o = api.ExpressionCondition();
  buildCounterExpressionCondition++;
  if (buildCounterExpressionCondition < 3) {
    o.expression = 'foo';
  }
  buildCounterExpressionCondition--;
  return o;
}

void checkExpressionCondition(api.ExpressionCondition o) {
  buildCounterExpressionCondition++;
  if (buildCounterExpressionCondition < 3) {
    unittest.expect(o.expression!, unittest.equals('foo'));
  }
  buildCounterExpressionCondition--;
}

core.int buildCounterFileSearchTool = 0;
api.FileSearchTool buildFileSearchTool() {
  final o = api.FileSearchTool();
  buildCounterFileSearchTool++;
  if (buildCounterFileSearchTool < 3) {
    o.corpusType = 'foo';
    o.description = 'foo';
    o.fileCorpus = 'foo';
    o.name = 'foo';
  }
  buildCounterFileSearchTool--;
  return o;
}

void checkFileSearchTool(api.FileSearchTool o) {
  buildCounterFileSearchTool++;
  if (buildCounterFileSearchTool < 3) {
    unittest.expect(o.corpusType!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.fileCorpus!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterFileSearchTool--;
}

core.int buildCounterGenerateChatTokenRequest = 0;
api.GenerateChatTokenRequest buildGenerateChatTokenRequest() {
  final o = api.GenerateChatTokenRequest();
  buildCounterGenerateChatTokenRequest++;
  if (buildCounterGenerateChatTokenRequest < 3) {
    o.deployment = 'foo';
    o.liveHandoffEnabled = true;
    o.recaptchaToken = 'foo';
  }
  buildCounterGenerateChatTokenRequest--;
  return o;
}

void checkGenerateChatTokenRequest(api.GenerateChatTokenRequest o) {
  buildCounterGenerateChatTokenRequest++;
  if (buildCounterGenerateChatTokenRequest < 3) {
    unittest.expect(o.deployment!, unittest.equals('foo'));
    unittest.expect(o.liveHandoffEnabled!, unittest.isTrue);
    unittest.expect(o.recaptchaToken!, unittest.equals('foo'));
  }
  buildCounterGenerateChatTokenRequest--;
}

core.int buildCounterGenerateChatTokenResponse = 0;
api.GenerateChatTokenResponse buildGenerateChatTokenResponse() {
  final o = api.GenerateChatTokenResponse();
  buildCounterGenerateChatTokenResponse++;
  if (buildCounterGenerateChatTokenResponse < 3) {
    o.chatToken = 'foo';
    o.expireTime = 'foo';
  }
  buildCounterGenerateChatTokenResponse--;
  return o;
}

void checkGenerateChatTokenResponse(api.GenerateChatTokenResponse o) {
  buildCounterGenerateChatTokenResponse++;
  if (buildCounterGenerateChatTokenResponse < 3) {
    unittest.expect(o.chatToken!, unittest.equals('foo'));
    unittest.expect(o.expireTime!, unittest.equals('foo'));
  }
  buildCounterGenerateChatTokenResponse--;
}

core.List<core.String> buildUnnamed70() => ['foo', 'foo'];

void checkUnnamed70(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.WebSearchQuery> buildUnnamed71() => [
  buildWebSearchQuery(),
  buildWebSearchQuery(),
];

void checkUnnamed71(core.List<api.WebSearchQuery> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebSearchQuery(o[0]);
  checkWebSearchQuery(o[1]);
}

core.int buildCounterGoogleSearchSuggestions = 0;
api.GoogleSearchSuggestions buildGoogleSearchSuggestions() {
  final o = api.GoogleSearchSuggestions();
  buildCounterGoogleSearchSuggestions++;
  if (buildCounterGoogleSearchSuggestions < 3) {
    o.htmls = buildUnnamed70();
    o.webSearchQueries = buildUnnamed71();
  }
  buildCounterGoogleSearchSuggestions--;
  return o;
}

void checkGoogleSearchSuggestions(api.GoogleSearchSuggestions o) {
  buildCounterGoogleSearchSuggestions++;
  if (buildCounterGoogleSearchSuggestions < 3) {
    checkUnnamed70(o.htmls!);
    checkUnnamed71(o.webSearchQueries!);
  }
  buildCounterGoogleSearchSuggestions--;
}

core.List<core.String> buildUnnamed72() => ['foo', 'foo'];

void checkUnnamed72(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed73() => ['foo', 'foo'];

void checkUnnamed73(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed74() => ['foo', 'foo'];

void checkUnnamed74(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleSearchTool = 0;
api.GoogleSearchTool buildGoogleSearchTool() {
  final o = api.GoogleSearchTool();
  buildCounterGoogleSearchTool++;
  if (buildCounterGoogleSearchTool < 3) {
    o.contextUrls = buildUnnamed72();
    o.description = 'foo';
    o.excludeDomains = buildUnnamed73();
    o.name = 'foo';
    o.preferredDomains = buildUnnamed74();
    o.promptConfig = buildGoogleSearchToolPromptConfig();
  }
  buildCounterGoogleSearchTool--;
  return o;
}

void checkGoogleSearchTool(api.GoogleSearchTool o) {
  buildCounterGoogleSearchTool++;
  if (buildCounterGoogleSearchTool < 3) {
    checkUnnamed72(o.contextUrls!);
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed73(o.excludeDomains!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed74(o.preferredDomains!);
    checkGoogleSearchToolPromptConfig(o.promptConfig!);
  }
  buildCounterGoogleSearchTool--;
}

core.int buildCounterGoogleSearchToolPromptConfig = 0;
api.GoogleSearchToolPromptConfig buildGoogleSearchToolPromptConfig() {
  final o = api.GoogleSearchToolPromptConfig();
  buildCounterGoogleSearchToolPromptConfig++;
  if (buildCounterGoogleSearchToolPromptConfig < 3) {
    o.textPrompt = 'foo';
    o.voicePrompt = 'foo';
  }
  buildCounterGoogleSearchToolPromptConfig--;
  return o;
}

void checkGoogleSearchToolPromptConfig(api.GoogleSearchToolPromptConfig o) {
  buildCounterGoogleSearchToolPromptConfig++;
  if (buildCounterGoogleSearchToolPromptConfig < 3) {
    unittest.expect(o.textPrompt!, unittest.equals('foo'));
    unittest.expect(o.voicePrompt!, unittest.equals('foo'));
  }
  buildCounterGoogleSearchToolPromptConfig--;
}

core.int buildCounterGuardrail = 0;
api.Guardrail buildGuardrail() {
  final o = api.Guardrail();
  buildCounterGuardrail++;
  if (buildCounterGuardrail < 3) {
    o.action = buildTriggerAction();
    o.codeCallback = buildGuardrailCodeCallback();
    o.contentFilter = buildGuardrailContentFilter();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.enabled = true;
    o.etag = 'foo';
    o.llmPolicy = buildGuardrailLlmPolicy();
    o.llmPromptSecurity = buildGuardrailLlmPromptSecurity();
    o.modelSafety = buildGuardrailModelSafety();
    o.name = 'foo';
    o.supervisor = buildGuardrailSupervisor();
    o.updateTime = 'foo';
  }
  buildCounterGuardrail--;
  return o;
}

void checkGuardrail(api.Guardrail o) {
  buildCounterGuardrail++;
  if (buildCounterGuardrail < 3) {
    checkTriggerAction(o.action!);
    checkGuardrailCodeCallback(o.codeCallback!);
    checkGuardrailContentFilter(o.contentFilter!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkGuardrailLlmPolicy(o.llmPolicy!);
    checkGuardrailLlmPromptSecurity(o.llmPromptSecurity!);
    checkGuardrailModelSafety(o.modelSafety!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGuardrailSupervisor(o.supervisor!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGuardrail--;
}

core.int buildCounterGuardrailCodeCallback = 0;
api.GuardrailCodeCallback buildGuardrailCodeCallback() {
  final o = api.GuardrailCodeCallback();
  buildCounterGuardrailCodeCallback++;
  if (buildCounterGuardrailCodeCallback < 3) {
    o.afterAgentCallback = buildCallback();
    o.afterModelCallback = buildCallback();
    o.beforeAgentCallback = buildCallback();
    o.beforeModelCallback = buildCallback();
  }
  buildCounterGuardrailCodeCallback--;
  return o;
}

void checkGuardrailCodeCallback(api.GuardrailCodeCallback o) {
  buildCounterGuardrailCodeCallback++;
  if (buildCounterGuardrailCodeCallback < 3) {
    checkCallback(o.afterAgentCallback!);
    checkCallback(o.afterModelCallback!);
    checkCallback(o.beforeAgentCallback!);
    checkCallback(o.beforeModelCallback!);
  }
  buildCounterGuardrailCodeCallback--;
}

core.List<core.String> buildUnnamed75() => ['foo', 'foo'];

void checkUnnamed75(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed76() => ['foo', 'foo'];

void checkUnnamed76(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed77() => ['foo', 'foo'];

void checkUnnamed77(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGuardrailContentFilter = 0;
api.GuardrailContentFilter buildGuardrailContentFilter() {
  final o = api.GuardrailContentFilter();
  buildCounterGuardrailContentFilter++;
  if (buildCounterGuardrailContentFilter < 3) {
    o.bannedContents = buildUnnamed75();
    o.bannedContentsInAgentResponse = buildUnnamed76();
    o.bannedContentsInUserInput = buildUnnamed77();
    o.disregardDiacritics = true;
    o.matchType = 'foo';
  }
  buildCounterGuardrailContentFilter--;
  return o;
}

void checkGuardrailContentFilter(api.GuardrailContentFilter o) {
  buildCounterGuardrailContentFilter++;
  if (buildCounterGuardrailContentFilter < 3) {
    checkUnnamed75(o.bannedContents!);
    checkUnnamed76(o.bannedContentsInAgentResponse!);
    checkUnnamed77(o.bannedContentsInUserInput!);
    unittest.expect(o.disregardDiacritics!, unittest.isTrue);
    unittest.expect(o.matchType!, unittest.equals('foo'));
  }
  buildCounterGuardrailContentFilter--;
}

core.int buildCounterGuardrailLlmPolicy = 0;
api.GuardrailLlmPolicy buildGuardrailLlmPolicy() {
  final o = api.GuardrailLlmPolicy();
  buildCounterGuardrailLlmPolicy++;
  if (buildCounterGuardrailLlmPolicy < 3) {
    o.allowShortUtterance = true;
    o.failOpen = true;
    o.maxConversationMessages = 42;
    o.modelSettings = buildModelSettings();
    o.policyScope = 'foo';
    o.prompt = 'foo';
  }
  buildCounterGuardrailLlmPolicy--;
  return o;
}

void checkGuardrailLlmPolicy(api.GuardrailLlmPolicy o) {
  buildCounterGuardrailLlmPolicy++;
  if (buildCounterGuardrailLlmPolicy < 3) {
    unittest.expect(o.allowShortUtterance!, unittest.isTrue);
    unittest.expect(o.failOpen!, unittest.isTrue);
    unittest.expect(o.maxConversationMessages!, unittest.equals(42));
    checkModelSettings(o.modelSettings!);
    unittest.expect(o.policyScope!, unittest.equals('foo'));
    unittest.expect(o.prompt!, unittest.equals('foo'));
  }
  buildCounterGuardrailLlmPolicy--;
}

core.int buildCounterGuardrailLlmPromptSecurity = 0;
api.GuardrailLlmPromptSecurity buildGuardrailLlmPromptSecurity() {
  final o = api.GuardrailLlmPromptSecurity();
  buildCounterGuardrailLlmPromptSecurity++;
  if (buildCounterGuardrailLlmPromptSecurity < 3) {
    o.customPolicy = buildGuardrailLlmPolicy();
    o.defaultSettings =
        buildGuardrailLlmPromptSecurityDefaultSecuritySettings();
    o.failOpen = true;
  }
  buildCounterGuardrailLlmPromptSecurity--;
  return o;
}

void checkGuardrailLlmPromptSecurity(api.GuardrailLlmPromptSecurity o) {
  buildCounterGuardrailLlmPromptSecurity++;
  if (buildCounterGuardrailLlmPromptSecurity < 3) {
    checkGuardrailLlmPolicy(o.customPolicy!);
    checkGuardrailLlmPromptSecurityDefaultSecuritySettings(o.defaultSettings!);
    unittest.expect(o.failOpen!, unittest.isTrue);
  }
  buildCounterGuardrailLlmPromptSecurity--;
}

core.int buildCounterGuardrailLlmPromptSecurityDefaultSecuritySettings = 0;
api.GuardrailLlmPromptSecurityDefaultSecuritySettings
buildGuardrailLlmPromptSecurityDefaultSecuritySettings() {
  final o = api.GuardrailLlmPromptSecurityDefaultSecuritySettings();
  buildCounterGuardrailLlmPromptSecurityDefaultSecuritySettings++;
  if (buildCounterGuardrailLlmPromptSecurityDefaultSecuritySettings < 3) {
    o.defaultPromptTemplate = 'foo';
  }
  buildCounterGuardrailLlmPromptSecurityDefaultSecuritySettings--;
  return o;
}

void checkGuardrailLlmPromptSecurityDefaultSecuritySettings(
  api.GuardrailLlmPromptSecurityDefaultSecuritySettings o,
) {
  buildCounterGuardrailLlmPromptSecurityDefaultSecuritySettings++;
  if (buildCounterGuardrailLlmPromptSecurityDefaultSecuritySettings < 3) {
    unittest.expect(o.defaultPromptTemplate!, unittest.equals('foo'));
  }
  buildCounterGuardrailLlmPromptSecurityDefaultSecuritySettings--;
}

core.List<api.GuardrailModelSafetySafetySetting> buildUnnamed78() => [
  buildGuardrailModelSafetySafetySetting(),
  buildGuardrailModelSafetySafetySetting(),
];

void checkUnnamed78(core.List<api.GuardrailModelSafetySafetySetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGuardrailModelSafetySafetySetting(o[0]);
  checkGuardrailModelSafetySafetySetting(o[1]);
}

core.int buildCounterGuardrailModelSafety = 0;
api.GuardrailModelSafety buildGuardrailModelSafety() {
  final o = api.GuardrailModelSafety();
  buildCounterGuardrailModelSafety++;
  if (buildCounterGuardrailModelSafety < 3) {
    o.safetySettings = buildUnnamed78();
  }
  buildCounterGuardrailModelSafety--;
  return o;
}

void checkGuardrailModelSafety(api.GuardrailModelSafety o) {
  buildCounterGuardrailModelSafety++;
  if (buildCounterGuardrailModelSafety < 3) {
    checkUnnamed78(o.safetySettings!);
  }
  buildCounterGuardrailModelSafety--;
}

core.int buildCounterGuardrailModelSafetySafetySetting = 0;
api.GuardrailModelSafetySafetySetting buildGuardrailModelSafetySafetySetting() {
  final o = api.GuardrailModelSafetySafetySetting();
  buildCounterGuardrailModelSafetySafetySetting++;
  if (buildCounterGuardrailModelSafetySafetySetting < 3) {
    o.category = 'foo';
    o.threshold = 'foo';
  }
  buildCounterGuardrailModelSafetySafetySetting--;
  return o;
}

void checkGuardrailModelSafetySafetySetting(
  api.GuardrailModelSafetySafetySetting o,
) {
  buildCounterGuardrailModelSafetySafetySetting++;
  if (buildCounterGuardrailModelSafetySafetySetting < 3) {
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.threshold!, unittest.equals('foo'));
  }
  buildCounterGuardrailModelSafetySafetySetting--;
}

core.int buildCounterGuardrailSupervisor = 0;
api.GuardrailSupervisor buildGuardrailSupervisor() {
  final o = api.GuardrailSupervisor();
  buildCounterGuardrailSupervisor++;
  if (buildCounterGuardrailSupervisor < 3) {
    o.detectionMode = 'foo';
    o.type = 'foo';
  }
  buildCounterGuardrailSupervisor--;
  return o;
}

void checkGuardrailSupervisor(api.GuardrailSupervisor o) {
  buildCounterGuardrailSupervisor++;
  if (buildCounterGuardrailSupervisor < 3) {
    unittest.expect(o.detectionMode!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGuardrailSupervisor--;
}

core.int buildCounterImage = 0;
api.Image buildImage() {
  final o = api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.altText = 'foo';
    o.data = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterImage--;
  return o;
}

void checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(o.altText!, unittest.equals('foo'));
    unittest.expect(o.data!, unittest.equals('foo'));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
  }
  buildCounterImage--;
}

core.int buildCounterImportAppRequest = 0;
api.ImportAppRequest buildImportAppRequest() {
  final o = api.ImportAppRequest();
  buildCounterImportAppRequest++;
  if (buildCounterImportAppRequest < 3) {
    o.appContent = 'foo';
    o.appId = 'foo';
    o.displayName = 'foo';
    o.gcsUri = 'foo';
    o.ignoreAppLock = true;
    o.importOptions = buildImportAppRequestImportOptions();
    o.jsonPatchContent = 'foo';
    o.jsonPatchGcsUri = 'foo';
  }
  buildCounterImportAppRequest--;
  return o;
}

void checkImportAppRequest(api.ImportAppRequest o) {
  buildCounterImportAppRequest++;
  if (buildCounterImportAppRequest < 3) {
    unittest.expect(o.appContent!, unittest.equals('foo'));
    unittest.expect(o.appId!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.gcsUri!, unittest.equals('foo'));
    unittest.expect(o.ignoreAppLock!, unittest.isTrue);
    checkImportAppRequestImportOptions(o.importOptions!);
    unittest.expect(o.jsonPatchContent!, unittest.equals('foo'));
    unittest.expect(o.jsonPatchGcsUri!, unittest.equals('foo'));
  }
  buildCounterImportAppRequest--;
}

core.int buildCounterImportAppRequestImportOptions = 0;
api.ImportAppRequestImportOptions buildImportAppRequestImportOptions() {
  final o = api.ImportAppRequestImportOptions();
  buildCounterImportAppRequestImportOptions++;
  if (buildCounterImportAppRequestImportOptions < 3) {
    o.conflictResolutionStrategy = 'foo';
    o.validateOnly = true;
  }
  buildCounterImportAppRequestImportOptions--;
  return o;
}

void checkImportAppRequestImportOptions(api.ImportAppRequestImportOptions o) {
  buildCounterImportAppRequestImportOptions++;
  if (buildCounterImportAppRequestImportOptions < 3) {
    unittest.expect(o.conflictResolutionStrategy!, unittest.equals('foo'));
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterImportAppRequestImportOptions--;
}

core.int buildCounterInputAudioConfig = 0;
api.InputAudioConfig buildInputAudioConfig() {
  final o = api.InputAudioConfig();
  buildCounterInputAudioConfig++;
  if (buildCounterInputAudioConfig < 3) {
    o.audioEncoding = 'foo';
    o.noiseSuppressionLevel = 'foo';
    o.sampleRateHertz = 42;
  }
  buildCounterInputAudioConfig--;
  return o;
}

void checkInputAudioConfig(api.InputAudioConfig o) {
  buildCounterInputAudioConfig++;
  if (buildCounterInputAudioConfig < 3) {
    unittest.expect(o.audioEncoding!, unittest.equals('foo'));
    unittest.expect(o.noiseSuppressionLevel!, unittest.equals('foo'));
    unittest.expect(o.sampleRateHertz!, unittest.equals(42));
  }
  buildCounterInputAudioConfig--;
}

core.int buildCounterInstagramCredentials = 0;
api.InstagramCredentials buildInstagramCredentials() {
  final o = api.InstagramCredentials();
  buildCounterInstagramCredentials++;
  if (buildCounterInstagramCredentials < 3) {
    o.authCode = 'foo';
    o.conversationProfileId = 'foo';
  }
  buildCounterInstagramCredentials--;
  return o;
}

void checkInstagramCredentials(api.InstagramCredentials o) {
  buildCounterInstagramCredentials++;
  if (buildCounterInstagramCredentials < 3) {
    unittest.expect(o.authCode!, unittest.equals('foo'));
    unittest.expect(o.conversationProfileId!, unittest.equals('foo'));
  }
  buildCounterInstagramCredentials--;
}

core.List<core.String> buildUnnamed79() => ['foo', 'foo'];

void checkUnnamed79(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLanguageSettings = 0;
api.LanguageSettings buildLanguageSettings() {
  final o = api.LanguageSettings();
  buildCounterLanguageSettings++;
  if (buildCounterLanguageSettings < 3) {
    o.defaultLanguageCode = 'foo';
    o.enableMultilingualSupport = true;
    o.fallbackAction = 'foo';
    o.supportedLanguageCodes = buildUnnamed79();
  }
  buildCounterLanguageSettings--;
  return o;
}

void checkLanguageSettings(api.LanguageSettings o) {
  buildCounterLanguageSettings++;
  if (buildCounterLanguageSettings < 3) {
    unittest.expect(o.defaultLanguageCode!, unittest.equals('foo'));
    unittest.expect(o.enableMultilingualSupport!, unittest.isTrue);
    unittest.expect(o.fallbackAction!, unittest.equals('foo'));
    checkUnnamed79(o.supportedLanguageCodes!);
  }
  buildCounterLanguageSettings--;
}

core.int buildCounterLfA2aV1APIKeySecurityScheme = 0;
api.LfA2aV1APIKeySecurityScheme buildLfA2aV1APIKeySecurityScheme() {
  final o = api.LfA2aV1APIKeySecurityScheme();
  buildCounterLfA2aV1APIKeySecurityScheme++;
  if (buildCounterLfA2aV1APIKeySecurityScheme < 3) {
    o.description = 'foo';
    o.location = 'foo';
    o.name = 'foo';
  }
  buildCounterLfA2aV1APIKeySecurityScheme--;
  return o;
}

void checkLfA2aV1APIKeySecurityScheme(api.LfA2aV1APIKeySecurityScheme o) {
  buildCounterLfA2aV1APIKeySecurityScheme++;
  if (buildCounterLfA2aV1APIKeySecurityScheme < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1APIKeySecurityScheme--;
}

core.List<api.LfA2aV1AgentExtension> buildUnnamed80() => [
  buildLfA2aV1AgentExtension(),
  buildLfA2aV1AgentExtension(),
];

void checkUnnamed80(core.List<api.LfA2aV1AgentExtension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLfA2aV1AgentExtension(o[0]);
  checkLfA2aV1AgentExtension(o[1]);
}

core.int buildCounterLfA2aV1AgentCapabilities = 0;
api.LfA2aV1AgentCapabilities buildLfA2aV1AgentCapabilities() {
  final o = api.LfA2aV1AgentCapabilities();
  buildCounterLfA2aV1AgentCapabilities++;
  if (buildCounterLfA2aV1AgentCapabilities < 3) {
    o.extendedAgentCard = true;
    o.extensions = buildUnnamed80();
    o.pushNotifications = true;
    o.streaming = true;
  }
  buildCounterLfA2aV1AgentCapabilities--;
  return o;
}

void checkLfA2aV1AgentCapabilities(api.LfA2aV1AgentCapabilities o) {
  buildCounterLfA2aV1AgentCapabilities++;
  if (buildCounterLfA2aV1AgentCapabilities < 3) {
    unittest.expect(o.extendedAgentCard!, unittest.isTrue);
    checkUnnamed80(o.extensions!);
    unittest.expect(o.pushNotifications!, unittest.isTrue);
    unittest.expect(o.streaming!, unittest.isTrue);
  }
  buildCounterLfA2aV1AgentCapabilities--;
}

core.List<core.String> buildUnnamed81() => ['foo', 'foo'];

void checkUnnamed81(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed82() => ['foo', 'foo'];

void checkUnnamed82(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.LfA2aV1SecurityRequirement> buildUnnamed83() => [
  buildLfA2aV1SecurityRequirement(),
  buildLfA2aV1SecurityRequirement(),
];

void checkUnnamed83(core.List<api.LfA2aV1SecurityRequirement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLfA2aV1SecurityRequirement(o[0]);
  checkLfA2aV1SecurityRequirement(o[1]);
}

core.Map<core.String, api.LfA2aV1SecurityScheme> buildUnnamed84() => {
  'x': buildLfA2aV1SecurityScheme(),
  'y': buildLfA2aV1SecurityScheme(),
};

void checkUnnamed84(core.Map<core.String, api.LfA2aV1SecurityScheme> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLfA2aV1SecurityScheme(o['x']!);
  checkLfA2aV1SecurityScheme(o['y']!);
}

core.List<api.LfA2aV1AgentCardSignature> buildUnnamed85() => [
  buildLfA2aV1AgentCardSignature(),
  buildLfA2aV1AgentCardSignature(),
];

void checkUnnamed85(core.List<api.LfA2aV1AgentCardSignature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLfA2aV1AgentCardSignature(o[0]);
  checkLfA2aV1AgentCardSignature(o[1]);
}

core.List<api.LfA2aV1AgentSkill> buildUnnamed86() => [
  buildLfA2aV1AgentSkill(),
  buildLfA2aV1AgentSkill(),
];

void checkUnnamed86(core.List<api.LfA2aV1AgentSkill> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLfA2aV1AgentSkill(o[0]);
  checkLfA2aV1AgentSkill(o[1]);
}

core.List<api.LfA2aV1AgentInterface> buildUnnamed87() => [
  buildLfA2aV1AgentInterface(),
  buildLfA2aV1AgentInterface(),
];

void checkUnnamed87(core.List<api.LfA2aV1AgentInterface> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLfA2aV1AgentInterface(o[0]);
  checkLfA2aV1AgentInterface(o[1]);
}

core.int buildCounterLfA2aV1AgentCard = 0;
api.LfA2aV1AgentCard buildLfA2aV1AgentCard() {
  final o = api.LfA2aV1AgentCard();
  buildCounterLfA2aV1AgentCard++;
  if (buildCounterLfA2aV1AgentCard < 3) {
    o.capabilities = buildLfA2aV1AgentCapabilities();
    o.defaultInputModes = buildUnnamed81();
    o.defaultOutputModes = buildUnnamed82();
    o.description = 'foo';
    o.documentationUrl = 'foo';
    o.iconUrl = 'foo';
    o.name = 'foo';
    o.provider = buildLfA2aV1AgentProvider();
    o.securityRequirements = buildUnnamed83();
    o.securitySchemes = buildUnnamed84();
    o.signatures = buildUnnamed85();
    o.skills = buildUnnamed86();
    o.supportedInterfaces = buildUnnamed87();
    o.version = 'foo';
  }
  buildCounterLfA2aV1AgentCard--;
  return o;
}

void checkLfA2aV1AgentCard(api.LfA2aV1AgentCard o) {
  buildCounterLfA2aV1AgentCard++;
  if (buildCounterLfA2aV1AgentCard < 3) {
    checkLfA2aV1AgentCapabilities(o.capabilities!);
    checkUnnamed81(o.defaultInputModes!);
    checkUnnamed82(o.defaultOutputModes!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.documentationUrl!, unittest.equals('foo'));
    unittest.expect(o.iconUrl!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkLfA2aV1AgentProvider(o.provider!);
    checkUnnamed83(o.securityRequirements!);
    checkUnnamed84(o.securitySchemes!);
    checkUnnamed85(o.signatures!);
    checkUnnamed86(o.skills!);
    checkUnnamed87(o.supportedInterfaces!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1AgentCard--;
}

core.Map<core.String, core.Object?> buildUnnamed88() => {
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

void checkUnnamed88(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted27 = (o['x']!) as core.Map;
  unittest.expect(casted27, unittest.hasLength(3));
  unittest.expect(casted27['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted27['bool'], unittest.equals(true));
  unittest.expect(casted27['string'], unittest.equals('foo'));
  var casted28 = (o['y']!) as core.Map;
  unittest.expect(casted28, unittest.hasLength(3));
  unittest.expect(casted28['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted28['bool'], unittest.equals(true));
  unittest.expect(casted28['string'], unittest.equals('foo'));
}

core.int buildCounterLfA2aV1AgentCardSignature = 0;
api.LfA2aV1AgentCardSignature buildLfA2aV1AgentCardSignature() {
  final o = api.LfA2aV1AgentCardSignature();
  buildCounterLfA2aV1AgentCardSignature++;
  if (buildCounterLfA2aV1AgentCardSignature < 3) {
    o.header = buildUnnamed88();
    o.protected = 'foo';
    o.signature = 'foo';
  }
  buildCounterLfA2aV1AgentCardSignature--;
  return o;
}

void checkLfA2aV1AgentCardSignature(api.LfA2aV1AgentCardSignature o) {
  buildCounterLfA2aV1AgentCardSignature++;
  if (buildCounterLfA2aV1AgentCardSignature < 3) {
    checkUnnamed88(o.header!);
    unittest.expect(o.protected!, unittest.equals('foo'));
    unittest.expect(o.signature!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1AgentCardSignature--;
}

core.Map<core.String, core.Object?> buildUnnamed89() => {
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

void checkUnnamed89(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted29 = (o['x']!) as core.Map;
  unittest.expect(casted29, unittest.hasLength(3));
  unittest.expect(casted29['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted29['bool'], unittest.equals(true));
  unittest.expect(casted29['string'], unittest.equals('foo'));
  var casted30 = (o['y']!) as core.Map;
  unittest.expect(casted30, unittest.hasLength(3));
  unittest.expect(casted30['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted30['bool'], unittest.equals(true));
  unittest.expect(casted30['string'], unittest.equals('foo'));
}

core.int buildCounterLfA2aV1AgentExtension = 0;
api.LfA2aV1AgentExtension buildLfA2aV1AgentExtension() {
  final o = api.LfA2aV1AgentExtension();
  buildCounterLfA2aV1AgentExtension++;
  if (buildCounterLfA2aV1AgentExtension < 3) {
    o.description = 'foo';
    o.params = buildUnnamed89();
    o.required = true;
    o.uri = 'foo';
  }
  buildCounterLfA2aV1AgentExtension--;
  return o;
}

void checkLfA2aV1AgentExtension(api.LfA2aV1AgentExtension o) {
  buildCounterLfA2aV1AgentExtension++;
  if (buildCounterLfA2aV1AgentExtension < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed89(o.params!);
    unittest.expect(o.required!, unittest.isTrue);
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1AgentExtension--;
}

core.int buildCounterLfA2aV1AgentInterface = 0;
api.LfA2aV1AgentInterface buildLfA2aV1AgentInterface() {
  final o = api.LfA2aV1AgentInterface();
  buildCounterLfA2aV1AgentInterface++;
  if (buildCounterLfA2aV1AgentInterface < 3) {
    o.protocolBinding = 'foo';
    o.protocolVersion = 'foo';
    o.tenant = 'foo';
    o.url = 'foo';
  }
  buildCounterLfA2aV1AgentInterface--;
  return o;
}

void checkLfA2aV1AgentInterface(api.LfA2aV1AgentInterface o) {
  buildCounterLfA2aV1AgentInterface++;
  if (buildCounterLfA2aV1AgentInterface < 3) {
    unittest.expect(o.protocolBinding!, unittest.equals('foo'));
    unittest.expect(o.protocolVersion!, unittest.equals('foo'));
    unittest.expect(o.tenant!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1AgentInterface--;
}

core.int buildCounterLfA2aV1AgentProvider = 0;
api.LfA2aV1AgentProvider buildLfA2aV1AgentProvider() {
  final o = api.LfA2aV1AgentProvider();
  buildCounterLfA2aV1AgentProvider++;
  if (buildCounterLfA2aV1AgentProvider < 3) {
    o.organization = 'foo';
    o.url = 'foo';
  }
  buildCounterLfA2aV1AgentProvider--;
  return o;
}

void checkLfA2aV1AgentProvider(api.LfA2aV1AgentProvider o) {
  buildCounterLfA2aV1AgentProvider++;
  if (buildCounterLfA2aV1AgentProvider < 3) {
    unittest.expect(o.organization!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1AgentProvider--;
}

core.List<core.String> buildUnnamed90() => ['foo', 'foo'];

void checkUnnamed90(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed91() => ['foo', 'foo'];

void checkUnnamed91(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed92() => ['foo', 'foo'];

void checkUnnamed92(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.LfA2aV1SecurityRequirement> buildUnnamed93() => [
  buildLfA2aV1SecurityRequirement(),
  buildLfA2aV1SecurityRequirement(),
];

void checkUnnamed93(core.List<api.LfA2aV1SecurityRequirement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLfA2aV1SecurityRequirement(o[0]);
  checkLfA2aV1SecurityRequirement(o[1]);
}

core.List<core.String> buildUnnamed94() => ['foo', 'foo'];

void checkUnnamed94(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLfA2aV1AgentSkill = 0;
api.LfA2aV1AgentSkill buildLfA2aV1AgentSkill() {
  final o = api.LfA2aV1AgentSkill();
  buildCounterLfA2aV1AgentSkill++;
  if (buildCounterLfA2aV1AgentSkill < 3) {
    o.description = 'foo';
    o.examples = buildUnnamed90();
    o.id = 'foo';
    o.inputModes = buildUnnamed91();
    o.name = 'foo';
    o.outputModes = buildUnnamed92();
    o.securityRequirements = buildUnnamed93();
    o.tags = buildUnnamed94();
  }
  buildCounterLfA2aV1AgentSkill--;
  return o;
}

void checkLfA2aV1AgentSkill(api.LfA2aV1AgentSkill o) {
  buildCounterLfA2aV1AgentSkill++;
  if (buildCounterLfA2aV1AgentSkill < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed90(o.examples!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed91(o.inputModes!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed92(o.outputModes!);
    checkUnnamed93(o.securityRequirements!);
    checkUnnamed94(o.tags!);
  }
  buildCounterLfA2aV1AgentSkill--;
}

core.List<core.String> buildUnnamed95() => ['foo', 'foo'];

void checkUnnamed95(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed96() => {
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

void checkUnnamed96(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted31 = (o['x']!) as core.Map;
  unittest.expect(casted31, unittest.hasLength(3));
  unittest.expect(casted31['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted31['bool'], unittest.equals(true));
  unittest.expect(casted31['string'], unittest.equals('foo'));
  var casted32 = (o['y']!) as core.Map;
  unittest.expect(casted32, unittest.hasLength(3));
  unittest.expect(casted32['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted32['bool'], unittest.equals(true));
  unittest.expect(casted32['string'], unittest.equals('foo'));
}

core.List<api.LfA2aV1Part> buildUnnamed97() => [
  buildLfA2aV1Part(),
  buildLfA2aV1Part(),
];

void checkUnnamed97(core.List<api.LfA2aV1Part> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLfA2aV1Part(o[0]);
  checkLfA2aV1Part(o[1]);
}

core.int buildCounterLfA2aV1Artifact = 0;
api.LfA2aV1Artifact buildLfA2aV1Artifact() {
  final o = api.LfA2aV1Artifact();
  buildCounterLfA2aV1Artifact++;
  if (buildCounterLfA2aV1Artifact < 3) {
    o.artifactId = 'foo';
    o.description = 'foo';
    o.extensions = buildUnnamed95();
    o.metadata = buildUnnamed96();
    o.name = 'foo';
    o.parts = buildUnnamed97();
  }
  buildCounterLfA2aV1Artifact--;
  return o;
}

void checkLfA2aV1Artifact(api.LfA2aV1Artifact o) {
  buildCounterLfA2aV1Artifact++;
  if (buildCounterLfA2aV1Artifact < 3) {
    unittest.expect(o.artifactId!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed95(o.extensions!);
    checkUnnamed96(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed97(o.parts!);
  }
  buildCounterLfA2aV1Artifact--;
}

core.int buildCounterLfA2aV1AuthenticationInfo = 0;
api.LfA2aV1AuthenticationInfo buildLfA2aV1AuthenticationInfo() {
  final o = api.LfA2aV1AuthenticationInfo();
  buildCounterLfA2aV1AuthenticationInfo++;
  if (buildCounterLfA2aV1AuthenticationInfo < 3) {
    o.credentials = 'foo';
    o.scheme = 'foo';
  }
  buildCounterLfA2aV1AuthenticationInfo--;
  return o;
}

void checkLfA2aV1AuthenticationInfo(api.LfA2aV1AuthenticationInfo o) {
  buildCounterLfA2aV1AuthenticationInfo++;
  if (buildCounterLfA2aV1AuthenticationInfo < 3) {
    unittest.expect(o.credentials!, unittest.equals('foo'));
    unittest.expect(o.scheme!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1AuthenticationInfo--;
}

core.Map<core.String, core.String> buildUnnamed98() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed98(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterLfA2aV1AuthorizationCodeOAuthFlow = 0;
api.LfA2aV1AuthorizationCodeOAuthFlow buildLfA2aV1AuthorizationCodeOAuthFlow() {
  final o = api.LfA2aV1AuthorizationCodeOAuthFlow();
  buildCounterLfA2aV1AuthorizationCodeOAuthFlow++;
  if (buildCounterLfA2aV1AuthorizationCodeOAuthFlow < 3) {
    o.authorizationUrl = 'foo';
    o.pkceRequired = true;
    o.refreshUrl = 'foo';
    o.scopes = buildUnnamed98();
    o.tokenUrl = 'foo';
  }
  buildCounterLfA2aV1AuthorizationCodeOAuthFlow--;
  return o;
}

void checkLfA2aV1AuthorizationCodeOAuthFlow(
  api.LfA2aV1AuthorizationCodeOAuthFlow o,
) {
  buildCounterLfA2aV1AuthorizationCodeOAuthFlow++;
  if (buildCounterLfA2aV1AuthorizationCodeOAuthFlow < 3) {
    unittest.expect(o.authorizationUrl!, unittest.equals('foo'));
    unittest.expect(o.pkceRequired!, unittest.isTrue);
    unittest.expect(o.refreshUrl!, unittest.equals('foo'));
    checkUnnamed98(o.scopes!);
    unittest.expect(o.tokenUrl!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1AuthorizationCodeOAuthFlow--;
}

core.Map<core.String, core.String> buildUnnamed99() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed99(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterLfA2aV1ClientCredentialsOAuthFlow = 0;
api.LfA2aV1ClientCredentialsOAuthFlow buildLfA2aV1ClientCredentialsOAuthFlow() {
  final o = api.LfA2aV1ClientCredentialsOAuthFlow();
  buildCounterLfA2aV1ClientCredentialsOAuthFlow++;
  if (buildCounterLfA2aV1ClientCredentialsOAuthFlow < 3) {
    o.refreshUrl = 'foo';
    o.scopes = buildUnnamed99();
    o.tokenUrl = 'foo';
  }
  buildCounterLfA2aV1ClientCredentialsOAuthFlow--;
  return o;
}

void checkLfA2aV1ClientCredentialsOAuthFlow(
  api.LfA2aV1ClientCredentialsOAuthFlow o,
) {
  buildCounterLfA2aV1ClientCredentialsOAuthFlow++;
  if (buildCounterLfA2aV1ClientCredentialsOAuthFlow < 3) {
    unittest.expect(o.refreshUrl!, unittest.equals('foo'));
    checkUnnamed99(o.scopes!);
    unittest.expect(o.tokenUrl!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1ClientCredentialsOAuthFlow--;
}

core.Map<core.String, core.String> buildUnnamed100() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed100(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterLfA2aV1DeviceCodeOAuthFlow = 0;
api.LfA2aV1DeviceCodeOAuthFlow buildLfA2aV1DeviceCodeOAuthFlow() {
  final o = api.LfA2aV1DeviceCodeOAuthFlow();
  buildCounterLfA2aV1DeviceCodeOAuthFlow++;
  if (buildCounterLfA2aV1DeviceCodeOAuthFlow < 3) {
    o.deviceAuthorizationUrl = 'foo';
    o.refreshUrl = 'foo';
    o.scopes = buildUnnamed100();
    o.tokenUrl = 'foo';
  }
  buildCounterLfA2aV1DeviceCodeOAuthFlow--;
  return o;
}

void checkLfA2aV1DeviceCodeOAuthFlow(api.LfA2aV1DeviceCodeOAuthFlow o) {
  buildCounterLfA2aV1DeviceCodeOAuthFlow++;
  if (buildCounterLfA2aV1DeviceCodeOAuthFlow < 3) {
    unittest.expect(o.deviceAuthorizationUrl!, unittest.equals('foo'));
    unittest.expect(o.refreshUrl!, unittest.equals('foo'));
    checkUnnamed100(o.scopes!);
    unittest.expect(o.tokenUrl!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1DeviceCodeOAuthFlow--;
}

core.int buildCounterLfA2aV1HTTPAuthSecurityScheme = 0;
api.LfA2aV1HTTPAuthSecurityScheme buildLfA2aV1HTTPAuthSecurityScheme() {
  final o = api.LfA2aV1HTTPAuthSecurityScheme();
  buildCounterLfA2aV1HTTPAuthSecurityScheme++;
  if (buildCounterLfA2aV1HTTPAuthSecurityScheme < 3) {
    o.bearerFormat = 'foo';
    o.description = 'foo';
    o.scheme = 'foo';
  }
  buildCounterLfA2aV1HTTPAuthSecurityScheme--;
  return o;
}

void checkLfA2aV1HTTPAuthSecurityScheme(api.LfA2aV1HTTPAuthSecurityScheme o) {
  buildCounterLfA2aV1HTTPAuthSecurityScheme++;
  if (buildCounterLfA2aV1HTTPAuthSecurityScheme < 3) {
    unittest.expect(o.bearerFormat!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.scheme!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1HTTPAuthSecurityScheme--;
}

core.Map<core.String, core.String> buildUnnamed101() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed101(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterLfA2aV1ImplicitOAuthFlow = 0;
api.LfA2aV1ImplicitOAuthFlow buildLfA2aV1ImplicitOAuthFlow() {
  final o = api.LfA2aV1ImplicitOAuthFlow();
  buildCounterLfA2aV1ImplicitOAuthFlow++;
  if (buildCounterLfA2aV1ImplicitOAuthFlow < 3) {
    o.authorizationUrl = 'foo';
    o.refreshUrl = 'foo';
    o.scopes = buildUnnamed101();
  }
  buildCounterLfA2aV1ImplicitOAuthFlow--;
  return o;
}

void checkLfA2aV1ImplicitOAuthFlow(api.LfA2aV1ImplicitOAuthFlow o) {
  buildCounterLfA2aV1ImplicitOAuthFlow++;
  if (buildCounterLfA2aV1ImplicitOAuthFlow < 3) {
    unittest.expect(o.authorizationUrl!, unittest.equals('foo'));
    unittest.expect(o.refreshUrl!, unittest.equals('foo'));
    checkUnnamed101(o.scopes!);
  }
  buildCounterLfA2aV1ImplicitOAuthFlow--;
}

core.List<core.String> buildUnnamed102() => ['foo', 'foo'];

void checkUnnamed102(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
  var casted33 = (o['x']!) as core.Map;
  unittest.expect(casted33, unittest.hasLength(3));
  unittest.expect(casted33['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted33['bool'], unittest.equals(true));
  unittest.expect(casted33['string'], unittest.equals('foo'));
  var casted34 = (o['y']!) as core.Map;
  unittest.expect(casted34, unittest.hasLength(3));
  unittest.expect(casted34['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted34['bool'], unittest.equals(true));
  unittest.expect(casted34['string'], unittest.equals('foo'));
}

core.List<api.LfA2aV1Part> buildUnnamed104() => [
  buildLfA2aV1Part(),
  buildLfA2aV1Part(),
];

void checkUnnamed104(core.List<api.LfA2aV1Part> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLfA2aV1Part(o[0]);
  checkLfA2aV1Part(o[1]);
}

core.List<core.String> buildUnnamed105() => ['foo', 'foo'];

void checkUnnamed105(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLfA2aV1Message = 0;
api.LfA2aV1Message buildLfA2aV1Message() {
  final o = api.LfA2aV1Message();
  buildCounterLfA2aV1Message++;
  if (buildCounterLfA2aV1Message < 3) {
    o.contextId = 'foo';
    o.extensions = buildUnnamed102();
    o.messageId = 'foo';
    o.metadata = buildUnnamed103();
    o.parts = buildUnnamed104();
    o.referenceTaskIds = buildUnnamed105();
    o.role = 'foo';
    o.taskId = 'foo';
  }
  buildCounterLfA2aV1Message--;
  return o;
}

void checkLfA2aV1Message(api.LfA2aV1Message o) {
  buildCounterLfA2aV1Message++;
  if (buildCounterLfA2aV1Message < 3) {
    unittest.expect(o.contextId!, unittest.equals('foo'));
    checkUnnamed102(o.extensions!);
    unittest.expect(o.messageId!, unittest.equals('foo'));
    checkUnnamed103(o.metadata!);
    checkUnnamed104(o.parts!);
    checkUnnamed105(o.referenceTaskIds!);
    unittest.expect(o.role!, unittest.equals('foo'));
    unittest.expect(o.taskId!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1Message--;
}

core.int buildCounterLfA2aV1MutualTlsSecurityScheme = 0;
api.LfA2aV1MutualTlsSecurityScheme buildLfA2aV1MutualTlsSecurityScheme() {
  final o = api.LfA2aV1MutualTlsSecurityScheme();
  buildCounterLfA2aV1MutualTlsSecurityScheme++;
  if (buildCounterLfA2aV1MutualTlsSecurityScheme < 3) {
    o.description = 'foo';
  }
  buildCounterLfA2aV1MutualTlsSecurityScheme--;
  return o;
}

void checkLfA2aV1MutualTlsSecurityScheme(api.LfA2aV1MutualTlsSecurityScheme o) {
  buildCounterLfA2aV1MutualTlsSecurityScheme++;
  if (buildCounterLfA2aV1MutualTlsSecurityScheme < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1MutualTlsSecurityScheme--;
}

core.int buildCounterLfA2aV1OAuth2SecurityScheme = 0;
api.LfA2aV1OAuth2SecurityScheme buildLfA2aV1OAuth2SecurityScheme() {
  final o = api.LfA2aV1OAuth2SecurityScheme();
  buildCounterLfA2aV1OAuth2SecurityScheme++;
  if (buildCounterLfA2aV1OAuth2SecurityScheme < 3) {
    o.description = 'foo';
    o.flows = buildLfA2aV1OAuthFlows();
    o.oauth2MetadataUrl = 'foo';
  }
  buildCounterLfA2aV1OAuth2SecurityScheme--;
  return o;
}

void checkLfA2aV1OAuth2SecurityScheme(api.LfA2aV1OAuth2SecurityScheme o) {
  buildCounterLfA2aV1OAuth2SecurityScheme++;
  if (buildCounterLfA2aV1OAuth2SecurityScheme < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkLfA2aV1OAuthFlows(o.flows!);
    unittest.expect(o.oauth2MetadataUrl!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1OAuth2SecurityScheme--;
}

core.int buildCounterLfA2aV1OAuthFlows = 0;
api.LfA2aV1OAuthFlows buildLfA2aV1OAuthFlows() {
  final o = api.LfA2aV1OAuthFlows();
  buildCounterLfA2aV1OAuthFlows++;
  if (buildCounterLfA2aV1OAuthFlows < 3) {
    o.authorizationCode = buildLfA2aV1AuthorizationCodeOAuthFlow();
    o.clientCredentials = buildLfA2aV1ClientCredentialsOAuthFlow();
    o.deviceCode = buildLfA2aV1DeviceCodeOAuthFlow();
    o.implicit = buildLfA2aV1ImplicitOAuthFlow();
    o.password = buildLfA2aV1PasswordOAuthFlow();
  }
  buildCounterLfA2aV1OAuthFlows--;
  return o;
}

void checkLfA2aV1OAuthFlows(api.LfA2aV1OAuthFlows o) {
  buildCounterLfA2aV1OAuthFlows++;
  if (buildCounterLfA2aV1OAuthFlows < 3) {
    checkLfA2aV1AuthorizationCodeOAuthFlow(o.authorizationCode!);
    checkLfA2aV1ClientCredentialsOAuthFlow(o.clientCredentials!);
    checkLfA2aV1DeviceCodeOAuthFlow(o.deviceCode!);
    checkLfA2aV1ImplicitOAuthFlow(o.implicit!);
    checkLfA2aV1PasswordOAuthFlow(o.password!);
  }
  buildCounterLfA2aV1OAuthFlows--;
}

core.int buildCounterLfA2aV1OpenIdConnectSecurityScheme = 0;
api.LfA2aV1OpenIdConnectSecurityScheme
buildLfA2aV1OpenIdConnectSecurityScheme() {
  final o = api.LfA2aV1OpenIdConnectSecurityScheme();
  buildCounterLfA2aV1OpenIdConnectSecurityScheme++;
  if (buildCounterLfA2aV1OpenIdConnectSecurityScheme < 3) {
    o.description = 'foo';
    o.openIdConnectUrl = 'foo';
  }
  buildCounterLfA2aV1OpenIdConnectSecurityScheme--;
  return o;
}

void checkLfA2aV1OpenIdConnectSecurityScheme(
  api.LfA2aV1OpenIdConnectSecurityScheme o,
) {
  buildCounterLfA2aV1OpenIdConnectSecurityScheme++;
  if (buildCounterLfA2aV1OpenIdConnectSecurityScheme < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.openIdConnectUrl!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1OpenIdConnectSecurityScheme--;
}

core.Map<core.String, core.Object?> buildUnnamed106() => {
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

void checkUnnamed106(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted35 = (o['x']!) as core.Map;
  unittest.expect(casted35, unittest.hasLength(3));
  unittest.expect(casted35['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted35['bool'], unittest.equals(true));
  unittest.expect(casted35['string'], unittest.equals('foo'));
  var casted36 = (o['y']!) as core.Map;
  unittest.expect(casted36, unittest.hasLength(3));
  unittest.expect(casted36['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted36['bool'], unittest.equals(true));
  unittest.expect(casted36['string'], unittest.equals('foo'));
}

core.int buildCounterLfA2aV1Part = 0;
api.LfA2aV1Part buildLfA2aV1Part() {
  final o = api.LfA2aV1Part();
  buildCounterLfA2aV1Part++;
  if (buildCounterLfA2aV1Part < 3) {
    o.data = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
    o.filename = 'foo';
    o.mediaType = 'foo';
    o.metadata = buildUnnamed106();
    o.raw = 'foo';
    o.text = 'foo';
    o.url = 'foo';
  }
  buildCounterLfA2aV1Part--;
  return o;
}

void checkLfA2aV1Part(api.LfA2aV1Part o) {
  buildCounterLfA2aV1Part++;
  if (buildCounterLfA2aV1Part < 3) {
    var casted37 = (o.data!) as core.Map;
    unittest.expect(casted37, unittest.hasLength(3));
    unittest.expect(casted37['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted37['bool'], unittest.equals(true));
    unittest.expect(casted37['string'], unittest.equals('foo'));
    unittest.expect(o.filename!, unittest.equals('foo'));
    unittest.expect(o.mediaType!, unittest.equals('foo'));
    checkUnnamed106(o.metadata!);
    unittest.expect(o.raw!, unittest.equals('foo'));
    unittest.expect(o.text!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1Part--;
}

core.Map<core.String, core.String> buildUnnamed107() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed107(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterLfA2aV1PasswordOAuthFlow = 0;
api.LfA2aV1PasswordOAuthFlow buildLfA2aV1PasswordOAuthFlow() {
  final o = api.LfA2aV1PasswordOAuthFlow();
  buildCounterLfA2aV1PasswordOAuthFlow++;
  if (buildCounterLfA2aV1PasswordOAuthFlow < 3) {
    o.refreshUrl = 'foo';
    o.scopes = buildUnnamed107();
    o.tokenUrl = 'foo';
  }
  buildCounterLfA2aV1PasswordOAuthFlow--;
  return o;
}

void checkLfA2aV1PasswordOAuthFlow(api.LfA2aV1PasswordOAuthFlow o) {
  buildCounterLfA2aV1PasswordOAuthFlow++;
  if (buildCounterLfA2aV1PasswordOAuthFlow < 3) {
    unittest.expect(o.refreshUrl!, unittest.equals('foo'));
    checkUnnamed107(o.scopes!);
    unittest.expect(o.tokenUrl!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1PasswordOAuthFlow--;
}

core.Map<core.String, api.LfA2aV1StringList> buildUnnamed108() => {
  'x': buildLfA2aV1StringList(),
  'y': buildLfA2aV1StringList(),
};

void checkUnnamed108(core.Map<core.String, api.LfA2aV1StringList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLfA2aV1StringList(o['x']!);
  checkLfA2aV1StringList(o['y']!);
}

core.int buildCounterLfA2aV1SecurityRequirement = 0;
api.LfA2aV1SecurityRequirement buildLfA2aV1SecurityRequirement() {
  final o = api.LfA2aV1SecurityRequirement();
  buildCounterLfA2aV1SecurityRequirement++;
  if (buildCounterLfA2aV1SecurityRequirement < 3) {
    o.schemes = buildUnnamed108();
  }
  buildCounterLfA2aV1SecurityRequirement--;
  return o;
}

void checkLfA2aV1SecurityRequirement(api.LfA2aV1SecurityRequirement o) {
  buildCounterLfA2aV1SecurityRequirement++;
  if (buildCounterLfA2aV1SecurityRequirement < 3) {
    checkUnnamed108(o.schemes!);
  }
  buildCounterLfA2aV1SecurityRequirement--;
}

core.int buildCounterLfA2aV1SecurityScheme = 0;
api.LfA2aV1SecurityScheme buildLfA2aV1SecurityScheme() {
  final o = api.LfA2aV1SecurityScheme();
  buildCounterLfA2aV1SecurityScheme++;
  if (buildCounterLfA2aV1SecurityScheme < 3) {
    o.apiKeySecurityScheme = buildLfA2aV1APIKeySecurityScheme();
    o.httpAuthSecurityScheme = buildLfA2aV1HTTPAuthSecurityScheme();
    o.mtlsSecurityScheme = buildLfA2aV1MutualTlsSecurityScheme();
    o.oauth2SecurityScheme = buildLfA2aV1OAuth2SecurityScheme();
    o.openIdConnectSecurityScheme = buildLfA2aV1OpenIdConnectSecurityScheme();
  }
  buildCounterLfA2aV1SecurityScheme--;
  return o;
}

void checkLfA2aV1SecurityScheme(api.LfA2aV1SecurityScheme o) {
  buildCounterLfA2aV1SecurityScheme++;
  if (buildCounterLfA2aV1SecurityScheme < 3) {
    checkLfA2aV1APIKeySecurityScheme(o.apiKeySecurityScheme!);
    checkLfA2aV1HTTPAuthSecurityScheme(o.httpAuthSecurityScheme!);
    checkLfA2aV1MutualTlsSecurityScheme(o.mtlsSecurityScheme!);
    checkLfA2aV1OAuth2SecurityScheme(o.oauth2SecurityScheme!);
    checkLfA2aV1OpenIdConnectSecurityScheme(o.openIdConnectSecurityScheme!);
  }
  buildCounterLfA2aV1SecurityScheme--;
}

core.List<core.String> buildUnnamed109() => ['foo', 'foo'];

void checkUnnamed109(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLfA2aV1SendMessageConfiguration = 0;
api.LfA2aV1SendMessageConfiguration buildLfA2aV1SendMessageConfiguration() {
  final o = api.LfA2aV1SendMessageConfiguration();
  buildCounterLfA2aV1SendMessageConfiguration++;
  if (buildCounterLfA2aV1SendMessageConfiguration < 3) {
    o.acceptedOutputModes = buildUnnamed109();
    o.historyLength = 42;
    o.returnImmediately = true;
    o.taskPushNotificationConfig = buildLfA2aV1TaskPushNotificationConfig();
  }
  buildCounterLfA2aV1SendMessageConfiguration--;
  return o;
}

void checkLfA2aV1SendMessageConfiguration(
  api.LfA2aV1SendMessageConfiguration o,
) {
  buildCounterLfA2aV1SendMessageConfiguration++;
  if (buildCounterLfA2aV1SendMessageConfiguration < 3) {
    checkUnnamed109(o.acceptedOutputModes!);
    unittest.expect(o.historyLength!, unittest.equals(42));
    unittest.expect(o.returnImmediately!, unittest.isTrue);
    checkLfA2aV1TaskPushNotificationConfig(o.taskPushNotificationConfig!);
  }
  buildCounterLfA2aV1SendMessageConfiguration--;
}

core.Map<core.String, core.Object?> buildUnnamed110() => {
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

void checkUnnamed110(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLfA2aV1SendMessageRequest = 0;
api.LfA2aV1SendMessageRequest buildLfA2aV1SendMessageRequest() {
  final o = api.LfA2aV1SendMessageRequest();
  buildCounterLfA2aV1SendMessageRequest++;
  if (buildCounterLfA2aV1SendMessageRequest < 3) {
    o.configuration = buildLfA2aV1SendMessageConfiguration();
    o.message = buildLfA2aV1Message();
    o.metadata = buildUnnamed110();
  }
  buildCounterLfA2aV1SendMessageRequest--;
  return o;
}

void checkLfA2aV1SendMessageRequest(api.LfA2aV1SendMessageRequest o) {
  buildCounterLfA2aV1SendMessageRequest++;
  if (buildCounterLfA2aV1SendMessageRequest < 3) {
    checkLfA2aV1SendMessageConfiguration(o.configuration!);
    checkLfA2aV1Message(o.message!);
    checkUnnamed110(o.metadata!);
  }
  buildCounterLfA2aV1SendMessageRequest--;
}

core.int buildCounterLfA2aV1SendMessageResponse = 0;
api.LfA2aV1SendMessageResponse buildLfA2aV1SendMessageResponse() {
  final o = api.LfA2aV1SendMessageResponse();
  buildCounterLfA2aV1SendMessageResponse++;
  if (buildCounterLfA2aV1SendMessageResponse < 3) {
    o.message = buildLfA2aV1Message();
    o.task = buildLfA2aV1Task();
  }
  buildCounterLfA2aV1SendMessageResponse--;
  return o;
}

void checkLfA2aV1SendMessageResponse(api.LfA2aV1SendMessageResponse o) {
  buildCounterLfA2aV1SendMessageResponse++;
  if (buildCounterLfA2aV1SendMessageResponse < 3) {
    checkLfA2aV1Message(o.message!);
    checkLfA2aV1Task(o.task!);
  }
  buildCounterLfA2aV1SendMessageResponse--;
}

core.int buildCounterLfA2aV1StreamResponse = 0;
api.LfA2aV1StreamResponse buildLfA2aV1StreamResponse() {
  final o = api.LfA2aV1StreamResponse();
  buildCounterLfA2aV1StreamResponse++;
  if (buildCounterLfA2aV1StreamResponse < 3) {
    o.artifactUpdate = buildLfA2aV1TaskArtifactUpdateEvent();
    o.message = buildLfA2aV1Message();
    o.statusUpdate = buildLfA2aV1TaskStatusUpdateEvent();
    o.task = buildLfA2aV1Task();
  }
  buildCounterLfA2aV1StreamResponse--;
  return o;
}

void checkLfA2aV1StreamResponse(api.LfA2aV1StreamResponse o) {
  buildCounterLfA2aV1StreamResponse++;
  if (buildCounterLfA2aV1StreamResponse < 3) {
    checkLfA2aV1TaskArtifactUpdateEvent(o.artifactUpdate!);
    checkLfA2aV1Message(o.message!);
    checkLfA2aV1TaskStatusUpdateEvent(o.statusUpdate!);
    checkLfA2aV1Task(o.task!);
  }
  buildCounterLfA2aV1StreamResponse--;
}

core.List<core.String> buildUnnamed111() => ['foo', 'foo'];

void checkUnnamed111(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLfA2aV1StringList = 0;
api.LfA2aV1StringList buildLfA2aV1StringList() {
  final o = api.LfA2aV1StringList();
  buildCounterLfA2aV1StringList++;
  if (buildCounterLfA2aV1StringList < 3) {
    o.list = buildUnnamed111();
  }
  buildCounterLfA2aV1StringList--;
  return o;
}

void checkLfA2aV1StringList(api.LfA2aV1StringList o) {
  buildCounterLfA2aV1StringList++;
  if (buildCounterLfA2aV1StringList < 3) {
    checkUnnamed111(o.list!);
  }
  buildCounterLfA2aV1StringList--;
}

core.List<api.LfA2aV1Artifact> buildUnnamed112() => [
  buildLfA2aV1Artifact(),
  buildLfA2aV1Artifact(),
];

void checkUnnamed112(core.List<api.LfA2aV1Artifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLfA2aV1Artifact(o[0]);
  checkLfA2aV1Artifact(o[1]);
}

core.List<api.LfA2aV1Message> buildUnnamed113() => [
  buildLfA2aV1Message(),
  buildLfA2aV1Message(),
];

void checkUnnamed113(core.List<api.LfA2aV1Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLfA2aV1Message(o[0]);
  checkLfA2aV1Message(o[1]);
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

core.int buildCounterLfA2aV1Task = 0;
api.LfA2aV1Task buildLfA2aV1Task() {
  final o = api.LfA2aV1Task();
  buildCounterLfA2aV1Task++;
  if (buildCounterLfA2aV1Task < 3) {
    o.artifacts = buildUnnamed112();
    o.contextId = 'foo';
    o.history = buildUnnamed113();
    o.id = 'foo';
    o.metadata = buildUnnamed114();
    o.status = buildLfA2aV1TaskStatus();
  }
  buildCounterLfA2aV1Task--;
  return o;
}

void checkLfA2aV1Task(api.LfA2aV1Task o) {
  buildCounterLfA2aV1Task++;
  if (buildCounterLfA2aV1Task < 3) {
    checkUnnamed112(o.artifacts!);
    unittest.expect(o.contextId!, unittest.equals('foo'));
    checkUnnamed113(o.history!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed114(o.metadata!);
    checkLfA2aV1TaskStatus(o.status!);
  }
  buildCounterLfA2aV1Task--;
}

core.Map<core.String, core.Object?> buildUnnamed115() => {
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

void checkUnnamed115(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLfA2aV1TaskArtifactUpdateEvent = 0;
api.LfA2aV1TaskArtifactUpdateEvent buildLfA2aV1TaskArtifactUpdateEvent() {
  final o = api.LfA2aV1TaskArtifactUpdateEvent();
  buildCounterLfA2aV1TaskArtifactUpdateEvent++;
  if (buildCounterLfA2aV1TaskArtifactUpdateEvent < 3) {
    o.append = true;
    o.artifact = buildLfA2aV1Artifact();
    o.contextId = 'foo';
    o.lastChunk = true;
    o.metadata = buildUnnamed115();
    o.taskId = 'foo';
  }
  buildCounterLfA2aV1TaskArtifactUpdateEvent--;
  return o;
}

void checkLfA2aV1TaskArtifactUpdateEvent(api.LfA2aV1TaskArtifactUpdateEvent o) {
  buildCounterLfA2aV1TaskArtifactUpdateEvent++;
  if (buildCounterLfA2aV1TaskArtifactUpdateEvent < 3) {
    unittest.expect(o.append!, unittest.isTrue);
    checkLfA2aV1Artifact(o.artifact!);
    unittest.expect(o.contextId!, unittest.equals('foo'));
    unittest.expect(o.lastChunk!, unittest.isTrue);
    checkUnnamed115(o.metadata!);
    unittest.expect(o.taskId!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1TaskArtifactUpdateEvent--;
}

core.int buildCounterLfA2aV1TaskPushNotificationConfig = 0;
api.LfA2aV1TaskPushNotificationConfig buildLfA2aV1TaskPushNotificationConfig() {
  final o = api.LfA2aV1TaskPushNotificationConfig();
  buildCounterLfA2aV1TaskPushNotificationConfig++;
  if (buildCounterLfA2aV1TaskPushNotificationConfig < 3) {
    o.authentication = buildLfA2aV1AuthenticationInfo();
    o.id = 'foo';
    o.taskId = 'foo';
    o.tenant = 'foo';
    o.token = 'foo';
    o.url = 'foo';
  }
  buildCounterLfA2aV1TaskPushNotificationConfig--;
  return o;
}

void checkLfA2aV1TaskPushNotificationConfig(
  api.LfA2aV1TaskPushNotificationConfig o,
) {
  buildCounterLfA2aV1TaskPushNotificationConfig++;
  if (buildCounterLfA2aV1TaskPushNotificationConfig < 3) {
    checkLfA2aV1AuthenticationInfo(o.authentication!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.taskId!, unittest.equals('foo'));
    unittest.expect(o.tenant!, unittest.equals('foo'));
    unittest.expect(o.token!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1TaskPushNotificationConfig--;
}

core.int buildCounterLfA2aV1TaskStatus = 0;
api.LfA2aV1TaskStatus buildLfA2aV1TaskStatus() {
  final o = api.LfA2aV1TaskStatus();
  buildCounterLfA2aV1TaskStatus++;
  if (buildCounterLfA2aV1TaskStatus < 3) {
    o.message = buildLfA2aV1Message();
    o.state = 'foo';
    o.timestamp = 'foo';
  }
  buildCounterLfA2aV1TaskStatus--;
  return o;
}

void checkLfA2aV1TaskStatus(api.LfA2aV1TaskStatus o) {
  buildCounterLfA2aV1TaskStatus++;
  if (buildCounterLfA2aV1TaskStatus < 3) {
    checkLfA2aV1Message(o.message!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.timestamp!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1TaskStatus--;
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

core.int buildCounterLfA2aV1TaskStatusUpdateEvent = 0;
api.LfA2aV1TaskStatusUpdateEvent buildLfA2aV1TaskStatusUpdateEvent() {
  final o = api.LfA2aV1TaskStatusUpdateEvent();
  buildCounterLfA2aV1TaskStatusUpdateEvent++;
  if (buildCounterLfA2aV1TaskStatusUpdateEvent < 3) {
    o.contextId = 'foo';
    o.metadata = buildUnnamed116();
    o.status = buildLfA2aV1TaskStatus();
    o.taskId = 'foo';
  }
  buildCounterLfA2aV1TaskStatusUpdateEvent--;
  return o;
}

void checkLfA2aV1TaskStatusUpdateEvent(api.LfA2aV1TaskStatusUpdateEvent o) {
  buildCounterLfA2aV1TaskStatusUpdateEvent++;
  if (buildCounterLfA2aV1TaskStatusUpdateEvent < 3) {
    unittest.expect(o.contextId!, unittest.equals('foo'));
    checkUnnamed116(o.metadata!);
    checkLfA2aV1TaskStatus(o.status!);
    unittest.expect(o.taskId!, unittest.equals('foo'));
  }
  buildCounterLfA2aV1TaskStatusUpdateEvent--;
}

core.List<api.Agent> buildUnnamed117() => [buildAgent(), buildAgent()];

void checkUnnamed117(core.List<api.Agent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgent(o[0]);
  checkAgent(o[1]);
}

core.int buildCounterListAgentsResponse = 0;
api.ListAgentsResponse buildListAgentsResponse() {
  final o = api.ListAgentsResponse();
  buildCounterListAgentsResponse++;
  if (buildCounterListAgentsResponse < 3) {
    o.agents = buildUnnamed117();
    o.nextPageToken = 'foo';
  }
  buildCounterListAgentsResponse--;
  return o;
}

void checkListAgentsResponse(api.ListAgentsResponse o) {
  buildCounterListAgentsResponse++;
  if (buildCounterListAgentsResponse < 3) {
    checkUnnamed117(o.agents!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAgentsResponse--;
}

core.List<api.AppVersion> buildUnnamed118() => [
  buildAppVersion(),
  buildAppVersion(),
];

void checkUnnamed118(core.List<api.AppVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppVersion(o[0]);
  checkAppVersion(o[1]);
}

core.int buildCounterListAppVersionsResponse = 0;
api.ListAppVersionsResponse buildListAppVersionsResponse() {
  final o = api.ListAppVersionsResponse();
  buildCounterListAppVersionsResponse++;
  if (buildCounterListAppVersionsResponse < 3) {
    o.appVersions = buildUnnamed118();
    o.nextPageToken = 'foo';
  }
  buildCounterListAppVersionsResponse--;
  return o;
}

void checkListAppVersionsResponse(api.ListAppVersionsResponse o) {
  buildCounterListAppVersionsResponse++;
  if (buildCounterListAppVersionsResponse < 3) {
    checkUnnamed118(o.appVersions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAppVersionsResponse--;
}

core.List<api.App> buildUnnamed119() => [buildApp(), buildApp()];

void checkUnnamed119(core.List<api.App> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApp(o[0]);
  checkApp(o[1]);
}

core.List<core.String> buildUnnamed120() => ['foo', 'foo'];

void checkUnnamed120(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAppsResponse = 0;
api.ListAppsResponse buildListAppsResponse() {
  final o = api.ListAppsResponse();
  buildCounterListAppsResponse++;
  if (buildCounterListAppsResponse < 3) {
    o.apps = buildUnnamed119();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed120();
  }
  buildCounterListAppsResponse--;
  return o;
}

void checkListAppsResponse(api.ListAppsResponse o) {
  buildCounterListAppsResponse++;
  if (buildCounterListAppsResponse < 3) {
    checkUnnamed119(o.apps!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed120(o.unreachable!);
  }
  buildCounterListAppsResponse--;
}

core.List<api.Changelog> buildUnnamed121() => [
  buildChangelog(),
  buildChangelog(),
];

void checkUnnamed121(core.List<api.Changelog> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChangelog(o[0]);
  checkChangelog(o[1]);
}

core.int buildCounterListChangelogsResponse = 0;
api.ListChangelogsResponse buildListChangelogsResponse() {
  final o = api.ListChangelogsResponse();
  buildCounterListChangelogsResponse++;
  if (buildCounterListChangelogsResponse < 3) {
    o.changelogs = buildUnnamed121();
    o.nextPageToken = 'foo';
  }
  buildCounterListChangelogsResponse--;
  return o;
}

void checkListChangelogsResponse(api.ListChangelogsResponse o) {
  buildCounterListChangelogsResponse++;
  if (buildCounterListChangelogsResponse < 3) {
    checkUnnamed121(o.changelogs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListChangelogsResponse--;
}

core.List<api.Conversation> buildUnnamed122() => [
  buildConversation(),
  buildConversation(),
];

void checkUnnamed122(core.List<api.Conversation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConversation(o[0]);
  checkConversation(o[1]);
}

core.int buildCounterListConversationsResponse = 0;
api.ListConversationsResponse buildListConversationsResponse() {
  final o = api.ListConversationsResponse();
  buildCounterListConversationsResponse++;
  if (buildCounterListConversationsResponse < 3) {
    o.conversations = buildUnnamed122();
    o.nextPageToken = 'foo';
  }
  buildCounterListConversationsResponse--;
  return o;
}

void checkListConversationsResponse(api.ListConversationsResponse o) {
  buildCounterListConversationsResponse++;
  if (buildCounterListConversationsResponse < 3) {
    checkUnnamed122(o.conversations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListConversationsResponse--;
}

core.List<api.Deployment> buildUnnamed123() => [
  buildDeployment(),
  buildDeployment(),
];

void checkUnnamed123(core.List<api.Deployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployment(o[0]);
  checkDeployment(o[1]);
}

core.int buildCounterListDeploymentsResponse = 0;
api.ListDeploymentsResponse buildListDeploymentsResponse() {
  final o = api.ListDeploymentsResponse();
  buildCounterListDeploymentsResponse++;
  if (buildCounterListDeploymentsResponse < 3) {
    o.deployments = buildUnnamed123();
    o.nextPageToken = 'foo';
  }
  buildCounterListDeploymentsResponse--;
  return o;
}

void checkListDeploymentsResponse(api.ListDeploymentsResponse o) {
  buildCounterListDeploymentsResponse++;
  if (buildCounterListDeploymentsResponse < 3) {
    checkUnnamed123(o.deployments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDeploymentsResponse--;
}

core.List<api.Example> buildUnnamed124() => [buildExample(), buildExample()];

void checkUnnamed124(core.List<api.Example> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExample(o[0]);
  checkExample(o[1]);
}

core.int buildCounterListExamplesResponse = 0;
api.ListExamplesResponse buildListExamplesResponse() {
  final o = api.ListExamplesResponse();
  buildCounterListExamplesResponse++;
  if (buildCounterListExamplesResponse < 3) {
    o.examples = buildUnnamed124();
    o.nextPageToken = 'foo';
  }
  buildCounterListExamplesResponse--;
  return o;
}

void checkListExamplesResponse(api.ListExamplesResponse o) {
  buildCounterListExamplesResponse++;
  if (buildCounterListExamplesResponse < 3) {
    checkUnnamed124(o.examples!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListExamplesResponse--;
}

core.List<api.Guardrail> buildUnnamed125() => [
  buildGuardrail(),
  buildGuardrail(),
];

void checkUnnamed125(core.List<api.Guardrail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGuardrail(o[0]);
  checkGuardrail(o[1]);
}

core.int buildCounterListGuardrailsResponse = 0;
api.ListGuardrailsResponse buildListGuardrailsResponse() {
  final o = api.ListGuardrailsResponse();
  buildCounterListGuardrailsResponse++;
  if (buildCounterListGuardrailsResponse < 3) {
    o.guardrails = buildUnnamed125();
    o.nextPageToken = 'foo';
  }
  buildCounterListGuardrailsResponse--;
  return o;
}

void checkListGuardrailsResponse(api.ListGuardrailsResponse o) {
  buildCounterListGuardrailsResponse++;
  if (buildCounterListGuardrailsResponse < 3) {
    checkUnnamed125(o.guardrails!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListGuardrailsResponse--;
}

core.List<api.Location> buildUnnamed126() => [buildLocation(), buildLocation()];

void checkUnnamed126(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed126();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed126(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed127() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed127(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed128() => ['foo', 'foo'];

void checkUnnamed128(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed127();
    o.unreachable = buildUnnamed128();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed127(o.operations!);
    checkUnnamed128(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Tool> buildUnnamed129() => [buildTool(), buildTool()];

void checkUnnamed129(core.List<api.Tool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTool(o[0]);
  checkTool(o[1]);
}

core.int buildCounterListToolsResponse = 0;
api.ListToolsResponse buildListToolsResponse() {
  final o = api.ListToolsResponse();
  buildCounterListToolsResponse++;
  if (buildCounterListToolsResponse < 3) {
    o.nextPageToken = 'foo';
    o.tools = buildUnnamed129();
  }
  buildCounterListToolsResponse--;
  return o;
}

void checkListToolsResponse(api.ListToolsResponse o) {
  buildCounterListToolsResponse++;
  if (buildCounterListToolsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed129(o.tools!);
  }
  buildCounterListToolsResponse--;
}

core.List<api.Toolset> buildUnnamed130() => [buildToolset(), buildToolset()];

void checkUnnamed130(core.List<api.Toolset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToolset(o[0]);
  checkToolset(o[1]);
}

core.int buildCounterListToolsetsResponse = 0;
api.ListToolsetsResponse buildListToolsetsResponse() {
  final o = api.ListToolsetsResponse();
  buildCounterListToolsetsResponse++;
  if (buildCounterListToolsetsResponse < 3) {
    o.nextPageToken = 'foo';
    o.toolsets = buildUnnamed130();
  }
  buildCounterListToolsetsResponse--;
  return o;
}

void checkListToolsetsResponse(api.ListToolsetsResponse o) {
  buildCounterListToolsetsResponse++;
  if (buildCounterListToolsetsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed130(o.toolsets!);
  }
  buildCounterListToolsetsResponse--;
}

core.Map<core.String, core.String> buildUnnamed131() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed131(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed131();
    o.locationId = 'foo';
    o.metadata = buildUnnamed132();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed131(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed132(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterLoggingSettings = 0;
api.LoggingSettings buildLoggingSettings() {
  final o = api.LoggingSettings();
  buildCounterLoggingSettings++;
  if (buildCounterLoggingSettings < 3) {
    o.audioRecordingConfig = buildAudioRecordingConfig();
    o.bigqueryExportSettings = buildBigQueryExportSettings();
    o.cloudLoggingSettings = buildCloudLoggingSettings();
    o.conversationLoggingSettings = buildConversationLoggingSettings();
    o.evaluationAudioRecordingConfig = buildAudioRecordingConfig();
    o.metricAnalysisSettings = buildMetricAnalysisSettings();
    o.redactionConfig = buildRedactionConfig();
    o.unredactedAudioRecordingConfig = buildAudioRecordingConfig();
    o.unredactedBigqueryExportSettings = buildBigQueryExportSettings();
  }
  buildCounterLoggingSettings--;
  return o;
}

void checkLoggingSettings(api.LoggingSettings o) {
  buildCounterLoggingSettings++;
  if (buildCounterLoggingSettings < 3) {
    checkAudioRecordingConfig(o.audioRecordingConfig!);
    checkBigQueryExportSettings(o.bigqueryExportSettings!);
    checkCloudLoggingSettings(o.cloudLoggingSettings!);
    checkConversationLoggingSettings(o.conversationLoggingSettings!);
    checkAudioRecordingConfig(o.evaluationAudioRecordingConfig!);
    checkMetricAnalysisSettings(o.metricAnalysisSettings!);
    checkRedactionConfig(o.redactionConfig!);
    checkAudioRecordingConfig(o.unredactedAudioRecordingConfig!);
    checkBigQueryExportSettings(o.unredactedBigqueryExportSettings!);
  }
  buildCounterLoggingSettings--;
}

core.Map<core.String, core.String> buildUnnamed133() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed133(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterMcpTool = 0;
api.McpTool buildMcpTool() {
  final o = api.McpTool();
  buildCounterMcpTool++;
  if (buildCounterMcpTool < 3) {
    o.apiAuthentication = buildApiAuthentication();
    o.customHeaders = buildUnnamed133();
    o.description = 'foo';
    o.inputSchema = buildSchema();
    o.name = 'foo';
    o.nameOverride = 'foo';
    o.outputSchema = buildSchema();
    o.serverAddress = 'foo';
    o.serviceDirectoryConfig = buildServiceDirectoryConfig();
    o.state = 'foo';
    o.tlsConfig = buildTlsConfig();
  }
  buildCounterMcpTool--;
  return o;
}

void checkMcpTool(api.McpTool o) {
  buildCounterMcpTool++;
  if (buildCounterMcpTool < 3) {
    checkApiAuthentication(o.apiAuthentication!);
    checkUnnamed133(o.customHeaders!);
    unittest.expect(o.description!, unittest.equals('foo'));
    checkSchema(o.inputSchema!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.nameOverride!, unittest.equals('foo'));
    checkSchema(o.outputSchema!);
    unittest.expect(o.serverAddress!, unittest.equals('foo'));
    checkServiceDirectoryConfig(o.serviceDirectoryConfig!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkTlsConfig(o.tlsConfig!);
  }
  buildCounterMcpTool--;
}

core.int buildCounterMcpToolDefinition = 0;
api.McpToolDefinition buildMcpToolDefinition() {
  final o = api.McpToolDefinition();
  buildCounterMcpToolDefinition++;
  if (buildCounterMcpToolDefinition < 3) {
    o.description = 'foo';
    o.inputSchema = buildSchema();
    o.outputSchema = buildSchema();
  }
  buildCounterMcpToolDefinition--;
  return o;
}

void checkMcpToolDefinition(api.McpToolDefinition o) {
  buildCounterMcpToolDefinition++;
  if (buildCounterMcpToolDefinition < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkSchema(o.inputSchema!);
    checkSchema(o.outputSchema!);
  }
  buildCounterMcpToolDefinition--;
}

core.int buildCounterMcpToolOverride = 0;
api.McpToolOverride buildMcpToolOverride() {
  final o = api.McpToolOverride();
  buildCounterMcpToolOverride++;
  if (buildCounterMcpToolOverride < 3) {
    o.descriptionOverride = 'foo';
    o.nameOverride = 'foo';
    o.snapshot = buildMcpToolDefinition();
    o.tool = 'foo';
  }
  buildCounterMcpToolOverride--;
  return o;
}

void checkMcpToolOverride(api.McpToolOverride o) {
  buildCounterMcpToolOverride++;
  if (buildCounterMcpToolOverride < 3) {
    unittest.expect(o.descriptionOverride!, unittest.equals('foo'));
    unittest.expect(o.nameOverride!, unittest.equals('foo'));
    checkMcpToolDefinition(o.snapshot!);
    unittest.expect(o.tool!, unittest.equals('foo'));
  }
  buildCounterMcpToolOverride--;
}

core.Map<core.String, core.String> buildUnnamed134() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed134(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.McpToolOverride> buildUnnamed135() => [
  buildMcpToolOverride(),
  buildMcpToolOverride(),
];

void checkUnnamed135(core.List<api.McpToolOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMcpToolOverride(o[0]);
  checkMcpToolOverride(o[1]);
}

core.int buildCounterMcpToolset = 0;
api.McpToolset buildMcpToolset() {
  final o = api.McpToolset();
  buildCounterMcpToolset++;
  if (buildCounterMcpToolset < 3) {
    o.apiAuthentication = buildApiAuthentication();
    o.customHeaders = buildUnnamed134();
    o.serverAddress = 'foo';
    o.serviceDirectoryConfig = buildServiceDirectoryConfig();
    o.tlsConfig = buildTlsConfig();
    o.toolOverrides = buildUnnamed135();
  }
  buildCounterMcpToolset--;
  return o;
}

void checkMcpToolset(api.McpToolset o) {
  buildCounterMcpToolset++;
  if (buildCounterMcpToolset < 3) {
    checkApiAuthentication(o.apiAuthentication!);
    checkUnnamed134(o.customHeaders!);
    unittest.expect(o.serverAddress!, unittest.equals('foo'));
    checkServiceDirectoryConfig(o.serviceDirectoryConfig!);
    checkTlsConfig(o.tlsConfig!);
    checkUnnamed135(o.toolOverrides!);
  }
  buildCounterMcpToolset--;
}

core.List<api.Chunk> buildUnnamed136() => [buildChunk(), buildChunk()];

void checkUnnamed136(core.List<api.Chunk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChunk(o[0]);
  checkChunk(o[1]);
}

core.int buildCounterMessage = 0;
api.Message buildMessage() {
  final o = api.Message();
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    o.chunks = buildUnnamed136();
    o.eventTime = 'foo';
    o.role = 'foo';
  }
  buildCounterMessage--;
  return o;
}

void checkMessage(api.Message o) {
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    checkUnnamed136(o.chunks!);
    unittest.expect(o.eventTime!, unittest.equals('foo'));
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterMessage--;
}

core.int buildCounterMetricAnalysisSettings = 0;
api.MetricAnalysisSettings buildMetricAnalysisSettings() {
  final o = api.MetricAnalysisSettings();
  buildCounterMetricAnalysisSettings++;
  if (buildCounterMetricAnalysisSettings < 3) {
    o.llmMetricsOptedOut = true;
  }
  buildCounterMetricAnalysisSettings--;
  return o;
}

void checkMetricAnalysisSettings(api.MetricAnalysisSettings o) {
  buildCounterMetricAnalysisSettings++;
  if (buildCounterMetricAnalysisSettings < 3) {
    unittest.expect(o.llmMetricsOptedOut!, unittest.isTrue);
  }
  buildCounterMetricAnalysisSettings--;
}

core.List<api.MockedToolCall> buildUnnamed137() => [
  buildMockedToolCall(),
  buildMockedToolCall(),
];

void checkUnnamed137(core.List<api.MockedToolCall> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMockedToolCall(o[0]);
  checkMockedToolCall(o[1]);
}

core.int buildCounterMockConfig = 0;
api.MockConfig buildMockConfig() {
  final o = api.MockConfig();
  buildCounterMockConfig++;
  if (buildCounterMockConfig < 3) {
    o.mockedToolCalls = buildUnnamed137();
    o.unmatchedToolCallBehavior = 'foo';
  }
  buildCounterMockConfig--;
  return o;
}

void checkMockConfig(api.MockConfig o) {
  buildCounterMockConfig++;
  if (buildCounterMockConfig < 3) {
    checkUnnamed137(o.mockedToolCalls!);
    unittest.expect(o.unmatchedToolCallBehavior!, unittest.equals('foo'));
  }
  buildCounterMockConfig--;
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

core.Map<core.String, core.Object?> buildUnnamed139() => {
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

void checkUnnamed139(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterMockedToolCall = 0;
api.MockedToolCall buildMockedToolCall() {
  final o = api.MockedToolCall();
  buildCounterMockedToolCall++;
  if (buildCounterMockedToolCall < 3) {
    o.expectedArgsPattern = buildUnnamed138();
    o.mockResponse = buildUnnamed139();
    o.tool = 'foo';
    o.toolId = 'foo';
    o.toolset = buildToolsetTool();
  }
  buildCounterMockedToolCall--;
  return o;
}

void checkMockedToolCall(api.MockedToolCall o) {
  buildCounterMockedToolCall++;
  if (buildCounterMockedToolCall < 3) {
    checkUnnamed138(o.expectedArgsPattern!);
    checkUnnamed139(o.mockResponse!);
    unittest.expect(o.tool!, unittest.equals('foo'));
    unittest.expect(o.toolId!, unittest.equals('foo'));
    checkToolsetTool(o.toolset!);
  }
  buildCounterMockedToolCall--;
}

core.int buildCounterModelSettings = 0;
api.ModelSettings buildModelSettings() {
  final o = api.ModelSettings();
  buildCounterModelSettings++;
  if (buildCounterModelSettings < 3) {
    o.model = 'foo';
    o.temperature = 42.0;
  }
  buildCounterModelSettings--;
  return o;
}

void checkModelSettings(api.ModelSettings o) {
  buildCounterModelSettings++;
  if (buildCounterModelSettings < 3) {
    unittest.expect(o.model!, unittest.equals('foo'));
    unittest.expect(o.temperature!, unittest.equals(42.0));
  }
  buildCounterModelSettings--;
}

core.List<core.String> buildUnnamed140() => ['foo', 'foo'];

void checkUnnamed140(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOAuthConfig = 0;
api.OAuthConfig buildOAuthConfig() {
  final o = api.OAuthConfig();
  buildCounterOAuthConfig++;
  if (buildCounterOAuthConfig < 3) {
    o.clientId = 'foo';
    o.clientSecretVersion = 'foo';
    o.oauthGrantType = 'foo';
    o.scopes = buildUnnamed140();
    o.tokenEndpoint = 'foo';
  }
  buildCounterOAuthConfig--;
  return o;
}

void checkOAuthConfig(api.OAuthConfig o) {
  buildCounterOAuthConfig++;
  if (buildCounterOAuthConfig < 3) {
    unittest.expect(o.clientId!, unittest.equals('foo'));
    unittest.expect(o.clientSecretVersion!, unittest.equals('foo'));
    unittest.expect(o.oauthGrantType!, unittest.equals('foo'));
    checkUnnamed140(o.scopes!);
    unittest.expect(o.tokenEndpoint!, unittest.equals('foo'));
  }
  buildCounterOAuthConfig--;
}

core.int buildCounterOpenApiTool = 0;
api.OpenApiTool buildOpenApiTool() {
  final o = api.OpenApiTool();
  buildCounterOpenApiTool++;
  if (buildCounterOpenApiTool < 3) {
    o.apiAuthentication = buildApiAuthentication();
    o.description = 'foo';
    o.ignoreUnknownFields = true;
    o.name = 'foo';
    o.openApiSchema = 'foo';
    o.serviceDirectoryConfig = buildServiceDirectoryConfig();
    o.tlsConfig = buildTlsConfig();
    o.url = 'foo';
  }
  buildCounterOpenApiTool--;
  return o;
}

void checkOpenApiTool(api.OpenApiTool o) {
  buildCounterOpenApiTool++;
  if (buildCounterOpenApiTool < 3) {
    checkApiAuthentication(o.apiAuthentication!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.ignoreUnknownFields!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.openApiSchema!, unittest.equals('foo'));
    checkServiceDirectoryConfig(o.serviceDirectoryConfig!);
    checkTlsConfig(o.tlsConfig!);
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterOpenApiTool--;
}

core.int buildCounterOpenApiToolset = 0;
api.OpenApiToolset buildOpenApiToolset() {
  final o = api.OpenApiToolset();
  buildCounterOpenApiToolset++;
  if (buildCounterOpenApiToolset < 3) {
    o.apiAuthentication = buildApiAuthentication();
    o.ignoreUnknownFields = true;
    o.openApiSchema = 'foo';
    o.serviceDirectoryConfig = buildServiceDirectoryConfig();
    o.tlsConfig = buildTlsConfig();
    o.url = 'foo';
  }
  buildCounterOpenApiToolset--;
  return o;
}

void checkOpenApiToolset(api.OpenApiToolset o) {
  buildCounterOpenApiToolset++;
  if (buildCounterOpenApiToolset < 3) {
    checkApiAuthentication(o.apiAuthentication!);
    unittest.expect(o.ignoreUnknownFields!, unittest.isTrue);
    unittest.expect(o.openApiSchema!, unittest.equals('foo'));
    checkServiceDirectoryConfig(o.serviceDirectoryConfig!);
    checkTlsConfig(o.tlsConfig!);
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterOpenApiToolset--;
}

core.Map<core.String, core.Object?> buildUnnamed141() => {
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

void checkUnnamed141(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed142() => {
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

void checkUnnamed142(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed141();
    o.name = 'foo';
    o.response = buildUnnamed142();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed141(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed142(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOutputAudioConfig = 0;
api.OutputAudioConfig buildOutputAudioConfig() {
  final o = api.OutputAudioConfig();
  buildCounterOutputAudioConfig++;
  if (buildCounterOutputAudioConfig < 3) {
    o.audioEncoding = 'foo';
    o.sampleRateHertz = 42;
  }
  buildCounterOutputAudioConfig--;
  return o;
}

void checkOutputAudioConfig(api.OutputAudioConfig o) {
  buildCounterOutputAudioConfig++;
  if (buildCounterOutputAudioConfig < 3) {
    unittest.expect(o.audioEncoding!, unittest.equals('foo'));
    unittest.expect(o.sampleRateHertz!, unittest.equals(42));
  }
  buildCounterOutputAudioConfig--;
}

core.int buildCounterPythonCodeCondition = 0;
api.PythonCodeCondition buildPythonCodeCondition() {
  final o = api.PythonCodeCondition();
  buildCounterPythonCodeCondition++;
  if (buildCounterPythonCodeCondition < 3) {
    o.pythonCode = 'foo';
  }
  buildCounterPythonCodeCondition--;
  return o;
}

void checkPythonCodeCondition(api.PythonCodeCondition o) {
  buildCounterPythonCodeCondition++;
  if (buildCounterPythonCodeCondition < 3) {
    unittest.expect(o.pythonCode!, unittest.equals('foo'));
  }
  buildCounterPythonCodeCondition--;
}

core.int buildCounterPythonFunction = 0;
api.PythonFunction buildPythonFunction() {
  final o = api.PythonFunction();
  buildCounterPythonFunction++;
  if (buildCounterPythonFunction < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.pythonCode = 'foo';
    o.serviceDirectoryConfig = buildServiceDirectoryConfig();
  }
  buildCounterPythonFunction--;
  return o;
}

void checkPythonFunction(api.PythonFunction o) {
  buildCounterPythonFunction++;
  if (buildCounterPythonFunction < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.pythonCode!, unittest.equals('foo'));
    checkServiceDirectoryConfig(o.serviceDirectoryConfig!);
  }
  buildCounterPythonFunction--;
}

core.int buildCounterRedactionConfig = 0;
api.RedactionConfig buildRedactionConfig() {
  final o = api.RedactionConfig();
  buildCounterRedactionConfig++;
  if (buildCounterRedactionConfig < 3) {
    o.deidentifyTemplate = 'foo';
    o.enableRedaction = true;
    o.inspectTemplate = 'foo';
  }
  buildCounterRedactionConfig--;
  return o;
}

void checkRedactionConfig(api.RedactionConfig o) {
  buildCounterRedactionConfig++;
  if (buildCounterRedactionConfig < 3) {
    unittest.expect(o.deidentifyTemplate!, unittest.equals('foo'));
    unittest.expect(o.enableRedaction!, unittest.isTrue);
    unittest.expect(o.inspectTemplate!, unittest.equals('foo'));
  }
  buildCounterRedactionConfig--;
}

core.Map<core.String, core.String> buildUnnamed143() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed143(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed144() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed144(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterRemoteA2aConfig = 0;
api.RemoteA2aConfig buildRemoteA2aConfig() {
  final o = api.RemoteA2aConfig();
  buildCounterRemoteA2aConfig++;
  if (buildCounterRemoteA2aConfig < 3) {
    o.agentCard = buildAgentCard();
    o.agentRegistry = 'foo';
    o.apiAuthentication = buildApiAuthentication();
    o.contextId = 'foo';
    o.inputVariableMapping = buildUnnamed143();
    o.outputVariableMapping = buildUnnamed144();
    o.streamingEnabled = true;
  }
  buildCounterRemoteA2aConfig--;
  return o;
}

void checkRemoteA2aConfig(api.RemoteA2aConfig o) {
  buildCounterRemoteA2aConfig++;
  if (buildCounterRemoteA2aConfig < 3) {
    checkAgentCard(o.agentCard!);
    unittest.expect(o.agentRegistry!, unittest.equals('foo'));
    checkApiAuthentication(o.apiAuthentication!);
    unittest.expect(o.contextId!, unittest.equals('foo'));
    checkUnnamed143(o.inputVariableMapping!);
    checkUnnamed144(o.outputVariableMapping!);
    unittest.expect(o.streamingEnabled!, unittest.isTrue);
  }
  buildCounterRemoteA2aConfig--;
}

core.Map<core.String, core.String> buildUnnamed145() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed145(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed146() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed146(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterRemoteAgentTool = 0;
api.RemoteAgentTool buildRemoteAgentTool() {
  final o = api.RemoteAgentTool();
  buildCounterRemoteAgentTool++;
  if (buildCounterRemoteAgentTool < 3) {
    o.agentCard = buildAgentCard();
    o.apiAuthentication = buildApiAuthentication();
    o.description = 'foo';
    o.inputVariableMapping = buildUnnamed145();
    o.name = 'foo';
    o.outputVariableMapping = buildUnnamed146();
    o.statefulAgent = true;
  }
  buildCounterRemoteAgentTool--;
  return o;
}

void checkRemoteAgentTool(api.RemoteAgentTool o) {
  buildCounterRemoteAgentTool++;
  if (buildCounterRemoteAgentTool < 3) {
    checkAgentCard(o.agentCard!);
    checkApiAuthentication(o.apiAuthentication!);
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed145(o.inputVariableMapping!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed146(o.outputVariableMapping!);
    unittest.expect(o.statefulAgent!, unittest.isTrue);
  }
  buildCounterRemoteAgentTool--;
}

core.int buildCounterRestoreAppVersionRequest = 0;
api.RestoreAppVersionRequest buildRestoreAppVersionRequest() {
  final o = api.RestoreAppVersionRequest();
  buildCounterRestoreAppVersionRequest++;
  if (buildCounterRestoreAppVersionRequest < 3) {}
  buildCounterRestoreAppVersionRequest--;
  return o;
}

void checkRestoreAppVersionRequest(api.RestoreAppVersionRequest o) {
  buildCounterRestoreAppVersionRequest++;
  if (buildCounterRestoreAppVersionRequest < 3) {}
  buildCounterRestoreAppVersionRequest--;
}

core.int buildCounterRetrieveToolSchemaRequest = 0;
api.RetrieveToolSchemaRequest buildRetrieveToolSchemaRequest() {
  final o = api.RetrieveToolSchemaRequest();
  buildCounterRetrieveToolSchemaRequest++;
  if (buildCounterRetrieveToolSchemaRequest < 3) {
    o.tool = 'foo';
    o.toolsetTool = buildToolsetTool();
  }
  buildCounterRetrieveToolSchemaRequest--;
  return o;
}

void checkRetrieveToolSchemaRequest(api.RetrieveToolSchemaRequest o) {
  buildCounterRetrieveToolSchemaRequest++;
  if (buildCounterRetrieveToolSchemaRequest < 3) {
    unittest.expect(o.tool!, unittest.equals('foo'));
    checkToolsetTool(o.toolsetTool!);
  }
  buildCounterRetrieveToolSchemaRequest--;
}

core.int buildCounterRetrieveToolSchemaResponse = 0;
api.RetrieveToolSchemaResponse buildRetrieveToolSchemaResponse() {
  final o = api.RetrieveToolSchemaResponse();
  buildCounterRetrieveToolSchemaResponse++;
  if (buildCounterRetrieveToolSchemaResponse < 3) {
    o.inputSchema = buildSchema();
    o.outputSchema = buildSchema();
    o.tool = 'foo';
    o.toolsetTool = buildToolsetTool();
  }
  buildCounterRetrieveToolSchemaResponse--;
  return o;
}

void checkRetrieveToolSchemaResponse(api.RetrieveToolSchemaResponse o) {
  buildCounterRetrieveToolSchemaResponse++;
  if (buildCounterRetrieveToolSchemaResponse < 3) {
    checkSchema(o.inputSchema!);
    checkSchema(o.outputSchema!);
    unittest.expect(o.tool!, unittest.equals('foo'));
    checkToolsetTool(o.toolsetTool!);
  }
  buildCounterRetrieveToolSchemaResponse--;
}

core.List<core.String> buildUnnamed147() => ['foo', 'foo'];

void checkUnnamed147(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRetrieveToolsRequest = 0;
api.RetrieveToolsRequest buildRetrieveToolsRequest() {
  final o = api.RetrieveToolsRequest();
  buildCounterRetrieveToolsRequest++;
  if (buildCounterRetrieveToolsRequest < 3) {
    o.bypassPersistenceConfig = true;
    o.toolIds = buildUnnamed147();
  }
  buildCounterRetrieveToolsRequest--;
  return o;
}

void checkRetrieveToolsRequest(api.RetrieveToolsRequest o) {
  buildCounterRetrieveToolsRequest++;
  if (buildCounterRetrieveToolsRequest < 3) {
    unittest.expect(o.bypassPersistenceConfig!, unittest.isTrue);
    checkUnnamed147(o.toolIds!);
  }
  buildCounterRetrieveToolsRequest--;
}

core.List<api.Tool> buildUnnamed148() => [buildTool(), buildTool()];

void checkUnnamed148(core.List<api.Tool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTool(o[0]);
  checkTool(o[1]);
}

core.int buildCounterRetrieveToolsResponse = 0;
api.RetrieveToolsResponse buildRetrieveToolsResponse() {
  final o = api.RetrieveToolsResponse();
  buildCounterRetrieveToolsResponse++;
  if (buildCounterRetrieveToolsResponse < 3) {
    o.tools = buildUnnamed148();
  }
  buildCounterRetrieveToolsResponse--;
  return o;
}

void checkRetrieveToolsResponse(api.RetrieveToolsResponse o) {
  buildCounterRetrieveToolsResponse++;
  if (buildCounterRetrieveToolsResponse < 3) {
    checkUnnamed148(o.tools!);
  }
  buildCounterRetrieveToolsResponse--;
}

core.List<api.SessionInput> buildUnnamed149() => [
  buildSessionInput(),
  buildSessionInput(),
];

void checkUnnamed149(core.List<api.SessionInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSessionInput(o[0]);
  checkSessionInput(o[1]);
}

core.int buildCounterRunSessionRequest = 0;
api.RunSessionRequest buildRunSessionRequest() {
  final o = api.RunSessionRequest();
  buildCounterRunSessionRequest++;
  if (buildCounterRunSessionRequest < 3) {
    o.config = buildSessionConfig();
    o.inputs = buildUnnamed149();
  }
  buildCounterRunSessionRequest--;
  return o;
}

void checkRunSessionRequest(api.RunSessionRequest o) {
  buildCounterRunSessionRequest++;
  if (buildCounterRunSessionRequest < 3) {
    checkSessionConfig(o.config!);
    checkUnnamed149(o.inputs!);
  }
  buildCounterRunSessionRequest--;
}

core.List<api.SessionOutput> buildUnnamed150() => [
  buildSessionOutput(),
  buildSessionOutput(),
];

void checkUnnamed150(core.List<api.SessionOutput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSessionOutput(o[0]);
  checkSessionOutput(o[1]);
}

core.int buildCounterRunSessionResponse = 0;
api.RunSessionResponse buildRunSessionResponse() {
  final o = api.RunSessionResponse();
  buildCounterRunSessionResponse++;
  if (buildCounterRunSessionResponse < 3) {
    o.outputs = buildUnnamed150();
  }
  buildCounterRunSessionResponse--;
  return o;
}

void checkRunSessionResponse(api.RunSessionResponse o) {
  buildCounterRunSessionResponse++;
  if (buildCounterRunSessionResponse < 3) {
    checkUnnamed150(o.outputs!);
  }
  buildCounterRunSessionResponse--;
}

core.List<api.Schema> buildUnnamed151() => [buildSchema(), buildSchema()];

void checkUnnamed151(core.List<api.Schema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchema(o[0]);
  checkSchema(o[1]);
}

core.Map<core.String, api.Schema> buildUnnamed152() => {
  'x': buildSchema(),
  'y': buildSchema(),
};

void checkUnnamed152(core.Map<core.String, api.Schema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchema(o['x']!);
  checkSchema(o['y']!);
}

core.List<core.String> buildUnnamed153() => ['foo', 'foo'];

void checkUnnamed153(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Schema> buildUnnamed154() => [buildSchema(), buildSchema()];

void checkUnnamed154(core.List<api.Schema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchema(o[0]);
  checkSchema(o[1]);
}

core.Map<core.String, api.Schema> buildUnnamed155() => {
  'x': buildSchema(),
  'y': buildSchema(),
};

void checkUnnamed155(core.Map<core.String, api.Schema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchema(o['x']!);
  checkSchema(o['y']!);
}

core.List<core.String> buildUnnamed156() => ['foo', 'foo'];

void checkUnnamed156(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSchema = 0;
api.Schema buildSchema() {
  final o = api.Schema();
  buildCounterSchema++;
  if (buildCounterSchema < 3) {
    o.additionalProperties = buildSchema();
    o.anyOf = buildUnnamed151();
    o.default_ = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
    o.defs = buildUnnamed152();
    o.description = 'foo';
    o.enum_ = buildUnnamed153();
    o.items = buildSchema();
    o.maxItems = 'foo';
    o.maximum = 42.0;
    o.minItems = 'foo';
    o.minimum = 42.0;
    o.nullable = true;
    o.prefixItems = buildUnnamed154();
    o.properties = buildUnnamed155();
    o.ref = 'foo';
    o.required = buildUnnamed156();
    o.title = 'foo';
    o.type = 'foo';
    o.uniqueItems = true;
  }
  buildCounterSchema--;
  return o;
}

void checkSchema(api.Schema o) {
  buildCounterSchema++;
  if (buildCounterSchema < 3) {
    checkSchema(o.additionalProperties!);
    checkUnnamed151(o.anyOf!);
    var casted56 = (o.default_!) as core.Map;
    unittest.expect(casted56, unittest.hasLength(3));
    unittest.expect(casted56['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted56['bool'], unittest.equals(true));
    unittest.expect(casted56['string'], unittest.equals('foo'));
    checkUnnamed152(o.defs!);
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed153(o.enum_!);
    checkSchema(o.items!);
    unittest.expect(o.maxItems!, unittest.equals('foo'));
    unittest.expect(o.maximum!, unittest.equals(42.0));
    unittest.expect(o.minItems!, unittest.equals('foo'));
    unittest.expect(o.minimum!, unittest.equals(42.0));
    unittest.expect(o.nullable!, unittest.isTrue);
    checkUnnamed154(o.prefixItems!);
    checkUnnamed155(o.properties!);
    unittest.expect(o.ref!, unittest.equals('foo'));
    checkUnnamed156(o.required!);
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uniqueItems!, unittest.isTrue);
  }
  buildCounterSchema--;
}

core.List<core.String> buildUnnamed157() => ['foo', 'foo'];

void checkUnnamed157(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterServiceAccountAuthConfig = 0;
api.ServiceAccountAuthConfig buildServiceAccountAuthConfig() {
  final o = api.ServiceAccountAuthConfig();
  buildCounterServiceAccountAuthConfig++;
  if (buildCounterServiceAccountAuthConfig < 3) {
    o.scopes = buildUnnamed157();
    o.serviceAccount = 'foo';
  }
  buildCounterServiceAccountAuthConfig--;
  return o;
}

void checkServiceAccountAuthConfig(api.ServiceAccountAuthConfig o) {
  buildCounterServiceAccountAuthConfig++;
  if (buildCounterServiceAccountAuthConfig < 3) {
    checkUnnamed157(o.scopes!);
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
  }
  buildCounterServiceAccountAuthConfig--;
}

core.int buildCounterServiceAgentIdTokenAuthConfig = 0;
api.ServiceAgentIdTokenAuthConfig buildServiceAgentIdTokenAuthConfig() {
  final o = api.ServiceAgentIdTokenAuthConfig();
  buildCounterServiceAgentIdTokenAuthConfig++;
  if (buildCounterServiceAgentIdTokenAuthConfig < 3) {}
  buildCounterServiceAgentIdTokenAuthConfig--;
  return o;
}

void checkServiceAgentIdTokenAuthConfig(api.ServiceAgentIdTokenAuthConfig o) {
  buildCounterServiceAgentIdTokenAuthConfig++;
  if (buildCounterServiceAgentIdTokenAuthConfig < 3) {}
  buildCounterServiceAgentIdTokenAuthConfig--;
}

core.int buildCounterServiceDirectoryConfig = 0;
api.ServiceDirectoryConfig buildServiceDirectoryConfig() {
  final o = api.ServiceDirectoryConfig();
  buildCounterServiceDirectoryConfig++;
  if (buildCounterServiceDirectoryConfig < 3) {
    o.service = 'foo';
  }
  buildCounterServiceDirectoryConfig--;
  return o;
}

void checkServiceDirectoryConfig(api.ServiceDirectoryConfig o) {
  buildCounterServiceDirectoryConfig++;
  if (buildCounterServiceDirectoryConfig < 3) {
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterServiceDirectoryConfig--;
}

core.List<api.Message> buildUnnamed158() => [buildMessage(), buildMessage()];

void checkUnnamed158(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.int buildCounterSessionConfig = 0;
api.SessionConfig buildSessionConfig() {
  final o = api.SessionConfig();
  buildCounterSessionConfig++;
  if (buildCounterSessionConfig < 3) {
    o.deployment = 'foo';
    o.enableTextStreaming = true;
    o.entryAgent = 'foo';
    o.excludeDiagnosticInfo = true;
    o.historicalContexts = buildUnnamed158();
    o.inputAudioConfig = buildInputAudioConfig();
    o.outputAudioConfig = buildOutputAudioConfig();
    o.remoteDialogflowQueryParameters =
        buildSessionConfigRemoteDialogflowQueryParameters();
    o.timeZone = 'foo';
    o.useToolFakes = true;
  }
  buildCounterSessionConfig--;
  return o;
}

void checkSessionConfig(api.SessionConfig o) {
  buildCounterSessionConfig++;
  if (buildCounterSessionConfig < 3) {
    unittest.expect(o.deployment!, unittest.equals('foo'));
    unittest.expect(o.enableTextStreaming!, unittest.isTrue);
    unittest.expect(o.entryAgent!, unittest.equals('foo'));
    unittest.expect(o.excludeDiagnosticInfo!, unittest.isTrue);
    checkUnnamed158(o.historicalContexts!);
    checkInputAudioConfig(o.inputAudioConfig!);
    checkOutputAudioConfig(o.outputAudioConfig!);
    checkSessionConfigRemoteDialogflowQueryParameters(
      o.remoteDialogflowQueryParameters!,
    );
    unittest.expect(o.timeZone!, unittest.equals('foo'));
    unittest.expect(o.useToolFakes!, unittest.isTrue);
  }
  buildCounterSessionConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed159() => {
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

void checkUnnamed159(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted57 = (o['x']!) as core.Map;
  unittest.expect(casted57, unittest.hasLength(3));
  unittest.expect(casted57['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted57['bool'], unittest.equals(true));
  unittest.expect(casted57['string'], unittest.equals('foo'));
  var casted58 = (o['y']!) as core.Map;
  unittest.expect(casted58, unittest.hasLength(3));
  unittest.expect(casted58['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted58['bool'], unittest.equals(true));
  unittest.expect(casted58['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed160() => {
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

void checkUnnamed160(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted59 = (o['x']!) as core.Map;
  unittest.expect(casted59, unittest.hasLength(3));
  unittest.expect(casted59['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted59['bool'], unittest.equals(true));
  unittest.expect(casted59['string'], unittest.equals('foo'));
  var casted60 = (o['y']!) as core.Map;
  unittest.expect(casted60, unittest.hasLength(3));
  unittest.expect(casted60['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted60['bool'], unittest.equals(true));
  unittest.expect(casted60['string'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed161() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed161(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSessionConfigRemoteDialogflowQueryParameters = 0;
api.SessionConfigRemoteDialogflowQueryParameters
buildSessionConfigRemoteDialogflowQueryParameters() {
  final o = api.SessionConfigRemoteDialogflowQueryParameters();
  buildCounterSessionConfigRemoteDialogflowQueryParameters++;
  if (buildCounterSessionConfigRemoteDialogflowQueryParameters < 3) {
    o.endUserMetadata = buildUnnamed159();
    o.payload = buildUnnamed160();
    o.webhookHeaders = buildUnnamed161();
  }
  buildCounterSessionConfigRemoteDialogflowQueryParameters--;
  return o;
}

void checkSessionConfigRemoteDialogflowQueryParameters(
  api.SessionConfigRemoteDialogflowQueryParameters o,
) {
  buildCounterSessionConfigRemoteDialogflowQueryParameters++;
  if (buildCounterSessionConfigRemoteDialogflowQueryParameters < 3) {
    checkUnnamed159(o.endUserMetadata!);
    checkUnnamed160(o.payload!);
    checkUnnamed161(o.webhookHeaders!);
  }
  buildCounterSessionConfigRemoteDialogflowQueryParameters--;
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
  var casted61 = (o['x']!) as core.Map;
  unittest.expect(casted61, unittest.hasLength(3));
  unittest.expect(casted61['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted61['bool'], unittest.equals(true));
  unittest.expect(casted61['string'], unittest.equals('foo'));
  var casted62 = (o['y']!) as core.Map;
  unittest.expect(casted62, unittest.hasLength(3));
  unittest.expect(casted62['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted62['bool'], unittest.equals(true));
  unittest.expect(casted62['string'], unittest.equals('foo'));
}

core.int buildCounterSessionInput = 0;
api.SessionInput buildSessionInput() {
  final o = api.SessionInput();
  buildCounterSessionInput++;
  if (buildCounterSessionInput < 3) {
    o.audio = 'foo';
    o.blob = buildBlob();
    o.dtmf = 'foo';
    o.event = buildEvent();
    o.image = buildImage();
    o.text = 'foo';
    o.toolResponses = buildToolResponses();
    o.variables = buildUnnamed162();
    o.willContinue = true;
  }
  buildCounterSessionInput--;
  return o;
}

void checkSessionInput(api.SessionInput o) {
  buildCounterSessionInput++;
  if (buildCounterSessionInput < 3) {
    unittest.expect(o.audio!, unittest.equals('foo'));
    checkBlob(o.blob!);
    unittest.expect(o.dtmf!, unittest.equals('foo'));
    checkEvent(o.event!);
    checkImage(o.image!);
    unittest.expect(o.text!, unittest.equals('foo'));
    checkToolResponses(o.toolResponses!);
    checkUnnamed162(o.variables!);
    unittest.expect(o.willContinue!, unittest.isTrue);
  }
  buildCounterSessionInput--;
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
  var casted63 = (o['x']!) as core.Map;
  unittest.expect(casted63, unittest.hasLength(3));
  unittest.expect(casted63['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted63['bool'], unittest.equals(true));
  unittest.expect(casted63['string'], unittest.equals('foo'));
  var casted64 = (o['y']!) as core.Map;
  unittest.expect(casted64, unittest.hasLength(3));
  unittest.expect(casted64['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted64['bool'], unittest.equals(true));
  unittest.expect(casted64['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed164() => [
  buildUnnamed163(),
  buildUnnamed163(),
];

void checkUnnamed164(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed163(o[0]);
  checkUnnamed163(o[1]);
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
  var casted65 = (o['x']!) as core.Map;
  unittest.expect(casted65, unittest.hasLength(3));
  unittest.expect(casted65['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted65['bool'], unittest.equals(true));
  unittest.expect(casted65['string'], unittest.equals('foo'));
  var casted66 = (o['y']!) as core.Map;
  unittest.expect(casted66, unittest.hasLength(3));
  unittest.expect(casted66['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted66['bool'], unittest.equals(true));
  unittest.expect(casted66['string'], unittest.equals('foo'));
}

core.int buildCounterSessionOutput = 0;
api.SessionOutput buildSessionOutput() {
  final o = api.SessionOutput();
  buildCounterSessionOutput++;
  if (buildCounterSessionOutput < 3) {
    o.audio = 'foo';
    o.citations = buildCitations();
    o.context = buildUnnamed164();
    o.diagnosticInfo = buildSessionOutputDiagnosticInfo();
    o.endSession = buildEndSession();
    o.googleSearchSuggestions = buildGoogleSearchSuggestions();
    o.image = buildImage();
    o.payload = buildUnnamed165();
    o.progress = 'foo';
    o.text = 'foo';
    o.toolCalls = buildToolCalls();
    o.turnCompleted = true;
    o.turnIndex = 42;
  }
  buildCounterSessionOutput--;
  return o;
}

void checkSessionOutput(api.SessionOutput o) {
  buildCounterSessionOutput++;
  if (buildCounterSessionOutput < 3) {
    unittest.expect(o.audio!, unittest.equals('foo'));
    checkCitations(o.citations!);
    checkUnnamed164(o.context!);
    checkSessionOutputDiagnosticInfo(o.diagnosticInfo!);
    checkEndSession(o.endSession!);
    checkGoogleSearchSuggestions(o.googleSearchSuggestions!);
    checkImage(o.image!);
    checkUnnamed165(o.payload!);
    unittest.expect(o.progress!, unittest.equals('foo'));
    unittest.expect(o.text!, unittest.equals('foo'));
    checkToolCalls(o.toolCalls!);
    unittest.expect(o.turnCompleted!, unittest.isTrue);
    unittest.expect(o.turnIndex!, unittest.equals(42));
  }
  buildCounterSessionOutput--;
}

core.List<api.Message> buildUnnamed166() => [buildMessage(), buildMessage()];

void checkUnnamed166(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.int buildCounterSessionOutputDiagnosticInfo = 0;
api.SessionOutputDiagnosticInfo buildSessionOutputDiagnosticInfo() {
  final o = api.SessionOutputDiagnosticInfo();
  buildCounterSessionOutputDiagnosticInfo++;
  if (buildCounterSessionOutputDiagnosticInfo < 3) {
    o.messages = buildUnnamed166();
    o.rootSpan = buildSpan();
  }
  buildCounterSessionOutputDiagnosticInfo--;
  return o;
}

void checkSessionOutputDiagnosticInfo(api.SessionOutputDiagnosticInfo o) {
  buildCounterSessionOutputDiagnosticInfo++;
  if (buildCounterSessionOutputDiagnosticInfo < 3) {
    checkUnnamed166(o.messages!);
    checkSpan(o.rootSpan!);
  }
  buildCounterSessionOutputDiagnosticInfo--;
}

core.Map<core.String, core.Object?> buildUnnamed167() => {
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

void checkUnnamed167(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted67 = (o['x']!) as core.Map;
  unittest.expect(casted67, unittest.hasLength(3));
  unittest.expect(casted67['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted67['bool'], unittest.equals(true));
  unittest.expect(casted67['string'], unittest.equals('foo'));
  var casted68 = (o['y']!) as core.Map;
  unittest.expect(casted68, unittest.hasLength(3));
  unittest.expect(casted68['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted68['bool'], unittest.equals(true));
  unittest.expect(casted68['string'], unittest.equals('foo'));
}

core.List<api.Span> buildUnnamed168() => [buildSpan(), buildSpan()];

void checkUnnamed168(core.List<api.Span> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpan(o[0]);
  checkSpan(o[1]);
}

core.int buildCounterSpan = 0;
api.Span buildSpan() {
  final o = api.Span();
  buildCounterSpan++;
  if (buildCounterSpan < 3) {
    o.attributes = buildUnnamed167();
    o.childSpans = buildUnnamed168();
    o.duration = 'foo';
    o.endTime = 'foo';
    o.name = 'foo';
    o.startTime = 'foo';
  }
  buildCounterSpan--;
  return o;
}

void checkSpan(api.Span o) {
  buildCounterSpan++;
  if (buildCounterSpan < 3) {
    checkUnnamed167(o.attributes!);
    checkUnnamed168(o.childSpans!);
    unittest.expect(o.duration!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterSpan--;
}

core.Map<core.String, core.Object?> buildUnnamed169() => {
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

void checkUnnamed169(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted69 = (o['x']!) as core.Map;
  unittest.expect(casted69, unittest.hasLength(3));
  unittest.expect(casted69['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted69['bool'], unittest.equals(true));
  unittest.expect(casted69['string'], unittest.equals('foo'));
  var casted70 = (o['y']!) as core.Map;
  unittest.expect(casted70, unittest.hasLength(3));
  unittest.expect(casted70['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted70['bool'], unittest.equals(true));
  unittest.expect(casted70['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed170() => [
  buildUnnamed169(),
  buildUnnamed169(),
];

void checkUnnamed170(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed169(o[0]);
  checkUnnamed169(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed170();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed170(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterSynthesizeSpeechConfig = 0;
api.SynthesizeSpeechConfig buildSynthesizeSpeechConfig() {
  final o = api.SynthesizeSpeechConfig();
  buildCounterSynthesizeSpeechConfig++;
  if (buildCounterSynthesizeSpeechConfig < 3) {
    o.consentAudioGcsUri = 'foo';
    o.instruction = 'foo';
    o.model = 'foo';
    o.speakingRate = 42.0;
    o.voice = 'foo';
    o.voiceSampleGcsUri = 'foo';
  }
  buildCounterSynthesizeSpeechConfig--;
  return o;
}

void checkSynthesizeSpeechConfig(api.SynthesizeSpeechConfig o) {
  buildCounterSynthesizeSpeechConfig++;
  if (buildCounterSynthesizeSpeechConfig < 3) {
    unittest.expect(o.consentAudioGcsUri!, unittest.equals('foo'));
    unittest.expect(o.instruction!, unittest.equals('foo'));
    unittest.expect(o.model!, unittest.equals('foo'));
    unittest.expect(o.speakingRate!, unittest.equals(42.0));
    unittest.expect(o.voice!, unittest.equals('foo'));
    unittest.expect(o.voiceSampleGcsUri!, unittest.equals('foo'));
  }
  buildCounterSynthesizeSpeechConfig--;
}

core.int buildCounterSystemTool = 0;
api.SystemTool buildSystemTool() {
  final o = api.SystemTool();
  buildCounterSystemTool++;
  if (buildCounterSystemTool < 3) {
    o.description = 'foo';
    o.name = 'foo';
  }
  buildCounterSystemTool--;
  return o;
}

void checkSystemTool(api.SystemTool o) {
  buildCounterSystemTool++;
  if (buildCounterSystemTool < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterSystemTool--;
}

core.int buildCounterTimeZoneSettings = 0;
api.TimeZoneSettings buildTimeZoneSettings() {
  final o = api.TimeZoneSettings();
  buildCounterTimeZoneSettings++;
  if (buildCounterTimeZoneSettings < 3) {
    o.timeZone = 'foo';
  }
  buildCounterTimeZoneSettings--;
  return o;
}

void checkTimeZoneSettings(api.TimeZoneSettings o) {
  buildCounterTimeZoneSettings++;
  if (buildCounterTimeZoneSettings < 3) {
    unittest.expect(o.timeZone!, unittest.equals('foo'));
  }
  buildCounterTimeZoneSettings--;
}

core.List<api.TlsConfigCaCert> buildUnnamed171() => [
  buildTlsConfigCaCert(),
  buildTlsConfigCaCert(),
];

void checkUnnamed171(core.List<api.TlsConfigCaCert> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTlsConfigCaCert(o[0]);
  checkTlsConfigCaCert(o[1]);
}

core.int buildCounterTlsConfig = 0;
api.TlsConfig buildTlsConfig() {
  final o = api.TlsConfig();
  buildCounterTlsConfig++;
  if (buildCounterTlsConfig < 3) {
    o.caCerts = buildUnnamed171();
  }
  buildCounterTlsConfig--;
  return o;
}

void checkTlsConfig(api.TlsConfig o) {
  buildCounterTlsConfig++;
  if (buildCounterTlsConfig < 3) {
    checkUnnamed171(o.caCerts!);
  }
  buildCounterTlsConfig--;
}

core.int buildCounterTlsConfigCaCert = 0;
api.TlsConfigCaCert buildTlsConfigCaCert() {
  final o = api.TlsConfigCaCert();
  buildCounterTlsConfigCaCert++;
  if (buildCounterTlsConfigCaCert < 3) {
    o.cert = 'foo';
    o.displayName = 'foo';
  }
  buildCounterTlsConfigCaCert--;
  return o;
}

void checkTlsConfigCaCert(api.TlsConfigCaCert o) {
  buildCounterTlsConfigCaCert++;
  if (buildCounterTlsConfigCaCert < 3) {
    unittest.expect(o.cert!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
  }
  buildCounterTlsConfigCaCert--;
}

core.int buildCounterTool = 0;
api.Tool buildTool() {
  final o = api.Tool();
  buildCounterTool++;
  if (buildCounterTool < 3) {
    o.agentTool = buildAgentTool();
    o.clientFunction = buildClientFunction();
    o.connectorTool = buildConnectorTool();
    o.createTime = 'foo';
    o.dataStoreTool = buildDataStoreTool();
    o.displayName = 'foo';
    o.etag = 'foo';
    o.executionType = 'foo';
    o.fileSearchTool = buildFileSearchTool();
    o.generatedSummary = 'foo';
    o.googleSearchTool = buildGoogleSearchTool();
    o.mcpTool = buildMcpTool();
    o.name = 'foo';
    o.openApiTool = buildOpenApiTool();
    o.pythonFunction = buildPythonFunction();
    o.remoteAgentTool = buildRemoteAgentTool();
    o.systemTool = buildSystemTool();
    o.timeout = 'foo';
    o.toolFakeConfig = buildToolFakeConfig();
    o.updateTime = 'foo';
    o.widgetTool = buildWidgetTool();
  }
  buildCounterTool--;
  return o;
}

void checkTool(api.Tool o) {
  buildCounterTool++;
  if (buildCounterTool < 3) {
    checkAgentTool(o.agentTool!);
    checkClientFunction(o.clientFunction!);
    checkConnectorTool(o.connectorTool!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDataStoreTool(o.dataStoreTool!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.executionType!, unittest.equals('foo'));
    checkFileSearchTool(o.fileSearchTool!);
    unittest.expect(o.generatedSummary!, unittest.equals('foo'));
    checkGoogleSearchTool(o.googleSearchTool!);
    checkMcpTool(o.mcpTool!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkOpenApiTool(o.openApiTool!);
    checkPythonFunction(o.pythonFunction!);
    checkRemoteAgentTool(o.remoteAgentTool!);
    checkSystemTool(o.systemTool!);
    unittest.expect(o.timeout!, unittest.equals('foo'));
    checkToolFakeConfig(o.toolFakeConfig!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkWidgetTool(o.widgetTool!);
  }
  buildCounterTool--;
}

core.Map<core.String, core.Object?> buildUnnamed172() => {
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

void checkUnnamed172(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted71 = (o['x']!) as core.Map;
  unittest.expect(casted71, unittest.hasLength(3));
  unittest.expect(casted71['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted71['bool'], unittest.equals(true));
  unittest.expect(casted71['string'], unittest.equals('foo'));
  var casted72 = (o['y']!) as core.Map;
  unittest.expect(casted72, unittest.hasLength(3));
  unittest.expect(casted72['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted72['bool'], unittest.equals(true));
  unittest.expect(casted72['string'], unittest.equals('foo'));
}

core.int buildCounterToolCall = 0;
api.ToolCall buildToolCall() {
  final o = api.ToolCall();
  buildCounterToolCall++;
  if (buildCounterToolCall < 3) {
    o.agentName = 'foo';
    o.args = buildUnnamed172();
    o.displayName = 'foo';
    o.id = 'foo';
    o.parentToolCallId = 'foo';
    o.tool = 'foo';
    o.toolsetTool = buildToolsetTool();
  }
  buildCounterToolCall--;
  return o;
}

void checkToolCall(api.ToolCall o) {
  buildCounterToolCall++;
  if (buildCounterToolCall < 3) {
    unittest.expect(o.agentName!, unittest.equals('foo'));
    checkUnnamed172(o.args!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.parentToolCallId!, unittest.equals('foo'));
    unittest.expect(o.tool!, unittest.equals('foo'));
    checkToolsetTool(o.toolsetTool!);
  }
  buildCounterToolCall--;
}

core.List<api.ToolCall> buildUnnamed173() => [buildToolCall(), buildToolCall()];

void checkUnnamed173(core.List<api.ToolCall> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToolCall(o[0]);
  checkToolCall(o[1]);
}

core.int buildCounterToolCalls = 0;
api.ToolCalls buildToolCalls() {
  final o = api.ToolCalls();
  buildCounterToolCalls++;
  if (buildCounterToolCalls < 3) {
    o.toolCalls = buildUnnamed173();
  }
  buildCounterToolCalls--;
  return o;
}

void checkToolCalls(api.ToolCalls o) {
  buildCounterToolCalls++;
  if (buildCounterToolCalls < 3) {
    checkUnnamed173(o.toolCalls!);
  }
  buildCounterToolCalls--;
}

core.int buildCounterToolFakeConfig = 0;
api.ToolFakeConfig buildToolFakeConfig() {
  final o = api.ToolFakeConfig();
  buildCounterToolFakeConfig++;
  if (buildCounterToolFakeConfig < 3) {
    o.codeBlock = buildCodeBlock();
    o.enableFakeMode = true;
  }
  buildCounterToolFakeConfig--;
  return o;
}

void checkToolFakeConfig(api.ToolFakeConfig o) {
  buildCounterToolFakeConfig++;
  if (buildCounterToolFakeConfig < 3) {
    checkCodeBlock(o.codeBlock!);
    unittest.expect(o.enableFakeMode!, unittest.isTrue);
  }
  buildCounterToolFakeConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed174() => {
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

void checkUnnamed174(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted73 = (o['x']!) as core.Map;
  unittest.expect(casted73, unittest.hasLength(3));
  unittest.expect(casted73['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted73['bool'], unittest.equals(true));
  unittest.expect(casted73['string'], unittest.equals('foo'));
  var casted74 = (o['y']!) as core.Map;
  unittest.expect(casted74, unittest.hasLength(3));
  unittest.expect(casted74['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted74['bool'], unittest.equals(true));
  unittest.expect(casted74['string'], unittest.equals('foo'));
}

core.int buildCounterToolResponse = 0;
api.ToolResponse buildToolResponse() {
  final o = api.ToolResponse();
  buildCounterToolResponse++;
  if (buildCounterToolResponse < 3) {
    o.agentName = 'foo';
    o.displayName = 'foo';
    o.id = 'foo';
    o.parentToolCallId = 'foo';
    o.response = buildUnnamed174();
    o.tool = 'foo';
    o.toolsetTool = buildToolsetTool();
  }
  buildCounterToolResponse--;
  return o;
}

void checkToolResponse(api.ToolResponse o) {
  buildCounterToolResponse++;
  if (buildCounterToolResponse < 3) {
    unittest.expect(o.agentName!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.parentToolCallId!, unittest.equals('foo'));
    checkUnnamed174(o.response!);
    unittest.expect(o.tool!, unittest.equals('foo'));
    checkToolsetTool(o.toolsetTool!);
  }
  buildCounterToolResponse--;
}

core.List<api.ToolResponse> buildUnnamed175() => [
  buildToolResponse(),
  buildToolResponse(),
];

void checkUnnamed175(core.List<api.ToolResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToolResponse(o[0]);
  checkToolResponse(o[1]);
}

core.int buildCounterToolResponses = 0;
api.ToolResponses buildToolResponses() {
  final o = api.ToolResponses();
  buildCounterToolResponses++;
  if (buildCounterToolResponses < 3) {
    o.toolResponses = buildUnnamed175();
  }
  buildCounterToolResponses--;
  return o;
}

void checkToolResponses(api.ToolResponses o) {
  buildCounterToolResponses++;
  if (buildCounterToolResponses < 3) {
    checkUnnamed175(o.toolResponses!);
  }
  buildCounterToolResponses--;
}

core.int buildCounterToolset = 0;
api.Toolset buildToolset() {
  final o = api.Toolset();
  buildCounterToolset++;
  if (buildCounterToolset < 3) {
    o.connectorToolset = buildConnectorToolset();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.executionType = 'foo';
    o.mcpToolset = buildMcpToolset();
    o.name = 'foo';
    o.openApiToolset = buildOpenApiToolset();
    o.timeout = 'foo';
    o.toolFakeConfig = buildToolFakeConfig();
    o.updateTime = 'foo';
  }
  buildCounterToolset--;
  return o;
}

void checkToolset(api.Toolset o) {
  buildCounterToolset++;
  if (buildCounterToolset < 3) {
    checkConnectorToolset(o.connectorToolset!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.executionType!, unittest.equals('foo'));
    checkMcpToolset(o.mcpToolset!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkOpenApiToolset(o.openApiToolset!);
    unittest.expect(o.timeout!, unittest.equals('foo'));
    checkToolFakeConfig(o.toolFakeConfig!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterToolset--;
}

core.int buildCounterToolsetTool = 0;
api.ToolsetTool buildToolsetTool() {
  final o = api.ToolsetTool();
  buildCounterToolsetTool++;
  if (buildCounterToolsetTool < 3) {
    o.toolId = 'foo';
    o.toolset = 'foo';
  }
  buildCounterToolsetTool--;
  return o;
}

void checkToolsetTool(api.ToolsetTool o) {
  buildCounterToolsetTool++;
  if (buildCounterToolsetTool < 3) {
    unittest.expect(o.toolId!, unittest.equals('foo'));
    unittest.expect(o.toolset!, unittest.equals('foo'));
  }
  buildCounterToolsetTool--;
}

core.int buildCounterTransferRule = 0;
api.TransferRule buildTransferRule() {
  final o = api.TransferRule();
  buildCounterTransferRule++;
  if (buildCounterTransferRule < 3) {
    o.childAgent = 'foo';
    o.deterministicTransfer = buildTransferRuleDeterministicTransfer();
    o.direction = 'foo';
    o.disablePlannerTransfer = buildTransferRuleDisablePlannerTransfer();
  }
  buildCounterTransferRule--;
  return o;
}

void checkTransferRule(api.TransferRule o) {
  buildCounterTransferRule++;
  if (buildCounterTransferRule < 3) {
    unittest.expect(o.childAgent!, unittest.equals('foo'));
    checkTransferRuleDeterministicTransfer(o.deterministicTransfer!);
    unittest.expect(o.direction!, unittest.equals('foo'));
    checkTransferRuleDisablePlannerTransfer(o.disablePlannerTransfer!);
  }
  buildCounterTransferRule--;
}

core.int buildCounterTransferRuleDeterministicTransfer = 0;
api.TransferRuleDeterministicTransfer buildTransferRuleDeterministicTransfer() {
  final o = api.TransferRuleDeterministicTransfer();
  buildCounterTransferRuleDeterministicTransfer++;
  if (buildCounterTransferRuleDeterministicTransfer < 3) {
    o.expressionCondition = buildExpressionCondition();
    o.pythonCodeCondition = buildPythonCodeCondition();
  }
  buildCounterTransferRuleDeterministicTransfer--;
  return o;
}

void checkTransferRuleDeterministicTransfer(
  api.TransferRuleDeterministicTransfer o,
) {
  buildCounterTransferRuleDeterministicTransfer++;
  if (buildCounterTransferRuleDeterministicTransfer < 3) {
    checkExpressionCondition(o.expressionCondition!);
    checkPythonCodeCondition(o.pythonCodeCondition!);
  }
  buildCounterTransferRuleDeterministicTransfer--;
}

core.int buildCounterTransferRuleDisablePlannerTransfer = 0;
api.TransferRuleDisablePlannerTransfer
buildTransferRuleDisablePlannerTransfer() {
  final o = api.TransferRuleDisablePlannerTransfer();
  buildCounterTransferRuleDisablePlannerTransfer++;
  if (buildCounterTransferRuleDisablePlannerTransfer < 3) {
    o.expressionCondition = buildExpressionCondition();
  }
  buildCounterTransferRuleDisablePlannerTransfer--;
  return o;
}

void checkTransferRuleDisablePlannerTransfer(
  api.TransferRuleDisablePlannerTransfer o,
) {
  buildCounterTransferRuleDisablePlannerTransfer++;
  if (buildCounterTransferRuleDisablePlannerTransfer < 3) {
    checkExpressionCondition(o.expressionCondition!);
  }
  buildCounterTransferRuleDisablePlannerTransfer--;
}

core.int buildCounterTriggerAction = 0;
api.TriggerAction buildTriggerAction() {
  final o = api.TriggerAction();
  buildCounterTriggerAction++;
  if (buildCounterTriggerAction < 3) {
    o.generativeAnswer = buildTriggerActionGenerativeAnswer();
    o.respondImmediately = buildTriggerActionRespondImmediately();
    o.transferAgent = buildTriggerActionTransferAgent();
  }
  buildCounterTriggerAction--;
  return o;
}

void checkTriggerAction(api.TriggerAction o) {
  buildCounterTriggerAction++;
  if (buildCounterTriggerAction < 3) {
    checkTriggerActionGenerativeAnswer(o.generativeAnswer!);
    checkTriggerActionRespondImmediately(o.respondImmediately!);
    checkTriggerActionTransferAgent(o.transferAgent!);
  }
  buildCounterTriggerAction--;
}

core.int buildCounterTriggerActionGenerativeAnswer = 0;
api.TriggerActionGenerativeAnswer buildTriggerActionGenerativeAnswer() {
  final o = api.TriggerActionGenerativeAnswer();
  buildCounterTriggerActionGenerativeAnswer++;
  if (buildCounterTriggerActionGenerativeAnswer < 3) {
    o.prompt = 'foo';
  }
  buildCounterTriggerActionGenerativeAnswer--;
  return o;
}

void checkTriggerActionGenerativeAnswer(api.TriggerActionGenerativeAnswer o) {
  buildCounterTriggerActionGenerativeAnswer++;
  if (buildCounterTriggerActionGenerativeAnswer < 3) {
    unittest.expect(o.prompt!, unittest.equals('foo'));
  }
  buildCounterTriggerActionGenerativeAnswer--;
}

core.List<api.TriggerActionResponse> buildUnnamed176() => [
  buildTriggerActionResponse(),
  buildTriggerActionResponse(),
];

void checkUnnamed176(core.List<api.TriggerActionResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTriggerActionResponse(o[0]);
  checkTriggerActionResponse(o[1]);
}

core.int buildCounterTriggerActionRespondImmediately = 0;
api.TriggerActionRespondImmediately buildTriggerActionRespondImmediately() {
  final o = api.TriggerActionRespondImmediately();
  buildCounterTriggerActionRespondImmediately++;
  if (buildCounterTriggerActionRespondImmediately < 3) {
    o.responses = buildUnnamed176();
  }
  buildCounterTriggerActionRespondImmediately--;
  return o;
}

void checkTriggerActionRespondImmediately(
  api.TriggerActionRespondImmediately o,
) {
  buildCounterTriggerActionRespondImmediately++;
  if (buildCounterTriggerActionRespondImmediately < 3) {
    checkUnnamed176(o.responses!);
  }
  buildCounterTriggerActionRespondImmediately--;
}

core.int buildCounterTriggerActionResponse = 0;
api.TriggerActionResponse buildTriggerActionResponse() {
  final o = api.TriggerActionResponse();
  buildCounterTriggerActionResponse++;
  if (buildCounterTriggerActionResponse < 3) {
    o.disabled = true;
    o.text = 'foo';
  }
  buildCounterTriggerActionResponse--;
  return o;
}

void checkTriggerActionResponse(api.TriggerActionResponse o) {
  buildCounterTriggerActionResponse++;
  if (buildCounterTriggerActionResponse < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterTriggerActionResponse--;
}

core.int buildCounterTriggerActionTransferAgent = 0;
api.TriggerActionTransferAgent buildTriggerActionTransferAgent() {
  final o = api.TriggerActionTransferAgent();
  buildCounterTriggerActionTransferAgent++;
  if (buildCounterTriggerActionTransferAgent < 3) {
    o.agent = 'foo';
  }
  buildCounterTriggerActionTransferAgent--;
  return o;
}

void checkTriggerActionTransferAgent(api.TriggerActionTransferAgent o) {
  buildCounterTriggerActionTransferAgent++;
  if (buildCounterTriggerActionTransferAgent < 3) {
    unittest.expect(o.agent!, unittest.equals('foo'));
  }
  buildCounterTriggerActionTransferAgent--;
}

core.List<core.String> buildUnnamed177() => ['foo', 'foo'];

void checkUnnamed177(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVpcScSettings = 0;
api.VpcScSettings buildVpcScSettings() {
  final o = api.VpcScSettings();
  buildCounterVpcScSettings++;
  if (buildCounterVpcScSettings < 3) {
    o.allowedOrigins = buildUnnamed177();
  }
  buildCounterVpcScSettings--;
  return o;
}

void checkVpcScSettings(api.VpcScSettings o) {
  buildCounterVpcScSettings++;
  if (buildCounterVpcScSettings < 3) {
    checkUnnamed177(o.allowedOrigins!);
  }
  buildCounterVpcScSettings--;
}

core.int buildCounterWebSearchQuery = 0;
api.WebSearchQuery buildWebSearchQuery() {
  final o = api.WebSearchQuery();
  buildCounterWebSearchQuery++;
  if (buildCounterWebSearchQuery < 3) {
    o.query = 'foo';
    o.uri = 'foo';
  }
  buildCounterWebSearchQuery--;
  return o;
}

void checkWebSearchQuery(api.WebSearchQuery o) {
  buildCounterWebSearchQuery++;
  if (buildCounterWebSearchQuery < 3) {
    unittest.expect(o.query!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterWebSearchQuery--;
}

core.int buildCounterWhatsAppCredentials = 0;
api.WhatsAppCredentials buildWhatsAppCredentials() {
  final o = api.WhatsAppCredentials();
  buildCounterWhatsAppCredentials++;
  if (buildCounterWhatsAppCredentials < 3) {
    o.authCode = 'foo';
    o.businessAccountId = 'foo';
    o.conversationProfileId = 'foo';
    o.phoneNumber = 'foo';
    o.pin = 'foo';
    o.wabaId = 'foo';
  }
  buildCounterWhatsAppCredentials--;
  return o;
}

void checkWhatsAppCredentials(api.WhatsAppCredentials o) {
  buildCounterWhatsAppCredentials++;
  if (buildCounterWhatsAppCredentials < 3) {
    unittest.expect(o.authCode!, unittest.equals('foo'));
    unittest.expect(o.businessAccountId!, unittest.equals('foo'));
    unittest.expect(o.conversationProfileId!, unittest.equals('foo'));
    unittest.expect(o.phoneNumber!, unittest.equals('foo'));
    unittest.expect(o.pin!, unittest.equals('foo'));
    unittest.expect(o.wabaId!, unittest.equals('foo'));
  }
  buildCounterWhatsAppCredentials--;
}

core.Map<core.String, core.Object?> buildUnnamed178() => {
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

void checkUnnamed178(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted75 = (o['x']!) as core.Map;
  unittest.expect(casted75, unittest.hasLength(3));
  unittest.expect(casted75['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted75['bool'], unittest.equals(true));
  unittest.expect(casted75['string'], unittest.equals('foo'));
  var casted76 = (o['y']!) as core.Map;
  unittest.expect(casted76, unittest.hasLength(3));
  unittest.expect(casted76['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted76['bool'], unittest.equals(true));
  unittest.expect(casted76['string'], unittest.equals('foo'));
}

core.int buildCounterWidgetTool = 0;
api.WidgetTool buildWidgetTool() {
  final o = api.WidgetTool();
  buildCounterWidgetTool++;
  if (buildCounterWidgetTool < 3) {
    o.dataMapping = buildWidgetToolDataMapping();
    o.description = 'foo';
    o.name = 'foo';
    o.parameters = buildSchema();
    o.textResponseConfig = buildWidgetToolTextResponseConfig();
    o.uiConfig = buildUnnamed178();
    o.widgetType = 'foo';
  }
  buildCounterWidgetTool--;
  return o;
}

void checkWidgetTool(api.WidgetTool o) {
  buildCounterWidgetTool++;
  if (buildCounterWidgetTool < 3) {
    checkWidgetToolDataMapping(o.dataMapping!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkSchema(o.parameters!);
    checkWidgetToolTextResponseConfig(o.textResponseConfig!);
    checkUnnamed178(o.uiConfig!);
    unittest.expect(o.widgetType!, unittest.equals('foo'));
  }
  buildCounterWidgetTool--;
}

core.Map<core.String, core.String> buildUnnamed179() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed179(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterWidgetToolDataMapping = 0;
api.WidgetToolDataMapping buildWidgetToolDataMapping() {
  final o = api.WidgetToolDataMapping();
  buildCounterWidgetToolDataMapping++;
  if (buildCounterWidgetToolDataMapping < 3) {
    o.fieldMappings = buildUnnamed179();
    o.mode = 'foo';
    o.pythonFunction = buildPythonFunction();
    o.pythonScript = 'foo';
    o.sourceToolName = 'foo';
  }
  buildCounterWidgetToolDataMapping--;
  return o;
}

void checkWidgetToolDataMapping(api.WidgetToolDataMapping o) {
  buildCounterWidgetToolDataMapping++;
  if (buildCounterWidgetToolDataMapping < 3) {
    checkUnnamed179(o.fieldMappings!);
    unittest.expect(o.mode!, unittest.equals('foo'));
    checkPythonFunction(o.pythonFunction!);
    unittest.expect(o.pythonScript!, unittest.equals('foo'));
    unittest.expect(o.sourceToolName!, unittest.equals('foo'));
  }
  buildCounterWidgetToolDataMapping--;
}

core.int buildCounterWidgetToolTextResponseConfig = 0;
api.WidgetToolTextResponseConfig buildWidgetToolTextResponseConfig() {
  final o = api.WidgetToolTextResponseConfig();
  buildCounterWidgetToolTextResponseConfig++;
  if (buildCounterWidgetToolTextResponseConfig < 3) {
    o.staticText = 'foo';
    o.textResponseInstruction = 'foo';
    o.type = 'foo';
  }
  buildCounterWidgetToolTextResponseConfig--;
  return o;
}

void checkWidgetToolTextResponseConfig(api.WidgetToolTextResponseConfig o) {
  buildCounterWidgetToolTextResponseConfig++;
  if (buildCounterWidgetToolTextResponseConfig < 3) {
    unittest.expect(o.staticText!, unittest.equals('foo'));
    unittest.expect(o.textResponseInstruction!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterWidgetToolTextResponseConfig--;
}

core.List<core.String> buildUnnamed180() => ['foo', 'foo'];

void checkUnnamed180(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed181() => ['foo', 'foo'];

void checkUnnamed181(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-Action', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Action.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAction(od);
    });
  });

  unittest.group('obj-schema-ActionEntityOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActionEntityOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActionEntityOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActionEntityOperation(od);
    });
  });

  unittest.group('obj-schema-Agent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Agent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgent(od);
    });
  });

  unittest.group('obj-schema-AgentAgentToolset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentAgentToolset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentAgentToolset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentAgentToolset(od);
    });
  });

  unittest.group('obj-schema-AgentCard', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentCard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentCard.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentCard(od);
    });
  });

  unittest.group('obj-schema-AgentInterface', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentInterface();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentInterface.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentInterface(od);
    });
  });

  unittest.group('obj-schema-AgentLlmAgent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentLlmAgent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentLlmAgent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentLlmAgent(od);
    });
  });

  unittest.group('obj-schema-AgentRegistryDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentRegistryDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentRegistryDeployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentRegistryDeployment(od);
    });
  });

  unittest.group('obj-schema-AgentRemoteA2aAgent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentRemoteA2aAgent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentRemoteA2aAgent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentRemoteA2aAgent(od);
    });
  });

  unittest.group('obj-schema-AgentRemoteDialogflowAgent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentRemoteDialogflowAgent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentRemoteDialogflowAgent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentRemoteDialogflowAgent(od);
    });
  });

  unittest.group('obj-schema-AgentSkill', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentSkill();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentSkill.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentSkill(od);
    });
  });

  unittest.group('obj-schema-AgentTool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentTool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentTool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentTool(od);
    });
  });

  unittest.group('obj-schema-AgentTransfer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAgentTransfer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AgentTransfer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAgentTransfer(od);
    });
  });

  unittest.group('obj-schema-AmbientSoundConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAmbientSoundConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AmbientSoundConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAmbientSoundConfig(od);
    });
  });

  unittest.group('obj-schema-ApiAuthentication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApiAuthentication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApiAuthentication.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApiAuthentication(od);
    });
  });

  unittest.group('obj-schema-ApiKeyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApiKeyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApiKeyConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApiKeyConfig(od);
    });
  });

  unittest.group('obj-schema-App', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.App.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkApp(od);
    });
  });

  unittest.group('obj-schema-AppSnapshot', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppSnapshot();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppSnapshot.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppSnapshot(od);
    });
  });

  unittest.group('obj-schema-AppVariableDeclaration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppVariableDeclaration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppVariableDeclaration.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppVariableDeclaration(od);
    });
  });

  unittest.group('obj-schema-AppVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppVersion(od);
    });
  });

  unittest.group('obj-schema-AudioProcessingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAudioProcessingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AudioProcessingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAudioProcessingConfig(od);
    });
  });

  unittest.group('obj-schema-AudioRecordingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAudioRecordingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AudioRecordingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAudioRecordingConfig(od);
    });
  });

  unittest.group('obj-schema-BargeInConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBargeInConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BargeInConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBargeInConfig(od);
    });
  });

  unittest.group('obj-schema-BatchDeleteConversationsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchDeleteConversationsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchDeleteConversationsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchDeleteConversationsRequest(od);
    });
  });

  unittest.group('obj-schema-BearerTokenConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBearerTokenConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BearerTokenConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBearerTokenConfig(od);
    });
  });

  unittest.group('obj-schema-BigQueryExportSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigQueryExportSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigQueryExportSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBigQueryExportSettings(od);
    });
  });

  unittest.group('obj-schema-Blob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Blob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBlob(od);
    });
  });

  unittest.group('obj-schema-Callback', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCallback();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Callback.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCallback(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-Changelog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChangelog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Changelog.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChangelog(od);
    });
  });

  unittest.group('obj-schema-ChannelProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelProfile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChannelProfile(od);
    });
  });

  unittest.group('obj-schema-ChannelProfileInstagramConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelProfileInstagramConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelProfileInstagramConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChannelProfileInstagramConfig(od);
    });
  });

  unittest.group('obj-schema-ChannelProfilePersonaProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelProfilePersonaProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelProfilePersonaProperty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChannelProfilePersonaProperty(od);
    });
  });

  unittest.group('obj-schema-ChannelProfileWebWidgetConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelProfileWebWidgetConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelProfileWebWidgetConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChannelProfileWebWidgetConfig(od);
    });
  });

  unittest.group(
    'obj-schema-ChannelProfileWebWidgetConfigSecuritySettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildChannelProfileWebWidgetConfigSecuritySettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.ChannelProfileWebWidgetConfigSecuritySettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkChannelProfileWebWidgetConfigSecuritySettings(od);
      });
    },
  );

  unittest.group('obj-schema-ChannelProfileWhatsAppConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelProfileWhatsAppConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelProfileWhatsAppConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChannelProfileWhatsAppConfig(od);
    });
  });

  unittest.group('obj-schema-Chunk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChunk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Chunk.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChunk(od);
    });
  });

  unittest.group('obj-schema-Citations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCitations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Citations.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCitations(od);
    });
  });

  unittest.group('obj-schema-CitationsCitedChunk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCitationsCitedChunk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CitationsCitedChunk.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCitationsCitedChunk(od);
    });
  });

  unittest.group('obj-schema-CitationsInlineCitation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCitationsInlineCitation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CitationsInlineCitation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCitationsInlineCitation(od);
    });
  });

  unittest.group('obj-schema-ClientCertificateSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientCertificateSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientCertificateSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClientCertificateSettings(od);
    });
  });

  unittest.group('obj-schema-ClientFunction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientFunction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientFunction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClientFunction(od);
    });
  });

  unittest.group('obj-schema-CloudLoggingSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudLoggingSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudLoggingSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudLoggingSettings(od);
    });
  });

  unittest.group('obj-schema-CodeBlock', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCodeBlock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CodeBlock.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCodeBlock(od);
    });
  });

  unittest.group('obj-schema-ConnectorTool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectorTool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectorTool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConnectorTool(od);
    });
  });

  unittest.group('obj-schema-ConnectorToolset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnectorToolset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConnectorToolset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConnectorToolset(od);
    });
  });

  unittest.group('obj-schema-Conversation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConversation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Conversation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConversation(od);
    });
  });

  unittest.group('obj-schema-ConversationLoggingSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConversationLoggingSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConversationLoggingSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConversationLoggingSettings(od);
    });
  });

  unittest.group('obj-schema-ConversationTurn', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConversationTurn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConversationTurn.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConversationTurn(od);
    });
  });

  unittest.group('obj-schema-CustomVoiceSample', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomVoiceSample();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomVoiceSample.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomVoiceSample(od);
    });
  });

  unittest.group('obj-schema-DashboardSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDashboardSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DashboardSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDashboardSettings(od);
    });
  });

  unittest.group('obj-schema-DataStore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataStore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataStore.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataStore(od);
    });
  });

  unittest.group('obj-schema-DataStoreConnectorConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataStoreConnectorConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataStoreConnectorConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataStoreConnectorConfig(od);
    });
  });

  unittest.group('obj-schema-DataStoreSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataStoreSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataStoreSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataStoreSettings(od);
    });
  });

  unittest.group('obj-schema-DataStoreSettingsEngine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataStoreSettingsEngine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataStoreSettingsEngine.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataStoreSettingsEngine(od);
    });
  });

  unittest.group('obj-schema-DataStoreTool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataStoreTool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataStoreTool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataStoreTool(od);
    });
  });

  unittest.group('obj-schema-DataStoreToolBoostSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataStoreToolBoostSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataStoreToolBoostSpec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataStoreToolBoostSpec(od);
    });
  });

  unittest.group('obj-schema-DataStoreToolBoostSpecConditionBoostSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataStoreToolBoostSpecConditionBoostSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataStoreToolBoostSpecConditionBoostSpec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataStoreToolBoostSpecConditionBoostSpec(od);
    });
  });

  unittest.group(
    'obj-schema-DataStoreToolBoostSpecConditionBoostSpecBoostControlSpec',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildDataStoreToolBoostSpecConditionBoostSpecBoostControlSpec();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.DataStoreToolBoostSpecConditionBoostSpecBoostControlSpec.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkDataStoreToolBoostSpecConditionBoostSpecBoostControlSpec(od);
      });
    },
  );

  unittest.group(
    'obj-schema-DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildDataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkDataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-DataStoreToolBoostSpecs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataStoreToolBoostSpecs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataStoreToolBoostSpecs.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataStoreToolBoostSpecs(od);
    });
  });

  unittest.group('obj-schema-DataStoreToolDataStoreSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataStoreToolDataStoreSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataStoreToolDataStoreSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataStoreToolDataStoreSource(od);
    });
  });

  unittest.group('obj-schema-DataStoreToolEngineSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataStoreToolEngineSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataStoreToolEngineSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataStoreToolEngineSource(od);
    });
  });

  unittest.group('obj-schema-DataStoreToolGroundingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataStoreToolGroundingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataStoreToolGroundingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataStoreToolGroundingConfig(od);
    });
  });

  unittest.group('obj-schema-DataStoreToolModalityConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataStoreToolModalityConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataStoreToolModalityConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataStoreToolModalityConfig(od);
    });
  });

  unittest.group('obj-schema-DataStoreToolRewriterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataStoreToolRewriterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataStoreToolRewriterConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataStoreToolRewriterConfig(od);
    });
  });

  unittest.group('obj-schema-DataStoreToolSnippetsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataStoreToolSnippetsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataStoreToolSnippetsConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataStoreToolSnippetsConfig(od);
    });
  });

  unittest.group('obj-schema-DataStoreToolSummarizationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataStoreToolSummarizationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataStoreToolSummarizationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataStoreToolSummarizationConfig(od);
    });
  });

  unittest.group('obj-schema-Deployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Deployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeployment(od);
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

  unittest.group('obj-schema-EndSession', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndSession();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndSession.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEndSession(od);
    });
  });

  unittest.group('obj-schema-EndUserAuthConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndUserAuthConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndUserAuthConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEndUserAuthConfig(od);
    });
  });

  unittest.group('obj-schema-EndUserAuthConfigOauth2AuthCodeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndUserAuthConfigOauth2AuthCodeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndUserAuthConfigOauth2AuthCodeConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEndUserAuthConfigOauth2AuthCodeConfig(od);
    });
  });

  unittest.group('obj-schema-EndUserAuthConfigOauth2JwtBearerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndUserAuthConfigOauth2JwtBearerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndUserAuthConfigOauth2JwtBearerConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEndUserAuthConfigOauth2JwtBearerConfig(od);
    });
  });

  unittest.group('obj-schema-ErrorHandlingSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorHandlingSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ErrorHandlingSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkErrorHandlingSettings(od);
    });
  });

  unittest.group('obj-schema-ErrorHandlingSettingsEndSessionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorHandlingSettingsEndSessionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ErrorHandlingSettingsEndSessionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkErrorHandlingSettingsEndSessionConfig(od);
    });
  });

  unittest.group('obj-schema-ErrorHandlingSettingsFallbackResponseConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorHandlingSettingsFallbackResponseConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ErrorHandlingSettingsFallbackResponseConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkErrorHandlingSettingsFallbackResponseConfig(od);
    });
  });

  unittest.group('obj-schema-EvaluationMetricsThresholds', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvaluationMetricsThresholds();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EvaluationMetricsThresholds.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEvaluationMetricsThresholds(od);
    });
  });

  unittest.group(
    'obj-schema-EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds(od);
      });
    },
  );

  unittest.group(
    'obj-schema-EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-EvaluationMetricsThresholdsToolMatchingSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildEvaluationMetricsThresholdsToolMatchingSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.EvaluationMetricsThresholdsToolMatchingSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkEvaluationMetricsThresholdsToolMatchingSettings(od);
      });
    },
  );

  unittest.group('obj-schema-Event', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Event.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEvent(od);
    });
  });

  unittest.group('obj-schema-Example', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExample();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Example.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExample(od);
    });
  });

  unittest.group('obj-schema-ExecuteToolRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteToolRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteToolRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecuteToolRequest(od);
    });
  });

  unittest.group('obj-schema-ExecuteToolResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteToolResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteToolResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecuteToolResponse(od);
    });
  });

  unittest.group('obj-schema-ExperimentConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExperimentConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExperimentConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExperimentConfig(od);
    });
  });

  unittest.group('obj-schema-ExperimentConfigVersionRelease', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExperimentConfigVersionRelease();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExperimentConfigVersionRelease.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExperimentConfigVersionRelease(od);
    });
  });

  unittest.group(
    'obj-schema-ExperimentConfigVersionReleaseTrafficAllocation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildExperimentConfigVersionReleaseTrafficAllocation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.ExperimentConfigVersionReleaseTrafficAllocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkExperimentConfigVersionReleaseTrafficAllocation(od);
      });
    },
  );

  unittest.group('obj-schema-ExportAppRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportAppRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportAppRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExportAppRequest(od);
    });
  });

  unittest.group('obj-schema-ExpressionCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpressionCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExpressionCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExpressionCondition(od);
    });
  });

  unittest.group('obj-schema-FileSearchTool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileSearchTool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileSearchTool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFileSearchTool(od);
    });
  });

  unittest.group('obj-schema-GenerateChatTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateChatTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateChatTokenRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateChatTokenRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateChatTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateChatTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateChatTokenResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateChatTokenResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleSearchSuggestions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSearchSuggestions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSearchSuggestions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleSearchSuggestions(od);
    });
  });

  unittest.group('obj-schema-GoogleSearchTool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSearchTool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSearchTool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleSearchTool(od);
    });
  });

  unittest.group('obj-schema-GoogleSearchToolPromptConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleSearchToolPromptConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleSearchToolPromptConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleSearchToolPromptConfig(od);
    });
  });

  unittest.group('obj-schema-Guardrail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuardrail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Guardrail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGuardrail(od);
    });
  });

  unittest.group('obj-schema-GuardrailCodeCallback', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuardrailCodeCallback();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuardrailCodeCallback.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGuardrailCodeCallback(od);
    });
  });

  unittest.group('obj-schema-GuardrailContentFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuardrailContentFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuardrailContentFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGuardrailContentFilter(od);
    });
  });

  unittest.group('obj-schema-GuardrailLlmPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuardrailLlmPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuardrailLlmPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGuardrailLlmPolicy(od);
    });
  });

  unittest.group('obj-schema-GuardrailLlmPromptSecurity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuardrailLlmPromptSecurity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuardrailLlmPromptSecurity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGuardrailLlmPromptSecurity(od);
    });
  });

  unittest.group(
    'obj-schema-GuardrailLlmPromptSecurityDefaultSecuritySettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGuardrailLlmPromptSecurityDefaultSecuritySettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GuardrailLlmPromptSecurityDefaultSecuritySettings.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGuardrailLlmPromptSecurityDefaultSecuritySettings(od);
      });
    },
  );

  unittest.group('obj-schema-GuardrailModelSafety', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuardrailModelSafety();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuardrailModelSafety.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGuardrailModelSafety(od);
    });
  });

  unittest.group('obj-schema-GuardrailModelSafetySafetySetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuardrailModelSafetySafetySetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuardrailModelSafetySafetySetting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGuardrailModelSafetySafetySetting(od);
    });
  });

  unittest.group('obj-schema-GuardrailSupervisor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuardrailSupervisor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuardrailSupervisor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGuardrailSupervisor(od);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Image.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImage(od);
    });
  });

  unittest.group('obj-schema-ImportAppRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportAppRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportAppRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImportAppRequest(od);
    });
  });

  unittest.group('obj-schema-ImportAppRequestImportOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportAppRequestImportOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportAppRequestImportOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImportAppRequestImportOptions(od);
    });
  });

  unittest.group('obj-schema-InputAudioConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputAudioConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputAudioConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInputAudioConfig(od);
    });
  });

  unittest.group('obj-schema-InstagramCredentials', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstagramCredentials();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstagramCredentials.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstagramCredentials(od);
    });
  });

  unittest.group('obj-schema-LanguageSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLanguageSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LanguageSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLanguageSettings(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1APIKeySecurityScheme', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1APIKeySecurityScheme();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1APIKeySecurityScheme.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1APIKeySecurityScheme(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1AgentCapabilities', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1AgentCapabilities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1AgentCapabilities.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1AgentCapabilities(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1AgentCard', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1AgentCard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1AgentCard.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1AgentCard(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1AgentCardSignature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1AgentCardSignature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1AgentCardSignature.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1AgentCardSignature(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1AgentExtension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1AgentExtension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1AgentExtension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1AgentExtension(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1AgentInterface', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1AgentInterface();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1AgentInterface.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1AgentInterface(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1AgentProvider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1AgentProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1AgentProvider.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1AgentProvider(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1AgentSkill', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1AgentSkill();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1AgentSkill.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1AgentSkill(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1Artifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1Artifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1Artifact.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1Artifact(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1AuthenticationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1AuthenticationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1AuthenticationInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1AuthenticationInfo(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1AuthorizationCodeOAuthFlow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1AuthorizationCodeOAuthFlow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1AuthorizationCodeOAuthFlow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1AuthorizationCodeOAuthFlow(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1ClientCredentialsOAuthFlow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1ClientCredentialsOAuthFlow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1ClientCredentialsOAuthFlow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1ClientCredentialsOAuthFlow(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1DeviceCodeOAuthFlow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1DeviceCodeOAuthFlow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1DeviceCodeOAuthFlow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1DeviceCodeOAuthFlow(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1HTTPAuthSecurityScheme', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1HTTPAuthSecurityScheme();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1HTTPAuthSecurityScheme.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1HTTPAuthSecurityScheme(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1ImplicitOAuthFlow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1ImplicitOAuthFlow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1ImplicitOAuthFlow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1ImplicitOAuthFlow(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1Message', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1Message();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1Message.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1Message(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1MutualTlsSecurityScheme', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1MutualTlsSecurityScheme();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1MutualTlsSecurityScheme.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1MutualTlsSecurityScheme(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1OAuth2SecurityScheme', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1OAuth2SecurityScheme();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1OAuth2SecurityScheme.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1OAuth2SecurityScheme(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1OAuthFlows', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1OAuthFlows();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1OAuthFlows.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1OAuthFlows(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1OpenIdConnectSecurityScheme', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1OpenIdConnectSecurityScheme();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1OpenIdConnectSecurityScheme.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1OpenIdConnectSecurityScheme(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1Part', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1Part();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1Part.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1Part(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1PasswordOAuthFlow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1PasswordOAuthFlow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1PasswordOAuthFlow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1PasswordOAuthFlow(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1SecurityRequirement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1SecurityRequirement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1SecurityRequirement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1SecurityRequirement(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1SecurityScheme', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1SecurityScheme();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1SecurityScheme.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1SecurityScheme(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1SendMessageConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1SendMessageConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1SendMessageConfiguration.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1SendMessageConfiguration(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1SendMessageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1SendMessageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1SendMessageRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1SendMessageRequest(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1SendMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1SendMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1SendMessageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1SendMessageResponse(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1StreamResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1StreamResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1StreamResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1StreamResponse(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1StringList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1StringList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1StringList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1StringList(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1Task', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1Task();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1Task.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1Task(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1TaskArtifactUpdateEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1TaskArtifactUpdateEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1TaskArtifactUpdateEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1TaskArtifactUpdateEvent(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1TaskPushNotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1TaskPushNotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1TaskPushNotificationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1TaskPushNotificationConfig(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1TaskStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1TaskStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1TaskStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1TaskStatus(od);
    });
  });

  unittest.group('obj-schema-LfA2aV1TaskStatusUpdateEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLfA2aV1TaskStatusUpdateEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LfA2aV1TaskStatusUpdateEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLfA2aV1TaskStatusUpdateEvent(od);
    });
  });

  unittest.group('obj-schema-ListAgentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAgentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAgentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAgentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAppVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAppVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAppVersionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAppVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAppsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAppsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAppsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAppsResponse(od);
    });
  });

  unittest.group('obj-schema-ListChangelogsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListChangelogsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListChangelogsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListChangelogsResponse(od);
    });
  });

  unittest.group('obj-schema-ListConversationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConversationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConversationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListConversationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDeploymentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDeploymentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDeploymentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDeploymentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListExamplesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListExamplesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListExamplesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListExamplesResponse(od);
    });
  });

  unittest.group('obj-schema-ListGuardrailsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGuardrailsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGuardrailsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGuardrailsResponse(od);
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

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListToolsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListToolsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListToolsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListToolsResponse(od);
    });
  });

  unittest.group('obj-schema-ListToolsetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListToolsetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListToolsetsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListToolsetsResponse(od);
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

  unittest.group('obj-schema-LoggingSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoggingSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoggingSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoggingSettings(od);
    });
  });

  unittest.group('obj-schema-McpTool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMcpTool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.McpTool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMcpTool(od);
    });
  });

  unittest.group('obj-schema-McpToolDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMcpToolDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.McpToolDefinition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMcpToolDefinition(od);
    });
  });

  unittest.group('obj-schema-McpToolOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMcpToolOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.McpToolOverride.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMcpToolOverride(od);
    });
  });

  unittest.group('obj-schema-McpToolset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMcpToolset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.McpToolset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMcpToolset(od);
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

  unittest.group('obj-schema-MetricAnalysisSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricAnalysisSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricAnalysisSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMetricAnalysisSettings(od);
    });
  });

  unittest.group('obj-schema-MockConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMockConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MockConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMockConfig(od);
    });
  });

  unittest.group('obj-schema-MockedToolCall', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMockedToolCall();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MockedToolCall.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMockedToolCall(od);
    });
  });

  unittest.group('obj-schema-ModelSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModelSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModelSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkModelSettings(od);
    });
  });

  unittest.group('obj-schema-OAuthConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOAuthConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OAuthConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOAuthConfig(od);
    });
  });

  unittest.group('obj-schema-OpenApiTool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOpenApiTool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OpenApiTool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOpenApiTool(od);
    });
  });

  unittest.group('obj-schema-OpenApiToolset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOpenApiToolset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OpenApiToolset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOpenApiToolset(od);
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

  unittest.group('obj-schema-OutputAudioConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOutputAudioConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OutputAudioConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOutputAudioConfig(od);
    });
  });

  unittest.group('obj-schema-PythonCodeCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPythonCodeCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PythonCodeCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPythonCodeCondition(od);
    });
  });

  unittest.group('obj-schema-PythonFunction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPythonFunction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PythonFunction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPythonFunction(od);
    });
  });

  unittest.group('obj-schema-RedactionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRedactionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RedactionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRedactionConfig(od);
    });
  });

  unittest.group('obj-schema-RemoteA2aConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoteA2aConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoteA2aConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoteA2aConfig(od);
    });
  });

  unittest.group('obj-schema-RemoteAgentTool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoteAgentTool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoteAgentTool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoteAgentTool(od);
    });
  });

  unittest.group('obj-schema-RestoreAppVersionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestoreAppVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestoreAppVersionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRestoreAppVersionRequest(od);
    });
  });

  unittest.group('obj-schema-RetrieveToolSchemaRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetrieveToolSchemaRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetrieveToolSchemaRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRetrieveToolSchemaRequest(od);
    });
  });

  unittest.group('obj-schema-RetrieveToolSchemaResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetrieveToolSchemaResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetrieveToolSchemaResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRetrieveToolSchemaResponse(od);
    });
  });

  unittest.group('obj-schema-RetrieveToolsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetrieveToolsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetrieveToolsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRetrieveToolsRequest(od);
    });
  });

  unittest.group('obj-schema-RetrieveToolsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetrieveToolsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetrieveToolsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRetrieveToolsResponse(od);
    });
  });

  unittest.group('obj-schema-RunSessionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunSessionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunSessionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunSessionRequest(od);
    });
  });

  unittest.group('obj-schema-RunSessionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunSessionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunSessionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunSessionResponse(od);
    });
  });

  unittest.group('obj-schema-Schema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Schema.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSchema(od);
    });
  });

  unittest.group('obj-schema-ServiceAccountAuthConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceAccountAuthConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceAccountAuthConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServiceAccountAuthConfig(od);
    });
  });

  unittest.group('obj-schema-ServiceAgentIdTokenAuthConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceAgentIdTokenAuthConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceAgentIdTokenAuthConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServiceAgentIdTokenAuthConfig(od);
    });
  });

  unittest.group('obj-schema-ServiceDirectoryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceDirectoryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceDirectoryConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServiceDirectoryConfig(od);
    });
  });

  unittest.group('obj-schema-SessionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSessionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SessionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSessionConfig(od);
    });
  });

  unittest.group('obj-schema-SessionConfigRemoteDialogflowQueryParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSessionConfigRemoteDialogflowQueryParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SessionConfigRemoteDialogflowQueryParameters.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSessionConfigRemoteDialogflowQueryParameters(od);
    });
  });

  unittest.group('obj-schema-SessionInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSessionInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SessionInput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSessionInput(od);
    });
  });

  unittest.group('obj-schema-SessionOutput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSessionOutput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SessionOutput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSessionOutput(od);
    });
  });

  unittest.group('obj-schema-SessionOutputDiagnosticInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSessionOutputDiagnosticInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SessionOutputDiagnosticInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSessionOutputDiagnosticInfo(od);
    });
  });

  unittest.group('obj-schema-Span', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Span.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSpan(od);
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

  unittest.group('obj-schema-SynthesizeSpeechConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSynthesizeSpeechConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SynthesizeSpeechConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSynthesizeSpeechConfig(od);
    });
  });

  unittest.group('obj-schema-SystemTool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSystemTool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SystemTool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSystemTool(od);
    });
  });

  unittest.group('obj-schema-TimeZoneSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeZoneSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeZoneSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeZoneSettings(od);
    });
  });

  unittest.group('obj-schema-TlsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTlsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TlsConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTlsConfig(od);
    });
  });

  unittest.group('obj-schema-TlsConfigCaCert', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTlsConfigCaCert();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TlsConfigCaCert.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTlsConfigCaCert(od);
    });
  });

  unittest.group('obj-schema-Tool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Tool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTool(od);
    });
  });

  unittest.group('obj-schema-ToolCall', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToolCall();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToolCall.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkToolCall(od);
    });
  });

  unittest.group('obj-schema-ToolCalls', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToolCalls();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToolCalls.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkToolCalls(od);
    });
  });

  unittest.group('obj-schema-ToolFakeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToolFakeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToolFakeConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkToolFakeConfig(od);
    });
  });

  unittest.group('obj-schema-ToolResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToolResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToolResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkToolResponse(od);
    });
  });

  unittest.group('obj-schema-ToolResponses', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToolResponses();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToolResponses.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkToolResponses(od);
    });
  });

  unittest.group('obj-schema-Toolset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToolset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Toolset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkToolset(od);
    });
  });

  unittest.group('obj-schema-ToolsetTool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToolsetTool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToolsetTool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkToolsetTool(od);
    });
  });

  unittest.group('obj-schema-TransferRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransferRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransferRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTransferRule(od);
    });
  });

  unittest.group('obj-schema-TransferRuleDeterministicTransfer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransferRuleDeterministicTransfer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransferRuleDeterministicTransfer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTransferRuleDeterministicTransfer(od);
    });
  });

  unittest.group('obj-schema-TransferRuleDisablePlannerTransfer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransferRuleDisablePlannerTransfer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransferRuleDisablePlannerTransfer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTransferRuleDisablePlannerTransfer(od);
    });
  });

  unittest.group('obj-schema-TriggerAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTriggerAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TriggerAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTriggerAction(od);
    });
  });

  unittest.group('obj-schema-TriggerActionGenerativeAnswer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTriggerActionGenerativeAnswer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TriggerActionGenerativeAnswer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTriggerActionGenerativeAnswer(od);
    });
  });

  unittest.group('obj-schema-TriggerActionRespondImmediately', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTriggerActionRespondImmediately();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TriggerActionRespondImmediately.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTriggerActionRespondImmediately(od);
    });
  });

  unittest.group('obj-schema-TriggerActionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTriggerActionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TriggerActionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTriggerActionResponse(od);
    });
  });

  unittest.group('obj-schema-TriggerActionTransferAgent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTriggerActionTransferAgent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TriggerActionTransferAgent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTriggerActionTransferAgent(od);
    });
  });

  unittest.group('obj-schema-VpcScSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVpcScSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VpcScSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVpcScSettings(od);
    });
  });

  unittest.group('obj-schema-WebSearchQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebSearchQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebSearchQuery.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWebSearchQuery(od);
    });
  });

  unittest.group('obj-schema-WhatsAppCredentials', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWhatsAppCredentials();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WhatsAppCredentials.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWhatsAppCredentials(od);
    });
  });

  unittest.group('obj-schema-WidgetTool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWidgetTool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WidgetTool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWidgetTool(od);
    });
  });

  unittest.group('obj-schema-WidgetToolDataMapping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWidgetToolDataMapping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WidgetToolDataMapping.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWidgetToolDataMapping(od);
    });
  });

  unittest.group('obj-schema-WidgetToolTextResponseConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWidgetToolTextResponseConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WidgetToolTextResponseConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWidgetToolTextResponseConfig(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(mock).projects.locations;
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
          final resp = convert.json.encode(buildLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed180();
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
  });

  unittest.group('resource-ProjectsLocationsAppsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(mock).projects.locations.apps;
      final arg_request = buildApp();
      final arg_parent = 'foo';
      final arg_appId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.App.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkApp(obj);

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
          unittest.expect(queryMap['appId']!.first, unittest.equals(arg_appId));
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
        arg_parent,
        appId: arg_appId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(mock).projects.locations.apps;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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
        etag: arg_etag,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--executeTool', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(mock).projects.locations.apps;
      final arg_request = buildExecuteToolRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExecuteToolRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExecuteToolRequest(obj);

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
          final resp = convert.json.encode(buildExecuteToolResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.executeTool(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkExecuteToolResponse(response as api.ExecuteToolResponse);
    });

    unittest.test('method--exportApp', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(mock).projects.locations.apps;
      final arg_request = buildExportAppRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExportAppRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExportAppRequest(obj);

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
      final response = await res.exportApp(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(mock).projects.locations.apps;
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
          final resp = convert.json.encode(buildApp());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkApp(response as api.App);
    });

    unittest.test('method--getExtendedAgentCard', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(mock).projects.locations.apps;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildLfA2aV1AgentCard());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getExtendedAgentCard(
        arg_tenant,
        $fields: arg_$fields,
      );
      checkLfA2aV1AgentCard(response as api.LfA2aV1AgentCard);
    });

    unittest.test('method--importApp', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(mock).projects.locations.apps;
      final arg_request = buildImportAppRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ImportAppRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkImportAppRequest(obj);

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
      final response = await res.importApp(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(mock).projects.locations.apps;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAppsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAppsResponse(response as api.ListAppsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(mock).projects.locations.apps;
      final arg_request = buildApp();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.App.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkApp(obj);

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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildApp());
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
      checkApp(response as api.App);
    });

    unittest.test('method--retrieveToolSchema', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(mock).projects.locations.apps;
      final arg_request = buildRetrieveToolSchemaRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RetrieveToolSchemaRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRetrieveToolSchemaRequest(obj);

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
          final resp = convert.json.encode(buildRetrieveToolSchemaResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.retrieveToolSchema(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkRetrieveToolSchemaResponse(
        response as api.RetrieveToolSchemaResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsAppsAgentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.agents;
      final arg_request = buildAgent();
      final arg_parent = 'foo';
      final arg_agentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Agent.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAgent(obj);

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
            queryMap['agentId']!.first,
            unittest.equals(arg_agentId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAgent());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        agentId: arg_agentId,
        $fields: arg_$fields,
      );
      checkAgent(response as api.Agent);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.agents;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
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
        etag: arg_etag,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.agents;
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
          final resp = convert.json.encode(buildAgent());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAgent(response as api.Agent);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.agents;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAgentsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAgentsResponse(response as api.ListAgentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.agents;
      final arg_request = buildAgent();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Agent.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAgent(obj);

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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAgent());
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
      checkAgent(response as api.Agent);
    });
  });

  unittest.group('resource-ProjectsLocationsAppsChangelogsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.changelogs;
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
          final resp = convert.json.encode(buildChangelog());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkChangelog(response as api.Changelog);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.changelogs;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListChangelogsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListChangelogsResponse(response as api.ListChangelogsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAppsConversationsResource', () {
    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.conversations;
      final arg_request = buildBatchDeleteConversationsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BatchDeleteConversationsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBatchDeleteConversationsRequest(obj);

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
      final response = await res.batchDelete(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.conversations;
      final arg_name = 'foo';
      final arg_source = 'foo';
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
            queryMap['source']!.first,
            unittest.equals(arg_source),
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
        source: arg_source,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.conversations;
      final arg_name = 'foo';
      final arg_source = 'foo';
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
            queryMap['source']!.first,
            unittest.equals(arg_source),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildConversation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        source: arg_source,
        $fields: arg_$fields,
      );
      checkConversation(response as api.Conversation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.conversations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_source = 'foo';
      final arg_sources = buildUnnamed181();
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
            queryMap['source']!.first,
            unittest.equals(arg_source),
          );
          unittest.expect(queryMap['sources']!, unittest.equals(arg_sources));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListConversationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        source: arg_source,
        sources: arg_sources,
        $fields: arg_$fields,
      );
      checkListConversationsResponse(response as api.ListConversationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAppsDeploymentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.deployments;
      final arg_request = buildDeployment();
      final arg_parent = 'foo';
      final arg_deploymentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Deployment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeployment(obj);

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
            queryMap['deploymentId']!.first,
            unittest.equals(arg_deploymentId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDeployment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        deploymentId: arg_deploymentId,
        $fields: arg_$fields,
      );
      checkDeployment(response as api.Deployment);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.deployments;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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
        etag: arg_etag,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.deployments;
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
          final resp = convert.json.encode(buildDeployment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDeployment(response as api.Deployment);
    });

    unittest.test('method--getExtendedAgentCard', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.deployments;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildLfA2aV1AgentCard());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getExtendedAgentCard(
        arg_tenant,
        $fields: arg_$fields,
      );
      checkLfA2aV1AgentCard(response as api.LfA2aV1AgentCard);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.deployments;
      final arg_parent = 'foo';
      final arg_orderBy = 'foo';
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListDeploymentsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListDeploymentsResponse(response as api.ListDeploymentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.deployments;
      final arg_request = buildDeployment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Deployment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeployment(obj);

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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDeployment());
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
      checkDeployment(response as api.Deployment);
    });
  });

  unittest.group('resource-ProjectsLocationsAppsDeploymentsMessageResource', () {
    unittest.test('method--send', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.deployments.message;
      final arg_request = buildLfA2aV1SendMessageRequest();
      final arg_tenant = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LfA2aV1SendMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLfA2aV1SendMessageRequest(obj);

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
          final resp = convert.json.encode(buildLfA2aV1SendMessageResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.send(
        arg_request,
        arg_tenant,
        $fields: arg_$fields,
      );
      checkLfA2aV1SendMessageResponse(
        response as api.LfA2aV1SendMessageResponse,
      );
    });

    unittest.test('method--stream', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.deployments.message;
      final arg_request = buildLfA2aV1SendMessageRequest();
      final arg_tenant = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LfA2aV1SendMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLfA2aV1SendMessageRequest(obj);

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
          final resp = convert.json.encode(buildLfA2aV1StreamResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.stream(
        arg_request,
        arg_tenant,
        $fields: arg_$fields,
      );
      checkLfA2aV1StreamResponse(response as api.LfA2aV1StreamResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAppsExamplesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.examples;
      final arg_request = buildExample();
      final arg_parent = 'foo';
      final arg_exampleId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Example.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExample(obj);

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
            queryMap['exampleId']!.first,
            unittest.equals(arg_exampleId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildExample());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        exampleId: arg_exampleId,
        $fields: arg_$fields,
      );
      checkExample(response as api.Example);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.examples;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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
        etag: arg_etag,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.examples;
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
          final resp = convert.json.encode(buildExample());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkExample(response as api.Example);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.examples;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListExamplesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListExamplesResponse(response as api.ListExamplesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.examples;
      final arg_request = buildExample();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Example.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExample(obj);

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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildExample());
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
      checkExample(response as api.Example);
    });
  });

  unittest.group('resource-ProjectsLocationsAppsGuardrailsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.guardrails;
      final arg_request = buildGuardrail();
      final arg_parent = 'foo';
      final arg_guardrailId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Guardrail.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGuardrail(obj);

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
            queryMap['guardrailId']!.first,
            unittest.equals(arg_guardrailId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGuardrail());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        guardrailId: arg_guardrailId,
        $fields: arg_$fields,
      );
      checkGuardrail(response as api.Guardrail);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.guardrails;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
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
        etag: arg_etag,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.guardrails;
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
          final resp = convert.json.encode(buildGuardrail());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGuardrail(response as api.Guardrail);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.guardrails;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListGuardrailsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListGuardrailsResponse(response as api.ListGuardrailsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.guardrails;
      final arg_request = buildGuardrail();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Guardrail.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGuardrail(obj);

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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGuardrail());
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
      checkGuardrail(response as api.Guardrail);
    });
  });

  unittest.group('resource-ProjectsLocationsAppsMessageResource', () {
    unittest.test('method--send', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.message;
      final arg_request = buildLfA2aV1SendMessageRequest();
      final arg_tenant = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LfA2aV1SendMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLfA2aV1SendMessageRequest(obj);

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
          final resp = convert.json.encode(buildLfA2aV1SendMessageResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.send(
        arg_request,
        arg_tenant,
        $fields: arg_$fields,
      );
      checkLfA2aV1SendMessageResponse(
        response as api.LfA2aV1SendMessageResponse,
      );
    });

    unittest.test('method--stream', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.message;
      final arg_request = buildLfA2aV1SendMessageRequest();
      final arg_tenant = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LfA2aV1SendMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLfA2aV1SendMessageRequest(obj);

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
          final resp = convert.json.encode(buildLfA2aV1StreamResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.stream(
        arg_request,
        arg_tenant,
        $fields: arg_$fields,
      );
      checkLfA2aV1StreamResponse(response as api.LfA2aV1StreamResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAppsSessionsResource', () {
    unittest.test('method--generateChatToken', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.sessions;
      final arg_request = buildGenerateChatTokenRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenerateChatTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenerateChatTokenRequest(obj);

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
          final resp = convert.json.encode(buildGenerateChatTokenResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generateChatToken(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGenerateChatTokenResponse(response as api.GenerateChatTokenResponse);
    });

    unittest.test('method--runSession', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.sessions;
      final arg_request = buildRunSessionRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RunSessionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRunSessionRequest(obj);

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
          final resp = convert.json.encode(buildRunSessionResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.runSession(
        arg_request,
        arg_session,
        $fields: arg_$fields,
      );
      checkRunSessionResponse(response as api.RunSessionResponse);
    });

    unittest.test('method--streamRunSession', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.sessions;
      final arg_request = buildRunSessionRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RunSessionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRunSessionRequest(obj);

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
          final resp = convert.json.encode(buildRunSessionResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.streamRunSession(
        arg_request,
        arg_session,
        $fields: arg_$fields,
      );
      checkRunSessionResponse(response as api.RunSessionResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAppsToolsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.tools;
      final arg_request = buildTool();
      final arg_parent = 'foo';
      final arg_toolId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Tool.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTool(obj);

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
            queryMap['toolId']!.first,
            unittest.equals(arg_toolId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTool());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        toolId: arg_toolId,
        $fields: arg_$fields,
      );
      checkTool(response as api.Tool);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.tools;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
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
        etag: arg_etag,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.tools;
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
          final resp = convert.json.encode(buildTool());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTool(response as api.Tool);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.tools;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListToolsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListToolsResponse(response as api.ListToolsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.tools;
      final arg_request = buildTool();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Tool.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTool(obj);

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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTool());
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
      checkTool(response as api.Tool);
    });
  });

  unittest.group('resource-ProjectsLocationsAppsToolsetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.toolsets;
      final arg_request = buildToolset();
      final arg_parent = 'foo';
      final arg_toolsetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Toolset.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkToolset(obj);

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
            queryMap['toolsetId']!.first,
            unittest.equals(arg_toolsetId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildToolset());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        toolsetId: arg_toolsetId,
        $fields: arg_$fields,
      );
      checkToolset(response as api.Toolset);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.toolsets;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
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
        etag: arg_etag,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.toolsets;
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
          final resp = convert.json.encode(buildToolset());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkToolset(response as api.Toolset);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.toolsets;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListToolsetsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListToolsetsResponse(response as api.ListToolsetsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.toolsets;
      final arg_request = buildToolset();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Toolset.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkToolset(obj);

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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildToolset());
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
      checkToolset(response as api.Toolset);
    });

    unittest.test('method--retrieveTools', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.toolsets;
      final arg_request = buildRetrieveToolsRequest();
      final arg_toolset = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RetrieveToolsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRetrieveToolsRequest(obj);

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
          final resp = convert.json.encode(buildRetrieveToolsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.retrieveTools(
        arg_request,
        arg_toolset,
        $fields: arg_$fields,
      );
      checkRetrieveToolsResponse(response as api.RetrieveToolsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAppsVersionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.versions;
      final arg_request = buildAppVersion();
      final arg_parent = 'foo';
      final arg_appVersionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AppVersion.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAppVersion(obj);

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
            queryMap['appVersionId']!.first,
            unittest.equals(arg_appVersionId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAppVersion());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        appVersionId: arg_appVersionId,
        $fields: arg_$fields,
      );
      checkAppVersion(response as api.AppVersion);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.versions;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
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
        etag: arg_etag,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.versions;
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
          final resp = convert.json.encode(buildAppVersion());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAppVersion(response as api.AppVersion);
    });

    unittest.test('method--getExtendedAgentCard', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.versions;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildLfA2aV1AgentCard());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getExtendedAgentCard(
        arg_tenant,
        $fields: arg_$fields,
      );
      checkLfA2aV1AgentCard(response as api.LfA2aV1AgentCard);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.versions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAppVersionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAppVersionsResponse(response as api.ListAppVersionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.versions;
      final arg_request = buildAppVersion();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AppVersion.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAppVersion(obj);

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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAppVersion());
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
      checkAppVersion(response as api.AppVersion);
    });

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.versions;
      final arg_request = buildRestoreAppVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RestoreAppVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRestoreAppVersionRequest(obj);

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
      final response = await res.restore(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsAppsVersionsMessageResource', () {
    unittest.test('method--send', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.versions.message;
      final arg_request = buildLfA2aV1SendMessageRequest();
      final arg_tenant = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LfA2aV1SendMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLfA2aV1SendMessageRequest(obj);

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
          final resp = convert.json.encode(buildLfA2aV1SendMessageResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.send(
        arg_request,
        arg_tenant,
        $fields: arg_$fields,
      );
      checkLfA2aV1SendMessageResponse(
        response as api.LfA2aV1SendMessageResponse,
      );
    });

    unittest.test('method--stream', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.apps.versions.message;
      final arg_request = buildLfA2aV1SendMessageRequest();
      final arg_tenant = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LfA2aV1SendMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLfA2aV1SendMessageRequest(obj);

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
          final resp = convert.json.encode(buildLfA2aV1StreamResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.stream(
        arg_request,
        arg_tenant,
        $fields: arg_$fields,
      );
      checkLfA2aV1StreamResponse(response as api.LfA2aV1StreamResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelOperationRequest(obj);

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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.operations;
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
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.operations;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CustomerEngagementSuiteApi(
        mock,
      ).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListOperationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });
}
