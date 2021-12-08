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

import 'package:googleapis/speech/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterClassItem = 0;
api.ClassItem buildClassItem() {
  final o = api.ClassItem();
  buildCounterClassItem++;
  if (buildCounterClassItem < 3) {
    o.value = 'foo';
  }
  buildCounterClassItem--;
  return o;
}

void checkClassItem(api.ClassItem o) {
  buildCounterClassItem++;
  if (buildCounterClassItem < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterClassItem--;
}

core.int buildCounterCreateCustomClassRequest = 0;
api.CreateCustomClassRequest buildCreateCustomClassRequest() {
  final o = api.CreateCustomClassRequest();
  buildCounterCreateCustomClassRequest++;
  if (buildCounterCreateCustomClassRequest < 3) {
    o.customClass = buildCustomClass();
    o.customClassId = 'foo';
  }
  buildCounterCreateCustomClassRequest--;
  return o;
}

void checkCreateCustomClassRequest(api.CreateCustomClassRequest o) {
  buildCounterCreateCustomClassRequest++;
  if (buildCounterCreateCustomClassRequest < 3) {
    checkCustomClass(o.customClass!);
    unittest.expect(
      o.customClassId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateCustomClassRequest--;
}

core.int buildCounterCreatePhraseSetRequest = 0;
api.CreatePhraseSetRequest buildCreatePhraseSetRequest() {
  final o = api.CreatePhraseSetRequest();
  buildCounterCreatePhraseSetRequest++;
  if (buildCounterCreatePhraseSetRequest < 3) {
    o.phraseSet = buildPhraseSet();
    o.phraseSetId = 'foo';
  }
  buildCounterCreatePhraseSetRequest--;
  return o;
}

void checkCreatePhraseSetRequest(api.CreatePhraseSetRequest o) {
  buildCounterCreatePhraseSetRequest++;
  if (buildCounterCreatePhraseSetRequest < 3) {
    checkPhraseSet(o.phraseSet!);
    unittest.expect(
      o.phraseSetId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreatePhraseSetRequest--;
}

core.List<api.ClassItem> buildUnnamed0() => [
      buildClassItem(),
      buildClassItem(),
    ];

void checkUnnamed0(core.List<api.ClassItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClassItem(o[0]);
  checkClassItem(o[1]);
}

core.int buildCounterCustomClass = 0;
api.CustomClass buildCustomClass() {
  final o = api.CustomClass();
  buildCounterCustomClass++;
  if (buildCounterCustomClass < 3) {
    o.customClassId = 'foo';
    o.items = buildUnnamed0();
    o.name = 'foo';
  }
  buildCounterCustomClass--;
  return o;
}

void checkCustomClass(api.CustomClass o) {
  buildCounterCustomClass++;
  if (buildCounterCustomClass < 3) {
    unittest.expect(
      o.customClassId!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.items!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomClass--;
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

core.List<api.CustomClass> buildUnnamed1() => [
      buildCustomClass(),
      buildCustomClass(),
    ];

void checkUnnamed1(core.List<api.CustomClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomClass(o[0]);
  checkCustomClass(o[1]);
}

core.int buildCounterListCustomClassesResponse = 0;
api.ListCustomClassesResponse buildListCustomClassesResponse() {
  final o = api.ListCustomClassesResponse();
  buildCounterListCustomClassesResponse++;
  if (buildCounterListCustomClassesResponse < 3) {
    o.customClasses = buildUnnamed1();
    o.nextPageToken = 'foo';
  }
  buildCounterListCustomClassesResponse--;
  return o;
}

void checkListCustomClassesResponse(api.ListCustomClassesResponse o) {
  buildCounterListCustomClassesResponse++;
  if (buildCounterListCustomClassesResponse < 3) {
    checkUnnamed1(o.customClasses!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCustomClassesResponse--;
}

core.List<api.Operation> buildUnnamed2() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed2(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed2();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.PhraseSet> buildUnnamed3() => [
      buildPhraseSet(),
      buildPhraseSet(),
    ];

void checkUnnamed3(core.List<api.PhraseSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhraseSet(o[0]);
  checkPhraseSet(o[1]);
}

core.int buildCounterListPhraseSetResponse = 0;
api.ListPhraseSetResponse buildListPhraseSetResponse() {
  final o = api.ListPhraseSetResponse();
  buildCounterListPhraseSetResponse++;
  if (buildCounterListPhraseSetResponse < 3) {
    o.nextPageToken = 'foo';
    o.phraseSets = buildUnnamed3();
  }
  buildCounterListPhraseSetResponse--;
  return o;
}

void checkListPhraseSetResponse(api.ListPhraseSetResponse o) {
  buildCounterListPhraseSetResponse++;
  if (buildCounterListPhraseSetResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.phraseSets!);
  }
  buildCounterListPhraseSetResponse--;
}

core.int buildCounterLongRunningRecognizeRequest = 0;
api.LongRunningRecognizeRequest buildLongRunningRecognizeRequest() {
  final o = api.LongRunningRecognizeRequest();
  buildCounterLongRunningRecognizeRequest++;
  if (buildCounterLongRunningRecognizeRequest < 3) {
    o.audio = buildRecognitionAudio();
    o.config = buildRecognitionConfig();
    o.outputConfig = buildTranscriptOutputConfig();
  }
  buildCounterLongRunningRecognizeRequest--;
  return o;
}

void checkLongRunningRecognizeRequest(api.LongRunningRecognizeRequest o) {
  buildCounterLongRunningRecognizeRequest++;
  if (buildCounterLongRunningRecognizeRequest < 3) {
    checkRecognitionAudio(o.audio!);
    checkRecognitionConfig(o.config!);
    checkTranscriptOutputConfig(o.outputConfig!);
  }
  buildCounterLongRunningRecognizeRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed4() => {
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

void checkUnnamed4(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed5() => {
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

void checkUnnamed5(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed4();
    o.name = 'foo';
    o.response = buildUnnamed5();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed4(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPhrase = 0;
api.Phrase buildPhrase() {
  final o = api.Phrase();
  buildCounterPhrase++;
  if (buildCounterPhrase < 3) {
    o.boost = 42.0;
    o.value = 'foo';
  }
  buildCounterPhrase--;
  return o;
}

void checkPhrase(api.Phrase o) {
  buildCounterPhrase++;
  if (buildCounterPhrase < 3) {
    unittest.expect(
      o.boost!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterPhrase--;
}

core.List<api.Phrase> buildUnnamed6() => [
      buildPhrase(),
      buildPhrase(),
    ];

void checkUnnamed6(core.List<api.Phrase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhrase(o[0]);
  checkPhrase(o[1]);
}

core.int buildCounterPhraseSet = 0;
api.PhraseSet buildPhraseSet() {
  final o = api.PhraseSet();
  buildCounterPhraseSet++;
  if (buildCounterPhraseSet < 3) {
    o.boost = 42.0;
    o.name = 'foo';
    o.phrases = buildUnnamed6();
  }
  buildCounterPhraseSet--;
  return o;
}

void checkPhraseSet(api.PhraseSet o) {
  buildCounterPhraseSet++;
  if (buildCounterPhraseSet < 3) {
    unittest.expect(
      o.boost!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.phrases!);
  }
  buildCounterPhraseSet--;
}

core.int buildCounterRecognitionAudio = 0;
api.RecognitionAudio buildRecognitionAudio() {
  final o = api.RecognitionAudio();
  buildCounterRecognitionAudio++;
  if (buildCounterRecognitionAudio < 3) {
    o.content = 'foo';
    o.uri = 'foo';
  }
  buildCounterRecognitionAudio--;
  return o;
}

void checkRecognitionAudio(api.RecognitionAudio o) {
  buildCounterRecognitionAudio++;
  if (buildCounterRecognitionAudio < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterRecognitionAudio--;
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

core.List<api.SpeechContext> buildUnnamed8() => [
      buildSpeechContext(),
      buildSpeechContext(),
    ];

void checkUnnamed8(core.List<api.SpeechContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpeechContext(o[0]);
  checkSpeechContext(o[1]);
}

core.int buildCounterRecognitionConfig = 0;
api.RecognitionConfig buildRecognitionConfig() {
  final o = api.RecognitionConfig();
  buildCounterRecognitionConfig++;
  if (buildCounterRecognitionConfig < 3) {
    o.adaptation = buildSpeechAdaptation();
    o.alternativeLanguageCodes = buildUnnamed7();
    o.audioChannelCount = 42;
    o.diarizationConfig = buildSpeakerDiarizationConfig();
    o.enableAutomaticPunctuation = true;
    o.enableSeparateRecognitionPerChannel = true;
    o.enableSpokenEmojis = true;
    o.enableSpokenPunctuation = true;
    o.enableWordConfidence = true;
    o.enableWordTimeOffsets = true;
    o.encoding = 'foo';
    o.languageCode = 'foo';
    o.maxAlternatives = 42;
    o.metadata = buildRecognitionMetadata();
    o.model = 'foo';
    o.profanityFilter = true;
    o.sampleRateHertz = 42;
    o.speechContexts = buildUnnamed8();
    o.useEnhanced = true;
  }
  buildCounterRecognitionConfig--;
  return o;
}

void checkRecognitionConfig(api.RecognitionConfig o) {
  buildCounterRecognitionConfig++;
  if (buildCounterRecognitionConfig < 3) {
    checkSpeechAdaptation(o.adaptation!);
    checkUnnamed7(o.alternativeLanguageCodes!);
    unittest.expect(
      o.audioChannelCount!,
      unittest.equals(42),
    );
    checkSpeakerDiarizationConfig(o.diarizationConfig!);
    unittest.expect(o.enableAutomaticPunctuation!, unittest.isTrue);
    unittest.expect(o.enableSeparateRecognitionPerChannel!, unittest.isTrue);
    unittest.expect(o.enableSpokenEmojis!, unittest.isTrue);
    unittest.expect(o.enableSpokenPunctuation!, unittest.isTrue);
    unittest.expect(o.enableWordConfidence!, unittest.isTrue);
    unittest.expect(o.enableWordTimeOffsets!, unittest.isTrue);
    unittest.expect(
      o.encoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxAlternatives!,
      unittest.equals(42),
    );
    checkRecognitionMetadata(o.metadata!);
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(o.profanityFilter!, unittest.isTrue);
    unittest.expect(
      o.sampleRateHertz!,
      unittest.equals(42),
    );
    checkUnnamed8(o.speechContexts!);
    unittest.expect(o.useEnhanced!, unittest.isTrue);
  }
  buildCounterRecognitionConfig--;
}

core.int buildCounterRecognitionMetadata = 0;
api.RecognitionMetadata buildRecognitionMetadata() {
  final o = api.RecognitionMetadata();
  buildCounterRecognitionMetadata++;
  if (buildCounterRecognitionMetadata < 3) {
    o.audioTopic = 'foo';
    o.industryNaicsCodeOfAudio = 42;
    o.interactionType = 'foo';
    o.microphoneDistance = 'foo';
    o.originalMediaType = 'foo';
    o.originalMimeType = 'foo';
    o.recordingDeviceName = 'foo';
    o.recordingDeviceType = 'foo';
  }
  buildCounterRecognitionMetadata--;
  return o;
}

void checkRecognitionMetadata(api.RecognitionMetadata o) {
  buildCounterRecognitionMetadata++;
  if (buildCounterRecognitionMetadata < 3) {
    unittest.expect(
      o.audioTopic!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.industryNaicsCodeOfAudio!,
      unittest.equals(42),
    );
    unittest.expect(
      o.interactionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.microphoneDistance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalMediaType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalMimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recordingDeviceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recordingDeviceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterRecognitionMetadata--;
}

core.int buildCounterRecognizeRequest = 0;
api.RecognizeRequest buildRecognizeRequest() {
  final o = api.RecognizeRequest();
  buildCounterRecognizeRequest++;
  if (buildCounterRecognizeRequest < 3) {
    o.audio = buildRecognitionAudio();
    o.config = buildRecognitionConfig();
  }
  buildCounterRecognizeRequest--;
  return o;
}

void checkRecognizeRequest(api.RecognizeRequest o) {
  buildCounterRecognizeRequest++;
  if (buildCounterRecognizeRequest < 3) {
    checkRecognitionAudio(o.audio!);
    checkRecognitionConfig(o.config!);
  }
  buildCounterRecognizeRequest--;
}

core.List<api.SpeechRecognitionResult> buildUnnamed9() => [
      buildSpeechRecognitionResult(),
      buildSpeechRecognitionResult(),
    ];

void checkUnnamed9(core.List<api.SpeechRecognitionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpeechRecognitionResult(o[0]);
  checkSpeechRecognitionResult(o[1]);
}

core.int buildCounterRecognizeResponse = 0;
api.RecognizeResponse buildRecognizeResponse() {
  final o = api.RecognizeResponse();
  buildCounterRecognizeResponse++;
  if (buildCounterRecognizeResponse < 3) {
    o.results = buildUnnamed9();
    o.totalBilledTime = 'foo';
  }
  buildCounterRecognizeResponse--;
  return o;
}

void checkRecognizeResponse(api.RecognizeResponse o) {
  buildCounterRecognizeResponse++;
  if (buildCounterRecognizeResponse < 3) {
    checkUnnamed9(o.results!);
    unittest.expect(
      o.totalBilledTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterRecognizeResponse--;
}

core.int buildCounterSpeakerDiarizationConfig = 0;
api.SpeakerDiarizationConfig buildSpeakerDiarizationConfig() {
  final o = api.SpeakerDiarizationConfig();
  buildCounterSpeakerDiarizationConfig++;
  if (buildCounterSpeakerDiarizationConfig < 3) {
    o.enableSpeakerDiarization = true;
    o.maxSpeakerCount = 42;
    o.minSpeakerCount = 42;
    o.speakerTag = 42;
  }
  buildCounterSpeakerDiarizationConfig--;
  return o;
}

void checkSpeakerDiarizationConfig(api.SpeakerDiarizationConfig o) {
  buildCounterSpeakerDiarizationConfig++;
  if (buildCounterSpeakerDiarizationConfig < 3) {
    unittest.expect(o.enableSpeakerDiarization!, unittest.isTrue);
    unittest.expect(
      o.maxSpeakerCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minSpeakerCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.speakerTag!,
      unittest.equals(42),
    );
  }
  buildCounterSpeakerDiarizationConfig--;
}

core.List<api.CustomClass> buildUnnamed10() => [
      buildCustomClass(),
      buildCustomClass(),
    ];

void checkUnnamed10(core.List<api.CustomClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomClass(o[0]);
  checkCustomClass(o[1]);
}

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
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

core.List<api.PhraseSet> buildUnnamed12() => [
      buildPhraseSet(),
      buildPhraseSet(),
    ];

void checkUnnamed12(core.List<api.PhraseSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhraseSet(o[0]);
  checkPhraseSet(o[1]);
}

core.int buildCounterSpeechAdaptation = 0;
api.SpeechAdaptation buildSpeechAdaptation() {
  final o = api.SpeechAdaptation();
  buildCounterSpeechAdaptation++;
  if (buildCounterSpeechAdaptation < 3) {
    o.customClasses = buildUnnamed10();
    o.phraseSetReferences = buildUnnamed11();
    o.phraseSets = buildUnnamed12();
  }
  buildCounterSpeechAdaptation--;
  return o;
}

void checkSpeechAdaptation(api.SpeechAdaptation o) {
  buildCounterSpeechAdaptation++;
  if (buildCounterSpeechAdaptation < 3) {
    checkUnnamed10(o.customClasses!);
    checkUnnamed11(o.phraseSetReferences!);
    checkUnnamed12(o.phraseSets!);
  }
  buildCounterSpeechAdaptation--;
}

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.int buildCounterSpeechContext = 0;
api.SpeechContext buildSpeechContext() {
  final o = api.SpeechContext();
  buildCounterSpeechContext++;
  if (buildCounterSpeechContext < 3) {
    o.boost = 42.0;
    o.phrases = buildUnnamed13();
  }
  buildCounterSpeechContext--;
  return o;
}

void checkSpeechContext(api.SpeechContext o) {
  buildCounterSpeechContext++;
  if (buildCounterSpeechContext < 3) {
    unittest.expect(
      o.boost!,
      unittest.equals(42.0),
    );
    checkUnnamed13(o.phrases!);
  }
  buildCounterSpeechContext--;
}

core.List<api.WordInfo> buildUnnamed14() => [
      buildWordInfo(),
      buildWordInfo(),
    ];

void checkUnnamed14(core.List<api.WordInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWordInfo(o[0]);
  checkWordInfo(o[1]);
}

core.int buildCounterSpeechRecognitionAlternative = 0;
api.SpeechRecognitionAlternative buildSpeechRecognitionAlternative() {
  final o = api.SpeechRecognitionAlternative();
  buildCounterSpeechRecognitionAlternative++;
  if (buildCounterSpeechRecognitionAlternative < 3) {
    o.confidence = 42.0;
    o.transcript = 'foo';
    o.words = buildUnnamed14();
  }
  buildCounterSpeechRecognitionAlternative--;
  return o;
}

void checkSpeechRecognitionAlternative(api.SpeechRecognitionAlternative o) {
  buildCounterSpeechRecognitionAlternative++;
  if (buildCounterSpeechRecognitionAlternative < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.transcript!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.words!);
  }
  buildCounterSpeechRecognitionAlternative--;
}

core.List<api.SpeechRecognitionAlternative> buildUnnamed15() => [
      buildSpeechRecognitionAlternative(),
      buildSpeechRecognitionAlternative(),
    ];

void checkUnnamed15(core.List<api.SpeechRecognitionAlternative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpeechRecognitionAlternative(o[0]);
  checkSpeechRecognitionAlternative(o[1]);
}

core.int buildCounterSpeechRecognitionResult = 0;
api.SpeechRecognitionResult buildSpeechRecognitionResult() {
  final o = api.SpeechRecognitionResult();
  buildCounterSpeechRecognitionResult++;
  if (buildCounterSpeechRecognitionResult < 3) {
    o.alternatives = buildUnnamed15();
    o.channelTag = 42;
    o.languageCode = 'foo';
    o.resultEndTime = 'foo';
  }
  buildCounterSpeechRecognitionResult--;
  return o;
}

void checkSpeechRecognitionResult(api.SpeechRecognitionResult o) {
  buildCounterSpeechRecognitionResult++;
  if (buildCounterSpeechRecognitionResult < 3) {
    checkUnnamed15(o.alternatives!);
    unittest.expect(
      o.channelTag!,
      unittest.equals(42),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resultEndTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSpeechRecognitionResult--;
}

core.Map<core.String, core.Object?> buildUnnamed16() => {
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

void checkUnnamed16(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed17() => [
      buildUnnamed16(),
      buildUnnamed16(),
    ];

void checkUnnamed17(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed16(o[0]);
  checkUnnamed16(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed17();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed17(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterTranscriptOutputConfig = 0;
api.TranscriptOutputConfig buildTranscriptOutputConfig() {
  final o = api.TranscriptOutputConfig();
  buildCounterTranscriptOutputConfig++;
  if (buildCounterTranscriptOutputConfig < 3) {
    o.gcsUri = 'foo';
  }
  buildCounterTranscriptOutputConfig--;
  return o;
}

void checkTranscriptOutputConfig(api.TranscriptOutputConfig o) {
  buildCounterTranscriptOutputConfig++;
  if (buildCounterTranscriptOutputConfig < 3) {
    unittest.expect(
      o.gcsUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterTranscriptOutputConfig--;
}

core.int buildCounterWordInfo = 0;
api.WordInfo buildWordInfo() {
  final o = api.WordInfo();
  buildCounterWordInfo++;
  if (buildCounterWordInfo < 3) {
    o.confidence = 42.0;
    o.endTime = 'foo';
    o.speakerTag = 42;
    o.startTime = 'foo';
    o.word = 'foo';
  }
  buildCounterWordInfo--;
  return o;
}

void checkWordInfo(api.WordInfo o) {
  buildCounterWordInfo++;
  if (buildCounterWordInfo < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.speakerTag!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.word!,
      unittest.equals('foo'),
    );
  }
  buildCounterWordInfo--;
}

void main() {
  unittest.group('obj-schema-ClassItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClassItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ClassItem.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkClassItem(od);
    });
  });

  unittest.group('obj-schema-CreateCustomClassRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateCustomClassRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateCustomClassRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateCustomClassRequest(od);
    });
  });

  unittest.group('obj-schema-CreatePhraseSetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreatePhraseSetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreatePhraseSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreatePhraseSetRequest(od);
    });
  });

  unittest.group('obj-schema-CustomClass', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomClass();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomClass.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomClass(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-ListCustomClassesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCustomClassesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCustomClassesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCustomClassesResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPhraseSetResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPhraseSetResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPhraseSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPhraseSetResponse(od);
    });
  });

  unittest.group('obj-schema-LongRunningRecognizeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLongRunningRecognizeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LongRunningRecognizeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLongRunningRecognizeRequest(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-Phrase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhrase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Phrase.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPhrase(od);
    });
  });

  unittest.group('obj-schema-PhraseSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhraseSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PhraseSet.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPhraseSet(od);
    });
  });

  unittest.group('obj-schema-RecognitionAudio', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecognitionAudio();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecognitionAudio.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRecognitionAudio(od);
    });
  });

  unittest.group('obj-schema-RecognitionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecognitionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecognitionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRecognitionConfig(od);
    });
  });

  unittest.group('obj-schema-RecognitionMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecognitionMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecognitionMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRecognitionMetadata(od);
    });
  });

  unittest.group('obj-schema-RecognizeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecognizeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecognizeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRecognizeRequest(od);
    });
  });

  unittest.group('obj-schema-RecognizeResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecognizeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecognizeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRecognizeResponse(od);
    });
  });

  unittest.group('obj-schema-SpeakerDiarizationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpeakerDiarizationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpeakerDiarizationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpeakerDiarizationConfig(od);
    });
  });

  unittest.group('obj-schema-SpeechAdaptation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpeechAdaptation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpeechAdaptation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpeechAdaptation(od);
    });
  });

  unittest.group('obj-schema-SpeechContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpeechContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpeechContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpeechContext(od);
    });
  });

  unittest.group('obj-schema-SpeechRecognitionAlternative', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpeechRecognitionAlternative();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpeechRecognitionAlternative.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpeechRecognitionAlternative(od);
    });
  });

  unittest.group('obj-schema-SpeechRecognitionResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpeechRecognitionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpeechRecognitionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpeechRecognitionResult(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-TranscriptOutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTranscriptOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TranscriptOutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTranscriptOutputConfig(od);
    });
  });

  unittest.group('obj-schema-WordInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWordInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.WordInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWordInfo(od);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).operations;
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1/operations/'),
        );
        pathOffset += 14;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).operations;
      final arg_filter = 'foo';
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v1/operations'),
        );
        pathOffset += 13;

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
          queryMap['name']!.first,
          unittest.equals(arg_name),
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
        final resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          filter: arg_filter,
          name: arg_name,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsCustomClassesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.customClasses;
      final arg_request = buildCreateCustomClassRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateCustomClassRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateCustomClassRequest(obj);

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
        final resp = convert.json.encode(buildCustomClass());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkCustomClass(response as api.CustomClass);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.customClasses;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.customClasses;
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
        final resp = convert.json.encode(buildCustomClass());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCustomClass(response as api.CustomClass);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.customClasses;
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
        final resp = convert.json.encode(buildListCustomClassesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCustomClassesResponse(response as api.ListCustomClassesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.customClasses;
      final arg_request = buildCustomClass();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomClass.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomClass(obj);

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
        final resp = convert.json.encode(buildCustomClass());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkCustomClass(response as api.CustomClass);
    });
  });

  unittest.group('resource-ProjectsLocationsPhraseSetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.phraseSets;
      final arg_request = buildCreatePhraseSetRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreatePhraseSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreatePhraseSetRequest(obj);

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
        final resp = convert.json.encode(buildPhraseSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkPhraseSet(response as api.PhraseSet);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.phraseSets;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.phraseSets;
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
        final resp = convert.json.encode(buildPhraseSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPhraseSet(response as api.PhraseSet);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.phraseSets;
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
        final resp = convert.json.encode(buildListPhraseSetResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPhraseSetResponse(response as api.ListPhraseSetResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.phraseSets;
      final arg_request = buildPhraseSet();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.PhraseSet.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPhraseSet(obj);

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
        final resp = convert.json.encode(buildPhraseSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkPhraseSet(response as api.PhraseSet);
    });
  });

  unittest.group('resource-SpeechResource', () {
    unittest.test('method--longrunningrecognize', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).speech;
      final arg_request = buildLongRunningRecognizeRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LongRunningRecognizeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLongRunningRecognizeRequest(obj);

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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('v1/speech:longrunningrecognize'),
        );
        pathOffset += 30;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.longrunningrecognize(arg_request, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--recognize', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).speech;
      final arg_request = buildRecognizeRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RecognizeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRecognizeRequest(obj);

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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('v1/speech:recognize'),
        );
        pathOffset += 19;

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
        final resp = convert.json.encode(buildRecognizeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.recognize(arg_request, $fields: arg_$fields);
      checkRecognizeResponse(response as api.RecognizeResponse);
    });
  });
}
