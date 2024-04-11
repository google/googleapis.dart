// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/speech/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAdaptationPhraseSet = 0;
api.AdaptationPhraseSet buildAdaptationPhraseSet() {
  final o = api.AdaptationPhraseSet();
  buildCounterAdaptationPhraseSet++;
  if (buildCounterAdaptationPhraseSet < 3) {
    o.inlinePhraseSet = buildPhraseSet();
    o.phraseSet = 'foo';
  }
  buildCounterAdaptationPhraseSet--;
  return o;
}

void checkAdaptationPhraseSet(api.AdaptationPhraseSet o) {
  buildCounterAdaptationPhraseSet++;
  if (buildCounterAdaptationPhraseSet < 3) {
    checkPhraseSet(o.inlinePhraseSet!);
    unittest.expect(
      o.phraseSet!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdaptationPhraseSet--;
}

core.int buildCounterAutoDetectDecodingConfig = 0;
api.AutoDetectDecodingConfig buildAutoDetectDecodingConfig() {
  final o = api.AutoDetectDecodingConfig();
  buildCounterAutoDetectDecodingConfig++;
  if (buildCounterAutoDetectDecodingConfig < 3) {}
  buildCounterAutoDetectDecodingConfig--;
  return o;
}

void checkAutoDetectDecodingConfig(api.AutoDetectDecodingConfig o) {
  buildCounterAutoDetectDecodingConfig++;
  if (buildCounterAutoDetectDecodingConfig < 3) {}
  buildCounterAutoDetectDecodingConfig--;
}

core.int buildCounterBatchRecognizeFileMetadata = 0;
api.BatchRecognizeFileMetadata buildBatchRecognizeFileMetadata() {
  final o = api.BatchRecognizeFileMetadata();
  buildCounterBatchRecognizeFileMetadata++;
  if (buildCounterBatchRecognizeFileMetadata < 3) {
    o.config = buildRecognitionConfig();
    o.configMask = 'foo';
    o.uri = 'foo';
  }
  buildCounterBatchRecognizeFileMetadata--;
  return o;
}

void checkBatchRecognizeFileMetadata(api.BatchRecognizeFileMetadata o) {
  buildCounterBatchRecognizeFileMetadata++;
  if (buildCounterBatchRecognizeFileMetadata < 3) {
    checkRecognitionConfig(o.config!);
    unittest.expect(
      o.configMask!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterBatchRecognizeFileMetadata--;
}

core.List<api.BatchRecognizeFileMetadata> buildUnnamed0() => [
      buildBatchRecognizeFileMetadata(),
      buildBatchRecognizeFileMetadata(),
    ];

void checkUnnamed0(core.List<api.BatchRecognizeFileMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBatchRecognizeFileMetadata(o[0]);
  checkBatchRecognizeFileMetadata(o[1]);
}

core.int buildCounterBatchRecognizeRequest = 0;
api.BatchRecognizeRequest buildBatchRecognizeRequest() {
  final o = api.BatchRecognizeRequest();
  buildCounterBatchRecognizeRequest++;
  if (buildCounterBatchRecognizeRequest < 3) {
    o.config = buildRecognitionConfig();
    o.configMask = 'foo';
    o.files = buildUnnamed0();
    o.processingStrategy = 'foo';
    o.recognitionOutputConfig = buildRecognitionOutputConfig();
    o.recognizer = 'foo';
  }
  buildCounterBatchRecognizeRequest--;
  return o;
}

void checkBatchRecognizeRequest(api.BatchRecognizeRequest o) {
  buildCounterBatchRecognizeRequest++;
  if (buildCounterBatchRecognizeRequest < 3) {
    checkRecognitionConfig(o.config!);
    unittest.expect(
      o.configMask!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.files!);
    unittest.expect(
      o.processingStrategy!,
      unittest.equals('foo'),
    );
    checkRecognitionOutputConfig(o.recognitionOutputConfig!);
    unittest.expect(
      o.recognizer!,
      unittest.equals('foo'),
    );
  }
  buildCounterBatchRecognizeRequest--;
}

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

core.int buildCounterConfig = 0;
api.Config buildConfig() {
  final o = api.Config();
  buildCounterConfig++;
  if (buildCounterConfig < 3) {
    o.kmsKeyName = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterConfig--;
  return o;
}

void checkConfig(api.Config o) {
  buildCounterConfig++;
  if (buildCounterConfig < 3) {
    unittest.expect(
      o.kmsKeyName!,
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
  buildCounterConfig--;
}

core.Map<core.String, core.String> buildUnnamed1() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed1(core.Map<core.String, core.String> o) {
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

core.List<api.ClassItem> buildUnnamed2() => [
      buildClassItem(),
      buildClassItem(),
    ];

void checkUnnamed2(core.List<api.ClassItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClassItem(o[0]);
  checkClassItem(o[1]);
}

core.int buildCounterCustomClass = 0;
api.CustomClass buildCustomClass() {
  final o = api.CustomClass();
  buildCounterCustomClass++;
  if (buildCounterCustomClass < 3) {
    o.annotations = buildUnnamed1();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.expireTime = 'foo';
    o.items = buildUnnamed2();
    o.kmsKeyName = 'foo';
    o.kmsKeyVersionName = 'foo';
    o.name = 'foo';
    o.reconciling = true;
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterCustomClass--;
  return o;
}

void checkCustomClass(api.CustomClass o) {
  buildCounterCustomClass++;
  if (buildCounterCustomClass < 3) {
    checkUnnamed1(o.annotations!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.items!);
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyVersionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomClass--;
}

core.int buildCounterEntry = 0;
api.Entry buildEntry() {
  final o = api.Entry();
  buildCounterEntry++;
  if (buildCounterEntry < 3) {
    o.caseSensitive = true;
    o.replace = 'foo';
    o.search = 'foo';
  }
  buildCounterEntry--;
  return o;
}

void checkEntry(api.Entry o) {
  buildCounterEntry++;
  if (buildCounterEntry < 3) {
    unittest.expect(o.caseSensitive!, unittest.isTrue);
    unittest.expect(
      o.replace!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.search!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntry--;
}

core.int buildCounterExplicitDecodingConfig = 0;
api.ExplicitDecodingConfig buildExplicitDecodingConfig() {
  final o = api.ExplicitDecodingConfig();
  buildCounterExplicitDecodingConfig++;
  if (buildCounterExplicitDecodingConfig < 3) {
    o.audioChannelCount = 42;
    o.encoding = 'foo';
    o.sampleRateHertz = 42;
  }
  buildCounterExplicitDecodingConfig--;
  return o;
}

void checkExplicitDecodingConfig(api.ExplicitDecodingConfig o) {
  buildCounterExplicitDecodingConfig++;
  if (buildCounterExplicitDecodingConfig < 3) {
    unittest.expect(
      o.audioChannelCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.encoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sampleRateHertz!,
      unittest.equals(42),
    );
  }
  buildCounterExplicitDecodingConfig--;
}

core.int buildCounterGcsOutputConfig = 0;
api.GcsOutputConfig buildGcsOutputConfig() {
  final o = api.GcsOutputConfig();
  buildCounterGcsOutputConfig++;
  if (buildCounterGcsOutputConfig < 3) {
    o.uri = 'foo';
  }
  buildCounterGcsOutputConfig--;
  return o;
}

void checkGcsOutputConfig(api.GcsOutputConfig o) {
  buildCounterGcsOutputConfig++;
  if (buildCounterGcsOutputConfig < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGcsOutputConfig--;
}

core.int buildCounterInlineOutputConfig = 0;
api.InlineOutputConfig buildInlineOutputConfig() {
  final o = api.InlineOutputConfig();
  buildCounterInlineOutputConfig++;
  if (buildCounterInlineOutputConfig < 3) {}
  buildCounterInlineOutputConfig--;
  return o;
}

void checkInlineOutputConfig(api.InlineOutputConfig o) {
  buildCounterInlineOutputConfig++;
  if (buildCounterInlineOutputConfig < 3) {}
  buildCounterInlineOutputConfig--;
}

core.List<api.CustomClass> buildUnnamed3() => [
      buildCustomClass(),
      buildCustomClass(),
    ];

void checkUnnamed3(core.List<api.CustomClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomClass(o[0]);
  checkCustomClass(o[1]);
}

core.int buildCounterListCustomClassesResponse = 0;
api.ListCustomClassesResponse buildListCustomClassesResponse() {
  final o = api.ListCustomClassesResponse();
  buildCounterListCustomClassesResponse++;
  if (buildCounterListCustomClassesResponse < 3) {
    o.customClasses = buildUnnamed3();
    o.nextPageToken = 'foo';
  }
  buildCounterListCustomClassesResponse--;
  return o;
}

void checkListCustomClassesResponse(api.ListCustomClassesResponse o) {
  buildCounterListCustomClassesResponse++;
  if (buildCounterListCustomClassesResponse < 3) {
    checkUnnamed3(o.customClasses!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCustomClassesResponse--;
}

core.List<api.Location> buildUnnamed4() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed4(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed4();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed4(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed5() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed5(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed5();
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
    checkUnnamed5(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.PhraseSet> buildUnnamed6() => [
      buildPhraseSet(),
      buildPhraseSet(),
    ];

void checkUnnamed6(core.List<api.PhraseSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhraseSet(o[0]);
  checkPhraseSet(o[1]);
}

core.int buildCounterListPhraseSetsResponse = 0;
api.ListPhraseSetsResponse buildListPhraseSetsResponse() {
  final o = api.ListPhraseSetsResponse();
  buildCounterListPhraseSetsResponse++;
  if (buildCounterListPhraseSetsResponse < 3) {
    o.nextPageToken = 'foo';
    o.phraseSets = buildUnnamed6();
  }
  buildCounterListPhraseSetsResponse--;
  return o;
}

void checkListPhraseSetsResponse(api.ListPhraseSetsResponse o) {
  buildCounterListPhraseSetsResponse++;
  if (buildCounterListPhraseSetsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.phraseSets!);
  }
  buildCounterListPhraseSetsResponse--;
}

core.List<api.Recognizer> buildUnnamed7() => [
      buildRecognizer(),
      buildRecognizer(),
    ];

void checkUnnamed7(core.List<api.Recognizer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRecognizer(o[0]);
  checkRecognizer(o[1]);
}

core.int buildCounterListRecognizersResponse = 0;
api.ListRecognizersResponse buildListRecognizersResponse() {
  final o = api.ListRecognizersResponse();
  buildCounterListRecognizersResponse++;
  if (buildCounterListRecognizersResponse < 3) {
    o.nextPageToken = 'foo';
    o.recognizers = buildUnnamed7();
  }
  buildCounterListRecognizersResponse--;
  return o;
}

void checkListRecognizersResponse(api.ListRecognizersResponse o) {
  buildCounterListRecognizersResponse++;
  if (buildCounterListRecognizersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.recognizers!);
  }
  buildCounterListRecognizersResponse--;
}

core.Map<core.String, core.String> buildUnnamed8() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed9() => {
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

void checkUnnamed9(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed8();
    o.locationId = 'foo';
    o.metadata = buildUnnamed9();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterNativeOutputFileFormatConfig = 0;
api.NativeOutputFileFormatConfig buildNativeOutputFileFormatConfig() {
  final o = api.NativeOutputFileFormatConfig();
  buildCounterNativeOutputFileFormatConfig++;
  if (buildCounterNativeOutputFileFormatConfig < 3) {}
  buildCounterNativeOutputFileFormatConfig--;
  return o;
}

void checkNativeOutputFileFormatConfig(api.NativeOutputFileFormatConfig o) {
  buildCounterNativeOutputFileFormatConfig++;
  if (buildCounterNativeOutputFileFormatConfig < 3) {}
  buildCounterNativeOutputFileFormatConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed10() => {
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

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed10();
    o.name = 'foo';
    o.response = buildUnnamed11();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed10(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOutputFormatConfig = 0;
api.OutputFormatConfig buildOutputFormatConfig() {
  final o = api.OutputFormatConfig();
  buildCounterOutputFormatConfig++;
  if (buildCounterOutputFormatConfig < 3) {
    o.native = buildNativeOutputFileFormatConfig();
    o.srt = buildSrtOutputFileFormatConfig();
    o.vtt = buildVttOutputFileFormatConfig();
  }
  buildCounterOutputFormatConfig--;
  return o;
}

void checkOutputFormatConfig(api.OutputFormatConfig o) {
  buildCounterOutputFormatConfig++;
  if (buildCounterOutputFormatConfig < 3) {
    checkNativeOutputFileFormatConfig(o.native!);
    checkSrtOutputFileFormatConfig(o.srt!);
    checkVttOutputFileFormatConfig(o.vtt!);
  }
  buildCounterOutputFormatConfig--;
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

core.List<api.Phrase> buildUnnamed13() => [
      buildPhrase(),
      buildPhrase(),
    ];

void checkUnnamed13(core.List<api.Phrase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhrase(o[0]);
  checkPhrase(o[1]);
}

core.int buildCounterPhraseSet = 0;
api.PhraseSet buildPhraseSet() {
  final o = api.PhraseSet();
  buildCounterPhraseSet++;
  if (buildCounterPhraseSet < 3) {
    o.annotations = buildUnnamed12();
    o.boost = 42.0;
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.expireTime = 'foo';
    o.kmsKeyName = 'foo';
    o.kmsKeyVersionName = 'foo';
    o.name = 'foo';
    o.phrases = buildUnnamed13();
    o.reconciling = true;
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterPhraseSet--;
  return o;
}

void checkPhraseSet(api.PhraseSet o) {
  buildCounterPhraseSet++;
  if (buildCounterPhraseSet < 3) {
    checkUnnamed12(o.annotations!);
    unittest.expect(
      o.boost!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyVersionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.phrases!);
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterPhraseSet--;
}

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.int buildCounterRecognitionConfig = 0;
api.RecognitionConfig buildRecognitionConfig() {
  final o = api.RecognitionConfig();
  buildCounterRecognitionConfig++;
  if (buildCounterRecognitionConfig < 3) {
    o.adaptation = buildSpeechAdaptation();
    o.autoDecodingConfig = buildAutoDetectDecodingConfig();
    o.explicitDecodingConfig = buildExplicitDecodingConfig();
    o.features = buildRecognitionFeatures();
    o.languageCodes = buildUnnamed14();
    o.model = 'foo';
    o.transcriptNormalization = buildTranscriptNormalization();
    o.translationConfig = buildTranslationConfig();
  }
  buildCounterRecognitionConfig--;
  return o;
}

void checkRecognitionConfig(api.RecognitionConfig o) {
  buildCounterRecognitionConfig++;
  if (buildCounterRecognitionConfig < 3) {
    checkSpeechAdaptation(o.adaptation!);
    checkAutoDetectDecodingConfig(o.autoDecodingConfig!);
    checkExplicitDecodingConfig(o.explicitDecodingConfig!);
    checkRecognitionFeatures(o.features!);
    checkUnnamed14(o.languageCodes!);
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    checkTranscriptNormalization(o.transcriptNormalization!);
    checkTranslationConfig(o.translationConfig!);
  }
  buildCounterRecognitionConfig--;
}

core.int buildCounterRecognitionFeatures = 0;
api.RecognitionFeatures buildRecognitionFeatures() {
  final o = api.RecognitionFeatures();
  buildCounterRecognitionFeatures++;
  if (buildCounterRecognitionFeatures < 3) {
    o.diarizationConfig = buildSpeakerDiarizationConfig();
    o.enableAutomaticPunctuation = true;
    o.enableSpokenEmojis = true;
    o.enableSpokenPunctuation = true;
    o.enableWordConfidence = true;
    o.enableWordTimeOffsets = true;
    o.maxAlternatives = 42;
    o.multiChannelMode = 'foo';
    o.profanityFilter = true;
  }
  buildCounterRecognitionFeatures--;
  return o;
}

void checkRecognitionFeatures(api.RecognitionFeatures o) {
  buildCounterRecognitionFeatures++;
  if (buildCounterRecognitionFeatures < 3) {
    checkSpeakerDiarizationConfig(o.diarizationConfig!);
    unittest.expect(o.enableAutomaticPunctuation!, unittest.isTrue);
    unittest.expect(o.enableSpokenEmojis!, unittest.isTrue);
    unittest.expect(o.enableSpokenPunctuation!, unittest.isTrue);
    unittest.expect(o.enableWordConfidence!, unittest.isTrue);
    unittest.expect(o.enableWordTimeOffsets!, unittest.isTrue);
    unittest.expect(
      o.maxAlternatives!,
      unittest.equals(42),
    );
    unittest.expect(
      o.multiChannelMode!,
      unittest.equals('foo'),
    );
    unittest.expect(o.profanityFilter!, unittest.isTrue);
  }
  buildCounterRecognitionFeatures--;
}

core.int buildCounterRecognitionOutputConfig = 0;
api.RecognitionOutputConfig buildRecognitionOutputConfig() {
  final o = api.RecognitionOutputConfig();
  buildCounterRecognitionOutputConfig++;
  if (buildCounterRecognitionOutputConfig < 3) {
    o.gcsOutputConfig = buildGcsOutputConfig();
    o.inlineResponseConfig = buildInlineOutputConfig();
    o.outputFormatConfig = buildOutputFormatConfig();
  }
  buildCounterRecognitionOutputConfig--;
  return o;
}

void checkRecognitionOutputConfig(api.RecognitionOutputConfig o) {
  buildCounterRecognitionOutputConfig++;
  if (buildCounterRecognitionOutputConfig < 3) {
    checkGcsOutputConfig(o.gcsOutputConfig!);
    checkInlineOutputConfig(o.inlineResponseConfig!);
    checkOutputFormatConfig(o.outputFormatConfig!);
  }
  buildCounterRecognitionOutputConfig--;
}

core.int buildCounterRecognitionResponseMetadata = 0;
api.RecognitionResponseMetadata buildRecognitionResponseMetadata() {
  final o = api.RecognitionResponseMetadata();
  buildCounterRecognitionResponseMetadata++;
  if (buildCounterRecognitionResponseMetadata < 3) {
    o.totalBilledDuration = 'foo';
  }
  buildCounterRecognitionResponseMetadata--;
  return o;
}

void checkRecognitionResponseMetadata(api.RecognitionResponseMetadata o) {
  buildCounterRecognitionResponseMetadata++;
  if (buildCounterRecognitionResponseMetadata < 3) {
    unittest.expect(
      o.totalBilledDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterRecognitionResponseMetadata--;
}

core.int buildCounterRecognizeRequest = 0;
api.RecognizeRequest buildRecognizeRequest() {
  final o = api.RecognizeRequest();
  buildCounterRecognizeRequest++;
  if (buildCounterRecognizeRequest < 3) {
    o.config = buildRecognitionConfig();
    o.configMask = 'foo';
    o.content = 'foo';
    o.uri = 'foo';
  }
  buildCounterRecognizeRequest--;
  return o;
}

void checkRecognizeRequest(api.RecognizeRequest o) {
  buildCounterRecognizeRequest++;
  if (buildCounterRecognizeRequest < 3) {
    checkRecognitionConfig(o.config!);
    unittest.expect(
      o.configMask!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterRecognizeRequest--;
}

core.List<api.SpeechRecognitionResult> buildUnnamed15() => [
      buildSpeechRecognitionResult(),
      buildSpeechRecognitionResult(),
    ];

void checkUnnamed15(core.List<api.SpeechRecognitionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpeechRecognitionResult(o[0]);
  checkSpeechRecognitionResult(o[1]);
}

core.int buildCounterRecognizeResponse = 0;
api.RecognizeResponse buildRecognizeResponse() {
  final o = api.RecognizeResponse();
  buildCounterRecognizeResponse++;
  if (buildCounterRecognizeResponse < 3) {
    o.metadata = buildRecognitionResponseMetadata();
    o.results = buildUnnamed15();
  }
  buildCounterRecognizeResponse--;
  return o;
}

void checkRecognizeResponse(api.RecognizeResponse o) {
  buildCounterRecognizeResponse++;
  if (buildCounterRecognizeResponse < 3) {
    checkRecognitionResponseMetadata(o.metadata!);
    checkUnnamed15(o.results!);
  }
  buildCounterRecognizeResponse--;
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

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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

core.int buildCounterRecognizer = 0;
api.Recognizer buildRecognizer() {
  final o = api.Recognizer();
  buildCounterRecognizer++;
  if (buildCounterRecognizer < 3) {
    o.annotations = buildUnnamed16();
    o.createTime = 'foo';
    o.defaultRecognitionConfig = buildRecognitionConfig();
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.expireTime = 'foo';
    o.kmsKeyName = 'foo';
    o.kmsKeyVersionName = 'foo';
    o.languageCodes = buildUnnamed17();
    o.model = 'foo';
    o.name = 'foo';
    o.reconciling = true;
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterRecognizer--;
  return o;
}

void checkRecognizer(api.Recognizer o) {
  buildCounterRecognizer++;
  if (buildCounterRecognizer < 3) {
    checkUnnamed16(o.annotations!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkRecognitionConfig(o.defaultRecognitionConfig!);
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyVersionName!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.languageCodes!);
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterRecognizer--;
}

core.int buildCounterSpeakerDiarizationConfig = 0;
api.SpeakerDiarizationConfig buildSpeakerDiarizationConfig() {
  final o = api.SpeakerDiarizationConfig();
  buildCounterSpeakerDiarizationConfig++;
  if (buildCounterSpeakerDiarizationConfig < 3) {
    o.maxSpeakerCount = 42;
    o.minSpeakerCount = 42;
  }
  buildCounterSpeakerDiarizationConfig--;
  return o;
}

void checkSpeakerDiarizationConfig(api.SpeakerDiarizationConfig o) {
  buildCounterSpeakerDiarizationConfig++;
  if (buildCounterSpeakerDiarizationConfig < 3) {
    unittest.expect(
      o.maxSpeakerCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minSpeakerCount!,
      unittest.equals(42),
    );
  }
  buildCounterSpeakerDiarizationConfig--;
}

core.List<api.CustomClass> buildUnnamed18() => [
      buildCustomClass(),
      buildCustomClass(),
    ];

void checkUnnamed18(core.List<api.CustomClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomClass(o[0]);
  checkCustomClass(o[1]);
}

core.List<api.AdaptationPhraseSet> buildUnnamed19() => [
      buildAdaptationPhraseSet(),
      buildAdaptationPhraseSet(),
    ];

void checkUnnamed19(core.List<api.AdaptationPhraseSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdaptationPhraseSet(o[0]);
  checkAdaptationPhraseSet(o[1]);
}

core.int buildCounterSpeechAdaptation = 0;
api.SpeechAdaptation buildSpeechAdaptation() {
  final o = api.SpeechAdaptation();
  buildCounterSpeechAdaptation++;
  if (buildCounterSpeechAdaptation < 3) {
    o.customClasses = buildUnnamed18();
    o.phraseSets = buildUnnamed19();
  }
  buildCounterSpeechAdaptation--;
  return o;
}

void checkSpeechAdaptation(api.SpeechAdaptation o) {
  buildCounterSpeechAdaptation++;
  if (buildCounterSpeechAdaptation < 3) {
    checkUnnamed18(o.customClasses!);
    checkUnnamed19(o.phraseSets!);
  }
  buildCounterSpeechAdaptation--;
}

core.List<api.WordInfo> buildUnnamed20() => [
      buildWordInfo(),
      buildWordInfo(),
    ];

void checkUnnamed20(core.List<api.WordInfo> o) {
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
    o.words = buildUnnamed20();
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
    checkUnnamed20(o.words!);
  }
  buildCounterSpeechRecognitionAlternative--;
}

core.List<api.SpeechRecognitionAlternative> buildUnnamed21() => [
      buildSpeechRecognitionAlternative(),
      buildSpeechRecognitionAlternative(),
    ];

void checkUnnamed21(core.List<api.SpeechRecognitionAlternative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpeechRecognitionAlternative(o[0]);
  checkSpeechRecognitionAlternative(o[1]);
}

core.int buildCounterSpeechRecognitionResult = 0;
api.SpeechRecognitionResult buildSpeechRecognitionResult() {
  final o = api.SpeechRecognitionResult();
  buildCounterSpeechRecognitionResult++;
  if (buildCounterSpeechRecognitionResult < 3) {
    o.alternatives = buildUnnamed21();
    o.channelTag = 42;
    o.languageCode = 'foo';
    o.resultEndOffset = 'foo';
  }
  buildCounterSpeechRecognitionResult--;
  return o;
}

void checkSpeechRecognitionResult(api.SpeechRecognitionResult o) {
  buildCounterSpeechRecognitionResult++;
  if (buildCounterSpeechRecognitionResult < 3) {
    checkUnnamed21(o.alternatives!);
    unittest.expect(
      o.channelTag!,
      unittest.equals(42),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resultEndOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterSpeechRecognitionResult--;
}

core.int buildCounterSrtOutputFileFormatConfig = 0;
api.SrtOutputFileFormatConfig buildSrtOutputFileFormatConfig() {
  final o = api.SrtOutputFileFormatConfig();
  buildCounterSrtOutputFileFormatConfig++;
  if (buildCounterSrtOutputFileFormatConfig < 3) {}
  buildCounterSrtOutputFileFormatConfig--;
  return o;
}

void checkSrtOutputFileFormatConfig(api.SrtOutputFileFormatConfig o) {
  buildCounterSrtOutputFileFormatConfig++;
  if (buildCounterSrtOutputFileFormatConfig < 3) {}
  buildCounterSrtOutputFileFormatConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed22() => {
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

void checkUnnamed22(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
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
  var casted8 = (o['y']!) as core.Map;
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
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed23() => [
      buildUnnamed22(),
      buildUnnamed22(),
    ];

void checkUnnamed23(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed22(o[0]);
  checkUnnamed22(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed23();
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
    checkUnnamed23(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<api.Entry> buildUnnamed24() => [
      buildEntry(),
      buildEntry(),
    ];

void checkUnnamed24(core.List<api.Entry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntry(o[0]);
  checkEntry(o[1]);
}

core.int buildCounterTranscriptNormalization = 0;
api.TranscriptNormalization buildTranscriptNormalization() {
  final o = api.TranscriptNormalization();
  buildCounterTranscriptNormalization++;
  if (buildCounterTranscriptNormalization < 3) {
    o.entries = buildUnnamed24();
  }
  buildCounterTranscriptNormalization--;
  return o;
}

void checkTranscriptNormalization(api.TranscriptNormalization o) {
  buildCounterTranscriptNormalization++;
  if (buildCounterTranscriptNormalization < 3) {
    checkUnnamed24(o.entries!);
  }
  buildCounterTranscriptNormalization--;
}

core.int buildCounterTranslationConfig = 0;
api.TranslationConfig buildTranslationConfig() {
  final o = api.TranslationConfig();
  buildCounterTranslationConfig++;
  if (buildCounterTranslationConfig < 3) {
    o.targetLanguage = 'foo';
  }
  buildCounterTranslationConfig--;
  return o;
}

void checkTranslationConfig(api.TranslationConfig o) {
  buildCounterTranslationConfig++;
  if (buildCounterTranslationConfig < 3) {
    unittest.expect(
      o.targetLanguage!,
      unittest.equals('foo'),
    );
  }
  buildCounterTranslationConfig--;
}

core.int buildCounterUndeleteCustomClassRequest = 0;
api.UndeleteCustomClassRequest buildUndeleteCustomClassRequest() {
  final o = api.UndeleteCustomClassRequest();
  buildCounterUndeleteCustomClassRequest++;
  if (buildCounterUndeleteCustomClassRequest < 3) {
    o.etag = 'foo';
    o.name = 'foo';
    o.validateOnly = true;
  }
  buildCounterUndeleteCustomClassRequest--;
  return o;
}

void checkUndeleteCustomClassRequest(api.UndeleteCustomClassRequest o) {
  buildCounterUndeleteCustomClassRequest++;
  if (buildCounterUndeleteCustomClassRequest < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterUndeleteCustomClassRequest--;
}

core.int buildCounterUndeletePhraseSetRequest = 0;
api.UndeletePhraseSetRequest buildUndeletePhraseSetRequest() {
  final o = api.UndeletePhraseSetRequest();
  buildCounterUndeletePhraseSetRequest++;
  if (buildCounterUndeletePhraseSetRequest < 3) {
    o.etag = 'foo';
    o.name = 'foo';
    o.validateOnly = true;
  }
  buildCounterUndeletePhraseSetRequest--;
  return o;
}

void checkUndeletePhraseSetRequest(api.UndeletePhraseSetRequest o) {
  buildCounterUndeletePhraseSetRequest++;
  if (buildCounterUndeletePhraseSetRequest < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterUndeletePhraseSetRequest--;
}

core.int buildCounterUndeleteRecognizerRequest = 0;
api.UndeleteRecognizerRequest buildUndeleteRecognizerRequest() {
  final o = api.UndeleteRecognizerRequest();
  buildCounterUndeleteRecognizerRequest++;
  if (buildCounterUndeleteRecognizerRequest < 3) {
    o.etag = 'foo';
    o.name = 'foo';
    o.validateOnly = true;
  }
  buildCounterUndeleteRecognizerRequest--;
  return o;
}

void checkUndeleteRecognizerRequest(api.UndeleteRecognizerRequest o) {
  buildCounterUndeleteRecognizerRequest++;
  if (buildCounterUndeleteRecognizerRequest < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterUndeleteRecognizerRequest--;
}

core.int buildCounterVttOutputFileFormatConfig = 0;
api.VttOutputFileFormatConfig buildVttOutputFileFormatConfig() {
  final o = api.VttOutputFileFormatConfig();
  buildCounterVttOutputFileFormatConfig++;
  if (buildCounterVttOutputFileFormatConfig < 3) {}
  buildCounterVttOutputFileFormatConfig--;
  return o;
}

void checkVttOutputFileFormatConfig(api.VttOutputFileFormatConfig o) {
  buildCounterVttOutputFileFormatConfig++;
  if (buildCounterVttOutputFileFormatConfig < 3) {}
  buildCounterVttOutputFileFormatConfig--;
}

core.int buildCounterWordInfo = 0;
api.WordInfo buildWordInfo() {
  final o = api.WordInfo();
  buildCounterWordInfo++;
  if (buildCounterWordInfo < 3) {
    o.confidence = 42.0;
    o.endOffset = 'foo';
    o.speakerLabel = 'foo';
    o.startOffset = 'foo';
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
      o.endOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.speakerLabel!,
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
  buildCounterWordInfo--;
}

void main() {
  unittest.group('obj-schema-AdaptationPhraseSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdaptationPhraseSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdaptationPhraseSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdaptationPhraseSet(od);
    });
  });

  unittest.group('obj-schema-AutoDetectDecodingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoDetectDecodingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoDetectDecodingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutoDetectDecodingConfig(od);
    });
  });

  unittest.group('obj-schema-BatchRecognizeFileMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchRecognizeFileMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchRecognizeFileMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchRecognizeFileMetadata(od);
    });
  });

  unittest.group('obj-schema-BatchRecognizeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchRecognizeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchRecognizeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchRecognizeRequest(od);
    });
  });

  unittest.group('obj-schema-ClassItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClassItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ClassItem.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkClassItem(od);
    });
  });

  unittest.group('obj-schema-Config', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Config.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkConfig(od);
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

  unittest.group('obj-schema-Entry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Entry.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEntry(od);
    });
  });

  unittest.group('obj-schema-ExplicitDecodingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExplicitDecodingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExplicitDecodingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExplicitDecodingConfig(od);
    });
  });

  unittest.group('obj-schema-GcsOutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcsOutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGcsOutputConfig(od);
    });
  });

  unittest.group('obj-schema-InlineOutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInlineOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InlineOutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInlineOutputConfig(od);
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

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od);
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

  unittest.group('obj-schema-ListPhraseSetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPhraseSetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPhraseSetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPhraseSetsResponse(od);
    });
  });

  unittest.group('obj-schema-ListRecognizersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRecognizersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRecognizersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRecognizersResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-NativeOutputFileFormatConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNativeOutputFileFormatConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NativeOutputFileFormatConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNativeOutputFileFormatConfig(od);
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

  unittest.group('obj-schema-OutputFormatConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOutputFormatConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OutputFormatConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOutputFormatConfig(od);
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

  unittest.group('obj-schema-RecognitionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecognitionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecognitionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRecognitionConfig(od);
    });
  });

  unittest.group('obj-schema-RecognitionFeatures', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecognitionFeatures();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecognitionFeatures.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRecognitionFeatures(od);
    });
  });

  unittest.group('obj-schema-RecognitionOutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecognitionOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecognitionOutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRecognitionOutputConfig(od);
    });
  });

  unittest.group('obj-schema-RecognitionResponseMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecognitionResponseMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecognitionResponseMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRecognitionResponseMetadata(od);
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

  unittest.group('obj-schema-Recognizer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecognizer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Recognizer.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRecognizer(od);
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

  unittest.group('obj-schema-SrtOutputFileFormatConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSrtOutputFileFormatConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SrtOutputFileFormatConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSrtOutputFileFormatConfig(od);
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

  unittest.group('obj-schema-TranscriptNormalization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTranscriptNormalization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TranscriptNormalization.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTranscriptNormalization(od);
    });
  });

  unittest.group('obj-schema-TranslationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTranslationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TranslationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTranslationConfig(od);
    });
  });

  unittest.group('obj-schema-UndeleteCustomClassRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteCustomClassRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteCustomClassRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteCustomClassRequest(od);
    });
  });

  unittest.group('obj-schema-UndeletePhraseSetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeletePhraseSetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeletePhraseSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeletePhraseSetRequest(od);
    });
  });

  unittest.group('obj-schema-UndeleteRecognizerRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteRecognizerRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteRecognizerRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteRecognizerRequest(od);
    });
  });

  unittest.group('obj-schema-VttOutputFileFormatConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVttOutputFileFormatConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VttOutputFileFormatConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVttOutputFileFormatConfig(od);
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

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsConfigResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.config;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConfig(response as api.Config);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.config;
      final arg_request = buildConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Config.fromJson(json as core.Map<core.String, core.dynamic>);
        checkConfig(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkConfig(response as api.Config);
    });
  });

  unittest.group('resource-ProjectsLocationsCustomClassesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.customClasses;
      final arg_request = buildCustomClass();
      final arg_parent = 'foo';
      final arg_customClassId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomClass.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomClass(obj);

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
          unittest.equals('v2/'),
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
          queryMap['customClassId']!.first,
          unittest.equals(arg_customClassId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
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
      final response = await res.create(arg_request, arg_parent,
          customClassId: arg_customClassId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.customClasses;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_validateOnly = true;
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
          unittest.equals('v2/'),
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
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
      final response = await res.delete(arg_name,
          allowMissing: arg_allowMissing,
          etag: arg_etag,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.customClasses;
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
          unittest.equals('v2/'),
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
      final arg_showDeleted = true;
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
          unittest.equals('v2/'),
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
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
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
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkListCustomClassesResponse(response as api.ListCustomClassesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.customClasses;
      final arg_request = buildCustomClass();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomClass.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomClass(obj);

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
          unittest.equals('v2/'),
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
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
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
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.customClasses;
      final arg_request = buildUndeleteCustomClassRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UndeleteCustomClassRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteCustomClassRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undelete(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.operations;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.operations;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsPhraseSetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.phraseSets;
      final arg_request = buildPhraseSet();
      final arg_parent = 'foo';
      final arg_phraseSetId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.PhraseSet.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPhraseSet(obj);

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
          unittest.equals('v2/'),
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
          queryMap['phraseSetId']!.first,
          unittest.equals(arg_phraseSetId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
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
      final response = await res.create(arg_request, arg_parent,
          phraseSetId: arg_phraseSetId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.phraseSets;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_validateOnly = true;
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
          unittest.equals('v2/'),
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
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
      final response = await res.delete(arg_name,
          allowMissing: arg_allowMissing,
          etag: arg_etag,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.phraseSets;
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
          unittest.equals('v2/'),
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
      final arg_showDeleted = true;
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
          unittest.equals('v2/'),
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
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListPhraseSetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkListPhraseSetsResponse(response as api.ListPhraseSetsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.phraseSets;
      final arg_request = buildPhraseSet();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.PhraseSet.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPhraseSet(obj);

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
          unittest.equals('v2/'),
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
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
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
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.phraseSets;
      final arg_request = buildUndeletePhraseSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UndeletePhraseSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeletePhraseSetRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undelete(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsRecognizersResource', () {
    unittest.test('method--batchRecognize', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.recognizers;
      final arg_request = buildBatchRecognizeRequest();
      final arg_recognizer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchRecognizeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchRecognizeRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchRecognize(arg_request, arg_recognizer,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.recognizers;
      final arg_request = buildRecognizer();
      final arg_parent = 'foo';
      final arg_recognizerId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Recognizer.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRecognizer(obj);

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
          unittest.equals('v2/'),
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
          queryMap['recognizerId']!.first,
          unittest.equals(arg_recognizerId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
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
      final response = await res.create(arg_request, arg_parent,
          recognizerId: arg_recognizerId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.recognizers;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_validateOnly = true;
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
          unittest.equals('v2/'),
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
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
      final response = await res.delete(arg_name,
          allowMissing: arg_allowMissing,
          etag: arg_etag,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.recognizers;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildRecognizer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRecognizer(response as api.Recognizer);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.recognizers;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
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
          unittest.equals('v2/'),
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
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListRecognizersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkListRecognizersResponse(response as api.ListRecognizersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.recognizers;
      final arg_request = buildRecognizer();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Recognizer.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRecognizer(obj);

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
          unittest.equals('v2/'),
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
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
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
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--recognize', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.recognizers;
      final arg_request = buildRecognizeRequest();
      final arg_recognizer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RecognizeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRecognizeRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildRecognizeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.recognize(arg_request, arg_recognizer,
          $fields: arg_$fields);
      checkRecognizeResponse(response as api.RecognizeResponse);
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.SpeechApi(mock).projects.locations.recognizers;
      final arg_request = buildUndeleteRecognizerRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UndeleteRecognizerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteRecognizerRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undelete(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
