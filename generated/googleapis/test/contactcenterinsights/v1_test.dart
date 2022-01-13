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

core.List<api.GoogleCloudContactcenterinsightsV1ConversationLevelSentiment>
    buildUnnamed4() => [
          buildGoogleCloudContactcenterinsightsV1ConversationLevelSentiment(),
          buildGoogleCloudContactcenterinsightsV1ConversationLevelSentiment(),
        ];

void checkUnnamed4(
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
    o.sentiments = buildUnnamed4();
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
    checkUnnamed4(o.sentiments!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata--;
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

core.int buildCounterGoogleCloudContactcenterinsightsV1ArticleSuggestionData =
    0;
api.GoogleCloudContactcenterinsightsV1ArticleSuggestionData
    buildGoogleCloudContactcenterinsightsV1ArticleSuggestionData() {
  final o = api.GoogleCloudContactcenterinsightsV1ArticleSuggestionData();
  buildCounterGoogleCloudContactcenterinsightsV1ArticleSuggestionData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ArticleSuggestionData < 3) {
    o.confidenceScore = 42.0;
    o.metadata = buildUnnamed5();
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
    checkUnnamed5(o.metadata!);
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

core.Map<core.String, core.int> buildUnnamed6() => {
      'x': 42,
      'y': 42,
    };

void checkUnnamed6(core.Map<core.String, core.int> o) {
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

core.Map<core.String, core.int> buildUnnamed7() => {
      'x': 42,
      'y': 42,
    };

void checkUnnamed7(core.Map<core.String, core.int> o) {
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
    buildUnnamed8() => {
          'x':
              buildGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(),
          'y':
              buildGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(),
        };

void checkUnnamed8(
    core.Map<core.String,
            api.GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(
      o['x']!);
  checkGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(
      o['y']!);
}

core.Map<core.String, core.int> buildUnnamed9() => {
      'x': 42,
      'y': 42,
    };

void checkUnnamed9(core.Map<core.String, core.int> o) {
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
    o.customHighlighterMatches = buildUnnamed6();
    o.issueMatches = buildUnnamed7();
    o.issueMatchesStats = buildUnnamed8();
    o.smartHighlighterMatches = buildUnnamed9();
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
    checkUnnamed6(o.customHighlighterMatches!);
    checkUnnamed7(o.issueMatches!);
    checkUnnamed8(o.issueMatchesStats!);
    checkUnnamed9(o.smartHighlighterMatches!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1CalculateStatsResponse--;
}

core.List<
        api.GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval>
    buildUnnamed10() => [
          buildGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval(),
          buildGoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval(),
        ];

void checkUnnamed10(
    core.List<
            api.GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval>
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
    o.points = buildUnnamed10();
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
    checkUnnamed10(o.points!);
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
    checkGoogleCloudContactcenterinsightsV1PhraseMatchData(o.phraseMatchData!);
    checkGoogleCloudContactcenterinsightsV1SentimentData(o.sentimentData!);
    checkGoogleCloudContactcenterinsightsV1SilenceData(o.silenceData!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1CallAnnotation--;
}

core.Map<core.String, api.GoogleCloudContactcenterinsightsV1DialogflowIntent>
    buildUnnamed11() => {
          'x': buildGoogleCloudContactcenterinsightsV1DialogflowIntent(),
          'y': buildGoogleCloudContactcenterinsightsV1DialogflowIntent(),
        };

void checkUnnamed11(
    core.Map<core.String,
            api.GoogleCloudContactcenterinsightsV1DialogflowIntent>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudContactcenterinsightsV1DialogflowIntent(o['x']!);
  checkGoogleCloudContactcenterinsightsV1DialogflowIntent(o['y']!);
}

core.Map<core.String, core.String> buildUnnamed12() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed12(core.Map<core.String, core.String> o) {
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
    buildUnnamed13() => [
          buildGoogleCloudContactcenterinsightsV1RuntimeAnnotation(),
          buildGoogleCloudContactcenterinsightsV1RuntimeAnnotation(),
        ];

void checkUnnamed13(
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
    o.dialogflowIntents = buildUnnamed11();
    o.duration = 'foo';
    o.expireTime = 'foo';
    o.labels = buildUnnamed12();
    o.languageCode = 'foo';
    o.latestAnalysis = buildGoogleCloudContactcenterinsightsV1Analysis();
    o.medium = 'foo';
    o.name = 'foo';
    o.obfuscatedUserId = 'foo';
    o.runtimeAnnotations = buildUnnamed13();
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
    checkUnnamed11(o.dialogflowIntents!);
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.labels!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkGoogleCloudContactcenterinsightsV1Analysis(o.latestAnalysis!);
    unittest.expect(
      o.medium!,
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
    checkUnnamed13(o.runtimeAnnotations!);
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
        api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment>
    buildUnnamed14() => [
          buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment(),
          buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment(),
        ];

void checkUnnamed14(
    core.List<
            api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment>
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
    o.transcriptSegments = buildUnnamed14();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscript--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ConversationTranscript(
    api.GoogleCloudContactcenterinsightsV1ConversationTranscript o) {
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscript++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscript <
      3) {
    checkUnnamed14(o.transcriptSegments!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ConversationTranscript--;
}

core.List<
        api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo>
    buildUnnamed15() => [
          buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo(),
          buildGoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo(),
        ];

void checkUnnamed15(
    core.List<
            api.GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo>
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
    o.words = buildUnnamed15();
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
    checkUnnamed15(o.words!);
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

core.Map<core.String, core.String> buildUnnamed16() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed16(core.Map<core.String, core.String> o) {
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
    o.metadata = buildUnnamed16();
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
    checkUnnamed16(o.metadata!);
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

core.int buildCounterGoogleCloudContactcenterinsightsV1FaqAnswerData = 0;
api.GoogleCloudContactcenterinsightsV1FaqAnswerData
    buildGoogleCloudContactcenterinsightsV1FaqAnswerData() {
  final o = api.GoogleCloudContactcenterinsightsV1FaqAnswerData();
  buildCounterGoogleCloudContactcenterinsightsV1FaqAnswerData++;
  if (buildCounterGoogleCloudContactcenterinsightsV1FaqAnswerData < 3) {
    o.answer = 'foo';
    o.confidenceScore = 42.0;
    o.metadata = buildUnnamed17();
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
    checkUnnamed17(o.metadata!);
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

core.int buildCounterGoogleCloudContactcenterinsightsV1Issue = 0;
api.GoogleCloudContactcenterinsightsV1Issue
    buildGoogleCloudContactcenterinsightsV1Issue() {
  final o = api.GoogleCloudContactcenterinsightsV1Issue();
  buildCounterGoogleCloudContactcenterinsightsV1Issue++;
  if (buildCounterGoogleCloudContactcenterinsightsV1Issue < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
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
    buildUnnamed18() => {
          'x':
              buildGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(),
          'y':
              buildGoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats(),
        };

void checkUnnamed18(
    core.Map<core.String,
            api.GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats>
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
    o.issueStats = buildUnnamed18();
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
    checkUnnamed18(o.issueStats!);
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
    buildUnnamed19() => [
          buildGoogleCloudContactcenterinsightsV1IssueAssignment(),
          buildGoogleCloudContactcenterinsightsV1IssueAssignment(),
        ];

void checkUnnamed19(
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
    o.issues = buildUnnamed19();
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
    checkUnnamed19(o.issues!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1IssueModelResult--;
}

core.List<api.GoogleCloudContactcenterinsightsV1Analysis> buildUnnamed20() => [
      buildGoogleCloudContactcenterinsightsV1Analysis(),
      buildGoogleCloudContactcenterinsightsV1Analysis(),
    ];

void checkUnnamed20(
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
    o.analyses = buildUnnamed20();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAnalysesResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListAnalysesResponse(
    api.GoogleCloudContactcenterinsightsV1ListAnalysesResponse o) {
  buildCounterGoogleCloudContactcenterinsightsV1ListAnalysesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListAnalysesResponse < 3) {
    checkUnnamed20(o.analyses!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListAnalysesResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1Conversation>
    buildUnnamed21() => [
          buildGoogleCloudContactcenterinsightsV1Conversation(),
          buildGoogleCloudContactcenterinsightsV1Conversation(),
        ];

void checkUnnamed21(
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
    o.conversations = buildUnnamed21();
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
    checkUnnamed21(o.conversations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListConversationsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1IssueModel> buildUnnamed22() =>
    [
      buildGoogleCloudContactcenterinsightsV1IssueModel(),
      buildGoogleCloudContactcenterinsightsV1IssueModel(),
    ];

void checkUnnamed22(
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
    o.issueModels = buildUnnamed22();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListIssueModelsResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListIssueModelsResponse(
    api.GoogleCloudContactcenterinsightsV1ListIssueModelsResponse o) {
  buildCounterGoogleCloudContactcenterinsightsV1ListIssueModelsResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListIssueModelsResponse <
      3) {
    checkUnnamed22(o.issueModels!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListIssueModelsResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1Issue> buildUnnamed23() => [
      buildGoogleCloudContactcenterinsightsV1Issue(),
      buildGoogleCloudContactcenterinsightsV1Issue(),
    ];

void checkUnnamed23(core.List<api.GoogleCloudContactcenterinsightsV1Issue> o) {
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
    o.issues = buildUnnamed23();
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListIssuesResponse--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1ListIssuesResponse(
    api.GoogleCloudContactcenterinsightsV1ListIssuesResponse o) {
  buildCounterGoogleCloudContactcenterinsightsV1ListIssuesResponse++;
  if (buildCounterGoogleCloudContactcenterinsightsV1ListIssuesResponse < 3) {
    checkUnnamed23(o.issues!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListIssuesResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1PhraseMatcher>
    buildUnnamed24() => [
          buildGoogleCloudContactcenterinsightsV1PhraseMatcher(),
          buildGoogleCloudContactcenterinsightsV1PhraseMatcher(),
        ];

void checkUnnamed24(
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
    o.phraseMatchers = buildUnnamed24();
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
    checkUnnamed24(o.phraseMatchers!);
  }
  buildCounterGoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse--;
}

core.List<api.GoogleCloudContactcenterinsightsV1View> buildUnnamed25() => [
      buildGoogleCloudContactcenterinsightsV1View(),
      buildGoogleCloudContactcenterinsightsV1View(),
    ];

void checkUnnamed25(core.List<api.GoogleCloudContactcenterinsightsV1View> o) {
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
    o.views = buildUnnamed25();
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
    checkUnnamed25(o.views!);
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
    buildUnnamed26() => [
          buildGoogleCloudContactcenterinsightsV1PhraseMatchRule(),
          buildGoogleCloudContactcenterinsightsV1PhraseMatchRule(),
        ];

void checkUnnamed26(
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
    o.phraseMatchRules = buildUnnamed26();
    o.type = 'foo';
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup(
    api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup o) {
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup++;
  if (buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup < 3) {
    checkUnnamed26(o.phraseMatchRules!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup--;
}

core.List<api.GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup>
    buildUnnamed27() => [
          buildGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup(),
          buildGoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup(),
        ];

void checkUnnamed27(
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
    o.phraseMatchRuleGroups = buildUnnamed27();
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
    checkUnnamed27(o.phraseMatchRuleGroups!);
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
  }
  buildCounterGoogleCloudContactcenterinsightsV1RuntimeAnnotation--;
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

core.Map<core.String, core.String> buildUnnamed28() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed28(core.Map<core.String, core.String> o) {
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
    o.pubsubNotificationSettings = buildUnnamed28();
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
    checkUnnamed28(o.pubsubNotificationSettings!);
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
    o.runtimeIntegrationAnalysisPercentage = 42.0;
  }
  buildCounterGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig--;
  return o;
}

void checkGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig(
    api.GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig o) {
  buildCounterGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig++;
  if (buildCounterGoogleCloudContactcenterinsightsV1SettingsAnalysisConfig <
      3) {
    unittest.expect(
      o.runtimeIntegrationAnalysisPercentage!,
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

core.Map<core.String, core.String> buildUnnamed29() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed29(core.Map<core.String, core.String> o) {
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
    o.metadata = buildUnnamed29();
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
    checkUnnamed29(o.metadata!);
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

core.Map<core.String, core.String> buildUnnamed30() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed30(core.Map<core.String, core.String> o) {
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
    o.metadata = buildUnnamed30();
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
    checkUnnamed30(o.metadata!);
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

core.List<api.GoogleLongrunningOperation> buildUnnamed31() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed31(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed31();
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
    checkUnnamed31(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed32() => {
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

void checkUnnamed32(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed33() => {
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

void checkUnnamed33(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed32();
    o.name = 'foo';
    o.response = buildUnnamed33();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed32(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed33(o.response!);
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

core.Map<core.String, core.Object?> buildUnnamed34() => {
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

void checkUnnamed34(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed35() => [
      buildUnnamed34(),
      buildUnnamed34(),
    ];

void checkUnnamed35(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed34(o[0]);
  checkUnnamed34(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed35();
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
    checkUnnamed35(o.details!);
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
    unittest.test('method--getSettings', () async {
      final mock = HttpServerMock();
      final res = api.ContactcenterinsightsApi(mock).projects.locations;
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
          unittest.equals('v1/'),
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
            .encode(buildGoogleCloudContactcenterinsightsV1Settings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getSettings(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1Settings(
          response as api.GoogleCloudContactcenterinsightsV1Settings);
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
          unittest.equals('v1/'),
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
            .encode(buildGoogleCloudContactcenterinsightsV1Settings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateSettings(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1Settings(
          response as api.GoogleCloudContactcenterinsightsV1Settings);
    });
  });

  unittest.group('resource-ProjectsLocationsConversationsResource', () {
    unittest.test('method--calculateStats', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.conversations;
      final arg_location = 'foo';
      final arg_filter = 'foo';
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
          unittest.equals('v1/'),
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
          unittest.equals('v1/'),
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
          unittest.equals('v1/'),
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
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.conversations;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
          unittest.equals('v1/'),
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.conversations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          unittest.equals('v1/'),
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
          unittest.equals('v1/'),
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
            .encode(buildGoogleCloudContactcenterinsightsV1Conversation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1Conversation(
          response as api.GoogleCloudContactcenterinsightsV1Conversation);
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
          unittest.equals('v1/'),
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
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .conversations
          .analyses;
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
          unittest.equals('v1/'),
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
      final res = api.ContactcenterinsightsApi(mock)
          .projects
          .locations
          .conversations
          .analyses;
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
          unittest.equals('v1/'),
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
          unittest.equals('v1/'),
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
          unittest.equals('v1/'),
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
  });

  unittest.group('resource-ProjectsLocationsIssueModelsResource', () {
    unittest.test('method--calculateIssueModelStats', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.issueModels;
      final arg_issueModel = 'foo';
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
          unittest.equals('v1/'),
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
          unittest.equals('v1/'),
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
          api.ContactcenterinsightsApi(mock).projects.locations.issueModels;
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
          unittest.equals('v1/'),
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
          unittest.equals('v1/'),
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
          await res.deploy(arg_request, arg_name, $fields: arg_$fields);
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
          unittest.equals('v1/'),
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
            .encode(buildGoogleCloudContactcenterinsightsV1IssueModel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1IssueModel(
          response as api.GoogleCloudContactcenterinsightsV1IssueModel);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.issueModels;
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
          unittest.equals('v1/'),
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
          unittest.equals('v1/'),
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
          unittest.equals('v1/'),
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
          await res.undeploy(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsLocationsIssueModelsIssuesResource', () {
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
          unittest.equals('v1/'),
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
          unittest.equals('v1/'),
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
          unittest.equals('v1/'),
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
          unittest.equals('v1/'),
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
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.operations;
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
          unittest.equals('v1/'),
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
      final res =
          api.ContactcenterinsightsApi(mock).projects.locations.operations;
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
          unittest.equals('v1/'),
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
          unittest.equals('v1/'),
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
          unittest.equals('v1/'),
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
          api.ContactcenterinsightsApi(mock).projects.locations.phraseMatchers;
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
          unittest.equals('v1/'),
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
          unittest.equals('v1/'),
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
          unittest.equals('v1/'),
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
            .encode(buildGoogleCloudContactcenterinsightsV1PhraseMatcher());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudContactcenterinsightsV1PhraseMatcher(
          response as api.GoogleCloudContactcenterinsightsV1PhraseMatcher);
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
          unittest.equals('v1/'),
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
          unittest.equals('v1/'),
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
      final res = api.ContactcenterinsightsApi(mock).projects.locations.views;
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
          unittest.equals('v1/'),
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
          unittest.equals('v1/'),
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
          unittest.equals('v1/'),
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
