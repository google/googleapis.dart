library googleapis_beta.dialogflow.v2beta1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/dialogflow/v2beta1.dart' as api;

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

buildUnnamed4883() {
  var o = new core.List<api.GoogleCloudDialogflowV2EntityType>();
  o.add(buildGoogleCloudDialogflowV2EntityType());
  o.add(buildGoogleCloudDialogflowV2EntityType());
  return o;
}

checkUnnamed4883(core.List<api.GoogleCloudDialogflowV2EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityType(o[0]);
  checkGoogleCloudDialogflowV2EntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse = 0;
buildGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse() {
  var o = new api.GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse();
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse < 3) {
    o.entityTypes = buildUnnamed4883();
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse--;
  return o;
}

checkGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse(
    api.GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse < 3) {
    checkUnnamed4883(o.entityTypes);
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse--;
}

buildUnnamed4884() {
  var o = new core.List<api.GoogleCloudDialogflowV2Intent>();
  o.add(buildGoogleCloudDialogflowV2Intent());
  o.add(buildGoogleCloudDialogflowV2Intent());
  return o;
}

checkUnnamed4884(core.List<api.GoogleCloudDialogflowV2Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Intent(o[0]);
  checkGoogleCloudDialogflowV2Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse = 0;
buildGoogleCloudDialogflowV2BatchUpdateIntentsResponse() {
  var o = new api.GoogleCloudDialogflowV2BatchUpdateIntentsResponse();
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse < 3) {
    o.intents = buildUnnamed4884();
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2BatchUpdateIntentsResponse(
    api.GoogleCloudDialogflowV2BatchUpdateIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse < 3) {
    checkUnnamed4884(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse--;
}

buildUnnamed4885() {
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

checkUnnamed4885(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2Context = 0;
buildGoogleCloudDialogflowV2Context() {
  var o = new api.GoogleCloudDialogflowV2Context();
  buildCounterGoogleCloudDialogflowV2Context++;
  if (buildCounterGoogleCloudDialogflowV2Context < 3) {
    o.lifespanCount = 42;
    o.name = "foo";
    o.parameters = buildUnnamed4885();
  }
  buildCounterGoogleCloudDialogflowV2Context--;
  return o;
}

checkGoogleCloudDialogflowV2Context(api.GoogleCloudDialogflowV2Context o) {
  buildCounterGoogleCloudDialogflowV2Context++;
  if (buildCounterGoogleCloudDialogflowV2Context < 3) {
    unittest.expect(o.lifespanCount, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4885(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2Context--;
}

buildUnnamed4886() {
  var o = new core.List<api.GoogleCloudDialogflowV2EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

checkUnnamed4886(core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> o) {
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
    o.entities = buildUnnamed4886();
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
    checkUnnamed4886(o.entities);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2EntityType--;
}

buildUnnamed4887() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4887(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2EntityTypeEntity = 0;
buildGoogleCloudDialogflowV2EntityTypeEntity() {
  var o = new api.GoogleCloudDialogflowV2EntityTypeEntity();
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeEntity < 3) {
    o.synonyms = buildUnnamed4887();
    o.value = "foo";
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity--;
  return o;
}

checkGoogleCloudDialogflowV2EntityTypeEntity(
    api.GoogleCloudDialogflowV2EntityTypeEntity o) {
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeEntity < 3) {
    checkUnnamed4887(o.synonyms);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity--;
}

buildUnnamed4888() {
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

checkUnnamed4888(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2EventInput = 0;
buildGoogleCloudDialogflowV2EventInput() {
  var o = new api.GoogleCloudDialogflowV2EventInput();
  buildCounterGoogleCloudDialogflowV2EventInput++;
  if (buildCounterGoogleCloudDialogflowV2EventInput < 3) {
    o.languageCode = "foo";
    o.name = "foo";
    o.parameters = buildUnnamed4888();
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
    checkUnnamed4888(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2EventInput--;
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

buildUnnamed4889() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4889(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4890() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4890(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4891() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentFollowupIntentInfo>();
  o.add(buildGoogleCloudDialogflowV2IntentFollowupIntentInfo());
  o.add(buildGoogleCloudDialogflowV2IntentFollowupIntentInfo());
  return o;
}

checkUnnamed4891(
    core.List<api.GoogleCloudDialogflowV2IntentFollowupIntentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(o[0]);
  checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(o[1]);
}

buildUnnamed4892() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4892(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4893() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

checkUnnamed4893(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2IntentMessage(o[1]);
}

buildUnnamed4894() {
  var o = new core.List<api.GoogleCloudDialogflowV2Context>();
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

checkUnnamed4894(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

buildUnnamed4895() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentParameter>();
  o.add(buildGoogleCloudDialogflowV2IntentParameter());
  o.add(buildGoogleCloudDialogflowV2IntentParameter());
  return o;
}

checkUnnamed4895(core.List<api.GoogleCloudDialogflowV2IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentParameter(o[0]);
  checkGoogleCloudDialogflowV2IntentParameter(o[1]);
}

buildUnnamed4896() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrase>();
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrase());
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrase());
  return o;
}

checkUnnamed4896(core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrase> o) {
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
    o.defaultResponsePlatforms = buildUnnamed4889();
    o.displayName = "foo";
    o.events = buildUnnamed4890();
    o.followupIntentInfo = buildUnnamed4891();
    o.inputContextNames = buildUnnamed4892();
    o.isFallback = true;
    o.messages = buildUnnamed4893();
    o.mlDisabled = true;
    o.name = "foo";
    o.outputContexts = buildUnnamed4894();
    o.parameters = buildUnnamed4895();
    o.parentFollowupIntentName = "foo";
    o.priority = 42;
    o.resetContexts = true;
    o.rootFollowupIntentName = "foo";
    o.trainingPhrases = buildUnnamed4896();
    o.webhookState = "foo";
  }
  buildCounterGoogleCloudDialogflowV2Intent--;
  return o;
}

checkGoogleCloudDialogflowV2Intent(api.GoogleCloudDialogflowV2Intent o) {
  buildCounterGoogleCloudDialogflowV2Intent++;
  if (buildCounterGoogleCloudDialogflowV2Intent < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed4889(o.defaultResponsePlatforms);
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed4890(o.events);
    checkUnnamed4891(o.followupIntentInfo);
    checkUnnamed4892(o.inputContextNames);
    unittest.expect(o.isFallback, unittest.isTrue);
    checkUnnamed4893(o.messages);
    unittest.expect(o.mlDisabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4894(o.outputContexts);
    checkUnnamed4895(o.parameters);
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    unittest.expect(o.resetContexts, unittest.isTrue);
    unittest.expect(o.rootFollowupIntentName, unittest.equals('foo'));
    checkUnnamed4896(o.trainingPhrases);
    unittest.expect(o.webhookState, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2Intent--;
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

buildUnnamed4897() {
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

checkUnnamed4897(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessage = 0;
buildGoogleCloudDialogflowV2IntentMessage() {
  var o = new api.GoogleCloudDialogflowV2IntentMessage();
  buildCounterGoogleCloudDialogflowV2IntentMessage++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessage < 3) {
    o.basicCard = buildGoogleCloudDialogflowV2IntentMessageBasicCard();
    o.card = buildGoogleCloudDialogflowV2IntentMessageCard();
    o.carouselSelect =
        buildGoogleCloudDialogflowV2IntentMessageCarouselSelect();
    o.image = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.linkOutSuggestion =
        buildGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion();
    o.listSelect = buildGoogleCloudDialogflowV2IntentMessageListSelect();
    o.payload = buildUnnamed4897();
    o.platform = "foo";
    o.quickReplies = buildGoogleCloudDialogflowV2IntentMessageQuickReplies();
    o.simpleResponses =
        buildGoogleCloudDialogflowV2IntentMessageSimpleResponses();
    o.suggestions = buildGoogleCloudDialogflowV2IntentMessageSuggestions();
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
    checkGoogleCloudDialogflowV2IntentMessageCard(o.card);
    checkGoogleCloudDialogflowV2IntentMessageCarouselSelect(o.carouselSelect);
    checkGoogleCloudDialogflowV2IntentMessageImage(o.image);
    checkGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion(
        o.linkOutSuggestion);
    checkGoogleCloudDialogflowV2IntentMessageListSelect(o.listSelect);
    checkUnnamed4897(o.payload);
    unittest.expect(o.platform, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2IntentMessageQuickReplies(o.quickReplies);
    checkGoogleCloudDialogflowV2IntentMessageSimpleResponses(o.simpleResponses);
    checkGoogleCloudDialogflowV2IntentMessageSuggestions(o.suggestions);
    checkGoogleCloudDialogflowV2IntentMessageText(o.text);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessage--;
}

buildUnnamed4898() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  return o;
}

checkUnnamed4898(
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
    o.buttons = buildUnnamed4898();
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
    checkUnnamed4898(o.buttons);
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

buildUnnamed4899() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessageCardButton>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageCardButton());
  o.add(buildGoogleCloudDialogflowV2IntentMessageCardButton());
  return o;
}

checkUnnamed4899(
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
    o.buttons = buildUnnamed4899();
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
    checkUnnamed4899(o.buttons);
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

buildUnnamed4900() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem());
  o.add(buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem());
  return o;
}

checkUnnamed4900(
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
    o.items = buildUnnamed4900();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageCarouselSelect(
    api.GoogleCloudDialogflowV2IntentMessageCarouselSelect o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect < 3) {
    checkUnnamed4900(o.items);
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

buildUnnamed4901() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2IntentMessageListSelectItem>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageListSelectItem());
  o.add(buildGoogleCloudDialogflowV2IntentMessageListSelectItem());
  return o;
}

checkUnnamed4901(
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
    o.items = buildUnnamed4901();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelect--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageListSelect(
    api.GoogleCloudDialogflowV2IntentMessageListSelect o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageListSelect < 3) {
    checkUnnamed4901(o.items);
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

buildUnnamed4902() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4902(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies = 0;
buildGoogleCloudDialogflowV2IntentMessageQuickReplies() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageQuickReplies();
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies < 3) {
    o.quickReplies = buildUnnamed4902();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageQuickReplies(
    api.GoogleCloudDialogflowV2IntentMessageQuickReplies o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies < 3) {
    checkUnnamed4902(o.quickReplies);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies--;
}

buildUnnamed4903() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4903(core.List<core.String> o) {
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
    o.synonyms = buildUnnamed4903();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(
    api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed4903(o.synonyms);
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

buildUnnamed4904() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2IntentMessageSimpleResponse>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageSimpleResponse());
  o.add(buildGoogleCloudDialogflowV2IntentMessageSimpleResponse());
  return o;
}

checkUnnamed4904(
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
    o.simpleResponses = buildUnnamed4904();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageSimpleResponses(
    api.GoogleCloudDialogflowV2IntentMessageSimpleResponses o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses < 3) {
    checkUnnamed4904(o.simpleResponses);
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

buildUnnamed4905() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessageSuggestion>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageSuggestion());
  o.add(buildGoogleCloudDialogflowV2IntentMessageSuggestion());
  return o;
}

checkUnnamed4905(
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
    o.suggestions = buildUnnamed4905();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageSuggestions(
    api.GoogleCloudDialogflowV2IntentMessageSuggestions o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions < 3) {
    checkUnnamed4905(o.suggestions);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions--;
}

buildUnnamed4906() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4906(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageText = 0;
buildGoogleCloudDialogflowV2IntentMessageText() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageText();
  buildCounterGoogleCloudDialogflowV2IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageText < 3) {
    o.text = buildUnnamed4906();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageText--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageText(
    api.GoogleCloudDialogflowV2IntentMessageText o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageText < 3) {
    checkUnnamed4906(o.text);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageText--;
}

buildUnnamed4907() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4907(core.List<core.String> o) {
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
    o.prompts = buildUnnamed4907();
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
    checkUnnamed4907(o.prompts);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentParameter--;
}

buildUnnamed4908() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrasePart>();
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrasePart());
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrasePart());
  return o;
}

checkUnnamed4908(
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
    o.parts = buildUnnamed4908();
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
    checkUnnamed4908(o.parts);
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

buildUnnamed4909() {
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

checkUnnamed4909(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o["x"]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
  var casted8 = (o["y"]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest = 0;
buildGoogleCloudDialogflowV2OriginalDetectIntentRequest() {
  var o = new api.GoogleCloudDialogflowV2OriginalDetectIntentRequest();
  buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest < 3) {
    o.payload = buildUnnamed4909();
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
    checkUnnamed4909(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest--;
}

buildUnnamed4910() {
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

checkUnnamed4910(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o["x"]) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted9["bool"], unittest.equals(true));
  unittest.expect(casted9["string"], unittest.equals('foo'));
  var casted10 = (o["y"]) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted10["bool"], unittest.equals(true));
  unittest.expect(casted10["string"], unittest.equals('foo'));
}

buildUnnamed4911() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

checkUnnamed4911(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2IntentMessage(o[1]);
}

buildUnnamed4912() {
  var o = new core.List<api.GoogleCloudDialogflowV2Context>();
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

checkUnnamed4912(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

buildUnnamed4913() {
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

checkUnnamed4913(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o["x"]) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted11["bool"], unittest.equals(true));
  unittest.expect(casted11["string"], unittest.equals('foo'));
  var casted12 = (o["y"]) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted12["bool"], unittest.equals(true));
  unittest.expect(casted12["string"], unittest.equals('foo'));
}

buildUnnamed4914() {
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

checkUnnamed4914(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudDialogflowV2QueryResult = 0;
buildGoogleCloudDialogflowV2QueryResult() {
  var o = new api.GoogleCloudDialogflowV2QueryResult();
  buildCounterGoogleCloudDialogflowV2QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2QueryResult < 3) {
    o.action = "foo";
    o.allRequiredParamsPresent = true;
    o.diagnosticInfo = buildUnnamed4910();
    o.fulfillmentMessages = buildUnnamed4911();
    o.fulfillmentText = "foo";
    o.intent = buildGoogleCloudDialogflowV2Intent();
    o.intentDetectionConfidence = 42.0;
    o.languageCode = "foo";
    o.outputContexts = buildUnnamed4912();
    o.parameters = buildUnnamed4913();
    o.queryText = "foo";
    o.speechRecognitionConfidence = 42.0;
    o.webhookPayload = buildUnnamed4914();
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
    checkUnnamed4910(o.diagnosticInfo);
    checkUnnamed4911(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2Intent(o.intent);
    unittest.expect(o.intentDetectionConfidence, unittest.equals(42.0));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed4912(o.outputContexts);
    checkUnnamed4913(o.parameters);
    unittest.expect(o.queryText, unittest.equals('foo'));
    unittest.expect(o.speechRecognitionConfidence, unittest.equals(42.0));
    checkUnnamed4914(o.webhookPayload);
    unittest.expect(o.webhookSource, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2QueryResult--;
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

buildUnnamed4915() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

checkUnnamed4915(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2IntentMessage(o[1]);
}

buildUnnamed4916() {
  var o = new core.List<api.GoogleCloudDialogflowV2Context>();
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

checkUnnamed4916(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

buildUnnamed4917() {
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

checkUnnamed4917(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o["x"]) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(casted15["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted15["bool"], unittest.equals(true));
  unittest.expect(casted15["string"], unittest.equals('foo'));
  var casted16 = (o["y"]) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(casted16["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted16["bool"], unittest.equals(true));
  unittest.expect(casted16["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2WebhookResponse = 0;
buildGoogleCloudDialogflowV2WebhookResponse() {
  var o = new api.GoogleCloudDialogflowV2WebhookResponse();
  buildCounterGoogleCloudDialogflowV2WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowV2WebhookResponse < 3) {
    o.followupEventInput = buildGoogleCloudDialogflowV2EventInput();
    o.fulfillmentMessages = buildUnnamed4915();
    o.fulfillmentText = "foo";
    o.outputContexts = buildUnnamed4916();
    o.payload = buildUnnamed4917();
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
    checkUnnamed4915(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkUnnamed4916(o.outputContexts);
    checkUnnamed4917(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2WebhookResponse--;
}

buildUnnamed4918() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4918(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1Agent = 0;
buildGoogleCloudDialogflowV2beta1Agent() {
  var o = new api.GoogleCloudDialogflowV2beta1Agent();
  buildCounterGoogleCloudDialogflowV2beta1Agent++;
  if (buildCounterGoogleCloudDialogflowV2beta1Agent < 3) {
    o.avatarUri = "foo";
    o.classificationThreshold = 42.0;
    o.defaultLanguageCode = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.enableLogging = true;
    o.matchMode = "foo";
    o.parent = "foo";
    o.supportedLanguageCodes = buildUnnamed4918();
    o.timeZone = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1Agent--;
  return o;
}

checkGoogleCloudDialogflowV2beta1Agent(
    api.GoogleCloudDialogflowV2beta1Agent o) {
  buildCounterGoogleCloudDialogflowV2beta1Agent++;
  if (buildCounterGoogleCloudDialogflowV2beta1Agent < 3) {
    unittest.expect(o.avatarUri, unittest.equals('foo'));
    unittest.expect(o.classificationThreshold, unittest.equals(42.0));
    unittest.expect(o.defaultLanguageCode, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.enableLogging, unittest.isTrue);
    unittest.expect(o.matchMode, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    checkUnnamed4918(o.supportedLanguageCodes);
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1Agent--;
}

buildUnnamed4919() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  return o;
}

checkUnnamed4919(
    core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowV2beta1EntityTypeEntity(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest = 0;
buildGoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest();
  buildCounterGoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest < 3) {
    o.entities = buildUnnamed4919();
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest(
    api.GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest < 3) {
    checkUnnamed4919(o.entities);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest--;
}

buildUnnamed4920() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4920(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest = 0;
buildGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest();
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest < 3) {
    o.entityValues = buildUnnamed4920();
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest(
    api.GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest < 3) {
    checkUnnamed4920(o.entityValues);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest--;
}

buildUnnamed4921() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4921(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest =
    0;
buildGoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest();
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest <
      3) {
    o.entityTypeNames = buildUnnamed4921();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest(
    api.GoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest <
      3) {
    checkUnnamed4921(o.entityTypeNames);
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest--;
}

buildUnnamed4922() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Intent>();
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  return o;
}

checkUnnamed4922(core.List<api.GoogleCloudDialogflowV2beta1Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Intent(o[0]);
  checkGoogleCloudDialogflowV2beta1Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest = 0;
buildGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest();
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest < 3) {
    o.intents = buildUnnamed4922();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest(
    api.GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest < 3) {
    checkUnnamed4922(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest--;
}

buildUnnamed4923() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  return o;
}

checkUnnamed4923(
    core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowV2beta1EntityTypeEntity(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest = 0;
buildGoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest();
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest < 3) {
    o.entities = buildUnnamed4923();
    o.languageCode = "foo";
    o.updateMask = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest(
    api.GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest < 3) {
    checkUnnamed4923(o.entities);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest =
    0;
buildGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest();
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest <
      3) {
    o.entityTypeBatchInline =
        buildGoogleCloudDialogflowV2beta1EntityTypeBatch();
    o.entityTypeBatchUri = "foo";
    o.languageCode = "foo";
    o.updateMask = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest(
    api.GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest <
      3) {
    checkGoogleCloudDialogflowV2beta1EntityTypeBatch(o.entityTypeBatchInline);
    unittest.expect(o.entityTypeBatchUri, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest--;
}

buildUnnamed4924() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1EntityType>();
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  return o;
}

checkUnnamed4924(core.List<api.GoogleCloudDialogflowV2beta1EntityType> o) {
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
    o.entityTypes = buildUnnamed4924();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse(
    api.GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse <
      3) {
    checkUnnamed4924(o.entityTypes);
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest = 0;
buildGoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest();
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest < 3) {
    o.intentBatchInline = buildGoogleCloudDialogflowV2beta1IntentBatch();
    o.intentBatchUri = "foo";
    o.intentView = "foo";
    o.languageCode = "foo";
    o.updateMask = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest(
    api.GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest < 3) {
    checkGoogleCloudDialogflowV2beta1IntentBatch(o.intentBatchInline);
    unittest.expect(o.intentBatchUri, unittest.equals('foo'));
    unittest.expect(o.intentView, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest--;
}

buildUnnamed4925() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Intent>();
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  return o;
}

checkUnnamed4925(core.List<api.GoogleCloudDialogflowV2beta1Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Intent(o[0]);
  checkGoogleCloudDialogflowV2beta1Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse = 0;
buildGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse();
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse < 3) {
    o.intents = buildUnnamed4925();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse(
    api.GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse < 3) {
    checkUnnamed4925(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse--;
}

buildUnnamed4926() {
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

checkUnnamed4926(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted17 = (o["x"]) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(casted17["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted17["bool"], unittest.equals(true));
  unittest.expect(casted17["string"], unittest.equals('foo'));
  var casted18 = (o["y"]) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(casted18["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted18["bool"], unittest.equals(true));
  unittest.expect(casted18["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1Context = 0;
buildGoogleCloudDialogflowV2beta1Context() {
  var o = new api.GoogleCloudDialogflowV2beta1Context();
  buildCounterGoogleCloudDialogflowV2beta1Context++;
  if (buildCounterGoogleCloudDialogflowV2beta1Context < 3) {
    o.lifespanCount = 42;
    o.name = "foo";
    o.parameters = buildUnnamed4926();
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
    checkUnnamed4926(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2beta1Context--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1DetectIntentRequest = 0;
buildGoogleCloudDialogflowV2beta1DetectIntentRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1DetectIntentRequest();
  buildCounterGoogleCloudDialogflowV2beta1DetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1DetectIntentRequest < 3) {
    o.inputAudio = "foo";
    o.outputAudioConfig = buildGoogleCloudDialogflowV2beta1OutputAudioConfig();
    o.queryInput = buildGoogleCloudDialogflowV2beta1QueryInput();
    o.queryParams = buildGoogleCloudDialogflowV2beta1QueryParameters();
  }
  buildCounterGoogleCloudDialogflowV2beta1DetectIntentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1DetectIntentRequest(
    api.GoogleCloudDialogflowV2beta1DetectIntentRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1DetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1DetectIntentRequest < 3) {
    unittest.expect(o.inputAudio, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1OutputAudioConfig(o.outputAudioConfig);
    checkGoogleCloudDialogflowV2beta1QueryInput(o.queryInput);
    checkGoogleCloudDialogflowV2beta1QueryParameters(o.queryParams);
  }
  buildCounterGoogleCloudDialogflowV2beta1DetectIntentRequest--;
}

buildUnnamed4927() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1QueryResult>();
  o.add(buildGoogleCloudDialogflowV2beta1QueryResult());
  o.add(buildGoogleCloudDialogflowV2beta1QueryResult());
  return o;
}

checkUnnamed4927(core.List<api.GoogleCloudDialogflowV2beta1QueryResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1QueryResult(o[0]);
  checkGoogleCloudDialogflowV2beta1QueryResult(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1DetectIntentResponse = 0;
buildGoogleCloudDialogflowV2beta1DetectIntentResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1DetectIntentResponse();
  buildCounterGoogleCloudDialogflowV2beta1DetectIntentResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1DetectIntentResponse < 3) {
    o.alternativeQueryResults = buildUnnamed4927();
    o.outputAudio = "foo";
    o.outputAudioConfig = buildGoogleCloudDialogflowV2beta1OutputAudioConfig();
    o.queryResult = buildGoogleCloudDialogflowV2beta1QueryResult();
    o.responseId = "foo";
    o.webhookStatus = buildGoogleRpcStatus();
  }
  buildCounterGoogleCloudDialogflowV2beta1DetectIntentResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1DetectIntentResponse(
    api.GoogleCloudDialogflowV2beta1DetectIntentResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1DetectIntentResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1DetectIntentResponse < 3) {
    checkUnnamed4927(o.alternativeQueryResults);
    unittest.expect(o.outputAudio, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1OutputAudioConfig(o.outputAudioConfig);
    checkGoogleCloudDialogflowV2beta1QueryResult(o.queryResult);
    unittest.expect(o.responseId, unittest.equals('foo'));
    checkGoogleRpcStatus(o.webhookStatus);
  }
  buildCounterGoogleCloudDialogflowV2beta1DetectIntentResponse--;
}

buildUnnamed4928() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4928(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1Document = 0;
buildGoogleCloudDialogflowV2beta1Document() {
  var o = new api.GoogleCloudDialogflowV2beta1Document();
  buildCounterGoogleCloudDialogflowV2beta1Document++;
  if (buildCounterGoogleCloudDialogflowV2beta1Document < 3) {
    o.content = "foo";
    o.contentUri = "foo";
    o.displayName = "foo";
    o.knowledgeTypes = buildUnnamed4928();
    o.mimeType = "foo";
    o.name = "foo";
    o.rawContent = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1Document--;
  return o;
}

checkGoogleCloudDialogflowV2beta1Document(
    api.GoogleCloudDialogflowV2beta1Document o) {
  buildCounterGoogleCloudDialogflowV2beta1Document++;
  if (buildCounterGoogleCloudDialogflowV2beta1Document < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.contentUri, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed4928(o.knowledgeTypes);
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.rawContent, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1Document--;
}

buildUnnamed4929() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  return o;
}

checkUnnamed4929(
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
    o.entities = buildUnnamed4929();
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
    checkUnnamed4929(o.entities);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityType--;
}

buildUnnamed4930() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1EntityType>();
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  return o;
}

checkUnnamed4930(core.List<api.GoogleCloudDialogflowV2beta1EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1EntityType(o[0]);
  checkGoogleCloudDialogflowV2beta1EntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1EntityTypeBatch = 0;
buildGoogleCloudDialogflowV2beta1EntityTypeBatch() {
  var o = new api.GoogleCloudDialogflowV2beta1EntityTypeBatch();
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeBatch++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityTypeBatch < 3) {
    o.entityTypes = buildUnnamed4930();
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeBatch--;
  return o;
}

checkGoogleCloudDialogflowV2beta1EntityTypeBatch(
    api.GoogleCloudDialogflowV2beta1EntityTypeBatch o) {
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeBatch++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityTypeBatch < 3) {
    checkUnnamed4930(o.entityTypes);
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeBatch--;
}

buildUnnamed4931() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4931(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity = 0;
buildGoogleCloudDialogflowV2beta1EntityTypeEntity() {
  var o = new api.GoogleCloudDialogflowV2beta1EntityTypeEntity();
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity < 3) {
    o.synonyms = buildUnnamed4931();
    o.value = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity--;
  return o;
}

checkGoogleCloudDialogflowV2beta1EntityTypeEntity(
    api.GoogleCloudDialogflowV2beta1EntityTypeEntity o) {
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity < 3) {
    checkUnnamed4931(o.synonyms);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity--;
}

buildUnnamed4932() {
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

checkUnnamed4932(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted19 = (o["x"]) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(casted19["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted19["bool"], unittest.equals(true));
  unittest.expect(casted19["string"], unittest.equals('foo'));
  var casted20 = (o["y"]) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(casted20["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted20["bool"], unittest.equals(true));
  unittest.expect(casted20["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1EventInput = 0;
buildGoogleCloudDialogflowV2beta1EventInput() {
  var o = new api.GoogleCloudDialogflowV2beta1EventInput();
  buildCounterGoogleCloudDialogflowV2beta1EventInput++;
  if (buildCounterGoogleCloudDialogflowV2beta1EventInput < 3) {
    o.languageCode = "foo";
    o.name = "foo";
    o.parameters = buildUnnamed4932();
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
    checkUnnamed4932(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2beta1EventInput--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1ExportAgentRequest = 0;
buildGoogleCloudDialogflowV2beta1ExportAgentRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1ExportAgentRequest();
  buildCounterGoogleCloudDialogflowV2beta1ExportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1ExportAgentRequest < 3) {
    o.agentUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1ExportAgentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1ExportAgentRequest(
    api.GoogleCloudDialogflowV2beta1ExportAgentRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1ExportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1ExportAgentRequest < 3) {
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1ExportAgentRequest--;
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

core.int buildCounterGoogleCloudDialogflowV2beta1ImportAgentRequest = 0;
buildGoogleCloudDialogflowV2beta1ImportAgentRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1ImportAgentRequest();
  buildCounterGoogleCloudDialogflowV2beta1ImportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1ImportAgentRequest < 3) {
    o.agentContent = "foo";
    o.agentUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1ImportAgentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1ImportAgentRequest(
    api.GoogleCloudDialogflowV2beta1ImportAgentRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1ImportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1ImportAgentRequest < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1ImportAgentRequest--;
}

buildUnnamed4933() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4933(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1InputAudioConfig = 0;
buildGoogleCloudDialogflowV2beta1InputAudioConfig() {
  var o = new api.GoogleCloudDialogflowV2beta1InputAudioConfig();
  buildCounterGoogleCloudDialogflowV2beta1InputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowV2beta1InputAudioConfig < 3) {
    o.audioEncoding = "foo";
    o.languageCode = "foo";
    o.model = "foo";
    o.phraseHints = buildUnnamed4933();
    o.sampleRateHertz = 42;
  }
  buildCounterGoogleCloudDialogflowV2beta1InputAudioConfig--;
  return o;
}

checkGoogleCloudDialogflowV2beta1InputAudioConfig(
    api.GoogleCloudDialogflowV2beta1InputAudioConfig o) {
  buildCounterGoogleCloudDialogflowV2beta1InputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowV2beta1InputAudioConfig < 3) {
    unittest.expect(o.audioEncoding, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    checkUnnamed4933(o.phraseHints);
    unittest.expect(o.sampleRateHertz, unittest.equals(42));
  }
  buildCounterGoogleCloudDialogflowV2beta1InputAudioConfig--;
}

buildUnnamed4934() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4934(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4935() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4935(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4936() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo());
  o.add(buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo());
  return o;
}

checkUnnamed4936(
    core.List<api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(o[1]);
}

buildUnnamed4937() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4937(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4938() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

checkUnnamed4938(core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[1]);
}

buildUnnamed4939() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Context>();
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

checkUnnamed4939(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(o[0]);
  checkGoogleCloudDialogflowV2beta1Context(o[1]);
}

buildUnnamed4940() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentParameter>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentParameter());
  o.add(buildGoogleCloudDialogflowV2beta1IntentParameter());
  return o;
}

checkUnnamed4940(core.List<api.GoogleCloudDialogflowV2beta1IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentParameter(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentParameter(o[1]);
}

buildUnnamed4941() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase());
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase());
  return o;
}

checkUnnamed4941(
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
    o.defaultResponsePlatforms = buildUnnamed4934();
    o.displayName = "foo";
    o.endInteraction = true;
    o.events = buildUnnamed4935();
    o.followupIntentInfo = buildUnnamed4936();
    o.inputContextNames = buildUnnamed4937();
    o.isFallback = true;
    o.messages = buildUnnamed4938();
    o.mlDisabled = true;
    o.mlEnabled = true;
    o.name = "foo";
    o.outputContexts = buildUnnamed4939();
    o.parameters = buildUnnamed4940();
    o.parentFollowupIntentName = "foo";
    o.priority = 42;
    o.resetContexts = true;
    o.rootFollowupIntentName = "foo";
    o.trainingPhrases = buildUnnamed4941();
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
    checkUnnamed4934(o.defaultResponsePlatforms);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.endInteraction, unittest.isTrue);
    checkUnnamed4935(o.events);
    checkUnnamed4936(o.followupIntentInfo);
    checkUnnamed4937(o.inputContextNames);
    unittest.expect(o.isFallback, unittest.isTrue);
    checkUnnamed4938(o.messages);
    unittest.expect(o.mlDisabled, unittest.isTrue);
    unittest.expect(o.mlEnabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4939(o.outputContexts);
    checkUnnamed4940(o.parameters);
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    unittest.expect(o.resetContexts, unittest.isTrue);
    unittest.expect(o.rootFollowupIntentName, unittest.equals('foo'));
    checkUnnamed4941(o.trainingPhrases);
    unittest.expect(o.webhookState, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1Intent--;
}

buildUnnamed4942() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Intent>();
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  return o;
}

checkUnnamed4942(core.List<api.GoogleCloudDialogflowV2beta1Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Intent(o[0]);
  checkGoogleCloudDialogflowV2beta1Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentBatch = 0;
buildGoogleCloudDialogflowV2beta1IntentBatch() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentBatch();
  buildCounterGoogleCloudDialogflowV2beta1IntentBatch++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentBatch < 3) {
    o.intents = buildUnnamed4942();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentBatch--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentBatch(
    api.GoogleCloudDialogflowV2beta1IntentBatch o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentBatch++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentBatch < 3) {
    checkUnnamed4942(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentBatch--;
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

buildUnnamed4943() {
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

checkUnnamed4943(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted21 = (o["x"]) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(casted21["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted21["bool"], unittest.equals(true));
  unittest.expect(casted21["string"], unittest.equals('foo'));
  var casted22 = (o["y"]) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(casted22["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted22["bool"], unittest.equals(true));
  unittest.expect(casted22["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessage = 0;
buildGoogleCloudDialogflowV2beta1IntentMessage() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessage();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessage++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessage < 3) {
    o.basicCard = buildGoogleCloudDialogflowV2beta1IntentMessageBasicCard();
    o.card = buildGoogleCloudDialogflowV2beta1IntentMessageCard();
    o.carouselSelect =
        buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect();
    o.image = buildGoogleCloudDialogflowV2beta1IntentMessageImage();
    o.linkOutSuggestion =
        buildGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion();
    o.listSelect = buildGoogleCloudDialogflowV2beta1IntentMessageListSelect();
    o.payload = buildUnnamed4943();
    o.platform = "foo";
    o.quickReplies =
        buildGoogleCloudDialogflowV2beta1IntentMessageQuickReplies();
    o.simpleResponses =
        buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses();
    o.suggestions = buildGoogleCloudDialogflowV2beta1IntentMessageSuggestions();
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
    checkGoogleCloudDialogflowV2beta1IntentMessageCard(o.card);
    checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect(
        o.carouselSelect);
    checkGoogleCloudDialogflowV2beta1IntentMessageImage(o.image);
    checkGoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion(
        o.linkOutSuggestion);
    checkGoogleCloudDialogflowV2beta1IntentMessageListSelect(o.listSelect);
    checkUnnamed4943(o.payload);
    unittest.expect(o.platform, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1IntentMessageQuickReplies(o.quickReplies);
    checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses(
        o.simpleResponses);
    checkGoogleCloudDialogflowV2beta1IntentMessageSuggestions(o.suggestions);
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

buildUnnamed4944() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  return o;
}

checkUnnamed4944(
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
    o.buttons = buildUnnamed4944();
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
    checkUnnamed4944(o.buttons);
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

buildUnnamed4945() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1IntentMessageCardButton>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCardButton());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCardButton());
  return o;
}

checkUnnamed4945(
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
    o.buttons = buildUnnamed4945();
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
    checkUnnamed4945(o.buttons);
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

buildUnnamed4946() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem());
  return o;
}

checkUnnamed4946(
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
    o.items = buildUnnamed4946();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect(
    api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect < 3) {
    checkUnnamed4946(o.items);
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

buildUnnamed4947() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem());
  return o;
}

checkUnnamed4947(
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
    o.items = buildUnnamed4947();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageListSelect(
    api.GoogleCloudDialogflowV2beta1IntentMessageListSelect o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect < 3) {
    checkUnnamed4947(o.items);
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

buildUnnamed4948() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4948(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageQuickReplies() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies < 3) {
    o.quickReplies = buildUnnamed4948();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageQuickReplies(
    api.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies < 3) {
    checkUnnamed4948(o.quickReplies);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies--;
}

buildUnnamed4949() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4949(core.List<core.String> o) {
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
    o.synonyms = buildUnnamed4949();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo(
    api.GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed4949(o.synonyms);
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

buildUnnamed4950() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse());
  return o;
}

checkUnnamed4950(
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
    o.simpleResponses = buildUnnamed4950();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses(
    api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses <
      3) {
    checkUnnamed4950(o.simpleResponses);
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

buildUnnamed4951() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion());
  return o;
}

checkUnnamed4951(
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
    o.suggestions = buildUnnamed4951();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageSuggestions(
    api.GoogleCloudDialogflowV2beta1IntentMessageSuggestions o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions < 3) {
    checkUnnamed4951(o.suggestions);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions--;
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

buildUnnamed4952() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4952(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageText = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageText() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageText();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageText < 3) {
    o.text = buildUnnamed4952();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageText(
    api.GoogleCloudDialogflowV2beta1IntentMessageText o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageText < 3) {
    checkUnnamed4952(o.text);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText--;
}

buildUnnamed4953() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4953(core.List<core.String> o) {
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
    o.prompts = buildUnnamed4953();
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
    checkUnnamed4953(o.prompts);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentParameter--;
}

buildUnnamed4954() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart());
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart());
  return o;
}

checkUnnamed4954(
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
    o.parts = buildUnnamed4954();
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
    checkUnnamed4954(o.parts);
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

buildUnnamed4955() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer>();
  o.add(buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer());
  o.add(buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer());
  return o;
}

checkUnnamed4955(
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
    o.answers = buildUnnamed4955();
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers--;
  return o;
}

checkGoogleCloudDialogflowV2beta1KnowledgeAnswers(
    api.GoogleCloudDialogflowV2beta1KnowledgeAnswers o) {
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers < 3) {
    checkUnnamed4955(o.answers);
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

core.int buildCounterGoogleCloudDialogflowV2beta1KnowledgeBase = 0;
buildGoogleCloudDialogflowV2beta1KnowledgeBase() {
  var o = new api.GoogleCloudDialogflowV2beta1KnowledgeBase();
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeBase++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeBase < 3) {
    o.displayName = "foo";
    o.name = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeBase--;
  return o;
}

checkGoogleCloudDialogflowV2beta1KnowledgeBase(
    api.GoogleCloudDialogflowV2beta1KnowledgeBase o) {
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeBase++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeBase < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeBase--;
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

buildUnnamed4956() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Context>();
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

checkUnnamed4956(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(o[0]);
  checkGoogleCloudDialogflowV2beta1Context(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1ListContextsResponse = 0;
buildGoogleCloudDialogflowV2beta1ListContextsResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1ListContextsResponse();
  buildCounterGoogleCloudDialogflowV2beta1ListContextsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListContextsResponse < 3) {
    o.contexts = buildUnnamed4956();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1ListContextsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1ListContextsResponse(
    api.GoogleCloudDialogflowV2beta1ListContextsResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1ListContextsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListContextsResponse < 3) {
    checkUnnamed4956(o.contexts);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1ListContextsResponse--;
}

buildUnnamed4957() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Document>();
  o.add(buildGoogleCloudDialogflowV2beta1Document());
  o.add(buildGoogleCloudDialogflowV2beta1Document());
  return o;
}

checkUnnamed4957(core.List<api.GoogleCloudDialogflowV2beta1Document> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Document(o[0]);
  checkGoogleCloudDialogflowV2beta1Document(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1ListDocumentsResponse = 0;
buildGoogleCloudDialogflowV2beta1ListDocumentsResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1ListDocumentsResponse();
  buildCounterGoogleCloudDialogflowV2beta1ListDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListDocumentsResponse < 3) {
    o.documents = buildUnnamed4957();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1ListDocumentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1ListDocumentsResponse(
    api.GoogleCloudDialogflowV2beta1ListDocumentsResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1ListDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListDocumentsResponse < 3) {
    checkUnnamed4957(o.documents);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1ListDocumentsResponse--;
}

buildUnnamed4958() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1EntityType>();
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  return o;
}

checkUnnamed4958(core.List<api.GoogleCloudDialogflowV2beta1EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1EntityType(o[0]);
  checkGoogleCloudDialogflowV2beta1EntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1ListEntityTypesResponse = 0;
buildGoogleCloudDialogflowV2beta1ListEntityTypesResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1ListEntityTypesResponse();
  buildCounterGoogleCloudDialogflowV2beta1ListEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListEntityTypesResponse < 3) {
    o.entityTypes = buildUnnamed4958();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1ListEntityTypesResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1ListEntityTypesResponse(
    api.GoogleCloudDialogflowV2beta1ListEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1ListEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListEntityTypesResponse < 3) {
    checkUnnamed4958(o.entityTypes);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1ListEntityTypesResponse--;
}

buildUnnamed4959() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Intent>();
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  return o;
}

checkUnnamed4959(core.List<api.GoogleCloudDialogflowV2beta1Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Intent(o[0]);
  checkGoogleCloudDialogflowV2beta1Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1ListIntentsResponse = 0;
buildGoogleCloudDialogflowV2beta1ListIntentsResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1ListIntentsResponse();
  buildCounterGoogleCloudDialogflowV2beta1ListIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListIntentsResponse < 3) {
    o.intents = buildUnnamed4959();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1ListIntentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1ListIntentsResponse(
    api.GoogleCloudDialogflowV2beta1ListIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1ListIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListIntentsResponse < 3) {
    checkUnnamed4959(o.intents);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1ListIntentsResponse--;
}

buildUnnamed4960() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1KnowledgeBase>();
  o.add(buildGoogleCloudDialogflowV2beta1KnowledgeBase());
  o.add(buildGoogleCloudDialogflowV2beta1KnowledgeBase());
  return o;
}

checkUnnamed4960(core.List<api.GoogleCloudDialogflowV2beta1KnowledgeBase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1KnowledgeBase(o[0]);
  checkGoogleCloudDialogflowV2beta1KnowledgeBase(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse = 0;
buildGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse();
  buildCounterGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse < 3) {
    o.knowledgeBases = buildUnnamed4960();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse(
    api.GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse < 3) {
    checkUnnamed4960(o.knowledgeBases);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse--;
}

buildUnnamed4961() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1SessionEntityType>();
  o.add(buildGoogleCloudDialogflowV2beta1SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2beta1SessionEntityType());
  return o;
}

checkUnnamed4961(
    core.List<api.GoogleCloudDialogflowV2beta1SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1SessionEntityType(o[0]);
  checkGoogleCloudDialogflowV2beta1SessionEntityType(o[1]);
}

core.int
    buildCounterGoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse = 0;
buildGoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse();
  buildCounterGoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse <
      3) {
    o.nextPageToken = "foo";
    o.sessionEntityTypes = buildUnnamed4961();
  }
  buildCounterGoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse(
    api.GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse <
      3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4961(o.sessionEntityTypes);
  }
  buildCounterGoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse--;
}

buildUnnamed4962() {
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

checkUnnamed4962(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted23 = (o["x"]) as core.Map;
  unittest.expect(casted23, unittest.hasLength(3));
  unittest.expect(casted23["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted23["bool"], unittest.equals(true));
  unittest.expect(casted23["string"], unittest.equals('foo'));
  var casted24 = (o["y"]) as core.Map;
  unittest.expect(casted24, unittest.hasLength(3));
  unittest.expect(casted24["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted24["bool"], unittest.equals(true));
  unittest.expect(casted24["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest =
    0;
buildGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest();
  buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest < 3) {
    o.payload = buildUnnamed4962();
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
    checkUnnamed4962(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1OutputAudioConfig = 0;
buildGoogleCloudDialogflowV2beta1OutputAudioConfig() {
  var o = new api.GoogleCloudDialogflowV2beta1OutputAudioConfig();
  buildCounterGoogleCloudDialogflowV2beta1OutputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowV2beta1OutputAudioConfig < 3) {
    o.audioEncoding = "foo";
    o.sampleRateHertz = 42;
    o.synthesizeSpeechConfig =
        buildGoogleCloudDialogflowV2beta1SynthesizeSpeechConfig();
  }
  buildCounterGoogleCloudDialogflowV2beta1OutputAudioConfig--;
  return o;
}

checkGoogleCloudDialogflowV2beta1OutputAudioConfig(
    api.GoogleCloudDialogflowV2beta1OutputAudioConfig o) {
  buildCounterGoogleCloudDialogflowV2beta1OutputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowV2beta1OutputAudioConfig < 3) {
    unittest.expect(o.audioEncoding, unittest.equals('foo'));
    unittest.expect(o.sampleRateHertz, unittest.equals(42));
    checkGoogleCloudDialogflowV2beta1SynthesizeSpeechConfig(
        o.synthesizeSpeechConfig);
  }
  buildCounterGoogleCloudDialogflowV2beta1OutputAudioConfig--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1QueryInput = 0;
buildGoogleCloudDialogflowV2beta1QueryInput() {
  var o = new api.GoogleCloudDialogflowV2beta1QueryInput();
  buildCounterGoogleCloudDialogflowV2beta1QueryInput++;
  if (buildCounterGoogleCloudDialogflowV2beta1QueryInput < 3) {
    o.audioConfig = buildGoogleCloudDialogflowV2beta1InputAudioConfig();
    o.event = buildGoogleCloudDialogflowV2beta1EventInput();
    o.text = buildGoogleCloudDialogflowV2beta1TextInput();
  }
  buildCounterGoogleCloudDialogflowV2beta1QueryInput--;
  return o;
}

checkGoogleCloudDialogflowV2beta1QueryInput(
    api.GoogleCloudDialogflowV2beta1QueryInput o) {
  buildCounterGoogleCloudDialogflowV2beta1QueryInput++;
  if (buildCounterGoogleCloudDialogflowV2beta1QueryInput < 3) {
    checkGoogleCloudDialogflowV2beta1InputAudioConfig(o.audioConfig);
    checkGoogleCloudDialogflowV2beta1EventInput(o.event);
    checkGoogleCloudDialogflowV2beta1TextInput(o.text);
  }
  buildCounterGoogleCloudDialogflowV2beta1QueryInput--;
}

buildUnnamed4963() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Context>();
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

checkUnnamed4963(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(o[0]);
  checkGoogleCloudDialogflowV2beta1Context(o[1]);
}

buildUnnamed4964() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4964(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4965() {
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

checkUnnamed4965(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted25 = (o["x"]) as core.Map;
  unittest.expect(casted25, unittest.hasLength(3));
  unittest.expect(casted25["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted25["bool"], unittest.equals(true));
  unittest.expect(casted25["string"], unittest.equals('foo'));
  var casted26 = (o["y"]) as core.Map;
  unittest.expect(casted26, unittest.hasLength(3));
  unittest.expect(casted26["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted26["bool"], unittest.equals(true));
  unittest.expect(casted26["string"], unittest.equals('foo'));
}

buildUnnamed4966() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1SessionEntityType>();
  o.add(buildGoogleCloudDialogflowV2beta1SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2beta1SessionEntityType());
  return o;
}

checkUnnamed4966(
    core.List<api.GoogleCloudDialogflowV2beta1SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1SessionEntityType(o[0]);
  checkGoogleCloudDialogflowV2beta1SessionEntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1QueryParameters = 0;
buildGoogleCloudDialogflowV2beta1QueryParameters() {
  var o = new api.GoogleCloudDialogflowV2beta1QueryParameters();
  buildCounterGoogleCloudDialogflowV2beta1QueryParameters++;
  if (buildCounterGoogleCloudDialogflowV2beta1QueryParameters < 3) {
    o.contexts = buildUnnamed4963();
    o.geoLocation = buildGoogleTypeLatLng();
    o.knowledgeBaseNames = buildUnnamed4964();
    o.payload = buildUnnamed4965();
    o.resetContexts = true;
    o.sentimentAnalysisRequestConfig =
        buildGoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig();
    o.sessionEntityTypes = buildUnnamed4966();
    o.timeZone = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1QueryParameters--;
  return o;
}

checkGoogleCloudDialogflowV2beta1QueryParameters(
    api.GoogleCloudDialogflowV2beta1QueryParameters o) {
  buildCounterGoogleCloudDialogflowV2beta1QueryParameters++;
  if (buildCounterGoogleCloudDialogflowV2beta1QueryParameters < 3) {
    checkUnnamed4963(o.contexts);
    checkGoogleTypeLatLng(o.geoLocation);
    checkUnnamed4964(o.knowledgeBaseNames);
    checkUnnamed4965(o.payload);
    unittest.expect(o.resetContexts, unittest.isTrue);
    checkGoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig(
        o.sentimentAnalysisRequestConfig);
    checkUnnamed4966(o.sessionEntityTypes);
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1QueryParameters--;
}

buildUnnamed4967() {
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

checkUnnamed4967(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted27 = (o["x"]) as core.Map;
  unittest.expect(casted27, unittest.hasLength(3));
  unittest.expect(casted27["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted27["bool"], unittest.equals(true));
  unittest.expect(casted27["string"], unittest.equals('foo'));
  var casted28 = (o["y"]) as core.Map;
  unittest.expect(casted28, unittest.hasLength(3));
  unittest.expect(casted28["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted28["bool"], unittest.equals(true));
  unittest.expect(casted28["string"], unittest.equals('foo'));
}

buildUnnamed4968() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

checkUnnamed4968(core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[1]);
}

buildUnnamed4969() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Context>();
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

checkUnnamed4969(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(o[0]);
  checkGoogleCloudDialogflowV2beta1Context(o[1]);
}

buildUnnamed4970() {
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

checkUnnamed4970(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted29 = (o["x"]) as core.Map;
  unittest.expect(casted29, unittest.hasLength(3));
  unittest.expect(casted29["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted29["bool"], unittest.equals(true));
  unittest.expect(casted29["string"], unittest.equals('foo'));
  var casted30 = (o["y"]) as core.Map;
  unittest.expect(casted30, unittest.hasLength(3));
  unittest.expect(casted30["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted30["bool"], unittest.equals(true));
  unittest.expect(casted30["string"], unittest.equals('foo'));
}

buildUnnamed4971() {
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

checkUnnamed4971(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted31 = (o["x"]) as core.Map;
  unittest.expect(casted31, unittest.hasLength(3));
  unittest.expect(casted31["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted31["bool"], unittest.equals(true));
  unittest.expect(casted31["string"], unittest.equals('foo'));
  var casted32 = (o["y"]) as core.Map;
  unittest.expect(casted32, unittest.hasLength(3));
  unittest.expect(casted32["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted32["bool"], unittest.equals(true));
  unittest.expect(casted32["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1QueryResult = 0;
buildGoogleCloudDialogflowV2beta1QueryResult() {
  var o = new api.GoogleCloudDialogflowV2beta1QueryResult();
  buildCounterGoogleCloudDialogflowV2beta1QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2beta1QueryResult < 3) {
    o.action = "foo";
    o.allRequiredParamsPresent = true;
    o.diagnosticInfo = buildUnnamed4967();
    o.fulfillmentMessages = buildUnnamed4968();
    o.fulfillmentText = "foo";
    o.intent = buildGoogleCloudDialogflowV2beta1Intent();
    o.intentDetectionConfidence = 42.0;
    o.knowledgeAnswers = buildGoogleCloudDialogflowV2beta1KnowledgeAnswers();
    o.languageCode = "foo";
    o.outputContexts = buildUnnamed4969();
    o.parameters = buildUnnamed4970();
    o.queryText = "foo";
    o.sentimentAnalysisResult =
        buildGoogleCloudDialogflowV2beta1SentimentAnalysisResult();
    o.speechRecognitionConfidence = 42.0;
    o.webhookPayload = buildUnnamed4971();
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
    checkUnnamed4967(o.diagnosticInfo);
    checkUnnamed4968(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1Intent(o.intent);
    unittest.expect(o.intentDetectionConfidence, unittest.equals(42.0));
    checkGoogleCloudDialogflowV2beta1KnowledgeAnswers(o.knowledgeAnswers);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed4969(o.outputContexts);
    checkUnnamed4970(o.parameters);
    unittest.expect(o.queryText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1SentimentAnalysisResult(
        o.sentimentAnalysisResult);
    unittest.expect(o.speechRecognitionConfidence, unittest.equals(42.0));
    checkUnnamed4971(o.webhookPayload);
    unittest.expect(o.webhookSource, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1QueryResult--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1ReloadDocumentRequest = 0;
buildGoogleCloudDialogflowV2beta1ReloadDocumentRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1ReloadDocumentRequest();
  buildCounterGoogleCloudDialogflowV2beta1ReloadDocumentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1ReloadDocumentRequest < 3) {}
  buildCounterGoogleCloudDialogflowV2beta1ReloadDocumentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1ReloadDocumentRequest(
    api.GoogleCloudDialogflowV2beta1ReloadDocumentRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1ReloadDocumentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1ReloadDocumentRequest < 3) {}
  buildCounterGoogleCloudDialogflowV2beta1ReloadDocumentRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1RestoreAgentRequest = 0;
buildGoogleCloudDialogflowV2beta1RestoreAgentRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1RestoreAgentRequest();
  buildCounterGoogleCloudDialogflowV2beta1RestoreAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1RestoreAgentRequest < 3) {
    o.agentContent = "foo";
    o.agentUri = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1RestoreAgentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1RestoreAgentRequest(
    api.GoogleCloudDialogflowV2beta1RestoreAgentRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1RestoreAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1RestoreAgentRequest < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1RestoreAgentRequest--;
}

buildUnnamed4972() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Agent>();
  o.add(buildGoogleCloudDialogflowV2beta1Agent());
  o.add(buildGoogleCloudDialogflowV2beta1Agent());
  return o;
}

checkUnnamed4972(core.List<api.GoogleCloudDialogflowV2beta1Agent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Agent(o[0]);
  checkGoogleCloudDialogflowV2beta1Agent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1SearchAgentsResponse = 0;
buildGoogleCloudDialogflowV2beta1SearchAgentsResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1SearchAgentsResponse();
  buildCounterGoogleCloudDialogflowV2beta1SearchAgentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1SearchAgentsResponse < 3) {
    o.agents = buildUnnamed4972();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1SearchAgentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1SearchAgentsResponse(
    api.GoogleCloudDialogflowV2beta1SearchAgentsResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1SearchAgentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1SearchAgentsResponse < 3) {
    checkUnnamed4972(o.agents);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1SearchAgentsResponse--;
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

core.int
    buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig = 0;
buildGoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig() {
  var o = new api.GoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig();
  buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig++;
  if (buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig <
      3) {
    o.analyzeQueryTextSentiment = true;
  }
  buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig--;
  return o;
}

checkGoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig(
    api.GoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig o) {
  buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig++;
  if (buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig <
      3) {
    unittest.expect(o.analyzeQueryTextSentiment, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig--;
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

buildUnnamed4973() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  return o;
}

checkUnnamed4973(
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
    o.entities = buildUnnamed4973();
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
    checkUnnamed4973(o.entities);
    unittest.expect(o.entityOverrideMode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1SessionEntityType--;
}

buildUnnamed4974() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4974(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1SynthesizeSpeechConfig = 0;
buildGoogleCloudDialogflowV2beta1SynthesizeSpeechConfig() {
  var o = new api.GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig();
  buildCounterGoogleCloudDialogflowV2beta1SynthesizeSpeechConfig++;
  if (buildCounterGoogleCloudDialogflowV2beta1SynthesizeSpeechConfig < 3) {
    o.effectsProfileId = buildUnnamed4974();
    o.pitch = 42.0;
    o.speakingRate = 42.0;
    o.voice = buildGoogleCloudDialogflowV2beta1VoiceSelectionParams();
    o.volumeGainDb = 42.0;
  }
  buildCounterGoogleCloudDialogflowV2beta1SynthesizeSpeechConfig--;
  return o;
}

checkGoogleCloudDialogflowV2beta1SynthesizeSpeechConfig(
    api.GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig o) {
  buildCounterGoogleCloudDialogflowV2beta1SynthesizeSpeechConfig++;
  if (buildCounterGoogleCloudDialogflowV2beta1SynthesizeSpeechConfig < 3) {
    checkUnnamed4974(o.effectsProfileId);
    unittest.expect(o.pitch, unittest.equals(42.0));
    unittest.expect(o.speakingRate, unittest.equals(42.0));
    checkGoogleCloudDialogflowV2beta1VoiceSelectionParams(o.voice);
    unittest.expect(o.volumeGainDb, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDialogflowV2beta1SynthesizeSpeechConfig--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1TextInput = 0;
buildGoogleCloudDialogflowV2beta1TextInput() {
  var o = new api.GoogleCloudDialogflowV2beta1TextInput();
  buildCounterGoogleCloudDialogflowV2beta1TextInput++;
  if (buildCounterGoogleCloudDialogflowV2beta1TextInput < 3) {
    o.languageCode = "foo";
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1TextInput--;
  return o;
}

checkGoogleCloudDialogflowV2beta1TextInput(
    api.GoogleCloudDialogflowV2beta1TextInput o) {
  buildCounterGoogleCloudDialogflowV2beta1TextInput++;
  if (buildCounterGoogleCloudDialogflowV2beta1TextInput < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1TextInput--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1TrainAgentRequest = 0;
buildGoogleCloudDialogflowV2beta1TrainAgentRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1TrainAgentRequest();
  buildCounterGoogleCloudDialogflowV2beta1TrainAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1TrainAgentRequest < 3) {}
  buildCounterGoogleCloudDialogflowV2beta1TrainAgentRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1TrainAgentRequest(
    api.GoogleCloudDialogflowV2beta1TrainAgentRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1TrainAgentRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1TrainAgentRequest < 3) {}
  buildCounterGoogleCloudDialogflowV2beta1TrainAgentRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2beta1VoiceSelectionParams = 0;
buildGoogleCloudDialogflowV2beta1VoiceSelectionParams() {
  var o = new api.GoogleCloudDialogflowV2beta1VoiceSelectionParams();
  buildCounterGoogleCloudDialogflowV2beta1VoiceSelectionParams++;
  if (buildCounterGoogleCloudDialogflowV2beta1VoiceSelectionParams < 3) {
    o.name = "foo";
    o.ssmlGender = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1VoiceSelectionParams--;
  return o;
}

checkGoogleCloudDialogflowV2beta1VoiceSelectionParams(
    api.GoogleCloudDialogflowV2beta1VoiceSelectionParams o) {
  buildCounterGoogleCloudDialogflowV2beta1VoiceSelectionParams++;
  if (buildCounterGoogleCloudDialogflowV2beta1VoiceSelectionParams < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.ssmlGender, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1VoiceSelectionParams--;
}

buildUnnamed4975() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1QueryResult>();
  o.add(buildGoogleCloudDialogflowV2beta1QueryResult());
  o.add(buildGoogleCloudDialogflowV2beta1QueryResult());
  return o;
}

checkUnnamed4975(core.List<api.GoogleCloudDialogflowV2beta1QueryResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1QueryResult(o[0]);
  checkGoogleCloudDialogflowV2beta1QueryResult(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1WebhookRequest = 0;
buildGoogleCloudDialogflowV2beta1WebhookRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1WebhookRequest();
  buildCounterGoogleCloudDialogflowV2beta1WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1WebhookRequest < 3) {
    o.alternativeQueryResults = buildUnnamed4975();
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
    checkUnnamed4975(o.alternativeQueryResults);
    checkGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest(
        o.originalDetectIntentRequest);
    checkGoogleCloudDialogflowV2beta1QueryResult(o.queryResult);
    unittest.expect(o.responseId, unittest.equals('foo'));
    unittest.expect(o.session, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1WebhookRequest--;
}

buildUnnamed4976() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

checkUnnamed4976(core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[1]);
}

buildUnnamed4977() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Context>();
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

checkUnnamed4977(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(o[0]);
  checkGoogleCloudDialogflowV2beta1Context(o[1]);
}

buildUnnamed4978() {
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

checkUnnamed4978(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted33 = (o["x"]) as core.Map;
  unittest.expect(casted33, unittest.hasLength(3));
  unittest.expect(casted33["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted33["bool"], unittest.equals(true));
  unittest.expect(casted33["string"], unittest.equals('foo'));
  var casted34 = (o["y"]) as core.Map;
  unittest.expect(casted34, unittest.hasLength(3));
  unittest.expect(casted34["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted34["bool"], unittest.equals(true));
  unittest.expect(casted34["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1WebhookResponse = 0;
buildGoogleCloudDialogflowV2beta1WebhookResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1WebhookResponse();
  buildCounterGoogleCloudDialogflowV2beta1WebhookResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1WebhookResponse < 3) {
    o.endInteraction = true;
    o.followupEventInput = buildGoogleCloudDialogflowV2beta1EventInput();
    o.fulfillmentMessages = buildUnnamed4976();
    o.fulfillmentText = "foo";
    o.outputContexts = buildUnnamed4977();
    o.payload = buildUnnamed4978();
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
    checkUnnamed4976(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkUnnamed4977(o.outputContexts);
    checkUnnamed4978(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1WebhookResponse--;
}

buildUnnamed4979() {
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

checkUnnamed4979(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted35 = (o["x"]) as core.Map;
  unittest.expect(casted35, unittest.hasLength(3));
  unittest.expect(casted35["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted35["bool"], unittest.equals(true));
  unittest.expect(casted35["string"], unittest.equals('foo'));
  var casted36 = (o["y"]) as core.Map;
  unittest.expect(casted36, unittest.hasLength(3));
  unittest.expect(casted36["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted36["bool"], unittest.equals(true));
  unittest.expect(casted36["string"], unittest.equals('foo'));
}

buildUnnamed4980() {
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

checkUnnamed4980(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted37 = (o["x"]) as core.Map;
  unittest.expect(casted37, unittest.hasLength(3));
  unittest.expect(casted37["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted37["bool"], unittest.equals(true));
  unittest.expect(casted37["string"], unittest.equals('foo'));
  var casted38 = (o["y"]) as core.Map;
  unittest.expect(casted38, unittest.hasLength(3));
  unittest.expect(casted38["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted38["bool"], unittest.equals(true));
  unittest.expect(casted38["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
buildGoogleLongrunningOperation() {
  var o = new api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed4979();
    o.name = "foo";
    o.response = buildUnnamed4980();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error);
    checkUnnamed4979(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4980(o.response);
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

buildUnnamed4981() {
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

checkUnnamed4981(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted39 = (o["x"]) as core.Map;
  unittest.expect(casted39, unittest.hasLength(3));
  unittest.expect(casted39["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted39["bool"], unittest.equals(true));
  unittest.expect(casted39["string"], unittest.equals('foo'));
  var casted40 = (o["y"]) as core.Map;
  unittest.expect(casted40, unittest.hasLength(3));
  unittest.expect(casted40["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted40["bool"], unittest.equals(true));
  unittest.expect(casted40["string"], unittest.equals('foo'));
}

buildUnnamed4982() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed4981());
  o.add(buildUnnamed4981());
  return o;
}

checkUnnamed4982(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4981(o[0]);
  checkUnnamed4981(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
buildGoogleRpcStatus() {
  var o = new api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4982();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4982(o.details);
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
      "obj-schema-GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse();
      var od = new api
              .GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse(od);
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

  unittest.group("obj-schema-GoogleCloudDialogflowV2EntityType", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2EntityType();
      var od = new api.GoogleCloudDialogflowV2EntityType.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2EntityType(od);
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

  unittest.group("obj-schema-GoogleCloudDialogflowV2EventInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2EventInput();
      var od = new api.GoogleCloudDialogflowV2EventInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2EventInput(od);
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

  unittest.group("obj-schema-GoogleCloudDialogflowV2Intent", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2Intent();
      var od = new api.GoogleCloudDialogflowV2Intent.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Intent(od);
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

  unittest.group("obj-schema-GoogleCloudDialogflowV2QueryResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2QueryResult();
      var od = new api.GoogleCloudDialogflowV2QueryResult.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2QueryResult(od);
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

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1Agent", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1Agent();
      var od = new api.GoogleCloudDialogflowV2beta1Agent.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1Agent(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest();
      var od = new api
              .GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest();
      var od = new api
              .GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest();
      var od = new api
              .GoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest();
      var od = new api
              .GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest();
      var od = new api
              .GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest();
      var od = new api
              .GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest(od);
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
      "obj-schema-GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest();
      var od = new api
              .GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest(od);
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

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1Context", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1Context();
      var od = new api.GoogleCloudDialogflowV2beta1Context.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1Context(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1DetectIntentRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1DetectIntentRequest();
      var od = new api.GoogleCloudDialogflowV2beta1DetectIntentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1DetectIntentRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1DetectIntentResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1DetectIntentResponse();
      var od =
          new api.GoogleCloudDialogflowV2beta1DetectIntentResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1DetectIntentResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1Document", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1Document();
      var od =
          new api.GoogleCloudDialogflowV2beta1Document.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1Document(od);
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

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1EntityTypeBatch", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1EntityTypeBatch();
      var od = new api.GoogleCloudDialogflowV2beta1EntityTypeBatch.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1EntityTypeBatch(od);
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

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1ExportAgentRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1ExportAgentRequest();
      var od = new api.GoogleCloudDialogflowV2beta1ExportAgentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1ExportAgentRequest(od);
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

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1ImportAgentRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1ImportAgentRequest();
      var od = new api.GoogleCloudDialogflowV2beta1ImportAgentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1ImportAgentRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1InputAudioConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1InputAudioConfig();
      var od = new api.GoogleCloudDialogflowV2beta1InputAudioConfig.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1InputAudioConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1Intent", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1Intent();
      var od = new api.GoogleCloudDialogflowV2beta1Intent.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1Intent(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1IntentBatch", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1IntentBatch();
      var od =
          new api.GoogleCloudDialogflowV2beta1IntentBatch.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1IntentBatch(od);
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

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1KnowledgeBase", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1KnowledgeBase();
      var od = new api.GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1KnowledgeBase(od);
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

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1ListContextsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1ListContextsResponse();
      var od =
          new api.GoogleCloudDialogflowV2beta1ListContextsResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1ListContextsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1ListDocumentsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1ListDocumentsResponse();
      var od =
          new api.GoogleCloudDialogflowV2beta1ListDocumentsResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1ListDocumentsResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1ListEntityTypesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1ListEntityTypesResponse();
      var od =
          new api.GoogleCloudDialogflowV2beta1ListEntityTypesResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1ListEntityTypesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1ListIntentsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1ListIntentsResponse();
      var od = new api.GoogleCloudDialogflowV2beta1ListIntentsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1ListIntentsResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse();
      var od = new api
              .GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse();
      var od = new api
              .GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse(od);
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

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1OutputAudioConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1OutputAudioConfig();
      var od = new api.GoogleCloudDialogflowV2beta1OutputAudioConfig.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1OutputAudioConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1QueryInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1QueryInput();
      var od =
          new api.GoogleCloudDialogflowV2beta1QueryInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1QueryInput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1QueryParameters", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1QueryParameters();
      var od = new api.GoogleCloudDialogflowV2beta1QueryParameters.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1QueryParameters(od);
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

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1ReloadDocumentRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1ReloadDocumentRequest();
      var od =
          new api.GoogleCloudDialogflowV2beta1ReloadDocumentRequest.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1ReloadDocumentRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1RestoreAgentRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1RestoreAgentRequest();
      var od = new api.GoogleCloudDialogflowV2beta1RestoreAgentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1RestoreAgentRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1SearchAgentsResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1SearchAgentsResponse();
      var od =
          new api.GoogleCloudDialogflowV2beta1SearchAgentsResponse.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1SearchAgentsResponse(od);
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
      "obj-schema-GoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig();
      var od = new api
              .GoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig(od);
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

  unittest.group(
      "obj-schema-GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1SynthesizeSpeechConfig();
      var od =
          new api.GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1SynthesizeSpeechConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1TextInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1TextInput();
      var od =
          new api.GoogleCloudDialogflowV2beta1TextInput.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2beta1TextInput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1TrainAgentRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1TrainAgentRequest();
      var od = new api.GoogleCloudDialogflowV2beta1TrainAgentRequest.fromJson(
          o.toJson());
      checkGoogleCloudDialogflowV2beta1TrainAgentRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudDialogflowV2beta1VoiceSelectionParams",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2beta1VoiceSelectionParams();
      var od =
          new api.GoogleCloudDialogflowV2beta1VoiceSelectionParams.fromJson(
              o.toJson());
      checkGoogleCloudDialogflowV2beta1VoiceSelectionParams(od);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2beta1Agent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAgent(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1Agent(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentResourceApi", () {
    unittest.test("method--export", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent;
      var arg_request = buildGoogleCloudDialogflowV2beta1ExportAgentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2beta1ExportAgentRequest.fromJson(
                json);
        checkGoogleCloudDialogflowV2beta1ExportAgentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .export(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--import", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent;
      var arg_request = buildGoogleCloudDialogflowV2beta1ImportAgentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2beta1ImportAgentRequest.fromJson(
                json);
        checkGoogleCloudDialogflowV2beta1ImportAgentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
      var arg_request = buildGoogleCloudDialogflowV2beta1RestoreAgentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2beta1RestoreAgentRequest.fromJson(
                json);
        checkGoogleCloudDialogflowV2beta1RestoreAgentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1SearchAgentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1SearchAgentsResponse(response);
      })));
    });

    unittest.test("method--train", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent;
      var arg_request = buildGoogleCloudDialogflowV2beta1TrainAgentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2beta1TrainAgentRequest.fromJson(
                json);
        checkGoogleCloudDialogflowV2beta1TrainAgentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .train(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentEntityTypesResourceApi", () {
    unittest.test("method--batchDelete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes;
      var arg_request =
          buildGoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest.fromJson(
            json);
        checkGoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
          buildGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest.fromJson(
            json);
        checkGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
      var arg_request = buildGoogleCloudDialogflowV2beta1EntityType();
      var arg_parent = "foo";
      var arg_languageCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2beta1EntityType.fromJson(json);
        checkGoogleCloudDialogflowV2beta1EntityType(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2beta1EntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1EntityType(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2beta1EntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1EntityType(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes;
      var arg_parent = "foo";
      var arg_languageCode = "foo";
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
            unittest.equals("v2beta1/"));
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1ListEntityTypesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              languageCode: arg_languageCode,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1ListEntityTypesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes;
      var arg_request = buildGoogleCloudDialogflowV2beta1EntityType();
      var arg_name = "foo";
      var arg_languageCode = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2beta1EntityType.fromJson(json);
        checkGoogleCloudDialogflowV2beta1EntityType(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2beta1EntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              languageCode: arg_languageCode,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1EntityType(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentEntityTypesEntitiesResourceApi", () {
    unittest.test("method--batchCreate", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesEntitiesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes.entities;
      var arg_request =
          buildGoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest.fromJson(
            json);
        checkGoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
          buildGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest.fromJson(
            json);
        checkGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
          buildGoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest.fromJson(
            json);
        checkGoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
      var arg_request = buildGoogleCloudDialogflowV2beta1DetectIntentRequest();
      var arg_session = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2beta1DetectIntentRequest.fromJson(
                json);
        checkGoogleCloudDialogflowV2beta1DetectIntentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1DetectIntentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .detectIntent(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1DetectIntentResponse(response);
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
      var arg_request = buildGoogleCloudDialogflowV2beta1Context();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2beta1Context.fromJson(json);
        checkGoogleCloudDialogflowV2beta1Context(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2beta1Context());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1Context(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2beta1Context());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1Context(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1ListContextsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1ListContextsResponse(response);
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
      var arg_request = buildGoogleCloudDialogflowV2beta1Context();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2beta1Context.fromJson(json);
        checkGoogleCloudDialogflowV2beta1Context(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2beta1Context());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1Context(response);
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
      var arg_request = buildGoogleCloudDialogflowV2beta1SessionEntityType();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
                json);
        checkGoogleCloudDialogflowV2beta1SessionEntityType(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1SessionEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1SessionEntityType(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1SessionEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1SessionEntityType(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse(
            response);
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
      var arg_request = buildGoogleCloudDialogflowV2beta1SessionEntityType();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
                json);
        checkGoogleCloudDialogflowV2beta1SessionEntityType(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1SessionEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1SessionEntityType(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentIntentsResourceApi", () {
    unittest.test("method--batchDelete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.intents;
      var arg_request =
          buildGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest.fromJson(
            json);
        checkGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
      var arg_request =
          buildGoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest.fromJson(
            json);
        checkGoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
      var arg_request = buildGoogleCloudDialogflowV2beta1Intent();
      var arg_parent = "foo";
      var arg_intentView = "foo";
      var arg_languageCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2beta1Intent.fromJson(json);
        checkGoogleCloudDialogflowV2beta1Intent(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
            queryMap["intentView"].first, unittest.equals(arg_intentView));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2beta1Intent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              intentView: arg_intentView,
              languageCode: arg_languageCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1Intent(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
            queryMap["intentView"].first, unittest.equals(arg_intentView));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2beta1Intent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              intentView: arg_intentView,
              languageCode: arg_languageCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1Intent(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.intents;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_intentView = "foo";
      var arg_languageCode = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["intentView"].first, unittest.equals(arg_intentView));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1ListIntentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              intentView: arg_intentView,
              languageCode: arg_languageCode,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1ListIntentsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.intents;
      var arg_request = buildGoogleCloudDialogflowV2beta1Intent();
      var arg_name = "foo";
      var arg_intentView = "foo";
      var arg_languageCode = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2beta1Intent.fromJson(json);
        checkGoogleCloudDialogflowV2beta1Intent(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
            queryMap["intentView"].first, unittest.equals(arg_intentView));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2beta1Intent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              intentView: arg_intentView,
              languageCode: arg_languageCode,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1Intent(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentKnowledgeBasesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentKnowledgeBasesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.knowledgeBases;
      var arg_request = buildGoogleCloudDialogflowV2beta1KnowledgeBase();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(json);
        checkGoogleCloudDialogflowV2beta1KnowledgeBase(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1KnowledgeBase());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1KnowledgeBase(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentKnowledgeBasesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.knowledgeBases;
      var arg_name = "foo";
      var arg_force = true;
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
            unittest.equals("v2beta1/"));
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
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, force: arg_force, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentKnowledgeBasesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.knowledgeBases;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1KnowledgeBase());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1KnowledgeBase(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentKnowledgeBasesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.knowledgeBases;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json.encode(
            buildGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentKnowledgeBasesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.knowledgeBases;
      var arg_request = buildGoogleCloudDialogflowV2beta1KnowledgeBase();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(json);
        checkGoogleCloudDialogflowV2beta1KnowledgeBase(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1KnowledgeBase());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1KnowledgeBase(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentKnowledgeBasesDocumentsResourceApi",
      () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentKnowledgeBasesDocumentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.knowledgeBases.documents;
      var arg_request = buildGoogleCloudDialogflowV2beta1Document();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2beta1Document.fromJson(json);
        checkGoogleCloudDialogflowV2beta1Document(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentKnowledgeBasesDocumentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.knowledgeBases.documents;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentKnowledgeBasesDocumentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.knowledgeBases.documents;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2beta1Document());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1Document(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentKnowledgeBasesDocumentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.knowledgeBases.documents;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1ListDocumentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1ListDocumentsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentKnowledgeBasesDocumentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.knowledgeBases.documents;
      var arg_request = buildGoogleCloudDialogflowV2beta1Document();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2beta1Document.fromJson(json);
        checkGoogleCloudDialogflowV2beta1Document(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--reload", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentKnowledgeBasesDocumentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.knowledgeBases.documents;
      var arg_request =
          buildGoogleCloudDialogflowV2beta1ReloadDocumentRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2beta1ReloadDocumentRequest.fromJson(
                json);
        checkGoogleCloudDialogflowV2beta1ReloadDocumentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reload(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
      var arg_request = buildGoogleCloudDialogflowV2beta1DetectIntentRequest();
      var arg_session = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2beta1DetectIntentRequest.fromJson(
                json);
        checkGoogleCloudDialogflowV2beta1DetectIntentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1DetectIntentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .detectIntent(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1DetectIntentResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentSessionsContextsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsContextsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.contexts;
      var arg_request = buildGoogleCloudDialogflowV2beta1Context();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2beta1Context.fromJson(json);
        checkGoogleCloudDialogflowV2beta1Context(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2beta1Context());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1Context(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2beta1Context());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1Context(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsContextsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.contexts;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1ListContextsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1ListContextsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsContextsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.contexts;
      var arg_request = buildGoogleCloudDialogflowV2beta1Context();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2beta1Context.fromJson(json);
        checkGoogleCloudDialogflowV2beta1Context(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2beta1Context());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1Context(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentSessionsEntityTypesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
      var arg_request = buildGoogleCloudDialogflowV2beta1SessionEntityType();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
                json);
        checkGoogleCloudDialogflowV2beta1SessionEntityType(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1SessionEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1SessionEntityType(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1SessionEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1SessionEntityType(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse(
            response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
      var arg_request = buildGoogleCloudDialogflowV2beta1SessionEntityType();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2beta1SessionEntityType.fromJson(
                json);
        checkGoogleCloudDialogflowV2beta1SessionEntityType(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1SessionEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1SessionEntityType(response);
      })));
    });
  });

  unittest.group("resource-ProjectsKnowledgeBasesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsKnowledgeBasesResourceApi res =
          new api.DialogflowApi(mock).projects.knowledgeBases;
      var arg_request = buildGoogleCloudDialogflowV2beta1KnowledgeBase();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(json);
        checkGoogleCloudDialogflowV2beta1KnowledgeBase(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1KnowledgeBase());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1KnowledgeBase(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsKnowledgeBasesResourceApi res =
          new api.DialogflowApi(mock).projects.knowledgeBases;
      var arg_name = "foo";
      var arg_force = true;
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
            unittest.equals("v2beta1/"));
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
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, force: arg_force, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsKnowledgeBasesResourceApi res =
          new api.DialogflowApi(mock).projects.knowledgeBases;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1KnowledgeBase());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1KnowledgeBase(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsKnowledgeBasesResourceApi res =
          new api.DialogflowApi(mock).projects.knowledgeBases;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsKnowledgeBasesResourceApi res =
          new api.DialogflowApi(mock).projects.knowledgeBases;
      var arg_request = buildGoogleCloudDialogflowV2beta1KnowledgeBase();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2beta1KnowledgeBase.fromJson(json);
        checkGoogleCloudDialogflowV2beta1KnowledgeBase(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1KnowledgeBase());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1KnowledgeBase(response);
      })));
    });
  });

  unittest.group("resource-ProjectsKnowledgeBasesDocumentsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsKnowledgeBasesDocumentsResourceApi res =
          new api.DialogflowApi(mock).projects.knowledgeBases.documents;
      var arg_request = buildGoogleCloudDialogflowV2beta1Document();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2beta1Document.fromJson(json);
        checkGoogleCloudDialogflowV2beta1Document(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsKnowledgeBasesDocumentsResourceApi res =
          new api.DialogflowApi(mock).projects.knowledgeBases.documents;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsKnowledgeBasesDocumentsResourceApi res =
          new api.DialogflowApi(mock).projects.knowledgeBases.documents;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp =
            convert.json.encode(buildGoogleCloudDialogflowV2beta1Document());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1Document(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsKnowledgeBasesDocumentsResourceApi res =
          new api.DialogflowApi(mock).projects.knowledgeBases.documents;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGoogleCloudDialogflowV2beta1ListDocumentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1ListDocumentsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsKnowledgeBasesDocumentsResourceApi res =
          new api.DialogflowApi(mock).projects.knowledgeBases.documents;
      var arg_request = buildGoogleCloudDialogflowV2beta1Document();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2beta1Document.fromJson(json);
        checkGoogleCloudDialogflowV2beta1Document(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--reload", () {
      var mock = new HttpServerMock();
      api.ProjectsKnowledgeBasesDocumentsResourceApi res =
          new api.DialogflowApi(mock).projects.knowledgeBases.documents;
      var arg_request =
          buildGoogleCloudDialogflowV2beta1ReloadDocumentRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudDialogflowV2beta1ReloadDocumentRequest.fromJson(
                json);
        checkGoogleCloudDialogflowV2beta1ReloadDocumentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reload(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsOperationsResourceApi", () {
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });
  });
}
