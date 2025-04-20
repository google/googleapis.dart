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
// ignore_for_file: unused_import
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/contactcenterinsights/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudContactcenterinsightsV1Analysis = 0;
api.GoogleCloudContactcenterinsightsV1Analysis
    buildGoogleCloudContactcenterinsightsV1Analysis() {
  final o = api.GoogleCloudContactcenterinsightsV1Analysis();
  buildCounterGoogleCloudContactcenterinsightsV1Analysis++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Analysis < 3) {
    o.analysisResult = buildGoogleCloudContactcenterinsightsV1AnalysisResult();
    o.annotatorSelector =
        buildGoogleCloudContactcenterinsightsV1AnnotatorSelector();
    o.createTime = 'foo';
    o.name = 'foo';
    o.requestTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1Analysis--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Analysis(
    api.GoogleCloudContactcenterinsightsV1Analysis o) {
  buildCounterGoogleCloudContactcenterinsightsV1Analysis++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Analysis < 3) {
    checkGoogleCloudContactcenterinsightsV1AnalysisResult(o.analysisResult!);
    checkGoogleCloudContactcenterinsightsV1AnnotatorSelector(
        o.annotatorSelector!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1Analysis--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1AnalysisResult = 0;
api.GoogleCloudContactcenterinsightsV1AnalysisResult
    buildGoogleCloudContactcenterinsightsV1AnalysisResult() {
  final o = api.GoogleCloudContactcenterinsightsV1AnalysisResult();
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisResult++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnalysisResult < 3) {
    o.callAnalysisMetadata =
        buildGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata();
    o.endTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisResult--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AnalysisResult(
    api.GoogleCloudContactcenterinsightsV1AnalysisResult o) {
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisResult++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnalysisResult < 3) {
    checkGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata(
        o.callAnalysisMetadata!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisResult--;
}

core.List<api.GoogleCloudContactcenterinsightsV1CallAnnotation>
    buildUnnamed0() => [
          buildGoogleCloudContactcenterinsightsV1CallAnnotation(),
          buildGoogleCloudContactcenterinsightsV1CallAnnotation(),
        ];

void checkUnnamed0(
    core.List<api.GoogleCloudContactcenterinsightsV1CallAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1CallAnnotation(o[0]);
  checkGoogleCloudContactcenterinsightsV1CallAnnotation(o[1]);
}

core.Map<core.String, api.GoogleCloudContactcenterinsightsV1Entity>
    buildUnnamed1() => {
          'x': buildGoogleCloudContactcenterinsightsV1Entity(),
          'y': buildGoogleCloudContactcenterinsightsV1Entity(),
        };

void checkUnnamed1(
    core.Map<core.String, api.GoogleCloudContactcenterinsightsV1Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Entity(o['x']!);
  checkGoogleCloudContactcenterinsightsV1Entity(o['y']!);
}

core.Map<core.String, api.GoogleCloudContactcenterinsightsV1Intent>
    buildUnnamed2() => {
          'x': buildGoogleCloudContactcenterinsightsV1Intent(),
          'y': buildGoogleCloudContactcenterinsightsV1Intent(),
        };

void checkUnnamed2(
    core.Map<core.String, api.GoogleCloudContactcenterinsightsV1Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Intent(o['x']!);
  checkGoogleCloudContactcenterinsightsV1Intent(o['y']!);
}

core.Map<core.String, api.GoogleCloudContactcenterinsightsV1PhraseMatchData>
    buildUnnamed3() => {
          'x': buildGoogleCloudContactcenterinsightsV1PhraseMatchData(),
          'y': buildGoogleCloudContactcenterinsightsV1PhraseMatchData(),
        };

void checkUnnamed3(
    core.Map<core.String, api.GoogleCloudContactcenterinsightsV1PhraseMatchData>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1PhraseMatchData(o['x']!);
  checkGoogleCloudContactcenterinsightsV1PhraseMatchData(o['y']!);
}

core.List<api.GoogleCloudContactcenterinsightsV1QaScorecardResult>
    buildUnnamed4() => [
          buildGoogleCloudContactcenterinsightsV1QaScorecardResult(),
          buildGoogleCloudContactcenterinsightsV1QaScorecardResult(),
        ];

void checkUnnamed4(
    core.List<api.GoogleCloudContactcenterinsightsV1QaScorecardResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaScorecardResult(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaScorecardResult(o[1]);
}

core.List<api.GoogleCloudContactcenterinsightsV1ConversationLevelSentiment>
    buildUnnamed5() => [
          buildGoogleCloudContactcenterinsightsV1ConversationLevelSentiment(),
          buildGoogleCloudContactcenterinsightsV1ConversationLevelSentiment(),
        ];

void checkUnnamed5(
    core.List<api.GoogleCloudContactcenterinsightsV1ConversationLevelSentiment>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1ConversationLevelSentiment(o[0]);
  checkGoogleCloudContactcenterinsightsV1ConversationLevelSentiment(o[1]);
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata
    buildGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata() {
  final o = api
      .GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata <
      3) {
    o.annotations = buildUnnamed0();
    o.entities = buildUnnamed1();
    o.intents = buildUnnamed2();
    o.issueModelResult =
        buildGoogleCloudContactcenterinsightsV1IssueModelResult();
    o.phraseMatchers = buildUnnamed3();
    o.qaScorecardResults = buildUnnamed4();
    o.sentiments = buildUnnamed5();
    o.silence =
        buildGoogleCloudContactcenterinsightsV1ConversationLevelSilence();
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata(
    api.GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata
        o) {
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata <
      3) {
    checkUnnamed0(o.annotations!);
    checkUnnamed1(o.entities!);
    checkUnnamed2(o.intents!);
    checkGoogleCloudContactcenterinsightsV1IssueModelResult(
        o.issueModelResult!);
    checkUnnamed3(o.phraseMatchers!);
    checkUnnamed4(o.qaScorecardResults!);
    checkUnnamed5(o.sentiments!);
    checkGoogleCloudContactcenterinsightsV1ConversationLevelSilence(o.silence!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1AnalysisRule = 0;
api.GoogleCloudContactcenterinsightsV1AnalysisRule
    buildGoogleCloudContactcenterinsightsV1AnalysisRule() {
  final o = api.GoogleCloudContactcenterinsightsV1AnalysisRule();
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisRule++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnalysisRule < 3) {
    o.active = true;
    o.analysisPercentage = 42.0;
    o.annotatorSelector =
        buildGoogleCloudContactcenterinsightsV1AnnotatorSelector();
    o.conversationFilter = 'foo';
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisRule--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AnalysisRule(
    api.GoogleCloudContactcenterinsightsV1AnalysisRule o) {
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisRule++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnalysisRule < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.analysisPercentage!,
      unittest.equals(42.0),
    );
    checkGoogleCloudContactcenterinsightsV1AnnotatorSelector(
        o.annotatorSelector!);
    unittest.expect(
      o.conversationFilter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisRule--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1AnnotationBoundary = 0;
api.GoogleCloudContactcenterinsightsV1AnnotationBoundary
    buildGoogleCloudContactcenterinsightsV1AnnotationBoundary() {
  final o = api.GoogleCloudContactcenterinsightsV1AnnotationBoundary();
  buildCounterGoogleCloudContactcenterinsightsV1AnnotationBoundary++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotationBoundary < 3) {
    o.transcriptIndex = 42;
    o.wordIndex = 42;
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotationBoundary--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AnnotationBoundary(
    api.GoogleCloudContactcenterinsightsV1AnnotationBoundary o) {
  buildCounterGoogleCloudContactcenterinsightsV1AnnotationBoundary++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotationBoundary < 3) {
    unittest.expect(
      o.transcriptIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.wordIndex!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotationBoundary--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelector = 0;
api.GoogleCloudContactcenterinsightsV1AnnotatorSelector
    buildGoogleCloudContactcenterinsightsV1AnnotatorSelector() {
  final o = api.GoogleCloudContactcenterinsightsV1AnnotatorSelector();
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelector++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelector < 3) {
    o.issueModels = buildUnnamed6();
    o.phraseMatchers = buildUnnamed7();
    o.qaConfig =
        buildGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig();
    o.runEntityAnnotator = true;
    o.runIntentAnnotator = true;
    o.runInterruptionAnnotator = true;
    o.runIssueModelAnnotator = true;
    o.runPhraseMatcherAnnotator = true;
    o.runQaAnnotator = true;
    o.runSentimentAnnotator = true;
    o.runSilenceAnnotator = true;
    o.runSummarizationAnnotator = true;
    o.summarizationConfig =
        buildGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig();
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelector--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AnnotatorSelector(
    api.GoogleCloudContactcenterinsightsV1AnnotatorSelector o) {
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelector++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelector < 3) {
    checkUnnamed6(o.issueModels!);
    checkUnnamed7(o.phraseMatchers!);
    checkGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig(
        o.qaConfig!);
    unittest.expect(o.runEntityAnnotator!, unittest.isTrue);
    unittest.expect(o.runIntentAnnotator!, unittest.isTrue);
    unittest.expect(o.runInterruptionAnnotator!, unittest.isTrue);
    unittest.expect(o.runIssueModelAnnotator!, unittest.isTrue);
    unittest.expect(o.runPhraseMatcherAnnotator!, unittest.isTrue);
    unittest.expect(o.runQaAnnotator!, unittest.isTrue);
    unittest.expect(o.runSentimentAnnotator!, unittest.isTrue);
    unittest.expect(o.runSilenceAnnotator!, unittest.isTrue);
    unittest.expect(o.runSummarizationAnnotator!, unittest.isTrue);
    checkGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig(
        o.summarizationConfig!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelector--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig = 0;
api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig
    buildGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig() {
  final o = api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig();
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig <
      3) {
    o.scorecardList =
        buildGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList();
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig(
    api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig o) {
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig <
      3) {
    checkGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList(
        o.scorecardList!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig--;
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

core.int
    buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList =
    0;
api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList
    buildGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList() {
  final o = api
      .GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList();
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList <
      3) {
    o.qaScorecardRevisions = buildUnnamed8();
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList(
    api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList
        o) {
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList <
      3) {
    checkUnnamed8(o.qaScorecardRevisions!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig =
    0;
api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig
    buildGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig() {
  final o = api
      .GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig();
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig <
      3) {
    o.conversationProfile = 'foo';
    o.generator = 'foo';
    o.summarizationModel = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig(
    api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig
        o) {
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig <
      3) {
    unittest.expect(
      o.conversationProfile!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.generator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.summarizationModel!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1AnswerFeedback = 0;
api.GoogleCloudContactcenterinsightsV1AnswerFeedback
    buildGoogleCloudContactcenterinsightsV1AnswerFeedback() {
  final o = api.GoogleCloudContactcenterinsightsV1AnswerFeedback();
  buildCounterGoogleCloudContactcenterinsightsV1AnswerFeedback++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnswerFeedback < 3) {
    o.clicked = true;
    o.correctnessLevel = 'foo';
    o.displayed = true;
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnswerFeedback--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1AnswerFeedback(
    api.GoogleCloudContactcenterinsightsV1AnswerFeedback o) {
  buildCounterGoogleCloudContactcenterinsightsV1AnswerFeedback++;
  if (buildCounterGoogleCloudContactcenterinsightsV1AnswerFeedback < 3) {
    unittest.expect(o.clicked!, unittest.isTrue);
    unittest.expect(
      o.correctnessLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(o.displayed!, unittest.isTrue);
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnswerFeedback--;
}

core.Map<core.String, core.String> buildUnnamed9() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed9(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudContactcenterinsightsV1ArticleSuggestionData =
    0;
api.GoogleCloudContactcenterinsightsV1ArticleSuggestionData
    buildGoogleCloudContactcenterinsightsV1ArticleSuggestionData() {
  final o = api.GoogleCloudContactcenterinsightsV1ArticleSuggestionData();
  buildCounterGoogleCloudContactcenterinsightsV1ArticleSuggestionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ArticleSuggestionData < 3) {
    o.confidenceScore = 42.0;
    o.metadata = buildUnnamed9();
    o.queryRecord = 'foo';
    o.source = 'foo';
    o.title = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ArticleSuggestionData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ArticleSuggestionData(
    api.GoogleCloudContactcenterinsightsV1ArticleSuggestionData o) {
  buildCounterGoogleCloudContactcenterinsightsV1ArticleSuggestionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ArticleSuggestionData < 3) {
    unittest.expect(
      o.confidenceScore!,
      unittest.equals(42.0),
    );
    checkUnnamed9(o.metadata!);
    unittest.expect(
      o.queryRecord!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ArticleSuggestionData--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest =
    0;
api.GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest
    buildGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest() {
  final o =
      api.GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest();
  buildCounterGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest <
      3) {
    o.analysisPercentage = 42.0;
    o.annotatorSelector =
        buildGoogleCloudContactcenterinsightsV1AnnotatorSelector();
    o.filter = 'foo';
    o.parent = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest(
    api.GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest o) {
  buildCounterGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest <
      3) {
    unittest.expect(
      o.analysisPercentage!,
      unittest.equals(42.0),
    );
    checkGoogleCloudContactcenterinsightsV1AnnotatorSelector(
        o.annotatorSelector!);
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest =
    0;
api.GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest
    buildGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest() {
  final o =
      api.GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest();
  buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest <
      3) {
    o.filter = 'foo';
    o.force = true;
    o.maxDeleteCount = 42;
    o.parent = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest(
    api.GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest o) {
  buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest <
      3) {
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(o.force!, unittest.isTrue);
    unittest.expect(
      o.maxDeleteCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest--;
}

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
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
    buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest =
    0;
api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest
    buildGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest() {
  final o =
      api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest();
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest <
      3) {
    o.conversationFilter = 'foo';
    o.feedbackLabelType = 'foo';
    o.filter = 'foo';
    o.gcsDestination =
        buildGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination();
    o.maxDownloadCount = 42;
    o.parent = 'foo';
    o.templateQaScorecardId = buildUnnamed10();
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest(
    api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest o) {
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest <
      3) {
    unittest.expect(
      o.conversationFilter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.feedbackLabelType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination(
        o.gcsDestination!);
    unittest.expect(
      o.maxDownloadCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.templateQaScorecardId!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination =
    0;
api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination
    buildGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination() {
  final o = api
      .GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination();
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination <
      3) {
    o.addWhitespace = true;
    o.alwaysPrintEmptyFields = true;
    o.format = 'foo';
    o.objectUri = 'foo';
    o.recordsPerFileCount = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination(
    api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination
        o) {
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination <
      3) {
    unittest.expect(o.addWhitespace!, unittest.isTrue);
    unittest.expect(o.alwaysPrintEmptyFields!, unittest.isTrue);
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recordsPerFileCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest =
    0;
api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest
    buildGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest() {
  final o =
      api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest();
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest <
      3) {
    o.gcsSource =
        buildGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource();
    o.validateOnly = true;
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest(
    api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest o) {
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest <
      3) {
    checkGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource(
        o.gcsSource!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource =
    0;
api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource
    buildGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource() {
  final o = api
      .GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource();
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource <
      3) {
    o.format = 'foo';
    o.objectUri = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource(
    api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource
        o) {
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource <
      3) {
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse =
    0;
api.GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse
    buildGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse() {
  final o =
      api.GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse <
      3) {
    o.currentStats =
        buildGoogleCloudContactcenterinsightsV1IssueModelLabelStats();
  }
  buildCounterGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse(
    api.GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse o) {
  buildCounterGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse <
      3) {
    checkGoogleCloudContactcenterinsightsV1IssueModelLabelStats(
        o.currentStats!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse--;
}

core.Map<core.String, core.int> buildUnnamed11() => {
      'x': 42,
      'y': 42,
    };

void checkUnnamed11(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals(42),
  );
  unittest.expect(
    o['y']!,
    unittest.equals(42),
  );
}

core.Map<core.String, core.int> buildUnnamed12() => {
      'x': 42,
      'y': 42,
    };

void checkUnnamed12(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals(42),
  );
  unittest.expect(
    o['y']!,
    unittest.equals(42),
  );
}

core.Map<core.String,
        api.GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats>
    buildUnnamed13() => {
          'x':
              buildGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(),
          'y':
              buildGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(),
        };

void checkUnnamed13(
    core.Map<
            core.String,
            api
            .GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(
      o['x']!);
  checkGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(
      o['y']!);
}

core.Map<core.String, core.int> buildUnnamed14() => {
      'x': 42,
      'y': 42,
    };

void checkUnnamed14(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals(42),
  );
  unittest.expect(
    o['y']!,
    unittest.equals(42),
  );
}

core.int buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponse =
    0;
api.GoogleCloudContactcenterinsightsV1CalculateStatsResponse
    buildGoogleCloudContactcenterinsightsV1CalculateStatsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1CalculateStatsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponse <
      3) {
    o.averageDuration = 'foo';
    o.averageTurnCount = 42;
    o.conversationCount = 42;
    o.conversationCountTimeSeries =
        buildGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries();
    o.customHighlighterMatches = buildUnnamed11();
    o.issueMatches = buildUnnamed12();
    o.issueMatchesStats = buildUnnamed13();
    o.smartHighlighterMatches = buildUnnamed14();
  }
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1CalculateStatsResponse(
    api.GoogleCloudContactcenterinsightsV1CalculateStatsResponse o) {
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponse <
      3) {
    unittest.expect(
      o.averageDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.averageTurnCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.conversationCount!,
      unittest.equals(42),
    );
    checkGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries(
        o.conversationCountTimeSeries!);
    checkUnnamed11(o.customHighlighterMatches!);
    checkUnnamed12(o.issueMatches!);
    checkUnnamed13(o.issueMatchesStats!);
    checkUnnamed14(o.smartHighlighterMatches!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponse--;
}

core.List<
        api
        .GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval>
    buildUnnamed15() => [
          buildGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval(),
          buildGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval(),
        ];

void checkUnnamed15(
    core.List<
            api
            .GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval(
      o[0]);
  checkGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval(
      o[1]);
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries =
    0;
api.GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries
    buildGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries() {
  final o =
      api.GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries();
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries <
      3) {
    o.intervalDuration = 'foo';
    o.points = buildUnnamed15();
  }
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries(
    api.GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries o) {
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries <
      3) {
    unittest.expect(
      o.intervalDuration!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.points!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval =
    0;
api.GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval
    buildGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval() {
  final o = api
      .GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval();
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval <
      3) {
    o.conversationCount = 42;
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval(
    api.GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval
        o) {
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval <
      3) {
    unittest.expect(
      o.conversationCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1CallAnnotation = 0;
api.GoogleCloudContactcenterinsightsV1CallAnnotation
    buildGoogleCloudContactcenterinsightsV1CallAnnotation() {
  final o = api.GoogleCloudContactcenterinsightsV1CallAnnotation();
  buildCounterGoogleCloudContactcenterinsightsV1CallAnnotation++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CallAnnotation < 3) {
    o.annotationEndBoundary =
        buildGoogleCloudContactcenterinsightsV1AnnotationBoundary();
    o.annotationStartBoundary =
        buildGoogleCloudContactcenterinsightsV1AnnotationBoundary();
    o.channelTag = 42;
    o.entityMentionData =
        buildGoogleCloudContactcenterinsightsV1EntityMentionData();
    o.holdData = buildGoogleCloudContactcenterinsightsV1HoldData();
    o.intentMatchData =
        buildGoogleCloudContactcenterinsightsV1IntentMatchData();
    o.interruptionData =
        buildGoogleCloudContactcenterinsightsV1InterruptionData();
    o.issueMatchData = buildGoogleCloudContactcenterinsightsV1IssueMatchData();
    o.phraseMatchData =
        buildGoogleCloudContactcenterinsightsV1PhraseMatchData();
    o.sentimentData = buildGoogleCloudContactcenterinsightsV1SentimentData();
    o.silenceData = buildGoogleCloudContactcenterinsightsV1SilenceData();
  }
  buildCounterGoogleCloudContactcenterinsightsV1CallAnnotation--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1CallAnnotation(
    api.GoogleCloudContactcenterinsightsV1CallAnnotation o) {
  buildCounterGoogleCloudContactcenterinsightsV1CallAnnotation++;
  if (buildCounterGoogleCloudContactcenterinsightsV1CallAnnotation < 3) {
    checkGoogleCloudContactcenterinsightsV1AnnotationBoundary(
        o.annotationEndBoundary!);
    checkGoogleCloudContactcenterinsightsV1AnnotationBoundary(
        o.annotationStartBoundary!);
    unittest.expect(
      o.channelTag!,
      unittest.equals(42),
    );
    checkGoogleCloudContactcenterinsightsV1EntityMentionData(
        o.entityMentionData!);
    checkGoogleCloudContactcenterinsightsV1HoldData(o.holdData!);
    checkGoogleCloudContactcenterinsightsV1IntentMatchData(o.intentMatchData!);
    checkGoogleCloudContactcenterinsightsV1InterruptionData(
        o.interruptionData!);
    checkGoogleCloudContactcenterinsightsV1IssueMatchData(o.issueMatchData!);
    checkGoogleCloudContactcenterinsightsV1PhraseMatchData(o.phraseMatchData!);
    checkGoogleCloudContactcenterinsightsV1SentimentData(o.sentimentData!);
    checkGoogleCloudContactcenterinsightsV1SilenceData(o.silenceData!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1CallAnnotation--;
}

core.Map<core.String, api.GoogleCloudContactcenterinsightsV1DialogflowIntent>
    buildUnnamed16() => {
          'x': buildGoogleCloudContactcenterinsightsV1DialogflowIntent(),
          'y': buildGoogleCloudContactcenterinsightsV1DialogflowIntent(),
        };

void checkUnnamed16(
    core.Map<core.String,
            api.GoogleCloudContactcenterinsightsV1DialogflowIntent>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1DialogflowIntent(o['x']!);
  checkGoogleCloudContactcenterinsightsV1DialogflowIntent(o['y']!);
}

core.Map<core.String, core.String> buildUnnamed17() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed17(core.Map<core.String, core.String> o) {
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

core.List<api.GoogleCloudContactcenterinsightsV1RuntimeAnnotation>
    buildUnnamed18() => [
          buildGoogleCloudContactcenterinsightsV1RuntimeAnnotation(),
          buildGoogleCloudContactcenterinsightsV1RuntimeAnnotation(),
        ];

void checkUnnamed18(
    core.List<api.GoogleCloudContactcenterinsightsV1RuntimeAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1RuntimeAnnotation(o[0]);
  checkGoogleCloudContactcenterinsightsV1RuntimeAnnotation(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1Conversation = 0;
api.GoogleCloudContactcenterinsightsV1Conversation
    buildGoogleCloudContactcenterinsightsV1Conversation() {
  final o = api.GoogleCloudContactcenterinsightsV1Conversation();
  buildCounterGoogleCloudContactcenterinsightsV1Conversation++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Conversation < 3) {
    o.agentId = 'foo';
    o.callMetadata =
        buildGoogleCloudContactcenterinsightsV1ConversationCallMetadata();
    o.createTime = 'foo';
    o.dataSource =
        buildGoogleCloudContactcenterinsightsV1ConversationDataSource();
    o.dialogflowIntents = buildUnnamed16();
    o.duration = 'foo';
    o.expireTime = 'foo';
    o.labels = buildUnnamed17();
    o.languageCode = 'foo';
    o.latestAnalysis = buildGoogleCloudContactcenterinsightsV1Analysis();
    o.latestSummary =
        buildGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData();
    o.medium = 'foo';
    o.metadataJson = 'foo';
    o.name = 'foo';
    o.obfuscatedUserId = 'foo';
    o.qualityMetadata =
        buildGoogleCloudContactcenterinsightsV1ConversationQualityMetadata();
    o.runtimeAnnotations = buildUnnamed18();
    o.startTime = 'foo';
    o.transcript =
        buildGoogleCloudContactcenterinsightsV1ConversationTranscript();
    o.ttl = 'foo';
    o.turnCount = 42;
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1Conversation--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Conversation(
    api.GoogleCloudContactcenterinsightsV1Conversation o) {
  buildCounterGoogleCloudContactcenterinsightsV1Conversation++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Conversation < 3) {
    unittest.expect(
      o.agentId!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContactcenterinsightsV1ConversationCallMetadata(
        o.callMetadata!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContactcenterinsightsV1ConversationDataSource(
        o.dataSource!);
    checkUnnamed16(o.dialogflowIntents!);
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.labels!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContactcenterinsightsV1Analysis(o.latestAnalysis!);
    checkGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData(
        o.latestSummary!);
    unittest.expect(
      o.medium!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metadataJson!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.obfuscatedUserId!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContactcenterinsightsV1ConversationQualityMetadata(
        o.qualityMetadata!);
    checkUnnamed18(o.runtimeAnnotations!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContactcenterinsightsV1ConversationTranscript(
        o.transcript!);
    unittest.expect(
      o.ttl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.turnCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1Conversation--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1ConversationCallMetadata = 0;
api.GoogleCloudContactcenterinsightsV1ConversationCallMetadata
    buildGoogleCloudContactcenterinsightsV1ConversationCallMetadata() {
  final o = api.GoogleCloudContactcenterinsightsV1ConversationCallMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationCallMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationCallMetadata <
      3) {
    o.agentChannel = 42;
    o.customerChannel = 42;
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationCallMetadata--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationCallMetadata(
    api.GoogleCloudContactcenterinsightsV1ConversationCallMetadata o) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationCallMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationCallMetadata <
      3) {
    unittest.expect(
      o.agentChannel!,
      unittest.equals(42),
    );
    unittest.expect(
      o.customerChannel!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationCallMetadata--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSource =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationDataSource
    buildGoogleCloudContactcenterinsightsV1ConversationDataSource() {
  final o = api.GoogleCloudContactcenterinsightsV1ConversationDataSource();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSource <
      3) {
    o.dialogflowSource =
        buildGoogleCloudContactcenterinsightsV1DialogflowSource();
    o.gcsSource = buildGoogleCloudContactcenterinsightsV1GcsSource();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSource--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationDataSource(
    api.GoogleCloudContactcenterinsightsV1ConversationDataSource o) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSource <
      3) {
    checkGoogleCloudContactcenterinsightsV1DialogflowSource(
        o.dialogflowSource!);
    checkGoogleCloudContactcenterinsightsV1GcsSource(o.gcsSource!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationDataSource--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSentiment =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationLevelSentiment
    buildGoogleCloudContactcenterinsightsV1ConversationLevelSentiment() {
  final o = api.GoogleCloudContactcenterinsightsV1ConversationLevelSentiment();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSentiment++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSentiment <
      3) {
    o.channelTag = 42;
    o.sentimentData = buildGoogleCloudContactcenterinsightsV1SentimentData();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSentiment--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationLevelSentiment(
    api.GoogleCloudContactcenterinsightsV1ConversationLevelSentiment o) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSentiment++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSentiment <
      3) {
    unittest.expect(
      o.channelTag!,
      unittest.equals(42),
    );
    checkGoogleCloudContactcenterinsightsV1SentimentData(o.sentimentData!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSentiment--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSilence = 0;
api.GoogleCloudContactcenterinsightsV1ConversationLevelSilence
    buildGoogleCloudContactcenterinsightsV1ConversationLevelSilence() {
  final o = api.GoogleCloudContactcenterinsightsV1ConversationLevelSilence();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSilence++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSilence <
      3) {
    o.silenceDuration = 'foo';
    o.silencePercentage = 42.0;
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSilence--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationLevelSilence(
    api.GoogleCloudContactcenterinsightsV1ConversationLevelSilence o) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSilence++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSilence <
      3) {
    unittest.expect(
      o.silenceDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.silencePercentage!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationLevelSilence--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ConversationParticipant =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationParticipant
    buildGoogleCloudContactcenterinsightsV1ConversationParticipant() {
  final o = api.GoogleCloudContactcenterinsightsV1ConversationParticipant();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationParticipant++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationParticipant <
      3) {
    o.dialogflowParticipant = 'foo';
    o.dialogflowParticipantName = 'foo';
    o.obfuscatedExternalUserId = 'foo';
    o.role = 'foo';
    o.userId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationParticipant--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationParticipant(
    api.GoogleCloudContactcenterinsightsV1ConversationParticipant o) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationParticipant++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationParticipant <
      3) {
    unittest.expect(
      o.dialogflowParticipant!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dialogflowParticipantName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.obfuscatedExternalUserId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationParticipant--;
}

core.List<
        api
        .GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo>
    buildUnnamed19() => [
          buildGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo(),
          buildGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo(),
        ];

void checkUnnamed19(
    core.List<
            api
            .GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo(
      o[0]);
  checkGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo(
      o[1]);
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationQualityMetadata
    buildGoogleCloudContactcenterinsightsV1ConversationQualityMetadata() {
  final o = api.GoogleCloudContactcenterinsightsV1ConversationQualityMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadata <
      3) {
    o.agentInfo = buildUnnamed19();
    o.customerSatisfactionRating = 42;
    o.menuPath = 'foo';
    o.waitDuration = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadata--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationQualityMetadata(
    api.GoogleCloudContactcenterinsightsV1ConversationQualityMetadata o) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadata <
      3) {
    checkUnnamed19(o.agentInfo!);
    unittest.expect(
      o.customerSatisfactionRating!,
      unittest.equals(42),
    );
    unittest.expect(
      o.menuPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.waitDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadata--;
}

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
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
    buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo
    buildGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo() {
  final o = api
      .GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo <
      3) {
    o.agentId = 'foo';
    o.agentType = 'foo';
    o.displayName = 'foo';
    o.dispositionCode = 'foo';
    o.location = 'foo';
    o.team = 'foo';
    o.teams = buildUnnamed20();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo(
    api.GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo
        o) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo <
      3) {
    unittest.expect(
      o.agentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.agentType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dispositionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.team!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.teams!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo--;
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

core.Map<core.String, core.String> buildUnnamed22() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed22(core.Map<core.String, core.String> o) {
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

core.int
    buildCounterGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData
    buildGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData() {
  final o = api
      .GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData <
      3) {
    o.answerRecord = 'foo';
    o.confidence = 42.0;
    o.conversationModel = 'foo';
    o.metadata = buildUnnamed21();
    o.text = 'foo';
    o.textSections = buildUnnamed22();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData(
    api.GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData
        o) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData <
      3) {
    unittest.expect(
      o.answerRecord!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.conversationModel!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.metadata!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.textSections!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData--;
}

core.List<
        api
        .GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment>
    buildUnnamed23() => [
          buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment(),
          buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment(),
        ];

void checkUnnamed23(
    core.List<
            api
            .GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment(
      o[0]);
  checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment(
      o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscript =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationTranscript
    buildGoogleCloudContactcenterinsightsV1ConversationTranscript() {
  final o = api.GoogleCloudContactcenterinsightsV1ConversationTranscript();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscript++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscript <
      3) {
    o.transcriptSegments = buildUnnamed23();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscript--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationTranscript(
    api.GoogleCloudContactcenterinsightsV1ConversationTranscript o) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscript++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscript <
      3) {
    checkUnnamed23(o.transcriptSegments!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscript--;
}

core.List<
        api
        .GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo>
    buildUnnamed24() => [
          buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo(),
          buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo(),
        ];

void checkUnnamed24(
    core.List<
            api
            .GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo(
      o[0]);
  checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo(
      o[1]);
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment
    buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment() {
  final o = api
      .GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment <
      3) {
    o.channelTag = 42;
    o.confidence = 42.0;
    o.dialogflowSegmentMetadata =
        buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata();
    o.languageCode = 'foo';
    o.messageTime = 'foo';
    o.segmentParticipant =
        buildGoogleCloudContactcenterinsightsV1ConversationParticipant();
    o.sentiment = buildGoogleCloudContactcenterinsightsV1SentimentData();
    o.text = 'foo';
    o.words = buildUnnamed24();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment(
    api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment
        o) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment <
      3) {
    unittest.expect(
      o.channelTag!,
      unittest.equals(42),
    );
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata(
        o.dialogflowSegmentMetadata!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.messageTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContactcenterinsightsV1ConversationParticipant(
        o.segmentParticipant!);
    checkGoogleCloudContactcenterinsightsV1SentimentData(o.sentiment!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.words!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata
    buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata() {
  final o = api
      .GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata <
      3) {
    o.smartReplyAllowlistCovered = true;
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata(
    api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata
        o) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata <
      3) {
    unittest.expect(o.smartReplyAllowlistCovered!, unittest.isTrue);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo =
    0;
api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo
    buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo() {
  final o = api
      .GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo();
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo <
      3) {
    o.confidence = 42.0;
    o.endOffset = 'foo';
    o.startOffset = 'foo';
    o.word = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo(
    api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo
        o) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.endOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.word!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1DeployIssueModelRequest =
    0;
api.GoogleCloudContactcenterinsightsV1DeployIssueModelRequest
    buildGoogleCloudContactcenterinsightsV1DeployIssueModelRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1DeployIssueModelRequest();
  buildCounterGoogleCloudContactcenterinsightsV1DeployIssueModelRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DeployIssueModelRequest <
      3) {
    o.name = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DeployIssueModelRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DeployIssueModelRequest(
    api.GoogleCloudContactcenterinsightsV1DeployIssueModelRequest o) {
  buildCounterGoogleCloudContactcenterinsightsV1DeployIssueModelRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DeployIssueModelRequest <
      3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1DeployIssueModelRequest--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest =
    0;
api.GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest
    buildGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest() {
  final o =
      api.GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest();
  buildCounterGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest <
      3) {}
  buildCounterGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest(
    api.GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest o) {
  buildCounterGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest <
      3) {}
  buildCounterGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1DialogflowIntent = 0;
api.GoogleCloudContactcenterinsightsV1DialogflowIntent
    buildGoogleCloudContactcenterinsightsV1DialogflowIntent() {
  final o = api.GoogleCloudContactcenterinsightsV1DialogflowIntent();
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowIntent++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DialogflowIntent < 3) {
    o.displayName = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowIntent--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DialogflowIntent(
    api.GoogleCloudContactcenterinsightsV1DialogflowIntent o) {
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowIntent++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DialogflowIntent < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowIntent--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1DialogflowInteractionData = 0;
api.GoogleCloudContactcenterinsightsV1DialogflowInteractionData
    buildGoogleCloudContactcenterinsightsV1DialogflowInteractionData() {
  final o = api.GoogleCloudContactcenterinsightsV1DialogflowInteractionData();
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowInteractionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DialogflowInteractionData <
      3) {
    o.confidence = 42.0;
    o.dialogflowIntentId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowInteractionData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DialogflowInteractionData(
    api.GoogleCloudContactcenterinsightsV1DialogflowInteractionData o) {
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowInteractionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DialogflowInteractionData <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.dialogflowIntentId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowInteractionData--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1DialogflowSource = 0;
api.GoogleCloudContactcenterinsightsV1DialogflowSource
    buildGoogleCloudContactcenterinsightsV1DialogflowSource() {
  final o = api.GoogleCloudContactcenterinsightsV1DialogflowSource();
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DialogflowSource < 3) {
    o.audioUri = 'foo';
    o.dialogflowConversation = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowSource--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DialogflowSource(
    api.GoogleCloudContactcenterinsightsV1DialogflowSource o) {
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DialogflowSource < 3) {
    unittest.expect(
      o.audioUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dialogflowConversation!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1DialogflowSource--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1Dimension = 0;
api.GoogleCloudContactcenterinsightsV1Dimension
    buildGoogleCloudContactcenterinsightsV1Dimension() {
  final o = api.GoogleCloudContactcenterinsightsV1Dimension();
  buildCounterGoogleCloudContactcenterinsightsV1Dimension++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Dimension < 3) {
    o.agentDimensionMetadata =
        buildGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata();
    o.dimensionKey = 'foo';
    o.issueDimensionMetadata =
        buildGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata();
    o.qaQuestionAnswerDimensionMetadata =
        buildGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata();
    o.qaQuestionDimensionMetadata =
        buildGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata();
  }
  buildCounterGoogleCloudContactcenterinsightsV1Dimension--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Dimension(
    api.GoogleCloudContactcenterinsightsV1Dimension o) {
  buildCounterGoogleCloudContactcenterinsightsV1Dimension++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Dimension < 3) {
    checkGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata(
        o.agentDimensionMetadata!);
    unittest.expect(
      o.dimensionKey!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata(
        o.issueDimensionMetadata!);
    checkGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata(
        o.qaQuestionAnswerDimensionMetadata!);
    checkGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata(
        o.qaQuestionDimensionMetadata!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1Dimension--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata
    buildGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata() {
  final o =
      api.GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata <
      3) {
    o.agentDisplayName = 'foo';
    o.agentId = 'foo';
    o.agentTeam = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata(
    api.GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata o) {
  buildCounterGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata <
      3) {
    unittest.expect(
      o.agentDisplayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.agentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.agentTeam!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata
    buildGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata() {
  final o =
      api.GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata <
      3) {
    o.issueDisplayName = 'foo';
    o.issueId = 'foo';
    o.issueModelId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata(
    api.GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata o) {
  buildCounterGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata <
      3) {
    unittest.expect(
      o.issueDisplayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.issueId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.issueModelId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata
    buildGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata() {
  final o = api
      .GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata <
      3) {
    o.answerValue = 'foo';
    o.qaQuestionId = 'foo';
    o.qaScorecardId = 'foo';
    o.questionBody = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata(
    api.GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata
        o) {
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata <
      3) {
    unittest.expect(
      o.answerValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.qaQuestionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.qaScorecardId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.questionBody!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata =
    0;
api.GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata
    buildGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata() {
  final o = api
      .GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata <
      3) {
    o.qaQuestionId = 'foo';
    o.qaScorecardId = 'foo';
    o.questionBody = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata(
    api.GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata
        o) {
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata <
      3) {
    unittest.expect(
      o.qaQuestionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.qaScorecardId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.questionBody!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1EncryptionSpec = 0;
api.GoogleCloudContactcenterinsightsV1EncryptionSpec
    buildGoogleCloudContactcenterinsightsV1EncryptionSpec() {
  final o = api.GoogleCloudContactcenterinsightsV1EncryptionSpec();
  buildCounterGoogleCloudContactcenterinsightsV1EncryptionSpec++;
  if (buildCounterGoogleCloudContactcenterinsightsV1EncryptionSpec < 3) {
    o.kmsKey = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1EncryptionSpec--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1EncryptionSpec(
    api.GoogleCloudContactcenterinsightsV1EncryptionSpec o) {
  buildCounterGoogleCloudContactcenterinsightsV1EncryptionSpec++;
  if (buildCounterGoogleCloudContactcenterinsightsV1EncryptionSpec < 3) {
    unittest.expect(
      o.kmsKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1EncryptionSpec--;
}

core.Map<core.String, core.String> buildUnnamed25() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed25(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudContactcenterinsightsV1Entity = 0;
api.GoogleCloudContactcenterinsightsV1Entity
    buildGoogleCloudContactcenterinsightsV1Entity() {
  final o = api.GoogleCloudContactcenterinsightsV1Entity();
  buildCounterGoogleCloudContactcenterinsightsV1Entity++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Entity < 3) {
    o.displayName = 'foo';
    o.metadata = buildUnnamed25();
    o.salience = 42.0;
    o.sentiment = buildGoogleCloudContactcenterinsightsV1SentimentData();
    o.type = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1Entity--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Entity(
    api.GoogleCloudContactcenterinsightsV1Entity o) {
  buildCounterGoogleCloudContactcenterinsightsV1Entity++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Entity < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.metadata!);
    unittest.expect(
      o.salience!,
      unittest.equals(42.0),
    );
    checkGoogleCloudContactcenterinsightsV1SentimentData(o.sentiment!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1Entity--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1EntityMentionData = 0;
api.GoogleCloudContactcenterinsightsV1EntityMentionData
    buildGoogleCloudContactcenterinsightsV1EntityMentionData() {
  final o = api.GoogleCloudContactcenterinsightsV1EntityMentionData();
  buildCounterGoogleCloudContactcenterinsightsV1EntityMentionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1EntityMentionData < 3) {
    o.entityUniqueId = 'foo';
    o.sentiment = buildGoogleCloudContactcenterinsightsV1SentimentData();
    o.type = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1EntityMentionData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1EntityMentionData(
    api.GoogleCloudContactcenterinsightsV1EntityMentionData o) {
  buildCounterGoogleCloudContactcenterinsightsV1EntityMentionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1EntityMentionData < 3) {
    unittest.expect(
      o.entityUniqueId!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContactcenterinsightsV1SentimentData(o.sentiment!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1EntityMentionData--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ExactMatchConfig = 0;
api.GoogleCloudContactcenterinsightsV1ExactMatchConfig
    buildGoogleCloudContactcenterinsightsV1ExactMatchConfig() {
  final o = api.GoogleCloudContactcenterinsightsV1ExactMatchConfig();
  buildCounterGoogleCloudContactcenterinsightsV1ExactMatchConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExactMatchConfig < 3) {
    o.caseSensitive = true;
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExactMatchConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ExactMatchConfig(
    api.GoogleCloudContactcenterinsightsV1ExactMatchConfig o) {
  buildCounterGoogleCloudContactcenterinsightsV1ExactMatchConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExactMatchConfig < 3) {
    unittest.expect(o.caseSensitive!, unittest.isTrue);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExactMatchConfig--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest = 0;
api.GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest
    buildGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest();
  buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest <
      3) {
    o.bigQueryDestination =
        buildGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination();
    o.exportSchemaVersion = 'foo';
    o.filter = 'foo';
    o.kmsKey = 'foo';
    o.parent = 'foo';
    o.writeDisposition = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest(
    api.GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest o) {
  buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest <
      3) {
    checkGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination(
        o.bigQueryDestination!);
    unittest.expect(
      o.exportSchemaVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.writeDisposition!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination =
    0;
api.GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination
    buildGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination() {
  final o = api
      .GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination();
  buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination <
      3) {
    o.dataset = 'foo';
    o.projectId = 'foo';
    o.table = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination(
    api.GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination
        o) {
  buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination <
      3) {
    unittest.expect(
      o.dataset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequest =
    0;
api.GoogleCloudContactcenterinsightsV1ExportIssueModelRequest
    buildGoogleCloudContactcenterinsightsV1ExportIssueModelRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1ExportIssueModelRequest();
  buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequest <
      3) {
    o.gcsDestination =
        buildGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination();
    o.name = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ExportIssueModelRequest(
    api.GoogleCloudContactcenterinsightsV1ExportIssueModelRequest o) {
  buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequest <
      3) {
    checkGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination(
        o.gcsDestination!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequest--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination =
    0;
api.GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination
    buildGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination() {
  final o = api
      .GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination();
  buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination <
      3) {
    o.objectUri = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination(
    api.GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination
        o) {
  buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination <
      3) {
    unittest.expect(
      o.objectUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination--;
}

core.Map<core.String, core.String> buildUnnamed26() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed26(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudContactcenterinsightsV1FaqAnswerData = 0;
api.GoogleCloudContactcenterinsightsV1FaqAnswerData
    buildGoogleCloudContactcenterinsightsV1FaqAnswerData() {
  final o = api.GoogleCloudContactcenterinsightsV1FaqAnswerData();
  buildCounterGoogleCloudContactcenterinsightsV1FaqAnswerData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1FaqAnswerData < 3) {
    o.answer = 'foo';
    o.confidenceScore = 42.0;
    o.metadata = buildUnnamed26();
    o.queryRecord = 'foo';
    o.question = 'foo';
    o.source = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1FaqAnswerData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1FaqAnswerData(
    api.GoogleCloudContactcenterinsightsV1FaqAnswerData o) {
  buildCounterGoogleCloudContactcenterinsightsV1FaqAnswerData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1FaqAnswerData < 3) {
    unittest.expect(
      o.answer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.confidenceScore!,
      unittest.equals(42.0),
    );
    checkUnnamed26(o.metadata!);
    unittest.expect(
      o.queryRecord!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.question!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1FaqAnswerData--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1FeedbackLabel = 0;
api.GoogleCloudContactcenterinsightsV1FeedbackLabel
    buildGoogleCloudContactcenterinsightsV1FeedbackLabel() {
  final o = api.GoogleCloudContactcenterinsightsV1FeedbackLabel();
  buildCounterGoogleCloudContactcenterinsightsV1FeedbackLabel++;
  if (buildCounterGoogleCloudContactcenterinsightsV1FeedbackLabel < 3) {
    o.createTime = 'foo';
    o.label = 'foo';
    o.labeledResource = 'foo';
    o.name = 'foo';
    o.qaAnswerLabel =
        buildGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1FeedbackLabel--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1FeedbackLabel(
    api.GoogleCloudContactcenterinsightsV1FeedbackLabel o) {
  buildCounterGoogleCloudContactcenterinsightsV1FeedbackLabel++;
  if (buildCounterGoogleCloudContactcenterinsightsV1FeedbackLabel < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.labeledResource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue(
        o.qaAnswerLabel!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1FeedbackLabel--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1GcsSource = 0;
api.GoogleCloudContactcenterinsightsV1GcsSource
    buildGoogleCloudContactcenterinsightsV1GcsSource() {
  final o = api.GoogleCloudContactcenterinsightsV1GcsSource();
  buildCounterGoogleCloudContactcenterinsightsV1GcsSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GcsSource < 3) {
    o.audioUri = 'foo';
    o.transcriptUri = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1GcsSource--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1GcsSource(
    api.GoogleCloudContactcenterinsightsV1GcsSource o) {
  buildCounterGoogleCloudContactcenterinsightsV1GcsSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1GcsSource < 3) {
    unittest.expect(
      o.audioUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transcriptUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1GcsSource--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1HoldData = 0;
api.GoogleCloudContactcenterinsightsV1HoldData
    buildGoogleCloudContactcenterinsightsV1HoldData() {
  final o = api.GoogleCloudContactcenterinsightsV1HoldData();
  buildCounterGoogleCloudContactcenterinsightsV1HoldData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1HoldData < 3) {}
  buildCounterGoogleCloudContactcenterinsightsV1HoldData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1HoldData(
    api.GoogleCloudContactcenterinsightsV1HoldData o) {
  buildCounterGoogleCloudContactcenterinsightsV1HoldData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1HoldData < 3) {}
  buildCounterGoogleCloudContactcenterinsightsV1HoldData--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequest =
    0;
api.GoogleCloudContactcenterinsightsV1ImportIssueModelRequest
    buildGoogleCloudContactcenterinsightsV1ImportIssueModelRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1ImportIssueModelRequest();
  buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequest <
      3) {
    o.createNewModel = true;
    o.gcsSource =
        buildGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource();
    o.parent = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ImportIssueModelRequest(
    api.GoogleCloudContactcenterinsightsV1ImportIssueModelRequest o) {
  buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequest <
      3) {
    unittest.expect(o.createNewModel!, unittest.isTrue);
    checkGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource(
        o.gcsSource!);
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequest--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource =
    0;
api.GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource
    buildGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource() {
  final o =
      api.GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource();
  buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource <
      3) {
    o.objectUri = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource(
    api.GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource o) {
  buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource <
      3) {
    unittest.expect(
      o.objectUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequest =
    0;
api.GoogleCloudContactcenterinsightsV1IngestConversationsRequest
    buildGoogleCloudContactcenterinsightsV1IngestConversationsRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1IngestConversationsRequest();
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequest <
      3) {
    o.conversationConfig =
        buildGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig();
    o.gcsSource =
        buildGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource();
    o.parent = 'foo';
    o.redactionConfig =
        buildGoogleCloudContactcenterinsightsV1RedactionConfig();
    o.sampleSize = 42;
    o.speechConfig = buildGoogleCloudContactcenterinsightsV1SpeechConfig();
    o.transcriptObjectConfig =
        buildGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig();
  }
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IngestConversationsRequest(
    api.GoogleCloudContactcenterinsightsV1IngestConversationsRequest o) {
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequest <
      3) {
    checkGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig(
        o.conversationConfig!);
    checkGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource(
        o.gcsSource!);
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContactcenterinsightsV1RedactionConfig(o.redactionConfig!);
    unittest.expect(
      o.sampleSize!,
      unittest.equals(42),
    );
    checkGoogleCloudContactcenterinsightsV1SpeechConfig(o.speechConfig!);
    checkGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig(
        o.transcriptObjectConfig!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequest--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig =
    0;
api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig
    buildGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig() {
  final o = api
      .GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig();
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig <
      3) {
    o.agentChannel = 42;
    o.agentId = 'foo';
    o.customerChannel = 42;
  }
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig(
    api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig
        o) {
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig <
      3) {
    unittest.expect(
      o.agentChannel!,
      unittest.equals(42),
    );
    unittest.expect(
      o.agentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerChannel!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig--;
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

core.int
    buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource =
    0;
api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource
    buildGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource() {
  final o = api
      .GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource();
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource <
      3) {
    o.bucketObjectType = 'foo';
    o.bucketUri = 'foo';
    o.customMetadataKeys = buildUnnamed27();
    o.metadataBucketUri = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource(
    api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource
        o) {
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource <
      3) {
    unittest.expect(
      o.bucketObjectType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bucketUri!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.customMetadataKeys!);
    unittest.expect(
      o.metadataBucketUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig =
    0;
api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig
    buildGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig() {
  final o = api
      .GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig();
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig <
      3) {
    o.medium = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig(
    api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig
        o) {
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig <
      3) {
    unittest.expect(
      o.medium!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest =
    0;
api.GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest
    buildGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest() {
  final o =
      api.GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest();
  buildCounterGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest <
      3) {
    o.encryptionSpec = buildGoogleCloudContactcenterinsightsV1EncryptionSpec();
  }
  buildCounterGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest(
    api.GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest o) {
  buildCounterGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest <
      3) {
    checkGoogleCloudContactcenterinsightsV1EncryptionSpec(o.encryptionSpec!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1Intent = 0;
api.GoogleCloudContactcenterinsightsV1Intent
    buildGoogleCloudContactcenterinsightsV1Intent() {
  final o = api.GoogleCloudContactcenterinsightsV1Intent();
  buildCounterGoogleCloudContactcenterinsightsV1Intent++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Intent < 3) {
    o.displayName = 'foo';
    o.id = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1Intent--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Intent(
    api.GoogleCloudContactcenterinsightsV1Intent o) {
  buildCounterGoogleCloudContactcenterinsightsV1Intent++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Intent < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1Intent--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1IntentMatchData = 0;
api.GoogleCloudContactcenterinsightsV1IntentMatchData
    buildGoogleCloudContactcenterinsightsV1IntentMatchData() {
  final o = api.GoogleCloudContactcenterinsightsV1IntentMatchData();
  buildCounterGoogleCloudContactcenterinsightsV1IntentMatchData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IntentMatchData < 3) {
    o.intentUniqueId = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1IntentMatchData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IntentMatchData(
    api.GoogleCloudContactcenterinsightsV1IntentMatchData o) {
  buildCounterGoogleCloudContactcenterinsightsV1IntentMatchData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IntentMatchData < 3) {
    unittest.expect(
      o.intentUniqueId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1IntentMatchData--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1InterruptionData = 0;
api.GoogleCloudContactcenterinsightsV1InterruptionData
    buildGoogleCloudContactcenterinsightsV1InterruptionData() {
  final o = api.GoogleCloudContactcenterinsightsV1InterruptionData();
  buildCounterGoogleCloudContactcenterinsightsV1InterruptionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1InterruptionData < 3) {}
  buildCounterGoogleCloudContactcenterinsightsV1InterruptionData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1InterruptionData(
    api.GoogleCloudContactcenterinsightsV1InterruptionData o) {
  buildCounterGoogleCloudContactcenterinsightsV1InterruptionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1InterruptionData < 3) {}
  buildCounterGoogleCloudContactcenterinsightsV1InterruptionData--;
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

core.int buildCounterGoogleCloudContactcenterinsightsV1Issue = 0;
api.GoogleCloudContactcenterinsightsV1Issue
    buildGoogleCloudContactcenterinsightsV1Issue() {
  final o = api.GoogleCloudContactcenterinsightsV1Issue();
  buildCounterGoogleCloudContactcenterinsightsV1Issue++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Issue < 3) {
    o.createTime = 'foo';
    o.displayDescription = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.sampleUtterances = buildUnnamed28();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1Issue--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Issue(
    api.GoogleCloudContactcenterinsightsV1Issue o) {
  buildCounterGoogleCloudContactcenterinsightsV1Issue++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Issue < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.sampleUtterances!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1Issue--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1IssueAssignment = 0;
api.GoogleCloudContactcenterinsightsV1IssueAssignment
    buildGoogleCloudContactcenterinsightsV1IssueAssignment() {
  final o = api.GoogleCloudContactcenterinsightsV1IssueAssignment();
  buildCounterGoogleCloudContactcenterinsightsV1IssueAssignment++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueAssignment < 3) {
    o.displayName = 'foo';
    o.issue = 'foo';
    o.score = 42.0;
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueAssignment--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IssueAssignment(
    api.GoogleCloudContactcenterinsightsV1IssueAssignment o) {
  buildCounterGoogleCloudContactcenterinsightsV1IssueAssignment++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueAssignment < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.issue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueAssignment--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1IssueMatchData = 0;
api.GoogleCloudContactcenterinsightsV1IssueMatchData
    buildGoogleCloudContactcenterinsightsV1IssueMatchData() {
  final o = api.GoogleCloudContactcenterinsightsV1IssueMatchData();
  buildCounterGoogleCloudContactcenterinsightsV1IssueMatchData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueMatchData < 3) {
    o.issueAssignment =
        buildGoogleCloudContactcenterinsightsV1IssueAssignment();
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueMatchData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IssueMatchData(
    api.GoogleCloudContactcenterinsightsV1IssueMatchData o) {
  buildCounterGoogleCloudContactcenterinsightsV1IssueMatchData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueMatchData < 3) {
    checkGoogleCloudContactcenterinsightsV1IssueAssignment(o.issueAssignment!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueMatchData--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1IssueModel = 0;
api.GoogleCloudContactcenterinsightsV1IssueModel
    buildGoogleCloudContactcenterinsightsV1IssueModel() {
  final o = api.GoogleCloudContactcenterinsightsV1IssueModel();
  buildCounterGoogleCloudContactcenterinsightsV1IssueModel++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModel < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.inputDataConfig =
        buildGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig();
    o.issueCount = 'foo';
    o.languageCode = 'foo';
    o.modelType = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.trainingStats =
        buildGoogleCloudContactcenterinsightsV1IssueModelLabelStats();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModel--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IssueModel(
    api.GoogleCloudContactcenterinsightsV1IssueModel o) {
  buildCounterGoogleCloudContactcenterinsightsV1IssueModel++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModel < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig(
        o.inputDataConfig!);
    unittest.expect(
      o.issueCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modelType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContactcenterinsightsV1IssueModelLabelStats(
        o.trainingStats!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModel--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig = 0;
api.GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig
    buildGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig() {
  final o = api.GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig();
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig <
      3) {
    o.filter = 'foo';
    o.medium = 'foo';
    o.trainingConversationsCount = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig(
    api.GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig o) {
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig <
      3) {
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.medium!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trainingConversationsCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig--;
}

core.Map<core.String,
        api.GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats>
    buildUnnamed29() => {
          'x':
              buildGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(),
          'y':
              buildGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(),
        };

void checkUnnamed29(
    core.Map<
            core.String,
            api
            .GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(
      o['x']!);
  checkGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(
      o['y']!);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStats = 0;
api.GoogleCloudContactcenterinsightsV1IssueModelLabelStats
    buildGoogleCloudContactcenterinsightsV1IssueModelLabelStats() {
  final o = api.GoogleCloudContactcenterinsightsV1IssueModelLabelStats();
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStats++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStats < 3) {
    o.analyzedConversationsCount = 'foo';
    o.issueStats = buildUnnamed29();
    o.unclassifiedConversationsCount = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStats--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IssueModelLabelStats(
    api.GoogleCloudContactcenterinsightsV1IssueModelLabelStats o) {
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStats++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStats < 3) {
    unittest.expect(
      o.analyzedConversationsCount!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.issueStats!);
    unittest.expect(
      o.unclassifiedConversationsCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStats--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats =
    0;
api.GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats
    buildGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats() {
  final o =
      api.GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats();
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats <
      3) {
    o.displayName = 'foo';
    o.issue = 'foo';
    o.labeledConversationsCount = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(
    api.GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats o) {
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats <
      3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.issue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.labeledConversationsCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats--;
}

core.List<api.GoogleCloudContactcenterinsightsV1IssueAssignment>
    buildUnnamed30() => [
          buildGoogleCloudContactcenterinsightsV1IssueAssignment(),
          buildGoogleCloudContactcenterinsightsV1IssueAssignment(),
        ];

void checkUnnamed30(
    core.List<api.GoogleCloudContactcenterinsightsV1IssueAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1IssueAssignment(o[0]);
  checkGoogleCloudContactcenterinsightsV1IssueAssignment(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1IssueModelResult = 0;
api.GoogleCloudContactcenterinsightsV1IssueModelResult
    buildGoogleCloudContactcenterinsightsV1IssueModelResult() {
  final o = api.GoogleCloudContactcenterinsightsV1IssueModelResult();
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelResult++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModelResult < 3) {
    o.issueModel = 'foo';
    o.issues = buildUnnamed30();
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelResult--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1IssueModelResult(
    api.GoogleCloudContactcenterinsightsV1IssueModelResult o) {
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelResult++;
  if (buildCounterGoogleCloudContactcenterinsightsV1IssueModelResult < 3) {
    unittest.expect(
      o.issueModel!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.issues!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelResult--;
}

core.List<api.GoogleCloudContactcenterinsightsV1FeedbackLabel>
    buildUnnamed31() => [
          buildGoogleCloudContactcenterinsightsV1FeedbackLabel(),
          buildGoogleCloudContactcenterinsightsV1FeedbackLabel(),
        ];

void checkUnnamed31(
    core.List<api.GoogleCloudContactcenterinsightsV1FeedbackLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1FeedbackLabel(o[0]);
  checkGoogleCloudContactcenterinsightsV1FeedbackLabel(o[1]);
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse =
    0;
api.GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse
    buildGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse() {
  final o =
      api.GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse <
      3) {
    o.feedbackLabels = buildUnnamed31();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse(
    api.GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse o) {
  buildCounterGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse <
      3) {
    checkUnnamed31(o.feedbackLabels!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1Analysis> buildUnnamed32() => [
      buildGoogleCloudContactcenterinsightsV1Analysis(),
      buildGoogleCloudContactcenterinsightsV1Analysis(),
    ];

void checkUnnamed32(
    core.List<api.GoogleCloudContactcenterinsightsV1Analysis> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Analysis(o[0]);
  checkGoogleCloudContactcenterinsightsV1Analysis(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ListAnalysesResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListAnalysesResponse
    buildGoogleCloudContactcenterinsightsV1ListAnalysesResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListAnalysesResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListAnalysesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAnalysesResponse < 3) {
    o.analyses = buildUnnamed32();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAnalysesResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListAnalysesResponse(
    api.GoogleCloudContactcenterinsightsV1ListAnalysesResponse o) {
  buildCounterGoogleCloudContactcenterinsightsV1ListAnalysesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAnalysesResponse < 3) {
    checkUnnamed32(o.analyses!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAnalysesResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1AnalysisRule>
    buildUnnamed33() => [
          buildGoogleCloudContactcenterinsightsV1AnalysisRule(),
          buildGoogleCloudContactcenterinsightsV1AnalysisRule(),
        ];

void checkUnnamed33(
    core.List<api.GoogleCloudContactcenterinsightsV1AnalysisRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1AnalysisRule(o[0]);
  checkGoogleCloudContactcenterinsightsV1AnalysisRule(o[1]);
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse
    buildGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse <
      3) {
    o.analysisRules = buildUnnamed33();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse(
    api.GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse o) {
  buildCounterGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse <
      3) {
    checkUnnamed33(o.analysisRules!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1Conversation>
    buildUnnamed34() => [
          buildGoogleCloudContactcenterinsightsV1Conversation(),
          buildGoogleCloudContactcenterinsightsV1Conversation(),
        ];

void checkUnnamed34(
    core.List<api.GoogleCloudContactcenterinsightsV1Conversation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Conversation(o[0]);
  checkGoogleCloudContactcenterinsightsV1Conversation(o[1]);
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1ListConversationsResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListConversationsResponse
    buildGoogleCloudContactcenterinsightsV1ListConversationsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListConversationsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListConversationsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListConversationsResponse <
      3) {
    o.conversations = buildUnnamed34();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListConversationsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListConversationsResponse(
    api.GoogleCloudContactcenterinsightsV1ListConversationsResponse o) {
  buildCounterGoogleCloudContactcenterinsightsV1ListConversationsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListConversationsResponse <
      3) {
    checkUnnamed34(o.conversations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListConversationsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1FeedbackLabel>
    buildUnnamed35() => [
          buildGoogleCloudContactcenterinsightsV1FeedbackLabel(),
          buildGoogleCloudContactcenterinsightsV1FeedbackLabel(),
        ];

void checkUnnamed35(
    core.List<api.GoogleCloudContactcenterinsightsV1FeedbackLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1FeedbackLabel(o[0]);
  checkGoogleCloudContactcenterinsightsV1FeedbackLabel(o[1]);
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse =
    0;
api.GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse
    buildGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse <
      3) {
    o.feedbackLabels = buildUnnamed35();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse(
    api.GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse o) {
  buildCounterGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse <
      3) {
    checkUnnamed35(o.feedbackLabels!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1IssueModel> buildUnnamed36() =>
    [
      buildGoogleCloudContactcenterinsightsV1IssueModel(),
      buildGoogleCloudContactcenterinsightsV1IssueModel(),
    ];

void checkUnnamed36(
    core.List<api.GoogleCloudContactcenterinsightsV1IssueModel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1IssueModel(o[0]);
  checkGoogleCloudContactcenterinsightsV1IssueModel(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ListIssueModelsResponse =
    0;
api.GoogleCloudContactcenterinsightsV1ListIssueModelsResponse
    buildGoogleCloudContactcenterinsightsV1ListIssueModelsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListIssueModelsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListIssueModelsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListIssueModelsResponse <
      3) {
    o.issueModels = buildUnnamed36();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListIssueModelsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListIssueModelsResponse(
    api.GoogleCloudContactcenterinsightsV1ListIssueModelsResponse o) {
  buildCounterGoogleCloudContactcenterinsightsV1ListIssueModelsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListIssueModelsResponse <
      3) {
    checkUnnamed36(o.issueModels!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListIssueModelsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1Issue> buildUnnamed37() => [
      buildGoogleCloudContactcenterinsightsV1Issue(),
      buildGoogleCloudContactcenterinsightsV1Issue(),
    ];

void checkUnnamed37(core.List<api.GoogleCloudContactcenterinsightsV1Issue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Issue(o[0]);
  checkGoogleCloudContactcenterinsightsV1Issue(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ListIssuesResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListIssuesResponse
    buildGoogleCloudContactcenterinsightsV1ListIssuesResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListIssuesResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListIssuesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListIssuesResponse < 3) {
    o.issues = buildUnnamed37();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListIssuesResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListIssuesResponse(
    api.GoogleCloudContactcenterinsightsV1ListIssuesResponse o) {
  buildCounterGoogleCloudContactcenterinsightsV1ListIssuesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListIssuesResponse < 3) {
    checkUnnamed37(o.issues!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListIssuesResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1PhraseMatcher>
    buildUnnamed38() => [
          buildGoogleCloudContactcenterinsightsV1PhraseMatcher(),
          buildGoogleCloudContactcenterinsightsV1PhraseMatcher(),
        ];

void checkUnnamed38(
    core.List<api.GoogleCloudContactcenterinsightsV1PhraseMatcher> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1PhraseMatcher(o[0]);
  checkGoogleCloudContactcenterinsightsV1PhraseMatcher(o[1]);
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse =
    0;
api.GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse
    buildGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse <
      3) {
    o.nextPageToken = 'foo';
    o.phraseMatchers = buildUnnamed38();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse(
    api.GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse o) {
  buildCounterGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.phraseMatchers!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1QaQuestion> buildUnnamed39() =>
    [
      buildGoogleCloudContactcenterinsightsV1QaQuestion(),
      buildGoogleCloudContactcenterinsightsV1QaQuestion(),
    ];

void checkUnnamed39(
    core.List<api.GoogleCloudContactcenterinsightsV1QaQuestion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaQuestion(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaQuestion(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse =
    0;
api.GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse
    buildGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.qaQuestions = buildUnnamed39();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse(
    api.GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse o) {
  buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.qaQuestions!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1QaScorecardRevision>
    buildUnnamed40() => [
          buildGoogleCloudContactcenterinsightsV1QaScorecardRevision(),
          buildGoogleCloudContactcenterinsightsV1QaScorecardRevision(),
        ];

void checkUnnamed40(
    core.List<api.GoogleCloudContactcenterinsightsV1QaScorecardRevision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaScorecardRevision(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaScorecardRevision(o[1]);
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse =
    0;
api.GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse
    buildGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse() {
  final o =
      api.GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.qaScorecardRevisions = buildUnnamed40();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse(
    api.GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse o) {
  buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed40(o.qaScorecardRevisions!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1QaScorecard> buildUnnamed41() =>
    [
      buildGoogleCloudContactcenterinsightsV1QaScorecard(),
      buildGoogleCloudContactcenterinsightsV1QaScorecard(),
    ];

void checkUnnamed41(
    core.List<api.GoogleCloudContactcenterinsightsV1QaScorecard> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaScorecard(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaScorecard(o[1]);
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse
    buildGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.qaScorecards = buildUnnamed41();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse(
    api.GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse o) {
  buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.qaScorecards!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1View> buildUnnamed42() => [
      buildGoogleCloudContactcenterinsightsV1View(),
      buildGoogleCloudContactcenterinsightsV1View(),
    ];

void checkUnnamed42(core.List<api.GoogleCloudContactcenterinsightsV1View> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1View(o[0]);
  checkGoogleCloudContactcenterinsightsV1View(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1ListViewsResponse = 0;
api.GoogleCloudContactcenterinsightsV1ListViewsResponse
    buildGoogleCloudContactcenterinsightsV1ListViewsResponse() {
  final o = api.GoogleCloudContactcenterinsightsV1ListViewsResponse();
  buildCounterGoogleCloudContactcenterinsightsV1ListViewsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListViewsResponse < 3) {
    o.nextPageToken = 'foo';
    o.views = buildUnnamed42();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListViewsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListViewsResponse(
    api.GoogleCloudContactcenterinsightsV1ListViewsResponse o) {
  buildCounterGoogleCloudContactcenterinsightsV1ListViewsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListViewsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed42(o.views!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListViewsResponse--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchData = 0;
api.GoogleCloudContactcenterinsightsV1PhraseMatchData
    buildGoogleCloudContactcenterinsightsV1PhraseMatchData() {
  final o = api.GoogleCloudContactcenterinsightsV1PhraseMatchData();
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchData < 3) {
    o.displayName = 'foo';
    o.phraseMatcher = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1PhraseMatchData(
    api.GoogleCloudContactcenterinsightsV1PhraseMatchData o) {
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchData < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phraseMatcher!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchData--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRule = 0;
api.GoogleCloudContactcenterinsightsV1PhraseMatchRule
    buildGoogleCloudContactcenterinsightsV1PhraseMatchRule() {
  final o = api.GoogleCloudContactcenterinsightsV1PhraseMatchRule();
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRule++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRule < 3) {
    o.config = buildGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig();
    o.negated = true;
    o.query = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRule--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1PhraseMatchRule(
    api.GoogleCloudContactcenterinsightsV1PhraseMatchRule o) {
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRule++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRule < 3) {
    checkGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig(o.config!);
    unittest.expect(o.negated!, unittest.isTrue);
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRule--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig =
    0;
api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig
    buildGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig() {
  final o = api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig();
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig < 3) {
    o.exactMatchConfig =
        buildGoogleCloudContactcenterinsightsV1ExactMatchConfig();
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig(
    api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig o) {
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig < 3) {
    checkGoogleCloudContactcenterinsightsV1ExactMatchConfig(
        o.exactMatchConfig!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig--;
}

core.List<api.GoogleCloudContactcenterinsightsV1PhraseMatchRule>
    buildUnnamed43() => [
          buildGoogleCloudContactcenterinsightsV1PhraseMatchRule(),
          buildGoogleCloudContactcenterinsightsV1PhraseMatchRule(),
        ];

void checkUnnamed43(
    core.List<api.GoogleCloudContactcenterinsightsV1PhraseMatchRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1PhraseMatchRule(o[0]);
  checkGoogleCloudContactcenterinsightsV1PhraseMatchRule(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup = 0;
api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup
    buildGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup() {
  final o = api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup();
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup < 3) {
    o.phraseMatchRules = buildUnnamed43();
    o.type = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup(
    api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup o) {
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup < 3) {
    checkUnnamed43(o.phraseMatchRules!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup--;
}

core.List<api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup>
    buildUnnamed44() => [
          buildGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup(),
          buildGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup(),
        ];

void checkUnnamed44(
    core.List<api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup(o[0]);
  checkGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1PhraseMatcher = 0;
api.GoogleCloudContactcenterinsightsV1PhraseMatcher
    buildGoogleCloudContactcenterinsightsV1PhraseMatcher() {
  final o = api.GoogleCloudContactcenterinsightsV1PhraseMatcher();
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatcher++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatcher < 3) {
    o.activationUpdateTime = 'foo';
    o.active = true;
    o.displayName = 'foo';
    o.name = 'foo';
    o.phraseMatchRuleGroups = buildUnnamed44();
    o.revisionCreateTime = 'foo';
    o.revisionId = 'foo';
    o.roleMatch = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
    o.versionTag = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatcher--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1PhraseMatcher(
    api.GoogleCloudContactcenterinsightsV1PhraseMatcher o) {
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatcher++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatcher < 3) {
    unittest.expect(
      o.activationUpdateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed44(o.phraseMatchRuleGroups!);
    unittest.expect(
      o.revisionCreateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.roleMatch!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionTag!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatcher--;
}

core.List<api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource>
    buildUnnamed45() => [
          buildGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource(),
          buildGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource(),
        ];

void checkUnnamed45(
    core.List<api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource(o[1]);
}

core.List<core.String> buildUnnamed46() => [
      'foo',
      'foo',
    ];

void checkUnnamed46(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudContactcenterinsightsV1QaAnswer = 0;
api.GoogleCloudContactcenterinsightsV1QaAnswer
    buildGoogleCloudContactcenterinsightsV1QaAnswer() {
  final o = api.GoogleCloudContactcenterinsightsV1QaAnswer();
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswer++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaAnswer < 3) {
    o.answerSources = buildUnnamed45();
    o.answerValue =
        buildGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue();
    o.conversation = 'foo';
    o.qaQuestion = 'foo';
    o.questionBody = 'foo';
    o.tags = buildUnnamed46();
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswer--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaAnswer(
    api.GoogleCloudContactcenterinsightsV1QaAnswer o) {
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswer++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaAnswer < 3) {
    checkUnnamed45(o.answerSources!);
    checkGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue(o.answerValue!);
    unittest.expect(
      o.conversation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.qaQuestion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.questionBody!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.tags!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswer--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource = 0;
api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource
    buildGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource() {
  final o = api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource();
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource < 3) {
    o.answerValue =
        buildGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue();
    o.sourceType = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource(
    api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource o) {
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource < 3) {
    checkGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue(o.answerValue!);
    unittest.expect(
      o.sourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue = 0;
api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue
    buildGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue() {
  final o = api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue();
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue < 3) {
    o.boolValue = true;
    o.key = 'foo';
    o.naValue = true;
    o.normalizedScore = 42.0;
    o.numValue = 42.0;
    o.potentialScore = 42.0;
    o.score = 42.0;
    o.strValue = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue(
    api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue o) {
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(o.naValue!, unittest.isTrue);
    unittest.expect(
      o.normalizedScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.numValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.potentialScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.strValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue--;
}

core.List<api.GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice>
    buildUnnamed47() => [
          buildGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice(),
          buildGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice(),
        ];

void checkUnnamed47(
    core.List<api.GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice(o[1]);
}

core.List<core.String> buildUnnamed48() => [
      'foo',
      'foo',
    ];

void checkUnnamed48(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudContactcenterinsightsV1QaQuestion = 0;
api.GoogleCloudContactcenterinsightsV1QaQuestion
    buildGoogleCloudContactcenterinsightsV1QaQuestion() {
  final o = api.GoogleCloudContactcenterinsightsV1QaQuestion();
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestion++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestion < 3) {
    o.abbreviation = 'foo';
    o.answerChoices = buildUnnamed47();
    o.answerInstructions = 'foo';
    o.createTime = 'foo';
    o.metrics = buildGoogleCloudContactcenterinsightsV1QaQuestionMetrics();
    o.name = 'foo';
    o.order = 42;
    o.questionBody = 'foo';
    o.tags = buildUnnamed48();
    o.tuningMetadata =
        buildGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestion--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaQuestion(
    api.GoogleCloudContactcenterinsightsV1QaQuestion o) {
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestion++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestion < 3) {
    unittest.expect(
      o.abbreviation!,
      unittest.equals('foo'),
    );
    checkUnnamed47(o.answerChoices!);
    unittest.expect(
      o.answerInstructions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContactcenterinsightsV1QaQuestionMetrics(o.metrics!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.order!,
      unittest.equals(42),
    );
    unittest.expect(
      o.questionBody!,
      unittest.equals('foo'),
    );
    checkUnnamed48(o.tags!);
    checkGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata(
        o.tuningMetadata!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestion--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice =
    0;
api.GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice
    buildGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice() {
  final o = api.GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice();
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice <
      3) {
    o.boolValue = true;
    o.key = 'foo';
    o.naValue = true;
    o.numValue = 42.0;
    o.score = 42.0;
    o.strValue = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice(
    api.GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice o) {
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice <
      3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(o.naValue!, unittest.isTrue);
    unittest.expect(
      o.numValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.strValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QaQuestionMetrics = 0;
api.GoogleCloudContactcenterinsightsV1QaQuestionMetrics
    buildGoogleCloudContactcenterinsightsV1QaQuestionMetrics() {
  final o = api.GoogleCloudContactcenterinsightsV1QaQuestionMetrics();
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionMetrics++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestionMetrics < 3) {
    o.accuracy = 42.0;
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionMetrics--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaQuestionMetrics(
    api.GoogleCloudContactcenterinsightsV1QaQuestionMetrics o) {
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionMetrics++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestionMetrics < 3) {
    unittest.expect(
      o.accuracy!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionMetrics--;
}

core.List<core.String> buildUnnamed49() => [
      'foo',
      'foo',
    ];

void checkUnnamed49(core.List<core.String> o) {
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
    buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata = 0;
api.GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata
    buildGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata() {
  final o = api.GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata();
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata <
      3) {
    o.datasetValidationWarnings = buildUnnamed49();
    o.totalValidLabelCount = 'foo';
    o.tuningError = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata(
    api.GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata o) {
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata <
      3) {
    checkUnnamed49(o.datasetValidationWarnings!);
    unittest.expect(
      o.totalValidLabelCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tuningError!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QaScorecard = 0;
api.GoogleCloudContactcenterinsightsV1QaScorecard
    buildGoogleCloudContactcenterinsightsV1QaScorecard() {
  final o = api.GoogleCloudContactcenterinsightsV1QaScorecard();
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecard++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecard < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecard--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaScorecard(
    api.GoogleCloudContactcenterinsightsV1QaScorecard o) {
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecard++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecard < 3) {
    unittest.expect(
      o.createTime!,
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecard--;
}

core.List<api.GoogleCloudContactcenterinsightsV1QaAnswer> buildUnnamed50() => [
      buildGoogleCloudContactcenterinsightsV1QaAnswer(),
      buildGoogleCloudContactcenterinsightsV1QaAnswer(),
    ];

void checkUnnamed50(
    core.List<api.GoogleCloudContactcenterinsightsV1QaAnswer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaAnswer(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaAnswer(o[1]);
}

core.List<api.GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult>
    buildUnnamed51() => [
          buildGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(),
          buildGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(),
        ];

void checkUnnamed51(
    core.List<
            api.GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(o[1]);
}

core.List<api.GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource>
    buildUnnamed52() => [
          buildGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource(),
          buildGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource(),
        ];

void checkUnnamed52(
    core.List<
            api.GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResult = 0;
api.GoogleCloudContactcenterinsightsV1QaScorecardResult
    buildGoogleCloudContactcenterinsightsV1QaScorecardResult() {
  final o = api.GoogleCloudContactcenterinsightsV1QaScorecardResult();
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResult++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResult < 3) {
    o.agentId = 'foo';
    o.conversation = 'foo';
    o.createTime = 'foo';
    o.name = 'foo';
    o.normalizedScore = 42.0;
    o.potentialScore = 42.0;
    o.qaAnswers = buildUnnamed50();
    o.qaScorecardRevision = 'foo';
    o.qaTagResults = buildUnnamed51();
    o.score = 42.0;
    o.scoreSources = buildUnnamed52();
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResult--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaScorecardResult(
    api.GoogleCloudContactcenterinsightsV1QaScorecardResult o) {
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResult++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResult < 3) {
    unittest.expect(
      o.agentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.conversation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.normalizedScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.potentialScore!,
      unittest.equals(42.0),
    );
    checkUnnamed50(o.qaAnswers!);
    unittest.expect(
      o.qaScorecardRevision!,
      unittest.equals('foo'),
    );
    checkUnnamed51(o.qaTagResults!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    checkUnnamed52(o.scoreSources!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResult--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult =
    0;
api.GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult
    buildGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult() {
  final o =
      api.GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult();
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult <
      3) {
    o.normalizedScore = 42.0;
    o.potentialScore = 42.0;
    o.score = 42.0;
    o.tag = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(
    api.GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult o) {
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult <
      3) {
    unittest.expect(
      o.normalizedScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.potentialScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult--;
}

core.List<api.GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult>
    buildUnnamed53() => [
          buildGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(),
          buildGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(),
        ];

void checkUnnamed53(
    core.List<
            api.GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(o[0]);
  checkGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(o[1]);
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource =
    0;
api.GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource
    buildGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource() {
  final o =
      api.GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource();
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource <
      3) {
    o.normalizedScore = 42.0;
    o.potentialScore = 42.0;
    o.qaTagResults = buildUnnamed53();
    o.score = 42.0;
    o.sourceType = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource(
    api.GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource o) {
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource <
      3) {
    unittest.expect(
      o.normalizedScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.potentialScore!,
      unittest.equals(42.0),
    );
    checkUnnamed53(o.qaTagResults!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.sourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource--;
}

core.List<core.String> buildUnnamed54() => [
      'foo',
      'foo',
    ];

void checkUnnamed54(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudContactcenterinsightsV1QaScorecardRevision = 0;
api.GoogleCloudContactcenterinsightsV1QaScorecardRevision
    buildGoogleCloudContactcenterinsightsV1QaScorecardRevision() {
  final o = api.GoogleCloudContactcenterinsightsV1QaScorecardRevision();
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardRevision++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecardRevision < 3) {
    o.alternateIds = buildUnnamed54();
    o.createTime = 'foo';
    o.name = 'foo';
    o.snapshot = buildGoogleCloudContactcenterinsightsV1QaScorecard();
    o.state = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardRevision--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QaScorecardRevision(
    api.GoogleCloudContactcenterinsightsV1QaScorecardRevision o) {
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardRevision++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QaScorecardRevision < 3) {
    checkUnnamed54(o.alternateIds!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContactcenterinsightsV1QaScorecard(o.snapshot!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1QaScorecardRevision--;
}

core.List<api.GoogleCloudContactcenterinsightsV1Dimension> buildUnnamed55() => [
      buildGoogleCloudContactcenterinsightsV1Dimension(),
      buildGoogleCloudContactcenterinsightsV1Dimension(),
    ];

void checkUnnamed55(
    core.List<api.GoogleCloudContactcenterinsightsV1Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1Dimension(o[0]);
  checkGoogleCloudContactcenterinsightsV1Dimension(o[1]);
}

core.int buildCounterGoogleCloudContactcenterinsightsV1QueryMetricsRequest = 0;
api.GoogleCloudContactcenterinsightsV1QueryMetricsRequest
    buildGoogleCloudContactcenterinsightsV1QueryMetricsRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1QueryMetricsRequest();
  buildCounterGoogleCloudContactcenterinsightsV1QueryMetricsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QueryMetricsRequest < 3) {
    o.dimensions = buildUnnamed55();
    o.filter = 'foo';
    o.measureMask = 'foo';
    o.timeGranularity = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1QueryMetricsRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1QueryMetricsRequest(
    api.GoogleCloudContactcenterinsightsV1QueryMetricsRequest o) {
  buildCounterGoogleCloudContactcenterinsightsV1QueryMetricsRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1QueryMetricsRequest < 3) {
    checkUnnamed55(o.dimensions!);
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.measureMask!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeGranularity!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1QueryMetricsRequest--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1RedactionConfig = 0;
api.GoogleCloudContactcenterinsightsV1RedactionConfig
    buildGoogleCloudContactcenterinsightsV1RedactionConfig() {
  final o = api.GoogleCloudContactcenterinsightsV1RedactionConfig();
  buildCounterGoogleCloudContactcenterinsightsV1RedactionConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1RedactionConfig < 3) {
    o.deidentifyTemplate = 'foo';
    o.inspectTemplate = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1RedactionConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1RedactionConfig(
    api.GoogleCloudContactcenterinsightsV1RedactionConfig o) {
  buildCounterGoogleCloudContactcenterinsightsV1RedactionConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1RedactionConfig < 3) {
    unittest.expect(
      o.deidentifyTemplate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inspectTemplate!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1RedactionConfig--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotation = 0;
api.GoogleCloudContactcenterinsightsV1RuntimeAnnotation
    buildGoogleCloudContactcenterinsightsV1RuntimeAnnotation() {
  final o = api.GoogleCloudContactcenterinsightsV1RuntimeAnnotation();
  buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotation++;
  if (buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotation < 3) {
    o.annotationId = 'foo';
    o.answerFeedback = buildGoogleCloudContactcenterinsightsV1AnswerFeedback();
    o.articleSuggestion =
        buildGoogleCloudContactcenterinsightsV1ArticleSuggestionData();
    o.conversationSummarizationSuggestion =
        buildGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData();
    o.createTime = 'foo';
    o.dialogflowInteraction =
        buildGoogleCloudContactcenterinsightsV1DialogflowInteractionData();
    o.endBoundary = buildGoogleCloudContactcenterinsightsV1AnnotationBoundary();
    o.faqAnswer = buildGoogleCloudContactcenterinsightsV1FaqAnswerData();
    o.smartComposeSuggestion =
        buildGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData();
    o.smartReply = buildGoogleCloudContactcenterinsightsV1SmartReplyData();
    o.startBoundary =
        buildGoogleCloudContactcenterinsightsV1AnnotationBoundary();
    o.userInput =
        buildGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput();
  }
  buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotation--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1RuntimeAnnotation(
    api.GoogleCloudContactcenterinsightsV1RuntimeAnnotation o) {
  buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotation++;
  if (buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotation < 3) {
    unittest.expect(
      o.annotationId!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContactcenterinsightsV1AnswerFeedback(o.answerFeedback!);
    checkGoogleCloudContactcenterinsightsV1ArticleSuggestionData(
        o.articleSuggestion!);
    checkGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData(
        o.conversationSummarizationSuggestion!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContactcenterinsightsV1DialogflowInteractionData(
        o.dialogflowInteraction!);
    checkGoogleCloudContactcenterinsightsV1AnnotationBoundary(o.endBoundary!);
    checkGoogleCloudContactcenterinsightsV1FaqAnswerData(o.faqAnswer!);
    checkGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData(
        o.smartComposeSuggestion!);
    checkGoogleCloudContactcenterinsightsV1SmartReplyData(o.smartReply!);
    checkGoogleCloudContactcenterinsightsV1AnnotationBoundary(o.startBoundary!);
    checkGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput(
        o.userInput!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotation--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput =
    0;
api.GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput
    buildGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput() {
  final o = api.GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput();
  buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput++;
  if (buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput <
      3) {
    o.generatorName = 'foo';
    o.query = 'foo';
    o.querySource = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput(
    api.GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput o) {
  buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput++;
  if (buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput <
      3) {
    unittest.expect(
      o.generatorName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.querySource!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1SentimentData = 0;
api.GoogleCloudContactcenterinsightsV1SentimentData
    buildGoogleCloudContactcenterinsightsV1SentimentData() {
  final o = api.GoogleCloudContactcenterinsightsV1SentimentData();
  buildCounterGoogleCloudContactcenterinsightsV1SentimentData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SentimentData < 3) {
    o.magnitude = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudContactcenterinsightsV1SentimentData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1SentimentData(
    api.GoogleCloudContactcenterinsightsV1SentimentData o) {
  buildCounterGoogleCloudContactcenterinsightsV1SentimentData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SentimentData < 3) {
    unittest.expect(
      o.magnitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1SentimentData--;
}

core.Map<core.String, core.String> buildUnnamed56() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed56(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudContactcenterinsightsV1Settings = 0;
api.GoogleCloudContactcenterinsightsV1Settings
    buildGoogleCloudContactcenterinsightsV1Settings() {
  final o = api.GoogleCloudContactcenterinsightsV1Settings();
  buildCounterGoogleCloudContactcenterinsightsV1Settings++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Settings < 3) {
    o.analysisConfig =
        buildGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig();
    o.conversationTtl = 'foo';
    o.createTime = 'foo';
    o.languageCode = 'foo';
    o.name = 'foo';
    o.pubsubNotificationSettings = buildUnnamed56();
    o.redactionConfig =
        buildGoogleCloudContactcenterinsightsV1RedactionConfig();
    o.speechConfig = buildGoogleCloudContactcenterinsightsV1SpeechConfig();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1Settings--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1Settings(
    api.GoogleCloudContactcenterinsightsV1Settings o) {
  buildCounterGoogleCloudContactcenterinsightsV1Settings++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Settings < 3) {
    checkGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig(
        o.analysisConfig!);
    unittest.expect(
      o.conversationTtl!,
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed56(o.pubsubNotificationSettings!);
    checkGoogleCloudContactcenterinsightsV1RedactionConfig(o.redactionConfig!);
    checkGoogleCloudContactcenterinsightsV1SpeechConfig(o.speechConfig!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1Settings--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig =
    0;
api.GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig
    buildGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig() {
  final o = api.GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig();
  buildCounterGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig <
      3) {
    o.annotatorSelector =
        buildGoogleCloudContactcenterinsightsV1AnnotatorSelector();
    o.runtimeIntegrationAnalysisPercentage = 42.0;
    o.uploadConversationAnalysisPercentage = 42.0;
  }
  buildCounterGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig(
    api.GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig o) {
  buildCounterGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig <
      3) {
    checkGoogleCloudContactcenterinsightsV1AnnotatorSelector(
        o.annotatorSelector!);
    unittest.expect(
      o.runtimeIntegrationAnalysisPercentage!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.uploadConversationAnalysisPercentage!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1SilenceData = 0;
api.GoogleCloudContactcenterinsightsV1SilenceData
    buildGoogleCloudContactcenterinsightsV1SilenceData() {
  final o = api.GoogleCloudContactcenterinsightsV1SilenceData();
  buildCounterGoogleCloudContactcenterinsightsV1SilenceData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SilenceData < 3) {}
  buildCounterGoogleCloudContactcenterinsightsV1SilenceData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1SilenceData(
    api.GoogleCloudContactcenterinsightsV1SilenceData o) {
  buildCounterGoogleCloudContactcenterinsightsV1SilenceData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SilenceData < 3) {}
  buildCounterGoogleCloudContactcenterinsightsV1SilenceData--;
}

core.Map<core.String, core.String> buildUnnamed57() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed57(core.Map<core.String, core.String> o) {
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

core.int
    buildCounterGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData =
    0;
api.GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData
    buildGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData() {
  final o = api.GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData();
  buildCounterGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData <
      3) {
    o.confidenceScore = 42.0;
    o.metadata = buildUnnamed57();
    o.queryRecord = 'foo';
    o.suggestion = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData(
    api.GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData o) {
  buildCounterGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData <
      3) {
    unittest.expect(
      o.confidenceScore!,
      unittest.equals(42.0),
    );
    checkUnnamed57(o.metadata!);
    unittest.expect(
      o.queryRecord!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.suggestion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData--;
}

core.Map<core.String, core.String> buildUnnamed58() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed58(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudContactcenterinsightsV1SmartReplyData = 0;
api.GoogleCloudContactcenterinsightsV1SmartReplyData
    buildGoogleCloudContactcenterinsightsV1SmartReplyData() {
  final o = api.GoogleCloudContactcenterinsightsV1SmartReplyData();
  buildCounterGoogleCloudContactcenterinsightsV1SmartReplyData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SmartReplyData < 3) {
    o.confidenceScore = 42.0;
    o.metadata = buildUnnamed58();
    o.queryRecord = 'foo';
    o.reply = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1SmartReplyData--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1SmartReplyData(
    api.GoogleCloudContactcenterinsightsV1SmartReplyData o) {
  buildCounterGoogleCloudContactcenterinsightsV1SmartReplyData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SmartReplyData < 3) {
    unittest.expect(
      o.confidenceScore!,
      unittest.equals(42.0),
    );
    checkUnnamed58(o.metadata!);
    unittest.expect(
      o.queryRecord!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reply!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1SmartReplyData--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1SpeechConfig = 0;
api.GoogleCloudContactcenterinsightsV1SpeechConfig
    buildGoogleCloudContactcenterinsightsV1SpeechConfig() {
  final o = api.GoogleCloudContactcenterinsightsV1SpeechConfig();
  buildCounterGoogleCloudContactcenterinsightsV1SpeechConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SpeechConfig < 3) {
    o.speechRecognizer = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1SpeechConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1SpeechConfig(
    api.GoogleCloudContactcenterinsightsV1SpeechConfig o) {
  buildCounterGoogleCloudContactcenterinsightsV1SpeechConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SpeechConfig < 3) {
    unittest.expect(
      o.speechRecognizer!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1SpeechConfig--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest =
    0;
api.GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest
    buildGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest() {
  final o =
      api.GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest();
  buildCounterGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest <
      3) {
    o.filter = 'foo';
    o.validateOnly = true;
  }
  buildCounterGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest(
    api.GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest o) {
  buildCounterGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest <
      3) {
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest = 0;
api.GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest
    buildGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest();
  buildCounterGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest <
      3) {
    o.name = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest(
    api.GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest o) {
  buildCounterGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest <
      3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest =
    0;
api.GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest
    buildGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest() {
  final o = api
      .GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest();
  buildCounterGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest <
      3) {}
  buildCounterGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest(
    api.GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest
        o) {
  buildCounterGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest <
      3) {}
  buildCounterGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest--;
}

core.int
    buildCounterGoogleCloudContactcenterinsightsV1UploadConversationRequest = 0;
api.GoogleCloudContactcenterinsightsV1UploadConversationRequest
    buildGoogleCloudContactcenterinsightsV1UploadConversationRequest() {
  final o = api.GoogleCloudContactcenterinsightsV1UploadConversationRequest();
  buildCounterGoogleCloudContactcenterinsightsV1UploadConversationRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1UploadConversationRequest <
      3) {
    o.conversation = buildGoogleCloudContactcenterinsightsV1Conversation();
    o.conversationId = 'foo';
    o.parent = 'foo';
    o.redactionConfig =
        buildGoogleCloudContactcenterinsightsV1RedactionConfig();
    o.speechConfig = buildGoogleCloudContactcenterinsightsV1SpeechConfig();
  }
  buildCounterGoogleCloudContactcenterinsightsV1UploadConversationRequest--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1UploadConversationRequest(
    api.GoogleCloudContactcenterinsightsV1UploadConversationRequest o) {
  buildCounterGoogleCloudContactcenterinsightsV1UploadConversationRequest++;
  if (buildCounterGoogleCloudContactcenterinsightsV1UploadConversationRequest <
      3) {
    checkGoogleCloudContactcenterinsightsV1Conversation(o.conversation!);
    unittest.expect(
      o.conversationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContactcenterinsightsV1RedactionConfig(o.redactionConfig!);
    checkGoogleCloudContactcenterinsightsV1SpeechConfig(o.speechConfig!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1UploadConversationRequest--;
}

core.int buildCounterGoogleCloudContactcenterinsightsV1View = 0;
api.GoogleCloudContactcenterinsightsV1View
    buildGoogleCloudContactcenterinsightsV1View() {
  final o = api.GoogleCloudContactcenterinsightsV1View();
  buildCounterGoogleCloudContactcenterinsightsV1View++;
  if (buildCounterGoogleCloudContactcenterinsightsV1View < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1View--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1View(
    api.GoogleCloudContactcenterinsightsV1View o) {
  buildCounterGoogleCloudContactcenterinsightsV1View++;
  if (buildCounterGoogleCloudContactcenterinsightsV1View < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1View--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed59() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed59(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed59();
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
    checkUnnamed59(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed60() => {
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

void checkUnnamed60(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
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
  var casted2 = (o['y']!) as core.Map;
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
}

core.Map<core.String, core.Object?> buildUnnamed61() => {
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

void checkUnnamed61(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
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
  var casted4 = (o['y']!) as core.Map;
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
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed60();
    o.name = 'foo';
    o.response = buildUnnamed61();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed60(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed61(o.response!);
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

core.Map<core.String, core.Object?> buildUnnamed62() => {
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

void checkUnnamed62(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
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
  var casted6 = (o['y']!) as core.Map;
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
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed63() => [
      buildUnnamed62(),
      buildUnnamed62(),
    ];

void checkUnnamed63(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed62(o[0]);
  checkUnnamed62(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed63();
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
    checkUnnamed63(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Analysis', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Analysis();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Analysis.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1Analysis(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1AnalysisResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1AnalysisResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1AnalysisResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1AnalysisResult(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1AnalysisRule',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1AnalysisRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1AnalysisRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1AnalysisRule(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1AnnotationBoundary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1AnnotationBoundary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1AnnotationBoundary.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1AnnotationBoundary(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1AnnotatorSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1AnnotatorSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1AnnotatorSelector.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1AnnotatorSelector(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1AnswerFeedback',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1AnswerFeedback();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1AnswerFeedback.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1AnswerFeedback(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ArticleSuggestionData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1ArticleSuggestionData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ArticleSuggestionData.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ArticleSuggestionData(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1CalculateStatsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1CalculateStatsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1CalculateStatsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1CalculateStatsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1CallAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1CallAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1CallAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1CallAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Conversation',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Conversation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Conversation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1Conversation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ConversationCallMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ConversationCallMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1ConversationCallMetadata
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ConversationCallMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ConversationDataSource',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1ConversationDataSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ConversationDataSource.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ConversationDataSource(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ConversationLevelSentiment',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ConversationLevelSentiment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ConversationLevelSentiment
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ConversationLevelSentiment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ConversationLevelSilence',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ConversationLevelSilence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1ConversationLevelSilence
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ConversationLevelSilence(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ConversationParticipant',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ConversationParticipant();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1ConversationParticipant
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ConversationParticipant(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ConversationQualityMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ConversationQualityMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ConversationQualityMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ConversationQualityMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ConversationTranscript',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1ConversationTranscript();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ConversationTranscript.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ConversationTranscript(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1DeployIssueModelRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1DeployIssueModelRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1DeployIssueModelRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1DeployIssueModelRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1DialogflowIntent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1DialogflowIntent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1DialogflowIntent.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1DialogflowIntent(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1DialogflowInteractionData',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1DialogflowInteractionData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1DialogflowInteractionData
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1DialogflowInteractionData(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1DialogflowSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1DialogflowSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1DialogflowSource.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1DialogflowSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Dimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Dimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Dimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1Dimension(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1EncryptionSpec',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1EncryptionSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1EncryptionSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1EncryptionSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Entity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Entity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Entity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1Entity(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1EntityMentionData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1EntityMentionData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1EntityMentionData.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1EntityMentionData(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ExactMatchConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1ExactMatchConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ExactMatchConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ExactMatchConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ExportIssueModelRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ExportIssueModelRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1ExportIssueModelRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ExportIssueModelRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1FaqAnswerData',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1FaqAnswerData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1FaqAnswerData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1FaqAnswerData(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1FeedbackLabel',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1FeedbackLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1FeedbackLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1FeedbackLabel(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1GcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1GcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1GcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1GcsSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1HoldData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1HoldData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1HoldData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1HoldData(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ImportIssueModelRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ImportIssueModelRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1ImportIssueModelRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ImportIssueModelRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1IngestConversationsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1IngestConversationsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1IngestConversationsRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1IngestConversationsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Intent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Intent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Intent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1Intent(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1IntentMatchData',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1IntentMatchData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1IntentMatchData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1IntentMatchData(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1InterruptionData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1InterruptionData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1InterruptionData.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1InterruptionData(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Issue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Issue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Issue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1Issue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1IssueAssignment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1IssueAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1IssueAssignment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1IssueAssignment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1IssueMatchData',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1IssueMatchData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1IssueMatchData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1IssueMatchData(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1IssueModel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1IssueModel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1IssueModel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1IssueModel(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1IssueModelInputDataConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1IssueModelLabelStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1IssueModelLabelStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1IssueModelLabelStats.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1IssueModelLabelStats(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1IssueModelResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1IssueModelResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1IssueModelResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1IssueModelResult(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ListAnalysesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1ListAnalysesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ListAnalysesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ListAnalysesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ListConversationsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ListConversationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1ListConversationsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ListConversationsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ListIssueModelsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ListIssueModelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1ListIssueModelsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ListIssueModelsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ListIssuesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1ListIssuesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ListIssuesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ListIssuesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1ListViewsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1ListViewsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1ListViewsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1ListViewsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1PhraseMatchData',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1PhraseMatchData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1PhraseMatchData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1PhraseMatchData(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1PhraseMatchRule',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1PhraseMatchRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1PhraseMatchRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1PhraseMatchRule(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1PhraseMatcher',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1PhraseMatcher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1PhraseMatcher.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1PhraseMatcher(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1QaAnswer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1QaAnswer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1QaAnswer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1QaAnswer(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1QaAnswerAnswerSource(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1QaAnswerAnswerValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1QaQuestion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1QaQuestion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1QaQuestion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1QaQuestion(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1QaQuestionMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1QaQuestionMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1QaQuestionMetrics.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1QaQuestionMetrics(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1QaScorecard',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1QaScorecard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1QaScorecard.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1QaScorecard(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1QaScorecardResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1QaScorecardResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1QaScorecardResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1QaScorecardResult(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1QaScorecardRevision', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1QaScorecardRevision();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1QaScorecardRevision.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1QaScorecardRevision(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1QueryMetricsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1QueryMetricsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1QueryMetricsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1QueryMetricsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1RedactionConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1RedactionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1RedactionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1RedactionConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1RuntimeAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1RuntimeAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1RuntimeAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1RuntimeAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1SentimentData',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1SentimentData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1SentimentData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1SentimentData(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1Settings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1Settings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1Settings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1Settings(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1SilenceData',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1SilenceData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1SilenceData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1SilenceData(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1SmartComposeSuggestionData(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1SmartReplyData',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1SmartReplyData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1SmartReplyData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1SmartReplyData(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1SpeechConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1SpeechConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1SpeechConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1SpeechConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudContactcenterinsightsV1UploadConversationRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudContactcenterinsightsV1UploadConversationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1UploadConversationRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1UploadConversationRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudContactcenterinsightsV1View', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudContactcenterinsightsV1View();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudContactcenterinsightsV1View.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudContactcenterinsightsV1View(od);
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

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--bulkDownloadFeedbackLabels', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest(
            obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.bulkDownloadFeedbackLabels(
          arg_request, arg_parent,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--bulkUploadFeedbackLabels', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest(
            obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.bulkUploadFeedbackLabels(
          arg_request, arg_parent,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--getEncryptionSpec', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1EncryptionSpec());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getEncryptionSpec(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1EncryptionSpec(
          response as api.GoogleCloudContactcenterinsightsV1EncryptionSpec);
    });

    unittest.test('method--getSettings', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1Settings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getSettings(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1Settings(
          response as api.GoogleCloudContactcenterinsightsV1Settings);
    });

    unittest.test('method--listAllFeedbackLabels', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listAllFeedbackLabels(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse(
          response as api
              .GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse);
    });

    unittest.test('method--queryMetrics', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1QueryMetricsRequest();
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1QueryMetricsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1QueryMetricsRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.queryMetrics(arg_request, arg_location,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--updateSettings', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Settings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContactcenterinsightsV1Settings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1Settings(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1Settings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateSettings(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1Settings(
          response as api.GoogleCloudContactcenterinsightsV1Settings);
    });
  });

  unittest.group('resource-ProjectsLocationsAnalysisRulesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.analysisRules;
      final arg_request = buildGoogleCloudContactcenterinsightsV1AnalysisRule();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContactcenterinsightsV1AnalysisRule.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1AnalysisRule(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1AnalysisRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1AnalysisRule(
          response as api.GoogleCloudContactcenterinsightsV1AnalysisRule);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.analysisRules;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          api.ContactcenterinsightsApi(mock).projects.locations.analysisRules;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1AnalysisRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1AnalysisRule(
          response as api.GoogleCloudContactcenterinsightsV1AnalysisRule);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.analysisRules;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
            buildGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse(response
          as api.GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.analysisRules;
      final arg_request = buildGoogleCloudContactcenterinsightsV1AnalysisRule();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContactcenterinsightsV1AnalysisRule.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1AnalysisRule(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1AnalysisRule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1AnalysisRule(
          response as api.GoogleCloudContactcenterinsightsV1AnalysisRule);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsAuthorizedViewSetsAuthorizedViewsResource',
      () {
    unittest.test('method--queryMetrics', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .authorizedViewSets
          .authorizedViews;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1QueryMetricsRequest();
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1QueryMetricsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1QueryMetricsRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.queryMetrics(arg_request, arg_location,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsAuthorizedViewSetsAuthorizedViewsConversationsResource',
      () {
    unittest.test('method--calculateStats', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .authorizedViewSets
          .authorizedViews
          .conversations;
      final arg_location = 'foo';
      final arg_filter = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1CalculateStatsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.calculateStats(arg_location,
          filter: arg_filter, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1CalculateStatsResponse(response
          as api.GoogleCloudContactcenterinsightsV1CalculateStatsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsConversationsResource', () {
    unittest.test('method--bulkAnalyze', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.conversations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest(
            obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.bulkAnalyze(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--bulkDelete', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.conversations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest(
            obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.bulkDelete(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--calculateStats', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.conversations;
      final arg_location = 'foo';
      final arg_filter = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1CalculateStatsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.calculateStats(arg_location,
          filter: arg_filter, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1CalculateStatsResponse(response
          as api.GoogleCloudContactcenterinsightsV1CalculateStatsResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.conversations;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Conversation();
      final arg_parent = 'foo';
      final arg_conversationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContactcenterinsightsV1Conversation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1Conversation(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1Conversation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          conversationId: arg_conversationId, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1Conversation(
          response as api.GoogleCloudContactcenterinsightsV1Conversation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.conversations;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.conversations;
      final arg_name = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1Conversation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1Conversation(
          response as api.GoogleCloudContactcenterinsightsV1Conversation);
    });

    unittest.test('method--ingest', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.conversations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1IngestConversationsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1IngestConversationsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1IngestConversationsRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.ingest(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.conversations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListConversationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1ListConversationsResponse(response
          as api.GoogleCloudContactcenterinsightsV1ListConversationsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.conversations;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Conversation();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContactcenterinsightsV1Conversation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1Conversation(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1Conversation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1Conversation(
          response as api.GoogleCloudContactcenterinsightsV1Conversation);
    });

    unittest.test('method--upload', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.conversations;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1UploadConversationRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1UploadConversationRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1UploadConversationRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.upload(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsLocationsConversationsAnalysesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .conversations
          .analyses;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Analysis();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContactcenterinsightsV1Analysis.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1Analysis(obj);

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
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .conversations
          .analyses;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .conversations
          .analyses;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1Analysis());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1Analysis(
          response as api.GoogleCloudContactcenterinsightsV1Analysis);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .conversations
          .analyses;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListAnalysesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1ListAnalysesResponse(response
          as api.GoogleCloudContactcenterinsightsV1ListAnalysesResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsConversationsFeedbackLabelsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .conversations
          .feedbackLabels;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1FeedbackLabel();
      final arg_parent = 'foo';
      final arg_feedbackLabelId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1FeedbackLabel.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1FeedbackLabel(obj);

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
          queryMap['feedbackLabelId']!.first,
          unittest.equals(arg_feedbackLabelId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1FeedbackLabel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          feedbackLabelId: arg_feedbackLabelId, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1FeedbackLabel(
          response as api.GoogleCloudContactcenterinsightsV1FeedbackLabel);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .conversations
          .feedbackLabels;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .conversations
          .feedbackLabels;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1FeedbackLabel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1FeedbackLabel(
          response as api.GoogleCloudContactcenterinsightsV1FeedbackLabel);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .conversations
          .feedbackLabels;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse(response
          as api.GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .conversations
          .feedbackLabels;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1FeedbackLabel();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1FeedbackLabel.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1FeedbackLabel(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1FeedbackLabel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1FeedbackLabel(
          response as api.GoogleCloudContactcenterinsightsV1FeedbackLabel);
    });
  });

  unittest.group('resource-ProjectsLocationsEncryptionSpecResource', () {
    unittest.test('method--initialize', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.encryptionSpec;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest(
            obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.initialize(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsLocationsInsightsdataResource', () {
    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.insightsdata;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1ExportInsightsDataRequest(obj);

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
  });

  unittest.group('resource-ProjectsLocationsIssueModelsResource', () {
    unittest.test('method--calculateIssueModelStats', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.issueModels;
      final arg_issueModel = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.calculateIssueModelStats(arg_issueModel,
          $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse(
          response as api
              .GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.issueModels;
      final arg_request = buildGoogleCloudContactcenterinsightsV1IssueModel();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContactcenterinsightsV1IssueModel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1IssueModel(obj);

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
          api.ContactcenterinsightsApi(mock).projects.locations.issueModels;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

    unittest.test('method--deploy', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.issueModels;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1DeployIssueModelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1DeployIssueModelRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1DeployIssueModelRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.deploy(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.issueModels;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1ExportIssueModelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1ExportIssueModelRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1ExportIssueModelRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.export(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.issueModels;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1IssueModel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1IssueModel(
          response as api.GoogleCloudContactcenterinsightsV1IssueModel);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.issueModels;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1ImportIssueModelRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1ImportIssueModelRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1ImportIssueModelRequest(obj);

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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.issueModels;
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListIssueModelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1ListIssueModelsResponse(response
          as api.GoogleCloudContactcenterinsightsV1ListIssueModelsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.issueModels;
      final arg_request = buildGoogleCloudContactcenterinsightsV1IssueModel();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContactcenterinsightsV1IssueModel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1IssueModel(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1IssueModel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1IssueModel(
          response as api.GoogleCloudContactcenterinsightsV1IssueModel);
    });

    unittest.test('method--undeploy', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.issueModels;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1UndeployIssueModelRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undeploy(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsLocationsIssueModelsIssuesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .issueModels
          .issues;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Issue();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContactcenterinsightsV1Issue.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1Issue(obj);

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
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .issueModels
          .issues;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .issueModels
          .issues;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudContactcenterinsightsV1Issue());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1Issue(
          response as api.GoogleCloudContactcenterinsightsV1Issue);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .issueModels
          .issues;
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListIssuesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1ListIssuesResponse(
          response as api.GoogleCloudContactcenterinsightsV1ListIssuesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .issueModels
          .issues;
      final arg_request = buildGoogleCloudContactcenterinsightsV1Issue();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContactcenterinsightsV1Issue.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1Issue(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudContactcenterinsightsV1Issue());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1Issue(
          response as api.GoogleCloudContactcenterinsightsV1Issue);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

  unittest.group('resource-ProjectsLocationsPhraseMatchersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.phraseMatchers;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1PhraseMatcher();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1PhraseMatcher.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1PhraseMatcher(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1PhraseMatcher());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1PhraseMatcher(
          response as api.GoogleCloudContactcenterinsightsV1PhraseMatcher);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.phraseMatchers;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          api.ContactcenterinsightsApi(mock).projects.locations.phraseMatchers;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1PhraseMatcher());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1PhraseMatcher(
          response as api.GoogleCloudContactcenterinsightsV1PhraseMatcher);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.phraseMatchers;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse(response
          as api.GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.phraseMatchers;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1PhraseMatcher();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1PhraseMatcher.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1PhraseMatcher(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1PhraseMatcher());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1PhraseMatcher(
          response as api.GoogleCloudContactcenterinsightsV1PhraseMatcher);
    });
  });

  unittest.group('resource-ProjectsLocationsQaScorecardsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.qaScorecards;
      final arg_request = buildGoogleCloudContactcenterinsightsV1QaScorecard();
      final arg_parent = 'foo';
      final arg_qaScorecardId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContactcenterinsightsV1QaScorecard.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1QaScorecard(obj);

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
          queryMap['qaScorecardId']!.first,
          unittest.equals(arg_qaScorecardId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1QaScorecard());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          qaScorecardId: arg_qaScorecardId, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1QaScorecard(
          response as api.GoogleCloudContactcenterinsightsV1QaScorecard);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.qaScorecards;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.qaScorecards;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1QaScorecard());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1QaScorecard(
          response as api.GoogleCloudContactcenterinsightsV1QaScorecard);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.qaScorecards;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
            buildGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1ListQaScorecardsResponse(response
          as api.GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.qaScorecards;
      final arg_request = buildGoogleCloudContactcenterinsightsV1QaScorecard();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContactcenterinsightsV1QaScorecard.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1QaScorecard(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1QaScorecard());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1QaScorecard(
          response as api.GoogleCloudContactcenterinsightsV1QaScorecard);
    });
  });

  unittest.group('resource-ProjectsLocationsQaScorecardsRevisionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .qaScorecards
          .revisions;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1QaScorecardRevision();
      final arg_parent = 'foo';
      final arg_qaScorecardRevisionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1QaScorecardRevision.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1QaScorecardRevision(obj);

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
          queryMap['qaScorecardRevisionId']!.first,
          unittest.equals(arg_qaScorecardRevisionId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1QaScorecardRevision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          qaScorecardRevisionId: arg_qaScorecardRevisionId,
          $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1QaScorecardRevision(response
          as api.GoogleCloudContactcenterinsightsV1QaScorecardRevision);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .qaScorecards
          .revisions;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

    unittest.test('method--deploy', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .qaScorecards
          .revisions;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest(
            obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1QaScorecardRevision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.deploy(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1QaScorecardRevision(response
          as api.GoogleCloudContactcenterinsightsV1QaScorecardRevision);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .qaScorecards
          .revisions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1QaScorecardRevision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1QaScorecardRevision(response
          as api.GoogleCloudContactcenterinsightsV1QaScorecardRevision);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .qaScorecards
          .revisions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse(
          response as api
              .GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse);
    });

    unittest.test('method--tuneQaScorecardRevision', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .qaScorecards
          .revisions;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest(
            obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.tuneQaScorecardRevision(
          arg_request, arg_parent,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--undeploy', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .qaScorecards
          .revisions;
      final arg_request =
          buildGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest(
            obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudContactcenterinsightsV1QaScorecardRevision());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undeploy(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1QaScorecardRevision(response
          as api.GoogleCloudContactcenterinsightsV1QaScorecardRevision);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsQaScorecardsRevisionsQaQuestionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .qaScorecards
          .revisions
          .qaQuestions;
      final arg_request = buildGoogleCloudContactcenterinsightsV1QaQuestion();
      final arg_parent = 'foo';
      final arg_qaQuestionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContactcenterinsightsV1QaQuestion.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1QaQuestion(obj);

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
          queryMap['qaQuestionId']!.first,
          unittest.equals(arg_qaQuestionId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1QaQuestion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          qaQuestionId: arg_qaQuestionId, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1QaQuestion(
          response as api.GoogleCloudContactcenterinsightsV1QaQuestion);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .qaScorecards
          .revisions
          .qaQuestions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .qaScorecards
          .revisions
          .qaQuestions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1QaQuestion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1QaQuestion(
          response as api.GoogleCloudContactcenterinsightsV1QaQuestion);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .qaScorecards
          .revisions
          .qaQuestions;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
            buildGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1ListQaQuestionsResponse(response
          as api.GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .qaScorecards
          .revisions
          .qaQuestions;
      final arg_request = buildGoogleCloudContactcenterinsightsV1QaQuestion();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContactcenterinsightsV1QaQuestion.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1QaQuestion(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudContactcenterinsightsV1QaQuestion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1QaQuestion(
          response as api.GoogleCloudContactcenterinsightsV1QaQuestion);
    });
  });

  unittest.group('resource-ProjectsLocationsViewsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations.views;
      final arg_request = buildGoogleCloudContactcenterinsightsV1View();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContactcenterinsightsV1View.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1View(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudContactcenterinsightsV1View());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1View(
          response as api.GoogleCloudContactcenterinsightsV1View);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations.views;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
      final res = api.ContactcenterinsightsApi(mock).projects.locations.views;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudContactcenterinsightsV1View());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1View(
          response as api.GoogleCloudContactcenterinsightsV1View);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations.views;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
            .encode(buildGoogleCloudContactcenterinsightsV1ListViewsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1ListViewsResponse(
          response as api.GoogleCloudContactcenterinsightsV1ListViewsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations.views;
      final arg_request = buildGoogleCloudContactcenterinsightsV1View();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudContactcenterinsightsV1View.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudContactcenterinsightsV1View(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudContactcenterinsightsV1View());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1View(
          response as api.GoogleCloudContactcenterinsightsV1View);
    });
  });
}
