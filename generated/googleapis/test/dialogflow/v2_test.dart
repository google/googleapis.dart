// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/dialogflow/v2.dart' as api;
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

core.int buildCounterGoogleCloudDialogflowV2Agent = 0;
api.GoogleCloudDialogflowV2Agent buildGoogleCloudDialogflowV2Agent() {
  final o = api.GoogleCloudDialogflowV2Agent();
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
    o.supportedLanguageCodes = buildUnnamed0();
    o.tier = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2Agent--;
  return o;
}

void checkGoogleCloudDialogflowV2Agent(api.GoogleCloudDialogflowV2Agent o) {
  buildCounterGoogleCloudDialogflowV2Agent++;
  if (buildCounterGoogleCloudDialogflowV2Agent < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.avatarUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.classificationThreshold!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.defaultLanguageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableLogging!, unittest.isTrue);
    unittest.expect(
      o.matchMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.supportedLanguageCodes!);
    unittest.expect(
      o.tier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2Agent--;
}

core.int buildCounterGoogleCloudDialogflowV2AgentAssistantFeedback = 0;
api.GoogleCloudDialogflowV2AgentAssistantFeedback
    buildGoogleCloudDialogflowV2AgentAssistantFeedback() {
  final o = api.GoogleCloudDialogflowV2AgentAssistantFeedback();
  buildCounterGoogleCloudDialogflowV2AgentAssistantFeedback++;
  if (buildCounterGoogleCloudDialogflowV2AgentAssistantFeedback < 3) {
    o.answerRelevance = 'foo';
    o.documentCorrectness = 'foo';
    o.documentEfficiency = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2AgentAssistantFeedback--;
  return o;
}

void checkGoogleCloudDialogflowV2AgentAssistantFeedback(
    api.GoogleCloudDialogflowV2AgentAssistantFeedback o) {
  buildCounterGoogleCloudDialogflowV2AgentAssistantFeedback++;
  if (buildCounterGoogleCloudDialogflowV2AgentAssistantFeedback < 3) {
    unittest.expect(
      o.answerRelevance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.documentCorrectness!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.documentEfficiency!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2AgentAssistantFeedback--;
}

core.int buildCounterGoogleCloudDialogflowV2AgentAssistantRecord = 0;
api.GoogleCloudDialogflowV2AgentAssistantRecord
    buildGoogleCloudDialogflowV2AgentAssistantRecord() {
  final o = api.GoogleCloudDialogflowV2AgentAssistantRecord();
  buildCounterGoogleCloudDialogflowV2AgentAssistantRecord++;
  if (buildCounterGoogleCloudDialogflowV2AgentAssistantRecord < 3) {
    o.articleSuggestionAnswer = buildGoogleCloudDialogflowV2ArticleAnswer();
    o.faqAnswer = buildGoogleCloudDialogflowV2FaqAnswer();
  }
  buildCounterGoogleCloudDialogflowV2AgentAssistantRecord--;
  return o;
}

void checkGoogleCloudDialogflowV2AgentAssistantRecord(
    api.GoogleCloudDialogflowV2AgentAssistantRecord o) {
  buildCounterGoogleCloudDialogflowV2AgentAssistantRecord++;
  if (buildCounterGoogleCloudDialogflowV2AgentAssistantRecord < 3) {
    checkGoogleCloudDialogflowV2ArticleAnswer(o.articleSuggestionAnswer!);
    checkGoogleCloudDialogflowV2FaqAnswer(o.faqAnswer!);
  }
  buildCounterGoogleCloudDialogflowV2AgentAssistantRecord--;
}

core.int buildCounterGoogleCloudDialogflowV2AnalyzeContentRequest = 0;
api.GoogleCloudDialogflowV2AnalyzeContentRequest
    buildGoogleCloudDialogflowV2AnalyzeContentRequest() {
  final o = api.GoogleCloudDialogflowV2AnalyzeContentRequest();
  buildCounterGoogleCloudDialogflowV2AnalyzeContentRequest++;
  if (buildCounterGoogleCloudDialogflowV2AnalyzeContentRequest < 3) {
    o.assistQueryParams = buildGoogleCloudDialogflowV2AssistQueryParameters();
    o.eventInput = buildGoogleCloudDialogflowV2EventInput();
    o.queryParams = buildGoogleCloudDialogflowV2QueryParameters();
    o.replyAudioConfig = buildGoogleCloudDialogflowV2OutputAudioConfig();
    o.requestId = 'foo';
    o.textInput = buildGoogleCloudDialogflowV2TextInput();
  }
  buildCounterGoogleCloudDialogflowV2AnalyzeContentRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2AnalyzeContentRequest(
    api.GoogleCloudDialogflowV2AnalyzeContentRequest o) {
  buildCounterGoogleCloudDialogflowV2AnalyzeContentRequest++;
  if (buildCounterGoogleCloudDialogflowV2AnalyzeContentRequest < 3) {
    checkGoogleCloudDialogflowV2AssistQueryParameters(o.assistQueryParams!);
    checkGoogleCloudDialogflowV2EventInput(o.eventInput!);
    checkGoogleCloudDialogflowV2QueryParameters(o.queryParams!);
    checkGoogleCloudDialogflowV2OutputAudioConfig(o.replyAudioConfig!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2TextInput(o.textInput!);
  }
  buildCounterGoogleCloudDialogflowV2AnalyzeContentRequest--;
}

core.List<api.GoogleCloudDialogflowV2SuggestionResult> buildUnnamed1() => [
      buildGoogleCloudDialogflowV2SuggestionResult(),
      buildGoogleCloudDialogflowV2SuggestionResult(),
    ];

void checkUnnamed1(core.List<api.GoogleCloudDialogflowV2SuggestionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2SuggestionResult(o[0]);
  checkGoogleCloudDialogflowV2SuggestionResult(o[1]);
}

core.List<api.GoogleCloudDialogflowV2SuggestionResult> buildUnnamed2() => [
      buildGoogleCloudDialogflowV2SuggestionResult(),
      buildGoogleCloudDialogflowV2SuggestionResult(),
    ];

void checkUnnamed2(core.List<api.GoogleCloudDialogflowV2SuggestionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2SuggestionResult(o[0]);
  checkGoogleCloudDialogflowV2SuggestionResult(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2AnalyzeContentResponse = 0;
api.GoogleCloudDialogflowV2AnalyzeContentResponse
    buildGoogleCloudDialogflowV2AnalyzeContentResponse() {
  final o = api.GoogleCloudDialogflowV2AnalyzeContentResponse();
  buildCounterGoogleCloudDialogflowV2AnalyzeContentResponse++;
  if (buildCounterGoogleCloudDialogflowV2AnalyzeContentResponse < 3) {
    o.automatedAgentReply = buildGoogleCloudDialogflowV2AutomatedAgentReply();
    o.dtmfParameters = buildGoogleCloudDialogflowV2DtmfParameters();
    o.endUserSuggestionResults = buildUnnamed1();
    o.humanAgentSuggestionResults = buildUnnamed2();
    o.message = buildGoogleCloudDialogflowV2Message();
    o.replyAudio = buildGoogleCloudDialogflowV2OutputAudio();
    o.replyText = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2AnalyzeContentResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2AnalyzeContentResponse(
    api.GoogleCloudDialogflowV2AnalyzeContentResponse o) {
  buildCounterGoogleCloudDialogflowV2AnalyzeContentResponse++;
  if (buildCounterGoogleCloudDialogflowV2AnalyzeContentResponse < 3) {
    checkGoogleCloudDialogflowV2AutomatedAgentReply(o.automatedAgentReply!);
    checkGoogleCloudDialogflowV2DtmfParameters(o.dtmfParameters!);
    checkUnnamed1(o.endUserSuggestionResults!);
    checkUnnamed2(o.humanAgentSuggestionResults!);
    checkGoogleCloudDialogflowV2Message(o.message!);
    checkGoogleCloudDialogflowV2OutputAudio(o.replyAudio!);
    unittest.expect(
      o.replyText!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2AnalyzeContentResponse--;
}

core.int buildCounterGoogleCloudDialogflowV2AnnotatedMessagePart = 0;
api.GoogleCloudDialogflowV2AnnotatedMessagePart
    buildGoogleCloudDialogflowV2AnnotatedMessagePart() {
  final o = api.GoogleCloudDialogflowV2AnnotatedMessagePart();
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
    unittest.expect(
      o.entityType!,
      unittest.equals('foo'),
    );
    var casted1 = (o.formattedValue!) as core.Map;
    unittest.expect(casted1, unittest.hasLength(3));
    unittest.expect(
      casted1['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted1['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted1['string'],
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2AnnotatedMessagePart--;
}

core.int buildCounterGoogleCloudDialogflowV2AnswerFeedback = 0;
api.GoogleCloudDialogflowV2AnswerFeedback
    buildGoogleCloudDialogflowV2AnswerFeedback() {
  final o = api.GoogleCloudDialogflowV2AnswerFeedback();
  buildCounterGoogleCloudDialogflowV2AnswerFeedback++;
  if (buildCounterGoogleCloudDialogflowV2AnswerFeedback < 3) {
    o.agentAssistantDetailFeedback =
        buildGoogleCloudDialogflowV2AgentAssistantFeedback();
    o.clickTime = 'foo';
    o.clicked = true;
    o.correctnessLevel = 'foo';
    o.displayTime = 'foo';
    o.displayed = true;
  }
  buildCounterGoogleCloudDialogflowV2AnswerFeedback--;
  return o;
}

void checkGoogleCloudDialogflowV2AnswerFeedback(
    api.GoogleCloudDialogflowV2AnswerFeedback o) {
  buildCounterGoogleCloudDialogflowV2AnswerFeedback++;
  if (buildCounterGoogleCloudDialogflowV2AnswerFeedback < 3) {
    checkGoogleCloudDialogflowV2AgentAssistantFeedback(
        o.agentAssistantDetailFeedback!);
    unittest.expect(
      o.clickTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.clicked!, unittest.isTrue);
    unittest.expect(
      o.correctnessLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.displayed!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2AnswerFeedback--;
}

core.int buildCounterGoogleCloudDialogflowV2AnswerRecord = 0;
api.GoogleCloudDialogflowV2AnswerRecord
    buildGoogleCloudDialogflowV2AnswerRecord() {
  final o = api.GoogleCloudDialogflowV2AnswerRecord();
  buildCounterGoogleCloudDialogflowV2AnswerRecord++;
  if (buildCounterGoogleCloudDialogflowV2AnswerRecord < 3) {
    o.agentAssistantRecord = buildGoogleCloudDialogflowV2AgentAssistantRecord();
    o.answerFeedback = buildGoogleCloudDialogflowV2AnswerFeedback();
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2AnswerRecord--;
  return o;
}

void checkGoogleCloudDialogflowV2AnswerRecord(
    api.GoogleCloudDialogflowV2AnswerRecord o) {
  buildCounterGoogleCloudDialogflowV2AnswerRecord++;
  if (buildCounterGoogleCloudDialogflowV2AnswerRecord < 3) {
    checkGoogleCloudDialogflowV2AgentAssistantRecord(o.agentAssistantRecord!);
    checkGoogleCloudDialogflowV2AnswerFeedback(o.answerFeedback!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2AnswerRecord--;
}

core.Map<core.String, core.String> buildUnnamed3() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed3(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowV2ArticleAnswer = 0;
api.GoogleCloudDialogflowV2ArticleAnswer
    buildGoogleCloudDialogflowV2ArticleAnswer() {
  final o = api.GoogleCloudDialogflowV2ArticleAnswer();
  buildCounterGoogleCloudDialogflowV2ArticleAnswer++;
  if (buildCounterGoogleCloudDialogflowV2ArticleAnswer < 3) {
    o.answerRecord = 'foo';
    o.confidence = 42.0;
    o.metadata = buildUnnamed3();
    o.snippets = buildUnnamed4();
    o.title = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ArticleAnswer--;
  return o;
}

void checkGoogleCloudDialogflowV2ArticleAnswer(
    api.GoogleCloudDialogflowV2ArticleAnswer o) {
  buildCounterGoogleCloudDialogflowV2ArticleAnswer++;
  if (buildCounterGoogleCloudDialogflowV2ArticleAnswer < 3) {
    unittest.expect(
      o.answerRecord!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkUnnamed3(o.metadata!);
    checkUnnamed4(o.snippets!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2ArticleAnswer--;
}

core.Map<core.String, core.String> buildUnnamed5() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowV2AssistQueryParameters = 0;
api.GoogleCloudDialogflowV2AssistQueryParameters
    buildGoogleCloudDialogflowV2AssistQueryParameters() {
  final o = api.GoogleCloudDialogflowV2AssistQueryParameters();
  buildCounterGoogleCloudDialogflowV2AssistQueryParameters++;
  if (buildCounterGoogleCloudDialogflowV2AssistQueryParameters < 3) {
    o.documentsMetadataFilters = buildUnnamed5();
  }
  buildCounterGoogleCloudDialogflowV2AssistQueryParameters--;
  return o;
}

void checkGoogleCloudDialogflowV2AssistQueryParameters(
    api.GoogleCloudDialogflowV2AssistQueryParameters o) {
  buildCounterGoogleCloudDialogflowV2AssistQueryParameters++;
  if (buildCounterGoogleCloudDialogflowV2AssistQueryParameters < 3) {
    checkUnnamed5(o.documentsMetadataFilters!);
  }
  buildCounterGoogleCloudDialogflowV2AssistQueryParameters--;
}

core.int buildCounterGoogleCloudDialogflowV2AutomatedAgentConfig = 0;
api.GoogleCloudDialogflowV2AutomatedAgentConfig
    buildGoogleCloudDialogflowV2AutomatedAgentConfig() {
  final o = api.GoogleCloudDialogflowV2AutomatedAgentConfig();
  buildCounterGoogleCloudDialogflowV2AutomatedAgentConfig++;
  if (buildCounterGoogleCloudDialogflowV2AutomatedAgentConfig < 3) {
    o.agent = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2AutomatedAgentConfig--;
  return o;
}

void checkGoogleCloudDialogflowV2AutomatedAgentConfig(
    api.GoogleCloudDialogflowV2AutomatedAgentConfig o) {
  buildCounterGoogleCloudDialogflowV2AutomatedAgentConfig++;
  if (buildCounterGoogleCloudDialogflowV2AutomatedAgentConfig < 3) {
    unittest.expect(
      o.agent!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2AutomatedAgentConfig--;
}

core.int buildCounterGoogleCloudDialogflowV2AutomatedAgentReply = 0;
api.GoogleCloudDialogflowV2AutomatedAgentReply
    buildGoogleCloudDialogflowV2AutomatedAgentReply() {
  final o = api.GoogleCloudDialogflowV2AutomatedAgentReply();
  buildCounterGoogleCloudDialogflowV2AutomatedAgentReply++;
  if (buildCounterGoogleCloudDialogflowV2AutomatedAgentReply < 3) {
    o.allowCancellation = true;
    o.automatedAgentReplyType = 'foo';
    o.detectIntentResponse = buildGoogleCloudDialogflowV2DetectIntentResponse();
  }
  buildCounterGoogleCloudDialogflowV2AutomatedAgentReply--;
  return o;
}

void checkGoogleCloudDialogflowV2AutomatedAgentReply(
    api.GoogleCloudDialogflowV2AutomatedAgentReply o) {
  buildCounterGoogleCloudDialogflowV2AutomatedAgentReply++;
  if (buildCounterGoogleCloudDialogflowV2AutomatedAgentReply < 3) {
    unittest.expect(o.allowCancellation!, unittest.isTrue);
    unittest.expect(
      o.automatedAgentReplyType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2DetectIntentResponse(o.detectIntentResponse!);
  }
  buildCounterGoogleCloudDialogflowV2AutomatedAgentReply--;
}

core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> buildUnnamed6() => [
      buildGoogleCloudDialogflowV2EntityTypeEntity(),
      buildGoogleCloudDialogflowV2EntityTypeEntity(),
    ];

void checkUnnamed6(core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest = 0;
api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest
    buildGoogleCloudDialogflowV2BatchCreateEntitiesRequest() {
  final o = api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest();
  buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest < 3) {
    o.entities = buildUnnamed6();
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchCreateEntitiesRequest(
    api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest < 3) {
    checkUnnamed6(o.entities!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2BatchCreateEntitiesRequest--;
}

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest = 0;
api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest
    buildGoogleCloudDialogflowV2BatchDeleteEntitiesRequest() {
  final o = api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest();
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest < 3) {
    o.entityValues = buildUnnamed7();
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchDeleteEntitiesRequest(
    api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest < 3) {
    checkUnnamed7(o.entityValues!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntitiesRequest--;
}

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest = 0;
api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest
    buildGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest() {
  final o = api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest();
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest < 3) {
    o.entityTypeNames = buildUnnamed8();
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest(
    api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest < 3) {
    checkUnnamed8(o.entityTypeNames!);
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest--;
}

core.List<api.GoogleCloudDialogflowV2Intent> buildUnnamed9() => [
      buildGoogleCloudDialogflowV2Intent(),
      buildGoogleCloudDialogflowV2Intent(),
    ];

void checkUnnamed9(core.List<api.GoogleCloudDialogflowV2Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Intent(o[0]);
  checkGoogleCloudDialogflowV2Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest = 0;
api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest
    buildGoogleCloudDialogflowV2BatchDeleteIntentsRequest() {
  final o = api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest();
  buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest < 3) {
    o.intents = buildUnnamed9();
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2BatchDeleteIntentsRequest(
    api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest o) {
  buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest < 3) {
    checkUnnamed9(o.intents!);
  }
  buildCounterGoogleCloudDialogflowV2BatchDeleteIntentsRequest--;
}

core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> buildUnnamed10() => [
      buildGoogleCloudDialogflowV2EntityTypeEntity(),
      buildGoogleCloudDialogflowV2EntityTypeEntity(),
    ];

void checkUnnamed10(core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest = 0;
api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest
    buildGoogleCloudDialogflowV2BatchUpdateEntitiesRequest() {
  final o = api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest();
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest++;
  if (buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest < 3) {
    o.entities = buildUnnamed10();
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
    checkUnnamed10(o.entities!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntitiesRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest = 0;
api.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest
    buildGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest() {
  final o = api.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest();
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
    checkGoogleCloudDialogflowV2EntityTypeBatch(o.entityTypeBatchInline!);
    unittest.expect(
      o.entityTypeBatchUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest = 0;
api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest
    buildGoogleCloudDialogflowV2BatchUpdateIntentsRequest() {
  final o = api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest();
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
    checkGoogleCloudDialogflowV2IntentBatch(o.intentBatchInline!);
    unittest.expect(
      o.intentBatchUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.intentView!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2BatchUpdateIntentsRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2CompleteConversationRequest = 0;
api.GoogleCloudDialogflowV2CompleteConversationRequest
    buildGoogleCloudDialogflowV2CompleteConversationRequest() {
  final o = api.GoogleCloudDialogflowV2CompleteConversationRequest();
  buildCounterGoogleCloudDialogflowV2CompleteConversationRequest++;
  if (buildCounterGoogleCloudDialogflowV2CompleteConversationRequest < 3) {}
  buildCounterGoogleCloudDialogflowV2CompleteConversationRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2CompleteConversationRequest(
    api.GoogleCloudDialogflowV2CompleteConversationRequest o) {
  buildCounterGoogleCloudDialogflowV2CompleteConversationRequest++;
  if (buildCounterGoogleCloudDialogflowV2CompleteConversationRequest < 3) {}
  buildCounterGoogleCloudDialogflowV2CompleteConversationRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed11() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed11(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted2 = (o['x']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
  var casted3 = (o['y']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudDialogflowV2Context = 0;
api.GoogleCloudDialogflowV2Context buildGoogleCloudDialogflowV2Context() {
  final o = api.GoogleCloudDialogflowV2Context();
  buildCounterGoogleCloudDialogflowV2Context++;
  if (buildCounterGoogleCloudDialogflowV2Context < 3) {
    o.lifespanCount = 42;
    o.name = 'foo';
    o.parameters = buildUnnamed11();
  }
  buildCounterGoogleCloudDialogflowV2Context--;
  return o;
}

void checkGoogleCloudDialogflowV2Context(api.GoogleCloudDialogflowV2Context o) {
  buildCounterGoogleCloudDialogflowV2Context++;
  if (buildCounterGoogleCloudDialogflowV2Context < 3) {
    unittest.expect(
      o.lifespanCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.parameters!);
  }
  buildCounterGoogleCloudDialogflowV2Context--;
}

core.int buildCounterGoogleCloudDialogflowV2Conversation = 0;
api.GoogleCloudDialogflowV2Conversation
    buildGoogleCloudDialogflowV2Conversation() {
  final o = api.GoogleCloudDialogflowV2Conversation();
  buildCounterGoogleCloudDialogflowV2Conversation++;
  if (buildCounterGoogleCloudDialogflowV2Conversation < 3) {
    o.conversationProfile = 'foo';
    o.conversationStage = 'foo';
    o.endTime = 'foo';
    o.lifecycleState = 'foo';
    o.name = 'foo';
    o.phoneNumber = buildGoogleCloudDialogflowV2ConversationPhoneNumber();
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2Conversation--;
  return o;
}

void checkGoogleCloudDialogflowV2Conversation(
    api.GoogleCloudDialogflowV2Conversation o) {
  buildCounterGoogleCloudDialogflowV2Conversation++;
  if (buildCounterGoogleCloudDialogflowV2Conversation < 3) {
    unittest.expect(
      o.conversationProfile!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.conversationStage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lifecycleState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2ConversationPhoneNumber(o.phoneNumber!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2Conversation--;
}

core.int buildCounterGoogleCloudDialogflowV2ConversationPhoneNumber = 0;
api.GoogleCloudDialogflowV2ConversationPhoneNumber
    buildGoogleCloudDialogflowV2ConversationPhoneNumber() {
  final o = api.GoogleCloudDialogflowV2ConversationPhoneNumber();
  buildCounterGoogleCloudDialogflowV2ConversationPhoneNumber++;
  if (buildCounterGoogleCloudDialogflowV2ConversationPhoneNumber < 3) {
    o.phoneNumber = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ConversationPhoneNumber--;
  return o;
}

void checkGoogleCloudDialogflowV2ConversationPhoneNumber(
    api.GoogleCloudDialogflowV2ConversationPhoneNumber o) {
  buildCounterGoogleCloudDialogflowV2ConversationPhoneNumber++;
  if (buildCounterGoogleCloudDialogflowV2ConversationPhoneNumber < 3) {
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2ConversationPhoneNumber--;
}

core.int buildCounterGoogleCloudDialogflowV2ConversationProfile = 0;
api.GoogleCloudDialogflowV2ConversationProfile
    buildGoogleCloudDialogflowV2ConversationProfile() {
  final o = api.GoogleCloudDialogflowV2ConversationProfile();
  buildCounterGoogleCloudDialogflowV2ConversationProfile++;
  if (buildCounterGoogleCloudDialogflowV2ConversationProfile < 3) {
    o.automatedAgentConfig = buildGoogleCloudDialogflowV2AutomatedAgentConfig();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.humanAgentAssistantConfig =
        buildGoogleCloudDialogflowV2HumanAgentAssistantConfig();
    o.humanAgentHandoffConfig =
        buildGoogleCloudDialogflowV2HumanAgentHandoffConfig();
    o.languageCode = 'foo';
    o.loggingConfig = buildGoogleCloudDialogflowV2LoggingConfig();
    o.name = 'foo';
    o.newMessageEventNotificationConfig =
        buildGoogleCloudDialogflowV2NotificationConfig();
    o.notificationConfig = buildGoogleCloudDialogflowV2NotificationConfig();
    o.securitySettings = 'foo';
    o.sttConfig = buildGoogleCloudDialogflowV2SpeechToTextConfig();
    o.timeZone = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ConversationProfile--;
  return o;
}

void checkGoogleCloudDialogflowV2ConversationProfile(
    api.GoogleCloudDialogflowV2ConversationProfile o) {
  buildCounterGoogleCloudDialogflowV2ConversationProfile++;
  if (buildCounterGoogleCloudDialogflowV2ConversationProfile < 3) {
    checkGoogleCloudDialogflowV2AutomatedAgentConfig(o.automatedAgentConfig!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2HumanAgentAssistantConfig(
        o.humanAgentAssistantConfig!);
    checkGoogleCloudDialogflowV2HumanAgentHandoffConfig(
        o.humanAgentHandoffConfig!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2LoggingConfig(o.loggingConfig!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2NotificationConfig(
        o.newMessageEventNotificationConfig!);
    checkGoogleCloudDialogflowV2NotificationConfig(o.notificationConfig!);
    unittest.expect(
      o.securitySettings!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2SpeechToTextConfig(o.sttConfig!);
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2ConversationProfile--;
}

core.int buildCounterGoogleCloudDialogflowV2DetectIntentRequest = 0;
api.GoogleCloudDialogflowV2DetectIntentRequest
    buildGoogleCloudDialogflowV2DetectIntentRequest() {
  final o = api.GoogleCloudDialogflowV2DetectIntentRequest();
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
    unittest.expect(
      o.inputAudio!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2OutputAudioConfig(o.outputAudioConfig!);
    unittest.expect(
      o.outputAudioConfigMask!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2QueryInput(o.queryInput!);
    checkGoogleCloudDialogflowV2QueryParameters(o.queryParams!);
  }
  buildCounterGoogleCloudDialogflowV2DetectIntentRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2DetectIntentResponse = 0;
api.GoogleCloudDialogflowV2DetectIntentResponse
    buildGoogleCloudDialogflowV2DetectIntentResponse() {
  final o = api.GoogleCloudDialogflowV2DetectIntentResponse();
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
    unittest.expect(
      o.outputAudio!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2OutputAudioConfig(o.outputAudioConfig!);
    checkGoogleCloudDialogflowV2QueryResult(o.queryResult!);
    unittest.expect(
      o.responseId!,
      unittest.equals('foo'),
    );
    checkGoogleRpcStatus(o.webhookStatus!);
  }
  buildCounterGoogleCloudDialogflowV2DetectIntentResponse--;
}

core.List<core.String> buildUnnamed12() => [
      'foo',
      'foo',
    ];

void checkUnnamed12(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed13() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed13(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowV2Document = 0;
api.GoogleCloudDialogflowV2Document buildGoogleCloudDialogflowV2Document() {
  final o = api.GoogleCloudDialogflowV2Document();
  buildCounterGoogleCloudDialogflowV2Document++;
  if (buildCounterGoogleCloudDialogflowV2Document < 3) {
    o.contentUri = 'foo';
    o.displayName = 'foo';
    o.enableAutoReload = true;
    o.knowledgeTypes = buildUnnamed12();
    o.latestReloadStatus = buildGoogleCloudDialogflowV2DocumentReloadStatus();
    o.metadata = buildUnnamed13();
    o.mimeType = 'foo';
    o.name = 'foo';
    o.rawContent = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2Document--;
  return o;
}

void checkGoogleCloudDialogflowV2Document(
    api.GoogleCloudDialogflowV2Document o) {
  buildCounterGoogleCloudDialogflowV2Document++;
  if (buildCounterGoogleCloudDialogflowV2Document < 3) {
    unittest.expect(
      o.contentUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableAutoReload!, unittest.isTrue);
    checkUnnamed12(o.knowledgeTypes!);
    checkGoogleCloudDialogflowV2DocumentReloadStatus(o.latestReloadStatus!);
    checkUnnamed13(o.metadata!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rawContent!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2Document--;
}

core.int buildCounterGoogleCloudDialogflowV2DocumentReloadStatus = 0;
api.GoogleCloudDialogflowV2DocumentReloadStatus
    buildGoogleCloudDialogflowV2DocumentReloadStatus() {
  final o = api.GoogleCloudDialogflowV2DocumentReloadStatus();
  buildCounterGoogleCloudDialogflowV2DocumentReloadStatus++;
  if (buildCounterGoogleCloudDialogflowV2DocumentReloadStatus < 3) {
    o.status = buildGoogleRpcStatus();
    o.time = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2DocumentReloadStatus--;
  return o;
}

void checkGoogleCloudDialogflowV2DocumentReloadStatus(
    api.GoogleCloudDialogflowV2DocumentReloadStatus o) {
  buildCounterGoogleCloudDialogflowV2DocumentReloadStatus++;
  if (buildCounterGoogleCloudDialogflowV2DocumentReloadStatus < 3) {
    checkGoogleRpcStatus(o.status!);
    unittest.expect(
      o.time!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2DocumentReloadStatus--;
}

core.int buildCounterGoogleCloudDialogflowV2DtmfParameters = 0;
api.GoogleCloudDialogflowV2DtmfParameters
    buildGoogleCloudDialogflowV2DtmfParameters() {
  final o = api.GoogleCloudDialogflowV2DtmfParameters();
  buildCounterGoogleCloudDialogflowV2DtmfParameters++;
  if (buildCounterGoogleCloudDialogflowV2DtmfParameters < 3) {
    o.acceptsDtmfInput = true;
  }
  buildCounterGoogleCloudDialogflowV2DtmfParameters--;
  return o;
}

void checkGoogleCloudDialogflowV2DtmfParameters(
    api.GoogleCloudDialogflowV2DtmfParameters o) {
  buildCounterGoogleCloudDialogflowV2DtmfParameters++;
  if (buildCounterGoogleCloudDialogflowV2DtmfParameters < 3) {
    unittest.expect(o.acceptsDtmfInput!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2DtmfParameters--;
}

core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> buildUnnamed14() => [
      buildGoogleCloudDialogflowV2EntityTypeEntity(),
      buildGoogleCloudDialogflowV2EntityTypeEntity(),
    ];

void checkUnnamed14(core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2EntityType = 0;
api.GoogleCloudDialogflowV2EntityType buildGoogleCloudDialogflowV2EntityType() {
  final o = api.GoogleCloudDialogflowV2EntityType();
  buildCounterGoogleCloudDialogflowV2EntityType++;
  if (buildCounterGoogleCloudDialogflowV2EntityType < 3) {
    o.autoExpansionMode = 'foo';
    o.displayName = 'foo';
    o.enableFuzzyExtraction = true;
    o.entities = buildUnnamed14();
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
    unittest.expect(
      o.autoExpansionMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableFuzzyExtraction!, unittest.isTrue);
    checkUnnamed14(o.entities!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2EntityType--;
}

core.List<api.GoogleCloudDialogflowV2EntityType> buildUnnamed15() => [
      buildGoogleCloudDialogflowV2EntityType(),
      buildGoogleCloudDialogflowV2EntityType(),
    ];

void checkUnnamed15(core.List<api.GoogleCloudDialogflowV2EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityType(o[0]);
  checkGoogleCloudDialogflowV2EntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2EntityTypeBatch = 0;
api.GoogleCloudDialogflowV2EntityTypeBatch
    buildGoogleCloudDialogflowV2EntityTypeBatch() {
  final o = api.GoogleCloudDialogflowV2EntityTypeBatch();
  buildCounterGoogleCloudDialogflowV2EntityTypeBatch++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeBatch < 3) {
    o.entityTypes = buildUnnamed15();
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeBatch--;
  return o;
}

void checkGoogleCloudDialogflowV2EntityTypeBatch(
    api.GoogleCloudDialogflowV2EntityTypeBatch o) {
  buildCounterGoogleCloudDialogflowV2EntityTypeBatch++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeBatch < 3) {
    checkUnnamed15(o.entityTypes!);
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeBatch--;
}

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowV2EntityTypeEntity = 0;
api.GoogleCloudDialogflowV2EntityTypeEntity
    buildGoogleCloudDialogflowV2EntityTypeEntity() {
  final o = api.GoogleCloudDialogflowV2EntityTypeEntity();
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeEntity < 3) {
    o.synonyms = buildUnnamed16();
    o.value = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity--;
  return o;
}

void checkGoogleCloudDialogflowV2EntityTypeEntity(
    api.GoogleCloudDialogflowV2EntityTypeEntity o) {
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowV2EntityTypeEntity < 3) {
    checkUnnamed16(o.synonyms!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2EntityTypeEntity--;
}

core.int buildCounterGoogleCloudDialogflowV2Environment = 0;
api.GoogleCloudDialogflowV2Environment
    buildGoogleCloudDialogflowV2Environment() {
  final o = api.GoogleCloudDialogflowV2Environment();
  buildCounterGoogleCloudDialogflowV2Environment++;
  if (buildCounterGoogleCloudDialogflowV2Environment < 3) {
    o.agentVersion = 'foo';
    o.description = 'foo';
    o.fulfillment = buildGoogleCloudDialogflowV2Fulfillment();
    o.name = 'foo';
    o.state = 'foo';
    o.textToSpeechSettings = buildGoogleCloudDialogflowV2TextToSpeechSettings();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2Environment--;
  return o;
}

void checkGoogleCloudDialogflowV2Environment(
    api.GoogleCloudDialogflowV2Environment o) {
  buildCounterGoogleCloudDialogflowV2Environment++;
  if (buildCounterGoogleCloudDialogflowV2Environment < 3) {
    unittest.expect(
      o.agentVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2Fulfillment(o.fulfillment!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2TextToSpeechSettings(o.textToSpeechSettings!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2Environment--;
}

core.List<api.GoogleCloudDialogflowV2EnvironmentHistoryEntry>
    buildUnnamed17() => [
          buildGoogleCloudDialogflowV2EnvironmentHistoryEntry(),
          buildGoogleCloudDialogflowV2EnvironmentHistoryEntry(),
        ];

void checkUnnamed17(
    core.List<api.GoogleCloudDialogflowV2EnvironmentHistoryEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EnvironmentHistoryEntry(o[0]);
  checkGoogleCloudDialogflowV2EnvironmentHistoryEntry(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2EnvironmentHistory = 0;
api.GoogleCloudDialogflowV2EnvironmentHistory
    buildGoogleCloudDialogflowV2EnvironmentHistory() {
  final o = api.GoogleCloudDialogflowV2EnvironmentHistory();
  buildCounterGoogleCloudDialogflowV2EnvironmentHistory++;
  if (buildCounterGoogleCloudDialogflowV2EnvironmentHistory < 3) {
    o.entries = buildUnnamed17();
    o.nextPageToken = 'foo';
    o.parent = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2EnvironmentHistory--;
  return o;
}

void checkGoogleCloudDialogflowV2EnvironmentHistory(
    api.GoogleCloudDialogflowV2EnvironmentHistory o) {
  buildCounterGoogleCloudDialogflowV2EnvironmentHistory++;
  if (buildCounterGoogleCloudDialogflowV2EnvironmentHistory < 3) {
    checkUnnamed17(o.entries!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2EnvironmentHistory--;
}

core.int buildCounterGoogleCloudDialogflowV2EnvironmentHistoryEntry = 0;
api.GoogleCloudDialogflowV2EnvironmentHistoryEntry
    buildGoogleCloudDialogflowV2EnvironmentHistoryEntry() {
  final o = api.GoogleCloudDialogflowV2EnvironmentHistoryEntry();
  buildCounterGoogleCloudDialogflowV2EnvironmentHistoryEntry++;
  if (buildCounterGoogleCloudDialogflowV2EnvironmentHistoryEntry < 3) {
    o.agentVersion = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2EnvironmentHistoryEntry--;
  return o;
}

void checkGoogleCloudDialogflowV2EnvironmentHistoryEntry(
    api.GoogleCloudDialogflowV2EnvironmentHistoryEntry o) {
  buildCounterGoogleCloudDialogflowV2EnvironmentHistoryEntry++;
  if (buildCounterGoogleCloudDialogflowV2EnvironmentHistoryEntry < 3) {
    unittest.expect(
      o.agentVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2EnvironmentHistoryEntry--;
}

core.Map<core.String, core.Object?> buildUnnamed18() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed18(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted4 = (o['x']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
  var casted5 = (o['y']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudDialogflowV2EventInput = 0;
api.GoogleCloudDialogflowV2EventInput buildGoogleCloudDialogflowV2EventInput() {
  final o = api.GoogleCloudDialogflowV2EventInput();
  buildCounterGoogleCloudDialogflowV2EventInput++;
  if (buildCounterGoogleCloudDialogflowV2EventInput < 3) {
    o.languageCode = 'foo';
    o.name = 'foo';
    o.parameters = buildUnnamed18();
  }
  buildCounterGoogleCloudDialogflowV2EventInput--;
  return o;
}

void checkGoogleCloudDialogflowV2EventInput(
    api.GoogleCloudDialogflowV2EventInput o) {
  buildCounterGoogleCloudDialogflowV2EventInput++;
  if (buildCounterGoogleCloudDialogflowV2EventInput < 3) {
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.parameters!);
  }
  buildCounterGoogleCloudDialogflowV2EventInput--;
}

core.int buildCounterGoogleCloudDialogflowV2ExportAgentRequest = 0;
api.GoogleCloudDialogflowV2ExportAgentRequest
    buildGoogleCloudDialogflowV2ExportAgentRequest() {
  final o = api.GoogleCloudDialogflowV2ExportAgentRequest();
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
    unittest.expect(
      o.agentUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2ExportAgentRequest--;
}

core.Map<core.String, core.String> buildUnnamed19() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed19(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowV2FaqAnswer = 0;
api.GoogleCloudDialogflowV2FaqAnswer buildGoogleCloudDialogflowV2FaqAnswer() {
  final o = api.GoogleCloudDialogflowV2FaqAnswer();
  buildCounterGoogleCloudDialogflowV2FaqAnswer++;
  if (buildCounterGoogleCloudDialogflowV2FaqAnswer < 3) {
    o.answer = 'foo';
    o.answerRecord = 'foo';
    o.confidence = 42.0;
    o.metadata = buildUnnamed19();
    o.question = 'foo';
    o.source = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2FaqAnswer--;
  return o;
}

void checkGoogleCloudDialogflowV2FaqAnswer(
    api.GoogleCloudDialogflowV2FaqAnswer o) {
  buildCounterGoogleCloudDialogflowV2FaqAnswer++;
  if (buildCounterGoogleCloudDialogflowV2FaqAnswer < 3) {
    unittest.expect(
      o.answer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.answerRecord!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkUnnamed19(o.metadata!);
    unittest.expect(
      o.question!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2FaqAnswer--;
}

core.List<api.GoogleCloudDialogflowV2FulfillmentFeature> buildUnnamed20() => [
      buildGoogleCloudDialogflowV2FulfillmentFeature(),
      buildGoogleCloudDialogflowV2FulfillmentFeature(),
    ];

void checkUnnamed20(
    core.List<api.GoogleCloudDialogflowV2FulfillmentFeature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2FulfillmentFeature(o[0]);
  checkGoogleCloudDialogflowV2FulfillmentFeature(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2Fulfillment = 0;
api.GoogleCloudDialogflowV2Fulfillment
    buildGoogleCloudDialogflowV2Fulfillment() {
  final o = api.GoogleCloudDialogflowV2Fulfillment();
  buildCounterGoogleCloudDialogflowV2Fulfillment++;
  if (buildCounterGoogleCloudDialogflowV2Fulfillment < 3) {
    o.displayName = 'foo';
    o.enabled = true;
    o.features = buildUnnamed20();
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
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enabled!, unittest.isTrue);
    checkUnnamed20(o.features!);
    checkGoogleCloudDialogflowV2FulfillmentGenericWebService(
        o.genericWebService!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2Fulfillment--;
}

core.int buildCounterGoogleCloudDialogflowV2FulfillmentFeature = 0;
api.GoogleCloudDialogflowV2FulfillmentFeature
    buildGoogleCloudDialogflowV2FulfillmentFeature() {
  final o = api.GoogleCloudDialogflowV2FulfillmentFeature();
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
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2FulfillmentFeature--;
}

core.Map<core.String, core.String> buildUnnamed21() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed21(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowV2FulfillmentGenericWebService = 0;
api.GoogleCloudDialogflowV2FulfillmentGenericWebService
    buildGoogleCloudDialogflowV2FulfillmentGenericWebService() {
  final o = api.GoogleCloudDialogflowV2FulfillmentGenericWebService();
  buildCounterGoogleCloudDialogflowV2FulfillmentGenericWebService++;
  if (buildCounterGoogleCloudDialogflowV2FulfillmentGenericWebService < 3) {
    o.isCloudFunction = true;
    o.password = 'foo';
    o.requestHeaders = buildUnnamed21();
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
    unittest.expect(o.isCloudFunction!, unittest.isTrue);
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.requestHeaders!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2FulfillmentGenericWebService--;
}

core.int buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfig = 0;
api.GoogleCloudDialogflowV2HumanAgentAssistantConfig
    buildGoogleCloudDialogflowV2HumanAgentAssistantConfig() {
  final o = api.GoogleCloudDialogflowV2HumanAgentAssistantConfig();
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfig++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfig < 3) {
    o.endUserSuggestionConfig =
        buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig();
    o.humanAgentSuggestionConfig =
        buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig();
    o.messageAnalysisConfig =
        buildGoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig();
    o.notificationConfig = buildGoogleCloudDialogflowV2NotificationConfig();
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfig--;
  return o;
}

void checkGoogleCloudDialogflowV2HumanAgentAssistantConfig(
    api.GoogleCloudDialogflowV2HumanAgentAssistantConfig o) {
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfig++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfig < 3) {
    checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig(
        o.endUserSuggestionConfig!);
    checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig(
        o.humanAgentSuggestionConfig!);
    checkGoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig(
        o.messageAnalysisConfig!);
    checkGoogleCloudDialogflowV2NotificationConfig(o.notificationConfig!);
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfig--;
}

core.int
    buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig =
    0;
api.GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig
    buildGoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig() {
  final o = api
      .GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig();
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig <
      3) {
    o.model = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig--;
  return o;
}

void checkGoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig(
    api.GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig
        o) {
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig <
      3) {
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig--;
}

core.int
    buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig =
    0;
api.GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig
    buildGoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig() {
  final o = api
      .GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig();
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig <
      3) {
    o.enableEntityExtraction = true;
    o.enableSentimentAnalysis = true;
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig--;
  return o;
}

void checkGoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig(
    api.GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig
        o) {
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig <
      3) {
    unittest.expect(o.enableEntityExtraction!, unittest.isTrue);
    unittest.expect(o.enableSentimentAnalysis!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig--;
}

core.List<
        api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig>
    buildUnnamed22() => [
          buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig(),
          buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig(),
        ];

void checkUnnamed22(
    core.List<
            api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig(
      o[0]);
  checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig(
      o[1]);
}

core.int
    buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig =
    0;
api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig
    buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig() {
  final o =
      api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig();
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig <
      3) {
    o.featureConfigs = buildUnnamed22();
    o.groupSuggestionResponses = true;
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig--;
  return o;
}

void checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig(
    api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig o) {
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig <
      3) {
    checkUnnamed22(o.featureConfigs!);
    unittest.expect(o.groupSuggestionResponses!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig--;
}

core.int
    buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig =
    0;
api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig
    buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig() {
  final o = api
      .GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig();
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig <
      3) {
    o.conversationModelConfig =
        buildGoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig();
    o.enableEventBasedSuggestion = true;
    o.queryConfig =
        buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig();
    o.suggestionFeature = buildGoogleCloudDialogflowV2SuggestionFeature();
    o.suggestionTriggerSettings =
        buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings();
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig--;
  return o;
}

void checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig(
    api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig
        o) {
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig <
      3) {
    checkGoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig(
        o.conversationModelConfig!);
    unittest.expect(o.enableEventBasedSuggestion!, unittest.isTrue);
    checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig(
        o.queryConfig!);
    checkGoogleCloudDialogflowV2SuggestionFeature(o.suggestionFeature!);
    checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings(
        o.suggestionTriggerSettings!);
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig--;
}

core.int
    buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig =
    0;
api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig
    buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig() {
  final o = api
      .GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig();
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig <
      3) {
    o.confidenceThreshold = 42.0;
    o.contextFilterSettings =
        buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings();
    o.dialogflowQuerySource =
        buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource();
    o.documentQuerySource =
        buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource();
    o.knowledgeBaseQuerySource =
        buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource();
    o.maxResults = 42;
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig--;
  return o;
}

void checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig(
    api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig
        o) {
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig <
      3) {
    unittest.expect(
      o.confidenceThreshold!,
      unittest.equals(42.0),
    );
    checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings(
        o.contextFilterSettings!);
    checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource(
        o.dialogflowQuerySource!);
    checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource(
        o.documentQuerySource!);
    checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource(
        o.knowledgeBaseQuerySource!);
    unittest.expect(
      o.maxResults!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig--;
}

core.int
    buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings =
    0;
api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings
    buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings() {
  final o = api
      .GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings();
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings <
      3) {
    o.dropHandoffMessages = true;
    o.dropIvrMessages = true;
    o.dropVirtualAgentMessages = true;
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings--;
  return o;
}

void checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings(
    api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings
        o) {
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings <
      3) {
    unittest.expect(o.dropHandoffMessages!, unittest.isTrue);
    unittest.expect(o.dropIvrMessages!, unittest.isTrue);
    unittest.expect(o.dropVirtualAgentMessages!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings--;
}

core.int
    buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource =
    0;
api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource
    buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource() {
  final o = api
      .GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource();
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource <
      3) {
    o.agent = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource--;
  return o;
}

void checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource(
    api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource
        o) {
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource <
      3) {
    unittest.expect(
      o.agent!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource--;
}

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
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

core.int
    buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource =
    0;
api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource
    buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource() {
  final o = api
      .GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource();
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource <
      3) {
    o.documents = buildUnnamed23();
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource--;
  return o;
}

void checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource(
    api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource
        o) {
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource <
      3) {
    checkUnnamed23(o.documents!);
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource--;
}

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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

core.int
    buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource =
    0;
api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource
    buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource() {
  final o = api
      .GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource();
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource <
      3) {
    o.knowledgeBases = buildUnnamed24();
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource--;
  return o;
}

void checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource(
    api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource
        o) {
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource <
      3) {
    checkUnnamed24(o.knowledgeBases!);
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource--;
}

core.int
    buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings =
    0;
api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings
    buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings() {
  final o = api
      .GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings();
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings <
      3) {
    o.noSmalltalk = true;
    o.onlyEndUser = true;
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings--;
  return o;
}

void checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings(
    api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings
        o) {
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings <
      3) {
    unittest.expect(o.noSmalltalk!, unittest.isTrue);
    unittest.expect(o.onlyEndUser!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings--;
}

core.int buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfig = 0;
api.GoogleCloudDialogflowV2HumanAgentHandoffConfig
    buildGoogleCloudDialogflowV2HumanAgentHandoffConfig() {
  final o = api.GoogleCloudDialogflowV2HumanAgentHandoffConfig();
  buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfig++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfig < 3) {
    o.livePersonConfig =
        buildGoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig();
    o.salesforceLiveAgentConfig =
        buildGoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig();
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfig--;
  return o;
}

void checkGoogleCloudDialogflowV2HumanAgentHandoffConfig(
    api.GoogleCloudDialogflowV2HumanAgentHandoffConfig o) {
  buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfig++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfig < 3) {
    checkGoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig(
        o.livePersonConfig!);
    checkGoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig(
        o.salesforceLiveAgentConfig!);
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfig--;
}

core.int
    buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig =
    0;
api.GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig
    buildGoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig() {
  final o =
      api.GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig();
  buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig <
      3) {
    o.accountNumber = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig--;
  return o;
}

void checkGoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig(
    api.GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig o) {
  buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig <
      3) {
    unittest.expect(
      o.accountNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig--;
}

core.int
    buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig =
    0;
api.GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig
    buildGoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig() {
  final o = api
      .GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig();
  buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig <
      3) {
    o.buttonId = 'foo';
    o.deploymentId = 'foo';
    o.endpointDomain = 'foo';
    o.organizationId = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig--;
  return o;
}

void checkGoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig(
    api.GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig
        o) {
  buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig++;
  if (buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig <
      3) {
    unittest.expect(
      o.buttonId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deploymentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endpointDomain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.organizationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig--;
}

core.int buildCounterGoogleCloudDialogflowV2ImportAgentRequest = 0;
api.GoogleCloudDialogflowV2ImportAgentRequest
    buildGoogleCloudDialogflowV2ImportAgentRequest() {
  final o = api.GoogleCloudDialogflowV2ImportAgentRequest();
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
    unittest.expect(
      o.agentContent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.agentUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2ImportAgentRequest--;
}

core.List<core.String> buildUnnamed25() => [
      'foo',
      'foo',
    ];

void checkUnnamed25(core.List<core.String> o) {
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

core.List<api.GoogleCloudDialogflowV2SpeechContext> buildUnnamed26() => [
      buildGoogleCloudDialogflowV2SpeechContext(),
      buildGoogleCloudDialogflowV2SpeechContext(),
    ];

void checkUnnamed26(core.List<api.GoogleCloudDialogflowV2SpeechContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2SpeechContext(o[0]);
  checkGoogleCloudDialogflowV2SpeechContext(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2InputAudioConfig = 0;
api.GoogleCloudDialogflowV2InputAudioConfig
    buildGoogleCloudDialogflowV2InputAudioConfig() {
  final o = api.GoogleCloudDialogflowV2InputAudioConfig();
  buildCounterGoogleCloudDialogflowV2InputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowV2InputAudioConfig < 3) {
    o.audioEncoding = 'foo';
    o.disableNoSpeechRecognizedEvent = true;
    o.enableWordInfo = true;
    o.languageCode = 'foo';
    o.model = 'foo';
    o.modelVariant = 'foo';
    o.phraseHints = buildUnnamed25();
    o.sampleRateHertz = 42;
    o.singleUtterance = true;
    o.speechContexts = buildUnnamed26();
  }
  buildCounterGoogleCloudDialogflowV2InputAudioConfig--;
  return o;
}

void checkGoogleCloudDialogflowV2InputAudioConfig(
    api.GoogleCloudDialogflowV2InputAudioConfig o) {
  buildCounterGoogleCloudDialogflowV2InputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowV2InputAudioConfig < 3) {
    unittest.expect(
      o.audioEncoding!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disableNoSpeechRecognizedEvent!, unittest.isTrue);
    unittest.expect(o.enableWordInfo!, unittest.isTrue);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modelVariant!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.phraseHints!);
    unittest.expect(
      o.sampleRateHertz!,
      unittest.equals(42),
    );
    unittest.expect(o.singleUtterance!, unittest.isTrue);
    checkUnnamed26(o.speechContexts!);
  }
  buildCounterGoogleCloudDialogflowV2InputAudioConfig--;
}

core.List<core.String> buildUnnamed27() => [
      'foo',
      'foo',
    ];

void checkUnnamed27(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed28() => [
      'foo',
      'foo',
    ];

void checkUnnamed28(core.List<core.String> o) {
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

core.List<api.GoogleCloudDialogflowV2IntentFollowupIntentInfo>
    buildUnnamed29() => [
          buildGoogleCloudDialogflowV2IntentFollowupIntentInfo(),
          buildGoogleCloudDialogflowV2IntentFollowupIntentInfo(),
        ];

void checkUnnamed29(
    core.List<api.GoogleCloudDialogflowV2IntentFollowupIntentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(o[0]);
  checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(o[1]);
}

core.List<core.String> buildUnnamed30() => [
      'foo',
      'foo',
    ];

void checkUnnamed30(core.List<core.String> o) {
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

core.List<api.GoogleCloudDialogflowV2IntentMessage> buildUnnamed31() => [
      buildGoogleCloudDialogflowV2IntentMessage(),
      buildGoogleCloudDialogflowV2IntentMessage(),
    ];

void checkUnnamed31(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2IntentMessage(o[1]);
}

core.List<api.GoogleCloudDialogflowV2Context> buildUnnamed32() => [
      buildGoogleCloudDialogflowV2Context(),
      buildGoogleCloudDialogflowV2Context(),
    ];

void checkUnnamed32(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

core.List<api.GoogleCloudDialogflowV2IntentParameter> buildUnnamed33() => [
      buildGoogleCloudDialogflowV2IntentParameter(),
      buildGoogleCloudDialogflowV2IntentParameter(),
    ];

void checkUnnamed33(core.List<api.GoogleCloudDialogflowV2IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentParameter(o[0]);
  checkGoogleCloudDialogflowV2IntentParameter(o[1]);
}

core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrase> buildUnnamed34() => [
      buildGoogleCloudDialogflowV2IntentTrainingPhrase(),
      buildGoogleCloudDialogflowV2IntentTrainingPhrase(),
    ];

void checkUnnamed34(
    core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentTrainingPhrase(o[0]);
  checkGoogleCloudDialogflowV2IntentTrainingPhrase(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2Intent = 0;
api.GoogleCloudDialogflowV2Intent buildGoogleCloudDialogflowV2Intent() {
  final o = api.GoogleCloudDialogflowV2Intent();
  buildCounterGoogleCloudDialogflowV2Intent++;
  if (buildCounterGoogleCloudDialogflowV2Intent < 3) {
    o.action = 'foo';
    o.defaultResponsePlatforms = buildUnnamed27();
    o.displayName = 'foo';
    o.endInteraction = true;
    o.events = buildUnnamed28();
    o.followupIntentInfo = buildUnnamed29();
    o.inputContextNames = buildUnnamed30();
    o.isFallback = true;
    o.liveAgentHandoff = true;
    o.messages = buildUnnamed31();
    o.mlDisabled = true;
    o.name = 'foo';
    o.outputContexts = buildUnnamed32();
    o.parameters = buildUnnamed33();
    o.parentFollowupIntentName = 'foo';
    o.priority = 42;
    o.resetContexts = true;
    o.rootFollowupIntentName = 'foo';
    o.trainingPhrases = buildUnnamed34();
    o.webhookState = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2Intent--;
  return o;
}

void checkGoogleCloudDialogflowV2Intent(api.GoogleCloudDialogflowV2Intent o) {
  buildCounterGoogleCloudDialogflowV2Intent++;
  if (buildCounterGoogleCloudDialogflowV2Intent < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.defaultResponsePlatforms!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.endInteraction!, unittest.isTrue);
    checkUnnamed28(o.events!);
    checkUnnamed29(o.followupIntentInfo!);
    checkUnnamed30(o.inputContextNames!);
    unittest.expect(o.isFallback!, unittest.isTrue);
    unittest.expect(o.liveAgentHandoff!, unittest.isTrue);
    checkUnnamed31(o.messages!);
    unittest.expect(o.mlDisabled!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.outputContexts!);
    checkUnnamed33(o.parameters!);
    unittest.expect(
      o.parentFollowupIntentName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.priority!,
      unittest.equals(42),
    );
    unittest.expect(o.resetContexts!, unittest.isTrue);
    unittest.expect(
      o.rootFollowupIntentName!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.trainingPhrases!);
    unittest.expect(
      o.webhookState!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2Intent--;
}

core.List<api.GoogleCloudDialogflowV2Intent> buildUnnamed35() => [
      buildGoogleCloudDialogflowV2Intent(),
      buildGoogleCloudDialogflowV2Intent(),
    ];

void checkUnnamed35(core.List<api.GoogleCloudDialogflowV2Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Intent(o[0]);
  checkGoogleCloudDialogflowV2Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentBatch = 0;
api.GoogleCloudDialogflowV2IntentBatch
    buildGoogleCloudDialogflowV2IntentBatch() {
  final o = api.GoogleCloudDialogflowV2IntentBatch();
  buildCounterGoogleCloudDialogflowV2IntentBatch++;
  if (buildCounterGoogleCloudDialogflowV2IntentBatch < 3) {
    o.intents = buildUnnamed35();
  }
  buildCounterGoogleCloudDialogflowV2IntentBatch--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentBatch(
    api.GoogleCloudDialogflowV2IntentBatch o) {
  buildCounterGoogleCloudDialogflowV2IntentBatch++;
  if (buildCounterGoogleCloudDialogflowV2IntentBatch < 3) {
    checkUnnamed35(o.intents!);
  }
  buildCounterGoogleCloudDialogflowV2IntentBatch--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo = 0;
api.GoogleCloudDialogflowV2IntentFollowupIntentInfo
    buildGoogleCloudDialogflowV2IntentFollowupIntentInfo() {
  final o = api.GoogleCloudDialogflowV2IntentFollowupIntentInfo();
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
    unittest.expect(
      o.followupIntentName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentFollowupIntentName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentFollowupIntentInfo--;
}

core.Map<core.String, core.Object?> buildUnnamed36() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed36(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted6 = (o['x']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
  var casted7 = (o['y']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessage = 0;
api.GoogleCloudDialogflowV2IntentMessage
    buildGoogleCloudDialogflowV2IntentMessage() {
  final o = api.GoogleCloudDialogflowV2IntentMessage();
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
    o.payload = buildUnnamed36();
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
    checkGoogleCloudDialogflowV2IntentMessageBasicCard(o.basicCard!);
    checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard(
        o.browseCarouselCard!);
    checkGoogleCloudDialogflowV2IntentMessageCard(o.card!);
    checkGoogleCloudDialogflowV2IntentMessageCarouselSelect(o.carouselSelect!);
    checkGoogleCloudDialogflowV2IntentMessageImage(o.image!);
    checkGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion(
        o.linkOutSuggestion!);
    checkGoogleCloudDialogflowV2IntentMessageListSelect(o.listSelect!);
    checkGoogleCloudDialogflowV2IntentMessageMediaContent(o.mediaContent!);
    checkUnnamed36(o.payload!);
    unittest.expect(
      o.platform!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2IntentMessageQuickReplies(o.quickReplies!);
    checkGoogleCloudDialogflowV2IntentMessageSimpleResponses(
        o.simpleResponses!);
    checkGoogleCloudDialogflowV2IntentMessageSuggestions(o.suggestions!);
    checkGoogleCloudDialogflowV2IntentMessageTableCard(o.tableCard!);
    checkGoogleCloudDialogflowV2IntentMessageText(o.text!);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessage--;
}

core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton>
    buildUnnamed37() => [
          buildGoogleCloudDialogflowV2IntentMessageBasicCardButton(),
          buildGoogleCloudDialogflowV2IntentMessageBasicCardButton(),
        ];

void checkUnnamed37(
    core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard = 0;
api.GoogleCloudDialogflowV2IntentMessageBasicCard
    buildGoogleCloudDialogflowV2IntentMessageBasicCard() {
  final o = api.GoogleCloudDialogflowV2IntentMessageBasicCard();
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard < 3) {
    o.buttons = buildUnnamed37();
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
    checkUnnamed37(o.buttons!);
    unittest.expect(
      o.formattedText!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2IntentMessageImage(o.image!);
    unittest.expect(
      o.subtitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCard--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton = 0;
api.GoogleCloudDialogflowV2IntentMessageBasicCardButton
    buildGoogleCloudDialogflowV2IntentMessageBasicCardButton() {
  final o = api.GoogleCloudDialogflowV2IntentMessageBasicCardButton();
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
        o.openUriAction!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButton--;
}

core.int
    buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction =
    0;
api.GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction
    buildGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction() {
  final o =
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
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction--;
}

core.List<
        api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem>
    buildUnnamed38() => [
          buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem(),
          buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem(),
        ];

void checkUnnamed38(
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
api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard
    buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard() {
  final o = api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard();
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard < 3) {
    o.imageDisplayOptions = 'foo';
    o.items = buildUnnamed38();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard(
    api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard < 3) {
    unittest.expect(
      o.imageDisplayOptions!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.items!);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard--;
}

core.int
    buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem =
    0;
api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem
    buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem() {
  final o = api
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.footer!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2IntentMessageImage(o.image!);
    checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction(
        o.openUriAction!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem--;
}

core.int
    buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction =
    0;
api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
    buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction() {
  final o = api
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
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.urlTypeHint!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction--;
}

core.List<api.GoogleCloudDialogflowV2IntentMessageCardButton>
    buildUnnamed39() => [
          buildGoogleCloudDialogflowV2IntentMessageCardButton(),
          buildGoogleCloudDialogflowV2IntentMessageCardButton(),
        ];

void checkUnnamed39(
    core.List<api.GoogleCloudDialogflowV2IntentMessageCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageCardButton(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageCardButton(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageCard = 0;
api.GoogleCloudDialogflowV2IntentMessageCard
    buildGoogleCloudDialogflowV2IntentMessageCard() {
  final o = api.GoogleCloudDialogflowV2IntentMessageCard();
  buildCounterGoogleCloudDialogflowV2IntentMessageCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCard < 3) {
    o.buttons = buildUnnamed39();
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
    checkUnnamed39(o.buttons!);
    unittest.expect(
      o.imageUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subtitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCard--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageCardButton = 0;
api.GoogleCloudDialogflowV2IntentMessageCardButton
    buildGoogleCloudDialogflowV2IntentMessageCardButton() {
  final o = api.GoogleCloudDialogflowV2IntentMessageCardButton();
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
    unittest.expect(
      o.postback!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCardButton--;
}

core.List<api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem>
    buildUnnamed40() => [
          buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem(),
          buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem(),
        ];

void checkUnnamed40(
    core.List<api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageCarouselSelectItem(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageCarouselSelectItem(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect = 0;
api.GoogleCloudDialogflowV2IntentMessageCarouselSelect
    buildGoogleCloudDialogflowV2IntentMessageCarouselSelect() {
  final o = api.GoogleCloudDialogflowV2IntentMessageCarouselSelect();
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect < 3) {
    o.items = buildUnnamed40();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageCarouselSelect(
    api.GoogleCloudDialogflowV2IntentMessageCarouselSelect o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect < 3) {
    checkUnnamed40(o.items!);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelect--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem = 0;
api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
    buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem() {
  final o = api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem();
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2IntentMessageImage(o.image!);
    checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(o.info!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageCarouselSelectItem--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageColumnProperties = 0;
api.GoogleCloudDialogflowV2IntentMessageColumnProperties
    buildGoogleCloudDialogflowV2IntentMessageColumnProperties() {
  final o = api.GoogleCloudDialogflowV2IntentMessageColumnProperties();
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
    unittest.expect(
      o.header!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.horizontalAlignment!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageColumnProperties--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageImage = 0;
api.GoogleCloudDialogflowV2IntentMessageImage
    buildGoogleCloudDialogflowV2IntentMessageImage() {
  final o = api.GoogleCloudDialogflowV2IntentMessageImage();
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
    unittest.expect(
      o.accessibilityText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageImage--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion = 0;
api.GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion
    buildGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion() {
  final o = api.GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion();
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
    unittest.expect(
      o.destinationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion--;
}

core.List<api.GoogleCloudDialogflowV2IntentMessageListSelectItem>
    buildUnnamed41() => [
          buildGoogleCloudDialogflowV2IntentMessageListSelectItem(),
          buildGoogleCloudDialogflowV2IntentMessageListSelectItem(),
        ];

void checkUnnamed41(
    core.List<api.GoogleCloudDialogflowV2IntentMessageListSelectItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageListSelectItem(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageListSelectItem(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageListSelect = 0;
api.GoogleCloudDialogflowV2IntentMessageListSelect
    buildGoogleCloudDialogflowV2IntentMessageListSelect() {
  final o = api.GoogleCloudDialogflowV2IntentMessageListSelect();
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelect++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageListSelect < 3) {
    o.items = buildUnnamed41();
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
    checkUnnamed41(o.items!);
    unittest.expect(
      o.subtitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelect--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem = 0;
api.GoogleCloudDialogflowV2IntentMessageListSelectItem
    buildGoogleCloudDialogflowV2IntentMessageListSelectItem() {
  final o = api.GoogleCloudDialogflowV2IntentMessageListSelectItem();
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2IntentMessageImage(o.image!);
    checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(o.info!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageListSelectItem--;
}

core.List<
        api.GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject>
    buildUnnamed42() => [
          buildGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject(),
          buildGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject(),
        ];

void checkUnnamed42(
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
api.GoogleCloudDialogflowV2IntentMessageMediaContent
    buildGoogleCloudDialogflowV2IntentMessageMediaContent() {
  final o = api.GoogleCloudDialogflowV2IntentMessageMediaContent();
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent < 3) {
    o.mediaObjects = buildUnnamed42();
    o.mediaType = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageMediaContent(
    api.GoogleCloudDialogflowV2IntentMessageMediaContent o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent < 3) {
    checkUnnamed42(o.mediaObjects!);
    unittest.expect(
      o.mediaType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContent--;
}

core.int
    buildCounterGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject =
    0;
api.GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject
    buildGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject() {
  final o =
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
    unittest.expect(
      o.contentUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2IntentMessageImage(o.icon!);
    checkGoogleCloudDialogflowV2IntentMessageImage(o.largeImage!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject--;
}

core.List<core.String> buildUnnamed43() => [
      'foo',
      'foo',
    ];

void checkUnnamed43(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies = 0;
api.GoogleCloudDialogflowV2IntentMessageQuickReplies
    buildGoogleCloudDialogflowV2IntentMessageQuickReplies() {
  final o = api.GoogleCloudDialogflowV2IntentMessageQuickReplies();
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies < 3) {
    o.quickReplies = buildUnnamed43();
    o.title = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageQuickReplies(
    api.GoogleCloudDialogflowV2IntentMessageQuickReplies o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies < 3) {
    checkUnnamed43(o.quickReplies!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageQuickReplies--;
}

core.List<core.String> buildUnnamed44() => [
      'foo',
      'foo',
    ];

void checkUnnamed44(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo = 0;
api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo
    buildGoogleCloudDialogflowV2IntentMessageSelectItemInfo() {
  final o = api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo();
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo < 3) {
    o.key = 'foo';
    o.synonyms = buildUnnamed44();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(
    api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkUnnamed44(o.synonyms!);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSelectItemInfo--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse = 0;
api.GoogleCloudDialogflowV2IntentMessageSimpleResponse
    buildGoogleCloudDialogflowV2IntentMessageSimpleResponse() {
  final o = api.GoogleCloudDialogflowV2IntentMessageSimpleResponse();
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
    unittest.expect(
      o.displayText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ssml!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textToSpeech!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponse--;
}

core.List<api.GoogleCloudDialogflowV2IntentMessageSimpleResponse>
    buildUnnamed45() => [
          buildGoogleCloudDialogflowV2IntentMessageSimpleResponse(),
          buildGoogleCloudDialogflowV2IntentMessageSimpleResponse(),
        ];

void checkUnnamed45(
    core.List<api.GoogleCloudDialogflowV2IntentMessageSimpleResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageSimpleResponse(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageSimpleResponse(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses = 0;
api.GoogleCloudDialogflowV2IntentMessageSimpleResponses
    buildGoogleCloudDialogflowV2IntentMessageSimpleResponses() {
  final o = api.GoogleCloudDialogflowV2IntentMessageSimpleResponses();
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses < 3) {
    o.simpleResponses = buildUnnamed45();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageSimpleResponses(
    api.GoogleCloudDialogflowV2IntentMessageSimpleResponses o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses < 3) {
    checkUnnamed45(o.simpleResponses!);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSimpleResponses--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion = 0;
api.GoogleCloudDialogflowV2IntentMessageSuggestion
    buildGoogleCloudDialogflowV2IntentMessageSuggestion() {
  final o = api.GoogleCloudDialogflowV2IntentMessageSuggestion();
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
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestion--;
}

core.List<api.GoogleCloudDialogflowV2IntentMessageSuggestion>
    buildUnnamed46() => [
          buildGoogleCloudDialogflowV2IntentMessageSuggestion(),
          buildGoogleCloudDialogflowV2IntentMessageSuggestion(),
        ];

void checkUnnamed46(
    core.List<api.GoogleCloudDialogflowV2IntentMessageSuggestion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageSuggestion(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageSuggestion(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions = 0;
api.GoogleCloudDialogflowV2IntentMessageSuggestions
    buildGoogleCloudDialogflowV2IntentMessageSuggestions() {
  final o = api.GoogleCloudDialogflowV2IntentMessageSuggestions();
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions < 3) {
    o.suggestions = buildUnnamed46();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageSuggestions(
    api.GoogleCloudDialogflowV2IntentMessageSuggestions o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions < 3) {
    checkUnnamed46(o.suggestions!);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageSuggestions--;
}

core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton>
    buildUnnamed47() => [
          buildGoogleCloudDialogflowV2IntentMessageBasicCardButton(),
          buildGoogleCloudDialogflowV2IntentMessageBasicCardButton(),
        ];

void checkUnnamed47(
    core.List<api.GoogleCloudDialogflowV2IntentMessageBasicCardButton> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(o[1]);
}

core.List<api.GoogleCloudDialogflowV2IntentMessageColumnProperties>
    buildUnnamed48() => [
          buildGoogleCloudDialogflowV2IntentMessageColumnProperties(),
          buildGoogleCloudDialogflowV2IntentMessageColumnProperties(),
        ];

void checkUnnamed48(
    core.List<api.GoogleCloudDialogflowV2IntentMessageColumnProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageColumnProperties(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageColumnProperties(o[1]);
}

core.List<api.GoogleCloudDialogflowV2IntentMessageTableCardRow>
    buildUnnamed49() => [
          buildGoogleCloudDialogflowV2IntentMessageTableCardRow(),
          buildGoogleCloudDialogflowV2IntentMessageTableCardRow(),
        ];

void checkUnnamed49(
    core.List<api.GoogleCloudDialogflowV2IntentMessageTableCardRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageTableCardRow(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageTableCardRow(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageTableCard = 0;
api.GoogleCloudDialogflowV2IntentMessageTableCard
    buildGoogleCloudDialogflowV2IntentMessageTableCard() {
  final o = api.GoogleCloudDialogflowV2IntentMessageTableCard();
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCard++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageTableCard < 3) {
    o.buttons = buildUnnamed47();
    o.columnProperties = buildUnnamed48();
    o.image = buildGoogleCloudDialogflowV2IntentMessageImage();
    o.rows = buildUnnamed49();
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
    checkUnnamed47(o.buttons!);
    checkUnnamed48(o.columnProperties!);
    checkGoogleCloudDialogflowV2IntentMessageImage(o.image!);
    checkUnnamed49(o.rows!);
    unittest.expect(
      o.subtitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCard--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageTableCardCell = 0;
api.GoogleCloudDialogflowV2IntentMessageTableCardCell
    buildGoogleCloudDialogflowV2IntentMessageTableCardCell() {
  final o = api.GoogleCloudDialogflowV2IntentMessageTableCardCell();
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
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardCell--;
}

core.List<api.GoogleCloudDialogflowV2IntentMessageTableCardCell>
    buildUnnamed50() => [
          buildGoogleCloudDialogflowV2IntentMessageTableCardCell(),
          buildGoogleCloudDialogflowV2IntentMessageTableCardCell(),
        ];

void checkUnnamed50(
    core.List<api.GoogleCloudDialogflowV2IntentMessageTableCardCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessageTableCardCell(o[0]);
  checkGoogleCloudDialogflowV2IntentMessageTableCardCell(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow = 0;
api.GoogleCloudDialogflowV2IntentMessageTableCardRow
    buildGoogleCloudDialogflowV2IntentMessageTableCardRow() {
  final o = api.GoogleCloudDialogflowV2IntentMessageTableCardRow();
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow < 3) {
    o.cells = buildUnnamed50();
    o.dividerAfter = true;
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageTableCardRow(
    api.GoogleCloudDialogflowV2IntentMessageTableCardRow o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow < 3) {
    checkUnnamed50(o.cells!);
    unittest.expect(o.dividerAfter!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageTableCardRow--;
}

core.List<core.String> buildUnnamed51() => [
      'foo',
      'foo',
    ];

void checkUnnamed51(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowV2IntentMessageText = 0;
api.GoogleCloudDialogflowV2IntentMessageText
    buildGoogleCloudDialogflowV2IntentMessageText() {
  final o = api.GoogleCloudDialogflowV2IntentMessageText();
  buildCounterGoogleCloudDialogflowV2IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageText < 3) {
    o.text = buildUnnamed51();
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageText--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentMessageText(
    api.GoogleCloudDialogflowV2IntentMessageText o) {
  buildCounterGoogleCloudDialogflowV2IntentMessageText++;
  if (buildCounterGoogleCloudDialogflowV2IntentMessageText < 3) {
    checkUnnamed51(o.text!);
  }
  buildCounterGoogleCloudDialogflowV2IntentMessageText--;
}

core.List<core.String> buildUnnamed52() => [
      'foo',
      'foo',
    ];

void checkUnnamed52(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowV2IntentParameter = 0;
api.GoogleCloudDialogflowV2IntentParameter
    buildGoogleCloudDialogflowV2IntentParameter() {
  final o = api.GoogleCloudDialogflowV2IntentParameter();
  buildCounterGoogleCloudDialogflowV2IntentParameter++;
  if (buildCounterGoogleCloudDialogflowV2IntentParameter < 3) {
    o.defaultValue = 'foo';
    o.displayName = 'foo';
    o.entityTypeDisplayName = 'foo';
    o.isList = true;
    o.mandatory = true;
    o.name = 'foo';
    o.prompts = buildUnnamed52();
    o.value = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2IntentParameter--;
  return o;
}

void checkGoogleCloudDialogflowV2IntentParameter(
    api.GoogleCloudDialogflowV2IntentParameter o) {
  buildCounterGoogleCloudDialogflowV2IntentParameter++;
  if (buildCounterGoogleCloudDialogflowV2IntentParameter < 3) {
    unittest.expect(
      o.defaultValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityTypeDisplayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isList!, unittest.isTrue);
    unittest.expect(o.mandatory!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed52(o.prompts!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentParameter--;
}

core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrasePart>
    buildUnnamed53() => [
          buildGoogleCloudDialogflowV2IntentTrainingPhrasePart(),
          buildGoogleCloudDialogflowV2IntentTrainingPhrasePart(),
        ];

void checkUnnamed53(
    core.List<api.GoogleCloudDialogflowV2IntentTrainingPhrasePart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentTrainingPhrasePart(o[0]);
  checkGoogleCloudDialogflowV2IntentTrainingPhrasePart(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase = 0;
api.GoogleCloudDialogflowV2IntentTrainingPhrase
    buildGoogleCloudDialogflowV2IntentTrainingPhrase() {
  final o = api.GoogleCloudDialogflowV2IntentTrainingPhrase();
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase < 3) {
    o.name = 'foo';
    o.parts = buildUnnamed53();
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed53(o.parts!);
    unittest.expect(
      o.timesAddedCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrase--;
}

core.int buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart = 0;
api.GoogleCloudDialogflowV2IntentTrainingPhrasePart
    buildGoogleCloudDialogflowV2IntentTrainingPhrasePart() {
  final o = api.GoogleCloudDialogflowV2IntentTrainingPhrasePart();
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
    unittest.expect(
      o.alias!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    unittest.expect(o.userDefined!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2IntentTrainingPhrasePart--;
}

core.int buildCounterGoogleCloudDialogflowV2KnowledgeBase = 0;
api.GoogleCloudDialogflowV2KnowledgeBase
    buildGoogleCloudDialogflowV2KnowledgeBase() {
  final o = api.GoogleCloudDialogflowV2KnowledgeBase();
  buildCounterGoogleCloudDialogflowV2KnowledgeBase++;
  if (buildCounterGoogleCloudDialogflowV2KnowledgeBase < 3) {
    o.displayName = 'foo';
    o.languageCode = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2KnowledgeBase--;
  return o;
}

void checkGoogleCloudDialogflowV2KnowledgeBase(
    api.GoogleCloudDialogflowV2KnowledgeBase o) {
  buildCounterGoogleCloudDialogflowV2KnowledgeBase++;
  if (buildCounterGoogleCloudDialogflowV2KnowledgeBase < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2KnowledgeBase--;
}

core.List<api.GoogleCloudDialogflowV2AnswerRecord> buildUnnamed54() => [
      buildGoogleCloudDialogflowV2AnswerRecord(),
      buildGoogleCloudDialogflowV2AnswerRecord(),
    ];

void checkUnnamed54(core.List<api.GoogleCloudDialogflowV2AnswerRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2AnswerRecord(o[0]);
  checkGoogleCloudDialogflowV2AnswerRecord(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListAnswerRecordsResponse = 0;
api.GoogleCloudDialogflowV2ListAnswerRecordsResponse
    buildGoogleCloudDialogflowV2ListAnswerRecordsResponse() {
  final o = api.GoogleCloudDialogflowV2ListAnswerRecordsResponse();
  buildCounterGoogleCloudDialogflowV2ListAnswerRecordsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListAnswerRecordsResponse < 3) {
    o.answerRecords = buildUnnamed54();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ListAnswerRecordsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListAnswerRecordsResponse(
    api.GoogleCloudDialogflowV2ListAnswerRecordsResponse o) {
  buildCounterGoogleCloudDialogflowV2ListAnswerRecordsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListAnswerRecordsResponse < 3) {
    checkUnnamed54(o.answerRecords!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2ListAnswerRecordsResponse--;
}

core.List<api.GoogleCloudDialogflowV2Context> buildUnnamed55() => [
      buildGoogleCloudDialogflowV2Context(),
      buildGoogleCloudDialogflowV2Context(),
    ];

void checkUnnamed55(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListContextsResponse = 0;
api.GoogleCloudDialogflowV2ListContextsResponse
    buildGoogleCloudDialogflowV2ListContextsResponse() {
  final o = api.GoogleCloudDialogflowV2ListContextsResponse();
  buildCounterGoogleCloudDialogflowV2ListContextsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListContextsResponse < 3) {
    o.contexts = buildUnnamed55();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ListContextsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListContextsResponse(
    api.GoogleCloudDialogflowV2ListContextsResponse o) {
  buildCounterGoogleCloudDialogflowV2ListContextsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListContextsResponse < 3) {
    checkUnnamed55(o.contexts!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2ListContextsResponse--;
}

core.List<api.GoogleCloudDialogflowV2ConversationProfile> buildUnnamed56() => [
      buildGoogleCloudDialogflowV2ConversationProfile(),
      buildGoogleCloudDialogflowV2ConversationProfile(),
    ];

void checkUnnamed56(
    core.List<api.GoogleCloudDialogflowV2ConversationProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2ConversationProfile(o[0]);
  checkGoogleCloudDialogflowV2ConversationProfile(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListConversationProfilesResponse =
    0;
api.GoogleCloudDialogflowV2ListConversationProfilesResponse
    buildGoogleCloudDialogflowV2ListConversationProfilesResponse() {
  final o = api.GoogleCloudDialogflowV2ListConversationProfilesResponse();
  buildCounterGoogleCloudDialogflowV2ListConversationProfilesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListConversationProfilesResponse < 3) {
    o.conversationProfiles = buildUnnamed56();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ListConversationProfilesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListConversationProfilesResponse(
    api.GoogleCloudDialogflowV2ListConversationProfilesResponse o) {
  buildCounterGoogleCloudDialogflowV2ListConversationProfilesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListConversationProfilesResponse < 3) {
    checkUnnamed56(o.conversationProfiles!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2ListConversationProfilesResponse--;
}

core.List<api.GoogleCloudDialogflowV2Conversation> buildUnnamed57() => [
      buildGoogleCloudDialogflowV2Conversation(),
      buildGoogleCloudDialogflowV2Conversation(),
    ];

void checkUnnamed57(core.List<api.GoogleCloudDialogflowV2Conversation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Conversation(o[0]);
  checkGoogleCloudDialogflowV2Conversation(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListConversationsResponse = 0;
api.GoogleCloudDialogflowV2ListConversationsResponse
    buildGoogleCloudDialogflowV2ListConversationsResponse() {
  final o = api.GoogleCloudDialogflowV2ListConversationsResponse();
  buildCounterGoogleCloudDialogflowV2ListConversationsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListConversationsResponse < 3) {
    o.conversations = buildUnnamed57();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ListConversationsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListConversationsResponse(
    api.GoogleCloudDialogflowV2ListConversationsResponse o) {
  buildCounterGoogleCloudDialogflowV2ListConversationsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListConversationsResponse < 3) {
    checkUnnamed57(o.conversations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2ListConversationsResponse--;
}

core.List<api.GoogleCloudDialogflowV2Document> buildUnnamed58() => [
      buildGoogleCloudDialogflowV2Document(),
      buildGoogleCloudDialogflowV2Document(),
    ];

void checkUnnamed58(core.List<api.GoogleCloudDialogflowV2Document> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Document(o[0]);
  checkGoogleCloudDialogflowV2Document(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListDocumentsResponse = 0;
api.GoogleCloudDialogflowV2ListDocumentsResponse
    buildGoogleCloudDialogflowV2ListDocumentsResponse() {
  final o = api.GoogleCloudDialogflowV2ListDocumentsResponse();
  buildCounterGoogleCloudDialogflowV2ListDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListDocumentsResponse < 3) {
    o.documents = buildUnnamed58();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ListDocumentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListDocumentsResponse(
    api.GoogleCloudDialogflowV2ListDocumentsResponse o) {
  buildCounterGoogleCloudDialogflowV2ListDocumentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListDocumentsResponse < 3) {
    checkUnnamed58(o.documents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2ListDocumentsResponse--;
}

core.List<api.GoogleCloudDialogflowV2EntityType> buildUnnamed59() => [
      buildGoogleCloudDialogflowV2EntityType(),
      buildGoogleCloudDialogflowV2EntityType(),
    ];

void checkUnnamed59(core.List<api.GoogleCloudDialogflowV2EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityType(o[0]);
  checkGoogleCloudDialogflowV2EntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse = 0;
api.GoogleCloudDialogflowV2ListEntityTypesResponse
    buildGoogleCloudDialogflowV2ListEntityTypesResponse() {
  final o = api.GoogleCloudDialogflowV2ListEntityTypesResponse();
  buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse < 3) {
    o.entityTypes = buildUnnamed59();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListEntityTypesResponse(
    api.GoogleCloudDialogflowV2ListEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse < 3) {
    checkUnnamed59(o.entityTypes!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2ListEntityTypesResponse--;
}

core.List<api.GoogleCloudDialogflowV2Environment> buildUnnamed60() => [
      buildGoogleCloudDialogflowV2Environment(),
      buildGoogleCloudDialogflowV2Environment(),
    ];

void checkUnnamed60(core.List<api.GoogleCloudDialogflowV2Environment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Environment(o[0]);
  checkGoogleCloudDialogflowV2Environment(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse = 0;
api.GoogleCloudDialogflowV2ListEnvironmentsResponse
    buildGoogleCloudDialogflowV2ListEnvironmentsResponse() {
  final o = api.GoogleCloudDialogflowV2ListEnvironmentsResponse();
  buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse < 3) {
    o.environments = buildUnnamed60();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListEnvironmentsResponse(
    api.GoogleCloudDialogflowV2ListEnvironmentsResponse o) {
  buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse < 3) {
    checkUnnamed60(o.environments!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2ListEnvironmentsResponse--;
}

core.List<api.GoogleCloudDialogflowV2Intent> buildUnnamed61() => [
      buildGoogleCloudDialogflowV2Intent(),
      buildGoogleCloudDialogflowV2Intent(),
    ];

void checkUnnamed61(core.List<api.GoogleCloudDialogflowV2Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Intent(o[0]);
  checkGoogleCloudDialogflowV2Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListIntentsResponse = 0;
api.GoogleCloudDialogflowV2ListIntentsResponse
    buildGoogleCloudDialogflowV2ListIntentsResponse() {
  final o = api.GoogleCloudDialogflowV2ListIntentsResponse();
  buildCounterGoogleCloudDialogflowV2ListIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListIntentsResponse < 3) {
    o.intents = buildUnnamed61();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ListIntentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListIntentsResponse(
    api.GoogleCloudDialogflowV2ListIntentsResponse o) {
  buildCounterGoogleCloudDialogflowV2ListIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListIntentsResponse < 3) {
    checkUnnamed61(o.intents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2ListIntentsResponse--;
}

core.List<api.GoogleCloudDialogflowV2KnowledgeBase> buildUnnamed62() => [
      buildGoogleCloudDialogflowV2KnowledgeBase(),
      buildGoogleCloudDialogflowV2KnowledgeBase(),
    ];

void checkUnnamed62(core.List<api.GoogleCloudDialogflowV2KnowledgeBase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2KnowledgeBase(o[0]);
  checkGoogleCloudDialogflowV2KnowledgeBase(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListKnowledgeBasesResponse = 0;
api.GoogleCloudDialogflowV2ListKnowledgeBasesResponse
    buildGoogleCloudDialogflowV2ListKnowledgeBasesResponse() {
  final o = api.GoogleCloudDialogflowV2ListKnowledgeBasesResponse();
  buildCounterGoogleCloudDialogflowV2ListKnowledgeBasesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListKnowledgeBasesResponse < 3) {
    o.knowledgeBases = buildUnnamed62();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ListKnowledgeBasesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListKnowledgeBasesResponse(
    api.GoogleCloudDialogflowV2ListKnowledgeBasesResponse o) {
  buildCounterGoogleCloudDialogflowV2ListKnowledgeBasesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListKnowledgeBasesResponse < 3) {
    checkUnnamed62(o.knowledgeBases!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2ListKnowledgeBasesResponse--;
}

core.List<api.GoogleCloudDialogflowV2Message> buildUnnamed63() => [
      buildGoogleCloudDialogflowV2Message(),
      buildGoogleCloudDialogflowV2Message(),
    ];

void checkUnnamed63(core.List<api.GoogleCloudDialogflowV2Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Message(o[0]);
  checkGoogleCloudDialogflowV2Message(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListMessagesResponse = 0;
api.GoogleCloudDialogflowV2ListMessagesResponse
    buildGoogleCloudDialogflowV2ListMessagesResponse() {
  final o = api.GoogleCloudDialogflowV2ListMessagesResponse();
  buildCounterGoogleCloudDialogflowV2ListMessagesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListMessagesResponse < 3) {
    o.messages = buildUnnamed63();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ListMessagesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListMessagesResponse(
    api.GoogleCloudDialogflowV2ListMessagesResponse o) {
  buildCounterGoogleCloudDialogflowV2ListMessagesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListMessagesResponse < 3) {
    checkUnnamed63(o.messages!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2ListMessagesResponse--;
}

core.List<api.GoogleCloudDialogflowV2Participant> buildUnnamed64() => [
      buildGoogleCloudDialogflowV2Participant(),
      buildGoogleCloudDialogflowV2Participant(),
    ];

void checkUnnamed64(core.List<api.GoogleCloudDialogflowV2Participant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Participant(o[0]);
  checkGoogleCloudDialogflowV2Participant(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListParticipantsResponse = 0;
api.GoogleCloudDialogflowV2ListParticipantsResponse
    buildGoogleCloudDialogflowV2ListParticipantsResponse() {
  final o = api.GoogleCloudDialogflowV2ListParticipantsResponse();
  buildCounterGoogleCloudDialogflowV2ListParticipantsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListParticipantsResponse < 3) {
    o.nextPageToken = 'foo';
    o.participants = buildUnnamed64();
  }
  buildCounterGoogleCloudDialogflowV2ListParticipantsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListParticipantsResponse(
    api.GoogleCloudDialogflowV2ListParticipantsResponse o) {
  buildCounterGoogleCloudDialogflowV2ListParticipantsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListParticipantsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed64(o.participants!);
  }
  buildCounterGoogleCloudDialogflowV2ListParticipantsResponse--;
}

core.List<api.GoogleCloudDialogflowV2SessionEntityType> buildUnnamed65() => [
      buildGoogleCloudDialogflowV2SessionEntityType(),
      buildGoogleCloudDialogflowV2SessionEntityType(),
    ];

void checkUnnamed65(core.List<api.GoogleCloudDialogflowV2SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2SessionEntityType(o[0]);
  checkGoogleCloudDialogflowV2SessionEntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse = 0;
api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse
    buildGoogleCloudDialogflowV2ListSessionEntityTypesResponse() {
  final o = api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse();
  buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sessionEntityTypes = buildUnnamed65();
  }
  buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListSessionEntityTypesResponse(
    api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed65(o.sessionEntityTypes!);
  }
  buildCounterGoogleCloudDialogflowV2ListSessionEntityTypesResponse--;
}

core.List<api.GoogleCloudDialogflowV2Version> buildUnnamed66() => [
      buildGoogleCloudDialogflowV2Version(),
      buildGoogleCloudDialogflowV2Version(),
    ];

void checkUnnamed66(core.List<api.GoogleCloudDialogflowV2Version> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Version(o[0]);
  checkGoogleCloudDialogflowV2Version(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ListVersionsResponse = 0;
api.GoogleCloudDialogflowV2ListVersionsResponse
    buildGoogleCloudDialogflowV2ListVersionsResponse() {
  final o = api.GoogleCloudDialogflowV2ListVersionsResponse();
  buildCounterGoogleCloudDialogflowV2ListVersionsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListVersionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.versions = buildUnnamed66();
  }
  buildCounterGoogleCloudDialogflowV2ListVersionsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2ListVersionsResponse(
    api.GoogleCloudDialogflowV2ListVersionsResponse o) {
  buildCounterGoogleCloudDialogflowV2ListVersionsResponse++;
  if (buildCounterGoogleCloudDialogflowV2ListVersionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed66(o.versions!);
  }
  buildCounterGoogleCloudDialogflowV2ListVersionsResponse--;
}

core.int buildCounterGoogleCloudDialogflowV2LoggingConfig = 0;
api.GoogleCloudDialogflowV2LoggingConfig
    buildGoogleCloudDialogflowV2LoggingConfig() {
  final o = api.GoogleCloudDialogflowV2LoggingConfig();
  buildCounterGoogleCloudDialogflowV2LoggingConfig++;
  if (buildCounterGoogleCloudDialogflowV2LoggingConfig < 3) {
    o.enableStackdriverLogging = true;
  }
  buildCounterGoogleCloudDialogflowV2LoggingConfig--;
  return o;
}

void checkGoogleCloudDialogflowV2LoggingConfig(
    api.GoogleCloudDialogflowV2LoggingConfig o) {
  buildCounterGoogleCloudDialogflowV2LoggingConfig++;
  if (buildCounterGoogleCloudDialogflowV2LoggingConfig < 3) {
    unittest.expect(o.enableStackdriverLogging!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2LoggingConfig--;
}

core.int buildCounterGoogleCloudDialogflowV2Message = 0;
api.GoogleCloudDialogflowV2Message buildGoogleCloudDialogflowV2Message() {
  final o = api.GoogleCloudDialogflowV2Message();
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
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2MessageAnnotation(o.messageAnnotation!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.participant!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.participantRole!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2Message--;
}

core.List<api.GoogleCloudDialogflowV2AnnotatedMessagePart> buildUnnamed67() => [
      buildGoogleCloudDialogflowV2AnnotatedMessagePart(),
      buildGoogleCloudDialogflowV2AnnotatedMessagePart(),
    ];

void checkUnnamed67(
    core.List<api.GoogleCloudDialogflowV2AnnotatedMessagePart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2AnnotatedMessagePart(o[0]);
  checkGoogleCloudDialogflowV2AnnotatedMessagePart(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2MessageAnnotation = 0;
api.GoogleCloudDialogflowV2MessageAnnotation
    buildGoogleCloudDialogflowV2MessageAnnotation() {
  final o = api.GoogleCloudDialogflowV2MessageAnnotation();
  buildCounterGoogleCloudDialogflowV2MessageAnnotation++;
  if (buildCounterGoogleCloudDialogflowV2MessageAnnotation < 3) {
    o.containEntities = true;
    o.parts = buildUnnamed67();
  }
  buildCounterGoogleCloudDialogflowV2MessageAnnotation--;
  return o;
}

void checkGoogleCloudDialogflowV2MessageAnnotation(
    api.GoogleCloudDialogflowV2MessageAnnotation o) {
  buildCounterGoogleCloudDialogflowV2MessageAnnotation++;
  if (buildCounterGoogleCloudDialogflowV2MessageAnnotation < 3) {
    unittest.expect(o.containEntities!, unittest.isTrue);
    checkUnnamed67(o.parts!);
  }
  buildCounterGoogleCloudDialogflowV2MessageAnnotation--;
}

core.int buildCounterGoogleCloudDialogflowV2NotificationConfig = 0;
api.GoogleCloudDialogflowV2NotificationConfig
    buildGoogleCloudDialogflowV2NotificationConfig() {
  final o = api.GoogleCloudDialogflowV2NotificationConfig();
  buildCounterGoogleCloudDialogflowV2NotificationConfig++;
  if (buildCounterGoogleCloudDialogflowV2NotificationConfig < 3) {
    o.messageFormat = 'foo';
    o.topic = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2NotificationConfig--;
  return o;
}

void checkGoogleCloudDialogflowV2NotificationConfig(
    api.GoogleCloudDialogflowV2NotificationConfig o) {
  buildCounterGoogleCloudDialogflowV2NotificationConfig++;
  if (buildCounterGoogleCloudDialogflowV2NotificationConfig < 3) {
    unittest.expect(
      o.messageFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2NotificationConfig--;
}

core.int buildCounterGoogleCloudDialogflowV2OutputAudio = 0;
api.GoogleCloudDialogflowV2OutputAudio
    buildGoogleCloudDialogflowV2OutputAudio() {
  final o = api.GoogleCloudDialogflowV2OutputAudio();
  buildCounterGoogleCloudDialogflowV2OutputAudio++;
  if (buildCounterGoogleCloudDialogflowV2OutputAudio < 3) {
    o.audio = 'foo';
    o.config = buildGoogleCloudDialogflowV2OutputAudioConfig();
  }
  buildCounterGoogleCloudDialogflowV2OutputAudio--;
  return o;
}

void checkGoogleCloudDialogflowV2OutputAudio(
    api.GoogleCloudDialogflowV2OutputAudio o) {
  buildCounterGoogleCloudDialogflowV2OutputAudio++;
  if (buildCounterGoogleCloudDialogflowV2OutputAudio < 3) {
    unittest.expect(
      o.audio!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2OutputAudioConfig(o.config!);
  }
  buildCounterGoogleCloudDialogflowV2OutputAudio--;
}

core.int buildCounterGoogleCloudDialogflowV2OutputAudioConfig = 0;
api.GoogleCloudDialogflowV2OutputAudioConfig
    buildGoogleCloudDialogflowV2OutputAudioConfig() {
  final o = api.GoogleCloudDialogflowV2OutputAudioConfig();
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
    unittest.expect(
      o.audioEncoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sampleRateHertz!,
      unittest.equals(42),
    );
    checkGoogleCloudDialogflowV2SynthesizeSpeechConfig(
        o.synthesizeSpeechConfig!);
  }
  buildCounterGoogleCloudDialogflowV2OutputAudioConfig--;
}

core.Map<core.String, core.String> buildUnnamed68() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed68(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowV2Participant = 0;
api.GoogleCloudDialogflowV2Participant
    buildGoogleCloudDialogflowV2Participant() {
  final o = api.GoogleCloudDialogflowV2Participant();
  buildCounterGoogleCloudDialogflowV2Participant++;
  if (buildCounterGoogleCloudDialogflowV2Participant < 3) {
    o.documentsMetadataFilters = buildUnnamed68();
    o.name = 'foo';
    o.role = 'foo';
    o.sipRecordingMediaLabel = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2Participant--;
  return o;
}

void checkGoogleCloudDialogflowV2Participant(
    api.GoogleCloudDialogflowV2Participant o) {
  buildCounterGoogleCloudDialogflowV2Participant++;
  if (buildCounterGoogleCloudDialogflowV2Participant < 3) {
    checkUnnamed68(o.documentsMetadataFilters!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sipRecordingMediaLabel!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2Participant--;
}

core.int buildCounterGoogleCloudDialogflowV2QueryInput = 0;
api.GoogleCloudDialogflowV2QueryInput buildGoogleCloudDialogflowV2QueryInput() {
  final o = api.GoogleCloudDialogflowV2QueryInput();
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
    checkGoogleCloudDialogflowV2InputAudioConfig(o.audioConfig!);
    checkGoogleCloudDialogflowV2EventInput(o.event!);
    checkGoogleCloudDialogflowV2TextInput(o.text!);
  }
  buildCounterGoogleCloudDialogflowV2QueryInput--;
}

core.List<api.GoogleCloudDialogflowV2Context> buildUnnamed69() => [
      buildGoogleCloudDialogflowV2Context(),
      buildGoogleCloudDialogflowV2Context(),
    ];

void checkUnnamed69(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed70() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed70(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted8 = (o['x']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
  var casted9 = (o['y']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(
    casted9['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted9['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted9['string'],
    unittest.equals('foo'),
  );
}

core.List<api.GoogleCloudDialogflowV2SessionEntityType> buildUnnamed71() => [
      buildGoogleCloudDialogflowV2SessionEntityType(),
      buildGoogleCloudDialogflowV2SessionEntityType(),
    ];

void checkUnnamed71(core.List<api.GoogleCloudDialogflowV2SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2SessionEntityType(o[0]);
  checkGoogleCloudDialogflowV2SessionEntityType(o[1]);
}

core.Map<core.String, core.String> buildUnnamed72() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed72(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowV2QueryParameters = 0;
api.GoogleCloudDialogflowV2QueryParameters
    buildGoogleCloudDialogflowV2QueryParameters() {
  final o = api.GoogleCloudDialogflowV2QueryParameters();
  buildCounterGoogleCloudDialogflowV2QueryParameters++;
  if (buildCounterGoogleCloudDialogflowV2QueryParameters < 3) {
    o.contexts = buildUnnamed69();
    o.geoLocation = buildGoogleTypeLatLng();
    o.payload = buildUnnamed70();
    o.resetContexts = true;
    o.sentimentAnalysisRequestConfig =
        buildGoogleCloudDialogflowV2SentimentAnalysisRequestConfig();
    o.sessionEntityTypes = buildUnnamed71();
    o.timeZone = 'foo';
    o.webhookHeaders = buildUnnamed72();
  }
  buildCounterGoogleCloudDialogflowV2QueryParameters--;
  return o;
}

void checkGoogleCloudDialogflowV2QueryParameters(
    api.GoogleCloudDialogflowV2QueryParameters o) {
  buildCounterGoogleCloudDialogflowV2QueryParameters++;
  if (buildCounterGoogleCloudDialogflowV2QueryParameters < 3) {
    checkUnnamed69(o.contexts!);
    checkGoogleTypeLatLng(o.geoLocation!);
    checkUnnamed70(o.payload!);
    unittest.expect(o.resetContexts!, unittest.isTrue);
    checkGoogleCloudDialogflowV2SentimentAnalysisRequestConfig(
        o.sentimentAnalysisRequestConfig!);
    checkUnnamed71(o.sessionEntityTypes!);
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
    checkUnnamed72(o.webhookHeaders!);
  }
  buildCounterGoogleCloudDialogflowV2QueryParameters--;
}

core.Map<core.String, core.Object?> buildUnnamed73() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed73(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted10 = (o['x']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(
    casted10['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted10['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted10['string'],
    unittest.equals('foo'),
  );
  var casted11 = (o['y']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(
    casted11['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted11['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted11['string'],
    unittest.equals('foo'),
  );
}

core.List<api.GoogleCloudDialogflowV2IntentMessage> buildUnnamed74() => [
      buildGoogleCloudDialogflowV2IntentMessage(),
      buildGoogleCloudDialogflowV2IntentMessage(),
    ];

void checkUnnamed74(core.List<api.GoogleCloudDialogflowV2IntentMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2IntentMessage(o[0]);
  checkGoogleCloudDialogflowV2IntentMessage(o[1]);
}

core.List<api.GoogleCloudDialogflowV2Context> buildUnnamed75() => [
      buildGoogleCloudDialogflowV2Context(),
      buildGoogleCloudDialogflowV2Context(),
    ];

void checkUnnamed75(core.List<api.GoogleCloudDialogflowV2Context> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Context(o[0]);
  checkGoogleCloudDialogflowV2Context(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed76() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed76(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted12 = (o['x']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(
    casted12['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted12['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted12['string'],
    unittest.equals('foo'),
  );
  var casted13 = (o['y']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(
    casted13['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted13['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted13['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed77() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed77(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted14 = (o['x']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(
    casted14['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted14['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted14['string'],
    unittest.equals('foo'),
  );
  var casted15 = (o['y']!) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(
    casted15['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted15['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted15['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudDialogflowV2QueryResult = 0;
api.GoogleCloudDialogflowV2QueryResult
    buildGoogleCloudDialogflowV2QueryResult() {
  final o = api.GoogleCloudDialogflowV2QueryResult();
  buildCounterGoogleCloudDialogflowV2QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2QueryResult < 3) {
    o.action = 'foo';
    o.allRequiredParamsPresent = true;
    o.cancelsSlotFilling = true;
    o.diagnosticInfo = buildUnnamed73();
    o.fulfillmentMessages = buildUnnamed74();
    o.fulfillmentText = 'foo';
    o.intent = buildGoogleCloudDialogflowV2Intent();
    o.intentDetectionConfidence = 42.0;
    o.languageCode = 'foo';
    o.outputContexts = buildUnnamed75();
    o.parameters = buildUnnamed76();
    o.queryText = 'foo';
    o.sentimentAnalysisResult =
        buildGoogleCloudDialogflowV2SentimentAnalysisResult();
    o.speechRecognitionConfidence = 42.0;
    o.webhookPayload = buildUnnamed77();
    o.webhookSource = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2QueryResult--;
  return o;
}

void checkGoogleCloudDialogflowV2QueryResult(
    api.GoogleCloudDialogflowV2QueryResult o) {
  buildCounterGoogleCloudDialogflowV2QueryResult++;
  if (buildCounterGoogleCloudDialogflowV2QueryResult < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(o.allRequiredParamsPresent!, unittest.isTrue);
    unittest.expect(o.cancelsSlotFilling!, unittest.isTrue);
    checkUnnamed73(o.diagnosticInfo!);
    checkUnnamed74(o.fulfillmentMessages!);
    unittest.expect(
      o.fulfillmentText!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2Intent(o.intent!);
    unittest.expect(
      o.intentDetectionConfidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkUnnamed75(o.outputContexts!);
    checkUnnamed76(o.parameters!);
    unittest.expect(
      o.queryText!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowV2SentimentAnalysisResult(
        o.sentimentAnalysisResult!);
    unittest.expect(
      o.speechRecognitionConfidence!,
      unittest.equals(42.0),
    );
    checkUnnamed77(o.webhookPayload!);
    unittest.expect(
      o.webhookSource!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2QueryResult--;
}

core.int buildCounterGoogleCloudDialogflowV2ReloadDocumentRequest = 0;
api.GoogleCloudDialogflowV2ReloadDocumentRequest
    buildGoogleCloudDialogflowV2ReloadDocumentRequest() {
  final o = api.GoogleCloudDialogflowV2ReloadDocumentRequest();
  buildCounterGoogleCloudDialogflowV2ReloadDocumentRequest++;
  if (buildCounterGoogleCloudDialogflowV2ReloadDocumentRequest < 3) {
    o.contentUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2ReloadDocumentRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2ReloadDocumentRequest(
    api.GoogleCloudDialogflowV2ReloadDocumentRequest o) {
  buildCounterGoogleCloudDialogflowV2ReloadDocumentRequest++;
  if (buildCounterGoogleCloudDialogflowV2ReloadDocumentRequest < 3) {
    unittest.expect(
      o.contentUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2ReloadDocumentRequest--;
}

core.int buildCounterGoogleCloudDialogflowV2RestoreAgentRequest = 0;
api.GoogleCloudDialogflowV2RestoreAgentRequest
    buildGoogleCloudDialogflowV2RestoreAgentRequest() {
  final o = api.GoogleCloudDialogflowV2RestoreAgentRequest();
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
    unittest.expect(
      o.agentContent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.agentUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2RestoreAgentRequest--;
}

core.List<api.GoogleCloudDialogflowV2Agent> buildUnnamed78() => [
      buildGoogleCloudDialogflowV2Agent(),
      buildGoogleCloudDialogflowV2Agent(),
    ];

void checkUnnamed78(core.List<api.GoogleCloudDialogflowV2Agent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2Agent(o[0]);
  checkGoogleCloudDialogflowV2Agent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2SearchAgentsResponse = 0;
api.GoogleCloudDialogflowV2SearchAgentsResponse
    buildGoogleCloudDialogflowV2SearchAgentsResponse() {
  final o = api.GoogleCloudDialogflowV2SearchAgentsResponse();
  buildCounterGoogleCloudDialogflowV2SearchAgentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2SearchAgentsResponse < 3) {
    o.agents = buildUnnamed78();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2SearchAgentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2SearchAgentsResponse(
    api.GoogleCloudDialogflowV2SearchAgentsResponse o) {
  buildCounterGoogleCloudDialogflowV2SearchAgentsResponse++;
  if (buildCounterGoogleCloudDialogflowV2SearchAgentsResponse < 3) {
    checkUnnamed78(o.agents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2SearchAgentsResponse--;
}

core.int buildCounterGoogleCloudDialogflowV2Sentiment = 0;
api.GoogleCloudDialogflowV2Sentiment buildGoogleCloudDialogflowV2Sentiment() {
  final o = api.GoogleCloudDialogflowV2Sentiment();
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
    unittest.expect(
      o.magnitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDialogflowV2Sentiment--;
}

core.int buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig = 0;
api.GoogleCloudDialogflowV2SentimentAnalysisRequestConfig
    buildGoogleCloudDialogflowV2SentimentAnalysisRequestConfig() {
  final o = api.GoogleCloudDialogflowV2SentimentAnalysisRequestConfig();
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
    unittest.expect(o.analyzeQueryTextSentiment!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisRequestConfig--;
}

core.int buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult = 0;
api.GoogleCloudDialogflowV2SentimentAnalysisResult
    buildGoogleCloudDialogflowV2SentimentAnalysisResult() {
  final o = api.GoogleCloudDialogflowV2SentimentAnalysisResult();
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
    checkGoogleCloudDialogflowV2Sentiment(o.queryTextSentiment!);
  }
  buildCounterGoogleCloudDialogflowV2SentimentAnalysisResult--;
}

core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> buildUnnamed79() => [
      buildGoogleCloudDialogflowV2EntityTypeEntity(),
      buildGoogleCloudDialogflowV2EntityTypeEntity(),
    ];

void checkUnnamed79(core.List<api.GoogleCloudDialogflowV2EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowV2EntityTypeEntity(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2SessionEntityType = 0;
api.GoogleCloudDialogflowV2SessionEntityType
    buildGoogleCloudDialogflowV2SessionEntityType() {
  final o = api.GoogleCloudDialogflowV2SessionEntityType();
  buildCounterGoogleCloudDialogflowV2SessionEntityType++;
  if (buildCounterGoogleCloudDialogflowV2SessionEntityType < 3) {
    o.entities = buildUnnamed79();
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
    checkUnnamed79(o.entities!);
    unittest.expect(
      o.entityOverrideMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2SessionEntityType--;
}

core.List<core.String> buildUnnamed80() => [
      'foo',
      'foo',
    ];

void checkUnnamed80(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowV2SpeechContext = 0;
api.GoogleCloudDialogflowV2SpeechContext
    buildGoogleCloudDialogflowV2SpeechContext() {
  final o = api.GoogleCloudDialogflowV2SpeechContext();
  buildCounterGoogleCloudDialogflowV2SpeechContext++;
  if (buildCounterGoogleCloudDialogflowV2SpeechContext < 3) {
    o.boost = 42.0;
    o.phrases = buildUnnamed80();
  }
  buildCounterGoogleCloudDialogflowV2SpeechContext--;
  return o;
}

void checkGoogleCloudDialogflowV2SpeechContext(
    api.GoogleCloudDialogflowV2SpeechContext o) {
  buildCounterGoogleCloudDialogflowV2SpeechContext++;
  if (buildCounterGoogleCloudDialogflowV2SpeechContext < 3) {
    unittest.expect(
      o.boost!,
      unittest.equals(42.0),
    );
    checkUnnamed80(o.phrases!);
  }
  buildCounterGoogleCloudDialogflowV2SpeechContext--;
}

core.int buildCounterGoogleCloudDialogflowV2SpeechToTextConfig = 0;
api.GoogleCloudDialogflowV2SpeechToTextConfig
    buildGoogleCloudDialogflowV2SpeechToTextConfig() {
  final o = api.GoogleCloudDialogflowV2SpeechToTextConfig();
  buildCounterGoogleCloudDialogflowV2SpeechToTextConfig++;
  if (buildCounterGoogleCloudDialogflowV2SpeechToTextConfig < 3) {
    o.speechModelVariant = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2SpeechToTextConfig--;
  return o;
}

void checkGoogleCloudDialogflowV2SpeechToTextConfig(
    api.GoogleCloudDialogflowV2SpeechToTextConfig o) {
  buildCounterGoogleCloudDialogflowV2SpeechToTextConfig++;
  if (buildCounterGoogleCloudDialogflowV2SpeechToTextConfig < 3) {
    unittest.expect(
      o.speechModelVariant!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2SpeechToTextConfig--;
}

core.int buildCounterGoogleCloudDialogflowV2SuggestArticlesRequest = 0;
api.GoogleCloudDialogflowV2SuggestArticlesRequest
    buildGoogleCloudDialogflowV2SuggestArticlesRequest() {
  final o = api.GoogleCloudDialogflowV2SuggestArticlesRequest();
  buildCounterGoogleCloudDialogflowV2SuggestArticlesRequest++;
  if (buildCounterGoogleCloudDialogflowV2SuggestArticlesRequest < 3) {
    o.assistQueryParams = buildGoogleCloudDialogflowV2AssistQueryParameters();
    o.contextSize = 42;
    o.latestMessage = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2SuggestArticlesRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2SuggestArticlesRequest(
    api.GoogleCloudDialogflowV2SuggestArticlesRequest o) {
  buildCounterGoogleCloudDialogflowV2SuggestArticlesRequest++;
  if (buildCounterGoogleCloudDialogflowV2SuggestArticlesRequest < 3) {
    checkGoogleCloudDialogflowV2AssistQueryParameters(o.assistQueryParams!);
    unittest.expect(
      o.contextSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.latestMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2SuggestArticlesRequest--;
}

core.List<api.GoogleCloudDialogflowV2ArticleAnswer> buildUnnamed81() => [
      buildGoogleCloudDialogflowV2ArticleAnswer(),
      buildGoogleCloudDialogflowV2ArticleAnswer(),
    ];

void checkUnnamed81(core.List<api.GoogleCloudDialogflowV2ArticleAnswer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2ArticleAnswer(o[0]);
  checkGoogleCloudDialogflowV2ArticleAnswer(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2SuggestArticlesResponse = 0;
api.GoogleCloudDialogflowV2SuggestArticlesResponse
    buildGoogleCloudDialogflowV2SuggestArticlesResponse() {
  final o = api.GoogleCloudDialogflowV2SuggestArticlesResponse();
  buildCounterGoogleCloudDialogflowV2SuggestArticlesResponse++;
  if (buildCounterGoogleCloudDialogflowV2SuggestArticlesResponse < 3) {
    o.articleAnswers = buildUnnamed81();
    o.contextSize = 42;
    o.latestMessage = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2SuggestArticlesResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2SuggestArticlesResponse(
    api.GoogleCloudDialogflowV2SuggestArticlesResponse o) {
  buildCounterGoogleCloudDialogflowV2SuggestArticlesResponse++;
  if (buildCounterGoogleCloudDialogflowV2SuggestArticlesResponse < 3) {
    checkUnnamed81(o.articleAnswers!);
    unittest.expect(
      o.contextSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.latestMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2SuggestArticlesResponse--;
}

core.int buildCounterGoogleCloudDialogflowV2SuggestFaqAnswersRequest = 0;
api.GoogleCloudDialogflowV2SuggestFaqAnswersRequest
    buildGoogleCloudDialogflowV2SuggestFaqAnswersRequest() {
  final o = api.GoogleCloudDialogflowV2SuggestFaqAnswersRequest();
  buildCounterGoogleCloudDialogflowV2SuggestFaqAnswersRequest++;
  if (buildCounterGoogleCloudDialogflowV2SuggestFaqAnswersRequest < 3) {
    o.assistQueryParams = buildGoogleCloudDialogflowV2AssistQueryParameters();
    o.contextSize = 42;
    o.latestMessage = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2SuggestFaqAnswersRequest--;
  return o;
}

void checkGoogleCloudDialogflowV2SuggestFaqAnswersRequest(
    api.GoogleCloudDialogflowV2SuggestFaqAnswersRequest o) {
  buildCounterGoogleCloudDialogflowV2SuggestFaqAnswersRequest++;
  if (buildCounterGoogleCloudDialogflowV2SuggestFaqAnswersRequest < 3) {
    checkGoogleCloudDialogflowV2AssistQueryParameters(o.assistQueryParams!);
    unittest.expect(
      o.contextSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.latestMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2SuggestFaqAnswersRequest--;
}

core.List<api.GoogleCloudDialogflowV2FaqAnswer> buildUnnamed82() => [
      buildGoogleCloudDialogflowV2FaqAnswer(),
      buildGoogleCloudDialogflowV2FaqAnswer(),
    ];

void checkUnnamed82(core.List<api.GoogleCloudDialogflowV2FaqAnswer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2FaqAnswer(o[0]);
  checkGoogleCloudDialogflowV2FaqAnswer(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2SuggestFaqAnswersResponse = 0;
api.GoogleCloudDialogflowV2SuggestFaqAnswersResponse
    buildGoogleCloudDialogflowV2SuggestFaqAnswersResponse() {
  final o = api.GoogleCloudDialogflowV2SuggestFaqAnswersResponse();
  buildCounterGoogleCloudDialogflowV2SuggestFaqAnswersResponse++;
  if (buildCounterGoogleCloudDialogflowV2SuggestFaqAnswersResponse < 3) {
    o.contextSize = 42;
    o.faqAnswers = buildUnnamed82();
    o.latestMessage = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2SuggestFaqAnswersResponse--;
  return o;
}

void checkGoogleCloudDialogflowV2SuggestFaqAnswersResponse(
    api.GoogleCloudDialogflowV2SuggestFaqAnswersResponse o) {
  buildCounterGoogleCloudDialogflowV2SuggestFaqAnswersResponse++;
  if (buildCounterGoogleCloudDialogflowV2SuggestFaqAnswersResponse < 3) {
    unittest.expect(
      o.contextSize!,
      unittest.equals(42),
    );
    checkUnnamed82(o.faqAnswers!);
    unittest.expect(
      o.latestMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2SuggestFaqAnswersResponse--;
}

core.int buildCounterGoogleCloudDialogflowV2SuggestionFeature = 0;
api.GoogleCloudDialogflowV2SuggestionFeature
    buildGoogleCloudDialogflowV2SuggestionFeature() {
  final o = api.GoogleCloudDialogflowV2SuggestionFeature();
  buildCounterGoogleCloudDialogflowV2SuggestionFeature++;
  if (buildCounterGoogleCloudDialogflowV2SuggestionFeature < 3) {
    o.type = 'foo';
  }
  buildCounterGoogleCloudDialogflowV2SuggestionFeature--;
  return o;
}

void checkGoogleCloudDialogflowV2SuggestionFeature(
    api.GoogleCloudDialogflowV2SuggestionFeature o) {
  buildCounterGoogleCloudDialogflowV2SuggestionFeature++;
  if (buildCounterGoogleCloudDialogflowV2SuggestionFeature < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2SuggestionFeature--;
}

core.int buildCounterGoogleCloudDialogflowV2SuggestionResult = 0;
api.GoogleCloudDialogflowV2SuggestionResult
    buildGoogleCloudDialogflowV2SuggestionResult() {
  final o = api.GoogleCloudDialogflowV2SuggestionResult();
  buildCounterGoogleCloudDialogflowV2SuggestionResult++;
  if (buildCounterGoogleCloudDialogflowV2SuggestionResult < 3) {
    o.error = buildGoogleRpcStatus();
    o.suggestArticlesResponse =
        buildGoogleCloudDialogflowV2SuggestArticlesResponse();
    o.suggestFaqAnswersResponse =
        buildGoogleCloudDialogflowV2SuggestFaqAnswersResponse();
  }
  buildCounterGoogleCloudDialogflowV2SuggestionResult--;
  return o;
}

void checkGoogleCloudDialogflowV2SuggestionResult(
    api.GoogleCloudDialogflowV2SuggestionResult o) {
  buildCounterGoogleCloudDialogflowV2SuggestionResult++;
  if (buildCounterGoogleCloudDialogflowV2SuggestionResult < 3) {
    checkGoogleRpcStatus(o.error!);
    checkGoogleCloudDialogflowV2SuggestArticlesResponse(
        o.suggestArticlesResponse!);
    checkGoogleCloudDialogflowV2SuggestFaqAnswersResponse(
        o.suggestFaqAnswersResponse!);
  }
  buildCounterGoogleCloudDialogflowV2SuggestionResult--;
}

core.List<core.String> buildUnnamed83() => [
      'foo',
      'foo',
    ];

void checkUnnamed83(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig = 0;
api.GoogleCloudDialogflowV2SynthesizeSpeechConfig
    buildGoogleCloudDialogflowV2SynthesizeSpeechConfig() {
  final o = api.GoogleCloudDialogflowV2SynthesizeSpeechConfig();
  buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig++;
  if (buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig < 3) {
    o.effectsProfileId = buildUnnamed83();
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
    checkUnnamed83(o.effectsProfileId!);
    unittest.expect(
      o.pitch!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.speakingRate!,
      unittest.equals(42.0),
    );
    checkGoogleCloudDialogflowV2VoiceSelectionParams(o.voice!);
    unittest.expect(
      o.volumeGainDb!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDialogflowV2SynthesizeSpeechConfig--;
}

core.int buildCounterGoogleCloudDialogflowV2TextInput = 0;
api.GoogleCloudDialogflowV2TextInput buildGoogleCloudDialogflowV2TextInput() {
  final o = api.GoogleCloudDialogflowV2TextInput();
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
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2TextInput--;
}

core.Map<core.String, api.GoogleCloudDialogflowV2SynthesizeSpeechConfig>
    buildUnnamed84() => {
          'x': buildGoogleCloudDialogflowV2SynthesizeSpeechConfig(),
          'y': buildGoogleCloudDialogflowV2SynthesizeSpeechConfig(),
        };

void checkUnnamed84(
    core.Map<core.String, api.GoogleCloudDialogflowV2SynthesizeSpeechConfig>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2SynthesizeSpeechConfig(o['x']!);
  checkGoogleCloudDialogflowV2SynthesizeSpeechConfig(o['y']!);
}

core.int buildCounterGoogleCloudDialogflowV2TextToSpeechSettings = 0;
api.GoogleCloudDialogflowV2TextToSpeechSettings
    buildGoogleCloudDialogflowV2TextToSpeechSettings() {
  final o = api.GoogleCloudDialogflowV2TextToSpeechSettings();
  buildCounterGoogleCloudDialogflowV2TextToSpeechSettings++;
  if (buildCounterGoogleCloudDialogflowV2TextToSpeechSettings < 3) {
    o.enableTextToSpeech = true;
    o.outputAudioEncoding = 'foo';
    o.sampleRateHertz = 42;
    o.synthesizeSpeechConfigs = buildUnnamed84();
  }
  buildCounterGoogleCloudDialogflowV2TextToSpeechSettings--;
  return o;
}

void checkGoogleCloudDialogflowV2TextToSpeechSettings(
    api.GoogleCloudDialogflowV2TextToSpeechSettings o) {
  buildCounterGoogleCloudDialogflowV2TextToSpeechSettings++;
  if (buildCounterGoogleCloudDialogflowV2TextToSpeechSettings < 3) {
    unittest.expect(o.enableTextToSpeech!, unittest.isTrue);
    unittest.expect(
      o.outputAudioEncoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sampleRateHertz!,
      unittest.equals(42),
    );
    checkUnnamed84(o.synthesizeSpeechConfigs!);
  }
  buildCounterGoogleCloudDialogflowV2TextToSpeechSettings--;
}

core.int buildCounterGoogleCloudDialogflowV2TrainAgentRequest = 0;
api.GoogleCloudDialogflowV2TrainAgentRequest
    buildGoogleCloudDialogflowV2TrainAgentRequest() {
  final o = api.GoogleCloudDialogflowV2TrainAgentRequest();
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

core.List<core.String> buildUnnamed85() => [
      'foo',
      'foo',
    ];

void checkUnnamed85(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowV2ValidationError = 0;
api.GoogleCloudDialogflowV2ValidationError
    buildGoogleCloudDialogflowV2ValidationError() {
  final o = api.GoogleCloudDialogflowV2ValidationError();
  buildCounterGoogleCloudDialogflowV2ValidationError++;
  if (buildCounterGoogleCloudDialogflowV2ValidationError < 3) {
    o.entries = buildUnnamed85();
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
    checkUnnamed85(o.entries!);
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2ValidationError--;
}

core.List<api.GoogleCloudDialogflowV2ValidationError> buildUnnamed86() => [
      buildGoogleCloudDialogflowV2ValidationError(),
      buildGoogleCloudDialogflowV2ValidationError(),
    ];

void checkUnnamed86(core.List<api.GoogleCloudDialogflowV2ValidationError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowV2ValidationError(o[0]);
  checkGoogleCloudDialogflowV2ValidationError(o[1]);
}

core.int buildCounterGoogleCloudDialogflowV2ValidationResult = 0;
api.GoogleCloudDialogflowV2ValidationResult
    buildGoogleCloudDialogflowV2ValidationResult() {
  final o = api.GoogleCloudDialogflowV2ValidationResult();
  buildCounterGoogleCloudDialogflowV2ValidationResult++;
  if (buildCounterGoogleCloudDialogflowV2ValidationResult < 3) {
    o.validationErrors = buildUnnamed86();
  }
  buildCounterGoogleCloudDialogflowV2ValidationResult--;
  return o;
}

void checkGoogleCloudDialogflowV2ValidationResult(
    api.GoogleCloudDialogflowV2ValidationResult o) {
  buildCounterGoogleCloudDialogflowV2ValidationResult++;
  if (buildCounterGoogleCloudDialogflowV2ValidationResult < 3) {
    checkUnnamed86(o.validationErrors!);
  }
  buildCounterGoogleCloudDialogflowV2ValidationResult--;
}

core.int buildCounterGoogleCloudDialogflowV2Version = 0;
api.GoogleCloudDialogflowV2Version buildGoogleCloudDialogflowV2Version() {
  final o = api.GoogleCloudDialogflowV2Version();
  buildCounterGoogleCloudDialogflowV2Version++;
  if (buildCounterGoogleCloudDialogflowV2Version < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.name = 'foo';
    o.status = 'foo';
    o.versionNumber = 42;
  }
  buildCounterGoogleCloudDialogflowV2Version--;
  return o;
}

void checkGoogleCloudDialogflowV2Version(api.GoogleCloudDialogflowV2Version o) {
  buildCounterGoogleCloudDialogflowV2Version++;
  if (buildCounterGoogleCloudDialogflowV2Version < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionNumber!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDialogflowV2Version--;
}

core.int buildCounterGoogleCloudDialogflowV2VoiceSelectionParams = 0;
api.GoogleCloudDialogflowV2VoiceSelectionParams
    buildGoogleCloudDialogflowV2VoiceSelectionParams() {
  final o = api.GoogleCloudDialogflowV2VoiceSelectionParams();
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ssmlGender!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowV2VoiceSelectionParams--;
}

core.List<api.GoogleCloudLocationLocation> buildUnnamed87() => [
      buildGoogleCloudLocationLocation(),
      buildGoogleCloudLocationLocation(),
    ];

void checkUnnamed87(core.List<api.GoogleCloudLocationLocation> o) {
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
    o.locations = buildUnnamed87();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
  return o;
}

void checkGoogleCloudLocationListLocationsResponse(
    api.GoogleCloudLocationListLocationsResponse o) {
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    checkUnnamed87(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed88() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed88(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed89() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed89(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted16 = (o['x']!) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(
    casted16['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted16['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted16['string'],
    unittest.equals('foo'),
  );
  var casted17 = (o['y']!) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(
    casted17['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted17['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted17['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudLocationLocation = 0;
api.GoogleCloudLocationLocation buildGoogleCloudLocationLocation() {
  final o = api.GoogleCloudLocationLocation();
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed88();
    o.locationId = 'foo';
    o.metadata = buildUnnamed89();
    o.name = 'foo';
  }
  buildCounterGoogleCloudLocationLocation--;
  return o;
}

void checkGoogleCloudLocationLocation(api.GoogleCloudLocationLocation o) {
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed88(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed89(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudLocationLocation--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed90() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed90(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed90();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed90(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed91() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed91(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted18 = (o['x']!) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(
    casted18['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted18['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted18['string'],
    unittest.equals('foo'),
  );
  var casted19 = (o['y']!) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(
    casted19['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted19['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted19['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed92() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed92(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted20 = (o['x']!) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(
    casted20['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted20['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted20['string'],
    unittest.equals('foo'),
  );
  var casted21 = (o['y']!) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(
    casted21['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted21['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted21['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed91();
    o.name = 'foo';
    o.response = buildUnnamed92();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed91(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed92(o.response!);
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

core.Map<core.String, core.Object?> buildUnnamed93() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed93(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted22 = (o['x']!) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(
    casted22['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted22['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted22['string'],
    unittest.equals('foo'),
  );
  var casted23 = (o['y']!) as core.Map;
  unittest.expect(casted23, unittest.hasLength(3));
  unittest.expect(
    casted23['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted23['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted23['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed94() => [
      buildUnnamed93(),
      buildUnnamed93(),
    ];

void checkUnnamed94(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed93(o[0]);
  checkUnnamed93(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed94();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed94(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.latitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.longitude!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleTypeLatLng--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudDialogflowV2Agent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2Agent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2Agent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2Agent(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2AgentAssistantFeedback',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2AgentAssistantFeedback();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2AgentAssistantFeedback.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2AgentAssistantFeedback(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2AgentAssistantRecord', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2AgentAssistantRecord();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2AgentAssistantRecord.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2AgentAssistantRecord(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2AnalyzeContentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2AnalyzeContentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2AnalyzeContentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2AnalyzeContentRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2AnalyzeContentResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2AnalyzeContentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2AnalyzeContentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2AnalyzeContentResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2AnnotatedMessagePart', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2AnnotatedMessagePart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2AnnotatedMessagePart.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2AnnotatedMessagePart(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2AnswerFeedback', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2AnswerFeedback();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2AnswerFeedback.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2AnswerFeedback(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2AnswerRecord', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2AnswerRecord();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2AnswerRecord.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2AnswerRecord(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ArticleAnswer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ArticleAnswer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2ArticleAnswer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ArticleAnswer(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2AssistQueryParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2AssistQueryParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2AssistQueryParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2AssistQueryParameters(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2AutomatedAgentConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2AutomatedAgentConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2AutomatedAgentConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2AutomatedAgentConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2AutomatedAgentReply', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2AutomatedAgentReply();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2AutomatedAgentReply.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2AutomatedAgentReply(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2BatchCreateEntitiesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2BatchCreateEntitiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2BatchCreateEntitiesRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2BatchDeleteEntitiesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2BatchDeleteEntitiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2BatchDeleteEntitiesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2BatchDeleteIntentsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2BatchDeleteIntentsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2BatchDeleteIntentsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2BatchUpdateEntitiesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2BatchUpdateEntitiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2BatchUpdateEntitiesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2BatchUpdateIntentsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2BatchUpdateIntentsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2BatchUpdateIntentsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2CompleteConversationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2CompleteConversationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2CompleteConversationRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2CompleteConversationRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2Context', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2Context();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2Context.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2Context(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2Conversation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2Conversation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2Conversation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2Conversation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ConversationPhoneNumber',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ConversationPhoneNumber();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2ConversationPhoneNumber.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ConversationPhoneNumber(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ConversationProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ConversationProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2ConversationProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ConversationProfile(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2DetectIntentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2DetectIntentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2DetectIntentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2DetectIntentRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2DetectIntentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2DetectIntentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2DetectIntentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2DetectIntentResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2Document', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2Document();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2Document.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2Document(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2DocumentReloadStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2DocumentReloadStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2DocumentReloadStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2DocumentReloadStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2DtmfParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2DtmfParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2DtmfParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2DtmfParameters(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2EntityType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2EntityType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2EntityType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2EntityType(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2EntityTypeBatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2EntityTypeBatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2EntityTypeBatch.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2EntityTypeBatch(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2EntityTypeEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2EntityTypeEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2EntityTypeEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2EntityTypeEntity(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2Environment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2Environment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2Environment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2Environment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2EnvironmentHistory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2EnvironmentHistory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2EnvironmentHistory.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2EnvironmentHistory(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2EnvironmentHistoryEntry',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2EnvironmentHistoryEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2EnvironmentHistoryEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2EnvironmentHistoryEntry(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2EventInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2EventInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2EventInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2EventInput(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ExportAgentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ExportAgentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2ExportAgentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ExportAgentRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2FaqAnswer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2FaqAnswer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2FaqAnswer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2FaqAnswer(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2Fulfillment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2Fulfillment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2Fulfillment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2Fulfillment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2FulfillmentFeature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2FulfillmentFeature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2FulfillmentFeature.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2FulfillmentFeature(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2FulfillmentGenericWebService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2FulfillmentGenericWebService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2FulfillmentGenericWebService.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2FulfillmentGenericWebService(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2HumanAgentAssistantConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2HumanAgentAssistantConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2HumanAgentAssistantConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2HumanAgentAssistantConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2HumanAgentHandoffConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2HumanAgentHandoffConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2HumanAgentHandoffConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2HumanAgentHandoffConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ImportAgentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ImportAgentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2ImportAgentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ImportAgentRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2InputAudioConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2InputAudioConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2InputAudioConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2InputAudioConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2Intent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2Intent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2Intent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2Intent(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentBatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentBatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2IntentBatch.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentBatch(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentFollowupIntentInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentFollowupIntentInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2IntentFollowupIntentInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentFollowupIntentInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2IntentMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageBasicCard',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageBasicCard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2IntentMessageBasicCard.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageBasicCard(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageBasicCardButton', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageBasicCardButton();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2IntentMessageBasicCardButton.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageBasicCardButton(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCard(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageCard', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageCard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2IntentMessageCard.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageCard(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageCardButton',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageCardButton();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2IntentMessageCardButton.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageCardButton(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageCarouselSelect', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageCarouselSelect();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2IntentMessageCarouselSelect.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageCarouselSelect(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageCarouselSelectItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageCarouselSelectItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageCarouselSelectItem(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageColumnProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageColumnProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2IntentMessageColumnProperties.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageColumnProperties(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2IntentMessageImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageImage(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageLinkOutSuggestion(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageListSelect',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageListSelect();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2IntentMessageListSelect.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageListSelect(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageListSelectItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageListSelectItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2IntentMessageListSelectItem.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageListSelectItem(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageMediaContent',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageMediaContent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2IntentMessageMediaContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageMediaContent(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageQuickReplies',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageQuickReplies();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2IntentMessageQuickReplies.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageQuickReplies(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageSelectItemInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageSelectItemInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2IntentMessageSelectItemInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageSelectItemInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageSimpleResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageSimpleResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2IntentMessageSimpleResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageSimpleResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2IntentMessageSimpleResponses', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageSimpleResponses();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2IntentMessageSimpleResponses.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageSimpleResponses(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageSuggestion',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageSuggestion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2IntentMessageSuggestion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageSuggestion(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageSuggestions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageSuggestions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2IntentMessageSuggestions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageSuggestions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageTableCard',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageTableCard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2IntentMessageTableCard.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageTableCard(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageTableCardCell',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageTableCardCell();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2IntentMessageTableCardCell.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageTableCardCell(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageTableCardRow',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageTableCardRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2IntentMessageTableCardRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageTableCardRow(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentMessageText', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentMessageText();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2IntentMessageText.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentMessageText(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2IntentParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentParameter(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentTrainingPhrase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentTrainingPhrase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2IntentTrainingPhrase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentTrainingPhrase(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2IntentTrainingPhrasePart',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2IntentTrainingPhrasePart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2IntentTrainingPhrasePart.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2IntentTrainingPhrasePart(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2KnowledgeBase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2KnowledgeBase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2KnowledgeBase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2KnowledgeBase(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ListAnswerRecordsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ListAnswerRecordsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2ListAnswerRecordsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ListAnswerRecordsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ListContextsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ListContextsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2ListContextsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ListContextsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2ListConversationProfilesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ListConversationProfilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2ListConversationProfilesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ListConversationProfilesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ListConversationsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ListConversationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2ListConversationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ListConversationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ListDocumentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ListDocumentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2ListDocumentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ListDocumentsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ListEntityTypesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ListEntityTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2ListEntityTypesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ListEntityTypesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ListEnvironmentsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ListEnvironmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2ListEnvironmentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ListEnvironmentsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ListIntentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ListIntentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2ListIntentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ListIntentsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ListKnowledgeBasesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ListKnowledgeBasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2ListKnowledgeBasesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ListKnowledgeBasesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ListMessagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ListMessagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2ListMessagesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ListMessagesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ListParticipantsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ListParticipantsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2ListParticipantsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ListParticipantsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2ListSessionEntityTypesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ListSessionEntityTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ListSessionEntityTypesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ListVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ListVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2ListVersionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ListVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2LoggingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2LoggingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2LoggingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2LoggingConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2Message', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2Message();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2Message.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2Message(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2MessageAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2MessageAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2MessageAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2MessageAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2NotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2NotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2NotificationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2NotificationConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2OutputAudio', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2OutputAudio();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2OutputAudio.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2OutputAudio(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2OutputAudioConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2OutputAudioConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2OutputAudioConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2OutputAudioConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2Participant', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2Participant();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2Participant.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2Participant(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2QueryInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2QueryInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2QueryInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2QueryInput(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2QueryParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2QueryParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2QueryParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2QueryParameters(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2QueryResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2QueryResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2QueryResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2QueryResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ReloadDocumentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ReloadDocumentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2ReloadDocumentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ReloadDocumentRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2RestoreAgentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2RestoreAgentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2RestoreAgentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2RestoreAgentRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2SearchAgentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2SearchAgentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2SearchAgentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2SearchAgentsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2Sentiment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2Sentiment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2Sentiment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2Sentiment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowV2SentimentAnalysisRequestConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2SentimentAnalysisRequestConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowV2SentimentAnalysisRequestConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2SentimentAnalysisRequestConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2SentimentAnalysisResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2SentimentAnalysisResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2SentimentAnalysisResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2SentimentAnalysisResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2SessionEntityType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2SessionEntityType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2SessionEntityType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2SessionEntityType(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2SpeechContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2SpeechContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2SpeechContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2SpeechContext(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2SpeechToTextConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2SpeechToTextConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2SpeechToTextConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2SpeechToTextConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2SuggestArticlesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2SuggestArticlesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2SuggestArticlesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2SuggestArticlesRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2SuggestArticlesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2SuggestArticlesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2SuggestArticlesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2SuggestArticlesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2SuggestFaqAnswersRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2SuggestFaqAnswersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2SuggestFaqAnswersRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2SuggestFaqAnswersRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2SuggestFaqAnswersResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2SuggestFaqAnswersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2SuggestFaqAnswersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2SuggestFaqAnswersResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2SuggestionFeature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2SuggestionFeature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2SuggestionFeature.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2SuggestionFeature(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2SuggestionResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2SuggestionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2SuggestionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2SuggestionResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2SynthesizeSpeechConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2SynthesizeSpeechConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2SynthesizeSpeechConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2SynthesizeSpeechConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2TextInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2TextInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2TextInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2TextInput(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2TextToSpeechSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2TextToSpeechSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2TextToSpeechSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2TextToSpeechSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2TrainAgentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2TrainAgentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2TrainAgentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2TrainAgentRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ValidationError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ValidationError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2ValidationError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ValidationError(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2ValidationResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2ValidationResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2ValidationResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2ValidationResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2Version', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2Version();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2Version.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2Version(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowV2VoiceSelectionParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowV2VoiceSelectionParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowV2VoiceSelectionParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowV2VoiceSelectionParams(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudLocationListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudLocationLocation(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeLatLng', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeLatLng();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeLatLng.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeLatLng(od);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--deleteAgent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects;
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.deleteAgent(arg_parent, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--getAgent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects;
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Agent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getAgent(arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Agent(
          response as api.GoogleCloudDialogflowV2Agent);
    });

    unittest.test('method--setAgent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects;
      final arg_request = buildGoogleCloudDialogflowV2Agent();
      final arg_parent = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Agent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Agent(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Agent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setAgent(arg_request, arg_parent,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Agent(
          response as api.GoogleCloudDialogflowV2Agent);
    });
  });

  unittest.group('resource-ProjectsAgentResource', () {
    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent;
      final arg_request = buildGoogleCloudDialogflowV2ExportAgentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2ExportAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2ExportAgentRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.export(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--getFulfillment', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Fulfillment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getFulfillment(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Fulfillment(
          response as api.GoogleCloudDialogflowV2Fulfillment);
    });

    unittest.test('method--getValidationResult', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2ValidationResult());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getValidationResult(arg_parent,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ValidationResult(
          response as api.GoogleCloudDialogflowV2ValidationResult);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent;
      final arg_request = buildGoogleCloudDialogflowV2ImportAgentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2ImportAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2ImportAgentRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent;
      final arg_request = buildGoogleCloudDialogflowV2RestoreAgentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2RestoreAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2RestoreAgentRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.restore(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SearchAgentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2SearchAgentsResponse(
          response as api.GoogleCloudDialogflowV2SearchAgentsResponse);
    });

    unittest.test('method--train', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent;
      final arg_request = buildGoogleCloudDialogflowV2TrainAgentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2TrainAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2TrainAgentRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.train(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--updateFulfillment', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent;
      final arg_request = buildGoogleCloudDialogflowV2Fulfillment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Fulfillment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Fulfillment(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Fulfillment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateFulfillment(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Fulfillment(
          response as api.GoogleCloudDialogflowV2Fulfillment);
    });
  });

  unittest.group('resource-ProjectsAgentEntityTypesResource', () {
    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.entityTypes;
      final arg_request =
          buildGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchDelete(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.entityTypes;
      final arg_request =
          buildGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.entityTypes;
      final arg_request = buildGoogleCloudDialogflowV2EntityType();
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2EntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2EntityType(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2EntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2EntityType(
          response as api.GoogleCloudDialogflowV2EntityType);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.entityTypes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.entityTypes;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2EntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2EntityType(
          response as api.GoogleCloudDialogflowV2EntityType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.entityTypes;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListEntityTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListEntityTypesResponse(
          response as api.GoogleCloudDialogflowV2ListEntityTypesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.entityTypes;
      final arg_request = buildGoogleCloudDialogflowV2EntityType();
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2EntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2EntityType(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2EntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          languageCode: arg_languageCode,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2EntityType(
          response as api.GoogleCloudDialogflowV2EntityType);
    });
  });

  unittest.group('resource-ProjectsAgentEntityTypesEntitiesResource', () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.entityTypes.entities;
      final arg_request =
          buildGoogleCloudDialogflowV2BatchCreateEntitiesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchCreateEntitiesRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.entityTypes.entities;
      final arg_request =
          buildGoogleCloudDialogflowV2BatchDeleteEntitiesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchDeleteEntitiesRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchDelete(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.entityTypes.entities;
      final arg_request =
          buildGoogleCloudDialogflowV2BatchUpdateEntitiesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchUpdateEntitiesRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsAgentEnvironmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.environments;
      final arg_request = buildGoogleCloudDialogflowV2Environment();
      final arg_parent = 'foo';
      final arg_environmentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Environment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Environment(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
          queryMap['environmentId']!.first,
          unittest.equals(arg_environmentId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Environment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          environmentId: arg_environmentId, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Environment(
          response as api.GoogleCloudDialogflowV2Environment);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.environments;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.environments;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Environment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Environment(
          response as api.GoogleCloudDialogflowV2Environment);
    });

    unittest.test('method--getHistory', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.environments;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2EnvironmentHistory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getHistory(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2EnvironmentHistory(
          response as api.GoogleCloudDialogflowV2EnvironmentHistory);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.environments;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListEnvironmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListEnvironmentsResponse(
          response as api.GoogleCloudDialogflowV2ListEnvironmentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.environments;
      final arg_request = buildGoogleCloudDialogflowV2Environment();
      final arg_name = 'foo';
      final arg_allowLoadToDraftAndDiscardChanges = true;
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Environment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Environment(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
          queryMap['allowLoadToDraftAndDiscardChanges']!.first,
          unittest.equals('$arg_allowLoadToDraftAndDiscardChanges'),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Environment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          allowLoadToDraftAndDiscardChanges:
              arg_allowLoadToDraftAndDiscardChanges,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Environment(
          response as api.GoogleCloudDialogflowV2Environment);
    });
  });

  unittest.group('resource-ProjectsAgentEnvironmentsIntentsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.environments.intents;
      final arg_parent = 'foo';
      final arg_intentView = 'foo';
      final arg_languageCode = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListIntentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          intentView: arg_intentView,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListIntentsResponse(
          response as api.GoogleCloudDialogflowV2ListIntentsResponse);
    });
  });

  unittest.group('resource-ProjectsAgentEnvironmentsUsersSessionsResource', () {
    unittest.test('method--deleteContexts', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.agent.environments.users.sessions;
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.deleteContexts(arg_parent, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--detectIntent', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.agent.environments.users.sessions;
      final arg_request = buildGoogleCloudDialogflowV2DetectIntentRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2DetectIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2DetectIntentRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2DetectIntentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.detectIntent(arg_request, arg_session,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2DetectIntentResponse(
          response as api.GoogleCloudDialogflowV2DetectIntentResponse);
    });
  });

  unittest.group(
      'resource-ProjectsAgentEnvironmentsUsersSessionsContextsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .agent
          .environments
          .users
          .sessions
          .contexts;
      final arg_request = buildGoogleCloudDialogflowV2Context();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Context.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Context(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Context(
          response as api.GoogleCloudDialogflowV2Context);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .agent
          .environments
          .users
          .sessions
          .contexts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .agent
          .environments
          .users
          .sessions
          .contexts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Context(
          response as api.GoogleCloudDialogflowV2Context);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .agent
          .environments
          .users
          .sessions
          .contexts;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListContextsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListContextsResponse(
          response as api.GoogleCloudDialogflowV2ListContextsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .agent
          .environments
          .users
          .sessions
          .contexts;
      final arg_request = buildGoogleCloudDialogflowV2Context();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Context.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Context(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Context(
          response as api.GoogleCloudDialogflowV2Context);
    });
  });

  unittest.group(
      'resource-ProjectsAgentEnvironmentsUsersSessionsEntityTypesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .agent
          .environments
          .users
          .sessions
          .entityTypes;
      final arg_request = buildGoogleCloudDialogflowV2SessionEntityType();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2SessionEntityType(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2SessionEntityType(
          response as api.GoogleCloudDialogflowV2SessionEntityType);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .agent
          .environments
          .users
          .sessions
          .entityTypes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .agent
          .environments
          .users
          .sessions
          .entityTypes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2SessionEntityType(
          response as api.GoogleCloudDialogflowV2SessionEntityType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .agent
          .environments
          .users
          .sessions
          .entityTypes;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(
            buildGoogleCloudDialogflowV2ListSessionEntityTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListSessionEntityTypesResponse(response
          as api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .agent
          .environments
          .users
          .sessions
          .entityTypes;
      final arg_request = buildGoogleCloudDialogflowV2SessionEntityType();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2SessionEntityType(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2SessionEntityType(
          response as api.GoogleCloudDialogflowV2SessionEntityType);
    });
  });

  unittest.group('resource-ProjectsAgentIntentsResource', () {
    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.intents;
      final arg_request =
          buildGoogleCloudDialogflowV2BatchDeleteIntentsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchDeleteIntentsRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchDelete(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.intents;
      final arg_request =
          buildGoogleCloudDialogflowV2BatchUpdateIntentsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchUpdateIntentsRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.intents;
      final arg_request = buildGoogleCloudDialogflowV2Intent();
      final arg_parent = 'foo';
      final arg_intentView = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Intent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Intent(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Intent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          intentView: arg_intentView,
          languageCode: arg_languageCode,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Intent(
          response as api.GoogleCloudDialogflowV2Intent);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.intents;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.intents;
      final arg_name = 'foo';
      final arg_intentView = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Intent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          intentView: arg_intentView,
          languageCode: arg_languageCode,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Intent(
          response as api.GoogleCloudDialogflowV2Intent);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.intents;
      final arg_parent = 'foo';
      final arg_intentView = 'foo';
      final arg_languageCode = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListIntentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          intentView: arg_intentView,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListIntentsResponse(
          response as api.GoogleCloudDialogflowV2ListIntentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.intents;
      final arg_request = buildGoogleCloudDialogflowV2Intent();
      final arg_name = 'foo';
      final arg_intentView = 'foo';
      final arg_languageCode = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Intent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Intent(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Intent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          intentView: arg_intentView,
          languageCode: arg_languageCode,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Intent(
          response as api.GoogleCloudDialogflowV2Intent);
    });
  });

  unittest.group('resource-ProjectsAgentKnowledgeBasesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.knowledgeBases;
      final arg_request = buildGoogleCloudDialogflowV2KnowledgeBase();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2KnowledgeBase.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2KnowledgeBase(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2KnowledgeBase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2KnowledgeBase(
          response as api.GoogleCloudDialogflowV2KnowledgeBase);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.knowledgeBases;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.knowledgeBases;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2KnowledgeBase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2KnowledgeBase(
          response as api.GoogleCloudDialogflowV2KnowledgeBase);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.knowledgeBases;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListKnowledgeBasesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListKnowledgeBasesResponse(
          response as api.GoogleCloudDialogflowV2ListKnowledgeBasesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.knowledgeBases;
      final arg_request = buildGoogleCloudDialogflowV2KnowledgeBase();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2KnowledgeBase.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2KnowledgeBase(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2KnowledgeBase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2KnowledgeBase(
          response as api.GoogleCloudDialogflowV2KnowledgeBase);
    });
  });

  unittest.group('resource-ProjectsAgentKnowledgeBasesDocumentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.agent.knowledgeBases.documents;
      final arg_request = buildGoogleCloudDialogflowV2Document();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Document.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Document(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.agent.knowledgeBases.documents;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.agent.knowledgeBases.documents;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Document());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Document(
          response as api.GoogleCloudDialogflowV2Document);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.agent.knowledgeBases.documents;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListDocumentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListDocumentsResponse(
          response as api.GoogleCloudDialogflowV2ListDocumentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.agent.knowledgeBases.documents;
      final arg_request = buildGoogleCloudDialogflowV2Document();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Document.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Document(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--reload', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.agent.knowledgeBases.documents;
      final arg_request = buildGoogleCloudDialogflowV2ReloadDocumentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2ReloadDocumentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2ReloadDocumentRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.reload(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsAgentSessionsResource', () {
    unittest.test('method--deleteContexts', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.sessions;
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.deleteContexts(arg_parent, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--detectIntent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.sessions;
      final arg_request = buildGoogleCloudDialogflowV2DetectIntentRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2DetectIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2DetectIntentRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2DetectIntentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.detectIntent(arg_request, arg_session,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2DetectIntentResponse(
          response as api.GoogleCloudDialogflowV2DetectIntentResponse);
    });
  });

  unittest.group('resource-ProjectsAgentSessionsContextsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.sessions.contexts;
      final arg_request = buildGoogleCloudDialogflowV2Context();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Context.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Context(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Context(
          response as api.GoogleCloudDialogflowV2Context);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.sessions.contexts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.sessions.contexts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Context(
          response as api.GoogleCloudDialogflowV2Context);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.sessions.contexts;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListContextsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListContextsResponse(
          response as api.GoogleCloudDialogflowV2ListContextsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.sessions.contexts;
      final arg_request = buildGoogleCloudDialogflowV2Context();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Context.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Context(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Context(
          response as api.GoogleCloudDialogflowV2Context);
    });
  });

  unittest.group('resource-ProjectsAgentSessionsEntityTypesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
      final arg_request = buildGoogleCloudDialogflowV2SessionEntityType();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2SessionEntityType(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2SessionEntityType(
          response as api.GoogleCloudDialogflowV2SessionEntityType);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2SessionEntityType(
          response as api.GoogleCloudDialogflowV2SessionEntityType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(
            buildGoogleCloudDialogflowV2ListSessionEntityTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListSessionEntityTypesResponse(response
          as api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.sessions.entityTypes;
      final arg_request = buildGoogleCloudDialogflowV2SessionEntityType();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2SessionEntityType(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2SessionEntityType(
          response as api.GoogleCloudDialogflowV2SessionEntityType);
    });
  });

  unittest.group('resource-ProjectsAgentVersionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.versions;
      final arg_request = buildGoogleCloudDialogflowV2Version();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Version.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Version(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Version());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Version(
          response as api.GoogleCloudDialogflowV2Version);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.versions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.versions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Version());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Version(
          response as api.GoogleCloudDialogflowV2Version);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.versions;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListVersionsResponse(
          response as api.GoogleCloudDialogflowV2ListVersionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.agent.versions;
      final arg_request = buildGoogleCloudDialogflowV2Version();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Version.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Version(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Version());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Version(
          response as api.GoogleCloudDialogflowV2Version);
    });
  });

  unittest.group('resource-ProjectsAnswerRecordsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.answerRecords;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListAnswerRecordsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListAnswerRecordsResponse(
          response as api.GoogleCloudDialogflowV2ListAnswerRecordsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.answerRecords;
      final arg_request = buildGoogleCloudDialogflowV2AnswerRecord();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2AnswerRecord.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2AnswerRecord(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2AnswerRecord());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2AnswerRecord(
          response as api.GoogleCloudDialogflowV2AnswerRecord);
    });
  });

  unittest.group('resource-ProjectsConversationProfilesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.conversationProfiles;
      final arg_request = buildGoogleCloudDialogflowV2ConversationProfile();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2ConversationProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2ConversationProfile(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ConversationProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ConversationProfile(
          response as api.GoogleCloudDialogflowV2ConversationProfile);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.conversationProfiles;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.conversationProfiles;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ConversationProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ConversationProfile(
          response as api.GoogleCloudDialogflowV2ConversationProfile);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.conversationProfiles;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(
            buildGoogleCloudDialogflowV2ListConversationProfilesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListConversationProfilesResponse(response
          as api.GoogleCloudDialogflowV2ListConversationProfilesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.conversationProfiles;
      final arg_request = buildGoogleCloudDialogflowV2ConversationProfile();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2ConversationProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2ConversationProfile(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ConversationProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ConversationProfile(
          response as api.GoogleCloudDialogflowV2ConversationProfile);
    });
  });

  unittest.group('resource-ProjectsConversationsResource', () {
    unittest.test('method--complete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.conversations;
      final arg_request =
          buildGoogleCloudDialogflowV2CompleteConversationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowV2CompleteConversationRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2CompleteConversationRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Conversation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.complete(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Conversation(
          response as api.GoogleCloudDialogflowV2Conversation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.conversations;
      final arg_request = buildGoogleCloudDialogflowV2Conversation();
      final arg_parent = 'foo';
      final arg_conversationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Conversation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Conversation(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
          queryMap['conversationId']!.first,
          unittest.equals(arg_conversationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Conversation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          conversationId: arg_conversationId, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Conversation(
          response as api.GoogleCloudDialogflowV2Conversation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.conversations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Conversation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Conversation(
          response as api.GoogleCloudDialogflowV2Conversation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.conversations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListConversationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListConversationsResponse(
          response as api.GoogleCloudDialogflowV2ListConversationsResponse);
    });
  });

  unittest.group('resource-ProjectsConversationsMessagesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.conversations.messages;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListMessagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListMessagesResponse(
          response as api.GoogleCloudDialogflowV2ListMessagesResponse);
    });
  });

  unittest.group('resource-ProjectsConversationsParticipantsResource', () {
    unittest.test('method--analyzeContent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.conversations.participants;
      final arg_request = buildGoogleCloudDialogflowV2AnalyzeContentRequest();
      final arg_participant = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2AnalyzeContentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2AnalyzeContentRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2AnalyzeContentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.analyzeContent(arg_request, arg_participant,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2AnalyzeContentResponse(
          response as api.GoogleCloudDialogflowV2AnalyzeContentResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.conversations.participants;
      final arg_request = buildGoogleCloudDialogflowV2Participant();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Participant.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Participant(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Participant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Participant(
          response as api.GoogleCloudDialogflowV2Participant);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.conversations.participants;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Participant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Participant(
          response as api.GoogleCloudDialogflowV2Participant);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.conversations.participants;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListParticipantsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListParticipantsResponse(
          response as api.GoogleCloudDialogflowV2ListParticipantsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.conversations.participants;
      final arg_request = buildGoogleCloudDialogflowV2Participant();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Participant.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Participant(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Participant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Participant(
          response as api.GoogleCloudDialogflowV2Participant);
    });
  });

  unittest.group(
      'resource-ProjectsConversationsParticipantsSuggestionsResource', () {
    unittest.test('method--suggestArticles', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .conversations
          .participants
          .suggestions;
      final arg_request = buildGoogleCloudDialogflowV2SuggestArticlesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2SuggestArticlesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2SuggestArticlesRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SuggestArticlesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.suggestArticles(arg_request, arg_parent,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2SuggestArticlesResponse(
          response as api.GoogleCloudDialogflowV2SuggestArticlesResponse);
    });

    unittest.test('method--suggestFaqAnswers', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .conversations
          .participants
          .suggestions;
      final arg_request =
          buildGoogleCloudDialogflowV2SuggestFaqAnswersRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowV2SuggestFaqAnswersRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2SuggestFaqAnswersRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SuggestFaqAnswersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.suggestFaqAnswers(arg_request, arg_parent,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2SuggestFaqAnswersResponse(
          response as api.GoogleCloudDialogflowV2SuggestFaqAnswersResponse);
    });
  });

  unittest.group('resource-ProjectsKnowledgeBasesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.knowledgeBases;
      final arg_request = buildGoogleCloudDialogflowV2KnowledgeBase();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2KnowledgeBase.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2KnowledgeBase(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2KnowledgeBase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2KnowledgeBase(
          response as api.GoogleCloudDialogflowV2KnowledgeBase);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.knowledgeBases;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.knowledgeBases;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2KnowledgeBase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2KnowledgeBase(
          response as api.GoogleCloudDialogflowV2KnowledgeBase);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.knowledgeBases;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListKnowledgeBasesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListKnowledgeBasesResponse(
          response as api.GoogleCloudDialogflowV2ListKnowledgeBasesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.knowledgeBases;
      final arg_request = buildGoogleCloudDialogflowV2KnowledgeBase();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2KnowledgeBase.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2KnowledgeBase(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2KnowledgeBase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2KnowledgeBase(
          response as api.GoogleCloudDialogflowV2KnowledgeBase);
    });
  });

  unittest.group('resource-ProjectsKnowledgeBasesDocumentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.knowledgeBases.documents;
      final arg_request = buildGoogleCloudDialogflowV2Document();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Document.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Document(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.knowledgeBases.documents;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.knowledgeBases.documents;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Document());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Document(
          response as api.GoogleCloudDialogflowV2Document);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.knowledgeBases.documents;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListDocumentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListDocumentsResponse(
          response as api.GoogleCloudDialogflowV2ListDocumentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.knowledgeBases.documents;
      final arg_request = buildGoogleCloudDialogflowV2Document();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Document.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Document(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--reload', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.knowledgeBases.documents;
      final arg_request = buildGoogleCloudDialogflowV2ReloadDocumentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2ReloadDocumentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2ReloadDocumentRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.reload(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--deleteAgent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations;
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.deleteAgent(arg_parent, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleCloudLocationLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudLocationLocation(
          response as api.GoogleCloudLocationLocation);
    });

    unittest.test('method--getAgent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations;
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Agent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getAgent(arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Agent(
          response as api.GoogleCloudDialogflowV2Agent);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudLocationListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudLocationListLocationsResponse(
          response as api.GoogleCloudLocationListLocationsResponse);
    });

    unittest.test('method--setAgent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations;
      final arg_request = buildGoogleCloudDialogflowV2Agent();
      final arg_parent = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Agent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Agent(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Agent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setAgent(arg_request, arg_parent,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Agent(
          response as api.GoogleCloudDialogflowV2Agent);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentResource', () {
    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent;
      final arg_request = buildGoogleCloudDialogflowV2ExportAgentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2ExportAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2ExportAgentRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.export(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--getFulfillment', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Fulfillment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getFulfillment(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Fulfillment(
          response as api.GoogleCloudDialogflowV2Fulfillment);
    });

    unittest.test('method--getValidationResult', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2ValidationResult());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getValidationResult(arg_parent,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ValidationResult(
          response as api.GoogleCloudDialogflowV2ValidationResult);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent;
      final arg_request = buildGoogleCloudDialogflowV2ImportAgentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2ImportAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2ImportAgentRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent;
      final arg_request = buildGoogleCloudDialogflowV2RestoreAgentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2RestoreAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2RestoreAgentRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.restore(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SearchAgentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2SearchAgentsResponse(
          response as api.GoogleCloudDialogflowV2SearchAgentsResponse);
    });

    unittest.test('method--train', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent;
      final arg_request = buildGoogleCloudDialogflowV2TrainAgentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2TrainAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2TrainAgentRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.train(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--updateFulfillment', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent;
      final arg_request = buildGoogleCloudDialogflowV2Fulfillment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Fulfillment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Fulfillment(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Fulfillment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateFulfillment(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Fulfillment(
          response as api.GoogleCloudDialogflowV2Fulfillment);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentEntityTypesResource', () {
    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.entityTypes;
      final arg_request =
          buildGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchDeleteEntityTypesRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchDelete(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.entityTypes;
      final arg_request =
          buildGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchUpdateEntityTypesRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.entityTypes;
      final arg_request = buildGoogleCloudDialogflowV2EntityType();
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2EntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2EntityType(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2EntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2EntityType(
          response as api.GoogleCloudDialogflowV2EntityType);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.entityTypes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.entityTypes;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2EntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2EntityType(
          response as api.GoogleCloudDialogflowV2EntityType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.entityTypes;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListEntityTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListEntityTypesResponse(
          response as api.GoogleCloudDialogflowV2ListEntityTypesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.entityTypes;
      final arg_request = buildGoogleCloudDialogflowV2EntityType();
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2EntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2EntityType(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2EntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          languageCode: arg_languageCode,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2EntityType(
          response as api.GoogleCloudDialogflowV2EntityType);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentEntityTypesEntitiesResource',
      () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agent.entityTypes.entities;
      final arg_request =
          buildGoogleCloudDialogflowV2BatchCreateEntitiesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowV2BatchCreateEntitiesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchCreateEntitiesRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agent.entityTypes.entities;
      final arg_request =
          buildGoogleCloudDialogflowV2BatchDeleteEntitiesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowV2BatchDeleteEntitiesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchDeleteEntitiesRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchDelete(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agent.entityTypes.entities;
      final arg_request =
          buildGoogleCloudDialogflowV2BatchUpdateEntitiesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowV2BatchUpdateEntitiesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchUpdateEntitiesRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentEnvironmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.environments;
      final arg_request = buildGoogleCloudDialogflowV2Environment();
      final arg_parent = 'foo';
      final arg_environmentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Environment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Environment(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
          queryMap['environmentId']!.first,
          unittest.equals(arg_environmentId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Environment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          environmentId: arg_environmentId, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Environment(
          response as api.GoogleCloudDialogflowV2Environment);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.environments;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.environments;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Environment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Environment(
          response as api.GoogleCloudDialogflowV2Environment);
    });

    unittest.test('method--getHistory', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.environments;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2EnvironmentHistory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getHistory(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2EnvironmentHistory(
          response as api.GoogleCloudDialogflowV2EnvironmentHistory);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.environments;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListEnvironmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListEnvironmentsResponse(
          response as api.GoogleCloudDialogflowV2ListEnvironmentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.environments;
      final arg_request = buildGoogleCloudDialogflowV2Environment();
      final arg_name = 'foo';
      final arg_allowLoadToDraftAndDiscardChanges = true;
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Environment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Environment(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
          queryMap['allowLoadToDraftAndDiscardChanges']!.first,
          unittest.equals('$arg_allowLoadToDraftAndDiscardChanges'),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Environment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          allowLoadToDraftAndDiscardChanges:
              arg_allowLoadToDraftAndDiscardChanges,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Environment(
          response as api.GoogleCloudDialogflowV2Environment);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentEnvironmentsIntentsResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agent.environments.intents;
      final arg_parent = 'foo';
      final arg_intentView = 'foo';
      final arg_languageCode = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListIntentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          intentView: arg_intentView,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListIntentsResponse(
          response as api.GoogleCloudDialogflowV2ListIntentsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsAgentEnvironmentsUsersSessionsResource', () {
    unittest.test('method--deleteContexts', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agent
          .environments
          .users
          .sessions;
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.deleteContexts(arg_parent, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--detectIntent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agent
          .environments
          .users
          .sessions;
      final arg_request = buildGoogleCloudDialogflowV2DetectIntentRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2DetectIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2DetectIntentRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2DetectIntentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.detectIntent(arg_request, arg_session,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2DetectIntentResponse(
          response as api.GoogleCloudDialogflowV2DetectIntentResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsAgentEnvironmentsUsersSessionsContextsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agent
          .environments
          .users
          .sessions
          .contexts;
      final arg_request = buildGoogleCloudDialogflowV2Context();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Context.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Context(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Context(
          response as api.GoogleCloudDialogflowV2Context);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agent
          .environments
          .users
          .sessions
          .contexts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agent
          .environments
          .users
          .sessions
          .contexts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Context(
          response as api.GoogleCloudDialogflowV2Context);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agent
          .environments
          .users
          .sessions
          .contexts;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListContextsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListContextsResponse(
          response as api.GoogleCloudDialogflowV2ListContextsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agent
          .environments
          .users
          .sessions
          .contexts;
      final arg_request = buildGoogleCloudDialogflowV2Context();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Context.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Context(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Context(
          response as api.GoogleCloudDialogflowV2Context);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsAgentEnvironmentsUsersSessionsEntityTypesResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agent
          .environments
          .users
          .sessions
          .entityTypes;
      final arg_request = buildGoogleCloudDialogflowV2SessionEntityType();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2SessionEntityType(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2SessionEntityType(
          response as api.GoogleCloudDialogflowV2SessionEntityType);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agent
          .environments
          .users
          .sessions
          .entityTypes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agent
          .environments
          .users
          .sessions
          .entityTypes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2SessionEntityType(
          response as api.GoogleCloudDialogflowV2SessionEntityType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agent
          .environments
          .users
          .sessions
          .entityTypes;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(
            buildGoogleCloudDialogflowV2ListSessionEntityTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListSessionEntityTypesResponse(response
          as api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agent
          .environments
          .users
          .sessions
          .entityTypes;
      final arg_request = buildGoogleCloudDialogflowV2SessionEntityType();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2SessionEntityType(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2SessionEntityType(
          response as api.GoogleCloudDialogflowV2SessionEntityType);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentIntentsResource', () {
    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.intents;
      final arg_request =
          buildGoogleCloudDialogflowV2BatchDeleteIntentsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowV2BatchDeleteIntentsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchDeleteIntentsRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchDelete(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.intents;
      final arg_request =
          buildGoogleCloudDialogflowV2BatchUpdateIntentsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowV2BatchUpdateIntentsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2BatchUpdateIntentsRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.intents;
      final arg_request = buildGoogleCloudDialogflowV2Intent();
      final arg_parent = 'foo';
      final arg_intentView = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Intent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Intent(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Intent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          intentView: arg_intentView,
          languageCode: arg_languageCode,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Intent(
          response as api.GoogleCloudDialogflowV2Intent);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.intents;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.intents;
      final arg_name = 'foo';
      final arg_intentView = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Intent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          intentView: arg_intentView,
          languageCode: arg_languageCode,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Intent(
          response as api.GoogleCloudDialogflowV2Intent);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.intents;
      final arg_parent = 'foo';
      final arg_intentView = 'foo';
      final arg_languageCode = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListIntentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          intentView: arg_intentView,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListIntentsResponse(
          response as api.GoogleCloudDialogflowV2ListIntentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.intents;
      final arg_request = buildGoogleCloudDialogflowV2Intent();
      final arg_name = 'foo';
      final arg_intentView = 'foo';
      final arg_languageCode = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Intent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Intent(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Intent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          intentView: arg_intentView,
          languageCode: arg_languageCode,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Intent(
          response as api.GoogleCloudDialogflowV2Intent);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentSessionsResource', () {
    unittest.test('method--deleteContexts', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.sessions;
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.deleteContexts(arg_parent, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--detectIntent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.sessions;
      final arg_request = buildGoogleCloudDialogflowV2DetectIntentRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2DetectIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2DetectIntentRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2DetectIntentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.detectIntent(arg_request, arg_session,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2DetectIntentResponse(
          response as api.GoogleCloudDialogflowV2DetectIntentResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentSessionsContextsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agent.sessions.contexts;
      final arg_request = buildGoogleCloudDialogflowV2Context();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Context.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Context(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Context(
          response as api.GoogleCloudDialogflowV2Context);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agent.sessions.contexts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agent.sessions.contexts;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Context(
          response as api.GoogleCloudDialogflowV2Context);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agent.sessions.contexts;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListContextsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListContextsResponse(
          response as api.GoogleCloudDialogflowV2ListContextsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agent.sessions.contexts;
      final arg_request = buildGoogleCloudDialogflowV2Context();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Context.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Context(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Context());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Context(
          response as api.GoogleCloudDialogflowV2Context);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentSessionsEntityTypesResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agent.sessions.entityTypes;
      final arg_request = buildGoogleCloudDialogflowV2SessionEntityType();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2SessionEntityType(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2SessionEntityType(
          response as api.GoogleCloudDialogflowV2SessionEntityType);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agent.sessions.entityTypes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agent.sessions.entityTypes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2SessionEntityType(
          response as api.GoogleCloudDialogflowV2SessionEntityType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agent.sessions.entityTypes;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(
            buildGoogleCloudDialogflowV2ListSessionEntityTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListSessionEntityTypesResponse(response
          as api.GoogleCloudDialogflowV2ListSessionEntityTypesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agent.sessions.entityTypes;
      final arg_request = buildGoogleCloudDialogflowV2SessionEntityType();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2SessionEntityType(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2SessionEntityType(
          response as api.GoogleCloudDialogflowV2SessionEntityType);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentVersionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.versions;
      final arg_request = buildGoogleCloudDialogflowV2Version();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Version.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Version(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Version());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Version(
          response as api.GoogleCloudDialogflowV2Version);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.versions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.versions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Version());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Version(
          response as api.GoogleCloudDialogflowV2Version);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.versions;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListVersionsResponse(
          response as api.GoogleCloudDialogflowV2ListVersionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agent.versions;
      final arg_request = buildGoogleCloudDialogflowV2Version();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Version.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Version(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDialogflowV2Version());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Version(
          response as api.GoogleCloudDialogflowV2Version);
    });
  });

  unittest.group('resource-ProjectsLocationsAnswerRecordsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.answerRecords;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListAnswerRecordsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListAnswerRecordsResponse(
          response as api.GoogleCloudDialogflowV2ListAnswerRecordsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.answerRecords;
      final arg_request = buildGoogleCloudDialogflowV2AnswerRecord();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2AnswerRecord.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2AnswerRecord(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2AnswerRecord());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2AnswerRecord(
          response as api.GoogleCloudDialogflowV2AnswerRecord);
    });
  });

  unittest.group('resource-ProjectsLocationsConversationProfilesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.conversationProfiles;
      final arg_request = buildGoogleCloudDialogflowV2ConversationProfile();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2ConversationProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2ConversationProfile(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ConversationProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ConversationProfile(
          response as api.GoogleCloudDialogflowV2ConversationProfile);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.conversationProfiles;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.conversationProfiles;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ConversationProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ConversationProfile(
          response as api.GoogleCloudDialogflowV2ConversationProfile);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.conversationProfiles;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(
            buildGoogleCloudDialogflowV2ListConversationProfilesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListConversationProfilesResponse(response
          as api.GoogleCloudDialogflowV2ListConversationProfilesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.conversationProfiles;
      final arg_request = buildGoogleCloudDialogflowV2ConversationProfile();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2ConversationProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2ConversationProfile(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ConversationProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ConversationProfile(
          response as api.GoogleCloudDialogflowV2ConversationProfile);
    });
  });

  unittest.group('resource-ProjectsLocationsConversationsResource', () {
    unittest.test('method--complete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.conversations;
      final arg_request =
          buildGoogleCloudDialogflowV2CompleteConversationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowV2CompleteConversationRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2CompleteConversationRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Conversation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.complete(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Conversation(
          response as api.GoogleCloudDialogflowV2Conversation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.conversations;
      final arg_request = buildGoogleCloudDialogflowV2Conversation();
      final arg_parent = 'foo';
      final arg_conversationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Conversation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Conversation(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
          queryMap['conversationId']!.first,
          unittest.equals(arg_conversationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Conversation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          conversationId: arg_conversationId, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Conversation(
          response as api.GoogleCloudDialogflowV2Conversation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.conversations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Conversation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Conversation(
          response as api.GoogleCloudDialogflowV2Conversation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.conversations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListConversationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListConversationsResponse(
          response as api.GoogleCloudDialogflowV2ListConversationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsConversationsMessagesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.conversations.messages;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListMessagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListMessagesResponse(
          response as api.GoogleCloudDialogflowV2ListMessagesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsConversationsParticipantsResource',
      () {
    unittest.test('method--analyzeContent', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.conversations.participants;
      final arg_request = buildGoogleCloudDialogflowV2AnalyzeContentRequest();
      final arg_participant = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2AnalyzeContentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2AnalyzeContentRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2AnalyzeContentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.analyzeContent(arg_request, arg_participant,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2AnalyzeContentResponse(
          response as api.GoogleCloudDialogflowV2AnalyzeContentResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.conversations.participants;
      final arg_request = buildGoogleCloudDialogflowV2Participant();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Participant.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Participant(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Participant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Participant(
          response as api.GoogleCloudDialogflowV2Participant);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.conversations.participants;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Participant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Participant(
          response as api.GoogleCloudDialogflowV2Participant);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.conversations.participants;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListParticipantsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListParticipantsResponse(
          response as api.GoogleCloudDialogflowV2ListParticipantsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.conversations.participants;
      final arg_request = buildGoogleCloudDialogflowV2Participant();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Participant.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Participant(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Participant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Participant(
          response as api.GoogleCloudDialogflowV2Participant);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsConversationsParticipantsSuggestionsResource',
      () {
    unittest.test('method--suggestArticles', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .conversations
          .participants
          .suggestions;
      final arg_request = buildGoogleCloudDialogflowV2SuggestArticlesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2SuggestArticlesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2SuggestArticlesRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SuggestArticlesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.suggestArticles(arg_request, arg_parent,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2SuggestArticlesResponse(
          response as api.GoogleCloudDialogflowV2SuggestArticlesResponse);
    });

    unittest.test('method--suggestFaqAnswers', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .conversations
          .participants
          .suggestions;
      final arg_request =
          buildGoogleCloudDialogflowV2SuggestFaqAnswersRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowV2SuggestFaqAnswersRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2SuggestFaqAnswersRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2SuggestFaqAnswersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.suggestFaqAnswers(arg_request, arg_parent,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2SuggestFaqAnswersResponse(
          response as api.GoogleCloudDialogflowV2SuggestFaqAnswersResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsKnowledgeBasesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.knowledgeBases;
      final arg_request = buildGoogleCloudDialogflowV2KnowledgeBase();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2KnowledgeBase.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2KnowledgeBase(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2KnowledgeBase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2KnowledgeBase(
          response as api.GoogleCloudDialogflowV2KnowledgeBase);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.knowledgeBases;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.knowledgeBases;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2KnowledgeBase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2KnowledgeBase(
          response as api.GoogleCloudDialogflowV2KnowledgeBase);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.knowledgeBases;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListKnowledgeBasesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListKnowledgeBasesResponse(
          response as api.GoogleCloudDialogflowV2ListKnowledgeBasesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.knowledgeBases;
      final arg_request = buildGoogleCloudDialogflowV2KnowledgeBase();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2KnowledgeBase.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2KnowledgeBase(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2KnowledgeBase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2KnowledgeBase(
          response as api.GoogleCloudDialogflowV2KnowledgeBase);
    });
  });

  unittest.group('resource-ProjectsLocationsKnowledgeBasesDocumentsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.knowledgeBases.documents;
      final arg_request = buildGoogleCloudDialogflowV2Document();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Document.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Document(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.knowledgeBases.documents;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.knowledgeBases.documents;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowV2Document());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowV2Document(
          response as api.GoogleCloudDialogflowV2Document);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.knowledgeBases.documents;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowV2ListDocumentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowV2ListDocumentsResponse(
          response as api.GoogleCloudDialogflowV2ListDocumentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.knowledgeBases.documents;
      final arg_request = buildGoogleCloudDialogflowV2Document();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2Document.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2Document(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--reload', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.knowledgeBases.documents;
      final arg_request = buildGoogleCloudDialogflowV2ReloadDocumentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowV2ReloadDocumentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowV2ReloadDocumentRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.reload(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
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
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });
}
