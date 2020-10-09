library googleapis.dialogflow.v2.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/dialogflow/v2.dart' as api;

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

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata =
    0;
buildGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata() {
  var o =
      new api.GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata();
  buildCounterGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata <
      3) {
    o.version = "foo";
  }
  buildCounterGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata(
    api.GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata o) {
  buildCounterGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata <
      3) {
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentResponse = 0;
buildGoogleCloudDialogflowCxV3beta1ExportAgentResponse() {
  var o = new api.GoogleCloudDialogflowCxV3beta1ExportAgentResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentResponse < 3) {
    o.agentContent = "foo";
    o.agentUri = "foo";
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentResponse--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1ExportAgentResponse(
    api.GoogleCloudDialogflowCxV3beta1ExportAgentResponse o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentResponse < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ExportAgentResponse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ImportAgentResponse = 0;
buildGoogleCloudDialogflowCxV3beta1ImportAgentResponse() {
  var o = new api.GoogleCloudDialogflowCxV3beta1ImportAgentResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1ImportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportAgentResponse < 3) {
    o.agent = "foo";
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportAgentResponse--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1ImportAgentResponse(
    api.GoogleCloudDialogflowCxV3beta1ImportAgentResponse o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ImportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ImportAgentResponse < 3) {
    unittest.expect(o.agent, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ImportAgentResponse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1PageInfo = 0;
buildGoogleCloudDialogflowCxV3beta1PageInfo() {
  var o = new api.GoogleCloudDialogflowCxV3beta1PageInfo();
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PageInfo < 3) {
    o.currentPage = "foo";
    o.formInfo = buildGoogleCloudDialogflowCxV3beta1PageInfoFormInfo();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfo--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1PageInfo(
    api.GoogleCloudDialogflowCxV3beta1PageInfo o) {
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PageInfo < 3) {
    unittest.expect(o.currentPage, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1PageInfoFormInfo(o.formInfo);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfo--;
}

buildUnnamed3939() {
  var o = new core
      .List<api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo>();
  o.add(buildGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo());
  o.add(buildGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo());
  return o;
}

checkUnnamed3939(
    core.List<api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo(o[0]);
  checkGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo = 0;
buildGoogleCloudDialogflowCxV3beta1PageInfoFormInfo() {
  var o = new api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfo();
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo < 3) {
    o.parameterInfo = buildUnnamed3939();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1PageInfoFormInfo(
    api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfo o) {
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo < 3) {
    checkUnnamed3939(o.parameterInfo);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfo--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo = 0;
buildGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo() {
  var o = new api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo();
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo <
      3) {
    o.displayName = "foo";
    o.justCollected = true;
    o.required = true;
    o.state = "foo";
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo(
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
    unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted1["bool"], unittest.equals(true));
    unittest.expect(casted1["string"], unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo--;
}

buildUnnamed3940() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3940(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted2 = (o["x"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
  var casted3 = (o["y"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage = 0;
buildGoogleCloudDialogflowCxV3beta1ResponseMessage() {
  var o = new api.GoogleCloudDialogflowCxV3beta1ResponseMessage();
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
    o.payload = buildUnnamed3940();
    o.playAudio = buildGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio();
    o.text = buildGoogleCloudDialogflowCxV3beta1ResponseMessageText();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1ResponseMessage(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessage o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage < 3) {
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess(
        o.conversationSuccess);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction(
        o.endInteraction);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff(
        o.liveAgentHandoff);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio(o.mixedAudio);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText(
        o.outputAudioText);
    checkUnnamed3940(o.payload);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio(o.playAudio);
    checkGoogleCloudDialogflowCxV3beta1ResponseMessageText(o.text);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessage--;
}

buildUnnamed3941() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3941(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted4 = (o["x"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
  var casted5 = (o["y"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess =
    0;
buildGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess() {
  var o = new api
      .GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess <
      3) {
    o.metadata = buildUnnamed3941();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess <
      3) {
    checkUnnamed3941(o.metadata);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction = 0;
buildGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction() {
  var o = new api.GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction <
      3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction <
      3) {}
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction--;
}

buildUnnamed3942() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3942(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted6 = (o["x"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
  var casted7 = (o["y"]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff =
    0;
buildGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff() {
  var o =
      new api.GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff <
      3) {
    o.metadata = buildUnnamed3942();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff <
      3) {
    checkUnnamed3942(o.metadata);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff--;
}

buildUnnamed3943() {
  var o = new core.List<
      api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment>();
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment());
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment());
  return o;
}

checkUnnamed3943(
    core.List<
            api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio =
    0;
buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio() {
  var o = new api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio < 3) {
    o.segments = buildUnnamed3943();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio < 3) {
    checkUnnamed3943(o.segments);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment =
    0;
buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment() {
  var o =
      new api.GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment <
      3) {
    o.allowPlaybackInterruption = true;
    o.audio = "foo";
    o.uri = "foo";
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment(
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
buildGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText() {
  var o =
      new api.GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText <
      3) {
    o.allowPlaybackInterruption = true;
    o.ssml = "foo";
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText(
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
buildGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio() {
  var o = new api.GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio < 3) {
    o.allowPlaybackInterruption = true;
    o.audioUri = "foo";
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio < 3) {
    unittest.expect(o.allowPlaybackInterruption, unittest.isTrue);
    unittest.expect(o.audioUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio--;
}

buildUnnamed3944() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3944(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText = 0;
buildGoogleCloudDialogflowCxV3beta1ResponseMessageText() {
  var o = new api.GoogleCloudDialogflowCxV3beta1ResponseMessageText();
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText < 3) {
    o.allowPlaybackInterruption = true;
    o.text = buildUnnamed3944();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1ResponseMessageText(
    api.GoogleCloudDialogflowCxV3beta1ResponseMessageText o) {
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText < 3) {
    unittest.expect(o.allowPlaybackInterruption, unittest.isTrue);
    checkUnnamed3944(o.text);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1ResponseMessageText--;
}

buildUnnamed3945() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3945(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted8 = (o["x"]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
  var casted9 = (o["y"]) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted9["bool"], unittest.equals(true));
  unittest.expect(casted9["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo = 0;
buildGoogleCloudDialogflowCxV3beta1SessionInfo() {
  var o = new api.GoogleCloudDialogflowCxV3beta1SessionInfo();
  buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo < 3) {
    o.parameters = buildUnnamed3945();
    o.session = "foo";
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1SessionInfo(
    api.GoogleCloudDialogflowCxV3beta1SessionInfo o) {
  buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo < 3) {
    checkUnnamed3945(o.parameters);
    unittest.expect(o.session, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1SessionInfo--;
}

buildUnnamed3946() {
  var o = new core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage>();
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  return o;
}

checkUnnamed3946(
    core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(o[1]);
}

buildUnnamed3947() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3947(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted10 = (o["x"]) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted10["bool"], unittest.equals(true));
  unittest.expect(casted10["string"], unittest.equals('foo'));
  var casted11 = (o["y"]) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted11["bool"], unittest.equals(true));
  unittest.expect(casted11["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequest = 0;
buildGoogleCloudDialogflowCxV3beta1WebhookRequest() {
  var o = new api.GoogleCloudDialogflowCxV3beta1WebhookRequest();
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequest < 3) {
    o.detectIntentResponseId = "foo";
    o.fulfillmentInfo =
        buildGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo();
    o.intentInfo =
        buildGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo();
    o.messages = buildUnnamed3946();
    o.pageInfo = buildGoogleCloudDialogflowCxV3beta1PageInfo();
    o.payload = buildUnnamed3947();
    o.sessionInfo = buildGoogleCloudDialogflowCxV3beta1SessionInfo();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequest--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1WebhookRequest(
    api.GoogleCloudDialogflowCxV3beta1WebhookRequest o) {
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequest < 3) {
    unittest.expect(o.detectIntentResponseId, unittest.equals('foo'));
    checkGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo(
        o.fulfillmentInfo);
    checkGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo(o.intentInfo);
    checkUnnamed3946(o.messages);
    checkGoogleCloudDialogflowCxV3beta1PageInfo(o.pageInfo);
    checkUnnamed3947(o.payload);
    checkGoogleCloudDialogflowCxV3beta1SessionInfo(o.sessionInfo);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequest--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo = 0;
buildGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo() {
  var o = new api.GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo();
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo <
      3) {
    o.tag = "foo";
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo(
    api.GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo o) {
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo <
      3) {
    unittest.expect(o.tag, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo--;
}

buildUnnamed3948() {
  var o = new core.Map<core.String,
      api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue>();
  o["x"] =
      buildGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue();
  o["y"] =
      buildGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue();
  return o;
}

checkUnnamed3948(
    core.Map<core.String,
            api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue(
      o["x"]);
  checkGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue(
      o["y"]);
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo = 0;
buildGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo() {
  var o = new api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo();
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo < 3) {
    o.lastMatchedIntent = "foo";
    o.parameters = buildUnnamed3948();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo(
    api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo o) {
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo < 3) {
    unittest.expect(o.lastMatchedIntent, unittest.equals('foo'));
    checkUnnamed3948(o.parameters);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue =
    0;
buildGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue() {
  var o = new api
      .GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue();
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue <
      3) {
    o.originalValue = "foo";
    o.resolvedValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue(
    api.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue
        o) {
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue <
      3) {
    unittest.expect(o.originalValue, unittest.equals('foo'));
    var casted12 = (o.resolvedValue) as core.Map;
    unittest.expect(casted12, unittest.hasLength(3));
    unittest.expect(casted12["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted12["bool"], unittest.equals(true));
    unittest.expect(casted12["string"], unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue--;
}

buildUnnamed3949() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3949(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o["x"]) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted13["bool"], unittest.equals(true));
  unittest.expect(casted13["string"], unittest.equals('foo'));
  var casted14 = (o["y"]) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted14["bool"], unittest.equals(true));
  unittest.expect(casted14["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponse = 0;
buildGoogleCloudDialogflowCxV3beta1WebhookResponse() {
  var o = new api.GoogleCloudDialogflowCxV3beta1WebhookResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponse < 3) {
    o.fulfillmentResponse =
        buildGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse();
    o.pageInfo = buildGoogleCloudDialogflowCxV3beta1PageInfo();
    o.payload = buildUnnamed3949();
    o.sessionInfo = buildGoogleCloudDialogflowCxV3beta1SessionInfo();
    o.targetFlow = "foo";
    o.targetPage = "foo";
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponse--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1WebhookResponse(
    api.GoogleCloudDialogflowCxV3beta1WebhookResponse o) {
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponse < 3) {
    checkGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse(
        o.fulfillmentResponse);
    checkGoogleCloudDialogflowCxV3beta1PageInfo(o.pageInfo);
    checkUnnamed3949(o.payload);
    checkGoogleCloudDialogflowCxV3beta1SessionInfo(o.sessionInfo);
    unittest.expect(o.targetFlow, unittest.equals('foo'));
    unittest.expect(o.targetPage, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponse--;
}

buildUnnamed3950() {
  var o = new core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage>();
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  o.add(buildGoogleCloudDialogflowCxV3beta1ResponseMessage());
  return o;
}

checkUnnamed3950(
    core.List<api.GoogleCloudDialogflowCxV3beta1ResponseMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(o[0]);
  checkGoogleCloudDialogflowCxV3beta1ResponseMessage(o[1]);
}

core.int
    buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse =
    0;
buildGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse() {
  var o = new api
      .GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse();
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse <
      3) {
    o.mergeBehavior = "foo";
    o.messages = buildUnnamed3950();
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse--;
  return o;
}

checkGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse(
    api.GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse o) {
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse <
      3) {
    unittest.expect(o.mergeBehavior, unittest.equals('foo'));
    checkUnnamed3950(o.messages);
  }
  buildCounterGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse--;
}

buildUnnamed3951() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3951(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2Agent = 0;
buildGoogleCloudDialogflowV2Agent() {
  var o = new api.GoogleCloudDialogflowV2Agent();
  buildCounterGoogleCloudDialogflowV2Agent++;
  if (buildCounterGoogleCloudDialogflowV2Agent < 3) {
    o.apiVersion = "foo";
    o.avatarUri = "foo";
    o.classificationThreshold = 42.0;
    o.defaultLanguageCode = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.enableLogging = true;
    o.matchMode = "foo";
    o.parent = "foo";
    o.supportedLanguageCodes = buildUnnamed3951();
    o.tier = "foo";
    o.timeZone = "foo";
  }
  buildCounterGoogleCloudDialogflowV2Agent--;
  return o;
}

checkGoogleCloudDialogflowV2Agent(api.GoogleCloudDialogflowV2Agent o) {
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
    checkUnnamed3951(o.supportedLanguageCodes);
    unittest.expect(o.tier, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2Agent--;
}

core.int buildCounterGoogleCloudDialogflowV2AnnotatedMessagePart = 0;
buildGoogleCloudDialogflowV2AnnotatedMessagePart() {
  var o = new api.GoogleCloudDialogflowV2AnnotatedMessagePart();
  buildCounterGoogleCloudDialogflowV2AnnotatedMessagePart++;
  if (buildCounterGoogleCloudDialogflowV2AnnotatedMessagePart < 3) {
    o.entityType = "foo";
    o.formattedValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowV2AnnotatedMessagePart--;
  return o;
}

checkGoogleCloudDialogflowV2AnnotatedMessagePart(
    api.GoogleCloudDialogflowV2AnnotatedMessagePart o) {
  buildCounterGoogleCloudDialogflowV2AnnotatedMessagePart++;
  if (buildCounterGoogleCloudDialogflowV2AnnotatedMessagePart < 3) {
    unittest.expect(o.entityType, unittest.equals('foo'));
    var casted15 = (o.formattedValue) as core.Map;
    unittest.expect(casted15, unittest.hasLength(3));
    unittest.expect(casted15["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted15["bool"], unittest.equals(true));
    unittest.expect(casted15["string"], unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2AnnotatedMessagePart--;
}

buildUnnamed3952() {
  var o = new core.List<api.GoogleCloudDialogflowV2EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

checkUnnamed3952(core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest = 0;
buildGoogleCloudDialogflowV2BatchCreateEntitiesRequest() {
  var o = new api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest();
  buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest < 3) {
    o.entities = buildUnnamed3952();
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest--;
  return o;
}

checkGoogleCloudDialogflowV2BatchCreateEntitiesRequest(
    api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest < 3) {
    checkUnnamed3952(o.entities);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest--;
}

buildUnnamed3953() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3953(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest = 0;
buildGoogleCloudDialogflowV2BatchDeleteEntitiesRequest() {
  var o = new api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest();
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest < 3) {
    o.entityValues = buildUnnamed3953();
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest--;
  return o;
}

checkGoogleCloudDialogflowV2BatchDeleteEntitiesRequest(
    api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest < 3) {
    checkUnnamed3953(o.entityValues);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest--;
}

buildUnnamed3954() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3954(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest = 0;
buildGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest() {
  var o = new api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest();
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest < 3) {
    o.entityTypeNames = buildUnnamed3954();
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest--;
  return o;
}

checkGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest(
    api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest < 3) {
    checkUnnamed3954(o.entityTypeNames);
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest--;
}

buildUnnamed3955() {
  var o = new core.List<api.GoogleCloudDialogflowV2Intent>();
  o.add(buildGoogleCloudDialogflowV2Intent());
  o.add(buildGoogleCloudDialogflowV2Intent());
  return o;
}

checkUnnamed3955(core.List<api.GoogleCloudDialogflowV2Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Intent(o[0]);
  checkGoogleCloudDialogflowV2Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest = 0;
buildGoogleCloudDialogflowV2BatchDeleteIntentsRequest() {
  var o = new api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest();
  buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest < 3) {
    o.intents = buildUnnamed3955();
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest--;
  return o;
}

checkGoogleCloudDialogflowV2BatchDeleteIntentsRequest(
    api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest < 3) {
    checkUnnamed3955(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest--;
}

buildUnnamed3956() {
  var o = new core.List<api.GoogleCloudDialogflowV2EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

checkUnnamed3956(core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest = 0;
buildGoogleCloudDialogflowV2BatchUpdateEntitiesRequest() {
  var o = new api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest();
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest < 3) {
    o.entities = buildUnnamed3956();
    o.languageCode = "foo";
    o.updateMask = "foo";
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest--;
  return o;
}

checkGoogleCloudDialogflowV2BatchUpdateEntitiesRequest(
    api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest < 3) {
    checkUnnamed3956(o.entities);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest = 0;
buildGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest() {
  var o = new api.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest();
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest < 3) {
    o.entityTypeBatchInline = buildGoogleCloudDialogflowV2EntityTypeBatch();
    o.entityTypeBatchUri = "foo";
    o.languageCode = "foo";
    o.updateMask = "foo";
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest--;
  return o;
}

checkGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest(
    api.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest < 3) {
    checkGoogleCloudDialogflowV2EntityTypeBatch(o.entityTypeBatchInline);
    unittest.expect(o.entityTypeBatchUri, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest--;
}

buildUnnamed3957() {
  var o = new core.List<api.GoogleCloudDialogflowV2EntityType>();
  o.add(buildGoogleCloudDialogflowV2EntityType());
  o.add(buildGoogleCloudDialogflowV2EntityType());
  return o;
}

checkUnnamed3957(core.List<api.GoogleCloudDialogflowV2EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityType(o[0]);
  checkGoogleCloudDialogflowV2EntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse = 0;
buildGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse() {
  var o = new api.GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse();
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse < 3) {
    o.entityTypes = buildUnnamed3957();
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse--;
  return o;
}

checkGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse(
    api.GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse < 3) {
    checkUnnamed3957(o.entityTypes);
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse--;
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest = 0;
buildGoogleCloudDialogflowV2BatchUpdateIntentsRequest() {
  var o = new api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest();
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest < 3) {
    o.intentBatchInline = buildGoogleCloudDialogflowV2IntentBatch();
    o.intentBatchUri = "foo";
    o.intentView = "foo";
    o.languageCode = "foo";
    o.updateMask = "foo";
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest--;
  return o;
}

checkGoogleCloudDialogflowV2BatchUpdateIntentsRequest(
    api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest < 3) {
    checkGoogleCloudDialogflowV2IntentBatch(o.intentBatchInline);
    unittest.expect(o.intentBatchUri, unittest.equals('foo'));
    unittest.expect(o.intentView, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest--;
}

buildUnnamed3958() {
  var o = new core.List<api.GoogleCloudDialogflowV2Intent>();
  o.add(buildGoogleCloudDialogflowV2Intent());
  o.add(buildGoogleCloudDialogflowV2Intent());
  return o;
}

checkUnnamed3958(core.List<api.GoogleCloudDialogflowV2Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Intent(o[0]);
  checkGoogleCloudDialogflowV2Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse = 0;
buildGoogleCloudDialogflowV2BatchUpdateIntentsResponse() {
  var o = new api.GoogleCloudDialogflowV2BatchUpdateIntentsResponse();
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse < 3) {
    o.intents = buildUnnamed3958();
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2BatchUpdateIntentsResponse(
    api.GoogleCloudDialogflowV2BatchUpdateIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse < 3) {
    checkUnnamed3958(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse--;
}

buildUnnamed3959() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3959(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted16 = (o["x"]) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(casted16["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted16["bool"], unittest.equals(true));
  unittest.expect(casted16["string"], unittest.equals('foo'));
  var casted17 = (o["y"]) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(casted17["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted17["bool"], unittest.equals(true));
  unittest.expect(casted17["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2Context = 0;
buildGoogleCloudDialogflowV2Context() {
  var o = new api.GoogleCloudDialogflowV2Context();
  buildCounterGoogleCloudDialogflowV2Context++;
  if (buildCounterGoogleCloudDialogflowV2Context < 3) {
    o.lifespanCount = 42;
    o.name = "foo";
    o.parameters = buildUnnamed3959();
  }
  buildCounterGoogleCloudDialogflowV2Context--;
  return o;
}

checkGoogleCloudDialogflowV2Context(api.GoogleCloudDialogflowV2Context o) {
  buildCounterGoogleCloudDialogflowV2Context++;
  if (buildCounterGoogleCloudDialogflowV2Context < 3) {
    unittest.expect(o.lifespanCount, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3959(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2Context--;
}

core.int buildCounterGoogleCloudDialogflowV2ConversationEvent = 0;
buildGoogleCloudDialogflowV2ConversationEvent() {
  var o = new api.GoogleCloudDialogflowV2ConversationEvent();
  buildCounterGoogleCloudDialogflowV2ConversationEvent++;
  if (buildCounterGoogleCloudDialogflowV2ConversationEvent < 3) {
    o.conversation = "foo";
    o.errorStatus = buildGoogleRpcStatus();
    o.newMessagePayload = buildGoogleCloudDialogflowV2Message();
    o.type = "foo";
  }
  buildCounterGoogleCloudDialogflowV2ConversationEvent--;
  return o;
}

checkGoogleCloudDialogflowV2ConversationEvent(
    api.GoogleCloudDialogflowV2ConversationEvent o) {
  buildCounterGoogleCloudDialogflowV2ConversationEvent++;
  if (buildCounterGoogleCloudDialogflowV2ConversationEvent < 3) {
    unittest.expect(o.conversation, unittest.equals('foo'));
    checkGoogleRpcStatus(o.errorStatus);
    checkGoogleCloudDialogflowV2Message(o.newMessagePayload);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ConversationEvent--;
}

core.int buildCounterGoogleCloudDialogflowV2DetectIntentRequest = 0;
buildGoogleCloudDialogflowV2DetectIntentRequest() {
  var o = new api.GoogleCloudDialogflowV2DetectIntentRequest();
  buildCounterGoogleCloudDialogflowV2DetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2DetectIntentRequest < 3) {
    o.inputAudio = "foo";
    o.outputAudioConfig = buildGoogleCloudDialogflowV2OutputAudioConfig();
    o.outputAudioConfigMask = "foo";
    o.queryInput = buildGoogleCloudDialogflowV2QueryInput();
    o.queryParams = buildGoogleCloudDialogflowV2QueryParameters();
  }
  buildCounterGoogleCloudDialogflowV2DetectIntentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2DetectIntentRequest(
    api.GoogleCloudDialogflowV2DetectIntentRequest o) {
  buildCounterGoogleCloudDialogflowV2DetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2DetectIntentRequest < 3) {
    unittest.expect(o.inputAudio, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2OutputAudioConfig(o.outputAudioConfig);
    unittest.expect(o.outputAudioConfigMask, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2QueryInput(o.queryInput);
    checkGoogleCloudDialogflowV2QueryParameters(o.queryParams);
  }
  buildCounterGoogleCloudDialogflowV2DetectIntentRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2DetectIntentResponse = 0;
buildGoogleCloudDialogflowV2DetectIntentResponse() {
  var o = new api.GoogleCloudDialogflowV2DetectIntentResponse();
  buildCounterGoogleCloudDialogflowV2DetectIntentResponse++;
  if (buildCounterGoogleCloudDialogflowV2DetectIntentResponse < 3) {
    o.outputAudio = "foo";
    o.outputAudioConfig = buildGoogleCloudDialogflowV2OutputAudioConfig();
    o.queryResult = buildGoogleCloudDialogflowV2QueryResult();
    o.responseId = "foo";
    o.webhookStatus = buildGoogleRpcStatus();
  }
  buildCounterGoogleCloudDialogflowV2DetectIntentResponse--;
  return o;
}

checkGoogleCloudDialogflowV2DetectIntentResponse(
    api.GoogleCloudDialogflowV2DetectIntentResponse o) {
  buildCounterGoogleCloudDialogflowV2DetectIntentResponse++;
  if (buildCounterGoogleCloudDialogflowV2DetectIntentResponse < 3) {
    unittest.expect(o.outputAudio, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2OutputAudioConfig(o.outputAudioConfig);
    checkGoogleCloudDialogflowV2QueryResult(o.queryResult);
    unittest.expect(o.responseId, unittest.equals('foo'));
    checkGoogleRpcStatus(o.webhookStatus);
  }
  buildCounterGoogleCloudDialogflowV2DetectIntentResponse--;
}

buildUnnamed3960() {
  var o = new core.List<api.GoogleCloudDialogflowV2EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

checkUnnamed3960(core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2EntityType = 0;
buildGoogleCloudDialogflowV2EntityType() {
  var o = new api.GoogleCloudDialogflowV2EntityType();
  buildCounterGoogleCloudDialogflowV2EntityType++;
  if (buildCounterGoogleCloudDialogflowV2EntityType < 3) {
    o.autoExpansionMode = "foo";
    o.displayName = "foo";
    o.enableFuzzyExtraction = true;
    o.entities = buildUnnamed3960();
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterGoogleCloudDialogflowV2EntityType--;
  return o;
}

checkGoogleCloudDialogflowV2EntityType(
    api.GoogleCloudDialogflowV2EntityType o) {
  buildCounterGoogleCloudDialogflowV2EntityType++;
  if (buildCounterGoogleCloudDialogflowV2EntityType < 3) {
    unittest.expect(o.autoExpansionMode, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.enableFuzzyExtraction, unittest.isTrue);
    checkUnnamed3960(o.entities);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2EntityType--;
}

buildUnnamed3961() {
  var o = new core.List<api.GoogleCloudDialogflowV2EntityType>();
  o.add(buildGoogleCloudDialogflowV2EntityType());
  o.add(buildGoogleCloudDialogflowV2EntityType());
  return o;
}

checkUnnamed3961(core.List<api.GoogleCloudDialogflowV2EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityType(o[0]);
  checkGoogleCloudDialogflowV2EntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2EntityTypeBatch = 0;
buildGoogleCloudDialogflowV2EntityTypeBatch() {
  var o = new api.GoogleCloudDialogflowV2EntityTypeBatch();
  buildCounterGoogleCloudDialogflowV2EntityTypeBatch++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeBatch < 3) {
    o.entityTypes = buildUnnamed3961();
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeBatch--;
  return o;
}

checkGoogleCloudDialogflowV2EntityTypeBatch(
    api.GoogleCloudDialogflowV2EntityTypeBatch o) {
  buildCounterGoogleCloudDialogflowV2EntityTypeBatch++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeBatch < 3) {
    checkUnnamed3961(o.entityTypes);
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeBatch--;
}

buildUnnamed3962() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3962(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2EntityTypeEntity = 0;
buildGoogleCloudDialogflowV2EntityTypeEntity() {
  var o = new api.GoogleCloudDialogflowV2EntityTypeEntity();
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeEntity < 3) {
    o.synonyms = buildUnnamed3962();
    o.value = "foo";
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity--;
  return o;
}

checkGoogleCloudDialogflowV2EntityTypeEntity(
    api.GoogleCloudDialogflowV2EntityTypeEntity o) {
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeEntity < 3) {
    checkUnnamed3962(o.synonyms);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity--;
}

core.int buildCounterGoogleCloudDialogflowV2Environment = 0;
buildGoogleCloudDialogflowV2Environment() {
  var o = new api.GoogleCloudDialogflowV2Environment();
  buildCounterGoogleCloudDialogflowV2Environment++;
  if (buildCounterGoogleCloudDialogflowV2Environment < 3) {
    o.agentVersion = "foo";
    o.description = "foo";
    o.name = "foo";
    o.state = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudDialogflowV2Environment--;
  return o;
}

checkGoogleCloudDialogflowV2Environment(
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

buildUnnamed3963() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3963(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted18 = (o["x"]) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(casted18["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted18["bool"], unittest.equals(true));
  unittest.expect(casted18["string"], unittest.equals('foo'));
  var casted19 = (o["y"]) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(casted19["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted19["bool"], unittest.equals(true));
  unittest.expect(casted19["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2EventInput = 0;
buildGoogleCloudDialogflowV2EventInput() {
  var o = new api.GoogleCloudDialogflowV2EventInput();
  buildCounterGoogleCloudDialogflowV2EventInput++;
  if (buildCounterGoogleCloudDialogflowV2EventInput < 3) {
    o.languageCode = "foo";
    o.name = "foo";
    o.parameters = buildUnnamed3963();
  }
  buildCounterGoogleCloudDialogflowV2EventInput--;
  return o;
}

checkGoogleCloudDialogflowV2EventInput(
    api.GoogleCloudDialogflowV2EventInput o) {
  buildCounterGoogleCloudDialogflowV2EventInput++;
  if (buildCounterGoogleCloudDialogflowV2EventInput < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3963(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2EventInput--;
}

core.int buildCounterGoogleCloudDialogflowV2ExportAgentRequest = 0;
buildGoogleCloudDialogflowV2ExportAgentRequest() {
  var o = new api.GoogleCloudDialogflowV2ExportAgentRequest();
  buildCounterGoogleCloudDialogflowV2ExportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2ExportAgentRequest < 3) {
    o.agentUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2ExportAgentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2ExportAgentRequest(
    api.GoogleCloudDialogflowV2ExportAgentRequest o) {
  buildCounterGoogleCloudDialogflowV2ExportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2ExportAgentRequest < 3) {
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ExportAgentRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2ExportAgentResponse = 0;
buildGoogleCloudDialogflowV2ExportAgentResponse() {
  var o = new api.GoogleCloudDialogflowV2ExportAgentResponse();
  buildCounterGoogleCloudDialogflowV2ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV2ExportAgentResponse < 3) {
    o.agentContent = "foo";
    o.agentUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2ExportAgentResponse--;
  return o;
}

checkGoogleCloudDialogflowV2ExportAgentResponse(
    api.GoogleCloudDialogflowV2ExportAgentResponse o) {
  buildCounterGoogleCloudDialogflowV2ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV2ExportAgentResponse < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ExportAgentResponse--;
}

buildUnnamed3964() {
  var o = new core.List<api.GoogleCloudDialogflowV2FulfillmentFeature>();
  o.add(buildGoogleCloudDialogflowV2FulfillmentFeature());
  o.add(buildGoogleCloudDialogflowV2FulfillmentFeature());
  return o;
}

checkUnnamed3964(core.List<api.GoogleCloudDialogflowV2FulfillmentFeature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2FulfillmentFeature(o[0]);
  checkGoogleCloudDialogflowV2FulfillmentFeature(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2Fulfillment = 0;
buildGoogleCloudDialogflowV2Fulfillment() {
  var o = new api.GoogleCloudDialogflowV2Fulfillment();
  buildCounterGoogleCloudDialogflowV2Fulfillment++;
  if (buildCounterGoogleCloudDialogflowV2Fulfillment < 3) {
    o.displayName = "foo";
    o.enabled = true;
    o.features = buildUnnamed3964();
    o.genericWebService =
        buildGoogleCloudDialogflowV2FulfillmentGenericWebService();
    o.name = "foo";
  }
  buildCounterGoogleCloudDialogflowV2Fulfillment--;
  return o;
}

checkGoogleCloudDialogflowV2Fulfillment(
    api.GoogleCloudDialogflowV2Fulfillment o) {
  buildCounterGoogleCloudDialogflowV2Fulfillment++;
  if (buildCounterGoogleCloudDialogflowV2Fulfillment < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.enabled, unittest.isTrue);
    checkUnnamed3964(o.features);
    checkGoogleCloudDialogflowV2FulfillmentGenericWebService(
        o.genericWebService);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2Fulfillment--;
}

core.int buildCounterGoogleCloudDialogflowV2FulfillmentFeature = 0;
buildGoogleCloudDialogflowV2FulfillmentFeature() {
  var o = new api.GoogleCloudDialogflowV2FulfillmentFeature();
  buildCounterGoogleCloudDialogflowV2FulfillmentFeature++;
  if (buildCounterGoogleCloudDialogflowV2FulfillmentFeature < 3) {
    o.type = "foo";
  }
  buildCounterGoogleCloudDialogflowV2FulfillmentFeature--;
  return o;
}

checkGoogleCloudDialogflowV2FulfillmentFeature(
    api.GoogleCloudDialogflowV2FulfillmentFeature o) {
  buildCounterGoogleCloudDialogflowV2FulfillmentFeature++;
  if (buildCounterGoogleCloudDialogflowV2FulfillmentFeature < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2FulfillmentFeature--;
}

buildUnnamed3965() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3965(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2FulfillmentGenericWebService = 0;
buildGoogleCloudDialogflowV2FulfillmentGenericWebService() {
  var o = new api.GoogleCloudDialogflowV2FulfillmentGenericWebService();
  buildCounterGoogleCloudDialogflowV2FulfillmentGenericWebService++;
  if (buildCounterGoogleCloudDialogflowV2FulfillmentGenericWebService < 3) {
    o.isCloudFunction = true;
    o.password = "foo";
    o.requestHeaders = buildUnnamed3965();
    o.uri = "foo";
    o.username = "foo";
  }
  buildCounterGoogleCloudDialogflowV2FulfillmentGenericWebService--;
  return o;
}

checkGoogleCloudDialogflowV2FulfillmentGenericWebService(
    api.GoogleCloudDialogflowV2FulfillmentGenericWebService o) {
  buildCounterGoogleCloudDialogflowV2FulfillmentGenericWebService++;
  if (buildCounterGoogleCloudDialogflowV2FulfillmentGenericWebService < 3) {
    unittest.expect(o.isCloudFunction, unittest.isTrue);
    unittest.expect(o.password, unittest.equals('foo'));
    checkUnnamed3965(o.requestHeaders);
    unittest.expect(o.uri, unittest.equals('foo'));
    unittest.expect(o.username, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2FulfillmentGenericWebService--;
}

core.int buildCounterGoogleCloudDialogflowV2ImportAgentRequest = 0;
buildGoogleCloudDialogflowV2ImportAgentRequest() {
  var o = new api.GoogleCloudDialogflowV2ImportAgentRequest();
  buildCounterGoogleCloudDialogflowV2ImportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2ImportAgentRequest < 3) {
    o.agentContent = "foo";
    o.agentUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2ImportAgentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2ImportAgentRequest(
    api.GoogleCloudDialogflowV2ImportAgentRequest o) {
  buildCounterGoogleCloudDialogflowV2ImportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2ImportAgentRequest < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ImportAgentRequest--;
}

buildUnnamed3966() {
  var o = new core.List<api.GoogleRpcStatus>();
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

checkUnnamed3966(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ImportDocumentsResponse = 0;
buildGoogleCloudDialogflowV2ImportDocumentsResponse() {
  var o = new api.GoogleCloudDialogflowV2ImportDocumentsResponse();
  buildCounterGoogleCloudDialogflowV2ImportDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ImportDocumentsResponse < 3) {
    o.warnings = buildUnnamed3966();
  }
  buildCounterGoogleCloudDialogflowV2ImportDocumentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2ImportDocumentsResponse(
    api.GoogleCloudDialogflowV2ImportDocumentsResponse o) {
  buildCounterGoogleCloudDialogflowV2ImportDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ImportDocumentsResponse < 3) {
    checkUnnamed3966(o.warnings);
  }
  buildCounterGoogleCloudDialogflowV2ImportDocumentsResponse--;
}

buildUnnamed3967() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3967(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3968() {
  var o = new core.List<api.GoogleCloudDialogflowV2SpeechContext>();
  o.add(buildGoogleCloudDialogflowV2SpeechContext());
  o.add(buildGoogleCloudDialogflowV2SpeechContext());
  return o;
}

checkUnnamed3968(core.List<api.GoogleCloudDialogflowV2SpeechContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2SpeechContext(o[0]);
  checkGoogleCloudDialogflowV2SpeechContext(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2InputAudioConfig = 0;
buildGoogleCloudDialogflowV2InputAudioConfig() {
  var o = new api.GoogleCloudDialogflowV2InputAudioConfig();
  buildCounterGoogleCloudDialogflowV2InputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowV2InputAudioConfig < 3) {
    o.audioEncoding = "foo";
    o.enableWordInfo = true;
    o.languageCode = "foo";
    o.model = "foo";
    o.modelVariant = "foo";
    o.phraseHints = buildUnnamed3967();
    o.sampleRateHertz = 42;
    o.singleUtterance = true;
    o.speechContexts = buildUnnamed3968();
  }
  buildCounterGoogleCloudDialogflowV2InputAudioConfig--;
  return o;
}

checkGoogleCloudDialogflowV2InputAudioConfig(
    api.GoogleCloudDialogflowV2InputAudioConfig o) {
  buildCounterGoogleCloudDialogflowV2InputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowV2InputAudioConfig < 3) {
    unittest.expect(o.audioEncoding, unittest.equals('foo'));
    unittest.expect(o.enableWordInfo, unittest.isTrue);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.modelVariant, unittest.equals('foo'));
    checkUnnamed3967(o.phraseHints);
    unittest.expect(o.sampleRateHertz, unittest.equals(42));
    unittest.expect(o.singleUtterance, unittest.isTrue);
    checkUnnamed3968(o.speechContexts);
  }
  buildCounterGoogleCloudDialogflowV2InputAudioConfig--;
}

buildUnnamed3969() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3969(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3970() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3970(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3971() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentFollowupIntentInfo>();
  o.add(buildGoogleCloudDialogflowV2IntentFollowupIntentInfo());
  o.add(buildGoogleCloudDialogflowV2IntentFollowupIntentInfo());
  return o;
}

checkUnnamed3971(
    core.List<api.GoogleCloudDialogflowV2IntentFollowupIntentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(o[0]);
  checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(o[1]);
}

buildUnnamed3972() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3972(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3973() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

checkUnnamed3973(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2IntentMessage(o[1]);
}

buildUnnamed3974() {
  var o = new core.List<api.GoogleCloudDialogflowV2Context>();
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

checkUnnamed3974(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

buildUnnamed3975() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentParameter>();
  o.add(buildGoogleCloudDialogflowV2IntentParameter());
  o.add(buildGoogleCloudDialogflowV2IntentParameter());
  return o;
}

checkUnnamed3975(core.List<api.GoogleCloudDialogflowV2IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentParameter(o[0]);
  checkGoogleCloudDialogflowV2IntentParameter(o[1]);
}

buildUnnamed3976() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrase>();
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrase());
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrase());
  return o;
}

checkUnnamed3976(core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentTrainingPhrase(o[0]);
  checkGoogleCloudDialogflowV2IntentTrainingPhrase(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2Intent = 0;
buildGoogleCloudDialogflowV2Intent() {
  var o = new api.GoogleCloudDialogflowV2Intent();
  buildCounterGoogleCloudDialogflowV2Intent++;
  if (buildCounterGoogleCloudDialogflowV2Intent < 3) {
    o.action = "foo";
    o.defaultResponsePlatforms = buildUnnamed3969();
    o.displayName = "foo";
    o.events = buildUnnamed3970();
    o.followupIntentInfo = buildUnnamed3971();
    o.inputContextNames = buildUnnamed3972();
    o.isFallback = true;
    o.messages = buildUnnamed3973();
    o.mlDisabled = true;
    o.name = "foo";
    o.outputContexts = buildUnnamed3974();
    o.parameters = buildUnnamed3975();
    o.parentFollowupIntentName = "foo";
    o.priority = 42;
    o.resetContexts = true;
    o.rootFollowupIntentName = "foo";
    o.trainingPhrases = buildUnnamed3976();
    o.webhookState = "foo";
  }
  buildCounterGoogleCloudDialogflowV2Intent--;
  return o;
}

checkGoogleCloudDialogflowV2Intent(api.GoogleCloudDialogflowV2Intent o) {
  buildCounterGoogleCloudDialogflowV2Intent++;
  if (buildCounterGoogleCloudDialogflowV2Intent < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed3969(o.defaultResponsePlatforms);
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3970(o.events);
    checkUnnamed3971(o.followupIntentInfo);
    checkUnnamed3972(o.inputContextNames);
    unittest.expect(o.isFallback, unittest.isTrue);
    checkUnnamed3973(o.messages);
    unittest.expect(o.mlDisabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3974(o.outputContexts);
    checkUnnamed3975(o.parameters);
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    unittest.expect(o.resetContexts, unittest.isTrue);
    unittest.expect(o.rootFollowupIntentName, unittest.equals('foo'));
    checkUnnamed3976(o.trainingPhrases);
    unittest.expect(o.webhookState, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2Intent--;
}

buildUnnamed3977() {
  var o = new core.List<api.GoogleCloudDialogflowV2Intent>();
  o.add(buildGoogleCloudDialogflowV2Intent());
  o.add(buildGoogleCloudDialogflowV2Intent());
  return o;
}

checkUnnamed3977(core.List<api.GoogleCloudDialogflowV2Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Intent(o[0]);
  checkGoogleCloudDialogflowV2Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentBatch = 0;
buildGoogleCloudDialogflowV2IntentBatch() {
  var o = new api.GoogleCloudDialogflowV2IntentBatch();
  buildCounterGoogleCloudDialogflowV2IntentBatch++;
  if (buildCounterGoogleCloudDialogflowV2IntentBatch < 3) {
    o.intents = buildUnnamed3977();
  }
  buildCounterGoogleCloudDialogflowV2IntentBatch--;
  return o;
}

checkGoogleCloudDialogflowV2IntentBatch(
    api.GoogleCloudDialogflowV2IntentBatch o) {
  buildCounterGoogleCloudDialogflowV2IntentBatch++;
  if (buildCounterGoogleCloudDialogflowV2IntentBatch < 3) {
    checkUnnamed3977(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2IntentBatch--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo = 0;
buildGoogleCloudDialogflowV2IntentFollowupIntentInfo() {
  var o = new api.GoogleCloudDialogflowV2IntentFollowupIntentInfo();
  buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo++;
  if (buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo < 3) {
    o.followupIntentName = "foo";
    o.parentFollowupIntentName = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo--;
  return o;
}

checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(
    api.GoogleCloudDialogflowV2IntentFollowupIntentInfo o) {
  buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo++;
  if (buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo < 3) {
    unittest.expect(o.followupIntentName, unittest.equals('foo'));
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo--;
}

buildUnnamed3978() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3978(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted20 = (o["x"]) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(casted20["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted20["bool"], unittest.equals(true));
  unittest.expect(casted20["string"], unittest.equals('foo'));
  var casted21 = (o["y"]) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(casted21["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted21["bool"], unittest.equals(true));
  unittest.expect(casted21["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessage = 0;
buildGoogleCloudDialogflowV2IntentMessage() {
  var o = new api.GoogleCloudDialogflowV2IntentMessage();
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
    o.payload = buildUnnamed3978();
    o.platform = "foo";
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

checkGoogleCloudDialogflowV2IntentMessage(
    api.GoogleCloudDialogflowV2IntentMessage o) {
  buildCounterGoogleCloudDialogflowV2IntentMessage++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessage < 3) {
    checkGoogleCloudDialogflowV2IntentMessageBasicCard(o.basicCard);
    checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard(
        o.browseCarouselCard);
    checkGoogleCloudDialogflowV2IntentMessageCard(o.card);
    checkGoogleCloudDialogflowV2IntentMessageCarouselSelect(o.carouselSelect);
    checkGoogleCloudDialogflowV2IntentMessageImage(o.image);
    checkGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion(
        o.linkOutSuggestion);
    checkGoogleCloudDialogflowV2IntentMessageListSelect(o.listSelect);
    checkGoogleCloudDialogflowV2IntentMessageMediaContent(o.mediaContent);
    checkUnnamed3978(o.payload);
    unittest.expect(o.platform, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2IntentMessageQuickReplies(o.quickReplies);
    checkGoogleCloudDialogflowV2IntentMessageSimpleResponses(o.simpleResponses);
    checkGoogleCloudDialogflowV2IntentMessageSuggestions(o.suggestions);
    checkGoogleCloudDialogflowV2IntentMessageTableCard(o.tableCard);
    checkGoogleCloudDialogflowV2IntentMessageText(o.text);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessage--;
}

buildUnnamed3979() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  return o;
}

checkUnnamed3979(
    core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard = 0;
buildGoogleCloudDialogflowV2IntentMessageBasicCard() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageBasicCard();
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard < 3) {
    o.buttons = buildUnnamed3979();
    o.formattedText = "foo";
    o.image = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.subtitle = "foo";
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageBasicCard(
    api.GoogleCloudDialogflowV2IntentMessageBasicCard o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard < 3) {
    checkUnnamed3979(o.buttons);
    unittest.expect(o.formattedText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2IntentMessageImage(o.image);
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton = 0;
buildGoogleCloudDialogflowV2IntentMessageBasicCardButton() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageBasicCardButton();
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton < 3) {
    o.openUriAction =
        buildGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(
    api.GoogleCloudDialogflowV2IntentMessageBasicCardButton o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton < 3) {
    checkGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction(
        o.openUriAction);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton--;
}

core.int
    buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction =
    0;
buildGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction() {
  var o = new api
      .GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction();
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction <
      3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction(
    api.GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction <
      3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction--;
}

buildUnnamed3980() {
  var o = new core.List<
      api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem>();
  o.add(
      buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem());
  o.add(
      buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem());
  return o;
}

checkUnnamed3980(
    core.List<
            api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
      o[0]);
  checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
      o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard = 0;
buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard();
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard < 3) {
    o.imageDisplayOptions = "foo";
    o.items = buildUnnamed3980();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard(
    api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard < 3) {
    unittest.expect(o.imageDisplayOptions, unittest.equals('foo'));
    checkUnnamed3980(o.items);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard--;
}

core.int
    buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem =
    0;
buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem() {
  var o = new api
      .GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem();
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem <
      3) {
    o.description = "foo";
    o.footer = "foo";
    o.image = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.openUriAction =
        buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
    api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem
        o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem <
      3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.footer, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2IntentMessageImage(o.image);
    checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction(
        o.openUriAction);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem--;
}

core.int
    buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction =
    0;
buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction() {
  var o = new api
      .GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction();
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction <
      3) {
    o.url = "foo";
    o.urlTypeHint = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction(
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

buildUnnamed3981() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessageCardButton>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageCardButton());
  o.add(buildGoogleCloudDialogflowV2IntentMessageCardButton());
  return o;
}

checkUnnamed3981(
    core.List<api.GoogleCloudDialogflowV2IntentMessageCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageCardButton(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageCardButton(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageCard = 0;
buildGoogleCloudDialogflowV2IntentMessageCard() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageCard();
  buildCounterGoogleCloudDialogflowV2IntentMessageCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCard < 3) {
    o.buttons = buildUnnamed3981();
    o.imageUri = "foo";
    o.subtitle = "foo";
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCard--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageCard(
    api.GoogleCloudDialogflowV2IntentMessageCard o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCard < 3) {
    checkUnnamed3981(o.buttons);
    unittest.expect(o.imageUri, unittest.equals('foo'));
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCard--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageCardButton = 0;
buildGoogleCloudDialogflowV2IntentMessageCardButton() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageCardButton();
  buildCounterGoogleCloudDialogflowV2IntentMessageCardButton++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCardButton < 3) {
    o.postback = "foo";
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCardButton--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageCardButton(
    api.GoogleCloudDialogflowV2IntentMessageCardButton o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageCardButton++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCardButton < 3) {
    unittest.expect(o.postback, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCardButton--;
}

buildUnnamed3982() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem());
  o.add(buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem());
  return o;
}

checkUnnamed3982(
    core.List<api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageCarouselSelectItem(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageCarouselSelectItem(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect = 0;
buildGoogleCloudDialogflowV2IntentMessageCarouselSelect() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageCarouselSelect();
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect < 3) {
    o.items = buildUnnamed3982();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageCarouselSelect(
    api.GoogleCloudDialogflowV2IntentMessageCarouselSelect o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect < 3) {
    checkUnnamed3982(o.items);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem = 0;
buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem();
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem < 3) {
    o.description = "foo";
    o.image = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.info = buildGoogleCloudDialogflowV2IntentMessageSelectItemInfo();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageCarouselSelectItem(
    api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2IntentMessageImage(o.image);
    checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(o.info);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageColumnProperties = 0;
buildGoogleCloudDialogflowV2IntentMessageColumnProperties() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageColumnProperties();
  buildCounterGoogleCloudDialogflowV2IntentMessageColumnProperties++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageColumnProperties < 3) {
    o.header = "foo";
    o.horizontalAlignment = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageColumnProperties--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageColumnProperties(
    api.GoogleCloudDialogflowV2IntentMessageColumnProperties o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageColumnProperties++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageColumnProperties < 3) {
    unittest.expect(o.header, unittest.equals('foo'));
    unittest.expect(o.horizontalAlignment, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageColumnProperties--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageImage = 0;
buildGoogleCloudDialogflowV2IntentMessageImage() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageImage();
  buildCounterGoogleCloudDialogflowV2IntentMessageImage++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageImage < 3) {
    o.accessibilityText = "foo";
    o.imageUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageImage--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageImage(
    api.GoogleCloudDialogflowV2IntentMessageImage o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageImage++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageImage < 3) {
    unittest.expect(o.accessibilityText, unittest.equals('foo'));
    unittest.expect(o.imageUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageImage--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion = 0;
buildGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion();
  buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion < 3) {
    o.destinationName = "foo";
    o.uri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion(
    api.GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion < 3) {
    unittest.expect(o.destinationName, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion--;
}

buildUnnamed3983() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2IntentMessageListSelectItem>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageListSelectItem());
  o.add(buildGoogleCloudDialogflowV2IntentMessageListSelectItem());
  return o;
}

checkUnnamed3983(
    core.List<api.GoogleCloudDialogflowV2IntentMessageListSelectItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageListSelectItem(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageListSelectItem(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageListSelect = 0;
buildGoogleCloudDialogflowV2IntentMessageListSelect() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageListSelect();
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageListSelect < 3) {
    o.items = buildUnnamed3983();
    o.subtitle = "foo";
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelect--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageListSelect(
    api.GoogleCloudDialogflowV2IntentMessageListSelect o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageListSelect < 3) {
    checkUnnamed3983(o.items);
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelect--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem = 0;
buildGoogleCloudDialogflowV2IntentMessageListSelectItem() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageListSelectItem();
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem < 3) {
    o.description = "foo";
    o.image = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.info = buildGoogleCloudDialogflowV2IntentMessageSelectItemInfo();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageListSelectItem(
    api.GoogleCloudDialogflowV2IntentMessageListSelectItem o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2IntentMessageImage(o.image);
    checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(o.info);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem--;
}

buildUnnamed3984() {
  var o = new core.List<
      api.GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject>();
  o.add(
      buildGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject());
  o.add(
      buildGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject());
  return o;
}

checkUnnamed3984(
    core.List<
            api.GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject(
      o[0]);
  checkGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject(
      o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent = 0;
buildGoogleCloudDialogflowV2IntentMessageMediaContent() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageMediaContent();
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent < 3) {
    o.mediaObjects = buildUnnamed3984();
    o.mediaType = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageMediaContent(
    api.GoogleCloudDialogflowV2IntentMessageMediaContent o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent < 3) {
    checkUnnamed3984(o.mediaObjects);
    unittest.expect(o.mediaType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent--;
}

core.int
    buildCounterGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject =
    0;
buildGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject() {
  var o = new api
      .GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject();
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject <
      3) {
    o.contentUrl = "foo";
    o.description = "foo";
    o.icon = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.largeImage = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.name = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject(
    api.GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject <
      3) {
    unittest.expect(o.contentUrl, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2IntentMessageImage(o.icon);
    checkGoogleCloudDialogflowV2IntentMessageImage(o.largeImage);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject--;
}

buildUnnamed3985() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3985(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies = 0;
buildGoogleCloudDialogflowV2IntentMessageQuickReplies() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageQuickReplies();
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies < 3) {
    o.quickReplies = buildUnnamed3985();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageQuickReplies(
    api.GoogleCloudDialogflowV2IntentMessageQuickReplies o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies < 3) {
    checkUnnamed3985(o.quickReplies);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies--;
}

buildUnnamed3986() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3986(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo = 0;
buildGoogleCloudDialogflowV2IntentMessageSelectItemInfo() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo();
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo < 3) {
    o.key = "foo";
    o.synonyms = buildUnnamed3986();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(
    api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed3986(o.synonyms);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse = 0;
buildGoogleCloudDialogflowV2IntentMessageSimpleResponse() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageSimpleResponse();
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse < 3) {
    o.displayText = "foo";
    o.ssml = "foo";
    o.textToSpeech = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageSimpleResponse(
    api.GoogleCloudDialogflowV2IntentMessageSimpleResponse o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse < 3) {
    unittest.expect(o.displayText, unittest.equals('foo'));
    unittest.expect(o.ssml, unittest.equals('foo'));
    unittest.expect(o.textToSpeech, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse--;
}

buildUnnamed3987() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2IntentMessageSimpleResponse>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageSimpleResponse());
  o.add(buildGoogleCloudDialogflowV2IntentMessageSimpleResponse());
  return o;
}

checkUnnamed3987(
    core.List<api.GoogleCloudDialogflowV2IntentMessageSimpleResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageSimpleResponse(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageSimpleResponse(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses = 0;
buildGoogleCloudDialogflowV2IntentMessageSimpleResponses() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageSimpleResponses();
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses < 3) {
    o.simpleResponses = buildUnnamed3987();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageSimpleResponses(
    api.GoogleCloudDialogflowV2IntentMessageSimpleResponses o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses < 3) {
    checkUnnamed3987(o.simpleResponses);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion = 0;
buildGoogleCloudDialogflowV2IntentMessageSuggestion() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageSuggestion();
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion < 3) {
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageSuggestion(
    api.GoogleCloudDialogflowV2IntentMessageSuggestion o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion < 3) {
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion--;
}

buildUnnamed3988() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessageSuggestion>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageSuggestion());
  o.add(buildGoogleCloudDialogflowV2IntentMessageSuggestion());
  return o;
}

checkUnnamed3988(
    core.List<api.GoogleCloudDialogflowV2IntentMessageSuggestion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageSuggestion(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageSuggestion(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions = 0;
buildGoogleCloudDialogflowV2IntentMessageSuggestions() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageSuggestions();
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions < 3) {
    o.suggestions = buildUnnamed3988();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageSuggestions(
    api.GoogleCloudDialogflowV2IntentMessageSuggestions o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions < 3) {
    checkUnnamed3988(o.suggestions);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions--;
}

buildUnnamed3989() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  return o;
}

checkUnnamed3989(
    core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(o[1]);
}

buildUnnamed3990() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2IntentMessageColumnProperties>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageColumnProperties());
  o.add(buildGoogleCloudDialogflowV2IntentMessageColumnProperties());
  return o;
}

checkUnnamed3990(
    core.List<api.GoogleCloudDialogflowV2IntentMessageColumnProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageColumnProperties(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageColumnProperties(o[1]);
}

buildUnnamed3991() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessageTableCardRow>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageTableCardRow());
  o.add(buildGoogleCloudDialogflowV2IntentMessageTableCardRow());
  return o;
}

checkUnnamed3991(
    core.List<api.GoogleCloudDialogflowV2IntentMessageTableCardRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageTableCardRow(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageTableCardRow(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageTableCard = 0;
buildGoogleCloudDialogflowV2IntentMessageTableCard() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageTableCard();
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageTableCard < 3) {
    o.buttons = buildUnnamed3989();
    o.columnProperties = buildUnnamed3990();
    o.image = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.rows = buildUnnamed3991();
    o.subtitle = "foo";
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCard--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageTableCard(
    api.GoogleCloudDialogflowV2IntentMessageTableCard o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageTableCard < 3) {
    checkUnnamed3989(o.buttons);
    checkUnnamed3990(o.columnProperties);
    checkGoogleCloudDialogflowV2IntentMessageImage(o.image);
    checkUnnamed3991(o.rows);
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCard--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageTableCardCell = 0;
buildGoogleCloudDialogflowV2IntentMessageTableCardCell() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageTableCardCell();
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardCell++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageTableCardCell < 3) {
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardCell--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageTableCardCell(
    api.GoogleCloudDialogflowV2IntentMessageTableCardCell o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardCell++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageTableCardCell < 3) {
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardCell--;
}

buildUnnamed3992() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2IntentMessageTableCardCell>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageTableCardCell());
  o.add(buildGoogleCloudDialogflowV2IntentMessageTableCardCell());
  return o;
}

checkUnnamed3992(
    core.List<api.GoogleCloudDialogflowV2IntentMessageTableCardCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageTableCardCell(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageTableCardCell(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow = 0;
buildGoogleCloudDialogflowV2IntentMessageTableCardRow() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageTableCardRow();
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow < 3) {
    o.cells = buildUnnamed3992();
    o.dividerAfter = true;
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageTableCardRow(
    api.GoogleCloudDialogflowV2IntentMessageTableCardRow o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow < 3) {
    checkUnnamed3992(o.cells);
    unittest.expect(o.dividerAfter, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow--;
}

buildUnnamed3993() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3993(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageText = 0;
buildGoogleCloudDialogflowV2IntentMessageText() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageText();
  buildCounterGoogleCloudDialogflowV2IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageText < 3) {
    o.text = buildUnnamed3993();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageText--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageText(
    api.GoogleCloudDialogflowV2IntentMessageText o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageText < 3) {
    checkUnnamed3993(o.text);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageText--;
}

buildUnnamed3994() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3994(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2IntentParameter = 0;
buildGoogleCloudDialogflowV2IntentParameter() {
  var o = new api.GoogleCloudDialogflowV2IntentParameter();
  buildCounterGoogleCloudDialogflowV2IntentParameter++;
  if (buildCounterGoogleCloudDialogflowV2IntentParameter < 3) {
    o.defaultValue = "foo";
    o.displayName = "foo";
    o.entityTypeDisplayName = "foo";
    o.isList = true;
    o.mandatory = true;
    o.name = "foo";
    o.prompts = buildUnnamed3994();
    o.value = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentParameter--;
  return o;
}

checkGoogleCloudDialogflowV2IntentParameter(
    api.GoogleCloudDialogflowV2IntentParameter o) {
  buildCounterGoogleCloudDialogflowV2IntentParameter++;
  if (buildCounterGoogleCloudDialogflowV2IntentParameter < 3) {
    unittest.expect(o.defaultValue, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityTypeDisplayName, unittest.equals('foo'));
    unittest.expect(o.isList, unittest.isTrue);
    unittest.expect(o.mandatory, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3994(o.prompts);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentParameter--;
}

buildUnnamed3995() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrasePart>();
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrasePart());
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrasePart());
  return o;
}

checkUnnamed3995(
    core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrasePart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentTrainingPhrasePart(o[0]);
  checkGoogleCloudDialogflowV2IntentTrainingPhrasePart(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase = 0;
buildGoogleCloudDialogflowV2IntentTrainingPhrase() {
  var o = new api.GoogleCloudDialogflowV2IntentTrainingPhrase();
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase < 3) {
    o.name = "foo";
    o.parts = buildUnnamed3995();
    o.timesAddedCount = 42;
    o.type = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase--;
  return o;
}

checkGoogleCloudDialogflowV2IntentTrainingPhrase(
    api.GoogleCloudDialogflowV2IntentTrainingPhrase o) {
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3995(o.parts);
    unittest.expect(o.timesAddedCount, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart = 0;
buildGoogleCloudDialogflowV2IntentTrainingPhrasePart() {
  var o = new api.GoogleCloudDialogflowV2IntentTrainingPhrasePart();
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart++;
  if (buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart < 3) {
    o.alias = "foo";
    o.entityType = "foo";
    o.text = "foo";
    o.userDefined = true;
  }
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart--;
  return o;
}

checkGoogleCloudDialogflowV2IntentTrainingPhrasePart(
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

buildUnnamed3996() {
  var o = new core.List<api.GoogleCloudDialogflowV2Context>();
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

checkUnnamed3996(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListContextsResponse = 0;
buildGoogleCloudDialogflowV2ListContextsResponse() {
  var o = new api.GoogleCloudDialogflowV2ListContextsResponse();
  buildCounterGoogleCloudDialogflowV2ListContextsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListContextsResponse < 3) {
    o.contexts = buildUnnamed3996();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2ListContextsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2ListContextsResponse(
    api.GoogleCloudDialogflowV2ListContextsResponse o) {
  buildCounterGoogleCloudDialogflowV2ListContextsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListContextsResponse < 3) {
    checkUnnamed3996(o.contexts);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ListContextsResponse--;
}

buildUnnamed3997() {
  var o = new core.List<api.GoogleCloudDialogflowV2EntityType>();
  o.add(buildGoogleCloudDialogflowV2EntityType());
  o.add(buildGoogleCloudDialogflowV2EntityType());
  return o;
}

checkUnnamed3997(core.List<api.GoogleCloudDialogflowV2EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityType(o[0]);
  checkGoogleCloudDialogflowV2EntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse = 0;
buildGoogleCloudDialogflowV2ListEntityTypesResponse() {
  var o = new api.GoogleCloudDialogflowV2ListEntityTypesResponse();
  buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse < 3) {
    o.entityTypes = buildUnnamed3997();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse--;
  return o;
}

checkGoogleCloudDialogflowV2ListEntityTypesResponse(
    api.GoogleCloudDialogflowV2ListEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse < 3) {
    checkUnnamed3997(o.entityTypes);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse--;
}

buildUnnamed3998() {
  var o = new core.List<api.GoogleCloudDialogflowV2Environment>();
  o.add(buildGoogleCloudDialogflowV2Environment());
  o.add(buildGoogleCloudDialogflowV2Environment());
  return o;
}

checkUnnamed3998(core.List<api.GoogleCloudDialogflowV2Environment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Environment(o[0]);
  checkGoogleCloudDialogflowV2Environment(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse = 0;
buildGoogleCloudDialogflowV2ListEnvironmentsResponse() {
  var o = new api.GoogleCloudDialogflowV2ListEnvironmentsResponse();
  buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse < 3) {
    o.environments = buildUnnamed3998();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2ListEnvironmentsResponse(
    api.GoogleCloudDialogflowV2ListEnvironmentsResponse o) {
  buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse < 3) {
    checkUnnamed3998(o.environments);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse--;
}

buildUnnamed3999() {
  var o = new core.List<api.GoogleCloudDialogflowV2Intent>();
  o.add(buildGoogleCloudDialogflowV2Intent());
  o.add(buildGoogleCloudDialogflowV2Intent());
  return o;
}

checkUnnamed3999(core.List<api.GoogleCloudDialogflowV2Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Intent(o[0]);
  checkGoogleCloudDialogflowV2Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListIntentsResponse = 0;
buildGoogleCloudDialogflowV2ListIntentsResponse() {
  var o = new api.GoogleCloudDialogflowV2ListIntentsResponse();
  buildCounterGoogleCloudDialogflowV2ListIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListIntentsResponse < 3) {
    o.intents = buildUnnamed3999();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2ListIntentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2ListIntentsResponse(
    api.GoogleCloudDialogflowV2ListIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2ListIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListIntentsResponse < 3) {
    checkUnnamed3999(o.intents);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ListIntentsResponse--;
}

buildUnnamed4000() {
  var o = new core.List<api.GoogleCloudDialogflowV2SessionEntityType>();
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  return o;
}

checkUnnamed4000(core.List<api.GoogleCloudDialogflowV2SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2SessionEntityType(o[0]);
  checkGoogleCloudDialogflowV2SessionEntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse = 0;
buildGoogleCloudDialogflowV2ListSessionEntityTypesResponse() {
  var o = new api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse();
  buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse < 3) {
    o.nextPageToken = "foo";
    o.sessionEntityTypes = buildUnnamed4000();
  }
  buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse--;
  return o;
}

checkGoogleCloudDialogflowV2ListSessionEntityTypesResponse(
    api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4000(o.sessionEntityTypes);
  }
  buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse--;
}

core.int buildCounterGoogleCloudDialogflowV2Message = 0;
buildGoogleCloudDialogflowV2Message() {
  var o = new api.GoogleCloudDialogflowV2Message();
  buildCounterGoogleCloudDialogflowV2Message++;
  if (buildCounterGoogleCloudDialogflowV2Message < 3) {
    o.content = "foo";
    o.createTime = "foo";
    o.languageCode = "foo";
    o.messageAnnotation = buildGoogleCloudDialogflowV2MessageAnnotation();
    o.name = "foo";
    o.participant = "foo";
    o.participantRole = "foo";
  }
  buildCounterGoogleCloudDialogflowV2Message--;
  return o;
}

checkGoogleCloudDialogflowV2Message(api.GoogleCloudDialogflowV2Message o) {
  buildCounterGoogleCloudDialogflowV2Message++;
  if (buildCounterGoogleCloudDialogflowV2Message < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2MessageAnnotation(o.messageAnnotation);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.participant, unittest.equals('foo'));
    unittest.expect(o.participantRole, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2Message--;
}

buildUnnamed4001() {
  var o = new core.List<api.GoogleCloudDialogflowV2AnnotatedMessagePart>();
  o.add(buildGoogleCloudDialogflowV2AnnotatedMessagePart());
  o.add(buildGoogleCloudDialogflowV2AnnotatedMessagePart());
  return o;
}

checkUnnamed4001(core.List<api.GoogleCloudDialogflowV2AnnotatedMessagePart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2AnnotatedMessagePart(o[0]);
  checkGoogleCloudDialogflowV2AnnotatedMessagePart(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2MessageAnnotation = 0;
buildGoogleCloudDialogflowV2MessageAnnotation() {
  var o = new api.GoogleCloudDialogflowV2MessageAnnotation();
  buildCounterGoogleCloudDialogflowV2MessageAnnotation++;
  if (buildCounterGoogleCloudDialogflowV2MessageAnnotation < 3) {
    o.containEntities = true;
    o.parts = buildUnnamed4001();
  }
  buildCounterGoogleCloudDialogflowV2MessageAnnotation--;
  return o;
}

checkGoogleCloudDialogflowV2MessageAnnotation(
    api.GoogleCloudDialogflowV2MessageAnnotation o) {
  buildCounterGoogleCloudDialogflowV2MessageAnnotation++;
  if (buildCounterGoogleCloudDialogflowV2MessageAnnotation < 3) {
    unittest.expect(o.containEntities, unittest.isTrue);
    checkUnnamed4001(o.parts);
  }
  buildCounterGoogleCloudDialogflowV2MessageAnnotation--;
}

buildUnnamed4002() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4002(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted22 = (o["x"]) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(casted22["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted22["bool"], unittest.equals(true));
  unittest.expect(casted22["string"], unittest.equals('foo'));
  var casted23 = (o["y"]) as core.Map;
  unittest.expect(casted23, unittest.hasLength(3));
  unittest.expect(casted23["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted23["bool"], unittest.equals(true));
  unittest.expect(casted23["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest = 0;
buildGoogleCloudDialogflowV2OriginalDetectIntentRequest() {
  var o = new api.GoogleCloudDialogflowV2OriginalDetectIntentRequest();
  buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest < 3) {
    o.payload = buildUnnamed4002();
    o.source = "foo";
    o.version = "foo";
  }
  buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2OriginalDetectIntentRequest(
    api.GoogleCloudDialogflowV2OriginalDetectIntentRequest o) {
  buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest < 3) {
    checkUnnamed4002(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2OutputAudioConfig = 0;
buildGoogleCloudDialogflowV2OutputAudioConfig() {
  var o = new api.GoogleCloudDialogflowV2OutputAudioConfig();
  buildCounterGoogleCloudDialogflowV2OutputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowV2OutputAudioConfig < 3) {
    o.audioEncoding = "foo";
    o.sampleRateHertz = 42;
    o.synthesizeSpeechConfig =
        buildGoogleCloudDialogflowV2SynthesizeSpeechConfig();
  }
  buildCounterGoogleCloudDialogflowV2OutputAudioConfig--;
  return o;
}

checkGoogleCloudDialogflowV2OutputAudioConfig(
    api.GoogleCloudDialogflowV2OutputAudioConfig o) {
  buildCounterGoogleCloudDialogflowV2OutputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowV2OutputAudioConfig < 3) {
    unittest.expect(o.audioEncoding, unittest.equals('foo'));
    unittest.expect(o.sampleRateHertz, unittest.equals(42));
    checkGoogleCloudDialogflowV2SynthesizeSpeechConfig(
        o.synthesizeSpeechConfig);
  }
  buildCounterGoogleCloudDialogflowV2OutputAudioConfig--;
}

core.int buildCounterGoogleCloudDialogflowV2QueryInput = 0;
buildGoogleCloudDialogflowV2QueryInput() {
  var o = new api.GoogleCloudDialogflowV2QueryInput();
  buildCounterGoogleCloudDialogflowV2QueryInput++;
  if (buildCounterGoogleCloudDialogflowV2QueryInput < 3) {
    o.audioConfig = buildGoogleCloudDialogflowV2InputAudioConfig();
    o.event = buildGoogleCloudDialogflowV2EventInput();
    o.text = buildGoogleCloudDialogflowV2TextInput();
  }
  buildCounterGoogleCloudDialogflowV2QueryInput--;
  return o;
}

checkGoogleCloudDialogflowV2QueryInput(
    api.GoogleCloudDialogflowV2QueryInput o) {
  buildCounterGoogleCloudDialogflowV2QueryInput++;
  if (buildCounterGoogleCloudDialogflowV2QueryInput < 3) {
    checkGoogleCloudDialogflowV2InputAudioConfig(o.audioConfig);
    checkGoogleCloudDialogflowV2EventInput(o.event);
    checkGoogleCloudDialogflowV2TextInput(o.text);
  }
  buildCounterGoogleCloudDialogflowV2QueryInput--;
}

buildUnnamed4003() {
  var o = new core.List<api.GoogleCloudDialogflowV2Context>();
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

checkUnnamed4003(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

buildUnnamed4004() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4004(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted24 = (o["x"]) as core.Map;
  unittest.expect(casted24, unittest.hasLength(3));
  unittest.expect(casted24["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted24["bool"], unittest.equals(true));
  unittest.expect(casted24["string"], unittest.equals('foo'));
  var casted25 = (o["y"]) as core.Map;
  unittest.expect(casted25, unittest.hasLength(3));
  unittest.expect(casted25["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted25["bool"], unittest.equals(true));
  unittest.expect(casted25["string"], unittest.equals('foo'));
}

buildUnnamed4005() {
  var o = new core.List<api.GoogleCloudDialogflowV2SessionEntityType>();
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  return o;
}

checkUnnamed4005(core.List<api.GoogleCloudDialogflowV2SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2SessionEntityType(o[0]);
  checkGoogleCloudDialogflowV2SessionEntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2QueryParameters = 0;
buildGoogleCloudDialogflowV2QueryParameters() {
  var o = new api.GoogleCloudDialogflowV2QueryParameters();
  buildCounterGoogleCloudDialogflowV2QueryParameters++;
  if (buildCounterGoogleCloudDialogflowV2QueryParameters < 3) {
    o.contexts = buildUnnamed4003();
    o.geoLocation = buildGoogleTypeLatLng();
    o.payload = buildUnnamed4004();
    o.resetContexts = true;
    o.sentimentAnalysisRequestConfig =
        buildGoogleCloudDialogflowV2SentimentAnalysisRequestConfig();
    o.sessionEntityTypes = buildUnnamed4005();
    o.timeZone = "foo";
  }
  buildCounterGoogleCloudDialogflowV2QueryParameters--;
  return o;
}

checkGoogleCloudDialogflowV2QueryParameters(
    api.GoogleCloudDialogflowV2QueryParameters o) {
  buildCounterGoogleCloudDialogflowV2QueryParameters++;
  if (buildCounterGoogleCloudDialogflowV2QueryParameters < 3) {
    checkUnnamed4003(o.contexts);
    checkGoogleTypeLatLng(o.geoLocation);
    checkUnnamed4004(o.payload);
    unittest.expect(o.resetContexts, unittest.isTrue);
    checkGoogleCloudDialogflowV2SentimentAnalysisRequestConfig(
        o.sentimentAnalysisRequestConfig);
    checkUnnamed4005(o.sessionEntityTypes);
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2QueryParameters--;
}

buildUnnamed4006() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4006(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted26 = (o["x"]) as core.Map;
  unittest.expect(casted26, unittest.hasLength(3));
  unittest.expect(casted26["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted26["bool"], unittest.equals(true));
  unittest.expect(casted26["string"], unittest.equals('foo'));
  var casted27 = (o["y"]) as core.Map;
  unittest.expect(casted27, unittest.hasLength(3));
  unittest.expect(casted27["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted27["bool"], unittest.equals(true));
  unittest.expect(casted27["string"], unittest.equals('foo'));
}

buildUnnamed4007() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

checkUnnamed4007(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2IntentMessage(o[1]);
}

buildUnnamed4008() {
  var o = new core.List<api.GoogleCloudDialogflowV2Context>();
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

checkUnnamed4008(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

buildUnnamed4009() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4009(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted28 = (o["x"]) as core.Map;
  unittest.expect(casted28, unittest.hasLength(3));
  unittest.expect(casted28["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted28["bool"], unittest.equals(true));
  unittest.expect(casted28["string"], unittest.equals('foo'));
  var casted29 = (o["y"]) as core.Map;
  unittest.expect(casted29, unittest.hasLength(3));
  unittest.expect(casted29["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted29["bool"], unittest.equals(true));
  unittest.expect(casted29["string"], unittest.equals('foo'));
}

buildUnnamed4010() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4010(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted30 = (o["x"]) as core.Map;
  unittest.expect(casted30, unittest.hasLength(3));
  unittest.expect(casted30["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted30["bool"], unittest.equals(true));
  unittest.expect(casted30["string"], unittest.equals('foo'));
  var casted31 = (o["y"]) as core.Map;
  unittest.expect(casted31, unittest.hasLength(3));
  unittest.expect(casted31["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted31["bool"], unittest.equals(true));
  unittest.expect(casted31["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2QueryResult = 0;
buildGoogleCloudDialogflowV2QueryResult() {
  var o = new api.GoogleCloudDialogflowV2QueryResult();
  buildCounterGoogleCloudDialogflowV2QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2QueryResult < 3) {
    o.action = "foo";
    o.allRequiredParamsPresent = true;
    o.diagnosticInfo = buildUnnamed4006();
    o.fulfillmentMessages = buildUnnamed4007();
    o.fulfillmentText = "foo";
    o.intent = buildGoogleCloudDialogflowV2Intent();
    o.intentDetectionConfidence = 42.0;
    o.languageCode = "foo";
    o.outputContexts = buildUnnamed4008();
    o.parameters = buildUnnamed4009();
    o.queryText = "foo";
    o.sentimentAnalysisResult =
        buildGoogleCloudDialogflowV2SentimentAnalysisResult();
    o.speechRecognitionConfidence = 42.0;
    o.webhookPayload = buildUnnamed4010();
    o.webhookSource = "foo";
  }
  buildCounterGoogleCloudDialogflowV2QueryResult--;
  return o;
}

checkGoogleCloudDialogflowV2QueryResult(
    api.GoogleCloudDialogflowV2QueryResult o) {
  buildCounterGoogleCloudDialogflowV2QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2QueryResult < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.allRequiredParamsPresent, unittest.isTrue);
    checkUnnamed4006(o.diagnosticInfo);
    checkUnnamed4007(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2Intent(o.intent);
    unittest.expect(o.intentDetectionConfidence, unittest.equals(42.0));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed4008(o.outputContexts);
    checkUnnamed4009(o.parameters);
    unittest.expect(o.queryText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2SentimentAnalysisResult(
        o.sentimentAnalysisResult);
    unittest.expect(o.speechRecognitionConfidence, unittest.equals(42.0));
    checkUnnamed4010(o.webhookPayload);
    unittest.expect(o.webhookSource, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2QueryResult--;
}

core.int buildCounterGoogleCloudDialogflowV2RestoreAgentRequest = 0;
buildGoogleCloudDialogflowV2RestoreAgentRequest() {
  var o = new api.GoogleCloudDialogflowV2RestoreAgentRequest();
  buildCounterGoogleCloudDialogflowV2RestoreAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2RestoreAgentRequest < 3) {
    o.agentContent = "foo";
    o.agentUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2RestoreAgentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2RestoreAgentRequest(
    api.GoogleCloudDialogflowV2RestoreAgentRequest o) {
  buildCounterGoogleCloudDialogflowV2RestoreAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2RestoreAgentRequest < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2RestoreAgentRequest--;
}

buildUnnamed4011() {
  var o = new core.List<api.GoogleCloudDialogflowV2Agent>();
  o.add(buildGoogleCloudDialogflowV2Agent());
  o.add(buildGoogleCloudDialogflowV2Agent());
  return o;
}

checkUnnamed4011(core.List<api.GoogleCloudDialogflowV2Agent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Agent(o[0]);
  checkGoogleCloudDialogflowV2Agent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2SearchAgentsResponse = 0;
buildGoogleCloudDialogflowV2SearchAgentsResponse() {
  var o = new api.GoogleCloudDialogflowV2SearchAgentsResponse();
  buildCounterGoogleCloudDialogflowV2SearchAgentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2SearchAgentsResponse < 3) {
    o.agents = buildUnnamed4011();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2SearchAgentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2SearchAgentsResponse(
    api.GoogleCloudDialogflowV2SearchAgentsResponse o) {
  buildCounterGoogleCloudDialogflowV2SearchAgentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2SearchAgentsResponse < 3) {
    checkUnnamed4011(o.agents);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2SearchAgentsResponse--;
}

core.int buildCounterGoogleCloudDialogflowV2Sentiment = 0;
buildGoogleCloudDialogflowV2Sentiment() {
  var o = new api.GoogleCloudDialogflowV2Sentiment();
  buildCounterGoogleCloudDialogflowV2Sentiment++;
  if (buildCounterGoogleCloudDialogflowV2Sentiment < 3) {
    o.magnitude = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudDialogflowV2Sentiment--;
  return o;
}

checkGoogleCloudDialogflowV2Sentiment(api.GoogleCloudDialogflowV2Sentiment o) {
  buildCounterGoogleCloudDialogflowV2Sentiment++;
  if (buildCounterGoogleCloudDialogflowV2Sentiment < 3) {
    unittest.expect(o.magnitude, unittest.equals(42.0));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowV2Sentiment--;
}

core.int buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig = 0;
buildGoogleCloudDialogflowV2SentimentAnalysisRequestConfig() {
  var o = new api.GoogleCloudDialogflowV2SentimentAnalysisRequestConfig();
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig++;
  if (buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig < 3) {
    o.analyzeQueryTextSentiment = true;
  }
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig--;
  return o;
}

checkGoogleCloudDialogflowV2SentimentAnalysisRequestConfig(
    api.GoogleCloudDialogflowV2SentimentAnalysisRequestConfig o) {
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig++;
  if (buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig < 3) {
    unittest.expect(o.analyzeQueryTextSentiment, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig--;
}

core.int buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult = 0;
buildGoogleCloudDialogflowV2SentimentAnalysisResult() {
  var o = new api.GoogleCloudDialogflowV2SentimentAnalysisResult();
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult < 3) {
    o.queryTextSentiment = buildGoogleCloudDialogflowV2Sentiment();
  }
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult--;
  return o;
}

checkGoogleCloudDialogflowV2SentimentAnalysisResult(
    api.GoogleCloudDialogflowV2SentimentAnalysisResult o) {
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult < 3) {
    checkGoogleCloudDialogflowV2Sentiment(o.queryTextSentiment);
  }
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult--;
}

buildUnnamed4012() {
  var o = new core.List<api.GoogleCloudDialogflowV2EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

checkUnnamed4012(core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2SessionEntityType = 0;
buildGoogleCloudDialogflowV2SessionEntityType() {
  var o = new api.GoogleCloudDialogflowV2SessionEntityType();
  buildCounterGoogleCloudDialogflowV2SessionEntityType++;
  if (buildCounterGoogleCloudDialogflowV2SessionEntityType < 3) {
    o.entities = buildUnnamed4012();
    o.entityOverrideMode = "foo";
    o.name = "foo";
  }
  buildCounterGoogleCloudDialogflowV2SessionEntityType--;
  return o;
}

checkGoogleCloudDialogflowV2SessionEntityType(
    api.GoogleCloudDialogflowV2SessionEntityType o) {
  buildCounterGoogleCloudDialogflowV2SessionEntityType++;
  if (buildCounterGoogleCloudDialogflowV2SessionEntityType < 3) {
    checkUnnamed4012(o.entities);
    unittest.expect(o.entityOverrideMode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2SessionEntityType--;
}

buildUnnamed4013() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4013(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2SpeechContext = 0;
buildGoogleCloudDialogflowV2SpeechContext() {
  var o = new api.GoogleCloudDialogflowV2SpeechContext();
  buildCounterGoogleCloudDialogflowV2SpeechContext++;
  if (buildCounterGoogleCloudDialogflowV2SpeechContext < 3) {
    o.boost = 42.0;
    o.phrases = buildUnnamed4013();
  }
  buildCounterGoogleCloudDialogflowV2SpeechContext--;
  return o;
}

checkGoogleCloudDialogflowV2SpeechContext(
    api.GoogleCloudDialogflowV2SpeechContext o) {
  buildCounterGoogleCloudDialogflowV2SpeechContext++;
  if (buildCounterGoogleCloudDialogflowV2SpeechContext < 3) {
    unittest.expect(o.boost, unittest.equals(42.0));
    checkUnnamed4013(o.phrases);
  }
  buildCounterGoogleCloudDialogflowV2SpeechContext--;
}

buildUnnamed4014() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4014(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig = 0;
buildGoogleCloudDialogflowV2SynthesizeSpeechConfig() {
  var o = new api.GoogleCloudDialogflowV2SynthesizeSpeechConfig();
  buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig++;
  if (buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig < 3) {
    o.effectsProfileId = buildUnnamed4014();
    o.pitch = 42.0;
    o.speakingRate = 42.0;
    o.voice = buildGoogleCloudDialogflowV2VoiceSelectionParams();
    o.volumeGainDb = 42.0;
  }
  buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig--;
  return o;
}

checkGoogleCloudDialogflowV2SynthesizeSpeechConfig(
    api.GoogleCloudDialogflowV2SynthesizeSpeechConfig o) {
  buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig++;
  if (buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig < 3) {
    checkUnnamed4014(o.effectsProfileId);
    unittest.expect(o.pitch, unittest.equals(42.0));
    unittest.expect(o.speakingRate, unittest.equals(42.0));
    checkGoogleCloudDialogflowV2VoiceSelectionParams(o.voice);
    unittest.expect(o.volumeGainDb, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig--;
}

core.int buildCounterGoogleCloudDialogflowV2TextInput = 0;
buildGoogleCloudDialogflowV2TextInput() {
  var o = new api.GoogleCloudDialogflowV2TextInput();
  buildCounterGoogleCloudDialogflowV2TextInput++;
  if (buildCounterGoogleCloudDialogflowV2TextInput < 3) {
    o.languageCode = "foo";
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowV2TextInput--;
  return o;
}

checkGoogleCloudDialogflowV2TextInput(api.GoogleCloudDialogflowV2TextInput o) {
  buildCounterGoogleCloudDialogflowV2TextInput++;
  if (buildCounterGoogleCloudDialogflowV2TextInput < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2TextInput--;
}

core.int buildCounterGoogleCloudDialogflowV2TrainAgentRequest = 0;
buildGoogleCloudDialogflowV2TrainAgentRequest() {
  var o = new api.GoogleCloudDialogflowV2TrainAgentRequest();
  buildCounterGoogleCloudDialogflowV2TrainAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2TrainAgentRequest < 3) {}
  buildCounterGoogleCloudDialogflowV2TrainAgentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2TrainAgentRequest(
    api.GoogleCloudDialogflowV2TrainAgentRequest o) {
  buildCounterGoogleCloudDialogflowV2TrainAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2TrainAgentRequest < 3) {}
  buildCounterGoogleCloudDialogflowV2TrainAgentRequest--;
}

buildUnnamed4015() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4015(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2ValidationError = 0;
buildGoogleCloudDialogflowV2ValidationError() {
  var o = new api.GoogleCloudDialogflowV2ValidationError();
  buildCounterGoogleCloudDialogflowV2ValidationError++;
  if (buildCounterGoogleCloudDialogflowV2ValidationError < 3) {
    o.entries = buildUnnamed4015();
    o.errorMessage = "foo";
    o.severity = "foo";
  }
  buildCounterGoogleCloudDialogflowV2ValidationError--;
  return o;
}

checkGoogleCloudDialogflowV2ValidationError(
    api.GoogleCloudDialogflowV2ValidationError o) {
  buildCounterGoogleCloudDialogflowV2ValidationError++;
  if (buildCounterGoogleCloudDialogflowV2ValidationError < 3) {
    checkUnnamed4015(o.entries);
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2ValidationError--;
}

buildUnnamed4016() {
  var o = new core.List<api.GoogleCloudDialogflowV2ValidationError>();
  o.add(buildGoogleCloudDialogflowV2ValidationError());
  o.add(buildGoogleCloudDialogflowV2ValidationError());
  return o;
}

checkUnnamed4016(core.List<api.GoogleCloudDialogflowV2ValidationError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2ValidationError(o[0]);
  checkGoogleCloudDialogflowV2ValidationError(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ValidationResult = 0;
buildGoogleCloudDialogflowV2ValidationResult() {
  var o = new api.GoogleCloudDialogflowV2ValidationResult();
  buildCounterGoogleCloudDialogflowV2ValidationResult++;
  if (buildCounterGoogleCloudDialogflowV2ValidationResult < 3) {
    o.validationErrors = buildUnnamed4016();
  }
  buildCounterGoogleCloudDialogflowV2ValidationResult--;
  return o;
}

checkGoogleCloudDialogflowV2ValidationResult(
    api.GoogleCloudDialogflowV2ValidationResult o) {
  buildCounterGoogleCloudDialogflowV2ValidationResult++;
  if (buildCounterGoogleCloudDialogflowV2ValidationResult < 3) {
    checkUnnamed4016(o.validationErrors);
  }
  buildCounterGoogleCloudDialogflowV2ValidationResult--;
}

core.int buildCounterGoogleCloudDialogflowV2VoiceSelectionParams = 0;
buildGoogleCloudDialogflowV2VoiceSelectionParams() {
  var o = new api.GoogleCloudDialogflowV2VoiceSelectionParams();
  buildCounterGoogleCloudDialogflowV2VoiceSelectionParams++;
  if (buildCounterGoogleCloudDialogflowV2VoiceSelectionParams < 3) {
    o.name = "foo";
    o.ssmlGender = "foo";
  }
  buildCounterGoogleCloudDialogflowV2VoiceSelectionParams--;
  return o;
}

checkGoogleCloudDialogflowV2VoiceSelectionParams(
    api.GoogleCloudDialogflowV2VoiceSelectionParams o) {
  buildCounterGoogleCloudDialogflowV2VoiceSelectionParams++;
  if (buildCounterGoogleCloudDialogflowV2VoiceSelectionParams < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.ssmlGender, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2VoiceSelectionParams--;
}

core.int buildCounterGoogleCloudDialogflowV2WebhookRequest = 0;
buildGoogleCloudDialogflowV2WebhookRequest() {
  var o = new api.GoogleCloudDialogflowV2WebhookRequest();
  buildCounterGoogleCloudDialogflowV2WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowV2WebhookRequest < 3) {
    o.originalDetectIntentRequest =
        buildGoogleCloudDialogflowV2OriginalDetectIntentRequest();
    o.queryResult = buildGoogleCloudDialogflowV2QueryResult();
    o.responseId = "foo";
    o.session = "foo";
  }
  buildCounterGoogleCloudDialogflowV2WebhookRequest--;
  return o;
}

checkGoogleCloudDialogflowV2WebhookRequest(
    api.GoogleCloudDialogflowV2WebhookRequest o) {
  buildCounterGoogleCloudDialogflowV2WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowV2WebhookRequest < 3) {
    checkGoogleCloudDialogflowV2OriginalDetectIntentRequest(
        o.originalDetectIntentRequest);
    checkGoogleCloudDialogflowV2QueryResult(o.queryResult);
    unittest.expect(o.responseId, unittest.equals('foo'));
    unittest.expect(o.session, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2WebhookRequest--;
}

buildUnnamed4017() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

checkUnnamed4017(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2IntentMessage(o[1]);
}

buildUnnamed4018() {
  var o = new core.List<api.GoogleCloudDialogflowV2Context>();
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

checkUnnamed4018(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

buildUnnamed4019() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4019(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted32 = (o["x"]) as core.Map;
  unittest.expect(casted32, unittest.hasLength(3));
  unittest.expect(casted32["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted32["bool"], unittest.equals(true));
  unittest.expect(casted32["string"], unittest.equals('foo'));
  var casted33 = (o["y"]) as core.Map;
  unittest.expect(casted33, unittest.hasLength(3));
  unittest.expect(casted33["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted33["bool"], unittest.equals(true));
  unittest.expect(casted33["string"], unittest.equals('foo'));
}

buildUnnamed4020() {
  var o = new core.List<api.GoogleCloudDialogflowV2SessionEntityType>();
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2SessionEntityType());
  return o;
}

checkUnnamed4020(core.List<api.GoogleCloudDialogflowV2SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2SessionEntityType(o[0]);
  checkGoogleCloudDialogflowV2SessionEntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2WebhookResponse = 0;
buildGoogleCloudDialogflowV2WebhookResponse() {
  var o = new api.GoogleCloudDialogflowV2WebhookResponse();
  buildCounterGoogleCloudDialogflowV2WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowV2WebhookResponse < 3) {
    o.followupEventInput = buildGoogleCloudDialogflowV2EventInput();
    o.fulfillmentMessages = buildUnnamed4017();
    o.fulfillmentText = "foo";
    o.outputContexts = buildUnnamed4018();
    o.payload = buildUnnamed4019();
    o.sessionEntityTypes = buildUnnamed4020();
    o.source = "foo";
  }
  buildCounterGoogleCloudDialogflowV2WebhookResponse--;
  return o;
}

checkGoogleCloudDialogflowV2WebhookResponse(
    api.GoogleCloudDialogflowV2WebhookResponse o) {
  buildCounterGoogleCloudDialogflowV2WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowV2WebhookResponse < 3) {
    checkGoogleCloudDialogflowV2EventInput(o.followupEventInput);
    checkUnnamed4017(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkUnnamed4018(o.outputContexts);
    checkUnnamed4019(o.payload);
    checkUnnamed4020(o.sessionEntityTypes);
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2WebhookResponse--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1AnnotatedConversationDataset =
    0;
buildGoogleCloudDialogflowV2beta1AnnotatedConversationDataset() {
  var o = new api.GoogleCloudDialogflowV2beta1AnnotatedConversationDataset();
  buildCounterGoogleCloudDialogflowV2beta1AnnotatedConversationDataset++;
  if (buildCounterGoogleCloudDialogflowV2beta1AnnotatedConversationDataset <
      3) {
    o.completedExampleCount = "foo";
    o.createTime = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.exampleCount = "foo";
    o.name = "foo";
    o.questionTypeName = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1AnnotatedConversationDataset--;
  return o;
}

checkGoogleCloudDialogflowV2beta1AnnotatedConversationDataset(
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
buildGoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse() {
  var o = new api
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

checkGoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse(
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

buildUnnamed4021() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1EntityType>();
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  return o;
}

checkUnnamed4021(core.List<api.GoogleCloudDialogflowV2beta1EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1EntityType(o[0]);
  checkGoogleCloudDialogflowV2beta1EntityType(o[1]);
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse = 0;
buildGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse();
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse <
      3) {
    o.entityTypes = buildUnnamed4021();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse(
    api.GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse <
      3) {
    checkUnnamed4021(o.entityTypes);
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse--;
}

buildUnnamed4022() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Intent>();
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  return o;
}

checkUnnamed4022(core.List<api.GoogleCloudDialogflowV2beta1Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Intent(o[0]);
  checkGoogleCloudDialogflowV2beta1Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse = 0;
buildGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse();
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse < 3) {
    o.intents = buildUnnamed4022();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse(
    api.GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse < 3) {
    checkUnnamed4022(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse--;
}

buildUnnamed4023() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1SmartMessagingEntry>();
  o.add(buildGoogleCloudDialogflowV2beta1SmartMessagingEntry());
  o.add(buildGoogleCloudDialogflowV2beta1SmartMessagingEntry());
  return o;
}

checkUnnamed4023(
    core.List<api.GoogleCloudDialogflowV2beta1SmartMessagingEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1SmartMessagingEntry(o[0]);
  checkGoogleCloudDialogflowV2beta1SmartMessagingEntry(o[1]);
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse =
    0;
buildGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse() {
  var o = new api
      .GoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse();
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse <
      3) {
    o.smartMessagingEntries = buildUnnamed4023();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse(
    api.GoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse
        o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse <
      3) {
    checkUnnamed4023(o.smartMessagingEntries);
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse--;
}

buildUnnamed4024() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4024(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted34 = (o["x"]) as core.Map;
  unittest.expect(casted34, unittest.hasLength(3));
  unittest.expect(casted34["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted34["bool"], unittest.equals(true));
  unittest.expect(casted34["string"], unittest.equals('foo'));
  var casted35 = (o["y"]) as core.Map;
  unittest.expect(casted35, unittest.hasLength(3));
  unittest.expect(casted35["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted35["bool"], unittest.equals(true));
  unittest.expect(casted35["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1Context = 0;
buildGoogleCloudDialogflowV2beta1Context() {
  var o = new api.GoogleCloudDialogflowV2beta1Context();
  buildCounterGoogleCloudDialogflowV2beta1Context++;
  if (buildCounterGoogleCloudDialogflowV2beta1Context < 3) {
    o.lifespanCount = 42;
    o.name = "foo";
    o.parameters = buildUnnamed4024();
  }
  buildCounterGoogleCloudDialogflowV2beta1Context--;
  return o;
}

checkGoogleCloudDialogflowV2beta1Context(
    api.GoogleCloudDialogflowV2beta1Context o) {
  buildCounterGoogleCloudDialogflowV2beta1Context++;
  if (buildCounterGoogleCloudDialogflowV2beta1Context < 3) {
    unittest.expect(o.lifespanCount, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4024(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2beta1Context--;
}

buildUnnamed4025() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  return o;
}

checkUnnamed4025(
    core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowV2beta1EntityTypeEntity(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1EntityType = 0;
buildGoogleCloudDialogflowV2beta1EntityType() {
  var o = new api.GoogleCloudDialogflowV2beta1EntityType();
  buildCounterGoogleCloudDialogflowV2beta1EntityType++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityType < 3) {
    o.autoExpansionMode = "foo";
    o.displayName = "foo";
    o.enableFuzzyExtraction = true;
    o.entities = buildUnnamed4025();
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityType--;
  return o;
}

checkGoogleCloudDialogflowV2beta1EntityType(
    api.GoogleCloudDialogflowV2beta1EntityType o) {
  buildCounterGoogleCloudDialogflowV2beta1EntityType++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityType < 3) {
    unittest.expect(o.autoExpansionMode, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.enableFuzzyExtraction, unittest.isTrue);
    checkUnnamed4025(o.entities);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityType--;
}

buildUnnamed4026() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4026(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity = 0;
buildGoogleCloudDialogflowV2beta1EntityTypeEntity() {
  var o = new api.GoogleCloudDialogflowV2beta1EntityTypeEntity();
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity < 3) {
    o.synonyms = buildUnnamed4026();
    o.value = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity--;
  return o;
}

checkGoogleCloudDialogflowV2beta1EntityTypeEntity(
    api.GoogleCloudDialogflowV2beta1EntityTypeEntity o) {
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity < 3) {
    checkUnnamed4026(o.synonyms);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity--;
}

buildUnnamed4027() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4027(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted36 = (o["x"]) as core.Map;
  unittest.expect(casted36, unittest.hasLength(3));
  unittest.expect(casted36["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted36["bool"], unittest.equals(true));
  unittest.expect(casted36["string"], unittest.equals('foo'));
  var casted37 = (o["y"]) as core.Map;
  unittest.expect(casted37, unittest.hasLength(3));
  unittest.expect(casted37["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted37["bool"], unittest.equals(true));
  unittest.expect(casted37["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1EventInput = 0;
buildGoogleCloudDialogflowV2beta1EventInput() {
  var o = new api.GoogleCloudDialogflowV2beta1EventInput();
  buildCounterGoogleCloudDialogflowV2beta1EventInput++;
  if (buildCounterGoogleCloudDialogflowV2beta1EventInput < 3) {
    o.languageCode = "foo";
    o.name = "foo";
    o.parameters = buildUnnamed4027();
  }
  buildCounterGoogleCloudDialogflowV2beta1EventInput--;
  return o;
}

checkGoogleCloudDialogflowV2beta1EventInput(
    api.GoogleCloudDialogflowV2beta1EventInput o) {
  buildCounterGoogleCloudDialogflowV2beta1EventInput++;
  if (buildCounterGoogleCloudDialogflowV2beta1EventInput < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4027(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2beta1EventInput--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse = 0;
buildGoogleCloudDialogflowV2beta1ExportAgentResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1ExportAgentResponse();
  buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse < 3) {
    o.agentContent = "foo";
    o.agentUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1ExportAgentResponse(
    api.GoogleCloudDialogflowV2beta1ExportAgentResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1ExportAgentResponse--;
}

buildUnnamed4028() {
  var o = new core.List<api.GoogleRpcStatus>();
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

checkUnnamed4028(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1ImportDocumentsResponse = 0;
buildGoogleCloudDialogflowV2beta1ImportDocumentsResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1ImportDocumentsResponse();
  buildCounterGoogleCloudDialogflowV2beta1ImportDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ImportDocumentsResponse < 3) {
    o.warnings = buildUnnamed4028();
  }
  buildCounterGoogleCloudDialogflowV2beta1ImportDocumentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1ImportDocumentsResponse(
    api.GoogleCloudDialogflowV2beta1ImportDocumentsResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1ImportDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ImportDocumentsResponse < 3) {
    checkUnnamed4028(o.warnings);
  }
  buildCounterGoogleCloudDialogflowV2beta1ImportDocumentsResponse--;
}

buildUnnamed4029() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4029(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4030() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4030(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4031() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo());
  o.add(buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo());
  return o;
}

checkUnnamed4031(
    core.List<api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(o[1]);
}

buildUnnamed4032() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4032(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4033() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

checkUnnamed4033(core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[1]);
}

buildUnnamed4034() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Context>();
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

checkUnnamed4034(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(o[0]);
  checkGoogleCloudDialogflowV2beta1Context(o[1]);
}

buildUnnamed4035() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentParameter>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentParameter());
  o.add(buildGoogleCloudDialogflowV2beta1IntentParameter());
  return o;
}

checkUnnamed4035(core.List<api.GoogleCloudDialogflowV2beta1IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentParameter(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentParameter(o[1]);
}

buildUnnamed4036() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase());
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase());
  return o;
}

checkUnnamed4036(
    core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentTrainingPhrase(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentTrainingPhrase(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1Intent = 0;
buildGoogleCloudDialogflowV2beta1Intent() {
  var o = new api.GoogleCloudDialogflowV2beta1Intent();
  buildCounterGoogleCloudDialogflowV2beta1Intent++;
  if (buildCounterGoogleCloudDialogflowV2beta1Intent < 3) {
    o.action = "foo";
    o.defaultResponsePlatforms = buildUnnamed4029();
    o.displayName = "foo";
    o.endInteraction = true;
    o.events = buildUnnamed4030();
    o.followupIntentInfo = buildUnnamed4031();
    o.inputContextNames = buildUnnamed4032();
    o.isFallback = true;
    o.messages = buildUnnamed4033();
    o.mlDisabled = true;
    o.mlEnabled = true;
    o.name = "foo";
    o.outputContexts = buildUnnamed4034();
    o.parameters = buildUnnamed4035();
    o.parentFollowupIntentName = "foo";
    o.priority = 42;
    o.resetContexts = true;
    o.rootFollowupIntentName = "foo";
    o.trainingPhrases = buildUnnamed4036();
    o.webhookState = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1Intent--;
  return o;
}

checkGoogleCloudDialogflowV2beta1Intent(
    api.GoogleCloudDialogflowV2beta1Intent o) {
  buildCounterGoogleCloudDialogflowV2beta1Intent++;
  if (buildCounterGoogleCloudDialogflowV2beta1Intent < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed4029(o.defaultResponsePlatforms);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.endInteraction, unittest.isTrue);
    checkUnnamed4030(o.events);
    checkUnnamed4031(o.followupIntentInfo);
    checkUnnamed4032(o.inputContextNames);
    unittest.expect(o.isFallback, unittest.isTrue);
    checkUnnamed4033(o.messages);
    unittest.expect(o.mlDisabled, unittest.isTrue);
    unittest.expect(o.mlEnabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4034(o.outputContexts);
    checkUnnamed4035(o.parameters);
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    unittest.expect(o.resetContexts, unittest.isTrue);
    unittest.expect(o.rootFollowupIntentName, unittest.equals('foo'));
    checkUnnamed4036(o.trainingPhrases);
    unittest.expect(o.webhookState, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1Intent--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo = 0;
buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo();
  buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo < 3) {
    o.followupIntentName = "foo";
    o.parentFollowupIntentName = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(
    api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo < 3) {
    unittest.expect(o.followupIntentName, unittest.equals('foo'));
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo--;
}

buildUnnamed4037() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4037(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted38 = (o["x"]) as core.Map;
  unittest.expect(casted38, unittest.hasLength(3));
  unittest.expect(casted38["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted38["bool"], unittest.equals(true));
  unittest.expect(casted38["string"], unittest.equals('foo'));
  var casted39 = (o["y"]) as core.Map;
  unittest.expect(casted39, unittest.hasLength(3));
  unittest.expect(casted39["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted39["bool"], unittest.equals(true));
  unittest.expect(casted39["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessage = 0;
buildGoogleCloudDialogflowV2beta1IntentMessage() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessage();
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
    o.payload = buildUnnamed4037();
    o.platform = "foo";
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

checkGoogleCloudDialogflowV2beta1IntentMessage(
    api.GoogleCloudDialogflowV2beta1IntentMessage o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessage++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessage < 3) {
    checkGoogleCloudDialogflowV2beta1IntentMessageBasicCard(o.basicCard);
    checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard(
        o.browseCarouselCard);
    checkGoogleCloudDialogflowV2beta1IntentMessageCard(o.card);
    checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect(
        o.carouselSelect);
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(o.image);
    checkGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion(
        o.linkOutSuggestion);
    checkGoogleCloudDialogflowV2beta1IntentMessageListSelect(o.listSelect);
    checkGoogleCloudDialogflowV2beta1IntentMessageMediaContent(o.mediaContent);
    checkUnnamed4037(o.payload);
    unittest.expect(o.platform, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageQuickReplies(o.quickReplies);
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard(
        o.rbmCarouselRichCard);
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard(
        o.rbmStandaloneRichCard);
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmText(o.rbmText);
    checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses(
        o.simpleResponses);
    checkGoogleCloudDialogflowV2beta1IntentMessageSuggestions(o.suggestions);
    checkGoogleCloudDialogflowV2beta1IntentMessageTableCard(o.tableCard);
    checkGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio(
        o.telephonyPlayAudio);
    checkGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech(
        o.telephonySynthesizeSpeech);
    checkGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall(
        o.telephonyTransferCall);
    checkGoogleCloudDialogflowV2beta1IntentMessageText(o.text);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessage--;
}

buildUnnamed4038() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  return o;
}

checkUnnamed4038(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageBasicCard() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageBasicCard();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard < 3) {
    o.buttons = buildUnnamed4038();
    o.formattedText = "foo";
    o.image = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.subtitle = "foo";
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageBasicCard(
    api.GoogleCloudDialogflowV2beta1IntentMessageBasicCard o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard < 3) {
    checkUnnamed4038(o.buttons);
    unittest.expect(o.formattedText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(o.image);
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCard--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton <
      3) {
    o.openUriAction =
        buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(
    api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton <
      3) {
    checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction(
        o.openUriAction);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction() {
  var o = new api
      .GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction <
      3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction(
    api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction
        o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction <
      3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction--;
}

buildUnnamed4039() {
  var o = new core.List<
      api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem>();
  o.add(
      buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem());
  o.add(
      buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem());
  return o;
}

checkUnnamed4039(
    core.List<
            api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
      o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
      o[1]);
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard <
      3) {
    o.imageDisplayOptions = "foo";
    o.items = buildUnnamed4039();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard(
    api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard <
      3) {
    unittest.expect(o.imageDisplayOptions, unittest.equals('foo'));
    checkUnnamed4039(o.items);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem() {
  var o = new api
      .GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem <
      3) {
    o.description = "foo";
    o.footer = "foo";
    o.image = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.openUriAction =
        buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
    api.GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem
        o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem <
      3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.footer, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(o.image);
    checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction(
        o.openUriAction);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction() {
  var o = new api
      .GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction <
      3) {
    o.url = "foo";
    o.urlTypeHint = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction(
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

buildUnnamed4040() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1IntentMessageCardButton>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCardButton());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCardButton());
  return o;
}

checkUnnamed4040(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageCardButton(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageCardButton(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageCard() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageCard();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard < 3) {
    o.buttons = buildUnnamed4040();
    o.imageUri = "foo";
    o.subtitle = "foo";
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageCard(
    api.GoogleCloudDialogflowV2beta1IntentMessageCard o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard < 3) {
    checkUnnamed4040(o.buttons);
    unittest.expect(o.imageUri, unittest.equals('foo'));
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCard--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageCardButton() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageCardButton();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton < 3) {
    o.postback = "foo";
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageCardButton(
    api.GoogleCloudDialogflowV2beta1IntentMessageCardButton o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton < 3) {
    unittest.expect(o.postback, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCardButton--;
}

buildUnnamed4041() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem());
  return o;
}

checkUnnamed4041(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect < 3) {
    o.items = buildUnnamed4041();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect(
    api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect < 3) {
    checkUnnamed4041(o.items);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem <
      3) {
    o.description = "foo";
    o.image = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.info = buildGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem(
    api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem <
      3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(o.image);
    checkGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo(o.info);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageColumnProperties =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageColumnProperties() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageColumnProperties++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageColumnProperties <
      3) {
    o.header = "foo";
    o.horizontalAlignment = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageColumnProperties--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageColumnProperties(
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
buildGoogleCloudDialogflowV2beta1IntentMessageImage() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageImage();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageImage++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageImage < 3) {
    o.accessibilityText = "foo";
    o.imageUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageImage--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageImage(
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
buildGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion <
      3) {
    o.destinationName = "foo";
    o.uri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion(
    api.GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion <
      3) {
    unittest.expect(o.destinationName, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion--;
}

buildUnnamed4042() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem());
  return o;
}

checkUnnamed4042(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageListSelectItem(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageListSelectItem(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageListSelect() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageListSelect();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect < 3) {
    o.items = buildUnnamed4042();
    o.subtitle = "foo";
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageListSelect(
    api.GoogleCloudDialogflowV2beta1IntentMessageListSelect o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect < 3) {
    checkUnnamed4042(o.items);
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem < 3) {
    o.description = "foo";
    o.image = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.info = buildGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageListSelectItem(
    api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(o.image);
    checkGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo(o.info);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelectItem--;
}

buildUnnamed4043() {
  var o = new core.List<
      api.GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject>();
  o.add(
      buildGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject());
  o.add(
      buildGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject());
  return o;
}

checkUnnamed4043(
    core.List<
            api.GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject(
      o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject(
      o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageMediaContent() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageMediaContent();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent < 3) {
    o.mediaObjects = buildUnnamed4043();
    o.mediaType = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageMediaContent(
    api.GoogleCloudDialogflowV2beta1IntentMessageMediaContent o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent < 3) {
    checkUnnamed4043(o.mediaObjects);
    unittest.expect(o.mediaType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContent--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject() {
  var o = new api
      .GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject <
      3) {
    o.contentUrl = "foo";
    o.description = "foo";
    o.icon = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.largeImage = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.name = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject(
    api.GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject
        o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject <
      3) {
    unittest.expect(o.contentUrl, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(o.icon);
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(o.largeImage);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject--;
}

buildUnnamed4044() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4044(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageQuickReplies() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies < 3) {
    o.quickReplies = buildUnnamed4044();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageQuickReplies(
    api.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies < 3) {
    checkUnnamed4044(o.quickReplies);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies--;
}

buildUnnamed4045() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  return o;
}

checkUnnamed4045(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent < 3) {
    o.description = "foo";
    o.media =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia();
    o.suggestions = buildUnnamed4045();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia(
        o.media);
    checkUnnamed4045(o.suggestions);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia() {
  var o =
      new api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia <
      3) {
    o.fileUri = "foo";
    o.height = "foo";
    o.thumbnailUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia(
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

buildUnnamed4046() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent());
  return o;
}

checkUnnamed4046(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard <
      3) {
    o.cardContents = buildUnnamed4046();
    o.cardWidth = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard <
      3) {
    checkUnnamed4046(o.cardContents);
    unittest.expect(o.cardWidth, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard <
      3) {
    o.cardContent =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent();
    o.cardOrientation = "foo";
    o.thumbnailImageAlignment = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard <
      3) {
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent(o.cardContent);
    unittest.expect(o.cardOrientation, unittest.equals('foo'));
    unittest.expect(o.thumbnailImageAlignment, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction <
      3) {
    o.dial =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial();
    o.openUrl =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri();
    o.postbackData = "foo";
    o.shareLocation =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation();
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction <
      3) {
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial(
        o.dial);
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri(
        o.openUrl);
    unittest.expect(o.postbackData, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation(
        o.shareLocation);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial() {
  var o = new api
      .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial <
      3) {
    o.phoneNumber = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial(
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
buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri() {
  var o = new api
      .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri <
      3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri(
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
buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation() {
  var o = new api
      .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation <
      3) {}
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation
        o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation <
      3) {}
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply <
      3) {
    o.postbackData = "foo";
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply(
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
buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion < 3) {
    o.action =
        buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction();
    o.reply = buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion < 3) {
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction(o.action);
    checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply(o.reply);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion--;
}

buildUnnamed4047() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  return o;
}

checkUnnamed4047(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageRbmText() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageRbmText();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText < 3) {
    o.rbmSuggestion = buildUnnamed4047();
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmText(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmText o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText < 3) {
    checkUnnamed4047(o.rbmSuggestion);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText--;
}

buildUnnamed4048() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4048(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo < 3) {
    o.key = "foo";
    o.synonyms = buildUnnamed4048();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo(
    api.GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed4048(o.synonyms);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse < 3) {
    o.displayText = "foo";
    o.ssml = "foo";
    o.textToSpeech = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse(
    api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse < 3) {
    unittest.expect(o.displayText, unittest.equals('foo'));
    unittest.expect(o.ssml, unittest.equals('foo'));
    unittest.expect(o.textToSpeech, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse--;
}

buildUnnamed4049() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse());
  return o;
}

checkUnnamed4049(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses =
    0;
buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses <
      3) {
    o.simpleResponses = buildUnnamed4049();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses(
    api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses <
      3) {
    checkUnnamed4049(o.simpleResponses);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion < 3) {
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageSuggestion(
    api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion < 3) {
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestion--;
}

buildUnnamed4050() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion());
  return o;
}

checkUnnamed4050(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageSuggestion(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageSuggestion(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageSuggestions() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageSuggestions();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions < 3) {
    o.suggestions = buildUnnamed4050();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageSuggestions(
    api.GoogleCloudDialogflowV2beta1IntentMessageSuggestions o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions < 3) {
    checkUnnamed4050(o.suggestions);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions--;
}

buildUnnamed4051() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  return o;
}

checkUnnamed4051(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(o[1]);
}

buildUnnamed4052() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageColumnProperties());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageColumnProperties());
  return o;
}

checkUnnamed4052(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageColumnProperties(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageColumnProperties(o[1]);
}

buildUnnamed4053() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageTableCardRow());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageTableCardRow());
  return o;
}

checkUnnamed4053(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageTableCardRow(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageTableCardRow(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCard = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageTableCard() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageTableCard();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCard < 3) {
    o.buttons = buildUnnamed4051();
    o.columnProperties = buildUnnamed4052();
    o.image = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.rows = buildUnnamed4053();
    o.subtitle = "foo";
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCard--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageTableCard(
    api.GoogleCloudDialogflowV2beta1IntentMessageTableCard o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCard++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCard < 3) {
    checkUnnamed4051(o.buttons);
    checkUnnamed4052(o.columnProperties);
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(o.image);
    checkUnnamed4053(o.rows);
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCard--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardCell = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageTableCardCell() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageTableCardCell();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardCell++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardCell < 3) {
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardCell--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageTableCardCell(
    api.GoogleCloudDialogflowV2beta1IntentMessageTableCardCell o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardCell++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardCell < 3) {
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardCell--;
}

buildUnnamed4054() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageTableCardCell>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageTableCardCell());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageTableCardCell());
  return o;
}

checkUnnamed4054(
    core.List<api.GoogleCloudDialogflowV2beta1IntentMessageTableCardCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessageTableCardCell(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessageTableCardCell(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageTableCardRow() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow < 3) {
    o.cells = buildUnnamed4054();
    o.dividerAfter = true;
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageTableCardRow(
    api.GoogleCloudDialogflowV2beta1IntentMessageTableCardRow o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow < 3) {
    checkUnnamed4054(o.cells);
    unittest.expect(o.dividerAfter, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTableCardRow--;
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio <
      3) {
    o.audioUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio(
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
buildGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech() {
  var o = new api
      .GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech <
      3) {
    o.ssml = "foo";
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech(
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
buildGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall() {
  var o =
      new api.GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall <
      3) {
    o.phoneNumber = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall(
    api.GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall <
      3) {
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall--;
}

buildUnnamed4055() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4055(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageText = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageText() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageText();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageText < 3) {
    o.text = buildUnnamed4055();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageText(
    api.GoogleCloudDialogflowV2beta1IntentMessageText o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageText < 3) {
    checkUnnamed4055(o.text);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText--;
}

buildUnnamed4056() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4056(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentParameter = 0;
buildGoogleCloudDialogflowV2beta1IntentParameter() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentParameter();
  buildCounterGoogleCloudDialogflowV2beta1IntentParameter++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentParameter < 3) {
    o.defaultValue = "foo";
    o.displayName = "foo";
    o.entityTypeDisplayName = "foo";
    o.isList = true;
    o.mandatory = true;
    o.name = "foo";
    o.prompts = buildUnnamed4056();
    o.value = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentParameter--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentParameter(
    api.GoogleCloudDialogflowV2beta1IntentParameter o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentParameter++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentParameter < 3) {
    unittest.expect(o.defaultValue, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityTypeDisplayName, unittest.equals('foo'));
    unittest.expect(o.isList, unittest.isTrue);
    unittest.expect(o.mandatory, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4056(o.prompts);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentParameter--;
}

buildUnnamed4057() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart());
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart());
  return o;
}

checkUnnamed4057(
    core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase = 0;
buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase();
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase < 3) {
    o.name = "foo";
    o.parts = buildUnnamed4057();
    o.timesAddedCount = 42;
    o.type = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentTrainingPhrase(
    api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4057(o.parts);
    unittest.expect(o.timesAddedCount, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrase--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart = 0;
buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart();
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart < 3) {
    o.alias = "foo";
    o.entityType = "foo";
    o.text = "foo";
    o.userDefined = true;
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart(
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

buildUnnamed4058() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer>();
  o.add(buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer());
  o.add(buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer());
  return o;
}

checkUnnamed4058(
    core.List<api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer(o[0]);
  checkGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers = 0;
buildGoogleCloudDialogflowV2beta1KnowledgeAnswers() {
  var o = new api.GoogleCloudDialogflowV2beta1KnowledgeAnswers();
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers < 3) {
    o.answers = buildUnnamed4058();
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers--;
  return o;
}

checkGoogleCloudDialogflowV2beta1KnowledgeAnswers(
    api.GoogleCloudDialogflowV2beta1KnowledgeAnswers o) {
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers < 3) {
    checkUnnamed4058(o.answers);
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer = 0;
buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer() {
  var o = new api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer();
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer < 3) {
    o.answer = "foo";
    o.faqQuestion = "foo";
    o.matchConfidence = 42.0;
    o.matchConfidenceLevel = "foo";
    o.source = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer--;
  return o;
}

checkGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer(
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
buildGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata() {
  var o = new api.GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata();
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata < 3) {
    o.state = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata--;
  return o;
}

checkGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata(
    api.GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata o) {
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata < 3) {
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse = 0;
buildGoogleCloudDialogflowV2beta1LabelConversationResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1LabelConversationResponse();
  buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse < 3) {
    o.annotatedConversationDataset =
        buildGoogleCloudDialogflowV2beta1AnnotatedConversationDataset();
  }
  buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1LabelConversationResponse(
    api.GoogleCloudDialogflowV2beta1LabelConversationResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse < 3) {
    checkGoogleCloudDialogflowV2beta1AnnotatedConversationDataset(
        o.annotatedConversationDataset);
  }
  buildCounterGoogleCloudDialogflowV2beta1LabelConversationResponse--;
}

buildUnnamed4059() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4059(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted40 = (o["x"]) as core.Map;
  unittest.expect(casted40, unittest.hasLength(3));
  unittest.expect(casted40["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted40["bool"], unittest.equals(true));
  unittest.expect(casted40["string"], unittest.equals('foo'));
  var casted41 = (o["y"]) as core.Map;
  unittest.expect(casted41, unittest.hasLength(3));
  unittest.expect(casted41["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted41["bool"], unittest.equals(true));
  unittest.expect(casted41["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest =
    0;
buildGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest();
  buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest < 3) {
    o.payload = buildUnnamed4059();
    o.source = "foo";
    o.version = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest(
    api.GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest < 3) {
    checkUnnamed4059(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest--;
}

buildUnnamed4060() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4060(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted42 = (o["x"]) as core.Map;
  unittest.expect(casted42, unittest.hasLength(3));
  unittest.expect(casted42["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted42["bool"], unittest.equals(true));
  unittest.expect(casted42["string"], unittest.equals('foo'));
  var casted43 = (o["y"]) as core.Map;
  unittest.expect(casted43, unittest.hasLength(3));
  unittest.expect(casted43["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted43["bool"], unittest.equals(true));
  unittest.expect(casted43["string"], unittest.equals('foo'));
}

buildUnnamed4061() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

checkUnnamed4061(core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[1]);
}

buildUnnamed4062() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Context>();
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

checkUnnamed4062(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(o[0]);
  checkGoogleCloudDialogflowV2beta1Context(o[1]);
}

buildUnnamed4063() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4063(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted44 = (o["x"]) as core.Map;
  unittest.expect(casted44, unittest.hasLength(3));
  unittest.expect(casted44["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted44["bool"], unittest.equals(true));
  unittest.expect(casted44["string"], unittest.equals('foo'));
  var casted45 = (o["y"]) as core.Map;
  unittest.expect(casted45, unittest.hasLength(3));
  unittest.expect(casted45["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted45["bool"], unittest.equals(true));
  unittest.expect(casted45["string"], unittest.equals('foo'));
}

buildUnnamed4064() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4064(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted46 = (o["x"]) as core.Map;
  unittest.expect(casted46, unittest.hasLength(3));
  unittest.expect(casted46["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted46["bool"], unittest.equals(true));
  unittest.expect(casted46["string"], unittest.equals('foo'));
  var casted47 = (o["y"]) as core.Map;
  unittest.expect(casted47, unittest.hasLength(3));
  unittest.expect(casted47["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted47["bool"], unittest.equals(true));
  unittest.expect(casted47["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1QueryResult = 0;
buildGoogleCloudDialogflowV2beta1QueryResult() {
  var o = new api.GoogleCloudDialogflowV2beta1QueryResult();
  buildCounterGoogleCloudDialogflowV2beta1QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2beta1QueryResult < 3) {
    o.action = "foo";
    o.allRequiredParamsPresent = true;
    o.diagnosticInfo = buildUnnamed4060();
    o.fulfillmentMessages = buildUnnamed4061();
    o.fulfillmentText = "foo";
    o.intent = buildGoogleCloudDialogflowV2beta1Intent();
    o.intentDetectionConfidence = 42.0;
    o.knowledgeAnswers = buildGoogleCloudDialogflowV2beta1KnowledgeAnswers();
    o.languageCode = "foo";
    o.outputContexts = buildUnnamed4062();
    o.parameters = buildUnnamed4063();
    o.queryText = "foo";
    o.sentimentAnalysisResult =
        buildGoogleCloudDialogflowV2beta1SentimentAnalysisResult();
    o.speechRecognitionConfidence = 42.0;
    o.webhookPayload = buildUnnamed4064();
    o.webhookSource = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1QueryResult--;
  return o;
}

checkGoogleCloudDialogflowV2beta1QueryResult(
    api.GoogleCloudDialogflowV2beta1QueryResult o) {
  buildCounterGoogleCloudDialogflowV2beta1QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2beta1QueryResult < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.allRequiredParamsPresent, unittest.isTrue);
    checkUnnamed4060(o.diagnosticInfo);
    checkUnnamed4061(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1Intent(o.intent);
    unittest.expect(o.intentDetectionConfidence, unittest.equals(42.0));
    checkGoogleCloudDialogflowV2beta1KnowledgeAnswers(o.knowledgeAnswers);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed4062(o.outputContexts);
    checkUnnamed4063(o.parameters);
    unittest.expect(o.queryText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1SentimentAnalysisResult(
        o.sentimentAnalysisResult);
    unittest.expect(o.speechRecognitionConfidence, unittest.equals(42.0));
    checkUnnamed4064(o.webhookPayload);
    unittest.expect(o.webhookSource, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1QueryResult--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1Sentiment = 0;
buildGoogleCloudDialogflowV2beta1Sentiment() {
  var o = new api.GoogleCloudDialogflowV2beta1Sentiment();
  buildCounterGoogleCloudDialogflowV2beta1Sentiment++;
  if (buildCounterGoogleCloudDialogflowV2beta1Sentiment < 3) {
    o.magnitude = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudDialogflowV2beta1Sentiment--;
  return o;
}

checkGoogleCloudDialogflowV2beta1Sentiment(
    api.GoogleCloudDialogflowV2beta1Sentiment o) {
  buildCounterGoogleCloudDialogflowV2beta1Sentiment++;
  if (buildCounterGoogleCloudDialogflowV2beta1Sentiment < 3) {
    unittest.expect(o.magnitude, unittest.equals(42.0));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowV2beta1Sentiment--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult = 0;
buildGoogleCloudDialogflowV2beta1SentimentAnalysisResult() {
  var o = new api.GoogleCloudDialogflowV2beta1SentimentAnalysisResult();
  buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult < 3) {
    o.queryTextSentiment = buildGoogleCloudDialogflowV2beta1Sentiment();
  }
  buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult--;
  return o;
}

checkGoogleCloudDialogflowV2beta1SentimentAnalysisResult(
    api.GoogleCloudDialogflowV2beta1SentimentAnalysisResult o) {
  buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult < 3) {
    checkGoogleCloudDialogflowV2beta1Sentiment(o.queryTextSentiment);
  }
  buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisResult--;
}

buildUnnamed4065() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  return o;
}

checkUnnamed4065(
    core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowV2beta1EntityTypeEntity(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1SessionEntityType = 0;
buildGoogleCloudDialogflowV2beta1SessionEntityType() {
  var o = new api.GoogleCloudDialogflowV2beta1SessionEntityType();
  buildCounterGoogleCloudDialogflowV2beta1SessionEntityType++;
  if (buildCounterGoogleCloudDialogflowV2beta1SessionEntityType < 3) {
    o.entities = buildUnnamed4065();
    o.entityOverrideMode = "foo";
    o.name = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1SessionEntityType--;
  return o;
}

checkGoogleCloudDialogflowV2beta1SessionEntityType(
    api.GoogleCloudDialogflowV2beta1SessionEntityType o) {
  buildCounterGoogleCloudDialogflowV2beta1SessionEntityType++;
  if (buildCounterGoogleCloudDialogflowV2beta1SessionEntityType < 3) {
    checkUnnamed4065(o.entities);
    unittest.expect(o.entityOverrideMode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1SessionEntityType--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntry = 0;
buildGoogleCloudDialogflowV2beta1SmartMessagingEntry() {
  var o = new api.GoogleCloudDialogflowV2beta1SmartMessagingEntry();
  buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntry++;
  if (buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntry < 3) {
    o.messageInfo = buildGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo();
    o.name = "foo";
    o.rawText = "foo";
    o.state = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntry--;
  return o;
}

checkGoogleCloudDialogflowV2beta1SmartMessagingEntry(
    api.GoogleCloudDialogflowV2beta1SmartMessagingEntry o) {
  buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntry++;
  if (buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntry < 3) {
    checkGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo(o.messageInfo);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.rawText, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntry--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo = 0;
buildGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo() {
  var o = new api.GoogleCloudDialogflowV2beta1SmartMessagingEntryInfo();
  buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo < 3) {
    o.creationMethod = "foo";
    o.occurrenceCount = 42;
  }
  buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo--;
  return o;
}

checkGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo(
    api.GoogleCloudDialogflowV2beta1SmartMessagingEntryInfo o) {
  buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo < 3) {
    unittest.expect(o.creationMethod, unittest.equals('foo'));
    unittest.expect(o.occurrenceCount, unittest.equals(42));
  }
  buildCounterGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo--;
}

buildUnnamed4066() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1QueryResult>();
  o.add(buildGoogleCloudDialogflowV2beta1QueryResult());
  o.add(buildGoogleCloudDialogflowV2beta1QueryResult());
  return o;
}

checkUnnamed4066(core.List<api.GoogleCloudDialogflowV2beta1QueryResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1QueryResult(o[0]);
  checkGoogleCloudDialogflowV2beta1QueryResult(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1WebhookRequest = 0;
buildGoogleCloudDialogflowV2beta1WebhookRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1WebhookRequest();
  buildCounterGoogleCloudDialogflowV2beta1WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1WebhookRequest < 3) {
    o.alternativeQueryResults = buildUnnamed4066();
    o.originalDetectIntentRequest =
        buildGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest();
    o.queryResult = buildGoogleCloudDialogflowV2beta1QueryResult();
    o.responseId = "foo";
    o.session = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1WebhookRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1WebhookRequest(
    api.GoogleCloudDialogflowV2beta1WebhookRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1WebhookRequest < 3) {
    checkUnnamed4066(o.alternativeQueryResults);
    checkGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest(
        o.originalDetectIntentRequest);
    checkGoogleCloudDialogflowV2beta1QueryResult(o.queryResult);
    unittest.expect(o.responseId, unittest.equals('foo'));
    unittest.expect(o.session, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1WebhookRequest--;
}

buildUnnamed4067() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

checkUnnamed4067(core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[1]);
}

buildUnnamed4068() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Context>();
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

checkUnnamed4068(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(o[0]);
  checkGoogleCloudDialogflowV2beta1Context(o[1]);
}

buildUnnamed4069() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4069(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted48 = (o["x"]) as core.Map;
  unittest.expect(casted48, unittest.hasLength(3));
  unittest.expect(casted48["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted48["bool"], unittest.equals(true));
  unittest.expect(casted48["string"], unittest.equals('foo'));
  var casted49 = (o["y"]) as core.Map;
  unittest.expect(casted49, unittest.hasLength(3));
  unittest.expect(casted49["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted49["bool"], unittest.equals(true));
  unittest.expect(casted49["string"], unittest.equals('foo'));
}

buildUnnamed4070() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1SessionEntityType>();
  o.add(buildGoogleCloudDialogflowV2beta1SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2beta1SessionEntityType());
  return o;
}

checkUnnamed4070(
    core.List<api.GoogleCloudDialogflowV2beta1SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1SessionEntityType(o[0]);
  checkGoogleCloudDialogflowV2beta1SessionEntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1WebhookResponse = 0;
buildGoogleCloudDialogflowV2beta1WebhookResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1WebhookResponse();
  buildCounterGoogleCloudDialogflowV2beta1WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1WebhookResponse < 3) {
    o.endInteraction = true;
    o.followupEventInput = buildGoogleCloudDialogflowV2beta1EventInput();
    o.fulfillmentMessages = buildUnnamed4067();
    o.fulfillmentText = "foo";
    o.outputContexts = buildUnnamed4068();
    o.payload = buildUnnamed4069();
    o.sessionEntityTypes = buildUnnamed4070();
    o.source = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1WebhookResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1WebhookResponse(
    api.GoogleCloudDialogflowV2beta1WebhookResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1WebhookResponse < 3) {
    unittest.expect(o.endInteraction, unittest.isTrue);
    checkGoogleCloudDialogflowV2beta1EventInput(o.followupEventInput);
    checkUnnamed4067(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkUnnamed4068(o.outputContexts);
    checkUnnamed4069(o.payload);
    checkUnnamed4070(o.sessionEntityTypes);
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1WebhookResponse--;
}

core.int buildCounterGoogleCloudDialogflowV3alpha1ExportAgentResponse = 0;
buildGoogleCloudDialogflowV3alpha1ExportAgentResponse() {
  var o = new api.GoogleCloudDialogflowV3alpha1ExportAgentResponse();
  buildCounterGoogleCloudDialogflowV3alpha1ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ExportAgentResponse < 3) {
    o.agentContent = "foo";
    o.agentUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV3alpha1ExportAgentResponse--;
  return o;
}

checkGoogleCloudDialogflowV3alpha1ExportAgentResponse(
    api.GoogleCloudDialogflowV3alpha1ExportAgentResponse o) {
  buildCounterGoogleCloudDialogflowV3alpha1ExportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ExportAgentResponse < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV3alpha1ExportAgentResponse--;
}

core.int buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata = 0;
buildGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata() {
  var o = new api.GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata();
  buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata < 3) {}
  buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata--;
  return o;
}

checkGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata(
    api.GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata o) {
  buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata < 3) {}
  buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata--;
}

core.int buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesResponse = 0;
buildGoogleCloudDialogflowV3alpha1ExportTestCasesResponse() {
  var o = new api.GoogleCloudDialogflowV3alpha1ExportTestCasesResponse();
  buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesResponse < 3) {
    o.content = "foo";
    o.gcsUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesResponse--;
  return o;
}

checkGoogleCloudDialogflowV3alpha1ExportTestCasesResponse(
    api.GoogleCloudDialogflowV3alpha1ExportTestCasesResponse o) {
  buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesResponse < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.gcsUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV3alpha1ExportTestCasesResponse--;
}

core.int buildCounterGoogleCloudDialogflowV3alpha1ImportAgentResponse = 0;
buildGoogleCloudDialogflowV3alpha1ImportAgentResponse() {
  var o = new api.GoogleCloudDialogflowV3alpha1ImportAgentResponse();
  buildCounterGoogleCloudDialogflowV3alpha1ImportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ImportAgentResponse < 3) {
    o.agent = "foo";
  }
  buildCounterGoogleCloudDialogflowV3alpha1ImportAgentResponse--;
  return o;
}

checkGoogleCloudDialogflowV3alpha1ImportAgentResponse(
    api.GoogleCloudDialogflowV3alpha1ImportAgentResponse o) {
  buildCounterGoogleCloudDialogflowV3alpha1ImportAgentResponse++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ImportAgentResponse < 3) {
    unittest.expect(o.agent, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV3alpha1ImportAgentResponse--;
}

core.int buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata = 0;
buildGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata() {
  var o = new api.GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata();
  buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata < 3) {}
  buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata--;
  return o;
}

checkGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata(
    api.GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata o) {
  buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata < 3) {}
  buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata--;
}

buildUnnamed4071() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4071(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesResponse = 0;
buildGoogleCloudDialogflowV3alpha1ImportTestCasesResponse() {
  var o = new api.GoogleCloudDialogflowV3alpha1ImportTestCasesResponse();
  buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesResponse < 3) {
    o.names = buildUnnamed4071();
  }
  buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesResponse--;
  return o;
}

checkGoogleCloudDialogflowV3alpha1ImportTestCasesResponse(
    api.GoogleCloudDialogflowV3alpha1ImportTestCasesResponse o) {
  buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesResponse < 3) {
    checkUnnamed4071(o.names);
  }
  buildCounterGoogleCloudDialogflowV3alpha1ImportTestCasesResponse--;
}

buildUnnamed4072() {
  var o = new core.List<api.GoogleLongrunningOperation>();
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

checkUnnamed4072(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
buildGoogleLongrunningListOperationsResponse() {
  var o = new api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed4072();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4072(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

buildUnnamed4073() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4073(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted50 = (o["x"]) as core.Map;
  unittest.expect(casted50, unittest.hasLength(3));
  unittest.expect(casted50["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted50["bool"], unittest.equals(true));
  unittest.expect(casted50["string"], unittest.equals('foo'));
  var casted51 = (o["y"]) as core.Map;
  unittest.expect(casted51, unittest.hasLength(3));
  unittest.expect(casted51["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted51["bool"], unittest.equals(true));
  unittest.expect(casted51["string"], unittest.equals('foo'));
}

buildUnnamed4074() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4074(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted52 = (o["x"]) as core.Map;
  unittest.expect(casted52, unittest.hasLength(3));
  unittest.expect(casted52["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted52["bool"], unittest.equals(true));
  unittest.expect(casted52["string"], unittest.equals('foo'));
  var casted53 = (o["y"]) as core.Map;
  unittest.expect(casted53, unittest.hasLength(3));
  unittest.expect(casted53["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted53["bool"], unittest.equals(true));
  unittest.expect(casted53["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
buildGoogleLongrunningOperation() {
  var o = new api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed4073();
    o.name = "foo";
    o.response = buildUnnamed4074();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error);
    checkUnnamed4073(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4074(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
buildGoogleProtobufEmpty() {
  var o = new api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

buildUnnamed4075() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed4075(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted54 = (o["x"]) as core.Map;
  unittest.expect(casted54, unittest.hasLength(3));
  unittest.expect(casted54["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted54["bool"], unittest.equals(true));
  unittest.expect(casted54["string"], unittest.equals('foo'));
  var casted55 = (o["y"]) as core.Map;
  unittest.expect(casted55, unittest.hasLength(3));
  unittest.expect(casted55["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted55["bool"], unittest.equals(true));
  unittest.expect(casted55["string"], unittest.equals('foo'));
}

buildUnnamed4076() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed4075());
  o.add(buildUnnamed4075());
  return o;
}

checkUnnamed4076(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4075(o[0]);
  checkUnnamed4075(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
buildGoogleRpcStatus() {
  var o = new api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4076();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4076(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeLatLng = 0;
buildGoogleTypeLatLng() {
  var o = new api.GoogleTypeLatLng();
  buildCounterGoogleTypeLatLng++;
  if (buildCounterGoogleTypeLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterGoogleTypeLatLng--;
  return o;
}

checkGoogleTypeLatLng(api.GoogleTypeLatLng o) {
  buildCounterGoogleTypeLatLng++;
  if (buildCounterGoogleTypeLatLng < 3) {
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterGoogleTypeLatLng--;
}

main() {
  unittest.group(
      "obj-schema-GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata();
      var od = new api
              .GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowCxV3beta1ExportAgentResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowCxV3beta1ExportAgentResponse();
      var od =
          new api.GoogleCloudDialogflowCxV3beta1ExportAgentResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ExportAgentResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowCxV3beta1ImportAgentResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowCxV3beta1ImportAgentResponse();
      var od =
          new api.GoogleCloudDialogflowCxV3beta1ImportAgentResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ImportAgentResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowCxV3beta1PageInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowCxV3beta1PageInfo();
      var od =
          new api.GoogleCloudDialogflowCxV3beta1PageInfo.fromJson(o.toJson());
      checkGoogleCloudDialogflowCxV3beta1PageInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowCxV3beta1PageInfoFormInfo",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowCxV3beta1PageInfoFormInfo();
      var od = new api.GoogleCloudDialogflowCxV3beta1PageInfoFormInfo.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1PageInfoFormInfo(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo();
      var od = new api
              .GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowCxV3beta1ResponseMessage();
      var od = new api.GoogleCloudDialogflowCxV3beta1ResponseMessage.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ResponseMessage(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess();
      var od = new api
              .GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction();
      var od = new api
              .GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff();
      var od = new api
              .GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio();
      var od = new api
              .GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment();
      var od = new api
              .GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText();
      var od = new api
              .GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio();
      var od = new api
              .GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowCxV3beta1ResponseMessageText",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowCxV3beta1ResponseMessageText();
      var od =
          new api.GoogleCloudDialogflowCxV3beta1ResponseMessageText.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowCxV3beta1ResponseMessageText(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowCxV3beta1SessionInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowCxV3beta1SessionInfo();
      var od = new api.GoogleCloudDialogflowCxV3beta1SessionInfo.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1SessionInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowCxV3beta1WebhookRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowCxV3beta1WebhookRequest();
      var od = new api.GoogleCloudDialogflowCxV3beta1WebhookRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1WebhookRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo();
      var od = new api
              .GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo();
      var od = new api
              .GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue();
      var od = new api
              .GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue(
          od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowCxV3beta1WebhookResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowCxV3beta1WebhookResponse();
      var od = new api.GoogleCloudDialogflowCxV3beta1WebhookResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1WebhookResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse();
      var od = new api
              .GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2Agent", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2Agent();
      var od = new api.GoogleCloudDialogflowV2Agent.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Agent(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2AnnotatedMessagePart", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2AnnotatedMessagePart();
      var od = new api.GoogleCloudDialogflowV2AnnotatedMessagePart.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2AnnotatedMessagePart(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2BatchCreateEntitiesRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2BatchCreateEntitiesRequest();
      var od =
          new api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2BatchCreateEntitiesRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2BatchDeleteEntitiesRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2BatchDeleteEntitiesRequest();
      var od =
          new api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2BatchDeleteEntitiesRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest();
      var od =
          new api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2BatchDeleteIntentsRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2BatchDeleteIntentsRequest();
      var od =
          new api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2BatchDeleteIntentsRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2BatchUpdateEntitiesRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2BatchUpdateEntitiesRequest();
      var od =
          new api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2BatchUpdateEntitiesRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest();
      var od =
          new api.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse();
      var od = new api
              .GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2BatchUpdateIntentsRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2BatchUpdateIntentsRequest();
      var od =
          new api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2BatchUpdateIntentsRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2BatchUpdateIntentsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2BatchUpdateIntentsResponse();
      var od =
          new api.GoogleCloudDialogflowV2BatchUpdateIntentsResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2BatchUpdateIntentsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2Context", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2Context();
      var od = new api.GoogleCloudDialogflowV2Context.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Context(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2ConversationEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2ConversationEvent();
      var od =
          new api.GoogleCloudDialogflowV2ConversationEvent.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2ConversationEvent(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2DetectIntentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2DetectIntentRequest();
      var od = new api.GoogleCloudDialogflowV2DetectIntentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2DetectIntentRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2DetectIntentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2DetectIntentResponse();
      var od = new api.GoogleCloudDialogflowV2DetectIntentResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2DetectIntentResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2EntityType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2EntityType();
      var od = new api.GoogleCloudDialogflowV2EntityType.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2EntityType(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2EntityTypeBatch", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2EntityTypeBatch();
      var od =
          new api.GoogleCloudDialogflowV2EntityTypeBatch.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2EntityTypeBatch(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2EntityTypeEntity", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2EntityTypeEntity();
      var od =
          new api.GoogleCloudDialogflowV2EntityTypeEntity.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2EntityTypeEntity(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2Environment", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2Environment();
      var od = new api.GoogleCloudDialogflowV2Environment.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Environment(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2EventInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2EventInput();
      var od = new api.GoogleCloudDialogflowV2EventInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2EventInput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2ExportAgentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2ExportAgentRequest();
      var od = new api.GoogleCloudDialogflowV2ExportAgentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2ExportAgentRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2ExportAgentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2ExportAgentResponse();
      var od = new api.GoogleCloudDialogflowV2ExportAgentResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2ExportAgentResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2Fulfillment", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2Fulfillment();
      var od = new api.GoogleCloudDialogflowV2Fulfillment.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Fulfillment(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2FulfillmentFeature", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2FulfillmentFeature();
      var od = new api.GoogleCloudDialogflowV2FulfillmentFeature.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2FulfillmentFeature(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2FulfillmentGenericWebService", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2FulfillmentGenericWebService();
      var od =
          new api.GoogleCloudDialogflowV2FulfillmentGenericWebService.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2FulfillmentGenericWebService(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2ImportAgentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2ImportAgentRequest();
      var od = new api.GoogleCloudDialogflowV2ImportAgentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2ImportAgentRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2ImportDocumentsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2ImportDocumentsResponse();
      var od = new api.GoogleCloudDialogflowV2ImportDocumentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2ImportDocumentsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2InputAudioConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2InputAudioConfig();
      var od =
          new api.GoogleCloudDialogflowV2InputAudioConfig.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2InputAudioConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2Intent", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2Intent();
      var od = new api.GoogleCloudDialogflowV2Intent.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Intent(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentBatch", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentBatch();
      var od = new api.GoogleCloudDialogflowV2IntentBatch.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentBatch(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentFollowupIntentInfo",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentFollowupIntentInfo();
      var od = new api.GoogleCloudDialogflowV2IntentFollowupIntentInfo.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessage", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessage();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessage.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentMessage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageBasicCard",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageBasicCard();
      var od = new api.GoogleCloudDialogflowV2IntentMessageBasicCard.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageBasicCard(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageBasicCardButton", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageBasicCardButton();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageBasicCardButton.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction();
      var od = new api
              .GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard();
      var od = new api
              .GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem();
      var od = new api
              .GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction();
      var od = new api
              .GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction(
          od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageCard", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageCard();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageCard.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageCard(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageCardButton",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageCardButton();
      var od = new api.GoogleCloudDialogflowV2IntentMessageCardButton.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageCardButton(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageCarouselSelect", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageCarouselSelect();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageCarouselSelect.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageCarouselSelect(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageCarouselSelectItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem();
      var od = new api
              .GoogleCloudDialogflowV2IntentMessageCarouselSelectItem.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageCarouselSelectItem(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageColumnProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageColumnProperties();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageColumnProperties.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageColumnProperties(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageImage();
      var od = new api.GoogleCloudDialogflowV2IntentMessageImage.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageImage(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion();
      var od = new api
              .GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageListSelect",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageListSelect();
      var od = new api.GoogleCloudDialogflowV2IntentMessageListSelect.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageListSelect(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageListSelectItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageListSelectItem();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageListSelectItem.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageListSelectItem(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageMediaContent",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageMediaContent();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageMediaContent.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageMediaContent(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject();
      var od = new api
              .GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject(
          od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageQuickReplies",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageQuickReplies();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageQuickReplies.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageQuickReplies(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageSelectItemInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageSelectItemInfo();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageSimpleResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageSimpleResponse();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageSimpleResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageSimpleResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2IntentMessageSimpleResponses", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageSimpleResponses();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageSimpleResponses.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageSimpleResponses(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageSuggestion",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageSuggestion();
      var od = new api.GoogleCloudDialogflowV2IntentMessageSuggestion.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageSuggestion(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageSuggestions",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageSuggestions();
      var od = new api.GoogleCloudDialogflowV2IntentMessageSuggestions.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageSuggestions(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageTableCard",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageTableCard();
      var od = new api.GoogleCloudDialogflowV2IntentMessageTableCard.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageTableCard(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageTableCardCell",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageTableCardCell();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageTableCardCell.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageTableCardCell(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageTableCardRow",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageTableCardRow();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageTableCardRow.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageTableCardRow(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentMessageText", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentMessageText();
      var od =
          new api.GoogleCloudDialogflowV2IntentMessageText.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentMessageText(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentParameter", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentParameter();
      var od =
          new api.GoogleCloudDialogflowV2IntentParameter.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2IntentParameter(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentTrainingPhrase", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentTrainingPhrase();
      var od = new api.GoogleCloudDialogflowV2IntentTrainingPhrase.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentTrainingPhrase(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2IntentTrainingPhrasePart",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2IntentTrainingPhrasePart();
      var od = new api.GoogleCloudDialogflowV2IntentTrainingPhrasePart.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2IntentTrainingPhrasePart(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2ListContextsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2ListContextsResponse();
      var od = new api.GoogleCloudDialogflowV2ListContextsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2ListContextsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2ListEntityTypesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2ListEntityTypesResponse();
      var od = new api.GoogleCloudDialogflowV2ListEntityTypesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2ListEntityTypesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2ListEnvironmentsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2ListEnvironmentsResponse();
      var od = new api.GoogleCloudDialogflowV2ListEnvironmentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2ListEnvironmentsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2ListIntentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2ListIntentsResponse();
      var od = new api.GoogleCloudDialogflowV2ListIntentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2ListIntentsResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2ListSessionEntityTypesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2ListSessionEntityTypesResponse();
      var od = new api
              .GoogleCloudDialogflowV2ListSessionEntityTypesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2ListSessionEntityTypesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2Message", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2Message();
      var od = new api.GoogleCloudDialogflowV2Message.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Message(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2MessageAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2MessageAnnotation();
      var od =
          new api.GoogleCloudDialogflowV2MessageAnnotation.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2MessageAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2OriginalDetectIntentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2OriginalDetectIntentRequest();
      var od =
          new api.GoogleCloudDialogflowV2OriginalDetectIntentRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2OriginalDetectIntentRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2OutputAudioConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2OutputAudioConfig();
      var od =
          new api.GoogleCloudDialogflowV2OutputAudioConfig.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2OutputAudioConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2QueryInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2QueryInput();
      var od = new api.GoogleCloudDialogflowV2QueryInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2QueryInput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2QueryParameters", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2QueryParameters();
      var od =
          new api.GoogleCloudDialogflowV2QueryParameters.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2QueryParameters(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2QueryResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2QueryResult();
      var od = new api.GoogleCloudDialogflowV2QueryResult.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2QueryResult(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2RestoreAgentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2RestoreAgentRequest();
      var od = new api.GoogleCloudDialogflowV2RestoreAgentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2RestoreAgentRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2SearchAgentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2SearchAgentsResponse();
      var od = new api.GoogleCloudDialogflowV2SearchAgentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2SearchAgentsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2Sentiment", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2Sentiment();
      var od = new api.GoogleCloudDialogflowV2Sentiment.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Sentiment(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2SentimentAnalysisRequestConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2SentimentAnalysisRequestConfig();
      var od = new api
              .GoogleCloudDialogflowV2SentimentAnalysisRequestConfig.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2SentimentAnalysisRequestConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2SentimentAnalysisResult",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2SentimentAnalysisResult();
      var od = new api.GoogleCloudDialogflowV2SentimentAnalysisResult.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2SentimentAnalysisResult(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2SessionEntityType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2SessionEntityType();
      var od =
          new api.GoogleCloudDialogflowV2SessionEntityType.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2SessionEntityType(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2SpeechContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2SpeechContext();
      var od =
          new api.GoogleCloudDialogflowV2SpeechContext.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2SpeechContext(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2SynthesizeSpeechConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2SynthesizeSpeechConfig();
      var od = new api.GoogleCloudDialogflowV2SynthesizeSpeechConfig.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2SynthesizeSpeechConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2TextInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2TextInput();
      var od = new api.GoogleCloudDialogflowV2TextInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2TextInput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2TrainAgentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2TrainAgentRequest();
      var od =
          new api.GoogleCloudDialogflowV2TrainAgentRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2TrainAgentRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2ValidationError", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2ValidationError();
      var od =
          new api.GoogleCloudDialogflowV2ValidationError.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2ValidationError(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2ValidationResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2ValidationResult();
      var od =
          new api.GoogleCloudDialogflowV2ValidationResult.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2ValidationResult(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2VoiceSelectionParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2VoiceSelectionParams();
      var od = new api.GoogleCloudDialogflowV2VoiceSelectionParams.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2VoiceSelectionParams(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2WebhookRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2WebhookRequest();
      var od =
          new api.GoogleCloudDialogflowV2WebhookRequest.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2WebhookRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2WebhookResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2WebhookResponse();
      var od =
          new api.GoogleCloudDialogflowV2WebhookResponse.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2WebhookResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1AnnotatedConversationDataset",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1AnnotatedConversationDataset();
      var od = new api
              .GoogleCloudDialogflowV2beta1AnnotatedConversationDataset.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1AnnotatedConversationDataset(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse();
      var od = new api
              .GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse();
      var od = new api
              .GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse();
      var od = new api
              .GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse();
      var od = new api
              .GoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1BatchUpdateSmartMessagingEntriesResponse(
          od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1Context", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1Context();
      var od = new api.GoogleCloudDialogflowV2beta1Context.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1Context(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1EntityType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1EntityType();
      var od =
          new api.GoogleCloudDialogflowV2beta1EntityType.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1EntityType(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1EntityTypeEntity", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1EntityTypeEntity();
      var od = new api.GoogleCloudDialogflowV2beta1EntityTypeEntity.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1EntityTypeEntity(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1EventInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1EventInput();
      var od =
          new api.GoogleCloudDialogflowV2beta1EventInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1EventInput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1ExportAgentResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1ExportAgentResponse();
      var od = new api.GoogleCloudDialogflowV2beta1ExportAgentResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1ExportAgentResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1ImportDocumentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1ImportDocumentsResponse();
      var od =
          new api.GoogleCloudDialogflowV2beta1ImportDocumentsResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1ImportDocumentsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1Intent", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1Intent();
      var od = new api.GoogleCloudDialogflowV2beta1Intent.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1Intent(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1IntentMessage", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessage();
      var od = new api.GoogleCloudDialogflowV2beta1IntentMessage.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessage(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageBasicCard", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageBasicCard();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentMessageBasicCard.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageBasicCard(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction(
          od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1IntentMessageCard",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageCard();
      var od = new api.GoogleCloudDialogflowV2beta1IntentMessageCard.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageCard(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageCardButton", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageCardButton();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentMessageCardButton.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageCardButton(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageColumnProperties",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageColumnProperties();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageColumnProperties.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageColumnProperties(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1IntentMessageImage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
      var od = new api.GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageImage(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageListSelect", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageListSelect();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentMessageListSelect.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageListSelect(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageListSelectItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageListSelectItem.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageListSelectItem(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageMediaContent", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageMediaContent();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageMediaContent.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageMediaContent(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageQuickReplies", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageQuickReplies();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageQuickReplies.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageQuickReplies(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1IntentMessageRbmText",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageRbmText();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentMessageRbmText.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageRbmText(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageSuggestion", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageSuggestion(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageSuggestions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageSuggestions();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentMessageSuggestions.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageSuggestions(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageTableCard", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageTableCard();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentMessageTableCard.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageTableCard(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageTableCardCell", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageTableCardCell();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageTableCardCell.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageTableCardCell(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageTableCardRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageTableCardRow();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageTableCardRow.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageTableCardRow(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall();
      var od = new api
              .GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1IntentMessageText",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentMessageText();
      var od = new api.GoogleCloudDialogflowV2beta1IntentMessageText.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentMessageText(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1IntentParameter", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentParameter();
      var od = new api.GoogleCloudDialogflowV2beta1IntentParameter.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentParameter(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1IntentTrainingPhrase",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentTrainingPhrase(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1KnowledgeAnswers", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1KnowledgeAnswers();
      var od = new api.GoogleCloudDialogflowV2beta1KnowledgeAnswers.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1KnowledgeAnswers(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer();
      var od =
          new api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata();
      var od = new api
              .GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1KnowledgeOperationMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1LabelConversationResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1LabelConversationResponse();
      var od = new api
              .GoogleCloudDialogflowV2beta1LabelConversationResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1LabelConversationResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest();
      var od = new api
              .GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1QueryResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1QueryResult();
      var od =
          new api.GoogleCloudDialogflowV2beta1QueryResult.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1QueryResult(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1Sentiment", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1Sentiment();
      var od =
          new api.GoogleCloudDialogflowV2beta1Sentiment.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1Sentiment(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1SentimentAnalysisResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1SentimentAnalysisResult();
      var od =
          new api.GoogleCloudDialogflowV2beta1SentimentAnalysisResult.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1SentimentAnalysisResult(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1SessionEntityType",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1SessionEntityType();
      var od = new api.GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1SessionEntityType(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1SmartMessagingEntry",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1SmartMessagingEntry();
      var od = new api.GoogleCloudDialogflowV2beta1SmartMessagingEntry.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1SmartMessagingEntry(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1SmartMessagingEntryInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo();
      var od =
          new api.GoogleCloudDialogflowV2beta1SmartMessagingEntryInfo.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1SmartMessagingEntryInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1WebhookRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1WebhookRequest();
      var od = new api.GoogleCloudDialogflowV2beta1WebhookRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1WebhookRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1WebhookResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1WebhookResponse();
      var od = new api.GoogleCloudDialogflowV2beta1WebhookResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1WebhookResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV3alpha1ExportAgentResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV3alpha1ExportAgentResponse();
      var od =
          new api.GoogleCloudDialogflowV3alpha1ExportAgentResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV3alpha1ExportAgentResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata();
      var od =
          new api.GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV3alpha1ExportTestCasesMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV3alpha1ExportTestCasesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV3alpha1ExportTestCasesResponse();
      var od =
          new api.GoogleCloudDialogflowV3alpha1ExportTestCasesResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV3alpha1ExportTestCasesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV3alpha1ImportAgentResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV3alpha1ImportAgentResponse();
      var od =
          new api.GoogleCloudDialogflowV3alpha1ImportAgentResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV3alpha1ImportAgentResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata();
      var od =
          new api.GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV3alpha1ImportTestCasesMetadata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV3alpha1ImportTestCasesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV3alpha1ImportTestCasesResponse();
      var od =
          new api.GoogleCloudDialogflowV3alpha1ImportTestCasesResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV3alpha1ImportTestCasesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningListOperationsResponse();
      var od =
          new api.GoogleLongrunningListOperationsResponse.fromJson(o.toJson());
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningOperation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningOperation();
      var od = new api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group("obj-schema-GoogleProtobufEmpty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleProtobufEmpty();
      var od = new api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group("obj-schema-GoogleRpcStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleRpcStatus();
      var od = new api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeLatLng", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeLatLng();
      var od = new api.GoogleTypeLatLng.fromJson(o.toJson());
      checkGoogleTypeLatLng(od);
    });
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--deleteAgent", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.DialogflowApi(mock).projects;
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteAgent(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--getAgent", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.DialogflowApi(mock).projects;
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Agent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAgent(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Agent(response);
      })));
    });

    unittest.test("method--setAgent", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.DialogflowApi(mock).projects;
      var arg_request = buildGoogleCloudDialogflowV2Agent();
      var arg_parent = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2Agent.fromJson(json);
        checkGoogleCloudDialogflowV2Agent(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Agent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setAgent(arg_request, arg_parent,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Agent(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentResourceApi", () {
    unittest.test("method--export", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent;
      var arg_request = buildGoogleCloudDialogflowV2ExportAgentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2ExportAgentRequest.fromJson(json);
        checkGoogleCloudDialogflowV2ExportAgentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .export(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--getFulfillment", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Fulfillment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getFulfillment(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Fulfillment(response);
      })));
    });

    unittest.test("method--getValidationResult", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent;
      var arg_parent = "foo";
      var arg_languageCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2ValidationResult());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getValidationResult(arg_parent,
              languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2ValidationResult(response);
      })));
    });

    unittest.test("method--import", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent;
      var arg_request = buildGoogleCloudDialogflowV2ImportAgentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2ImportAgentRequest.fromJson(json);
        checkGoogleCloudDialogflowV2ImportAgentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .import(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--restore", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent;
      var arg_request = buildGoogleCloudDialogflowV2RestoreAgentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2RestoreAgentRequest.fromJson(json);
        checkGoogleCloudDialogflowV2RestoreAgentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .restore(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent;
      var arg_parent = "foo";
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SearchAgentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2SearchAgentsResponse(response);
      })));
    });

    unittest.test("method--train", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent;
      var arg_request = buildGoogleCloudDialogflowV2TrainAgentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2TrainAgentRequest.fromJson(json);
        checkGoogleCloudDialogflowV2TrainAgentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .train(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--updateFulfillment", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent;
      var arg_request = buildGoogleCloudDialogflowV2Fulfillment();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2Fulfillment.fromJson(json);
        checkGoogleCloudDialogflowV2Fulfillment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Fulfillment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateFulfillment(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Fulfillment(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentEntityTypesResourceApi", () {
    unittest.test("method--batchDelete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes;
      var arg_request =
          buildGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest.fromJson(
            json);
        checkGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchDelete(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--batchUpdate", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes;
      var arg_request =
          buildGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest.fromJson(
            json);
        checkGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes;
      var arg_request = buildGoogleCloudDialogflowV2EntityType();
      var arg_parent = "foo";
      var arg_languageCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2EntityType.fromJson(json);
        checkGoogleCloudDialogflowV2EntityType(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2EntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2EntityType(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes;
      var arg_name = "foo";
      var arg_languageCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2EntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2EntityType(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_languageCode = "foo";
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListEntityTypesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              languageCode: arg_languageCode,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2ListEntityTypesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes;
      var arg_request = buildGoogleCloudDialogflowV2EntityType();
      var arg_name = "foo";
      var arg_languageCode = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2EntityType.fromJson(json);
        checkGoogleCloudDialogflowV2EntityType(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2EntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              languageCode: arg_languageCode,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2EntityType(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentEntityTypesEntitiesResourceApi", () {
    unittest.test("method--batchCreate", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesEntitiesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes.entities;
      var arg_request =
          buildGoogleCloudDialogflowV2BatchCreateEntitiesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest.fromJson(
                json);
        checkGoogleCloudDialogflowV2BatchCreateEntitiesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchCreate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--batchDelete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesEntitiesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes.entities;
      var arg_request =
          buildGoogleCloudDialogflowV2BatchDeleteEntitiesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest.fromJson(
                json);
        checkGoogleCloudDialogflowV2BatchDeleteEntitiesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchDelete(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--batchUpdate", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesEntitiesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes.entities;
      var arg_request =
          buildGoogleCloudDialogflowV2BatchUpdateEntitiesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest.fromJson(
                json);
        checkGoogleCloudDialogflowV2BatchUpdateEntitiesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentEnvironmentsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEnvironmentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.environments;
      var arg_parent = "foo";
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListEnvironmentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2ListEnvironmentsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentEnvironmentsUsersSessionsResourceApi",
      () {
    unittest.test("method--deleteContexts", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEnvironmentsUsersSessionsResourceApi res =
          new api.DialogflowApi(mock)
              .projects
              .agent
              .environments
              .users
              .sessions;
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteContexts(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--detectIntent", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEnvironmentsUsersSessionsResourceApi res =
          new api.DialogflowApi(mock)
              .projects
              .agent
              .environments
              .users
              .sessions;
      var arg_request = buildGoogleCloudDialogflowV2DetectIntentRequest();
      var arg_session = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2DetectIntentRequest.fromJson(json);
        checkGoogleCloudDialogflowV2DetectIntentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2DetectIntentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .detectIntent(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2DetectIntentResponse(response);
      })));
    });
  });

  unittest.group(
      "resource-ProjectsAgentEnvironmentsUsersSessionsContextsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEnvironmentsUsersSessionsContextsResourceApi res =
          new api.DialogflowApi(mock)
              .projects
              .agent
              .environments
              .users
              .sessions
              .contexts;
      var arg_request = buildGoogleCloudDialogflowV2Context();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2Context.fromJson(json);
        checkGoogleCloudDialogflowV2Context(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Context(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEnvironmentsUsersSessionsContextsResourceApi res =
          new api.DialogflowApi(mock)
              .projects
              .agent
              .environments
              .users
              .sessions
              .contexts;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEnvironmentsUsersSessionsContextsResourceApi res =
          new api.DialogflowApi(mock)
              .projects
              .agent
              .environments
              .users
              .sessions
              .contexts;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Context(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEnvironmentsUsersSessionsContextsResourceApi res =
          new api.DialogflowApi(mock)
              .projects
              .agent
              .environments
              .users
              .sessions
              .contexts;
      var arg_parent = "foo";
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListContextsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2ListContextsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEnvironmentsUsersSessionsContextsResourceApi res =
          new api.DialogflowApi(mock)
              .projects
              .agent
              .environments
              .users
              .sessions
              .contexts;
      var arg_request = buildGoogleCloudDialogflowV2Context();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2Context.fromJson(json);
        checkGoogleCloudDialogflowV2Context(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Context(response);
      })));
    });
  });

  unittest.group(
      "resource-ProjectsAgentEnvironmentsUsersSessionsEntityTypesResourceApi",
      () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEnvironmentsUsersSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock)
              .projects
              .agent
              .environments
              .users
              .sessions
              .entityTypes;
      var arg_request = buildGoogleCloudDialogflowV2SessionEntityType();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2SessionEntityType.fromJson(json);
        checkGoogleCloudDialogflowV2SessionEntityType(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2SessionEntityType(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEnvironmentsUsersSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock)
              .projects
              .agent
              .environments
              .users
              .sessions
              .entityTypes;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEnvironmentsUsersSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock)
              .projects
              .agent
              .environments
              .users
              .sessions
              .entityTypes;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2SessionEntityType(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEnvironmentsUsersSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock)
              .projects
              .agent
              .environments
              .users
              .sessions
              .entityTypes;
      var arg_parent = "foo";
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
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
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
        var resp = convert.json.encode(
            buildGoogleCloudDialogflowV2ListSessionEntityTypesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2ListSessionEntityTypesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEnvironmentsUsersSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock)
              .projects
              .agent
              .environments
              .users
              .sessions
              .entityTypes;
      var arg_request = buildGoogleCloudDialogflowV2SessionEntityType();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2SessionEntityType.fromJson(json);
        checkGoogleCloudDialogflowV2SessionEntityType(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2SessionEntityType(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentIntentsResourceApi", () {
    unittest.test("method--batchDelete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.intents;
      var arg_request = buildGoogleCloudDialogflowV2BatchDeleteIntentsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest.fromJson(
                json);
        checkGoogleCloudDialogflowV2BatchDeleteIntentsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchDelete(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--batchUpdate", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.intents;
      var arg_request = buildGoogleCloudDialogflowV2BatchUpdateIntentsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest.fromJson(
                json);
        checkGoogleCloudDialogflowV2BatchUpdateIntentsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.intents;
      var arg_request = buildGoogleCloudDialogflowV2Intent();
      var arg_parent = "foo";
      var arg_intentView = "foo";
      var arg_languageCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2Intent.fromJson(json);
        checkGoogleCloudDialogflowV2Intent(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["intentView"].first, unittest.equals(arg_intentView));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Intent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              intentView: arg_intentView,
              languageCode: arg_languageCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Intent(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.intents;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.intents;
      var arg_name = "foo";
      var arg_intentView = "foo";
      var arg_languageCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["intentView"].first, unittest.equals(arg_intentView));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Intent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              intentView: arg_intentView,
              languageCode: arg_languageCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Intent(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.intents;
      var arg_parent = "foo";
      var arg_languageCode = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_intentView = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["intentView"].first, unittest.equals(arg_intentView));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListIntentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              languageCode: arg_languageCode,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              intentView: arg_intentView,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2ListIntentsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.intents;
      var arg_request = buildGoogleCloudDialogflowV2Intent();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_languageCode = "foo";
      var arg_intentView = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2Intent.fromJson(json);
        checkGoogleCloudDialogflowV2Intent(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["intentView"].first, unittest.equals(arg_intentView));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Intent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask,
              languageCode: arg_languageCode,
              intentView: arg_intentView,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Intent(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentSessionsResourceApi", () {
    unittest.test("method--deleteContexts", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions;
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteContexts(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--detectIntent", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions;
      var arg_request = buildGoogleCloudDialogflowV2DetectIntentRequest();
      var arg_session = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2DetectIntentRequest.fromJson(json);
        checkGoogleCloudDialogflowV2DetectIntentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2DetectIntentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .detectIntent(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2DetectIntentResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentSessionsContextsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsContextsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.contexts;
      var arg_request = buildGoogleCloudDialogflowV2Context();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2Context.fromJson(json);
        checkGoogleCloudDialogflowV2Context(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Context(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsContextsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.contexts;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsContextsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.contexts;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Context(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsContextsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.contexts;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListContextsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2ListContextsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsContextsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.contexts;
      var arg_request = buildGoogleCloudDialogflowV2Context();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2Context.fromJson(json);
        checkGoogleCloudDialogflowV2Context(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2Context(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentSessionsEntityTypesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
      var arg_request = buildGoogleCloudDialogflowV2SessionEntityType();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2SessionEntityType.fromJson(json);
        checkGoogleCloudDialogflowV2SessionEntityType(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2SessionEntityType(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2SessionEntityType(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleCloudDialogflowV2ListSessionEntityTypesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2ListSessionEntityTypesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
      var arg_request = buildGoogleCloudDialogflowV2SessionEntityType();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2SessionEntityType.fromJson(json);
        checkGoogleCloudDialogflowV2SessionEntityType(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2SessionEntityType(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.DialogflowApi(mock).projects.locations.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.DialogflowApi(mock).projects.locations.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.DialogflowApi(mock).projects.locations.operations;
      var arg_name = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          new api.DialogflowApi(mock).projects.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          new api.DialogflowApi(mock).projects.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          new api.DialogflowApi(mock).projects.operations;
      var arg_name = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(response);
      })));
    });
  });
}
