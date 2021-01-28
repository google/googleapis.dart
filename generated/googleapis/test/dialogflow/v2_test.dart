// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/dialogflow/v2.dart' as api;

import '../test_shared.dart';

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

core.int buildCounterGoogleCloudDialogflowCxV3beta1ImportAgentResponse = 0;
api.GoogleCloudDialogflowCxV3beta1ImportAgentResponse
    buildGoogleCloudDialogflowCxV3beta1ImportAgentResponse() {
  var o = api.GoogleCloudDialogflowCxV3beta1ImportAgentResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ImportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportAgentResponse < 3) {
    o.agent = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportAgentResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ImportAgentResponse(
    api.GoogleCloudDialogflowCxV3beta1ImportAgentResponse o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ImportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportAgentResponse < 3) {
    unittest.expect(o.agent, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportAgentResponse--;
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
    buildUnnamed5286() {
  var o = <api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo());
  o.add(buildGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo());
  return o;
}

void checkUnnamed5286(
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
    o.parameterInfo = buildUnnamed5286();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1PageInfoFormInfo(
    api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfo o) {
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo < 3) {
    checkUnnamed5286(o.parameterInfo);
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
    var casted1 = (o.value) as core.Map;
    unittest.expect(casted1, unittest.hasLength(3));
    unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted1['bool'], unittest.equals(true));
    unittest.expect(casted1['string'], unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo--;
}

core.Map<core.String, core.Object> buildUnnamed5287() {
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

void checkUnnamed5287(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted2 = (o['x']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
  var casted3 = (o['y']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
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
    o.payload = buildUnnamed5287();
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
    checkUnnamed5287(o.payload);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio(o.playAudio
        as api.GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageText(
        o.text as api.GoogleCloudDialogflowCxV3beta1ResponseMessageText);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage--;
}

core.Map<core.String, core.Object> buildUnnamed5288() {
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

void checkUnnamed5288(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted4 = (o['x']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
  var casted5 = (o['y']) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
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
    o.metadata = buildUnnamed5288();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess <
      3) {
    checkUnnamed5288(o.metadata);
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

core.Map<core.String, core.Object> buildUnnamed5289() {
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

void checkUnnamed5289(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted6 = (o['x']) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
  var casted7 = (o['y']) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
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
    o.metadata = buildUnnamed5289();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff <
      3) {
    checkUnnamed5289(o.metadata);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment>
    buildUnnamed5290() {
  var o =
      <api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment());
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment());
  return o;
}

void checkUnnamed5290(
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
    o.segments = buildUnnamed5290();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio < 3) {
    checkUnnamed5290(o.segments);
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

core.List<core.String> buildUnnamed5291() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5291(core.List<core.String> o) {
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
    o.text = buildUnnamed5291();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1ResponseMessageText(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageText o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText < 3) {
    unittest.expect(o.allowPlaybackInterruption, unittest.isTrue);
    checkUnnamed5291(o.text);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText--;
}

core.Map<core.String, core.Object> buildUnnamed5292() {
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

void checkUnnamed5292(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted8 = (o['x']) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
  var casted9 = (o['y']) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo = 0;
api.GoogleCloudDialogflowCxV3beta1SessionInfo
    buildGoogleCloudDialogflowCxV3beta1SessionInfo() {
  var o = api.GoogleCloudDialogflowCxV3beta1SessionInfo();
  buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo < 3) {
    o.parameters = buildUnnamed5292();
    o.session = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1SessionInfo(
    api.GoogleCloudDialogflowCxV3beta1SessionInfo o) {
  buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo < 3) {
    checkUnnamed5292(o.parameters);
    unittest.expect(o.session, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage>
    buildUnnamed5293() {
  var o = <api.GoogleCloudDialogflowCxV3beta1ResponseMessage>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  return o;
}

void checkUnnamed5293(
    core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(
      o[0] as api.GoogleCloudDialogflowCxV3beta1ResponseMessage);
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(
      o[1] as api.GoogleCloudDialogflowCxV3beta1ResponseMessage);
}

core.Map<core.String, core.Object> buildUnnamed5294() {
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

void checkUnnamed5294(core.Map<core.String, core.Object> o) {
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
    o.messages = buildUnnamed5293();
    o.pageInfo = buildGoogleCloudDialogflowCxV3beta1PageInfo();
    o.payload = buildUnnamed5294();
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
    checkUnnamed5293(o.messages);
    checkGoogleCloudDialogflowCxV3beta1PageInfo(
        o.pageInfo as api.GoogleCloudDialogflowCxV3beta1PageInfo);
    checkUnnamed5294(o.payload);
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
    buildUnnamed5295() {
  var o = <core.String,
      api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue>{};
  o['x'] =
      buildGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue();
  o['y'] =
      buildGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue();
  return o;
}

void checkUnnamed5295(
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
    o.lastMatchedIntent = 'foo';
    o.parameters = buildUnnamed5295();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo--;
  return o;
}

void checkGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo(
    api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo o) {
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo < 3) {
    unittest.expect(o.lastMatchedIntent, unittest.equals('foo'));
    checkUnnamed5295(o.parameters);
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
    var casted12 = (o.resolvedValue) as core.Map;
    unittest.expect(casted12, unittest.hasLength(3));
    unittest.expect(casted12['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted12['bool'], unittest.equals(true));
    unittest.expect(casted12['string'], unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue--;
}

core.Map<core.String, core.Object> buildUnnamed5296() {
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

void checkUnnamed5296(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o['x']) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted13['bool'], unittest.equals(true));
  unittest.expect(casted13['string'], unittest.equals('foo'));
  var casted14 = (o['y']) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted14['bool'], unittest.equals(true));
  unittest.expect(casted14['string'], unittest.equals('foo'));
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
    o.payload = buildUnnamed5296();
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
    checkUnnamed5296(o.payload);
    checkGoogleCloudDialogflowCxV3beta1SessionInfo(
        o.sessionInfo as api.GoogleCloudDialogflowCxV3beta1SessionInfo);
    unittest.expect(o.targetFlow, unittest.equals('foo'));
    unittest.expect(o.targetPage, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage>
    buildUnnamed5297() {
  var o = <api.GoogleCloudDialogflowCxV3beta1ResponseMessage>[];
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  return o;
}

void checkUnnamed5297(
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
    o.messages = buildUnnamed5297();
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
    checkUnnamed5297(o.messages);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse--;
}

core.List<core.String> buildUnnamed5298() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5298(core.List<core.String> o) {
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
    o.supportedLanguageCodes = buildUnnamed5298();
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
    checkUnnamed5298(o.supportedLanguageCodes);
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
    var casted15 = (o.formattedValue) as core.Map;
    unittest.expect(casted15, unittest.hasLength(3));
    unittest.expect(casted15['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted15['bool'], unittest.equals(true));
    unittest.expect(casted15['string'], unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2AnnotatedMessagePart--;
}

core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> buildUnnamed5299() {
  var o = <api.GoogleCloudDialogflowV2EntityTypeEntity>[];
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

void checkUnnamed5299(
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
    o.entities = buildUnnamed5299();
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchCreateEntitiesRequest(
    api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest < 3) {
    checkUnnamed5299(o.entities);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest--;
}

core.List<core.String> buildUnnamed5300() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5300(core.List<core.String> o) {
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
    o.entityValues = buildUnnamed5300();
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchDeleteEntitiesRequest(
    api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest < 3) {
    checkUnnamed5300(o.entityValues);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest--;
}

core.List<core.String> buildUnnamed5301() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5301(core.List<core.String> o) {
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
    o.entityTypeNames = buildUnnamed5301();
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest(
    api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest < 3) {
    checkUnnamed5301(o.entityTypeNames);
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest--;
}

core.List<api.GoogleCloudDialogflowV2Intent> buildUnnamed5302() {
  var o = <api.GoogleCloudDialogflowV2Intent>[];
  o.add(buildGoogleCloudDialogflowV2Intent());
  o.add(buildGoogleCloudDialogflowV2Intent());
  return o;
}

void checkUnnamed5302(core.List<api.GoogleCloudDialogflowV2Intent> o) {
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
    o.intents = buildUnnamed5302();
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchDeleteIntentsRequest(
    api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest < 3) {
    checkUnnamed5302(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest--;
}

core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> buildUnnamed5303() {
  var o = <api.GoogleCloudDialogflowV2EntityTypeEntity>[];
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

void checkUnnamed5303(
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
    o.entities = buildUnnamed5303();
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
    checkUnnamed5303(o.entities);
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

core.List<api.GoogleCloudDialogflowV2EntityType> buildUnnamed5304() {
  var o = <api.GoogleCloudDialogflowV2EntityType>[];
  o.add(buildGoogleCloudDialogflowV2EntityType());
  o.add(buildGoogleCloudDialogflowV2EntityType());
  return o;
}

void checkUnnamed5304(core.List<api.GoogleCloudDialogflowV2EntityType> o) {
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
    o.entityTypes = buildUnnamed5304();
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse(
    api.GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse < 3) {
    checkUnnamed5304(o.entityTypes);
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

core.List<api.GoogleCloudDialogflowV2Intent> buildUnnamed5305() {
  var o = <api.GoogleCloudDialogflowV2Intent>[];
  o.add(buildGoogleCloudDialogflowV2Intent());
  o.add(buildGoogleCloudDialogflowV2Intent());
  return o;
}

void checkUnnamed5305(core.List<api.GoogleCloudDialogflowV2Intent> o) {
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
    o.intents = buildUnnamed5305();
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchUpdateIntentsResponse(
    api.GoogleCloudDialogflowV2BatchUpdateIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse < 3) {
    checkUnnamed5305(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed5306() {
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

void checkUnnamed5306(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2Context = 0;
api.GoogleCloudDialogflowV2Context buildGoogleCloudDialogflowV2Context() {
  var o = api.GoogleCloudDialogflowV2Context();
  buildCounterGoogleCloudDialogflowV2Context++;
  if (buildCounterGoogleCloudDialogflowV2Context < 3) {
    o.lifespanCount = 42;
    o.name = 'foo';
    o.parameters = buildUnnamed5306();
  }
  buildCounterGoogleCloudDialogflowV2Context--;
  return o;
}

void checkGoogleCloudDialogflowV2Context(api.GoogleCloudDialogflowV2Context o) {
  buildCounterGoogleCloudDialogflowV2Context++;
  if (buildCounterGoogleCloudDialogflowV2Context < 3) {
    unittest.expect(o.lifespanCount, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5306(o.parameters);
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

core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> buildUnnamed5307() {
  var o = <api.GoogleCloudDialogflowV2EntityTypeEntity>[];
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

void checkUnnamed5307(
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
    o.entities = buildUnnamed5307();
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
    checkUnnamed5307(o.entities);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2EntityType--;
}

core.List<api.GoogleCloudDialogflowV2EntityType> buildUnnamed5308() {
  var o = <api.GoogleCloudDialogflowV2EntityType>[];
  o.add(buildGoogleCloudDialogflowV2EntityType());
  o.add(buildGoogleCloudDialogflowV2EntityType());
  return o;
}

void checkUnnamed5308(core.List<api.GoogleCloudDialogflowV2EntityType> o) {
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
    o.entityTypes = buildUnnamed5308();
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeBatch--;
  return o;
}

void checkGoogleCloudDialogflowV2EntityTypeBatch(
    api.GoogleCloudDialogflowV2EntityTypeBatch o) {
  buildCounterGoogleCloudDialogflowV2EntityTypeBatch++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeBatch < 3) {
    checkUnnamed5308(o.entityTypes);
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeBatch--;
}

core.List<core.String> buildUnnamed5309() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5309(core.List<core.String> o) {
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
    o.synonyms = buildUnnamed5309();
    o.value = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity--;
  return o;
}

void checkGoogleCloudDialogflowV2EntityTypeEntity(
    api.GoogleCloudDialogflowV2EntityTypeEntity o) {
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeEntity < 3) {
    checkUnnamed5309(o.synonyms);
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

core.Map<core.String, core.Object> buildUnnamed5310() {
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

void checkUnnamed5310(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2EventInput = 0;
api.GoogleCloudDialogflowV2EventInput buildGoogleCloudDialogflowV2EventInput() {
  var o = api.GoogleCloudDialogflowV2EventInput();
  buildCounterGoogleCloudDialogflowV2EventInput++;
  if (buildCounterGoogleCloudDialogflowV2EventInput < 3) {
    o.languageCode = 'foo';
    o.name = 'foo';
    o.parameters = buildUnnamed5310();
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
    checkUnnamed5310(o.parameters);
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

core.List<api.GoogleCloudDialogflowV2FulfillmentFeature> buildUnnamed5311() {
  var o = <api.GoogleCloudDialogflowV2FulfillmentFeature>[];
  o.add(buildGoogleCloudDialogflowV2FulfillmentFeature());
  o.add(buildGoogleCloudDialogflowV2FulfillmentFeature());
  return o;
}

void checkUnnamed5311(
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
    o.features = buildUnnamed5311();
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
    checkUnnamed5311(o.features);
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

core.Map<core.String, core.String> buildUnnamed5312() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5312(core.Map<core.String, core.String> o) {
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
    o.requestHeaders = buildUnnamed5312();
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
    checkUnnamed5312(o.requestHeaders);
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

core.List<api.GoogleRpcStatus> buildUnnamed5313() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed5313(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int buildCounterGoogleCloudDialogflowV2ImportDocumentsResponse = 0;
api.GoogleCloudDialogflowV2ImportDocumentsResponse
    buildGoogleCloudDialogflowV2ImportDocumentsResponse() {
  var o = api.GoogleCloudDialogflowV2ImportDocumentsResponse();
  buildCounterGoogleCloudDialogflowV2ImportDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ImportDocumentsResponse < 3) {
    o.warnings = buildUnnamed5313();
  }
  buildCounterGoogleCloudDialogflowV2ImportDocumentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ImportDocumentsResponse(
    api.GoogleCloudDialogflowV2ImportDocumentsResponse o) {
  buildCounterGoogleCloudDialogflowV2ImportDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ImportDocumentsResponse < 3) {
    checkUnnamed5313(o.warnings);
  }
  buildCounterGoogleCloudDialogflowV2ImportDocumentsResponse--;
}

core.List<core.String> buildUnnamed5314() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5314(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2SpeechContext> buildUnnamed5315() {
  var o = <api.GoogleCloudDialogflowV2SpeechContext>[];
  o.add(buildGoogleCloudDialogflowV2SpeechContext());
  o.add(buildGoogleCloudDialogflowV2SpeechContext());
  return o;
}

void checkUnnamed5315(core.List<api.GoogleCloudDialogflowV2SpeechContext> o) {
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
    o.phraseHints = buildUnnamed5314();
    o.sampleRateHertz = 42;
    o.singleUtterance = true;
    o.speechContexts = buildUnnamed5315();
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
    checkUnnamed5314(o.phraseHints);
    unittest.expect(o.sampleRateHertz, unittest.equals(42));
    unittest.expect(o.singleUtterance, unittest.isTrue);
    checkUnnamed5315(o.speechContexts);
  }
  buildCounterGoogleCloudDialogflowV2InputAudioConfig--;
}

core.List<core.String> buildUnnamed5316() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5316(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5317() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5317(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2IntentFollowupIntentInfo>
    buildUnnamed5318() {
  var o = <api.GoogleCloudDialogflowV2IntentFollowupIntentInfo>[];
  o.add(buildGoogleCloudDialogflowV2IntentFollowupIntentInfo());
  o.add(buildGoogleCloudDialogflowV2IntentFollowupIntentInfo());
  return o;
}

void checkUnnamed5318(
    core.List<api.GoogleCloudDialogflowV2IntentFollowupIntentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(
      o[0] as api.GoogleCloudDialogflowV2IntentFollowupIntentInfo);
  checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(
      o[1] as api.GoogleCloudDialogflowV2IntentFollowupIntentInfo);
}

core.List<core.String> buildUnnamed5319() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5319(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2IntentMessage> buildUnnamed5320() {
  var o = <api.GoogleCloudDialogflowV2IntentMessage>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

void checkUnnamed5320(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(
      o[0] as api.GoogleCloudDialogflowV2IntentMessage);
  checkGoogleCloudDialogflowV2IntentMessage(
      o[1] as api.GoogleCloudDialogflowV2IntentMessage);
}

core.List<api.GoogleCloudDialogflowV2Context> buildUnnamed5321() {
  var o = <api.GoogleCloudDialogflowV2Context>[];
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

void checkUnnamed5321(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(
      o[0] as api.GoogleCloudDialogflowV2Context);
  checkGoogleCloudDialogflowV2Context(
      o[1] as api.GoogleCloudDialogflowV2Context);
}

core.List<api.GoogleCloudDialogflowV2IntentParameter> buildUnnamed5322() {
  var o = <api.GoogleCloudDialogflowV2IntentParameter>[];
  o.add(buildGoogleCloudDialogflowV2IntentParameter());
  o.add(buildGoogleCloudDialogflowV2IntentParameter());
  return o;
}

void checkUnnamed5322(core.List<api.GoogleCloudDialogflowV2IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentParameter(
      o[0] as api.GoogleCloudDialogflowV2IntentParameter);
  checkGoogleCloudDialogflowV2IntentParameter(
      o[1] as api.GoogleCloudDialogflowV2IntentParameter);
}

core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrase> buildUnnamed5323() {
  var o = <api.GoogleCloudDialogflowV2IntentTrainingPhrase>[];
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrase());
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrase());
  return o;
}

void checkUnnamed5323(
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
    o.defaultResponsePlatforms = buildUnnamed5316();
    o.displayName = 'foo';
    o.events = buildUnnamed5317();
    o.followupIntentInfo = buildUnnamed5318();
    o.inputContextNames = buildUnnamed5319();
    o.isFallback = true;
    o.messages = buildUnnamed5320();
    o.mlDisabled = true;
    o.name = 'foo';
    o.outputContexts = buildUnnamed5321();
    o.parameters = buildUnnamed5322();
    o.parentFollowupIntentName = 'foo';
    o.priority = 42;
    o.resetContexts = true;
    o.rootFollowupIntentName = 'foo';
    o.trainingPhrases = buildUnnamed5323();
    o.webhookState = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2Intent--;
  return o;
}

void checkGoogleCloudDialogflowV2Intent(api.GoogleCloudDialogflowV2Intent o) {
  buildCounterGoogleCloudDialogflowV2Intent++;
  if (buildCounterGoogleCloudDialogflowV2Intent < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed5316(o.defaultResponsePlatforms);
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed5317(o.events);
    checkUnnamed5318(o.followupIntentInfo);
    checkUnnamed5319(o.inputContextNames);
    unittest.expect(o.isFallback, unittest.isTrue);
    checkUnnamed5320(o.messages);
    unittest.expect(o.mlDisabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5321(o.outputContexts);
    checkUnnamed5322(o.parameters);
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    unittest.expect(o.resetContexts, unittest.isTrue);
    unittest.expect(o.rootFollowupIntentName, unittest.equals('foo'));
    checkUnnamed5323(o.trainingPhrases);
    unittest.expect(o.webhookState, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2Intent--;
}

core.List<api.GoogleCloudDialogflowV2Intent> buildUnnamed5324() {
  var o = <api.GoogleCloudDialogflowV2Intent>[];
  o.add(buildGoogleCloudDialogflowV2Intent());
  o.add(buildGoogleCloudDialogflowV2Intent());
  return o;
}

void checkUnnamed5324(core.List<api.GoogleCloudDialogflowV2Intent> o) {
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
    o.intents = buildUnnamed5324();
  }
  buildCounterGoogleCloudDialogflowV2IntentBatch--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentBatch(
    api.GoogleCloudDialogflowV2IntentBatch o) {
  buildCounterGoogleCloudDialogflowV2IntentBatch++;
  if (buildCounterGoogleCloudDialogflowV2IntentBatch < 3) {
    checkUnnamed5324(o.intents);
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

core.Map<core.String, core.Object> buildUnnamed5325() {
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

void checkUnnamed5325(core.Map<core.String, core.Object> o) {
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
    o.payload = buildUnnamed5325();
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
    checkUnnamed5325(o.payload);
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
    buildUnnamed5326() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageBasicCardButton>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  return o;
}

void checkUnnamed5326(
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
    o.buttons = buildUnnamed5326();
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
    checkUnnamed5326(o.buttons);
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
    buildUnnamed5327() {
  var o = <
      api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem>[];
  o.add(
      buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem());
  o.add(
      buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem());
  return o;
}

void checkUnnamed5327(
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
    o.items = buildUnnamed5327();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard(
    api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard < 3) {
    unittest.expect(o.imageDisplayOptions, unittest.equals('foo'));
    checkUnnamed5327(o.items);
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
    buildUnnamed5328() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageCardButton>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageCardButton());
  o.add(buildGoogleCloudDialogflowV2IntentMessageCardButton());
  return o;
}

void checkUnnamed5328(
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
    o.buttons = buildUnnamed5328();
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
    checkUnnamed5328(o.buttons);
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
    buildUnnamed5329() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem());
  o.add(buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem());
  return o;
}

void checkUnnamed5329(
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
    o.items = buildUnnamed5329();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageCarouselSelect(
    api.GoogleCloudDialogflowV2IntentMessageCarouselSelect o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect < 3) {
    checkUnnamed5329(o.items);
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
    buildUnnamed5330() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageListSelectItem>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageListSelectItem());
  o.add(buildGoogleCloudDialogflowV2IntentMessageListSelectItem());
  return o;
}

void checkUnnamed5330(
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
    o.items = buildUnnamed5330();
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
    checkUnnamed5330(o.items);
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
    buildUnnamed5331() {
  var o = <
      api.GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject>[];
  o.add(
      buildGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject());
  o.add(
      buildGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject());
  return o;
}

void checkUnnamed5331(
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
    o.mediaObjects = buildUnnamed5331();
    o.mediaType = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageMediaContent(
    api.GoogleCloudDialogflowV2IntentMessageMediaContent o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent < 3) {
    checkUnnamed5331(o.mediaObjects);
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

core.List<core.String> buildUnnamed5332() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5332(core.List<core.String> o) {
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
    o.quickReplies = buildUnnamed5332();
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageQuickReplies(
    api.GoogleCloudDialogflowV2IntentMessageQuickReplies o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies < 3) {
    checkUnnamed5332(o.quickReplies);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies--;
}

core.List<core.String> buildUnnamed5333() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5333(core.List<core.String> o) {
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
    o.synonyms = buildUnnamed5333();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(
    api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed5333(o.synonyms);
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
    buildUnnamed5334() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageSimpleResponse>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageSimpleResponse());
  o.add(buildGoogleCloudDialogflowV2IntentMessageSimpleResponse());
  return o;
}

void checkUnnamed5334(
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
    o.simpleResponses = buildUnnamed5334();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageSimpleResponses(
    api.GoogleCloudDialogflowV2IntentMessageSimpleResponses o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses < 3) {
    checkUnnamed5334(o.simpleResponses);
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
    buildUnnamed5335() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageSuggestion>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageSuggestion());
  o.add(buildGoogleCloudDialogflowV2IntentMessageSuggestion());
  return o;
}

void checkUnnamed5335(
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
    o.suggestions = buildUnnamed5335();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageSuggestions(
    api.GoogleCloudDialogflowV2IntentMessageSuggestions o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions < 3) {
    checkUnnamed5335(o.suggestions);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions--;
}

core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton>
    buildUnnamed5336() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageBasicCardButton>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  return o;
}

void checkUnnamed5336(
    core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(
      o[0] as api.GoogleCloudDialogflowV2IntentMessageBasicCardButton);
  checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(
      o[1] as api.GoogleCloudDialogflowV2IntentMessageBasicCardButton);
}

core.List<api.GoogleCloudDialogflowV2IntentMessageColumnProperties>
    buildUnnamed5337() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageColumnProperties>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageColumnProperties());
  o.add(buildGoogleCloudDialogflowV2IntentMessageColumnProperties());
  return o;
}

void checkUnnamed5337(
    core.List<api.GoogleCloudDialogflowV2IntentMessageColumnProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageColumnProperties(
      o[0] as api.GoogleCloudDialogflowV2IntentMessageColumnProperties);
  checkGoogleCloudDialogflowV2IntentMessageColumnProperties(
      o[1] as api.GoogleCloudDialogflowV2IntentMessageColumnProperties);
}

core.List<api.GoogleCloudDialogflowV2IntentMessageTableCardRow>
    buildUnnamed5338() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageTableCardRow>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageTableCardRow());
  o.add(buildGoogleCloudDialogflowV2IntentMessageTableCardRow());
  return o;
}

void checkUnnamed5338(
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
    o.buttons = buildUnnamed5336();
    o.columnProperties = buildUnnamed5337();
    o.image = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.rows = buildUnnamed5338();
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
    checkUnnamed5336(o.buttons);
    checkUnnamed5337(o.columnProperties);
    checkGoogleCloudDialogflowV2IntentMessageImage(
        o.image as api.GoogleCloudDialogflowV2IntentMessageImage);
    checkUnnamed5338(o.rows);
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
    buildUnnamed5339() {
  var o = <api.GoogleCloudDialogflowV2IntentMessageTableCardCell>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessageTableCardCell());
  o.add(buildGoogleCloudDialogflowV2IntentMessageTableCardCell());
  return o;
}

void checkUnnamed5339(
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
    o.cells = buildUnnamed5339();
    o.dividerAfter = true;
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageTableCardRow(
    api.GoogleCloudDialogflowV2IntentMessageTableCardRow o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow < 3) {
    checkUnnamed5339(o.cells);
    unittest.expect(o.dividerAfter, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow--;
}

core.List<core.String> buildUnnamed5340() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5340(core.List<core.String> o) {
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
    o.text = buildUnnamed5340();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageText--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageText(
    api.GoogleCloudDialogflowV2IntentMessageText o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageText < 3) {
    checkUnnamed5340(o.text);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageText--;
}

core.List<core.String> buildUnnamed5341() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5341(core.List<core.String> o) {
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
    o.prompts = buildUnnamed5341();
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
    checkUnnamed5341(o.prompts);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentParameter--;
}

core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrasePart>
    buildUnnamed5342() {
  var o = <api.GoogleCloudDialogflowV2IntentTrainingPhrasePart>[];
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrasePart());
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrasePart());
  return o;
}

void checkUnnamed5342(
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
    o.parts = buildUnnamed5342();
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
    checkUnnamed5342(o.parts);
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

core.List<api.GoogleCloudDialogflowV2Context> buildUnnamed5343() {
  var o = <api.GoogleCloudDialogflowV2Context>[];
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

void checkUnnamed5343(core.List<api.GoogleCloudDialogflowV2Context> o) {
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
    o.contexts = buildUnnamed5343();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ListContextsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListContextsResponse(
    api.GoogleCloudDialogflowV2ListContextsResponse o) {
  buildCounterGoogleCloudDialogflowV2ListContextsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListContextsResponse < 3) {
    checkUnnamed5343(o.contexts);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ListContextsResponse--;
}

core.List<api.GoogleCloudDialogflowV2EntityType> buildUnnamed5344() {
  var o = <api.GoogleCloudDialogflowV2EntityType>[];
  o.add(buildGoogleCloudDialogflowV2EntityType());
  o.add(buildGoogleCloudDialogflowV2EntityType());
  return o;
}

void checkUnnamed5344(core.List<api.GoogleCloudDialogflowV2EntityType> o) {
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
    o.entityTypes = buildUnnamed5344();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListEntityTypesResponse(
    api.GoogleCloudDialogflowV2ListEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse < 3) {
    checkUnnamed5344(o.entityTypes);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse--;
}

core.List<api.GoogleCloudDialogflowV2Environment> buildUnnamed5345() {
  var o = <api.GoogleCloudDialogflowV2Environment>[];
  o.add(buildGoogleCloudDialogflowV2Environment());
  o.add(buildGoogleCloudDialogflowV2Environment());
  return o;
}

void checkUnnamed5345(core.List<api.GoogleCloudDialogflowV2Environment> o) {
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
    o.environments = buildUnnamed5345();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListEnvironmentsResponse(
    api.GoogleCloudDialogflowV2ListEnvironmentsResponse o) {
  buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse < 3) {
    checkUnnamed5345(o.environments);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse--;
}

core.List<api.GoogleCloudDialogflowV2Intent> buildUnnamed5346() {
  var o = <api.GoogleCloudDialogflowV2Intent>[];
  o.add(buildGoogleCloudDialogflowV2Intent());
  o.add(buildGoogleCloudDialogflowV2Intent());
  return o;
}

void checkUnnamed5346(core.List<api.GoogleCloudDialogflowV2Intent> o) {
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
    o.intents = buildUnnamed5346();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ListIntentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListIntentsResponse(
    api.GoogleCloudDialogflowV2ListIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2ListIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListIntentsResponse < 3) {
    checkUnnamed5346(o.intents);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ListIntentsResponse--;
}

core.List<api.GoogleCloudDialogflowV2SessionEntityType> buildUnnamed5347() {
  var o = <api.GoogleCloudDialogflowV2SessionEntityType>[];
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  return o;
}

void checkUnnamed5347(
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
    o.sessionEntityTypes = buildUnnamed5347();
  }
  buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListSessionEntityTypesResponse(
    api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5347(o.sessionEntityTypes);
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

core.List<api.GoogleCloudDialogflowV2AnnotatedMessagePart> buildUnnamed5348() {
  var o = <api.GoogleCloudDialogflowV2AnnotatedMessagePart>[];
  o.add(buildGoogleCloudDialogflowV2AnnotatedMessagePart());
  o.add(buildGoogleCloudDialogflowV2AnnotatedMessagePart());
  return o;
}

void checkUnnamed5348(
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
    o.parts = buildUnnamed5348();
  }
  buildCounterGoogleCloudDialogflowV2MessageAnnotation--;
  return o;
}

void checkGoogleCloudDialogflowV2MessageAnnotation(
    api.GoogleCloudDialogflowV2MessageAnnotation o) {
  buildCounterGoogleCloudDialogflowV2MessageAnnotation++;
  if (buildCounterGoogleCloudDialogflowV2MessageAnnotation < 3) {
    unittest.expect(o.containEntities, unittest.isTrue);
    checkUnnamed5348(o.parts);
  }
  buildCounterGoogleCloudDialogflowV2MessageAnnotation--;
}

core.Map<core.String, core.Object> buildUnnamed5349() {
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

void checkUnnamed5349(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest = 0;
api.GoogleCloudDialogflowV2OriginalDetectIntentRequest
    buildGoogleCloudDialogflowV2OriginalDetectIntentRequest() {
  var o = api.GoogleCloudDialogflowV2OriginalDetectIntentRequest();
  buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest < 3) {
    o.payload = buildUnnamed5349();
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
    checkUnnamed5349(o.payload);
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

core.List<api.GoogleCloudDialogflowV2Context> buildUnnamed5350() {
  var o = <api.GoogleCloudDialogflowV2Context>[];
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

void checkUnnamed5350(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(
      o[0] as api.GoogleCloudDialogflowV2Context);
  checkGoogleCloudDialogflowV2Context(
      o[1] as api.GoogleCloudDialogflowV2Context);
}

core.Map<core.String, core.Object> buildUnnamed5351() {
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

void checkUnnamed5351(core.Map<core.String, core.Object> o) {
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

core.List<api.GoogleCloudDialogflowV2SessionEntityType> buildUnnamed5352() {
  var o = <api.GoogleCloudDialogflowV2SessionEntityType>[];
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  return o;
}

void checkUnnamed5352(
    core.List<api.GoogleCloudDialogflowV2SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2SessionEntityType(
      o[0] as api.GoogleCloudDialogflowV2SessionEntityType);
  checkGoogleCloudDialogflowV2SessionEntityType(
      o[1] as api.GoogleCloudDialogflowV2SessionEntityType);
}

core.int buildCounterGoogleCloudDialogflowV2QueryParameters = 0;
api.GoogleCloudDialogflowV2QueryParameters
    buildGoogleCloudDialogflowV2QueryParameters() {
  var o = api.GoogleCloudDialogflowV2QueryParameters();
  buildCounterGoogleCloudDialogflowV2QueryParameters++;
  if (buildCounterGoogleCloudDialogflowV2QueryParameters < 3) {
    o.contexts = buildUnnamed5350();
    o.geoLocation = buildGoogleTypeLatLng();
    o.payload = buildUnnamed5351();
    o.resetContexts = true;
    o.sentimentAnalysisRequestConfig =
        buildGoogleCloudDialogflowV2SentimentAnalysisRequestConfig();
    o.sessionEntityTypes = buildUnnamed5352();
    o.timeZone = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2QueryParameters--;
  return o;
}

void checkGoogleCloudDialogflowV2QueryParameters(
    api.GoogleCloudDialogflowV2QueryParameters o) {
  buildCounterGoogleCloudDialogflowV2QueryParameters++;
  if (buildCounterGoogleCloudDialogflowV2QueryParameters < 3) {
    checkUnnamed5350(o.contexts);
    checkGoogleTypeLatLng(o.geoLocation as api.GoogleTypeLatLng);
    checkUnnamed5351(o.payload);
    unittest.expect(o.resetContexts, unittest.isTrue);
    checkGoogleCloudDialogflowV2SentimentAnalysisRequestConfig(
        o.sentimentAnalysisRequestConfig
            as api.GoogleCloudDialogflowV2SentimentAnalysisRequestConfig);
    checkUnnamed5352(o.sessionEntityTypes);
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2QueryParameters--;
}

core.Map<core.String, core.Object> buildUnnamed5353() {
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

void checkUnnamed5353(core.Map<core.String, core.Object> o) {
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

core.List<api.GoogleCloudDialogflowV2IntentMessage> buildUnnamed5354() {
  var o = <api.GoogleCloudDialogflowV2IntentMessage>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

void checkUnnamed5354(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(
      o[0] as api.GoogleCloudDialogflowV2IntentMessage);
  checkGoogleCloudDialogflowV2IntentMessage(
      o[1] as api.GoogleCloudDialogflowV2IntentMessage);
}

core.List<api.GoogleCloudDialogflowV2Context> buildUnnamed5355() {
  var o = <api.GoogleCloudDialogflowV2Context>[];
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

void checkUnnamed5355(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(
      o[0] as api.GoogleCloudDialogflowV2Context);
  checkGoogleCloudDialogflowV2Context(
      o[1] as api.GoogleCloudDialogflowV2Context);
}

core.Map<core.String, core.Object> buildUnnamed5356() {
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

void checkUnnamed5356(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed5357() {
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

void checkUnnamed5357(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2QueryResult = 0;
api.GoogleCloudDialogflowV2QueryResult
    buildGoogleCloudDialogflowV2QueryResult() {
  var o = api.GoogleCloudDialogflowV2QueryResult();
  buildCounterGoogleCloudDialogflowV2QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2QueryResult < 3) {
    o.action = 'foo';
    o.allRequiredParamsPresent = true;
    o.diagnosticInfo = buildUnnamed5353();
    o.fulfillmentMessages = buildUnnamed5354();
    o.fulfillmentText = 'foo';
    o.intent = buildGoogleCloudDialogflowV2Intent();
    o.intentDetectionConfidence = 42.0;
    o.languageCode = 'foo';
    o.outputContexts = buildUnnamed5355();
    o.parameters = buildUnnamed5356();
    o.queryText = 'foo';
    o.sentimentAnalysisResult =
        buildGoogleCloudDialogflowV2SentimentAnalysisResult();
    o.speechRecognitionConfidence = 42.0;
    o.webhookPayload = buildUnnamed5357();
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
    checkUnnamed5353(o.diagnosticInfo);
    checkUnnamed5354(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2Intent(
        o.intent as api.GoogleCloudDialogflowV2Intent);
    unittest.expect(o.intentDetectionConfidence, unittest.equals(42.0));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed5355(o.outputContexts);
    checkUnnamed5356(o.parameters);
    unittest.expect(o.queryText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2SentimentAnalysisResult(
        o.sentimentAnalysisResult
            as api.GoogleCloudDialogflowV2SentimentAnalysisResult);
    unittest.expect(o.speechRecognitionConfidence, unittest.equals(42.0));
    checkUnnamed5357(o.webhookPayload);
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

core.List<api.GoogleCloudDialogflowV2Agent> buildUnnamed5358() {
  var o = <api.GoogleCloudDialogflowV2Agent>[];
  o.add(buildGoogleCloudDialogflowV2Agent());
  o.add(buildGoogleCloudDialogflowV2Agent());
  return o;
}

void checkUnnamed5358(core.List<api.GoogleCloudDialogflowV2Agent> o) {
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
    o.agents = buildUnnamed5358();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2SearchAgentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2SearchAgentsResponse(
    api.GoogleCloudDialogflowV2SearchAgentsResponse o) {
  buildCounterGoogleCloudDialogflowV2SearchAgentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2SearchAgentsResponse < 3) {
    checkUnnamed5358(o.agents);
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

core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> buildUnnamed5359() {
  var o = <api.GoogleCloudDialogflowV2EntityTypeEntity>[];
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

void checkUnnamed5359(
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
    o.entities = buildUnnamed5359();
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
    checkUnnamed5359(o.entities);
    unittest.expect(o.entityOverrideMode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2SessionEntityType--;
}

core.List<core.String> buildUnnamed5360() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5360(core.List<core.String> o) {
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
    o.phrases = buildUnnamed5360();
  }
  buildCounterGoogleCloudDialogflowV2SpeechContext--;
  return o;
}

void checkGoogleCloudDialogflowV2SpeechContext(
    api.GoogleCloudDialogflowV2SpeechContext o) {
  buildCounterGoogleCloudDialogflowV2SpeechContext++;
  if (buildCounterGoogleCloudDialogflowV2SpeechContext < 3) {
    unittest.expect(o.boost, unittest.equals(42.0));
    checkUnnamed5360(o.phrases);
  }
  buildCounterGoogleCloudDialogflowV2SpeechContext--;
}

core.List<core.String> buildUnnamed5361() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5361(core.List<core.String> o) {
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
    o.effectsProfileId = buildUnnamed5361();
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
    checkUnnamed5361(o.effectsProfileId);
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

core.List<core.String> buildUnnamed5362() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5362(core.List<core.String> o) {
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
    o.entries = buildUnnamed5362();
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
    checkUnnamed5362(o.entries);
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ValidationError--;
}

core.List<api.GoogleCloudDialogflowV2ValidationError> buildUnnamed5363() {
  var o = <api.GoogleCloudDialogflowV2ValidationError>[];
  o.add(buildGoogleCloudDialogflowV2ValidationError());
  o.add(buildGoogleCloudDialogflowV2ValidationError());
  return o;
}

void checkUnnamed5363(core.List<api.GoogleCloudDialogflowV2ValidationError> o) {
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
    o.validationErrors = buildUnnamed5363();
  }
  buildCounterGoogleCloudDialogflowV2ValidationResult--;
  return o;
}

void checkGoogleCloudDialogflowV2ValidationResult(
    api.GoogleCloudDialogflowV2ValidationResult o) {
  buildCounterGoogleCloudDialogflowV2ValidationResult++;
  if (buildCounterGoogleCloudDialogflowV2ValidationResult < 3) {
    checkUnnamed5363(o.validationErrors);
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

core.List<api.GoogleCloudDialogflowV2IntentMessage> buildUnnamed5364() {
  var o = <api.GoogleCloudDialogflowV2IntentMessage>[];
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

void checkUnnamed5364(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(
      o[0] as api.GoogleCloudDialogflowV2IntentMessage);
  checkGoogleCloudDialogflowV2IntentMessage(
      o[1] as api.GoogleCloudDialogflowV2IntentMessage);
}

core.List<api.GoogleCloudDialogflowV2Context> buildUnnamed5365() {
  var o = <api.GoogleCloudDialogflowV2Context>[];
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

void checkUnnamed5365(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(
      o[0] as api.GoogleCloudDialogflowV2Context);
  checkGoogleCloudDialogflowV2Context(
      o[1] as api.GoogleCloudDialogflowV2Context);
}

core.Map<core.String, core.Object> buildUnnamed5366() {
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

void checkUnnamed5366(core.Map<core.String, core.Object> o) {
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

core.List<api.GoogleCloudDialogflowV2SessionEntityType> buildUnnamed5367() {
  var o = <api.GoogleCloudDialogflowV2SessionEntityType>[];
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  return o;
}

void checkUnnamed5367(
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
    o.fulfillmentMessages = buildUnnamed5364();
    o.fulfillmentText = 'foo';
    o.outputContexts = buildUnnamed5365();
    o.payload = buildUnnamed5366();
    o.sessionEntityTypes = buildUnnamed5367();
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
    checkUnnamed5364(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkUnnamed5365(o.outputContexts);
    checkUnnamed5366(o.payload);
    checkUnnamed5367(o.sessionEntityTypes);
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2WebhookResponse--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1AnnotatedConversationDataset =
    0;
api.GoogleCloudDialogflowV2beta1AnnotatedConversationDataset
    buildGoogleCloudDialogflowV2beta1AnnotatedConversationDataset() {
  var o = api.GoogleCloudDialogflowV2beta1AnnotatedConversationDataset();
  buildCounterGoogleCloudDialogflowV2beta1AnnotatedConversationDataset++;
  if (buildCounterGoogleCloudDialogflowV2beta1AnnotatedConversationDataset <
      3) {
    o.completedExampleCount = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.exampleCount = 'foo';
    o.name = 'foo';
    o.questionTypeName = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1AnnotatedConversationDataset--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1AnnotatedConversationDataset(
    api.GoogleCloudDialogflowV2beta1AnnotatedConversationDataset o) {
  buildCounterGoogleCloudDialogflowV2beta1AnnotatedConversationDataset++;
  if (buildCounterGoogleCloudDialogflowV2beta1AnnotatedConversationDataset <
      3) {
    unittest.expect(o.completedExampleCount, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.exampleCount, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.questionTypeName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1AnnotatedConversationDataset--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse =
    0;
api.GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse
    buildGoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse() {
  var o = api
      .GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse();
  buildCounterGoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse <
      3) {
    o.disabledCount = 42;
    o.enabledCount = 42;
    o.unreviewedCount = 42;
  }
  buildCounterGoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse(
    api.GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse
        o) {
  buildCounterGoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse <
      3) {
    unittest.expect(o.disabledCount, unittest.equals(42));
    unittest.expect(o.enabledCount, unittest.equals(42));
    unittest.expect(o.unreviewedCount, unittest.equals(42));
  }
  buildCounterGoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse--;
}

core.List<api.GoogleCloudDialogflowV2beta1EntityType> buildUnnamed5368() {
  var o = <api.GoogleCloudDialogflowV2beta1EntityType>[];
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  return o;
}

void checkUnnamed5368(core.List<api.GoogleCloudDialogflowV2beta1EntityType> o) {
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
    o.entityTypes = buildUnnamed5368();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse(
    api.GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse <
      3) {
    checkUnnamed5368(o.entityTypes);
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse--;
}

core.List<api.GoogleCloudDialogflowV2beta1Intent> buildUnnamed5369() {
  var o = <api.GoogleCloudDialogflowV2beta1Intent>[];
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  return o;
}

void checkUnnamed5369(core.List<api.GoogleCloudDialogflowV2beta1Intent> o) {
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
    o.intents = buildUnnamed5369();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse(
    api.GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse < 3) {
    checkUnnamed5369(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse--;
}

core.List<api.GoogleCloudDialogflowV2beta1SmartMessagingEntry>
    buildUnnamed5370() {
  var o = <api.GoogleCloudDialogflowV2beta1SmartMessagingEntry>[];
  o.add(buildGoogleCloudDialogflowV2beta1SmartMessagingEntry());
  o.add(buildGoogleCloudDialogflowV2beta1SmartMessagingEntry());
  return o;
}

void checkUnnamed5370(
    core.List<api.GoogleCloudDialogflowV2beta1SmartMessagingEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1SmartMessagingEntry(
      o[0] as api.GoogleCloudDialogflowV2beta1SmartMessagingEntry);
  checkGoogleCloudDialogflowV2beta1SmartMessagingEntry(
      o[1] as api.GoogleCloudDialogflowV2beta1SmartMessagingEntry);
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse =
    0;
api.GoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse
    buildGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse() {
  var o = api
      .GoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse();
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse <
      3) {
    o.smartMessagingEntries = buildUnnamed5370();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse(
    api.GoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse
        o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse <
      3) {
    checkUnnamed5370(o.smartMessagingEntries);
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse--;
}

core.Map<core.String, core.Object> buildUnnamed5371() {
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

void checkUnnamed5371(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2beta1Context = 0;
api.GoogleCloudDialogflowV2beta1Context
    buildGoogleCloudDialogflowV2beta1Context() {
  var o = api.GoogleCloudDialogflowV2beta1Context();
  buildCounterGoogleCloudDialogflowV2beta1Context++;
  if (buildCounterGoogleCloudDialogflowV2beta1Context < 3) {
    o.lifespanCount = 42;
    o.name = 'foo';
    o.parameters = buildUnnamed5371();
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
    checkUnnamed5371(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2beta1Context--;
}

core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity> buildUnnamed5372() {
  var o = <api.GoogleCloudDialogflowV2beta1EntityTypeEntity>[];
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  return o;
}

void checkUnnamed5372(
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
    o.entities = buildUnnamed5372();
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
    checkUnnamed5372(o.entities);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityType--;
}

core.List<core.String> buildUnnamed5373() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5373(core.List<core.String> o) {
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
    o.synonyms = buildUnnamed5373();
    o.value = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1EntityTypeEntity(
    api.GoogleCloudDialogflowV2beta1EntityTypeEntity o) {
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity < 3) {
    checkUnnamed5373(o.synonyms);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity--;
}

core.Map<core.String, core.Object> buildUnnamed5374() {
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

void checkUnnamed5374(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2beta1EventInput = 0;
api.GoogleCloudDialogflowV2beta1EventInput
    buildGoogleCloudDialogflowV2beta1EventInput() {
  var o = api.GoogleCloudDialogflowV2beta1EventInput();
  buildCounterGoogleCloudDialogflowV2beta1EventInput++;
  if (buildCounterGoogleCloudDialogflowV2beta1EventInput < 3) {
    o.languageCode = 'foo';
    o.name = 'foo';
    o.parameters = buildUnnamed5374();
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
    checkUnnamed5374(o.parameters);
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

core.List<api.GoogleRpcStatus> buildUnnamed5375() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed5375(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int buildCounterGoogleCloudDialogflowV2beta1ImportDocumentsResponse = 0;
api.GoogleCloudDialogflowV2beta1ImportDocumentsResponse
    buildGoogleCloudDialogflowV2beta1ImportDocumentsResponse() {
  var o = api.GoogleCloudDialogflowV2beta1ImportDocumentsResponse();
  buildCounterGoogleCloudDialogflowV2beta1ImportDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ImportDocumentsResponse < 3) {
    o.warnings = buildUnnamed5375();
  }
  buildCounterGoogleCloudDialogflowV2beta1ImportDocumentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1ImportDocumentsResponse(
    api.GoogleCloudDialogflowV2beta1ImportDocumentsResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1ImportDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ImportDocumentsResponse < 3) {
    checkUnnamed5375(o.warnings);
  }
  buildCounterGoogleCloudDialogflowV2beta1ImportDocumentsResponse--;
}

core.List<core.String> buildUnnamed5376() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5376(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5377() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5377(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>
    buildUnnamed5378() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo());
  o.add(buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo());
  return o;
}

void checkUnnamed5378(
    core.List<api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo);
  checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo);
}

core.List<core.String> buildUnnamed5379() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5379(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> buildUnnamed5380() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessage>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

void checkUnnamed5380(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessage);
  checkGoogleCloudDialogflowV2beta1IntentMessage(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessage);
}

core.List<api.GoogleCloudDialogflowV2beta1Context> buildUnnamed5381() {
  var o = <api.GoogleCloudDialogflowV2beta1Context>[];
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

void checkUnnamed5381(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(
      o[0] as api.GoogleCloudDialogflowV2beta1Context);
  checkGoogleCloudDialogflowV2beta1Context(
      o[1] as api.GoogleCloudDialogflowV2beta1Context);
}

core.List<api.GoogleCloudDialogflowV2beta1IntentParameter> buildUnnamed5382() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentParameter>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentParameter());
  o.add(buildGoogleCloudDialogflowV2beta1IntentParameter());
  return o;
}

void checkUnnamed5382(
    core.List<api.GoogleCloudDialogflowV2beta1IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentParameter(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentParameter);
  checkGoogleCloudDialogflowV2beta1IntentParameter(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentParameter);
}

core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase>
    buildUnnamed5383() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase());
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase());
  return o;
}

void checkUnnamed5383(
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
    o.defaultResponsePlatforms = buildUnnamed5376();
    o.displayName = 'foo';
    o.endInteraction = true;
    o.events = buildUnnamed5377();
    o.followupIntentInfo = buildUnnamed5378();
    o.inputContextNames = buildUnnamed5379();
    o.isFallback = true;
    o.messages = buildUnnamed5380();
    o.mlDisabled = true;
    o.mlEnabled = true;
    o.name = 'foo';
    o.outputContexts = buildUnnamed5381();
    o.parameters = buildUnnamed5382();
    o.parentFollowupIntentName = 'foo';
    o.priority = 42;
    o.resetContexts = true;
    o.rootFollowupIntentName = 'foo';
    o.trainingPhrases = buildUnnamed5383();
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
    checkUnnamed5376(o.defaultResponsePlatforms);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.endInteraction, unittest.isTrue);
    checkUnnamed5377(o.events);
    checkUnnamed5378(o.followupIntentInfo);
    checkUnnamed5379(o.inputContextNames);
    unittest.expect(o.isFallback, unittest.isTrue);
    checkUnnamed5380(o.messages);
    unittest.expect(o.mlDisabled, unittest.isTrue);
    unittest.expect(o.mlEnabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5381(o.outputContexts);
    checkUnnamed5382(o.parameters);
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    unittest.expect(o.resetContexts, unittest.isTrue);
    unittest.expect(o.rootFollowupIntentName, unittest.equals('foo'));
    checkUnnamed5383(o.trainingPhrases);
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

core.Map<core.String, core.Object> buildUnnamed5384() {
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

void checkUnnamed5384(core.Map<core.String, core.Object> o) {
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
    o.payload = buildUnnamed5384();
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
    checkUnnamed5384(o.payload);
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
    buildUnnamed5385() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  return o;
}

void checkUnnamed5385(
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
    o.buttons = buildUnnamed5385();
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
    checkUnnamed5385(o.buttons);
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
    buildUnnamed5386() {
  var o = <
      api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem>[];
  o.add(
      buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem());
  o.add(
      buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem());
  return o;
}

void checkUnnamed5386(
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
    o.items = buildUnnamed5386();
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
    checkUnnamed5386(o.items);
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
    buildUnnamed5387() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageCardButton>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCardButton());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCardButton());
  return o;
}

void checkUnnamed5387(
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
    o.buttons = buildUnnamed5387();
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
    checkUnnamed5387(o.buttons);
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
    buildUnnamed5388() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem());
  return o;
}

void checkUnnamed5388(
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
    o.items = buildUnnamed5388();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect(
    api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect < 3) {
    checkUnnamed5388(o.items);
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
    buildUnnamed5389() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem());
  return o;
}

void checkUnnamed5389(
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
    o.items = buildUnnamed5389();
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
    checkUnnamed5389(o.items);
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
    buildUnnamed5390() {
  var o = <
      api.GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject>[];
  o.add(
      buildGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject());
  o.add(
      buildGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject());
  return o;
}

void checkUnnamed5390(
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
    o.mediaObjects = buildUnnamed5390();
    o.mediaType = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageMediaContent(
    api.GoogleCloudDialogflowV2beta1IntentMessageMediaContent o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent < 3) {
    checkUnnamed5390(o.mediaObjects);
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

core.List<core.String> buildUnnamed5391() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5391(core.List<core.String> o) {
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
    o.quickReplies = buildUnnamed5391();
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageQuickReplies(
    api.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies < 3) {
    checkUnnamed5391(o.quickReplies);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies--;
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>
    buildUnnamed5392() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  return o;
}

void checkUnnamed5392(
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
    o.suggestions = buildUnnamed5392();
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
    checkUnnamed5392(o.suggestions);
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
    buildUnnamed5393() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent());
  return o;
}

void checkUnnamed5393(
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
    o.cardContents = buildUnnamed5393();
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
    checkUnnamed5393(o.cardContents);
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
    buildUnnamed5394() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  return o;
}

void checkUnnamed5394(
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
    o.rbmSuggestion = buildUnnamed5394();
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageRbmText(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmText o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText < 3) {
    checkUnnamed5394(o.rbmSuggestion);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText--;
}

core.List<core.String> buildUnnamed5395() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5395(core.List<core.String> o) {
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
    o.synonyms = buildUnnamed5395();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo(
    api.GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed5395(o.synonyms);
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
    buildUnnamed5396() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse());
  return o;
}

void checkUnnamed5396(
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
    o.simpleResponses = buildUnnamed5396();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses(
    api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses <
      3) {
    checkUnnamed5396(o.simpleResponses);
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
    buildUnnamed5397() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion());
  return o;
}

void checkUnnamed5397(
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
    o.suggestions = buildUnnamed5397();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageSuggestions(
    api.GoogleCloudDialogflowV2beta1IntentMessageSuggestions o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions < 3) {
    checkUnnamed5397(o.suggestions);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions--;
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>
    buildUnnamed5398() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  return o;
}

void checkUnnamed5398(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton);
  checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton);
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>
    buildUnnamed5399() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageColumnProperties());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageColumnProperties());
  return o;
}

void checkUnnamed5399(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageColumnProperties(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties);
  checkGoogleCloudDialogflowV2beta1IntentMessageColumnProperties(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties);
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow>
    buildUnnamed5400() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageTableCardRow());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageTableCardRow());
  return o;
}

void checkUnnamed5400(
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
    o.buttons = buildUnnamed5398();
    o.columnProperties = buildUnnamed5399();
    o.image = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.rows = buildUnnamed5400();
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
    checkUnnamed5398(o.buttons);
    checkUnnamed5399(o.columnProperties);
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(
        o.image as api.GoogleCloudDialogflowV2beta1IntentMessageImage);
    checkUnnamed5400(o.rows);
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
    buildUnnamed5401() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessageTableCardCell>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageTableCardCell());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageTableCardCell());
  return o;
}

void checkUnnamed5401(
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
    o.cells = buildUnnamed5401();
    o.dividerAfter = true;
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageTableCardRow(
    api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow < 3) {
    checkUnnamed5401(o.cells);
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

core.List<core.String> buildUnnamed5402() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5402(core.List<core.String> o) {
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
    o.text = buildUnnamed5402();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1IntentMessageText(
    api.GoogleCloudDialogflowV2beta1IntentMessageText o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageText < 3) {
    checkUnnamed5402(o.text);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText--;
}

core.List<core.String> buildUnnamed5403() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5403(core.List<core.String> o) {
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
    o.prompts = buildUnnamed5403();
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
    checkUnnamed5403(o.prompts);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentParameter--;
}

core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart>
    buildUnnamed5404() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart());
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart());
  return o;
}

void checkUnnamed5404(
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
    o.parts = buildUnnamed5404();
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
    checkUnnamed5404(o.parts);
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
    buildUnnamed5405() {
  var o = <api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer>[];
  o.add(buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer());
  o.add(buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer());
  return o;
}

void checkUnnamed5405(
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
    o.answers = buildUnnamed5405();
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1KnowledgeAnswers(
    api.GoogleCloudDialogflowV2beta1KnowledgeAnswers o) {
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers < 3) {
    checkUnnamed5405(o.answers);
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

core.int buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse = 0;
api.GoogleCloudDialogflowV2beta1LabelConversationResponse
    buildGoogleCloudDialogflowV2beta1LabelConversationResponse() {
  var o = api.GoogleCloudDialogflowV2beta1LabelConversationResponse();
  buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse < 3) {
    o.annotatedConversationDataset =
        buildGoogleCloudDialogflowV2beta1AnnotatedConversationDataset();
  }
  buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1LabelConversationResponse(
    api.GoogleCloudDialogflowV2beta1LabelConversationResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse < 3) {
    checkGoogleCloudDialogflowV2beta1AnnotatedConversationDataset(
        o.annotatedConversationDataset
            as api.GoogleCloudDialogflowV2beta1AnnotatedConversationDataset);
  }
  buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse--;
}

core.Map<core.String, core.Object> buildUnnamed5406() {
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

void checkUnnamed5406(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest =
    0;
api.GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest
    buildGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest() {
  var o = api.GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest();
  buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest < 3) {
    o.payload = buildUnnamed5406();
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
    checkUnnamed5406(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest--;
}

core.Map<core.String, core.Object> buildUnnamed5407() {
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

void checkUnnamed5407(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted42 = (o['x']) as core.Map;
  unittest.expect(casted42, unittest.hasLength(3));
  unittest.expect(casted42['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted42['bool'], unittest.equals(true));
  unittest.expect(casted42['string'], unittest.equals('foo'));
  var casted43 = (o['y']) as core.Map;
  unittest.expect(casted43, unittest.hasLength(3));
  unittest.expect(casted43['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted43['bool'], unittest.equals(true));
  unittest.expect(casted43['string'], unittest.equals('foo'));
}

core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> buildUnnamed5408() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessage>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

void checkUnnamed5408(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessage);
  checkGoogleCloudDialogflowV2beta1IntentMessage(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessage);
}

core.List<api.GoogleCloudDialogflowV2beta1Context> buildUnnamed5409() {
  var o = <api.GoogleCloudDialogflowV2beta1Context>[];
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

void checkUnnamed5409(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(
      o[0] as api.GoogleCloudDialogflowV2beta1Context);
  checkGoogleCloudDialogflowV2beta1Context(
      o[1] as api.GoogleCloudDialogflowV2beta1Context);
}

core.Map<core.String, core.Object> buildUnnamed5410() {
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

void checkUnnamed5410(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed5411() {
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

void checkUnnamed5411(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2beta1QueryResult = 0;
api.GoogleCloudDialogflowV2beta1QueryResult
    buildGoogleCloudDialogflowV2beta1QueryResult() {
  var o = api.GoogleCloudDialogflowV2beta1QueryResult();
  buildCounterGoogleCloudDialogflowV2beta1QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2beta1QueryResult < 3) {
    o.action = 'foo';
    o.allRequiredParamsPresent = true;
    o.diagnosticInfo = buildUnnamed5407();
    o.fulfillmentMessages = buildUnnamed5408();
    o.fulfillmentText = 'foo';
    o.intent = buildGoogleCloudDialogflowV2beta1Intent();
    o.intentDetectionConfidence = 42.0;
    o.knowledgeAnswers = buildGoogleCloudDialogflowV2beta1KnowledgeAnswers();
    o.languageCode = 'foo';
    o.outputContexts = buildUnnamed5409();
    o.parameters = buildUnnamed5410();
    o.queryText = 'foo';
    o.sentimentAnalysisResult =
        buildGoogleCloudDialogflowV2beta1SentimentAnalysisResult();
    o.speechRecognitionConfidence = 42.0;
    o.webhookPayload = buildUnnamed5411();
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
    checkUnnamed5407(o.diagnosticInfo);
    checkUnnamed5408(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1Intent(
        o.intent as api.GoogleCloudDialogflowV2beta1Intent);
    unittest.expect(o.intentDetectionConfidence, unittest.equals(42.0));
    checkGoogleCloudDialogflowV2beta1KnowledgeAnswers(
        o.knowledgeAnswers as api.GoogleCloudDialogflowV2beta1KnowledgeAnswers);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed5409(o.outputContexts);
    checkUnnamed5410(o.parameters);
    unittest.expect(o.queryText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1SentimentAnalysisResult(
        o.sentimentAnalysisResult
            as api.GoogleCloudDialogflowV2beta1SentimentAnalysisResult);
    unittest.expect(o.speechRecognitionConfidence, unittest.equals(42.0));
    checkUnnamed5411(o.webhookPayload);
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

core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity> buildUnnamed5412() {
  var o = <api.GoogleCloudDialogflowV2beta1EntityTypeEntity>[];
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  return o;
}

void checkUnnamed5412(
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
    o.entities = buildUnnamed5412();
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
    checkUnnamed5412(o.entities);
    unittest.expect(o.entityOverrideMode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1SessionEntityType--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntry = 0;
api.GoogleCloudDialogflowV2beta1SmartMessagingEntry
    buildGoogleCloudDialogflowV2beta1SmartMessagingEntry() {
  var o = api.GoogleCloudDialogflowV2beta1SmartMessagingEntry();
  buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntry++;
  if (buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntry < 3) {
    o.messageInfo = buildGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo();
    o.name = 'foo';
    o.rawText = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntry--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1SmartMessagingEntry(
    api.GoogleCloudDialogflowV2beta1SmartMessagingEntry o) {
  buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntry++;
  if (buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntry < 3) {
    checkGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo(o.messageInfo
        as api.GoogleCloudDialogflowV2beta1SmartMessagingEntryInfo);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.rawText, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntry--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo = 0;
api.GoogleCloudDialogflowV2beta1SmartMessagingEntryInfo
    buildGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo() {
  var o = api.GoogleCloudDialogflowV2beta1SmartMessagingEntryInfo();
  buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo < 3) {
    o.creationMethod = 'foo';
    o.occurrenceCount = 42;
  }
  buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo--;
  return o;
}

void checkGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo(
    api.GoogleCloudDialogflowV2beta1SmartMessagingEntryInfo o) {
  buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo < 3) {
    unittest.expect(o.creationMethod, unittest.equals('foo'));
    unittest.expect(o.occurrenceCount, unittest.equals(42));
  }
  buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo--;
}

core.List<api.GoogleCloudDialogflowV2beta1QueryResult> buildUnnamed5413() {
  var o = <api.GoogleCloudDialogflowV2beta1QueryResult>[];
  o.add(buildGoogleCloudDialogflowV2beta1QueryResult());
  o.add(buildGoogleCloudDialogflowV2beta1QueryResult());
  return o;
}

void checkUnnamed5413(
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
    o.alternativeQueryResults = buildUnnamed5413();
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
    checkUnnamed5413(o.alternativeQueryResults);
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

core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> buildUnnamed5414() {
  var o = <api.GoogleCloudDialogflowV2beta1IntentMessage>[];
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

void checkUnnamed5414(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(
      o[0] as api.GoogleCloudDialogflowV2beta1IntentMessage);
  checkGoogleCloudDialogflowV2beta1IntentMessage(
      o[1] as api.GoogleCloudDialogflowV2beta1IntentMessage);
}

core.List<api.GoogleCloudDialogflowV2beta1Context> buildUnnamed5415() {
  var o = <api.GoogleCloudDialogflowV2beta1Context>[];
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

void checkUnnamed5415(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(
      o[0] as api.GoogleCloudDialogflowV2beta1Context);
  checkGoogleCloudDialogflowV2beta1Context(
      o[1] as api.GoogleCloudDialogflowV2beta1Context);
}

core.Map<core.String, core.Object> buildUnnamed5416() {
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

void checkUnnamed5416(core.Map<core.String, core.Object> o) {
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

core.List<api.GoogleCloudDialogflowV2beta1SessionEntityType>
    buildUnnamed5417() {
  var o = <api.GoogleCloudDialogflowV2beta1SessionEntityType>[];
  o.add(buildGoogleCloudDialogflowV2beta1SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2beta1SessionEntityType());
  return o;
}

void checkUnnamed5417(
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
    o.fulfillmentMessages = buildUnnamed5414();
    o.fulfillmentText = 'foo';
    o.outputContexts = buildUnnamed5415();
    o.payload = buildUnnamed5416();
    o.sessionEntityTypes = buildUnnamed5417();
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
    checkUnnamed5414(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkUnnamed5415(o.outputContexts);
    checkUnnamed5416(o.payload);
    checkUnnamed5417(o.sessionEntityTypes);
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1WebhookResponse--;
}

core.int buildCounterGoogleCloudDialogflowV3alpha1ExportAgentResponse = 0;
api.GoogleCloudDialogflowV3alpha1ExportAgentResponse
    buildGoogleCloudDialogflowV3alpha1ExportAgentResponse() {
  var o = api.GoogleCloudDialogflowV3alpha1ExportAgentResponse();
  buildCounterGoogleCloudDialogflowV3alpha1ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ExportAgentResponse < 3) {
    o.agentContent = 'foo';
    o.agentUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowV3alpha1ExportAgentResponse--;
  return o;
}

void checkGoogleCloudDialogflowV3alpha1ExportAgentResponse(
    api.GoogleCloudDialogflowV3alpha1ExportAgentResponse o) {
  buildCounterGoogleCloudDialogflowV3alpha1ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ExportAgentResponse < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV3alpha1ExportAgentResponse--;
}

core.int buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata = 0;
api.GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata
    buildGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata() {
  var o = api.GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata();
  buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata < 3) {}
  buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata--;
  return o;
}

void checkGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata(
    api.GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata o) {
  buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata < 3) {}
  buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata--;
}

core.int buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesResponse = 0;
api.GoogleCloudDialogflowV3alpha1ExportTestCasesResponse
    buildGoogleCloudDialogflowV3alpha1ExportTestCasesResponse() {
  var o = api.GoogleCloudDialogflowV3alpha1ExportTestCasesResponse();
  buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesResponse < 3) {
    o.content = 'foo';
    o.gcsUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV3alpha1ExportTestCasesResponse(
    api.GoogleCloudDialogflowV3alpha1ExportTestCasesResponse o) {
  buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesResponse < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.gcsUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesResponse--;
}

core.int buildCounterGoogleCloudDialogflowV3alpha1ImportAgentResponse = 0;
api.GoogleCloudDialogflowV3alpha1ImportAgentResponse
    buildGoogleCloudDialogflowV3alpha1ImportAgentResponse() {
  var o = api.GoogleCloudDialogflowV3alpha1ImportAgentResponse();
  buildCounterGoogleCloudDialogflowV3alpha1ImportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ImportAgentResponse < 3) {
    o.agent = 'foo';
  }
  buildCounterGoogleCloudDialogflowV3alpha1ImportAgentResponse--;
  return o;
}

void checkGoogleCloudDialogflowV3alpha1ImportAgentResponse(
    api.GoogleCloudDialogflowV3alpha1ImportAgentResponse o) {
  buildCounterGoogleCloudDialogflowV3alpha1ImportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ImportAgentResponse < 3) {
    unittest.expect(o.agent, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV3alpha1ImportAgentResponse--;
}

core.int buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata = 0;
api.GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata
    buildGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata() {
  var o = api.GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata();
  buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata < 3) {}
  buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata--;
  return o;
}

void checkGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata(
    api.GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata o) {
  buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata < 3) {}
  buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata--;
}

core.List<core.String> buildUnnamed5418() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5418(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesResponse = 0;
api.GoogleCloudDialogflowV3alpha1ImportTestCasesResponse
    buildGoogleCloudDialogflowV3alpha1ImportTestCasesResponse() {
  var o = api.GoogleCloudDialogflowV3alpha1ImportTestCasesResponse();
  buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesResponse < 3) {
    o.names = buildUnnamed5418();
  }
  buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV3alpha1ImportTestCasesResponse(
    api.GoogleCloudDialogflowV3alpha1ImportTestCasesResponse o) {
  buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesResponse < 3) {
    checkUnnamed5418(o.names);
  }
  buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesResponse--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed5419() {
  var o = <api.GoogleLongrunningOperation>[];
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

void checkUnnamed5419(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed5419();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5419(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed5420() {
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

void checkUnnamed5420(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed5421() {
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

void checkUnnamed5421(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  var o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed5420();
    o.name = 'foo';
    o.response = buildUnnamed5421();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error as api.GoogleRpcStatus);
    checkUnnamed5420(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5421(o.response);
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

core.Map<core.String, core.Object> buildUnnamed5422() {
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

void checkUnnamed5422(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed5423() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed5422());
  o.add(buildUnnamed5422());
  return o;
}

void checkUnnamed5423(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5422(o[0]);
  checkUnnamed5422(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  var o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5423();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed5423(o.details);
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

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1ImportAgentResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1ImportAgentResponse();
      var od = api.GoogleCloudDialogflowCxV3beta1ImportAgentResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ImportAgentResponse(
          od as api.GoogleCloudDialogflowCxV3beta1ImportAgentResponse);
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

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3beta1SessionInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowCxV3beta1SessionInfo();
      var od =
          api.GoogleCloudDialogflowCxV3beta1SessionInfo.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1SessionInfo(
          od as api.GoogleCloudDialogflowCxV3beta1SessionInfo);
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

  unittest.group('obj-schema-GoogleCloudDialogflowV2ImportDocumentsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2ImportDocumentsResponse();
      var od = api.GoogleCloudDialogflowV2ImportDocumentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2ImportDocumentsResponse(
          od as api.GoogleCloudDialogflowV2ImportDocumentsResponse);
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
      'obj-schema-GoogleCloudDialogflowV2beta1AnnotatedConversationDataset',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1AnnotatedConversationDataset();
      var od =
          api.GoogleCloudDialogflowV2beta1AnnotatedConversationDataset.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1AnnotatedConversationDataset(
          od as api.GoogleCloudDialogflowV2beta1AnnotatedConversationDataset);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse();
      var od =
          api.GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse(
          od as api
              .GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse);
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

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse();
      var od =
          api.GoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse
              .fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse(
          od as api
              .GoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse);
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

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1ImportDocumentsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1ImportDocumentsResponse();
      var od = api.GoogleCloudDialogflowV2beta1ImportDocumentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1ImportDocumentsResponse(
          od as api.GoogleCloudDialogflowV2beta1ImportDocumentsResponse);
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
      'obj-schema-GoogleCloudDialogflowV2beta1LabelConversationResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1LabelConversationResponse();
      var od =
          api.GoogleCloudDialogflowV2beta1LabelConversationResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1LabelConversationResponse(
          od as api.GoogleCloudDialogflowV2beta1LabelConversationResponse);
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

  unittest.group('obj-schema-GoogleCloudDialogflowV2beta1SmartMessagingEntry',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1SmartMessagingEntry();
      var od = api.GoogleCloudDialogflowV2beta1SmartMessagingEntry.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1SmartMessagingEntry(
          od as api.GoogleCloudDialogflowV2beta1SmartMessagingEntry);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2beta1SmartMessagingEntryInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo();
      var od = api.GoogleCloudDialogflowV2beta1SmartMessagingEntryInfo.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo(
          od as api.GoogleCloudDialogflowV2beta1SmartMessagingEntryInfo);
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

  unittest.group('obj-schema-GoogleCloudDialogflowV3alpha1ExportAgentResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV3alpha1ExportAgentResponse();
      var od = api.GoogleCloudDialogflowV3alpha1ExportAgentResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV3alpha1ExportAgentResponse(
          od as api.GoogleCloudDialogflowV3alpha1ExportAgentResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata();
      var od =
          api.GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata(
          od as api.GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV3alpha1ExportTestCasesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV3alpha1ExportTestCasesResponse();
      var od =
          api.GoogleCloudDialogflowV3alpha1ExportTestCasesResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV3alpha1ExportTestCasesResponse(
          od as api.GoogleCloudDialogflowV3alpha1ExportTestCasesResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV3alpha1ImportAgentResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV3alpha1ImportAgentResponse();
      var od = api.GoogleCloudDialogflowV3alpha1ImportAgentResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV3alpha1ImportAgentResponse(
          od as api.GoogleCloudDialogflowV3alpha1ImportAgentResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata();
      var od =
          api.GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata(
          od as api.GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV3alpha1ImportTestCasesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDialogflowV3alpha1ImportTestCasesResponse();
      var od =
          api.GoogleCloudDialogflowV3alpha1ImportTestCasesResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV3alpha1ImportTestCasesResponse(
          od as api.GoogleCloudDialogflowV3alpha1ImportTestCasesResponse);
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

  unittest.group('resource-ProjectsResourceApi', () {
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

  unittest.group('resource-ProjectsAgentResourceApi', () {
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

  unittest.group('resource-ProjectsAgentEntityTypesResourceApi', () {
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

  unittest.group('resource-ProjectsAgentEntityTypesEntitiesResourceApi', () {
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

  unittest.group('resource-ProjectsAgentEnvironmentsResourceApi', () {
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

  unittest.group('resource-ProjectsAgentEnvironmentsUsersSessionsResourceApi',
      () {
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
      'resource-ProjectsAgentEnvironmentsUsersSessionsContextsResourceApi', () {
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
      'resource-ProjectsAgentEnvironmentsUsersSessionsEntityTypesResourceApi',
      () {
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

  unittest.group('resource-ProjectsAgentIntentsResourceApi', () {
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

  unittest.group('resource-ProjectsAgentSessionsResourceApi', () {
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

  unittest.group('resource-ProjectsAgentSessionsContextsResourceApi', () {
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

  unittest.group('resource-ProjectsAgentSessionsEntityTypesResourceApi', () {
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

  unittest.group('resource-ProjectsLocationsOperationsResourceApi', () {
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

  unittest.group('resource-ProjectsOperationsResourceApi', () {
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
