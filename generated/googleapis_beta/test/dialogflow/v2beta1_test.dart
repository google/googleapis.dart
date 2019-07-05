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

buildUnnamed4922() {
  var o = new core.List<api.GoogleCloudDialogflowV2EntityType>();
  o.add(buildGoogleCloudDialogflowV2EntityType());
  o.add(buildGoogleCloudDialogflowV2EntityType());
  return o;
}

checkUnnamed4922(core.List<api.GoogleCloudDialogflowV2EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityType(o[0]);
  checkGoogleCloudDialogflowV2EntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse = 0;
buildGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse() {
  var o = new api.GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse();
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse < 3) {
    o.entityTypes = buildUnnamed4922();
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse--;
  return o;
}

checkGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse(
    api.GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse < 3) {
    checkUnnamed4922(o.entityTypes);
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesResponse--;
}

buildUnnamed4923() {
  var o = new core.List<api.GoogleCloudDialogflowV2Intent>();
  o.add(buildGoogleCloudDialogflowV2Intent());
  o.add(buildGoogleCloudDialogflowV2Intent());
  return o;
}

checkUnnamed4923(core.List<api.GoogleCloudDialogflowV2Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Intent(o[0]);
  checkGoogleCloudDialogflowV2Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse = 0;
buildGoogleCloudDialogflowV2BatchUpdateIntentsResponse() {
  var o = new api.GoogleCloudDialogflowV2BatchUpdateIntentsResponse();
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse < 3) {
    o.intents = buildUnnamed4923();
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2BatchUpdateIntentsResponse(
    api.GoogleCloudDialogflowV2BatchUpdateIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse < 3) {
    checkUnnamed4923(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsResponse--;
}

buildUnnamed4924() {
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

checkUnnamed4924(core.Map<core.String, core.Object> o) {
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
    o.parameters = buildUnnamed4924();
  }
  buildCounterGoogleCloudDialogflowV2Context--;
  return o;
}

checkGoogleCloudDialogflowV2Context(api.GoogleCloudDialogflowV2Context o) {
  buildCounterGoogleCloudDialogflowV2Context++;
  if (buildCounterGoogleCloudDialogflowV2Context < 3) {
    unittest.expect(o.lifespanCount, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4924(o.parameters);
  }
  buildCounterGoogleCloudDialogflowV2Context--;
}

buildUnnamed4925() {
  var o = new core.List<api.GoogleCloudDialogflowV2EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2EntityTypeEntity());
  return o;
}

checkUnnamed4925(core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> o) {
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
    o.entities = buildUnnamed4925();
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
    checkUnnamed4925(o.entities);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2EntityType--;
}

buildUnnamed4926() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4926(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2EntityTypeEntity = 0;
buildGoogleCloudDialogflowV2EntityTypeEntity() {
  var o = new api.GoogleCloudDialogflowV2EntityTypeEntity();
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeEntity < 3) {
    o.synonyms = buildUnnamed4926();
    o.value = "foo";
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity--;
  return o;
}

checkGoogleCloudDialogflowV2EntityTypeEntity(
    api.GoogleCloudDialogflowV2EntityTypeEntity o) {
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeEntity < 3) {
    checkUnnamed4926(o.synonyms);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity--;
}

buildUnnamed4927() {
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

checkUnnamed4927(core.Map<core.String, core.Object> o) {
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
    o.parameters = buildUnnamed4927();
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
    checkUnnamed4927(o.parameters);
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

buildUnnamed4929() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4929(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4930() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentFollowupIntentInfo>();
  o.add(buildGoogleCloudDialogflowV2IntentFollowupIntentInfo());
  o.add(buildGoogleCloudDialogflowV2IntentFollowupIntentInfo());
  return o;
}

checkUnnamed4930(
    core.List<api.GoogleCloudDialogflowV2IntentFollowupIntentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(o[0]);
  checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(o[1]);
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

buildUnnamed4932() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

checkUnnamed4932(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2IntentMessage(o[1]);
}

buildUnnamed4933() {
  var o = new core.List<api.GoogleCloudDialogflowV2Context>();
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

checkUnnamed4933(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

buildUnnamed4934() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentParameter>();
  o.add(buildGoogleCloudDialogflowV2IntentParameter());
  o.add(buildGoogleCloudDialogflowV2IntentParameter());
  return o;
}

checkUnnamed4934(core.List<api.GoogleCloudDialogflowV2IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentParameter(o[0]);
  checkGoogleCloudDialogflowV2IntentParameter(o[1]);
}

buildUnnamed4935() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrase>();
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrase());
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrase());
  return o;
}

checkUnnamed4935(core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrase> o) {
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
    o.defaultResponsePlatforms = buildUnnamed4928();
    o.displayName = "foo";
    o.events = buildUnnamed4929();
    o.followupIntentInfo = buildUnnamed4930();
    o.inputContextNames = buildUnnamed4931();
    o.isFallback = true;
    o.messages = buildUnnamed4932();
    o.mlDisabled = true;
    o.name = "foo";
    o.outputContexts = buildUnnamed4933();
    o.parameters = buildUnnamed4934();
    o.parentFollowupIntentName = "foo";
    o.priority = 42;
    o.resetContexts = true;
    o.rootFollowupIntentName = "foo";
    o.trainingPhrases = buildUnnamed4935();
    o.webhookState = "foo";
  }
  buildCounterGoogleCloudDialogflowV2Intent--;
  return o;
}

checkGoogleCloudDialogflowV2Intent(api.GoogleCloudDialogflowV2Intent o) {
  buildCounterGoogleCloudDialogflowV2Intent++;
  if (buildCounterGoogleCloudDialogflowV2Intent < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed4928(o.defaultResponsePlatforms);
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed4929(o.events);
    checkUnnamed4930(o.followupIntentInfo);
    checkUnnamed4931(o.inputContextNames);
    unittest.expect(o.isFallback, unittest.isTrue);
    checkUnnamed4932(o.messages);
    unittest.expect(o.mlDisabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4933(o.outputContexts);
    checkUnnamed4934(o.parameters);
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    unittest.expect(o.resetContexts, unittest.isTrue);
    unittest.expect(o.rootFollowupIntentName, unittest.equals('foo'));
    checkUnnamed4935(o.trainingPhrases);
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

buildUnnamed4936() {
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

checkUnnamed4936(core.Map<core.String, core.Object> o) {
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
    o.payload = buildUnnamed4936();
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
    checkUnnamed4936(o.payload);
    unittest.expect(o.platform, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2IntentMessageQuickReplies(o.quickReplies);
    checkGoogleCloudDialogflowV2IntentMessageSimpleResponses(o.simpleResponses);
    checkGoogleCloudDialogflowV2IntentMessageSuggestions(o.suggestions);
    checkGoogleCloudDialogflowV2IntentMessageText(o.text);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessage--;
}

buildUnnamed4937() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2IntentMessageBasicCardButton());
  return o;
}

checkUnnamed4937(
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
    o.buttons = buildUnnamed4937();
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
    checkUnnamed4937(o.buttons);
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

buildUnnamed4938() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessageCardButton>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageCardButton());
  o.add(buildGoogleCloudDialogflowV2IntentMessageCardButton());
  return o;
}

checkUnnamed4938(
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
    o.buttons = buildUnnamed4938();
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
    checkUnnamed4938(o.buttons);
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

buildUnnamed4939() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem());
  o.add(buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem());
  return o;
}

checkUnnamed4939(
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
    o.items = buildUnnamed4939();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageCarouselSelect(
    api.GoogleCloudDialogflowV2IntentMessageCarouselSelect o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect < 3) {
    checkUnnamed4939(o.items);
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

buildUnnamed4940() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2IntentMessageListSelectItem>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageListSelectItem());
  o.add(buildGoogleCloudDialogflowV2IntentMessageListSelectItem());
  return o;
}

checkUnnamed4940(
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
    o.items = buildUnnamed4940();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelect--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageListSelect(
    api.GoogleCloudDialogflowV2IntentMessageListSelect o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageListSelect < 3) {
    checkUnnamed4940(o.items);
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

buildUnnamed4941() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4941(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies = 0;
buildGoogleCloudDialogflowV2IntentMessageQuickReplies() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageQuickReplies();
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies < 3) {
    o.quickReplies = buildUnnamed4941();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageQuickReplies(
    api.GoogleCloudDialogflowV2IntentMessageQuickReplies o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies < 3) {
    checkUnnamed4941(o.quickReplies);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies--;
}

buildUnnamed4942() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4942(core.List<core.String> o) {
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
    o.synonyms = buildUnnamed4942();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(
    api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed4942(o.synonyms);
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

buildUnnamed4943() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2IntentMessageSimpleResponse>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageSimpleResponse());
  o.add(buildGoogleCloudDialogflowV2IntentMessageSimpleResponse());
  return o;
}

checkUnnamed4943(
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
    o.simpleResponses = buildUnnamed4943();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageSimpleResponses(
    api.GoogleCloudDialogflowV2IntentMessageSimpleResponses o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses < 3) {
    checkUnnamed4943(o.simpleResponses);
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

buildUnnamed4944() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessageSuggestion>();
  o.add(buildGoogleCloudDialogflowV2IntentMessageSuggestion());
  o.add(buildGoogleCloudDialogflowV2IntentMessageSuggestion());
  return o;
}

checkUnnamed4944(
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
    o.suggestions = buildUnnamed4944();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageSuggestions(
    api.GoogleCloudDialogflowV2IntentMessageSuggestions o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions < 3) {
    checkUnnamed4944(o.suggestions);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions--;
}

buildUnnamed4945() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4945(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageText = 0;
buildGoogleCloudDialogflowV2IntentMessageText() {
  var o = new api.GoogleCloudDialogflowV2IntentMessageText();
  buildCounterGoogleCloudDialogflowV2IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageText < 3) {
    o.text = buildUnnamed4945();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageText--;
  return o;
}

checkGoogleCloudDialogflowV2IntentMessageText(
    api.GoogleCloudDialogflowV2IntentMessageText o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageText < 3) {
    checkUnnamed4945(o.text);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageText--;
}

buildUnnamed4946() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4946(core.List<core.String> o) {
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
    o.prompts = buildUnnamed4946();
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
    checkUnnamed4946(o.prompts);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2IntentParameter--;
}

buildUnnamed4947() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrasePart>();
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrasePart());
  o.add(buildGoogleCloudDialogflowV2IntentTrainingPhrasePart());
  return o;
}

checkUnnamed4947(
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
    o.parts = buildUnnamed4947();
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
    checkUnnamed4947(o.parts);
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

buildUnnamed4948() {
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

checkUnnamed4948(core.Map<core.String, core.Object> o) {
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
    o.payload = buildUnnamed4948();
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
    checkUnnamed4948(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2OriginalDetectIntentRequest--;
}

buildUnnamed4949() {
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

checkUnnamed4949(core.Map<core.String, core.Object> o) {
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

buildUnnamed4950() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

checkUnnamed4950(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2IntentMessage(o[1]);
}

buildUnnamed4951() {
  var o = new core.List<api.GoogleCloudDialogflowV2Context>();
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

checkUnnamed4951(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

buildUnnamed4952() {
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

checkUnnamed4952(core.Map<core.String, core.Object> o) {
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

buildUnnamed4953() {
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

checkUnnamed4953(core.Map<core.String, core.Object> o) {
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
    o.diagnosticInfo = buildUnnamed4949();
    o.fulfillmentMessages = buildUnnamed4950();
    o.fulfillmentText = "foo";
    o.intent = buildGoogleCloudDialogflowV2Intent();
    o.intentDetectionConfidence = 42.0;
    o.languageCode = "foo";
    o.outputContexts = buildUnnamed4951();
    o.parameters = buildUnnamed4952();
    o.queryText = "foo";
    o.sentimentAnalysisResult =
        buildGoogleCloudDialogflowV2SentimentAnalysisResult();
    o.speechRecognitionConfidence = 42.0;
    o.webhookPayload = buildUnnamed4953();
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
    checkUnnamed4949(o.diagnosticInfo);
    checkUnnamed4950(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2Intent(o.intent);
    unittest.expect(o.intentDetectionConfidence, unittest.equals(42.0));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed4951(o.outputContexts);
    checkUnnamed4952(o.parameters);
    unittest.expect(o.queryText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2SentimentAnalysisResult(
        o.sentimentAnalysisResult);
    unittest.expect(o.speechRecognitionConfidence, unittest.equals(42.0));
    checkUnnamed4953(o.webhookPayload);
    unittest.expect(o.webhookSource, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2QueryResult--;
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

buildUnnamed4954() {
  var o = new core.List<api.GoogleCloudDialogflowV2IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  o.add(buildGoogleCloudDialogflowV2IntentMessage());
  return o;
}

checkUnnamed4954(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2IntentMessage(o[1]);
}

buildUnnamed4955() {
  var o = new core.List<api.GoogleCloudDialogflowV2Context>();
  o.add(buildGoogleCloudDialogflowV2Context());
  o.add(buildGoogleCloudDialogflowV2Context());
  return o;
}

checkUnnamed4955(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

buildUnnamed4956() {
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

checkUnnamed4956(core.Map<core.String, core.Object> o) {
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
    o.fulfillmentMessages = buildUnnamed4954();
    o.fulfillmentText = "foo";
    o.outputContexts = buildUnnamed4955();
    o.payload = buildUnnamed4956();
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
    checkUnnamed4954(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkUnnamed4955(o.outputContexts);
    checkUnnamed4956(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2WebhookResponse--;
}

buildUnnamed4957() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4957(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1Agent = 0;
buildGoogleCloudDialogflowV2beta1Agent() {
  var o = new api.GoogleCloudDialogflowV2beta1Agent();
  buildCounterGoogleCloudDialogflowV2beta1Agent++;
  if (buildCounterGoogleCloudDialogflowV2beta1Agent < 3) {
    o.apiVersion = "foo";
    o.avatarUri = "foo";
    o.classificationThreshold = 42.0;
    o.defaultLanguageCode = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.enableLogging = true;
    o.matchMode = "foo";
    o.parent = "foo";
    o.supportedLanguageCodes = buildUnnamed4957();
    o.tier = "foo";
    o.timeZone = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1Agent--;
  return o;
}

checkGoogleCloudDialogflowV2beta1Agent(
    api.GoogleCloudDialogflowV2beta1Agent o) {
  buildCounterGoogleCloudDialogflowV2beta1Agent++;
  if (buildCounterGoogleCloudDialogflowV2beta1Agent < 3) {
    unittest.expect(o.apiVersion, unittest.equals('foo'));
    unittest.expect(o.avatarUri, unittest.equals('foo'));
    unittest.expect(o.classificationThreshold, unittest.equals(42.0));
    unittest.expect(o.defaultLanguageCode, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.enableLogging, unittest.isTrue);
    unittest.expect(o.matchMode, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    checkUnnamed4957(o.supportedLanguageCodes);
    unittest.expect(o.tier, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1Agent--;
}

buildUnnamed4958() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  return o;
}

checkUnnamed4958(
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
    o.entities = buildUnnamed4958();
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest(
    api.GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest < 3) {
    checkUnnamed4958(o.entities);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest--;
}

buildUnnamed4959() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4959(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest = 0;
buildGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest();
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest < 3) {
    o.entityValues = buildUnnamed4959();
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest(
    api.GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest < 3) {
    checkUnnamed4959(o.entityValues);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest--;
}

buildUnnamed4960() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4960(core.List<core.String> o) {
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
    o.entityTypeNames = buildUnnamed4960();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest(
    api.GoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest <
      3) {
    checkUnnamed4960(o.entityTypeNames);
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest--;
}

buildUnnamed4961() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Intent>();
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  return o;
}

checkUnnamed4961(core.List<api.GoogleCloudDialogflowV2beta1Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Intent(o[0]);
  checkGoogleCloudDialogflowV2beta1Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest = 0;
buildGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest();
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest < 3) {
    o.intents = buildUnnamed4961();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest(
    api.GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest < 3) {
    checkUnnamed4961(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest--;
}

buildUnnamed4962() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  return o;
}

checkUnnamed4962(
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
    o.entities = buildUnnamed4962();
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
    checkUnnamed4962(o.entities);
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

buildUnnamed4963() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1EntityType>();
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  return o;
}

checkUnnamed4963(core.List<api.GoogleCloudDialogflowV2beta1EntityType> o) {
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
    o.entityTypes = buildUnnamed4963();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse(
    api.GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse <
      3) {
    checkUnnamed4963(o.entityTypes);
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

buildUnnamed4964() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Intent>();
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  return o;
}

checkUnnamed4964(core.List<api.GoogleCloudDialogflowV2beta1Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Intent(o[0]);
  checkGoogleCloudDialogflowV2beta1Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse = 0;
buildGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse();
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse < 3) {
    o.intents = buildUnnamed4964();
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse(
    api.GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse < 3) {
    checkUnnamed4964(o.intents);
  }
  buildCounterGoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse--;
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
    o.parameters = buildUnnamed4965();
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
    checkUnnamed4965(o.parameters);
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

buildUnnamed4966() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1QueryResult>();
  o.add(buildGoogleCloudDialogflowV2beta1QueryResult());
  o.add(buildGoogleCloudDialogflowV2beta1QueryResult());
  return o;
}

checkUnnamed4966(core.List<api.GoogleCloudDialogflowV2beta1QueryResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1QueryResult(o[0]);
  checkGoogleCloudDialogflowV2beta1QueryResult(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1DetectIntentResponse = 0;
buildGoogleCloudDialogflowV2beta1DetectIntentResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1DetectIntentResponse();
  buildCounterGoogleCloudDialogflowV2beta1DetectIntentResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1DetectIntentResponse < 3) {
    o.alternativeQueryResults = buildUnnamed4966();
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
    checkUnnamed4966(o.alternativeQueryResults);
    unittest.expect(o.outputAudio, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1OutputAudioConfig(o.outputAudioConfig);
    checkGoogleCloudDialogflowV2beta1QueryResult(o.queryResult);
    unittest.expect(o.responseId, unittest.equals('foo'));
    checkGoogleRpcStatus(o.webhookStatus);
  }
  buildCounterGoogleCloudDialogflowV2beta1DetectIntentResponse--;
}

buildUnnamed4967() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4967(core.List<core.String> o) {
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
    o.knowledgeTypes = buildUnnamed4967();
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
    checkUnnamed4967(o.knowledgeTypes);
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.rawContent, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1Document--;
}

buildUnnamed4968() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  return o;
}

checkUnnamed4968(
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
    o.entities = buildUnnamed4968();
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
    checkUnnamed4968(o.entities);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityType--;
}

buildUnnamed4969() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1EntityType>();
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  return o;
}

checkUnnamed4969(core.List<api.GoogleCloudDialogflowV2beta1EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1EntityType(o[0]);
  checkGoogleCloudDialogflowV2beta1EntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1EntityTypeBatch = 0;
buildGoogleCloudDialogflowV2beta1EntityTypeBatch() {
  var o = new api.GoogleCloudDialogflowV2beta1EntityTypeBatch();
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeBatch++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityTypeBatch < 3) {
    o.entityTypes = buildUnnamed4969();
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeBatch--;
  return o;
}

checkGoogleCloudDialogflowV2beta1EntityTypeBatch(
    api.GoogleCloudDialogflowV2beta1EntityTypeBatch o) {
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeBatch++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityTypeBatch < 3) {
    checkUnnamed4969(o.entityTypes);
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeBatch--;
}

buildUnnamed4970() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4970(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity = 0;
buildGoogleCloudDialogflowV2beta1EntityTypeEntity() {
  var o = new api.GoogleCloudDialogflowV2beta1EntityTypeEntity();
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity < 3) {
    o.synonyms = buildUnnamed4970();
    o.value = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity--;
  return o;
}

checkGoogleCloudDialogflowV2beta1EntityTypeEntity(
    api.GoogleCloudDialogflowV2beta1EntityTypeEntity o) {
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity < 3) {
    checkUnnamed4970(o.synonyms);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1EntityTypeEntity--;
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
    o.parameters = buildUnnamed4971();
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
    checkUnnamed4971(o.parameters);
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

buildUnnamed4972() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4972(core.List<core.String> o) {
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
    o.enableWordInfo = true;
    o.languageCode = "foo";
    o.model = "foo";
    o.modelVariant = "foo";
    o.phraseHints = buildUnnamed4972();
    o.sampleRateHertz = 42;
    o.singleUtterance = true;
  }
  buildCounterGoogleCloudDialogflowV2beta1InputAudioConfig--;
  return o;
}

checkGoogleCloudDialogflowV2beta1InputAudioConfig(
    api.GoogleCloudDialogflowV2beta1InputAudioConfig o) {
  buildCounterGoogleCloudDialogflowV2beta1InputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowV2beta1InputAudioConfig < 3) {
    unittest.expect(o.audioEncoding, unittest.equals('foo'));
    unittest.expect(o.enableWordInfo, unittest.isTrue);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.modelVariant, unittest.equals('foo'));
    checkUnnamed4972(o.phraseHints);
    unittest.expect(o.sampleRateHertz, unittest.equals(42));
    unittest.expect(o.singleUtterance, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2beta1InputAudioConfig--;
}

buildUnnamed4973() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4973(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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

buildUnnamed4975() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo());
  o.add(buildGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo());
  return o;
}

checkUnnamed4975(
    core.List<api.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentFollowupIntentInfo(o[1]);
}

buildUnnamed4976() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4976(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4977() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

checkUnnamed4977(core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[1]);
}

buildUnnamed4978() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Context>();
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

checkUnnamed4978(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(o[0]);
  checkGoogleCloudDialogflowV2beta1Context(o[1]);
}

buildUnnamed4979() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentParameter>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentParameter());
  o.add(buildGoogleCloudDialogflowV2beta1IntentParameter());
  return o;
}

checkUnnamed4979(core.List<api.GoogleCloudDialogflowV2beta1IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentParameter(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentParameter(o[1]);
}

buildUnnamed4980() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrase>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase());
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrase());
  return o;
}

checkUnnamed4980(
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
    o.defaultResponsePlatforms = buildUnnamed4973();
    o.displayName = "foo";
    o.endInteraction = true;
    o.events = buildUnnamed4974();
    o.followupIntentInfo = buildUnnamed4975();
    o.inputContextNames = buildUnnamed4976();
    o.isFallback = true;
    o.messages = buildUnnamed4977();
    o.mlDisabled = true;
    o.mlEnabled = true;
    o.name = "foo";
    o.outputContexts = buildUnnamed4978();
    o.parameters = buildUnnamed4979();
    o.parentFollowupIntentName = "foo";
    o.priority = 42;
    o.resetContexts = true;
    o.rootFollowupIntentName = "foo";
    o.trainingPhrases = buildUnnamed4980();
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
    checkUnnamed4973(o.defaultResponsePlatforms);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.endInteraction, unittest.isTrue);
    checkUnnamed4974(o.events);
    checkUnnamed4975(o.followupIntentInfo);
    checkUnnamed4976(o.inputContextNames);
    unittest.expect(o.isFallback, unittest.isTrue);
    checkUnnamed4977(o.messages);
    unittest.expect(o.mlDisabled, unittest.isTrue);
    unittest.expect(o.mlEnabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4978(o.outputContexts);
    checkUnnamed4979(o.parameters);
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    unittest.expect(o.resetContexts, unittest.isTrue);
    unittest.expect(o.rootFollowupIntentName, unittest.equals('foo'));
    checkUnnamed4980(o.trainingPhrases);
    unittest.expect(o.webhookState, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1Intent--;
}

buildUnnamed4981() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Intent>();
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  return o;
}

checkUnnamed4981(core.List<api.GoogleCloudDialogflowV2beta1Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Intent(o[0]);
  checkGoogleCloudDialogflowV2beta1Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentBatch = 0;
buildGoogleCloudDialogflowV2beta1IntentBatch() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentBatch();
  buildCounterGoogleCloudDialogflowV2beta1IntentBatch++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentBatch < 3) {
    o.intents = buildUnnamed4981();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentBatch--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentBatch(
    api.GoogleCloudDialogflowV2beta1IntentBatch o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentBatch++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentBatch < 3) {
    checkUnnamed4981(o.intents);
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

buildUnnamed4982() {
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

checkUnnamed4982(core.Map<core.String, core.Object> o) {
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
    o.payload = buildUnnamed4982();
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
    checkUnnamed4982(o.payload);
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

buildUnnamed4983() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageBasicCardButton());
  return o;
}

checkUnnamed4983(
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
    o.buttons = buildUnnamed4983();
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
    checkUnnamed4983(o.buttons);
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

buildUnnamed4984() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1IntentMessageCardButton>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCardButton());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCardButton());
  return o;
}

checkUnnamed4984(
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
    o.buttons = buildUnnamed4984();
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
    checkUnnamed4984(o.buttons);
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

buildUnnamed4985() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem());
  return o;
}

checkUnnamed4985(
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
    o.items = buildUnnamed4985();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect(
    api.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageCarouselSelect < 3) {
    checkUnnamed4985(o.items);
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

buildUnnamed4986() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageListSelectItem());
  return o;
}

checkUnnamed4986(
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
    o.items = buildUnnamed4986();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageListSelect(
    api.GoogleCloudDialogflowV2beta1IntentMessageListSelect o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageListSelect < 3) {
    checkUnnamed4986(o.items);
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

buildUnnamed4987() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4987(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageQuickReplies() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies < 3) {
    o.quickReplies = buildUnnamed4987();
    o.title = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageQuickReplies(
    api.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies < 3) {
    checkUnnamed4987(o.quickReplies);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageQuickReplies--;
}

buildUnnamed4988() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  return o;
}

checkUnnamed4988(
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
    o.suggestions = buildUnnamed4988();
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
    checkUnnamed4988(o.suggestions);
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

buildUnnamed4989() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmCardContent());
  return o;
}

checkUnnamed4989(
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
    o.cardContents = buildUnnamed4989();
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
    checkUnnamed4989(o.cardContents);
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

buildUnnamed4990() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion());
  return o;
}

checkUnnamed4990(
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
    o.rbmSuggestion = buildUnnamed4990();
    o.text = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageRbmText(
    api.GoogleCloudDialogflowV2beta1IntentMessageRbmText o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText < 3) {
    checkUnnamed4990(o.rbmSuggestion);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageRbmText--;
}

buildUnnamed4991() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4991(core.List<core.String> o) {
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
    o.synonyms = buildUnnamed4991();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo(
    api.GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed4991(o.synonyms);
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

buildUnnamed4992() {
  var o = new core
      .List<api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSimpleResponse());
  return o;
}

checkUnnamed4992(
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
    o.simpleResponses = buildUnnamed4992();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses(
    api.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSimpleResponses <
      3) {
    checkUnnamed4992(o.simpleResponses);
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

buildUnnamed4993() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1IntentMessageSuggestion>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessageSuggestion());
  return o;
}

checkUnnamed4993(
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
    o.suggestions = buildUnnamed4993();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageSuggestions(
    api.GoogleCloudDialogflowV2beta1IntentMessageSuggestions o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageSuggestions < 3) {
    checkUnnamed4993(o.suggestions);
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

buildUnnamed4994() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4994(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1IntentMessageText = 0;
buildGoogleCloudDialogflowV2beta1IntentMessageText() {
  var o = new api.GoogleCloudDialogflowV2beta1IntentMessageText();
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageText < 3) {
    o.text = buildUnnamed4994();
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText--;
  return o;
}

checkGoogleCloudDialogflowV2beta1IntentMessageText(
    api.GoogleCloudDialogflowV2beta1IntentMessageText o) {
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2beta1IntentMessageText < 3) {
    checkUnnamed4994(o.text);
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentMessageText--;
}

buildUnnamed4995() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4995(core.List<core.String> o) {
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
    o.prompts = buildUnnamed4995();
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
    checkUnnamed4995(o.prompts);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1IntentParameter--;
}

buildUnnamed4996() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart());
  o.add(buildGoogleCloudDialogflowV2beta1IntentTrainingPhrasePart());
  return o;
}

checkUnnamed4996(
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
    o.parts = buildUnnamed4996();
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
    checkUnnamed4996(o.parts);
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

buildUnnamed4997() {
  var o =
      new core.List<api.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer>();
  o.add(buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer());
  o.add(buildGoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer());
  return o;
}

checkUnnamed4997(
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
    o.answers = buildUnnamed4997();
  }
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers--;
  return o;
}

checkGoogleCloudDialogflowV2beta1KnowledgeAnswers(
    api.GoogleCloudDialogflowV2beta1KnowledgeAnswers o) {
  buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers++;
  if (buildCounterGoogleCloudDialogflowV2beta1KnowledgeAnswers < 3) {
    checkUnnamed4997(o.answers);
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

buildUnnamed4998() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Context>();
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

checkUnnamed4998(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(o[0]);
  checkGoogleCloudDialogflowV2beta1Context(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1ListContextsResponse = 0;
buildGoogleCloudDialogflowV2beta1ListContextsResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1ListContextsResponse();
  buildCounterGoogleCloudDialogflowV2beta1ListContextsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListContextsResponse < 3) {
    o.contexts = buildUnnamed4998();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1ListContextsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1ListContextsResponse(
    api.GoogleCloudDialogflowV2beta1ListContextsResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1ListContextsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListContextsResponse < 3) {
    checkUnnamed4998(o.contexts);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1ListContextsResponse--;
}

buildUnnamed4999() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Document>();
  o.add(buildGoogleCloudDialogflowV2beta1Document());
  o.add(buildGoogleCloudDialogflowV2beta1Document());
  return o;
}

checkUnnamed4999(core.List<api.GoogleCloudDialogflowV2beta1Document> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Document(o[0]);
  checkGoogleCloudDialogflowV2beta1Document(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1ListDocumentsResponse = 0;
buildGoogleCloudDialogflowV2beta1ListDocumentsResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1ListDocumentsResponse();
  buildCounterGoogleCloudDialogflowV2beta1ListDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListDocumentsResponse < 3) {
    o.documents = buildUnnamed4999();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1ListDocumentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1ListDocumentsResponse(
    api.GoogleCloudDialogflowV2beta1ListDocumentsResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1ListDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListDocumentsResponse < 3) {
    checkUnnamed4999(o.documents);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1ListDocumentsResponse--;
}

buildUnnamed5000() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1EntityType>();
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  o.add(buildGoogleCloudDialogflowV2beta1EntityType());
  return o;
}

checkUnnamed5000(core.List<api.GoogleCloudDialogflowV2beta1EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1EntityType(o[0]);
  checkGoogleCloudDialogflowV2beta1EntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1ListEntityTypesResponse = 0;
buildGoogleCloudDialogflowV2beta1ListEntityTypesResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1ListEntityTypesResponse();
  buildCounterGoogleCloudDialogflowV2beta1ListEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListEntityTypesResponse < 3) {
    o.entityTypes = buildUnnamed5000();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1ListEntityTypesResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1ListEntityTypesResponse(
    api.GoogleCloudDialogflowV2beta1ListEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1ListEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListEntityTypesResponse < 3) {
    checkUnnamed5000(o.entityTypes);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1ListEntityTypesResponse--;
}

buildUnnamed5001() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Intent>();
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  o.add(buildGoogleCloudDialogflowV2beta1Intent());
  return o;
}

checkUnnamed5001(core.List<api.GoogleCloudDialogflowV2beta1Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Intent(o[0]);
  checkGoogleCloudDialogflowV2beta1Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1ListIntentsResponse = 0;
buildGoogleCloudDialogflowV2beta1ListIntentsResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1ListIntentsResponse();
  buildCounterGoogleCloudDialogflowV2beta1ListIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListIntentsResponse < 3) {
    o.intents = buildUnnamed5001();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1ListIntentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1ListIntentsResponse(
    api.GoogleCloudDialogflowV2beta1ListIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1ListIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListIntentsResponse < 3) {
    checkUnnamed5001(o.intents);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1ListIntentsResponse--;
}

buildUnnamed5002() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1KnowledgeBase>();
  o.add(buildGoogleCloudDialogflowV2beta1KnowledgeBase());
  o.add(buildGoogleCloudDialogflowV2beta1KnowledgeBase());
  return o;
}

checkUnnamed5002(core.List<api.GoogleCloudDialogflowV2beta1KnowledgeBase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1KnowledgeBase(o[0]);
  checkGoogleCloudDialogflowV2beta1KnowledgeBase(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse = 0;
buildGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse();
  buildCounterGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse < 3) {
    o.knowledgeBases = buildUnnamed5002();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse(
    api.GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse < 3) {
    checkUnnamed5002(o.knowledgeBases);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse--;
}

buildUnnamed5003() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1SessionEntityType>();
  o.add(buildGoogleCloudDialogflowV2beta1SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2beta1SessionEntityType());
  return o;
}

checkUnnamed5003(
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
    o.sessionEntityTypes = buildUnnamed5003();
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
    checkUnnamed5003(o.sessionEntityTypes);
  }
  buildCounterGoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse--;
}

buildUnnamed5004() {
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

checkUnnamed5004(core.Map<core.String, core.Object> o) {
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
    o.payload = buildUnnamed5004();
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
    checkUnnamed5004(o.payload);
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

buildUnnamed5005() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Context>();
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

checkUnnamed5005(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(o[0]);
  checkGoogleCloudDialogflowV2beta1Context(o[1]);
}

buildUnnamed5006() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5006(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5007() {
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

checkUnnamed5007(core.Map<core.String, core.Object> o) {
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

buildUnnamed5008() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1SessionEntityType>();
  o.add(buildGoogleCloudDialogflowV2beta1SessionEntityType());
  o.add(buildGoogleCloudDialogflowV2beta1SessionEntityType());
  return o;
}

checkUnnamed5008(
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
    o.contexts = buildUnnamed5005();
    o.geoLocation = buildGoogleTypeLatLng();
    o.knowledgeBaseNames = buildUnnamed5006();
    o.payload = buildUnnamed5007();
    o.resetContexts = true;
    o.sentimentAnalysisRequestConfig =
        buildGoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig();
    o.sessionEntityTypes = buildUnnamed5008();
    o.timeZone = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1QueryParameters--;
  return o;
}

checkGoogleCloudDialogflowV2beta1QueryParameters(
    api.GoogleCloudDialogflowV2beta1QueryParameters o) {
  buildCounterGoogleCloudDialogflowV2beta1QueryParameters++;
  if (buildCounterGoogleCloudDialogflowV2beta1QueryParameters < 3) {
    checkUnnamed5005(o.contexts);
    checkGoogleTypeLatLng(o.geoLocation);
    checkUnnamed5006(o.knowledgeBaseNames);
    checkUnnamed5007(o.payload);
    unittest.expect(o.resetContexts, unittest.isTrue);
    checkGoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig(
        o.sentimentAnalysisRequestConfig);
    checkUnnamed5008(o.sessionEntityTypes);
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1QueryParameters--;
}

buildUnnamed5009() {
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

checkUnnamed5009(core.Map<core.String, core.Object> o) {
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

buildUnnamed5010() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

checkUnnamed5010(core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[1]);
}

buildUnnamed5011() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Context>();
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

checkUnnamed5011(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(o[0]);
  checkGoogleCloudDialogflowV2beta1Context(o[1]);
}

buildUnnamed5012() {
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

checkUnnamed5012(core.Map<core.String, core.Object> o) {
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

buildUnnamed5013() {
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

checkUnnamed5013(core.Map<core.String, core.Object> o) {
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
    o.diagnosticInfo = buildUnnamed5009();
    o.fulfillmentMessages = buildUnnamed5010();
    o.fulfillmentText = "foo";
    o.intent = buildGoogleCloudDialogflowV2beta1Intent();
    o.intentDetectionConfidence = 42.0;
    o.knowledgeAnswers = buildGoogleCloudDialogflowV2beta1KnowledgeAnswers();
    o.languageCode = "foo";
    o.outputContexts = buildUnnamed5011();
    o.parameters = buildUnnamed5012();
    o.queryText = "foo";
    o.sentimentAnalysisResult =
        buildGoogleCloudDialogflowV2beta1SentimentAnalysisResult();
    o.speechRecognitionConfidence = 42.0;
    o.webhookPayload = buildUnnamed5013();
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
    checkUnnamed5009(o.diagnosticInfo);
    checkUnnamed5010(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1Intent(o.intent);
    unittest.expect(o.intentDetectionConfidence, unittest.equals(42.0));
    checkGoogleCloudDialogflowV2beta1KnowledgeAnswers(o.knowledgeAnswers);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed5011(o.outputContexts);
    checkUnnamed5012(o.parameters);
    unittest.expect(o.queryText, unittest.equals('foo'));
    checkGoogleCloudDialogflowV2beta1SentimentAnalysisResult(
        o.sentimentAnalysisResult);
    unittest.expect(o.speechRecognitionConfidence, unittest.equals(42.0));
    checkUnnamed5013(o.webhookPayload);
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

buildUnnamed5014() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Agent>();
  o.add(buildGoogleCloudDialogflowV2beta1Agent());
  o.add(buildGoogleCloudDialogflowV2beta1Agent());
  return o;
}

checkUnnamed5014(core.List<api.GoogleCloudDialogflowV2beta1Agent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Agent(o[0]);
  checkGoogleCloudDialogflowV2beta1Agent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1SearchAgentsResponse = 0;
buildGoogleCloudDialogflowV2beta1SearchAgentsResponse() {
  var o = new api.GoogleCloudDialogflowV2beta1SearchAgentsResponse();
  buildCounterGoogleCloudDialogflowV2beta1SearchAgentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1SearchAgentsResponse < 3) {
    o.agents = buildUnnamed5014();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudDialogflowV2beta1SearchAgentsResponse--;
  return o;
}

checkGoogleCloudDialogflowV2beta1SearchAgentsResponse(
    api.GoogleCloudDialogflowV2beta1SearchAgentsResponse o) {
  buildCounterGoogleCloudDialogflowV2beta1SearchAgentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2beta1SearchAgentsResponse < 3) {
    checkUnnamed5014(o.agents);
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

buildUnnamed5015() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1EntityTypeEntity>();
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  o.add(buildGoogleCloudDialogflowV2beta1EntityTypeEntity());
  return o;
}

checkUnnamed5015(
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
    o.entities = buildUnnamed5015();
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
    checkUnnamed5015(o.entities);
    unittest.expect(o.entityOverrideMode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1SessionEntityType--;
}

buildUnnamed5016() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5016(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDialogflowV2beta1SynthesizeSpeechConfig = 0;
buildGoogleCloudDialogflowV2beta1SynthesizeSpeechConfig() {
  var o = new api.GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig();
  buildCounterGoogleCloudDialogflowV2beta1SynthesizeSpeechConfig++;
  if (buildCounterGoogleCloudDialogflowV2beta1SynthesizeSpeechConfig < 3) {
    o.effectsProfileId = buildUnnamed5016();
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
    checkUnnamed5016(o.effectsProfileId);
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

buildUnnamed5017() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1QueryResult>();
  o.add(buildGoogleCloudDialogflowV2beta1QueryResult());
  o.add(buildGoogleCloudDialogflowV2beta1QueryResult());
  return o;
}

checkUnnamed5017(core.List<api.GoogleCloudDialogflowV2beta1QueryResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1QueryResult(o[0]);
  checkGoogleCloudDialogflowV2beta1QueryResult(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2beta1WebhookRequest = 0;
buildGoogleCloudDialogflowV2beta1WebhookRequest() {
  var o = new api.GoogleCloudDialogflowV2beta1WebhookRequest();
  buildCounterGoogleCloudDialogflowV2beta1WebhookRequest++;
  if (buildCounterGoogleCloudDialogflowV2beta1WebhookRequest < 3) {
    o.alternativeQueryResults = buildUnnamed5017();
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
    checkUnnamed5017(o.alternativeQueryResults);
    checkGoogleCloudDialogflowV2beta1OriginalDetectIntentRequest(
        o.originalDetectIntentRequest);
    checkGoogleCloudDialogflowV2beta1QueryResult(o.queryResult);
    unittest.expect(o.responseId, unittest.equals('foo'));
    unittest.expect(o.session, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1WebhookRequest--;
}

buildUnnamed5018() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1IntentMessage>();
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  o.add(buildGoogleCloudDialogflowV2beta1IntentMessage());
  return o;
}

checkUnnamed5018(core.List<api.GoogleCloudDialogflowV2beta1IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2beta1IntentMessage(o[1]);
}

buildUnnamed5019() {
  var o = new core.List<api.GoogleCloudDialogflowV2beta1Context>();
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  o.add(buildGoogleCloudDialogflowV2beta1Context());
  return o;
}

checkUnnamed5019(core.List<api.GoogleCloudDialogflowV2beta1Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2beta1Context(o[0]);
  checkGoogleCloudDialogflowV2beta1Context(o[1]);
}

buildUnnamed5020() {
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

checkUnnamed5020(core.Map<core.String, core.Object> o) {
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
    o.fulfillmentMessages = buildUnnamed5018();
    o.fulfillmentText = "foo";
    o.outputContexts = buildUnnamed5019();
    o.payload = buildUnnamed5020();
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
    checkUnnamed5018(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkUnnamed5019(o.outputContexts);
    checkUnnamed5020(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDialogflowV2beta1WebhookResponse--;
}

buildUnnamed5021() {
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

checkUnnamed5021(core.Map<core.String, core.Object> o) {
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

buildUnnamed5022() {
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

checkUnnamed5022(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed5021();
    o.name = "foo";
    o.response = buildUnnamed5022();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error);
    checkUnnamed5021(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5022(o.response);
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

buildUnnamed5023() {
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

checkUnnamed5023(core.Map<core.String, core.Object> o) {
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

buildUnnamed5024() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed5023());
  o.add(buildUnnamed5023());
  return o;
}

checkUnnamed5024(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5023(o[0]);
  checkUnnamed5023(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
buildGoogleRpcStatus() {
  var o = new api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5024();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed5024(o.details);
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

  unittest.group("obj-schema-GoogleCloudDialogflowV2Sentiment", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudDialogflowV2Sentiment();
      var od = new api.GoogleCloudDialogflowV2Sentiment.fromJson(o.toJson());
      checkGoogleCloudDialogflowV2Sentiment(od);
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
    unittest.test("method--agent", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.DialogflowApi(mock).projects;
      var arg_request = buildGoogleCloudDialogflowV2beta1Agent();
      var arg_parent = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudDialogflowV2beta1Agent.fromJson(json);
        checkGoogleCloudDialogflowV2beta1Agent(obj);

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
            convert.json.encode(buildGoogleCloudDialogflowV2beta1Agent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .agent(arg_request, arg_parent,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1Agent(response);
      })));
    });

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
          new api.DialogflowApi(mock).projects.agent_1;
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
          new api.DialogflowApi(mock).projects.agent_1;
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
          new api.DialogflowApi(mock).projects.agent_1;
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
          new api.DialogflowApi(mock).projects.agent_1;
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
            .encode(buildGoogleCloudDialogflowV2beta1SearchAgentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1SearchAgentsResponse(response);
      })));
    });

    unittest.test("method--train", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1;
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
          new api.DialogflowApi(mock).projects.agent_1.entityTypes;
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
          new api.DialogflowApi(mock).projects.agent_1.entityTypes;
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
          new api.DialogflowApi(mock).projects.agent_1.entityTypes;
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
          new api.DialogflowApi(mock).projects.agent_1.entityTypes;
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
          new api.DialogflowApi(mock).projects.agent_1.entityTypes;
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
          new api.DialogflowApi(mock).projects.agent_1.entityTypes;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
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
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              languageCode: arg_languageCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1ListEntityTypesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.entityTypes;
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
          new api.DialogflowApi(mock).projects.agent_1.entityTypes.entities;
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
          new api.DialogflowApi(mock).projects.agent_1.entityTypes.entities;
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
          new api.DialogflowApi(mock).projects.agent_1.entityTypes.entities;
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
              .agent_1
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
              .agent_1
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
              .agent_1
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
              .agent_1
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
              .agent_1
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
              .agent_1
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
              .agent_1
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
              .agent_1
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
              .agent_1
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
              .agent_1
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
              .agent_1
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
            buildGoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
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
              .agent_1
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
          new api.DialogflowApi(mock).projects.agent_1.intents;
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
          new api.DialogflowApi(mock).projects.agent_1.intents;
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
          new api.DialogflowApi(mock).projects.agent_1.intents;
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
          new api.DialogflowApi(mock).projects.agent_1.intents;
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
          new api.DialogflowApi(mock).projects.agent_1.intents;
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
          new api.DialogflowApi(mock).projects.agent_1.intents;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["intentView"].first, unittest.equals(arg_intentView));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
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
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              intentView: arg_intentView,
              languageCode: arg_languageCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1ListIntentsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.intents;
      var arg_request = buildGoogleCloudDialogflowV2beta1Intent();
      var arg_name = "foo";
      var arg_languageCode = "foo";
      var arg_updateMask = "foo";
      var arg_intentView = "foo";
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
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(
            queryMap["intentView"].first, unittest.equals(arg_intentView));
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
              languageCode: arg_languageCode,
              updateMask: arg_updateMask,
              intentView: arg_intentView,
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
          new api.DialogflowApi(mock).projects.agent_1.knowledgeBases;
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
          new api.DialogflowApi(mock).projects.agent_1.knowledgeBases;
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
          new api.DialogflowApi(mock).projects.agent_1.knowledgeBases;
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
          new api.DialogflowApi(mock).projects.agent_1.knowledgeBases;
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
          new api.DialogflowApi(mock).projects.agent_1.knowledgeBases;
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
          new api.DialogflowApi(mock).projects.agent_1.knowledgeBases.documents;
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
          new api.DialogflowApi(mock).projects.agent_1.knowledgeBases.documents;
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
          new api.DialogflowApi(mock).projects.agent_1.knowledgeBases.documents;
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
          new api.DialogflowApi(mock).projects.agent_1.knowledgeBases.documents;
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
            .encode(buildGoogleCloudDialogflowV2beta1ListDocumentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1ListDocumentsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentKnowledgeBasesDocumentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.knowledgeBases.documents;
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
          new api.DialogflowApi(mock).projects.agent_1.knowledgeBases.documents;
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
          new api.DialogflowApi(mock).projects.agent_1.sessions;
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
          new api.DialogflowApi(mock).projects.agent_1.sessions;
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
          new api.DialogflowApi(mock).projects.agent_1.sessions.contexts;
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
          new api.DialogflowApi(mock).projects.agent_1.sessions.contexts;
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
          new api.DialogflowApi(mock).projects.agent_1.sessions.contexts;
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
          new api.DialogflowApi(mock).projects.agent_1.sessions.contexts;
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
          new api.DialogflowApi(mock).projects.agent_1.sessions.contexts;
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
          new api.DialogflowApi(mock).projects.agent_1.sessions.entityTypes;
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
          new api.DialogflowApi(mock).projects.agent_1.sessions.entityTypes;
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
          new api.DialogflowApi(mock).projects.agent_1.sessions.entityTypes;
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
          new api.DialogflowApi(mock).projects.agent_1.sessions.entityTypes;
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
            buildGoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse(
            response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent_1.sessions.entityTypes;
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
            .encode(buildGoogleCloudDialogflowV2beta1ListDocumentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
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
