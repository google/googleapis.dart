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

core.List<api.Operation> buildUnnamed6062() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed6062(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed6062();
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
    checkUnnamed6062(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.int buildCounterLongRunningRecognizeMetadata = 0;
api.LongRunningRecognizeMetadata buildLongRunningRecognizeMetadata() {
  final o = api.LongRunningRecognizeMetadata();
  buildCounterLongRunningRecognizeMetadata++;
  if (buildCounterLongRunningRecognizeMetadata < 3) {
    o.lastUpdateTime = 'foo';
    o.progressPercent = 42;
    o.startTime = 'foo';
    o.uri = 'foo';
  }
  buildCounterLongRunningRecognizeMetadata--;
  return o;
}

void checkLongRunningRecognizeMetadata(api.LongRunningRecognizeMetadata o) {
  buildCounterLongRunningRecognizeMetadata++;
  if (buildCounterLongRunningRecognizeMetadata < 3) {
    unittest.expect(
      o.lastUpdateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.progressPercent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterLongRunningRecognizeMetadata--;
}

core.int buildCounterLongRunningRecognizeRequest = 0;
api.LongRunningRecognizeRequest buildLongRunningRecognizeRequest() {
  final o = api.LongRunningRecognizeRequest();
  buildCounterLongRunningRecognizeRequest++;
  if (buildCounterLongRunningRecognizeRequest < 3) {
    o.audio = buildRecognitionAudio();
    o.config = buildRecognitionConfig();
  }
  buildCounterLongRunningRecognizeRequest--;
  return o;
}

void checkLongRunningRecognizeRequest(api.LongRunningRecognizeRequest o) {
  buildCounterLongRunningRecognizeRequest++;
  if (buildCounterLongRunningRecognizeRequest < 3) {
    checkRecognitionAudio(o.audio!);
    checkRecognitionConfig(o.config!);
  }
  buildCounterLongRunningRecognizeRequest--;
}

core.List<api.SpeechRecognitionResult> buildUnnamed6063() => [
      buildSpeechRecognitionResult(),
      buildSpeechRecognitionResult(),
    ];

void checkUnnamed6063(core.List<api.SpeechRecognitionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpeechRecognitionResult(o[0]);
  checkSpeechRecognitionResult(o[1]);
}

core.int buildCounterLongRunningRecognizeResponse = 0;
api.LongRunningRecognizeResponse buildLongRunningRecognizeResponse() {
  final o = api.LongRunningRecognizeResponse();
  buildCounterLongRunningRecognizeResponse++;
  if (buildCounterLongRunningRecognizeResponse < 3) {
    o.results = buildUnnamed6063();
  }
  buildCounterLongRunningRecognizeResponse--;
  return o;
}

void checkLongRunningRecognizeResponse(api.LongRunningRecognizeResponse o) {
  buildCounterLongRunningRecognizeResponse++;
  if (buildCounterLongRunningRecognizeResponse < 3) {
    checkUnnamed6063(o.results!);
  }
  buildCounterLongRunningRecognizeResponse--;
}

core.Map<core.String, core.Object> buildUnnamed6064() => {
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

void checkUnnamed6064(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed6065() => {
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

void checkUnnamed6065(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed6064();
    o.name = 'foo';
    o.response = buildUnnamed6065();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed6064(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed6065(o.response!);
  }
  buildCounterOperation--;
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

core.List<api.SpeechContext> buildUnnamed6066() => [
      buildSpeechContext(),
      buildSpeechContext(),
    ];

void checkUnnamed6066(core.List<api.SpeechContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpeechContext(o[0]);
  checkSpeechContext(o[1]);
}

core.int buildCounterRecognitionConfig = 0;
api.RecognitionConfig buildRecognitionConfig() {
  final o = api.RecognitionConfig();
  buildCounterRecognitionConfig++;
  if (buildCounterRecognitionConfig < 3) {
    o.audioChannelCount = 42;
    o.diarizationConfig = buildSpeakerDiarizationConfig();
    o.enableAutomaticPunctuation = true;
    o.enableSeparateRecognitionPerChannel = true;
    o.enableWordTimeOffsets = true;
    o.encoding = 'foo';
    o.languageCode = 'foo';
    o.maxAlternatives = 42;
    o.metadata = buildRecognitionMetadata();
    o.model = 'foo';
    o.profanityFilter = true;
    o.sampleRateHertz = 42;
    o.speechContexts = buildUnnamed6066();
    o.useEnhanced = true;
  }
  buildCounterRecognitionConfig--;
  return o;
}

void checkRecognitionConfig(api.RecognitionConfig o) {
  buildCounterRecognitionConfig++;
  if (buildCounterRecognitionConfig < 3) {
    unittest.expect(
      o.audioChannelCount!,
      unittest.equals(42),
    );
    checkSpeakerDiarizationConfig(o.diarizationConfig!);
    unittest.expect(o.enableAutomaticPunctuation!, unittest.isTrue);
    unittest.expect(o.enableSeparateRecognitionPerChannel!, unittest.isTrue);
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
    checkUnnamed6066(o.speechContexts!);
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

core.List<api.SpeechRecognitionResult> buildUnnamed6067() => [
      buildSpeechRecognitionResult(),
      buildSpeechRecognitionResult(),
    ];

void checkUnnamed6067(core.List<api.SpeechRecognitionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpeechRecognitionResult(o[0]);
  checkSpeechRecognitionResult(o[1]);
}

core.int buildCounterRecognizeResponse = 0;
api.RecognizeResponse buildRecognizeResponse() {
  final o = api.RecognizeResponse();
  buildCounterRecognizeResponse++;
  if (buildCounterRecognizeResponse < 3) {
    o.results = buildUnnamed6067();
  }
  buildCounterRecognizeResponse--;
  return o;
}

void checkRecognizeResponse(api.RecognizeResponse o) {
  buildCounterRecognizeResponse++;
  if (buildCounterRecognizeResponse < 3) {
    checkUnnamed6067(o.results!);
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

core.List<core.String> buildUnnamed6068() => [
      'foo',
      'foo',
    ];

void checkUnnamed6068(core.List<core.String> o) {
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
    o.phrases = buildUnnamed6068();
  }
  buildCounterSpeechContext--;
  return o;
}

void checkSpeechContext(api.SpeechContext o) {
  buildCounterSpeechContext++;
  if (buildCounterSpeechContext < 3) {
    checkUnnamed6068(o.phrases!);
  }
  buildCounterSpeechContext--;
}

core.List<api.WordInfo> buildUnnamed6069() => [
      buildWordInfo(),
      buildWordInfo(),
    ];

void checkUnnamed6069(core.List<api.WordInfo> o) {
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
    o.words = buildUnnamed6069();
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
    checkUnnamed6069(o.words!);
  }
  buildCounterSpeechRecognitionAlternative--;
}

core.List<api.SpeechRecognitionAlternative> buildUnnamed6070() => [
      buildSpeechRecognitionAlternative(),
      buildSpeechRecognitionAlternative(),
    ];

void checkUnnamed6070(core.List<api.SpeechRecognitionAlternative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpeechRecognitionAlternative(o[0]);
  checkSpeechRecognitionAlternative(o[1]);
}

core.int buildCounterSpeechRecognitionResult = 0;
api.SpeechRecognitionResult buildSpeechRecognitionResult() {
  final o = api.SpeechRecognitionResult();
  buildCounterSpeechRecognitionResult++;
  if (buildCounterSpeechRecognitionResult < 3) {
    o.alternatives = buildUnnamed6070();
    o.channelTag = 42;
  }
  buildCounterSpeechRecognitionResult--;
  return o;
}

void checkSpeechRecognitionResult(api.SpeechRecognitionResult o) {
  buildCounterSpeechRecognitionResult++;
  if (buildCounterSpeechRecognitionResult < 3) {
    checkUnnamed6070(o.alternatives!);
    unittest.expect(
      o.channelTag!,
      unittest.equals(42),
    );
  }
  buildCounterSpeechRecognitionResult--;
}

core.Map<core.String, core.Object> buildUnnamed6071() => {
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

void checkUnnamed6071(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed6072() => [
      buildUnnamed6071(),
      buildUnnamed6071(),
    ];

void checkUnnamed6072(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6071(o[0]);
  checkUnnamed6071(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6072();
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
    checkUnnamed6072(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterWordInfo = 0;
api.WordInfo buildWordInfo() {
  final o = api.WordInfo();
  buildCounterWordInfo++;
  if (buildCounterWordInfo < 3) {
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
  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-LongRunningRecognizeMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLongRunningRecognizeMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LongRunningRecognizeMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLongRunningRecognizeMetadata(od);
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

  unittest.group('obj-schema-LongRunningRecognizeResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLongRunningRecognizeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LongRunningRecognizeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLongRunningRecognizeResponse(od);
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
