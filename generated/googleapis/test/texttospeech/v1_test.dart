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

import 'package:googleapis/texttospeech/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAdvancedVoiceOptions = 0;
api.AdvancedVoiceOptions buildAdvancedVoiceOptions() {
  final o = api.AdvancedVoiceOptions();
  buildCounterAdvancedVoiceOptions++;
  if (buildCounterAdvancedVoiceOptions < 3) {
    o.lowLatencyJourneySynthesis = true;
  }
  buildCounterAdvancedVoiceOptions--;
  return o;
}

void checkAdvancedVoiceOptions(api.AdvancedVoiceOptions o) {
  buildCounterAdvancedVoiceOptions++;
  if (buildCounterAdvancedVoiceOptions < 3) {
    unittest.expect(o.lowLatencyJourneySynthesis!, unittest.isTrue);
  }
  buildCounterAdvancedVoiceOptions--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAudioConfig = 0;
api.AudioConfig buildAudioConfig() {
  final o = api.AudioConfig();
  buildCounterAudioConfig++;
  if (buildCounterAudioConfig < 3) {
    o.audioEncoding = 'foo';
    o.effectsProfileId = buildUnnamed0();
    o.pitch = 42.0;
    o.sampleRateHertz = 42;
    o.speakingRate = 42.0;
    o.volumeGainDb = 42.0;
  }
  buildCounterAudioConfig--;
  return o;
}

void checkAudioConfig(api.AudioConfig o) {
  buildCounterAudioConfig++;
  if (buildCounterAudioConfig < 3) {
    unittest.expect(o.audioEncoding!, unittest.equals('foo'));
    checkUnnamed0(o.effectsProfileId!);
    unittest.expect(o.pitch!, unittest.equals(42.0));
    unittest.expect(o.sampleRateHertz!, unittest.equals(42));
    unittest.expect(o.speakingRate!, unittest.equals(42.0));
    unittest.expect(o.volumeGainDb!, unittest.equals(42.0));
  }
  buildCounterAudioConfig--;
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

core.int buildCounterCustomPronunciationParams = 0;
api.CustomPronunciationParams buildCustomPronunciationParams() {
  final o = api.CustomPronunciationParams();
  buildCounterCustomPronunciationParams++;
  if (buildCounterCustomPronunciationParams < 3) {
    o.phoneticEncoding = 'foo';
    o.phrase = 'foo';
    o.pronunciation = 'foo';
  }
  buildCounterCustomPronunciationParams--;
  return o;
}

void checkCustomPronunciationParams(api.CustomPronunciationParams o) {
  buildCounterCustomPronunciationParams++;
  if (buildCounterCustomPronunciationParams < 3) {
    unittest.expect(o.phoneticEncoding!, unittest.equals('foo'));
    unittest.expect(o.phrase!, unittest.equals('foo'));
    unittest.expect(o.pronunciation!, unittest.equals('foo'));
  }
  buildCounterCustomPronunciationParams--;
}

core.List<api.CustomPronunciationParams> buildUnnamed1() => [
      buildCustomPronunciationParams(),
      buildCustomPronunciationParams(),
    ];

void checkUnnamed1(core.List<api.CustomPronunciationParams> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomPronunciationParams(o[0]);
  checkCustomPronunciationParams(o[1]);
}

core.int buildCounterCustomPronunciations = 0;
api.CustomPronunciations buildCustomPronunciations() {
  final o = api.CustomPronunciations();
  buildCounterCustomPronunciations++;
  if (buildCounterCustomPronunciations < 3) {
    o.pronunciations = buildUnnamed1();
  }
  buildCounterCustomPronunciations--;
  return o;
}

void checkCustomPronunciations(api.CustomPronunciations o) {
  buildCounterCustomPronunciations++;
  if (buildCounterCustomPronunciations < 3) {
    checkUnnamed1(o.pronunciations!);
  }
  buildCounterCustomPronunciations--;
}

core.int buildCounterCustomVoiceParams = 0;
api.CustomVoiceParams buildCustomVoiceParams() {
  final o = api.CustomVoiceParams();
  buildCounterCustomVoiceParams++;
  if (buildCounterCustomVoiceParams < 3) {
    o.model = 'foo';
    o.reportedUsage = 'foo';
  }
  buildCounterCustomVoiceParams--;
  return o;
}

void checkCustomVoiceParams(api.CustomVoiceParams o) {
  buildCounterCustomVoiceParams++;
  if (buildCounterCustomVoiceParams < 3) {
    unittest.expect(o.model!, unittest.equals('foo'));
    unittest.expect(o.reportedUsage!, unittest.equals('foo'));
  }
  buildCounterCustomVoiceParams--;
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
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed2(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Voice> buildUnnamed3() => [buildVoice(), buildVoice()];

void checkUnnamed3(core.List<api.Voice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVoice(o[0]);
  checkVoice(o[1]);
}

core.int buildCounterListVoicesResponse = 0;
api.ListVoicesResponse buildListVoicesResponse() {
  final o = api.ListVoicesResponse();
  buildCounterListVoicesResponse++;
  if (buildCounterListVoicesResponse < 3) {
    o.voices = buildUnnamed3();
  }
  buildCounterListVoicesResponse--;
  return o;
}

void checkListVoicesResponse(api.ListVoicesResponse o) {
  buildCounterListVoicesResponse++;
  if (buildCounterListVoicesResponse < 3) {
    checkUnnamed3(o.voices!);
  }
  buildCounterListVoicesResponse--;
}

core.List<api.Turn> buildUnnamed4() => [buildTurn(), buildTurn()];

void checkUnnamed4(core.List<api.Turn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTurn(o[0]);
  checkTurn(o[1]);
}

core.int buildCounterMultiSpeakerMarkup = 0;
api.MultiSpeakerMarkup buildMultiSpeakerMarkup() {
  final o = api.MultiSpeakerMarkup();
  buildCounterMultiSpeakerMarkup++;
  if (buildCounterMultiSpeakerMarkup < 3) {
    o.turns = buildUnnamed4();
  }
  buildCounterMultiSpeakerMarkup--;
  return o;
}

void checkMultiSpeakerMarkup(api.MultiSpeakerMarkup o) {
  buildCounterMultiSpeakerMarkup++;
  if (buildCounterMultiSpeakerMarkup < 3) {
    checkUnnamed4(o.turns!);
  }
  buildCounterMultiSpeakerMarkup--;
}

core.Map<core.String, core.Object?> buildUnnamed5() => {
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

void checkUnnamed5(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed6() => {
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

void checkUnnamed6(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed5();
    o.name = 'foo';
    o.response = buildUnnamed6();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed5(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed6(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed7() => {
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

void checkUnnamed7(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed8() => [
      buildUnnamed7(),
      buildUnnamed7(),
    ];

void checkUnnamed8(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7(o[0]);
  checkUnnamed7(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed8();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed8(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterSynthesisInput = 0;
api.SynthesisInput buildSynthesisInput() {
  final o = api.SynthesisInput();
  buildCounterSynthesisInput++;
  if (buildCounterSynthesisInput < 3) {
    o.customPronunciations = buildCustomPronunciations();
    o.multiSpeakerMarkup = buildMultiSpeakerMarkup();
    o.ssml = 'foo';
    o.text = 'foo';
  }
  buildCounterSynthesisInput--;
  return o;
}

void checkSynthesisInput(api.SynthesisInput o) {
  buildCounterSynthesisInput++;
  if (buildCounterSynthesisInput < 3) {
    checkCustomPronunciations(o.customPronunciations!);
    checkMultiSpeakerMarkup(o.multiSpeakerMarkup!);
    unittest.expect(o.ssml!, unittest.equals('foo'));
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterSynthesisInput--;
}

core.int buildCounterSynthesizeLongAudioRequest = 0;
api.SynthesizeLongAudioRequest buildSynthesizeLongAudioRequest() {
  final o = api.SynthesizeLongAudioRequest();
  buildCounterSynthesizeLongAudioRequest++;
  if (buildCounterSynthesizeLongAudioRequest < 3) {
    o.audioConfig = buildAudioConfig();
    o.input = buildSynthesisInput();
    o.outputGcsUri = 'foo';
    o.voice = buildVoiceSelectionParams();
  }
  buildCounterSynthesizeLongAudioRequest--;
  return o;
}

void checkSynthesizeLongAudioRequest(api.SynthesizeLongAudioRequest o) {
  buildCounterSynthesizeLongAudioRequest++;
  if (buildCounterSynthesizeLongAudioRequest < 3) {
    checkAudioConfig(o.audioConfig!);
    checkSynthesisInput(o.input!);
    unittest.expect(o.outputGcsUri!, unittest.equals('foo'));
    checkVoiceSelectionParams(o.voice!);
  }
  buildCounterSynthesizeLongAudioRequest--;
}

core.int buildCounterSynthesizeSpeechRequest = 0;
api.SynthesizeSpeechRequest buildSynthesizeSpeechRequest() {
  final o = api.SynthesizeSpeechRequest();
  buildCounterSynthesizeSpeechRequest++;
  if (buildCounterSynthesizeSpeechRequest < 3) {
    o.advancedVoiceOptions = buildAdvancedVoiceOptions();
    o.audioConfig = buildAudioConfig();
    o.input = buildSynthesisInput();
    o.voice = buildVoiceSelectionParams();
  }
  buildCounterSynthesizeSpeechRequest--;
  return o;
}

void checkSynthesizeSpeechRequest(api.SynthesizeSpeechRequest o) {
  buildCounterSynthesizeSpeechRequest++;
  if (buildCounterSynthesizeSpeechRequest < 3) {
    checkAdvancedVoiceOptions(o.advancedVoiceOptions!);
    checkAudioConfig(o.audioConfig!);
    checkSynthesisInput(o.input!);
    checkVoiceSelectionParams(o.voice!);
  }
  buildCounterSynthesizeSpeechRequest--;
}

core.int buildCounterSynthesizeSpeechResponse = 0;
api.SynthesizeSpeechResponse buildSynthesizeSpeechResponse() {
  final o = api.SynthesizeSpeechResponse();
  buildCounterSynthesizeSpeechResponse++;
  if (buildCounterSynthesizeSpeechResponse < 3) {
    o.audioContent = 'foo';
  }
  buildCounterSynthesizeSpeechResponse--;
  return o;
}

void checkSynthesizeSpeechResponse(api.SynthesizeSpeechResponse o) {
  buildCounterSynthesizeSpeechResponse++;
  if (buildCounterSynthesizeSpeechResponse < 3) {
    unittest.expect(o.audioContent!, unittest.equals('foo'));
  }
  buildCounterSynthesizeSpeechResponse--;
}

core.int buildCounterTurn = 0;
api.Turn buildTurn() {
  final o = api.Turn();
  buildCounterTurn++;
  if (buildCounterTurn < 3) {
    o.speaker = 'foo';
    o.text = 'foo';
  }
  buildCounterTurn--;
  return o;
}

void checkTurn(api.Turn o) {
  buildCounterTurn++;
  if (buildCounterTurn < 3) {
    unittest.expect(o.speaker!, unittest.equals('foo'));
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterTurn--;
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVoice = 0;
api.Voice buildVoice() {
  final o = api.Voice();
  buildCounterVoice++;
  if (buildCounterVoice < 3) {
    o.languageCodes = buildUnnamed9();
    o.name = 'foo';
    o.naturalSampleRateHertz = 42;
    o.ssmlGender = 'foo';
  }
  buildCounterVoice--;
  return o;
}

void checkVoice(api.Voice o) {
  buildCounterVoice++;
  if (buildCounterVoice < 3) {
    checkUnnamed9(o.languageCodes!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.naturalSampleRateHertz!, unittest.equals(42));
    unittest.expect(o.ssmlGender!, unittest.equals('foo'));
  }
  buildCounterVoice--;
}

core.int buildCounterVoiceCloneParams = 0;
api.VoiceCloneParams buildVoiceCloneParams() {
  final o = api.VoiceCloneParams();
  buildCounterVoiceCloneParams++;
  if (buildCounterVoiceCloneParams < 3) {
    o.voiceCloningKey = 'foo';
  }
  buildCounterVoiceCloneParams--;
  return o;
}

void checkVoiceCloneParams(api.VoiceCloneParams o) {
  buildCounterVoiceCloneParams++;
  if (buildCounterVoiceCloneParams < 3) {
    unittest.expect(o.voiceCloningKey!, unittest.equals('foo'));
  }
  buildCounterVoiceCloneParams--;
}

core.int buildCounterVoiceSelectionParams = 0;
api.VoiceSelectionParams buildVoiceSelectionParams() {
  final o = api.VoiceSelectionParams();
  buildCounterVoiceSelectionParams++;
  if (buildCounterVoiceSelectionParams < 3) {
    o.customVoice = buildCustomVoiceParams();
    o.languageCode = 'foo';
    o.name = 'foo';
    o.ssmlGender = 'foo';
    o.voiceClone = buildVoiceCloneParams();
  }
  buildCounterVoiceSelectionParams--;
  return o;
}

void checkVoiceSelectionParams(api.VoiceSelectionParams o) {
  buildCounterVoiceSelectionParams++;
  if (buildCounterVoiceSelectionParams < 3) {
    checkCustomVoiceParams(o.customVoice!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ssmlGender!, unittest.equals('foo'));
    checkVoiceCloneParams(o.voiceClone!);
  }
  buildCounterVoiceSelectionParams--;
}

void main() {
  unittest.group('obj-schema-AdvancedVoiceOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvancedVoiceOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvancedVoiceOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdvancedVoiceOptions(od);
    });
  });

  unittest.group('obj-schema-AudioConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAudioConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AudioConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAudioConfig(od);
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

  unittest.group('obj-schema-CustomPronunciationParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomPronunciationParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomPronunciationParams.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomPronunciationParams(od);
    });
  });

  unittest.group('obj-schema-CustomPronunciations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomPronunciations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomPronunciations.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomPronunciations(od);
    });
  });

  unittest.group('obj-schema-CustomVoiceParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomVoiceParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomVoiceParams.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomVoiceParams(od);
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

  unittest.group('obj-schema-ListVoicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVoicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVoicesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListVoicesResponse(od);
    });
  });

  unittest.group('obj-schema-MultiSpeakerMarkup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultiSpeakerMarkup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MultiSpeakerMarkup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMultiSpeakerMarkup(od);
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

  unittest.group('obj-schema-SynthesisInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSynthesisInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SynthesisInput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSynthesisInput(od);
    });
  });

  unittest.group('obj-schema-SynthesizeLongAudioRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSynthesizeLongAudioRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SynthesizeLongAudioRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSynthesizeLongAudioRequest(od);
    });
  });

  unittest.group('obj-schema-SynthesizeSpeechRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSynthesizeSpeechRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SynthesizeSpeechRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSynthesizeSpeechRequest(od);
    });
  });

  unittest.group('obj-schema-SynthesizeSpeechResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSynthesizeSpeechResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SynthesizeSpeechResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSynthesizeSpeechResponse(od);
    });
  });

  unittest.group('obj-schema-Turn', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTurn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Turn.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTurn(od);
    });
  });

  unittest.group('obj-schema-Voice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVoice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Voice.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVoice(od);
    });
  });

  unittest.group('obj-schema-VoiceCloneParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVoiceCloneParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VoiceCloneParams.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVoiceCloneParams(od);
    });
  });

  unittest.group('obj-schema-VoiceSelectionParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVoiceSelectionParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VoiceSelectionParams.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVoiceSelectionParams(od);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.TexttospeechApi(mock).operations;
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
      final res = api.TexttospeechApi(mock).operations;
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
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--synthesizeLongAudio', () async {
      final mock = HttpServerMock();
      final res = api.TexttospeechApi(mock).projects.locations;
      final arg_request = buildSynthesizeLongAudioRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SynthesizeLongAudioRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSynthesizeLongAudioRequest(obj);

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
      final response = await res.synthesizeLongAudio(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TexttospeechApi(mock).projects.locations.operations;
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
      final res = api.TexttospeechApi(mock).projects.locations.operations;
      final arg_name = 'foo';
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
        $fields: arg_$fields,
      );
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-TextResource', () {
    unittest.test('method--synthesize', () async {
      final mock = HttpServerMock();
      final res = api.TexttospeechApi(mock).text;
      final arg_request = buildSynthesizeSpeechRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SynthesizeSpeechRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSynthesizeSpeechRequest(obj);

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
            path.substring(pathOffset, pathOffset + 18),
            unittest.equals('v1/text:synthesize'),
          );
          pathOffset += 18;

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
          final resp = convert.json.encode(buildSynthesizeSpeechResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.synthesize(arg_request, $fields: arg_$fields);
      checkSynthesizeSpeechResponse(response as api.SynthesizeSpeechResponse);
    });
  });

  unittest.group('resource-VoicesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TexttospeechApi(mock).voices;
      final arg_languageCode = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1/voices'),
          );
          pathOffset += 9;

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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListVoicesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkListVoicesResponse(response as api.ListVoicesResponse);
    });
  });
}
