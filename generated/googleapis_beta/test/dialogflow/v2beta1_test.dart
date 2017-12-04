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
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
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
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed3988() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3988(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAgent = 0;
buildAgent() {
  var o = new api.Agent();
  buildCounterAgent++;
  if (buildCounterAgent < 3) {
    o.avatarUri = "foo";
    o.classificationThreshold = 42.0;
    o.defaultLanguageCode = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.enableLogging = true;
    o.matchMode = "foo";
    o.parent = "foo";
    o.supportedLanguageCodes = buildUnnamed3988();
    o.timeZone = "foo";
  }
  buildCounterAgent--;
  return o;
}

checkAgent(api.Agent o) {
  buildCounterAgent++;
  if (buildCounterAgent < 3) {
    unittest.expect(o.avatarUri, unittest.equals('foo'));
    unittest.expect(o.classificationThreshold, unittest.equals(42.0));
    unittest.expect(o.defaultLanguageCode, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.enableLogging, unittest.isTrue);
    unittest.expect(o.matchMode, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    checkUnnamed3988(o.supportedLanguageCodes);
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterAgent--;
}

buildUnnamed3989() {
  var o = new core.List<api.EntityTypeEntity>();
  o.add(buildEntityTypeEntity());
  o.add(buildEntityTypeEntity());
  return o;
}

checkUnnamed3989(core.List<api.EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityTypeEntity(o[0]);
  checkEntityTypeEntity(o[1]);
}

core.int buildCounterBatchCreateEntitiesRequest = 0;
buildBatchCreateEntitiesRequest() {
  var o = new api.BatchCreateEntitiesRequest();
  buildCounterBatchCreateEntitiesRequest++;
  if (buildCounterBatchCreateEntitiesRequest < 3) {
    o.entities = buildUnnamed3989();
    o.languageCode = "foo";
  }
  buildCounterBatchCreateEntitiesRequest--;
  return o;
}

checkBatchCreateEntitiesRequest(api.BatchCreateEntitiesRequest o) {
  buildCounterBatchCreateEntitiesRequest++;
  if (buildCounterBatchCreateEntitiesRequest < 3) {
    checkUnnamed3989(o.entities);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterBatchCreateEntitiesRequest--;
}

buildUnnamed3990() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3990(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchDeleteEntitiesRequest = 0;
buildBatchDeleteEntitiesRequest() {
  var o = new api.BatchDeleteEntitiesRequest();
  buildCounterBatchDeleteEntitiesRequest++;
  if (buildCounterBatchDeleteEntitiesRequest < 3) {
    o.entityValues = buildUnnamed3990();
    o.languageCode = "foo";
  }
  buildCounterBatchDeleteEntitiesRequest--;
  return o;
}

checkBatchDeleteEntitiesRequest(api.BatchDeleteEntitiesRequest o) {
  buildCounterBatchDeleteEntitiesRequest++;
  if (buildCounterBatchDeleteEntitiesRequest < 3) {
    checkUnnamed3990(o.entityValues);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterBatchDeleteEntitiesRequest--;
}

buildUnnamed3991() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3991(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchDeleteEntityTypesRequest = 0;
buildBatchDeleteEntityTypesRequest() {
  var o = new api.BatchDeleteEntityTypesRequest();
  buildCounterBatchDeleteEntityTypesRequest++;
  if (buildCounterBatchDeleteEntityTypesRequest < 3) {
    o.entityTypeNames = buildUnnamed3991();
  }
  buildCounterBatchDeleteEntityTypesRequest--;
  return o;
}

checkBatchDeleteEntityTypesRequest(api.BatchDeleteEntityTypesRequest o) {
  buildCounterBatchDeleteEntityTypesRequest++;
  if (buildCounterBatchDeleteEntityTypesRequest < 3) {
    checkUnnamed3991(o.entityTypeNames);
  }
  buildCounterBatchDeleteEntityTypesRequest--;
}

buildUnnamed3992() {
  var o = new core.List<api.Intent>();
  o.add(buildIntent());
  o.add(buildIntent());
  return o;
}

checkUnnamed3992(core.List<api.Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntent(o[0]);
  checkIntent(o[1]);
}

core.int buildCounterBatchDeleteIntentsRequest = 0;
buildBatchDeleteIntentsRequest() {
  var o = new api.BatchDeleteIntentsRequest();
  buildCounterBatchDeleteIntentsRequest++;
  if (buildCounterBatchDeleteIntentsRequest < 3) {
    o.intents = buildUnnamed3992();
  }
  buildCounterBatchDeleteIntentsRequest--;
  return o;
}

checkBatchDeleteIntentsRequest(api.BatchDeleteIntentsRequest o) {
  buildCounterBatchDeleteIntentsRequest++;
  if (buildCounterBatchDeleteIntentsRequest < 3) {
    checkUnnamed3992(o.intents);
  }
  buildCounterBatchDeleteIntentsRequest--;
}

buildUnnamed3993() {
  var o = new core.List<api.EntityTypeEntity>();
  o.add(buildEntityTypeEntity());
  o.add(buildEntityTypeEntity());
  return o;
}

checkUnnamed3993(core.List<api.EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityTypeEntity(o[0]);
  checkEntityTypeEntity(o[1]);
}

core.int buildCounterBatchUpdateEntitiesRequest = 0;
buildBatchUpdateEntitiesRequest() {
  var o = new api.BatchUpdateEntitiesRequest();
  buildCounterBatchUpdateEntitiesRequest++;
  if (buildCounterBatchUpdateEntitiesRequest < 3) {
    o.entities = buildUnnamed3993();
    o.languageCode = "foo";
    o.updateMask = "foo";
  }
  buildCounterBatchUpdateEntitiesRequest--;
  return o;
}

checkBatchUpdateEntitiesRequest(api.BatchUpdateEntitiesRequest o) {
  buildCounterBatchUpdateEntitiesRequest++;
  if (buildCounterBatchUpdateEntitiesRequest < 3) {
    checkUnnamed3993(o.entities);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterBatchUpdateEntitiesRequest--;
}

core.int buildCounterBatchUpdateEntityTypesRequest = 0;
buildBatchUpdateEntityTypesRequest() {
  var o = new api.BatchUpdateEntityTypesRequest();
  buildCounterBatchUpdateEntityTypesRequest++;
  if (buildCounterBatchUpdateEntityTypesRequest < 3) {
    o.entityTypeBatchInline = buildEntityTypeBatch();
    o.entityTypeBatchUri = "foo";
    o.languageCode = "foo";
    o.updateMask = "foo";
  }
  buildCounterBatchUpdateEntityTypesRequest--;
  return o;
}

checkBatchUpdateEntityTypesRequest(api.BatchUpdateEntityTypesRequest o) {
  buildCounterBatchUpdateEntityTypesRequest++;
  if (buildCounterBatchUpdateEntityTypesRequest < 3) {
    checkEntityTypeBatch(o.entityTypeBatchInline);
    unittest.expect(o.entityTypeBatchUri, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterBatchUpdateEntityTypesRequest--;
}

buildUnnamed3994() {
  var o = new core.List<api.EntityType>();
  o.add(buildEntityType());
  o.add(buildEntityType());
  return o;
}

checkUnnamed3994(core.List<api.EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityType(o[0]);
  checkEntityType(o[1]);
}

core.int buildCounterBatchUpdateEntityTypesResponse = 0;
buildBatchUpdateEntityTypesResponse() {
  var o = new api.BatchUpdateEntityTypesResponse();
  buildCounterBatchUpdateEntityTypesResponse++;
  if (buildCounterBatchUpdateEntityTypesResponse < 3) {
    o.entityTypes = buildUnnamed3994();
  }
  buildCounterBatchUpdateEntityTypesResponse--;
  return o;
}

checkBatchUpdateEntityTypesResponse(api.BatchUpdateEntityTypesResponse o) {
  buildCounterBatchUpdateEntityTypesResponse++;
  if (buildCounterBatchUpdateEntityTypesResponse < 3) {
    checkUnnamed3994(o.entityTypes);
  }
  buildCounterBatchUpdateEntityTypesResponse--;
}

core.int buildCounterBatchUpdateIntentsRequest = 0;
buildBatchUpdateIntentsRequest() {
  var o = new api.BatchUpdateIntentsRequest();
  buildCounterBatchUpdateIntentsRequest++;
  if (buildCounterBatchUpdateIntentsRequest < 3) {
    o.intentBatchInline = buildIntentBatch();
    o.intentBatchUri = "foo";
    o.intentView = "foo";
    o.languageCode = "foo";
    o.updateMask = "foo";
  }
  buildCounterBatchUpdateIntentsRequest--;
  return o;
}

checkBatchUpdateIntentsRequest(api.BatchUpdateIntentsRequest o) {
  buildCounterBatchUpdateIntentsRequest++;
  if (buildCounterBatchUpdateIntentsRequest < 3) {
    checkIntentBatch(o.intentBatchInline);
    unittest.expect(o.intentBatchUri, unittest.equals('foo'));
    unittest.expect(o.intentView, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterBatchUpdateIntentsRequest--;
}

buildUnnamed3995() {
  var o = new core.List<api.Intent>();
  o.add(buildIntent());
  o.add(buildIntent());
  return o;
}

checkUnnamed3995(core.List<api.Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntent(o[0]);
  checkIntent(o[1]);
}

core.int buildCounterBatchUpdateIntentsResponse = 0;
buildBatchUpdateIntentsResponse() {
  var o = new api.BatchUpdateIntentsResponse();
  buildCounterBatchUpdateIntentsResponse++;
  if (buildCounterBatchUpdateIntentsResponse < 3) {
    o.intents = buildUnnamed3995();
  }
  buildCounterBatchUpdateIntentsResponse--;
  return o;
}

checkBatchUpdateIntentsResponse(api.BatchUpdateIntentsResponse o) {
  buildCounterBatchUpdateIntentsResponse++;
  if (buildCounterBatchUpdateIntentsResponse < 3) {
    checkUnnamed3995(o.intents);
  }
  buildCounterBatchUpdateIntentsResponse--;
}

buildUnnamed3996() {
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

checkUnnamed3996(core.Map<core.String, core.Object> o) {
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

core.int buildCounterContext = 0;
buildContext() {
  var o = new api.Context();
  buildCounterContext++;
  if (buildCounterContext < 3) {
    o.lifespanCount = 42;
    o.name = "foo";
    o.parameters = buildUnnamed3996();
  }
  buildCounterContext--;
  return o;
}

checkContext(api.Context o) {
  buildCounterContext++;
  if (buildCounterContext < 3) {
    unittest.expect(o.lifespanCount, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3996(o.parameters);
  }
  buildCounterContext--;
}

core.int buildCounterDetectIntentRequest = 0;
buildDetectIntentRequest() {
  var o = new api.DetectIntentRequest();
  buildCounterDetectIntentRequest++;
  if (buildCounterDetectIntentRequest < 3) {
    o.inputAudio = "foo";
    o.queryInput = buildQueryInput();
    o.queryParams = buildQueryParameters();
  }
  buildCounterDetectIntentRequest--;
  return o;
}

checkDetectIntentRequest(api.DetectIntentRequest o) {
  buildCounterDetectIntentRequest++;
  if (buildCounterDetectIntentRequest < 3) {
    unittest.expect(o.inputAudio, unittest.equals('foo'));
    checkQueryInput(o.queryInput);
    checkQueryParameters(o.queryParams);
  }
  buildCounterDetectIntentRequest--;
}

core.int buildCounterDetectIntentResponse = 0;
buildDetectIntentResponse() {
  var o = new api.DetectIntentResponse();
  buildCounterDetectIntentResponse++;
  if (buildCounterDetectIntentResponse < 3) {
    o.queryResult = buildQueryResult();
    o.responseId = "foo";
    o.webhookStatus = buildStatus();
  }
  buildCounterDetectIntentResponse--;
  return o;
}

checkDetectIntentResponse(api.DetectIntentResponse o) {
  buildCounterDetectIntentResponse++;
  if (buildCounterDetectIntentResponse < 3) {
    checkQueryResult(o.queryResult);
    unittest.expect(o.responseId, unittest.equals('foo'));
    checkStatus(o.webhookStatus);
  }
  buildCounterDetectIntentResponse--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

buildUnnamed3997() {
  var o = new core.List<api.EntityTypeEntity>();
  o.add(buildEntityTypeEntity());
  o.add(buildEntityTypeEntity());
  return o;
}

checkUnnamed3997(core.List<api.EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityTypeEntity(o[0]);
  checkEntityTypeEntity(o[1]);
}

core.int buildCounterEntityType = 0;
buildEntityType() {
  var o = new api.EntityType();
  buildCounterEntityType++;
  if (buildCounterEntityType < 3) {
    o.autoExpansionMode = "foo";
    o.displayName = "foo";
    o.entities = buildUnnamed3997();
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterEntityType--;
  return o;
}

checkEntityType(api.EntityType o) {
  buildCounterEntityType++;
  if (buildCounterEntityType < 3) {
    unittest.expect(o.autoExpansionMode, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3997(o.entities);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterEntityType--;
}

buildUnnamed3998() {
  var o = new core.List<api.EntityType>();
  o.add(buildEntityType());
  o.add(buildEntityType());
  return o;
}

checkUnnamed3998(core.List<api.EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityType(o[0]);
  checkEntityType(o[1]);
}

core.int buildCounterEntityTypeBatch = 0;
buildEntityTypeBatch() {
  var o = new api.EntityTypeBatch();
  buildCounterEntityTypeBatch++;
  if (buildCounterEntityTypeBatch < 3) {
    o.entityTypes = buildUnnamed3998();
  }
  buildCounterEntityTypeBatch--;
  return o;
}

checkEntityTypeBatch(api.EntityTypeBatch o) {
  buildCounterEntityTypeBatch++;
  if (buildCounterEntityTypeBatch < 3) {
    checkUnnamed3998(o.entityTypes);
  }
  buildCounterEntityTypeBatch--;
}

buildUnnamed3999() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3999(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEntityTypeEntity = 0;
buildEntityTypeEntity() {
  var o = new api.EntityTypeEntity();
  buildCounterEntityTypeEntity++;
  if (buildCounterEntityTypeEntity < 3) {
    o.synonyms = buildUnnamed3999();
    o.value = "foo";
  }
  buildCounterEntityTypeEntity--;
  return o;
}

checkEntityTypeEntity(api.EntityTypeEntity o) {
  buildCounterEntityTypeEntity++;
  if (buildCounterEntityTypeEntity < 3) {
    checkUnnamed3999(o.synonyms);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterEntityTypeEntity--;
}

buildUnnamed4000() {
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

checkUnnamed4000(core.Map<core.String, core.Object> o) {
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

core.int buildCounterEventInput = 0;
buildEventInput() {
  var o = new api.EventInput();
  buildCounterEventInput++;
  if (buildCounterEventInput < 3) {
    o.languageCode = "foo";
    o.name = "foo";
    o.parameters = buildUnnamed4000();
  }
  buildCounterEventInput--;
  return o;
}

checkEventInput(api.EventInput o) {
  buildCounterEventInput++;
  if (buildCounterEventInput < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4000(o.parameters);
  }
  buildCounterEventInput--;
}

core.int buildCounterExportAgentRequest = 0;
buildExportAgentRequest() {
  var o = new api.ExportAgentRequest();
  buildCounterExportAgentRequest++;
  if (buildCounterExportAgentRequest < 3) {
    o.agentUri = "foo";
  }
  buildCounterExportAgentRequest--;
  return o;
}

checkExportAgentRequest(api.ExportAgentRequest o) {
  buildCounterExportAgentRequest++;
  if (buildCounterExportAgentRequest < 3) {
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterExportAgentRequest--;
}

core.int buildCounterExportAgentResponse = 0;
buildExportAgentResponse() {
  var o = new api.ExportAgentResponse();
  buildCounterExportAgentResponse++;
  if (buildCounterExportAgentResponse < 3) {
    o.agentContent = "foo";
    o.agentUri = "foo";
  }
  buildCounterExportAgentResponse--;
  return o;
}

checkExportAgentResponse(api.ExportAgentResponse o) {
  buildCounterExportAgentResponse++;
  if (buildCounterExportAgentResponse < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterExportAgentResponse--;
}

core.int buildCounterImportAgentRequest = 0;
buildImportAgentRequest() {
  var o = new api.ImportAgentRequest();
  buildCounterImportAgentRequest++;
  if (buildCounterImportAgentRequest < 3) {
    o.agentContent = "foo";
    o.agentUri = "foo";
  }
  buildCounterImportAgentRequest--;
  return o;
}

checkImportAgentRequest(api.ImportAgentRequest o) {
  buildCounterImportAgentRequest++;
  if (buildCounterImportAgentRequest < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterImportAgentRequest--;
}

buildUnnamed4001() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4001(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInputAudioConfig = 0;
buildInputAudioConfig() {
  var o = new api.InputAudioConfig();
  buildCounterInputAudioConfig++;
  if (buildCounterInputAudioConfig < 3) {
    o.audioEncoding = "foo";
    o.languageCode = "foo";
    o.phraseHints = buildUnnamed4001();
    o.sampleRateHertz = 42;
  }
  buildCounterInputAudioConfig--;
  return o;
}

checkInputAudioConfig(api.InputAudioConfig o) {
  buildCounterInputAudioConfig++;
  if (buildCounterInputAudioConfig < 3) {
    unittest.expect(o.audioEncoding, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed4001(o.phraseHints);
    unittest.expect(o.sampleRateHertz, unittest.equals(42));
  }
  buildCounterInputAudioConfig--;
}

buildUnnamed4002() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4002(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4003() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4003(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4004() {
  var o = new core.List<api.IntentFollowupIntentInfo>();
  o.add(buildIntentFollowupIntentInfo());
  o.add(buildIntentFollowupIntentInfo());
  return o;
}

checkUnnamed4004(core.List<api.IntentFollowupIntentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntentFollowupIntentInfo(o[0]);
  checkIntentFollowupIntentInfo(o[1]);
}

buildUnnamed4005() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4005(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed4006() {
  var o = new core.List<api.IntentMessage>();
  o.add(buildIntentMessage());
  o.add(buildIntentMessage());
  return o;
}

checkUnnamed4006(core.List<api.IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntentMessage(o[0]);
  checkIntentMessage(o[1]);
}

buildUnnamed4007() {
  var o = new core.List<api.Context>();
  o.add(buildContext());
  o.add(buildContext());
  return o;
}

checkUnnamed4007(core.List<api.Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContext(o[0]);
  checkContext(o[1]);
}

buildUnnamed4008() {
  var o = new core.List<api.IntentParameter>();
  o.add(buildIntentParameter());
  o.add(buildIntentParameter());
  return o;
}

checkUnnamed4008(core.List<api.IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntentParameter(o[0]);
  checkIntentParameter(o[1]);
}

buildUnnamed4009() {
  var o = new core.List<api.IntentTrainingPhrase>();
  o.add(buildIntentTrainingPhrase());
  o.add(buildIntentTrainingPhrase());
  return o;
}

checkUnnamed4009(core.List<api.IntentTrainingPhrase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntentTrainingPhrase(o[0]);
  checkIntentTrainingPhrase(o[1]);
}

core.int buildCounterIntent = 0;
buildIntent() {
  var o = new api.Intent();
  buildCounterIntent++;
  if (buildCounterIntent < 3) {
    o.action = "foo";
    o.defaultResponsePlatforms = buildUnnamed4002();
    o.displayName = "foo";
    o.events = buildUnnamed4003();
    o.followupIntentInfo = buildUnnamed4004();
    o.inputContextNames = buildUnnamed4005();
    o.isFallback = true;
    o.messages = buildUnnamed4006();
    o.mlEnabled = true;
    o.name = "foo";
    o.outputContexts = buildUnnamed4007();
    o.parameters = buildUnnamed4008();
    o.parentFollowupIntentName = "foo";
    o.priority = 42;
    o.resetContexts = true;
    o.rootFollowupIntentName = "foo";
    o.trainingPhrases = buildUnnamed4009();
    o.webhookState = "foo";
  }
  buildCounterIntent--;
  return o;
}

checkIntent(api.Intent o) {
  buildCounterIntent++;
  if (buildCounterIntent < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed4002(o.defaultResponsePlatforms);
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed4003(o.events);
    checkUnnamed4004(o.followupIntentInfo);
    checkUnnamed4005(o.inputContextNames);
    unittest.expect(o.isFallback, unittest.isTrue);
    checkUnnamed4006(o.messages);
    unittest.expect(o.mlEnabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4007(o.outputContexts);
    checkUnnamed4008(o.parameters);
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    unittest.expect(o.resetContexts, unittest.isTrue);
    unittest.expect(o.rootFollowupIntentName, unittest.equals('foo'));
    checkUnnamed4009(o.trainingPhrases);
    unittest.expect(o.webhookState, unittest.equals('foo'));
  }
  buildCounterIntent--;
}

buildUnnamed4010() {
  var o = new core.List<api.Intent>();
  o.add(buildIntent());
  o.add(buildIntent());
  return o;
}

checkUnnamed4010(core.List<api.Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntent(o[0]);
  checkIntent(o[1]);
}

core.int buildCounterIntentBatch = 0;
buildIntentBatch() {
  var o = new api.IntentBatch();
  buildCounterIntentBatch++;
  if (buildCounterIntentBatch < 3) {
    o.intents = buildUnnamed4010();
  }
  buildCounterIntentBatch--;
  return o;
}

checkIntentBatch(api.IntentBatch o) {
  buildCounterIntentBatch++;
  if (buildCounterIntentBatch < 3) {
    checkUnnamed4010(o.intents);
  }
  buildCounterIntentBatch--;
}

core.int buildCounterIntentFollowupIntentInfo = 0;
buildIntentFollowupIntentInfo() {
  var o = new api.IntentFollowupIntentInfo();
  buildCounterIntentFollowupIntentInfo++;
  if (buildCounterIntentFollowupIntentInfo < 3) {
    o.followupIntentName = "foo";
    o.parentFollowupIntentName = "foo";
  }
  buildCounterIntentFollowupIntentInfo--;
  return o;
}

checkIntentFollowupIntentInfo(api.IntentFollowupIntentInfo o) {
  buildCounterIntentFollowupIntentInfo++;
  if (buildCounterIntentFollowupIntentInfo < 3) {
    unittest.expect(o.followupIntentName, unittest.equals('foo'));
    unittest.expect(o.parentFollowupIntentName, unittest.equals('foo'));
  }
  buildCounterIntentFollowupIntentInfo--;
}

buildUnnamed4011() {
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

checkUnnamed4011(core.Map<core.String, core.Object> o) {
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

core.int buildCounterIntentMessage = 0;
buildIntentMessage() {
  var o = new api.IntentMessage();
  buildCounterIntentMessage++;
  if (buildCounterIntentMessage < 3) {
    o.basicCard = buildIntentMessageBasicCard();
    o.card = buildIntentMessageCard();
    o.carouselSelect = buildIntentMessageCarouselSelect();
    o.image = buildIntentMessageImage();
    o.linkOutSuggestion = buildIntentMessageLinkOutSuggestion();
    o.listSelect = buildIntentMessageListSelect();
    o.payload = buildUnnamed4011();
    o.platform = "foo";
    o.quickReplies = buildIntentMessageQuickReplies();
    o.simpleResponses = buildIntentMessageSimpleResponses();
    o.suggestions = buildIntentMessageSuggestions();
    o.text = buildIntentMessageText();
  }
  buildCounterIntentMessage--;
  return o;
}

checkIntentMessage(api.IntentMessage o) {
  buildCounterIntentMessage++;
  if (buildCounterIntentMessage < 3) {
    checkIntentMessageBasicCard(o.basicCard);
    checkIntentMessageCard(o.card);
    checkIntentMessageCarouselSelect(o.carouselSelect);
    checkIntentMessageImage(o.image);
    checkIntentMessageLinkOutSuggestion(o.linkOutSuggestion);
    checkIntentMessageListSelect(o.listSelect);
    checkUnnamed4011(o.payload);
    unittest.expect(o.platform, unittest.equals('foo'));
    checkIntentMessageQuickReplies(o.quickReplies);
    checkIntentMessageSimpleResponses(o.simpleResponses);
    checkIntentMessageSuggestions(o.suggestions);
    checkIntentMessageText(o.text);
  }
  buildCounterIntentMessage--;
}

buildUnnamed4012() {
  var o = new core.List<api.IntentMessageBasicCardButton>();
  o.add(buildIntentMessageBasicCardButton());
  o.add(buildIntentMessageBasicCardButton());
  return o;
}

checkUnnamed4012(core.List<api.IntentMessageBasicCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntentMessageBasicCardButton(o[0]);
  checkIntentMessageBasicCardButton(o[1]);
}

core.int buildCounterIntentMessageBasicCard = 0;
buildIntentMessageBasicCard() {
  var o = new api.IntentMessageBasicCard();
  buildCounterIntentMessageBasicCard++;
  if (buildCounterIntentMessageBasicCard < 3) {
    o.buttons = buildUnnamed4012();
    o.formattedText = "foo";
    o.image = buildIntentMessageImage();
    o.subtitle = "foo";
    o.title = "foo";
  }
  buildCounterIntentMessageBasicCard--;
  return o;
}

checkIntentMessageBasicCard(api.IntentMessageBasicCard o) {
  buildCounterIntentMessageBasicCard++;
  if (buildCounterIntentMessageBasicCard < 3) {
    checkUnnamed4012(o.buttons);
    unittest.expect(o.formattedText, unittest.equals('foo'));
    checkIntentMessageImage(o.image);
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterIntentMessageBasicCard--;
}

core.int buildCounterIntentMessageBasicCardButton = 0;
buildIntentMessageBasicCardButton() {
  var o = new api.IntentMessageBasicCardButton();
  buildCounterIntentMessageBasicCardButton++;
  if (buildCounterIntentMessageBasicCardButton < 3) {
    o.openUriAction = buildIntentMessageBasicCardButtonOpenUriAction();
    o.title = "foo";
  }
  buildCounterIntentMessageBasicCardButton--;
  return o;
}

checkIntentMessageBasicCardButton(api.IntentMessageBasicCardButton o) {
  buildCounterIntentMessageBasicCardButton++;
  if (buildCounterIntentMessageBasicCardButton < 3) {
    checkIntentMessageBasicCardButtonOpenUriAction(o.openUriAction);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterIntentMessageBasicCardButton--;
}

core.int buildCounterIntentMessageBasicCardButtonOpenUriAction = 0;
buildIntentMessageBasicCardButtonOpenUriAction() {
  var o = new api.IntentMessageBasicCardButtonOpenUriAction();
  buildCounterIntentMessageBasicCardButtonOpenUriAction++;
  if (buildCounterIntentMessageBasicCardButtonOpenUriAction < 3) {
    o.uri = "foo";
  }
  buildCounterIntentMessageBasicCardButtonOpenUriAction--;
  return o;
}

checkIntentMessageBasicCardButtonOpenUriAction(
    api.IntentMessageBasicCardButtonOpenUriAction o) {
  buildCounterIntentMessageBasicCardButtonOpenUriAction++;
  if (buildCounterIntentMessageBasicCardButtonOpenUriAction < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterIntentMessageBasicCardButtonOpenUriAction--;
}

buildUnnamed4013() {
  var o = new core.List<api.IntentMessageCardButton>();
  o.add(buildIntentMessageCardButton());
  o.add(buildIntentMessageCardButton());
  return o;
}

checkUnnamed4013(core.List<api.IntentMessageCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntentMessageCardButton(o[0]);
  checkIntentMessageCardButton(o[1]);
}

core.int buildCounterIntentMessageCard = 0;
buildIntentMessageCard() {
  var o = new api.IntentMessageCard();
  buildCounterIntentMessageCard++;
  if (buildCounterIntentMessageCard < 3) {
    o.buttons = buildUnnamed4013();
    o.imageUri = "foo";
    o.subtitle = "foo";
    o.title = "foo";
  }
  buildCounterIntentMessageCard--;
  return o;
}

checkIntentMessageCard(api.IntentMessageCard o) {
  buildCounterIntentMessageCard++;
  if (buildCounterIntentMessageCard < 3) {
    checkUnnamed4013(o.buttons);
    unittest.expect(o.imageUri, unittest.equals('foo'));
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterIntentMessageCard--;
}

core.int buildCounterIntentMessageCardButton = 0;
buildIntentMessageCardButton() {
  var o = new api.IntentMessageCardButton();
  buildCounterIntentMessageCardButton++;
  if (buildCounterIntentMessageCardButton < 3) {
    o.postback = "foo";
    o.text = "foo";
  }
  buildCounterIntentMessageCardButton--;
  return o;
}

checkIntentMessageCardButton(api.IntentMessageCardButton o) {
  buildCounterIntentMessageCardButton++;
  if (buildCounterIntentMessageCardButton < 3) {
    unittest.expect(o.postback, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterIntentMessageCardButton--;
}

buildUnnamed4014() {
  var o = new core.List<api.IntentMessageCarouselSelectItem>();
  o.add(buildIntentMessageCarouselSelectItem());
  o.add(buildIntentMessageCarouselSelectItem());
  return o;
}

checkUnnamed4014(core.List<api.IntentMessageCarouselSelectItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntentMessageCarouselSelectItem(o[0]);
  checkIntentMessageCarouselSelectItem(o[1]);
}

core.int buildCounterIntentMessageCarouselSelect = 0;
buildIntentMessageCarouselSelect() {
  var o = new api.IntentMessageCarouselSelect();
  buildCounterIntentMessageCarouselSelect++;
  if (buildCounterIntentMessageCarouselSelect < 3) {
    o.items = buildUnnamed4014();
  }
  buildCounterIntentMessageCarouselSelect--;
  return o;
}

checkIntentMessageCarouselSelect(api.IntentMessageCarouselSelect o) {
  buildCounterIntentMessageCarouselSelect++;
  if (buildCounterIntentMessageCarouselSelect < 3) {
    checkUnnamed4014(o.items);
  }
  buildCounterIntentMessageCarouselSelect--;
}

core.int buildCounterIntentMessageCarouselSelectItem = 0;
buildIntentMessageCarouselSelectItem() {
  var o = new api.IntentMessageCarouselSelectItem();
  buildCounterIntentMessageCarouselSelectItem++;
  if (buildCounterIntentMessageCarouselSelectItem < 3) {
    o.description = "foo";
    o.image = buildIntentMessageImage();
    o.info = buildIntentMessageSelectItemInfo();
    o.title = "foo";
  }
  buildCounterIntentMessageCarouselSelectItem--;
  return o;
}

checkIntentMessageCarouselSelectItem(api.IntentMessageCarouselSelectItem o) {
  buildCounterIntentMessageCarouselSelectItem++;
  if (buildCounterIntentMessageCarouselSelectItem < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkIntentMessageImage(o.image);
    checkIntentMessageSelectItemInfo(o.info);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterIntentMessageCarouselSelectItem--;
}

core.int buildCounterIntentMessageImage = 0;
buildIntentMessageImage() {
  var o = new api.IntentMessageImage();
  buildCounterIntentMessageImage++;
  if (buildCounterIntentMessageImage < 3) {
    o.imageUri = "foo";
  }
  buildCounterIntentMessageImage--;
  return o;
}

checkIntentMessageImage(api.IntentMessageImage o) {
  buildCounterIntentMessageImage++;
  if (buildCounterIntentMessageImage < 3) {
    unittest.expect(o.imageUri, unittest.equals('foo'));
  }
  buildCounterIntentMessageImage--;
}

core.int buildCounterIntentMessageLinkOutSuggestion = 0;
buildIntentMessageLinkOutSuggestion() {
  var o = new api.IntentMessageLinkOutSuggestion();
  buildCounterIntentMessageLinkOutSuggestion++;
  if (buildCounterIntentMessageLinkOutSuggestion < 3) {
    o.destinationName = "foo";
    o.uri = "foo";
  }
  buildCounterIntentMessageLinkOutSuggestion--;
  return o;
}

checkIntentMessageLinkOutSuggestion(api.IntentMessageLinkOutSuggestion o) {
  buildCounterIntentMessageLinkOutSuggestion++;
  if (buildCounterIntentMessageLinkOutSuggestion < 3) {
    unittest.expect(o.destinationName, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterIntentMessageLinkOutSuggestion--;
}

buildUnnamed4015() {
  var o = new core.List<api.IntentMessageListSelectItem>();
  o.add(buildIntentMessageListSelectItem());
  o.add(buildIntentMessageListSelectItem());
  return o;
}

checkUnnamed4015(core.List<api.IntentMessageListSelectItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntentMessageListSelectItem(o[0]);
  checkIntentMessageListSelectItem(o[1]);
}

core.int buildCounterIntentMessageListSelect = 0;
buildIntentMessageListSelect() {
  var o = new api.IntentMessageListSelect();
  buildCounterIntentMessageListSelect++;
  if (buildCounterIntentMessageListSelect < 3) {
    o.items = buildUnnamed4015();
    o.title = "foo";
  }
  buildCounterIntentMessageListSelect--;
  return o;
}

checkIntentMessageListSelect(api.IntentMessageListSelect o) {
  buildCounterIntentMessageListSelect++;
  if (buildCounterIntentMessageListSelect < 3) {
    checkUnnamed4015(o.items);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterIntentMessageListSelect--;
}

core.int buildCounterIntentMessageListSelectItem = 0;
buildIntentMessageListSelectItem() {
  var o = new api.IntentMessageListSelectItem();
  buildCounterIntentMessageListSelectItem++;
  if (buildCounterIntentMessageListSelectItem < 3) {
    o.description = "foo";
    o.image = buildIntentMessageImage();
    o.info = buildIntentMessageSelectItemInfo();
    o.title = "foo";
  }
  buildCounterIntentMessageListSelectItem--;
  return o;
}

checkIntentMessageListSelectItem(api.IntentMessageListSelectItem o) {
  buildCounterIntentMessageListSelectItem++;
  if (buildCounterIntentMessageListSelectItem < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkIntentMessageImage(o.image);
    checkIntentMessageSelectItemInfo(o.info);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterIntentMessageListSelectItem--;
}

buildUnnamed4016() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4016(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIntentMessageQuickReplies = 0;
buildIntentMessageQuickReplies() {
  var o = new api.IntentMessageQuickReplies();
  buildCounterIntentMessageQuickReplies++;
  if (buildCounterIntentMessageQuickReplies < 3) {
    o.quickReplies = buildUnnamed4016();
    o.title = "foo";
  }
  buildCounterIntentMessageQuickReplies--;
  return o;
}

checkIntentMessageQuickReplies(api.IntentMessageQuickReplies o) {
  buildCounterIntentMessageQuickReplies++;
  if (buildCounterIntentMessageQuickReplies < 3) {
    checkUnnamed4016(o.quickReplies);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterIntentMessageQuickReplies--;
}

buildUnnamed4017() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4017(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIntentMessageSelectItemInfo = 0;
buildIntentMessageSelectItemInfo() {
  var o = new api.IntentMessageSelectItemInfo();
  buildCounterIntentMessageSelectItemInfo++;
  if (buildCounterIntentMessageSelectItemInfo < 3) {
    o.key = "foo";
    o.synonyms = buildUnnamed4017();
  }
  buildCounterIntentMessageSelectItemInfo--;
  return o;
}

checkIntentMessageSelectItemInfo(api.IntentMessageSelectItemInfo o) {
  buildCounterIntentMessageSelectItemInfo++;
  if (buildCounterIntentMessageSelectItemInfo < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed4017(o.synonyms);
  }
  buildCounterIntentMessageSelectItemInfo--;
}

core.int buildCounterIntentMessageSimpleResponse = 0;
buildIntentMessageSimpleResponse() {
  var o = new api.IntentMessageSimpleResponse();
  buildCounterIntentMessageSimpleResponse++;
  if (buildCounterIntentMessageSimpleResponse < 3) {
    o.displayText = "foo";
    o.ssml = "foo";
    o.textToSpeech = "foo";
  }
  buildCounterIntentMessageSimpleResponse--;
  return o;
}

checkIntentMessageSimpleResponse(api.IntentMessageSimpleResponse o) {
  buildCounterIntentMessageSimpleResponse++;
  if (buildCounterIntentMessageSimpleResponse < 3) {
    unittest.expect(o.displayText, unittest.equals('foo'));
    unittest.expect(o.ssml, unittest.equals('foo'));
    unittest.expect(o.textToSpeech, unittest.equals('foo'));
  }
  buildCounterIntentMessageSimpleResponse--;
}

buildUnnamed4018() {
  var o = new core.List<api.IntentMessageSimpleResponse>();
  o.add(buildIntentMessageSimpleResponse());
  o.add(buildIntentMessageSimpleResponse());
  return o;
}

checkUnnamed4018(core.List<api.IntentMessageSimpleResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntentMessageSimpleResponse(o[0]);
  checkIntentMessageSimpleResponse(o[1]);
}

core.int buildCounterIntentMessageSimpleResponses = 0;
buildIntentMessageSimpleResponses() {
  var o = new api.IntentMessageSimpleResponses();
  buildCounterIntentMessageSimpleResponses++;
  if (buildCounterIntentMessageSimpleResponses < 3) {
    o.simpleResponses = buildUnnamed4018();
  }
  buildCounterIntentMessageSimpleResponses--;
  return o;
}

checkIntentMessageSimpleResponses(api.IntentMessageSimpleResponses o) {
  buildCounterIntentMessageSimpleResponses++;
  if (buildCounterIntentMessageSimpleResponses < 3) {
    checkUnnamed4018(o.simpleResponses);
  }
  buildCounterIntentMessageSimpleResponses--;
}

core.int buildCounterIntentMessageSuggestion = 0;
buildIntentMessageSuggestion() {
  var o = new api.IntentMessageSuggestion();
  buildCounterIntentMessageSuggestion++;
  if (buildCounterIntentMessageSuggestion < 3) {
    o.title = "foo";
  }
  buildCounterIntentMessageSuggestion--;
  return o;
}

checkIntentMessageSuggestion(api.IntentMessageSuggestion o) {
  buildCounterIntentMessageSuggestion++;
  if (buildCounterIntentMessageSuggestion < 3) {
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterIntentMessageSuggestion--;
}

buildUnnamed4019() {
  var o = new core.List<api.IntentMessageSuggestion>();
  o.add(buildIntentMessageSuggestion());
  o.add(buildIntentMessageSuggestion());
  return o;
}

checkUnnamed4019(core.List<api.IntentMessageSuggestion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntentMessageSuggestion(o[0]);
  checkIntentMessageSuggestion(o[1]);
}

core.int buildCounterIntentMessageSuggestions = 0;
buildIntentMessageSuggestions() {
  var o = new api.IntentMessageSuggestions();
  buildCounterIntentMessageSuggestions++;
  if (buildCounterIntentMessageSuggestions < 3) {
    o.suggestions = buildUnnamed4019();
  }
  buildCounterIntentMessageSuggestions--;
  return o;
}

checkIntentMessageSuggestions(api.IntentMessageSuggestions o) {
  buildCounterIntentMessageSuggestions++;
  if (buildCounterIntentMessageSuggestions < 3) {
    checkUnnamed4019(o.suggestions);
  }
  buildCounterIntentMessageSuggestions--;
}

buildUnnamed4020() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4020(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIntentMessageText = 0;
buildIntentMessageText() {
  var o = new api.IntentMessageText();
  buildCounterIntentMessageText++;
  if (buildCounterIntentMessageText < 3) {
    o.text = buildUnnamed4020();
  }
  buildCounterIntentMessageText--;
  return o;
}

checkIntentMessageText(api.IntentMessageText o) {
  buildCounterIntentMessageText++;
  if (buildCounterIntentMessageText < 3) {
    checkUnnamed4020(o.text);
  }
  buildCounterIntentMessageText--;
}

buildUnnamed4021() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4021(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIntentParameter = 0;
buildIntentParameter() {
  var o = new api.IntentParameter();
  buildCounterIntentParameter++;
  if (buildCounterIntentParameter < 3) {
    o.defaultValue = "foo";
    o.displayName = "foo";
    o.entityTypeDisplayName = "foo";
    o.isList = true;
    o.mandatory = true;
    o.name = "foo";
    o.prompts = buildUnnamed4021();
    o.value = "foo";
  }
  buildCounterIntentParameter--;
  return o;
}

checkIntentParameter(api.IntentParameter o) {
  buildCounterIntentParameter++;
  if (buildCounterIntentParameter < 3) {
    unittest.expect(o.defaultValue, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.entityTypeDisplayName, unittest.equals('foo'));
    unittest.expect(o.isList, unittest.isTrue);
    unittest.expect(o.mandatory, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4021(o.prompts);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterIntentParameter--;
}

buildUnnamed4022() {
  var o = new core.List<api.IntentTrainingPhrasePart>();
  o.add(buildIntentTrainingPhrasePart());
  o.add(buildIntentTrainingPhrasePart());
  return o;
}

checkUnnamed4022(core.List<api.IntentTrainingPhrasePart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntentTrainingPhrasePart(o[0]);
  checkIntentTrainingPhrasePart(o[1]);
}

core.int buildCounterIntentTrainingPhrase = 0;
buildIntentTrainingPhrase() {
  var o = new api.IntentTrainingPhrase();
  buildCounterIntentTrainingPhrase++;
  if (buildCounterIntentTrainingPhrase < 3) {
    o.name = "foo";
    o.parts = buildUnnamed4022();
    o.timesAddedCount = 42;
    o.type = "foo";
  }
  buildCounterIntentTrainingPhrase--;
  return o;
}

checkIntentTrainingPhrase(api.IntentTrainingPhrase o) {
  buildCounterIntentTrainingPhrase++;
  if (buildCounterIntentTrainingPhrase < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4022(o.parts);
    unittest.expect(o.timesAddedCount, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterIntentTrainingPhrase--;
}

core.int buildCounterIntentTrainingPhrasePart = 0;
buildIntentTrainingPhrasePart() {
  var o = new api.IntentTrainingPhrasePart();
  buildCounterIntentTrainingPhrasePart++;
  if (buildCounterIntentTrainingPhrasePart < 3) {
    o.alias = "foo";
    o.entityType = "foo";
    o.text = "foo";
    o.userDefined = true;
  }
  buildCounterIntentTrainingPhrasePart--;
  return o;
}

checkIntentTrainingPhrasePart(api.IntentTrainingPhrasePart o) {
  buildCounterIntentTrainingPhrasePart++;
  if (buildCounterIntentTrainingPhrasePart < 3) {
    unittest.expect(o.alias, unittest.equals('foo'));
    unittest.expect(o.entityType, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
    unittest.expect(o.userDefined, unittest.isTrue);
  }
  buildCounterIntentTrainingPhrasePart--;
}

core.int buildCounterLatLng = 0;
buildLatLng() {
  var o = new api.LatLng();
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterLatLng--;
  return o;
}

checkLatLng(api.LatLng o) {
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterLatLng--;
}

buildUnnamed4023() {
  var o = new core.List<api.Context>();
  o.add(buildContext());
  o.add(buildContext());
  return o;
}

checkUnnamed4023(core.List<api.Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContext(o[0]);
  checkContext(o[1]);
}

core.int buildCounterListContextsResponse = 0;
buildListContextsResponse() {
  var o = new api.ListContextsResponse();
  buildCounterListContextsResponse++;
  if (buildCounterListContextsResponse < 3) {
    o.contexts = buildUnnamed4023();
    o.nextPageToken = "foo";
  }
  buildCounterListContextsResponse--;
  return o;
}

checkListContextsResponse(api.ListContextsResponse o) {
  buildCounterListContextsResponse++;
  if (buildCounterListContextsResponse < 3) {
    checkUnnamed4023(o.contexts);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListContextsResponse--;
}

buildUnnamed4024() {
  var o = new core.List<api.EntityType>();
  o.add(buildEntityType());
  o.add(buildEntityType());
  return o;
}

checkUnnamed4024(core.List<api.EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityType(o[0]);
  checkEntityType(o[1]);
}

core.int buildCounterListEntityTypesResponse = 0;
buildListEntityTypesResponse() {
  var o = new api.ListEntityTypesResponse();
  buildCounterListEntityTypesResponse++;
  if (buildCounterListEntityTypesResponse < 3) {
    o.entityTypes = buildUnnamed4024();
    o.nextPageToken = "foo";
  }
  buildCounterListEntityTypesResponse--;
  return o;
}

checkListEntityTypesResponse(api.ListEntityTypesResponse o) {
  buildCounterListEntityTypesResponse++;
  if (buildCounterListEntityTypesResponse < 3) {
    checkUnnamed4024(o.entityTypes);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListEntityTypesResponse--;
}

buildUnnamed4025() {
  var o = new core.List<api.Intent>();
  o.add(buildIntent());
  o.add(buildIntent());
  return o;
}

checkUnnamed4025(core.List<api.Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntent(o[0]);
  checkIntent(o[1]);
}

core.int buildCounterListIntentsResponse = 0;
buildListIntentsResponse() {
  var o = new api.ListIntentsResponse();
  buildCounterListIntentsResponse++;
  if (buildCounterListIntentsResponse < 3) {
    o.intents = buildUnnamed4025();
    o.nextPageToken = "foo";
  }
  buildCounterListIntentsResponse--;
  return o;
}

checkListIntentsResponse(api.ListIntentsResponse o) {
  buildCounterListIntentsResponse++;
  if (buildCounterListIntentsResponse < 3) {
    checkUnnamed4025(o.intents);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListIntentsResponse--;
}

buildUnnamed4026() {
  var o = new core.List<api.SessionEntityType>();
  o.add(buildSessionEntityType());
  o.add(buildSessionEntityType());
  return o;
}

checkUnnamed4026(core.List<api.SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSessionEntityType(o[0]);
  checkSessionEntityType(o[1]);
}

core.int buildCounterListSessionEntityTypesResponse = 0;
buildListSessionEntityTypesResponse() {
  var o = new api.ListSessionEntityTypesResponse();
  buildCounterListSessionEntityTypesResponse++;
  if (buildCounterListSessionEntityTypesResponse < 3) {
    o.nextPageToken = "foo";
    o.sessionEntityTypes = buildUnnamed4026();
  }
  buildCounterListSessionEntityTypesResponse--;
  return o;
}

checkListSessionEntityTypesResponse(api.ListSessionEntityTypesResponse o) {
  buildCounterListSessionEntityTypesResponse++;
  if (buildCounterListSessionEntityTypesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4026(o.sessionEntityTypes);
  }
  buildCounterListSessionEntityTypesResponse--;
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

buildUnnamed4028() {
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

checkUnnamed4028(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed4027();
    o.name = "foo";
    o.response = buildUnnamed4028();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed4027(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4028(o.response);
  }
  buildCounterOperation--;
}

buildUnnamed4029() {
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

checkUnnamed4029(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOriginalDetectIntentRequest = 0;
buildOriginalDetectIntentRequest() {
  var o = new api.OriginalDetectIntentRequest();
  buildCounterOriginalDetectIntentRequest++;
  if (buildCounterOriginalDetectIntentRequest < 3) {
    o.payload = buildUnnamed4029();
    o.source = "foo";
  }
  buildCounterOriginalDetectIntentRequest--;
  return o;
}

checkOriginalDetectIntentRequest(api.OriginalDetectIntentRequest o) {
  buildCounterOriginalDetectIntentRequest++;
  if (buildCounterOriginalDetectIntentRequest < 3) {
    checkUnnamed4029(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterOriginalDetectIntentRequest--;
}

core.int buildCounterQueryInput = 0;
buildQueryInput() {
  var o = new api.QueryInput();
  buildCounterQueryInput++;
  if (buildCounterQueryInput < 3) {
    o.audioConfig = buildInputAudioConfig();
    o.event = buildEventInput();
    o.text = buildTextInput();
  }
  buildCounterQueryInput--;
  return o;
}

checkQueryInput(api.QueryInput o) {
  buildCounterQueryInput++;
  if (buildCounterQueryInput < 3) {
    checkInputAudioConfig(o.audioConfig);
    checkEventInput(o.event);
    checkTextInput(o.text);
  }
  buildCounterQueryInput--;
}

buildUnnamed4030() {
  var o = new core.List<api.Context>();
  o.add(buildContext());
  o.add(buildContext());
  return o;
}

checkUnnamed4030(core.List<api.Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContext(o[0]);
  checkContext(o[1]);
}

buildUnnamed4031() {
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

checkUnnamed4031(core.Map<core.String, core.Object> o) {
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

buildUnnamed4032() {
  var o = new core.List<api.SessionEntityType>();
  o.add(buildSessionEntityType());
  o.add(buildSessionEntityType());
  return o;
}

checkUnnamed4032(core.List<api.SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSessionEntityType(o[0]);
  checkSessionEntityType(o[1]);
}

core.int buildCounterQueryParameters = 0;
buildQueryParameters() {
  var o = new api.QueryParameters();
  buildCounterQueryParameters++;
  if (buildCounterQueryParameters < 3) {
    o.contexts = buildUnnamed4030();
    o.geoLocation = buildLatLng();
    o.payload = buildUnnamed4031();
    o.resetContexts = true;
    o.sessionEntityTypes = buildUnnamed4032();
    o.timeZone = "foo";
  }
  buildCounterQueryParameters--;
  return o;
}

checkQueryParameters(api.QueryParameters o) {
  buildCounterQueryParameters++;
  if (buildCounterQueryParameters < 3) {
    checkUnnamed4030(o.contexts);
    checkLatLng(o.geoLocation);
    checkUnnamed4031(o.payload);
    unittest.expect(o.resetContexts, unittest.isTrue);
    checkUnnamed4032(o.sessionEntityTypes);
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterQueryParameters--;
}

buildUnnamed4033() {
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

checkUnnamed4033(core.Map<core.String, core.Object> o) {
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

buildUnnamed4034() {
  var o = new core.List<api.IntentMessage>();
  o.add(buildIntentMessage());
  o.add(buildIntentMessage());
  return o;
}

checkUnnamed4034(core.List<api.IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntentMessage(o[0]);
  checkIntentMessage(o[1]);
}

buildUnnamed4035() {
  var o = new core.List<api.Context>();
  o.add(buildContext());
  o.add(buildContext());
  return o;
}

checkUnnamed4035(core.List<api.Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContext(o[0]);
  checkContext(o[1]);
}

buildUnnamed4036() {
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

checkUnnamed4036(core.Map<core.String, core.Object> o) {
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

core.int buildCounterQueryResult = 0;
buildQueryResult() {
  var o = new api.QueryResult();
  buildCounterQueryResult++;
  if (buildCounterQueryResult < 3) {
    o.action = "foo";
    o.allRequiredParamsPresent = true;
    o.diagnosticInfo = buildUnnamed4033();
    o.fulfillmentMessages = buildUnnamed4034();
    o.fulfillmentText = "foo";
    o.intent = buildIntent();
    o.intentDetectionConfidence = 42.0;
    o.languageCode = "foo";
    o.outputContexts = buildUnnamed4035();
    o.parameters = buildUnnamed4036();
    o.queryText = "foo";
    o.speechRecognitionConfidence = 42.0;
    o.webhookPayload = buildUnnamed4037();
    o.webhookSource = "foo";
  }
  buildCounterQueryResult--;
  return o;
}

checkQueryResult(api.QueryResult o) {
  buildCounterQueryResult++;
  if (buildCounterQueryResult < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.allRequiredParamsPresent, unittest.isTrue);
    checkUnnamed4033(o.diagnosticInfo);
    checkUnnamed4034(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkIntent(o.intent);
    unittest.expect(o.intentDetectionConfidence, unittest.equals(42.0));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed4035(o.outputContexts);
    checkUnnamed4036(o.parameters);
    unittest.expect(o.queryText, unittest.equals('foo'));
    unittest.expect(o.speechRecognitionConfidence, unittest.equals(42.0));
    checkUnnamed4037(o.webhookPayload);
    unittest.expect(o.webhookSource, unittest.equals('foo'));
  }
  buildCounterQueryResult--;
}

core.int buildCounterRestoreAgentRequest = 0;
buildRestoreAgentRequest() {
  var o = new api.RestoreAgentRequest();
  buildCounterRestoreAgentRequest++;
  if (buildCounterRestoreAgentRequest < 3) {
    o.agentContent = "foo";
    o.agentUri = "foo";
  }
  buildCounterRestoreAgentRequest--;
  return o;
}

checkRestoreAgentRequest(api.RestoreAgentRequest o) {
  buildCounterRestoreAgentRequest++;
  if (buildCounterRestoreAgentRequest < 3) {
    unittest.expect(o.agentContent, unittest.equals('foo'));
    unittest.expect(o.agentUri, unittest.equals('foo'));
  }
  buildCounterRestoreAgentRequest--;
}

buildUnnamed4038() {
  var o = new core.List<api.Agent>();
  o.add(buildAgent());
  o.add(buildAgent());
  return o;
}

checkUnnamed4038(core.List<api.Agent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAgent(o[0]);
  checkAgent(o[1]);
}

core.int buildCounterSearchAgentsResponse = 0;
buildSearchAgentsResponse() {
  var o = new api.SearchAgentsResponse();
  buildCounterSearchAgentsResponse++;
  if (buildCounterSearchAgentsResponse < 3) {
    o.agents = buildUnnamed4038();
    o.nextPageToken = "foo";
  }
  buildCounterSearchAgentsResponse--;
  return o;
}

checkSearchAgentsResponse(api.SearchAgentsResponse o) {
  buildCounterSearchAgentsResponse++;
  if (buildCounterSearchAgentsResponse < 3) {
    checkUnnamed4038(o.agents);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchAgentsResponse--;
}

buildUnnamed4039() {
  var o = new core.List<api.EntityTypeEntity>();
  o.add(buildEntityTypeEntity());
  o.add(buildEntityTypeEntity());
  return o;
}

checkUnnamed4039(core.List<api.EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityTypeEntity(o[0]);
  checkEntityTypeEntity(o[1]);
}

core.int buildCounterSessionEntityType = 0;
buildSessionEntityType() {
  var o = new api.SessionEntityType();
  buildCounterSessionEntityType++;
  if (buildCounterSessionEntityType < 3) {
    o.entities = buildUnnamed4039();
    o.entityOverrideMode = "foo";
    o.name = "foo";
  }
  buildCounterSessionEntityType--;
  return o;
}

checkSessionEntityType(api.SessionEntityType o) {
  buildCounterSessionEntityType++;
  if (buildCounterSessionEntityType < 3) {
    checkUnnamed4039(o.entities);
    unittest.expect(o.entityOverrideMode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterSessionEntityType--;
}

buildUnnamed4040() {
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

checkUnnamed4040(core.Map<core.String, core.Object> o) {
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

buildUnnamed4041() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed4040());
  o.add(buildUnnamed4040());
  return o;
}

checkUnnamed4041(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4040(o[0]);
  checkUnnamed4040(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4041();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4041(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTextInput = 0;
buildTextInput() {
  var o = new api.TextInput();
  buildCounterTextInput++;
  if (buildCounterTextInput < 3) {
    o.languageCode = "foo";
    o.text = "foo";
  }
  buildCounterTextInput--;
  return o;
}

checkTextInput(api.TextInput o) {
  buildCounterTextInput++;
  if (buildCounterTextInput < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterTextInput--;
}

core.int buildCounterTrainAgentRequest = 0;
buildTrainAgentRequest() {
  var o = new api.TrainAgentRequest();
  buildCounterTrainAgentRequest++;
  if (buildCounterTrainAgentRequest < 3) {}
  buildCounterTrainAgentRequest--;
  return o;
}

checkTrainAgentRequest(api.TrainAgentRequest o) {
  buildCounterTrainAgentRequest++;
  if (buildCounterTrainAgentRequest < 3) {}
  buildCounterTrainAgentRequest--;
}

core.int buildCounterWebhookRequest = 0;
buildWebhookRequest() {
  var o = new api.WebhookRequest();
  buildCounterWebhookRequest++;
  if (buildCounterWebhookRequest < 3) {
    o.originalDetectIntentRequest = buildOriginalDetectIntentRequest();
    o.queryResult = buildQueryResult();
    o.responseId = "foo";
    o.session = "foo";
  }
  buildCounterWebhookRequest--;
  return o;
}

checkWebhookRequest(api.WebhookRequest o) {
  buildCounterWebhookRequest++;
  if (buildCounterWebhookRequest < 3) {
    checkOriginalDetectIntentRequest(o.originalDetectIntentRequest);
    checkQueryResult(o.queryResult);
    unittest.expect(o.responseId, unittest.equals('foo'));
    unittest.expect(o.session, unittest.equals('foo'));
  }
  buildCounterWebhookRequest--;
}

buildUnnamed4042() {
  var o = new core.List<api.IntentMessage>();
  o.add(buildIntentMessage());
  o.add(buildIntentMessage());
  return o;
}

checkUnnamed4042(core.List<api.IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntentMessage(o[0]);
  checkIntentMessage(o[1]);
}

buildUnnamed4043() {
  var o = new core.List<api.Context>();
  o.add(buildContext());
  o.add(buildContext());
  return o;
}

checkUnnamed4043(core.List<api.Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContext(o[0]);
  checkContext(o[1]);
}

buildUnnamed4044() {
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

checkUnnamed4044(core.Map<core.String, core.Object> o) {
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

core.int buildCounterWebhookResponse = 0;
buildWebhookResponse() {
  var o = new api.WebhookResponse();
  buildCounterWebhookResponse++;
  if (buildCounterWebhookResponse < 3) {
    o.followupEventInput = buildEventInput();
    o.fulfillmentMessages = buildUnnamed4042();
    o.fulfillmentText = "foo";
    o.outputContexts = buildUnnamed4043();
    o.payload = buildUnnamed4044();
    o.source = "foo";
  }
  buildCounterWebhookResponse--;
  return o;
}

checkWebhookResponse(api.WebhookResponse o) {
  buildCounterWebhookResponse++;
  if (buildCounterWebhookResponse < 3) {
    checkEventInput(o.followupEventInput);
    checkUnnamed4042(o.fulfillmentMessages);
    unittest.expect(o.fulfillmentText, unittest.equals('foo'));
    checkUnnamed4043(o.outputContexts);
    checkUnnamed4044(o.payload);
    unittest.expect(o.source, unittest.equals('foo'));
  }
  buildCounterWebhookResponse--;
}

main() {
  unittest.group("obj-schema-Agent", () {
    unittest.test("to-json--from-json", () {
      var o = buildAgent();
      var od = new api.Agent.fromJson(o.toJson());
      checkAgent(od);
    });
  });

  unittest.group("obj-schema-BatchCreateEntitiesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchCreateEntitiesRequest();
      var od = new api.BatchCreateEntitiesRequest.fromJson(o.toJson());
      checkBatchCreateEntitiesRequest(od);
    });
  });

  unittest.group("obj-schema-BatchDeleteEntitiesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchDeleteEntitiesRequest();
      var od = new api.BatchDeleteEntitiesRequest.fromJson(o.toJson());
      checkBatchDeleteEntitiesRequest(od);
    });
  });

  unittest.group("obj-schema-BatchDeleteEntityTypesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchDeleteEntityTypesRequest();
      var od = new api.BatchDeleteEntityTypesRequest.fromJson(o.toJson());
      checkBatchDeleteEntityTypesRequest(od);
    });
  });

  unittest.group("obj-schema-BatchDeleteIntentsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchDeleteIntentsRequest();
      var od = new api.BatchDeleteIntentsRequest.fromJson(o.toJson());
      checkBatchDeleteIntentsRequest(od);
    });
  });

  unittest.group("obj-schema-BatchUpdateEntitiesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchUpdateEntitiesRequest();
      var od = new api.BatchUpdateEntitiesRequest.fromJson(o.toJson());
      checkBatchUpdateEntitiesRequest(od);
    });
  });

  unittest.group("obj-schema-BatchUpdateEntityTypesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchUpdateEntityTypesRequest();
      var od = new api.BatchUpdateEntityTypesRequest.fromJson(o.toJson());
      checkBatchUpdateEntityTypesRequest(od);
    });
  });

  unittest.group("obj-schema-BatchUpdateEntityTypesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchUpdateEntityTypesResponse();
      var od = new api.BatchUpdateEntityTypesResponse.fromJson(o.toJson());
      checkBatchUpdateEntityTypesResponse(od);
    });
  });

  unittest.group("obj-schema-BatchUpdateIntentsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchUpdateIntentsRequest();
      var od = new api.BatchUpdateIntentsRequest.fromJson(o.toJson());
      checkBatchUpdateIntentsRequest(od);
    });
  });

  unittest.group("obj-schema-BatchUpdateIntentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchUpdateIntentsResponse();
      var od = new api.BatchUpdateIntentsResponse.fromJson(o.toJson());
      checkBatchUpdateIntentsResponse(od);
    });
  });

  unittest.group("obj-schema-Context", () {
    unittest.test("to-json--from-json", () {
      var o = buildContext();
      var od = new api.Context.fromJson(o.toJson());
      checkContext(od);
    });
  });

  unittest.group("obj-schema-DetectIntentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDetectIntentRequest();
      var od = new api.DetectIntentRequest.fromJson(o.toJson());
      checkDetectIntentRequest(od);
    });
  });

  unittest.group("obj-schema-DetectIntentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDetectIntentResponse();
      var od = new api.DetectIntentResponse.fromJson(o.toJson());
      checkDetectIntentResponse(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-EntityType", () {
    unittest.test("to-json--from-json", () {
      var o = buildEntityType();
      var od = new api.EntityType.fromJson(o.toJson());
      checkEntityType(od);
    });
  });

  unittest.group("obj-schema-EntityTypeBatch", () {
    unittest.test("to-json--from-json", () {
      var o = buildEntityTypeBatch();
      var od = new api.EntityTypeBatch.fromJson(o.toJson());
      checkEntityTypeBatch(od);
    });
  });

  unittest.group("obj-schema-EntityTypeEntity", () {
    unittest.test("to-json--from-json", () {
      var o = buildEntityTypeEntity();
      var od = new api.EntityTypeEntity.fromJson(o.toJson());
      checkEntityTypeEntity(od);
    });
  });

  unittest.group("obj-schema-EventInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildEventInput();
      var od = new api.EventInput.fromJson(o.toJson());
      checkEventInput(od);
    });
  });

  unittest.group("obj-schema-ExportAgentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportAgentRequest();
      var od = new api.ExportAgentRequest.fromJson(o.toJson());
      checkExportAgentRequest(od);
    });
  });

  unittest.group("obj-schema-ExportAgentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportAgentResponse();
      var od = new api.ExportAgentResponse.fromJson(o.toJson());
      checkExportAgentResponse(od);
    });
  });

  unittest.group("obj-schema-ImportAgentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportAgentRequest();
      var od = new api.ImportAgentRequest.fromJson(o.toJson());
      checkImportAgentRequest(od);
    });
  });

  unittest.group("obj-schema-InputAudioConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildInputAudioConfig();
      var od = new api.InputAudioConfig.fromJson(o.toJson());
      checkInputAudioConfig(od);
    });
  });

  unittest.group("obj-schema-Intent", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntent();
      var od = new api.Intent.fromJson(o.toJson());
      checkIntent(od);
    });
  });

  unittest.group("obj-schema-IntentBatch", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentBatch();
      var od = new api.IntentBatch.fromJson(o.toJson());
      checkIntentBatch(od);
    });
  });

  unittest.group("obj-schema-IntentFollowupIntentInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentFollowupIntentInfo();
      var od = new api.IntentFollowupIntentInfo.fromJson(o.toJson());
      checkIntentFollowupIntentInfo(od);
    });
  });

  unittest.group("obj-schema-IntentMessage", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentMessage();
      var od = new api.IntentMessage.fromJson(o.toJson());
      checkIntentMessage(od);
    });
  });

  unittest.group("obj-schema-IntentMessageBasicCard", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentMessageBasicCard();
      var od = new api.IntentMessageBasicCard.fromJson(o.toJson());
      checkIntentMessageBasicCard(od);
    });
  });

  unittest.group("obj-schema-IntentMessageBasicCardButton", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentMessageBasicCardButton();
      var od = new api.IntentMessageBasicCardButton.fromJson(o.toJson());
      checkIntentMessageBasicCardButton(od);
    });
  });

  unittest.group("obj-schema-IntentMessageBasicCardButtonOpenUriAction", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentMessageBasicCardButtonOpenUriAction();
      var od = new api.IntentMessageBasicCardButtonOpenUriAction.fromJson(
          o.toJson());
      checkIntentMessageBasicCardButtonOpenUriAction(od);
    });
  });

  unittest.group("obj-schema-IntentMessageCard", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentMessageCard();
      var od = new api.IntentMessageCard.fromJson(o.toJson());
      checkIntentMessageCard(od);
    });
  });

  unittest.group("obj-schema-IntentMessageCardButton", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentMessageCardButton();
      var od = new api.IntentMessageCardButton.fromJson(o.toJson());
      checkIntentMessageCardButton(od);
    });
  });

  unittest.group("obj-schema-IntentMessageCarouselSelect", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentMessageCarouselSelect();
      var od = new api.IntentMessageCarouselSelect.fromJson(o.toJson());
      checkIntentMessageCarouselSelect(od);
    });
  });

  unittest.group("obj-schema-IntentMessageCarouselSelectItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentMessageCarouselSelectItem();
      var od = new api.IntentMessageCarouselSelectItem.fromJson(o.toJson());
      checkIntentMessageCarouselSelectItem(od);
    });
  });

  unittest.group("obj-schema-IntentMessageImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentMessageImage();
      var od = new api.IntentMessageImage.fromJson(o.toJson());
      checkIntentMessageImage(od);
    });
  });

  unittest.group("obj-schema-IntentMessageLinkOutSuggestion", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentMessageLinkOutSuggestion();
      var od = new api.IntentMessageLinkOutSuggestion.fromJson(o.toJson());
      checkIntentMessageLinkOutSuggestion(od);
    });
  });

  unittest.group("obj-schema-IntentMessageListSelect", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentMessageListSelect();
      var od = new api.IntentMessageListSelect.fromJson(o.toJson());
      checkIntentMessageListSelect(od);
    });
  });

  unittest.group("obj-schema-IntentMessageListSelectItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentMessageListSelectItem();
      var od = new api.IntentMessageListSelectItem.fromJson(o.toJson());
      checkIntentMessageListSelectItem(od);
    });
  });

  unittest.group("obj-schema-IntentMessageQuickReplies", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentMessageQuickReplies();
      var od = new api.IntentMessageQuickReplies.fromJson(o.toJson());
      checkIntentMessageQuickReplies(od);
    });
  });

  unittest.group("obj-schema-IntentMessageSelectItemInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentMessageSelectItemInfo();
      var od = new api.IntentMessageSelectItemInfo.fromJson(o.toJson());
      checkIntentMessageSelectItemInfo(od);
    });
  });

  unittest.group("obj-schema-IntentMessageSimpleResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentMessageSimpleResponse();
      var od = new api.IntentMessageSimpleResponse.fromJson(o.toJson());
      checkIntentMessageSimpleResponse(od);
    });
  });

  unittest.group("obj-schema-IntentMessageSimpleResponses", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentMessageSimpleResponses();
      var od = new api.IntentMessageSimpleResponses.fromJson(o.toJson());
      checkIntentMessageSimpleResponses(od);
    });
  });

  unittest.group("obj-schema-IntentMessageSuggestion", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentMessageSuggestion();
      var od = new api.IntentMessageSuggestion.fromJson(o.toJson());
      checkIntentMessageSuggestion(od);
    });
  });

  unittest.group("obj-schema-IntentMessageSuggestions", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentMessageSuggestions();
      var od = new api.IntentMessageSuggestions.fromJson(o.toJson());
      checkIntentMessageSuggestions(od);
    });
  });

  unittest.group("obj-schema-IntentMessageText", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentMessageText();
      var od = new api.IntentMessageText.fromJson(o.toJson());
      checkIntentMessageText(od);
    });
  });

  unittest.group("obj-schema-IntentParameter", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentParameter();
      var od = new api.IntentParameter.fromJson(o.toJson());
      checkIntentParameter(od);
    });
  });

  unittest.group("obj-schema-IntentTrainingPhrase", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentTrainingPhrase();
      var od = new api.IntentTrainingPhrase.fromJson(o.toJson());
      checkIntentTrainingPhrase(od);
    });
  });

  unittest.group("obj-schema-IntentTrainingPhrasePart", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentTrainingPhrasePart();
      var od = new api.IntentTrainingPhrasePart.fromJson(o.toJson());
      checkIntentTrainingPhrasePart(od);
    });
  });

  unittest.group("obj-schema-LatLng", () {
    unittest.test("to-json--from-json", () {
      var o = buildLatLng();
      var od = new api.LatLng.fromJson(o.toJson());
      checkLatLng(od);
    });
  });

  unittest.group("obj-schema-ListContextsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListContextsResponse();
      var od = new api.ListContextsResponse.fromJson(o.toJson());
      checkListContextsResponse(od);
    });
  });

  unittest.group("obj-schema-ListEntityTypesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListEntityTypesResponse();
      var od = new api.ListEntityTypesResponse.fromJson(o.toJson());
      checkListEntityTypesResponse(od);
    });
  });

  unittest.group("obj-schema-ListIntentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListIntentsResponse();
      var od = new api.ListIntentsResponse.fromJson(o.toJson());
      checkListIntentsResponse(od);
    });
  });

  unittest.group("obj-schema-ListSessionEntityTypesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListSessionEntityTypesResponse();
      var od = new api.ListSessionEntityTypesResponse.fromJson(o.toJson());
      checkListSessionEntityTypesResponse(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-OriginalDetectIntentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildOriginalDetectIntentRequest();
      var od = new api.OriginalDetectIntentRequest.fromJson(o.toJson());
      checkOriginalDetectIntentRequest(od);
    });
  });

  unittest.group("obj-schema-QueryInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryInput();
      var od = new api.QueryInput.fromJson(o.toJson());
      checkQueryInput(od);
    });
  });

  unittest.group("obj-schema-QueryParameters", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryParameters();
      var od = new api.QueryParameters.fromJson(o.toJson());
      checkQueryParameters(od);
    });
  });

  unittest.group("obj-schema-QueryResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryResult();
      var od = new api.QueryResult.fromJson(o.toJson());
      checkQueryResult(od);
    });
  });

  unittest.group("obj-schema-RestoreAgentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRestoreAgentRequest();
      var od = new api.RestoreAgentRequest.fromJson(o.toJson());
      checkRestoreAgentRequest(od);
    });
  });

  unittest.group("obj-schema-SearchAgentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchAgentsResponse();
      var od = new api.SearchAgentsResponse.fromJson(o.toJson());
      checkSearchAgentsResponse(od);
    });
  });

  unittest.group("obj-schema-SessionEntityType", () {
    unittest.test("to-json--from-json", () {
      var o = buildSessionEntityType();
      var od = new api.SessionEntityType.fromJson(o.toJson());
      checkSessionEntityType(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-TextInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildTextInput();
      var od = new api.TextInput.fromJson(o.toJson());
      checkTextInput(od);
    });
  });

  unittest.group("obj-schema-TrainAgentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTrainAgentRequest();
      var od = new api.TrainAgentRequest.fromJson(o.toJson());
      checkTrainAgentRequest(od);
    });
  });

  unittest.group("obj-schema-WebhookRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebhookRequest();
      var od = new api.WebhookRequest.fromJson(o.toJson());
      checkWebhookRequest(od);
    });
  });

  unittest.group("obj-schema-WebhookResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebhookResponse();
      var od = new api.WebhookResponse.fromJson(o.toJson());
      checkWebhookResponse(od);
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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildAgent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAgent(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Agent response) {
        checkAgent(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentResourceApi", () {
    unittest.test("method--export", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent;
      var arg_request = buildExportAgentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ExportAgentRequest.fromJson(json);
        checkExportAgentRequest(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .export(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--import", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent;
      var arg_request = buildImportAgentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ImportAgentRequest.fromJson(json);
        checkImportAgentRequest(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .import(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--restore", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent;
      var arg_request = buildRestoreAgentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RestoreAgentRequest.fromJson(json);
        checkRestoreAgentRequest(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .restore(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildSearchAgentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.SearchAgentsResponse response) {
        checkSearchAgentsResponse(response);
      })));
    });

    unittest.test("method--train", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentResourceApi res =
          new api.DialogflowApi(mock).projects.agent;
      var arg_request = buildTrainAgentRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TrainAgentRequest.fromJson(json);
        checkTrainAgentRequest(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .train(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentEntityTypesResourceApi", () {
    unittest.test("method--batchDelete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes;
      var arg_request = buildBatchDeleteEntityTypesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchDeleteEntityTypesRequest.fromJson(json);
        checkBatchDeleteEntityTypesRequest(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchDelete(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--batchUpdate", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes;
      var arg_request = buildBatchUpdateEntityTypesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchUpdateEntityTypesRequest.fromJson(json);
        checkBatchUpdateEntityTypesRequest(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes;
      var arg_request = buildEntityType();
      var arg_parent = "foo";
      var arg_languageCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.EntityType.fromJson(json);
        checkEntityType(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.EntityType response) {
        checkEntityType(response);
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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.EntityType response) {
        checkEntityType(response);
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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildListEntityTypesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              languageCode: arg_languageCode,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ListEntityTypesResponse response) {
        checkListEntityTypesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes;
      var arg_request = buildEntityType();
      var arg_name = "foo";
      var arg_languageCode = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.EntityType.fromJson(json);
        checkEntityType(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              languageCode: arg_languageCode,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.EntityType response) {
        checkEntityType(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentEntityTypesEntitiesResourceApi", () {
    unittest.test("method--batchCreate", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesEntitiesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes.entities;
      var arg_request = buildBatchCreateEntitiesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchCreateEntitiesRequest.fromJson(json);
        checkBatchCreateEntitiesRequest(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchCreate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--batchDelete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesEntitiesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes.entities;
      var arg_request = buildBatchDeleteEntitiesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchDeleteEntitiesRequest.fromJson(json);
        checkBatchDeleteEntitiesRequest(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchDelete(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--batchUpdate", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentEntityTypesEntitiesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.entityTypes.entities;
      var arg_request = buildBatchUpdateEntitiesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchUpdateEntitiesRequest.fromJson(json);
        checkBatchUpdateEntitiesRequest(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentIntentsResourceApi", () {
    unittest.test("method--batchDelete", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.intents;
      var arg_request = buildBatchDeleteIntentsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchDeleteIntentsRequest.fromJson(json);
        checkBatchDeleteIntentsRequest(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchDelete(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--batchUpdate", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.intents;
      var arg_request = buildBatchUpdateIntentsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchUpdateIntentsRequest.fromJson(json);
        checkBatchUpdateIntentsRequest(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.intents;
      var arg_request = buildIntent();
      var arg_parent = "foo";
      var arg_intentView = "foo";
      var arg_languageCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Intent.fromJson(json);
        checkIntent(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildIntent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              intentView: arg_intentView,
              languageCode: arg_languageCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Intent response) {
        checkIntent(response);
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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildIntent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name,
              intentView: arg_intentView,
              languageCode: arg_languageCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Intent response) {
        checkIntent(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.intents;
      var arg_parent = "foo";
      var arg_intentView = "foo";
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
        var queryMap = {};
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListIntentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              intentView: arg_intentView,
              languageCode: arg_languageCode,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ListIntentsResponse response) {
        checkListIntentsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentIntentsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.intents;
      var arg_request = buildIntent();
      var arg_name = "foo";
      var arg_intentView = "foo";
      var arg_languageCode = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Intent.fromJson(json);
        checkIntent(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildIntent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              intentView: arg_intentView,
              languageCode: arg_languageCode,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Intent response) {
        checkIntent(response);
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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteContexts(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--detectIntent", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions;
      var arg_request = buildDetectIntentRequest();
      var arg_session = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DetectIntentRequest.fromJson(json);
        checkDetectIntentRequest(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildDetectIntentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .detectIntent(arg_request, arg_session, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.DetectIntentResponse response) {
        checkDetectIntentResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentSessionsContextsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsContextsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.contexts;
      var arg_request = buildContext();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Context.fromJson(json);
        checkContext(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildContext());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Context response) {
        checkContext(response);
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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildContext());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Context response) {
        checkContext(response);
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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildListContextsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ListContextsResponse response) {
        checkListContextsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsContextsResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.contexts;
      var arg_request = buildContext();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Context.fromJson(json);
        checkContext(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildContext());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Context response) {
        checkContext(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAgentSessionsEntityTypesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
      var arg_request = buildSessionEntityType();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SessionEntityType.fromJson(json);
        checkSessionEntityType(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildSessionEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.SessionEntityType response) {
        checkSessionEntityType(response);
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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildSessionEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.SessionEntityType response) {
        checkSessionEntityType(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildListSessionEntityTypesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest
              .expectAsync1(((api.ListSessionEntityTypesResponse response) {
        checkListSessionEntityTypesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAgentSessionsEntityTypesResourceApi res =
          new api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
      var arg_request = buildSessionEntityType();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SessionEntityType.fromJson(json);
        checkSessionEntityType(obj);

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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildSessionEntityType());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.SessionEntityType response) {
        checkSessionEntityType(response);
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
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });
}
