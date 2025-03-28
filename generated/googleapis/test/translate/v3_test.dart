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

import 'package:googleapis/translate/v3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAdaptiveMtDataset = 0;
api.AdaptiveMtDataset buildAdaptiveMtDataset() {
  final o = api.AdaptiveMtDataset();
  buildCounterAdaptiveMtDataset++;
  if (buildCounterAdaptiveMtDataset < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.exampleCount = 42;
    o.name = 'foo';
    o.sourceLanguageCode = 'foo';
    o.targetLanguageCode = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterAdaptiveMtDataset--;
  return o;
}

void checkAdaptiveMtDataset(api.AdaptiveMtDataset o) {
  buildCounterAdaptiveMtDataset++;
  if (buildCounterAdaptiveMtDataset < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exampleCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceLanguageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetLanguageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdaptiveMtDataset--;
}

core.int buildCounterAdaptiveMtFile = 0;
api.AdaptiveMtFile buildAdaptiveMtFile() {
  final o = api.AdaptiveMtFile();
  buildCounterAdaptiveMtFile++;
  if (buildCounterAdaptiveMtFile < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.entryCount = 42;
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterAdaptiveMtFile--;
  return o;
}

void checkAdaptiveMtFile(api.AdaptiveMtFile o) {
  buildCounterAdaptiveMtFile++;
  if (buildCounterAdaptiveMtFile < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entryCount!,
      unittest.equals(42),
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
  buildCounterAdaptiveMtFile--;
}

core.int buildCounterAdaptiveMtSentence = 0;
api.AdaptiveMtSentence buildAdaptiveMtSentence() {
  final o = api.AdaptiveMtSentence();
  buildCounterAdaptiveMtSentence++;
  if (buildCounterAdaptiveMtSentence < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
    o.sourceSentence = 'foo';
    o.targetSentence = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterAdaptiveMtSentence--;
  return o;
}

void checkAdaptiveMtSentence(api.AdaptiveMtSentence o) {
  buildCounterAdaptiveMtSentence++;
  if (buildCounterAdaptiveMtSentence < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceSentence!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetSentence!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdaptiveMtSentence--;
}

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

core.int buildCounterAdaptiveMtTranslateRequest = 0;
api.AdaptiveMtTranslateRequest buildAdaptiveMtTranslateRequest() {
  final o = api.AdaptiveMtTranslateRequest();
  buildCounterAdaptiveMtTranslateRequest++;
  if (buildCounterAdaptiveMtTranslateRequest < 3) {
    o.content = buildUnnamed0();
    o.dataset = 'foo';
    o.glossaryConfig = buildGlossaryConfig();
    o.referenceSentenceConfig = buildReferenceSentenceConfig();
  }
  buildCounterAdaptiveMtTranslateRequest--;
  return o;
}

void checkAdaptiveMtTranslateRequest(api.AdaptiveMtTranslateRequest o) {
  buildCounterAdaptiveMtTranslateRequest++;
  if (buildCounterAdaptiveMtTranslateRequest < 3) {
    checkUnnamed0(o.content!);
    unittest.expect(
      o.dataset!,
      unittest.equals('foo'),
    );
    checkGlossaryConfig(o.glossaryConfig!);
    checkReferenceSentenceConfig(o.referenceSentenceConfig!);
  }
  buildCounterAdaptiveMtTranslateRequest--;
}

core.List<api.AdaptiveMtTranslation> buildUnnamed1() => [
      buildAdaptiveMtTranslation(),
      buildAdaptiveMtTranslation(),
    ];

void checkUnnamed1(core.List<api.AdaptiveMtTranslation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdaptiveMtTranslation(o[0]);
  checkAdaptiveMtTranslation(o[1]);
}

core.List<api.AdaptiveMtTranslation> buildUnnamed2() => [
      buildAdaptiveMtTranslation(),
      buildAdaptiveMtTranslation(),
    ];

void checkUnnamed2(core.List<api.AdaptiveMtTranslation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdaptiveMtTranslation(o[0]);
  checkAdaptiveMtTranslation(o[1]);
}

core.int buildCounterAdaptiveMtTranslateResponse = 0;
api.AdaptiveMtTranslateResponse buildAdaptiveMtTranslateResponse() {
  final o = api.AdaptiveMtTranslateResponse();
  buildCounterAdaptiveMtTranslateResponse++;
  if (buildCounterAdaptiveMtTranslateResponse < 3) {
    o.glossaryTranslations = buildUnnamed1();
    o.languageCode = 'foo';
    o.translations = buildUnnamed2();
  }
  buildCounterAdaptiveMtTranslateResponse--;
  return o;
}

void checkAdaptiveMtTranslateResponse(api.AdaptiveMtTranslateResponse o) {
  buildCounterAdaptiveMtTranslateResponse++;
  if (buildCounterAdaptiveMtTranslateResponse < 3) {
    checkUnnamed1(o.glossaryTranslations!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.translations!);
  }
  buildCounterAdaptiveMtTranslateResponse--;
}

core.int buildCounterAdaptiveMtTranslation = 0;
api.AdaptiveMtTranslation buildAdaptiveMtTranslation() {
  final o = api.AdaptiveMtTranslation();
  buildCounterAdaptiveMtTranslation++;
  if (buildCounterAdaptiveMtTranslation < 3) {
    o.translatedText = 'foo';
  }
  buildCounterAdaptiveMtTranslation--;
  return o;
}

void checkAdaptiveMtTranslation(api.AdaptiveMtTranslation o) {
  buildCounterAdaptiveMtTranslation++;
  if (buildCounterAdaptiveMtTranslation < 3) {
    unittest.expect(
      o.translatedText!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdaptiveMtTranslation--;
}

core.int buildCounterBatchDocumentInputConfig = 0;
api.BatchDocumentInputConfig buildBatchDocumentInputConfig() {
  final o = api.BatchDocumentInputConfig();
  buildCounterBatchDocumentInputConfig++;
  if (buildCounterBatchDocumentInputConfig < 3) {
    o.gcsSource = buildGcsSource();
  }
  buildCounterBatchDocumentInputConfig--;
  return o;
}

void checkBatchDocumentInputConfig(api.BatchDocumentInputConfig o) {
  buildCounterBatchDocumentInputConfig++;
  if (buildCounterBatchDocumentInputConfig < 3) {
    checkGcsSource(o.gcsSource!);
  }
  buildCounterBatchDocumentInputConfig--;
}

core.int buildCounterBatchDocumentOutputConfig = 0;
api.BatchDocumentOutputConfig buildBatchDocumentOutputConfig() {
  final o = api.BatchDocumentOutputConfig();
  buildCounterBatchDocumentOutputConfig++;
  if (buildCounterBatchDocumentOutputConfig < 3) {
    o.gcsDestination = buildGcsDestination();
  }
  buildCounterBatchDocumentOutputConfig--;
  return o;
}

void checkBatchDocumentOutputConfig(api.BatchDocumentOutputConfig o) {
  buildCounterBatchDocumentOutputConfig++;
  if (buildCounterBatchDocumentOutputConfig < 3) {
    checkGcsDestination(o.gcsDestination!);
  }
  buildCounterBatchDocumentOutputConfig--;
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

core.Map<core.String, api.TranslateTextGlossaryConfig> buildUnnamed4() => {
      'x': buildTranslateTextGlossaryConfig(),
      'y': buildTranslateTextGlossaryConfig(),
    };

void checkUnnamed4(core.Map<core.String, api.TranslateTextGlossaryConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTranslateTextGlossaryConfig(o['x']!);
  checkTranslateTextGlossaryConfig(o['y']!);
}

core.List<api.BatchDocumentInputConfig> buildUnnamed5() => [
      buildBatchDocumentInputConfig(),
      buildBatchDocumentInputConfig(),
    ];

void checkUnnamed5(core.List<api.BatchDocumentInputConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBatchDocumentInputConfig(o[0]);
  checkBatchDocumentInputConfig(o[1]);
}

core.Map<core.String, core.String> buildUnnamed6() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed6(core.Map<core.String, core.String> o) {
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

core.int buildCounterBatchTranslateDocumentRequest = 0;
api.BatchTranslateDocumentRequest buildBatchTranslateDocumentRequest() {
  final o = api.BatchTranslateDocumentRequest();
  buildCounterBatchTranslateDocumentRequest++;
  if (buildCounterBatchTranslateDocumentRequest < 3) {
    o.customizedAttribution = 'foo';
    o.enableRotationCorrection = true;
    o.enableShadowRemovalNativePdf = true;
    o.formatConversions = buildUnnamed3();
    o.glossaries = buildUnnamed4();
    o.inputConfigs = buildUnnamed5();
    o.models = buildUnnamed6();
    o.outputConfig = buildBatchDocumentOutputConfig();
    o.sourceLanguageCode = 'foo';
    o.targetLanguageCodes = buildUnnamed7();
  }
  buildCounterBatchTranslateDocumentRequest--;
  return o;
}

void checkBatchTranslateDocumentRequest(api.BatchTranslateDocumentRequest o) {
  buildCounterBatchTranslateDocumentRequest++;
  if (buildCounterBatchTranslateDocumentRequest < 3) {
    unittest.expect(
      o.customizedAttribution!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableRotationCorrection!, unittest.isTrue);
    unittest.expect(o.enableShadowRemovalNativePdf!, unittest.isTrue);
    checkUnnamed3(o.formatConversions!);
    checkUnnamed4(o.glossaries!);
    checkUnnamed5(o.inputConfigs!);
    checkUnnamed6(o.models!);
    checkBatchDocumentOutputConfig(o.outputConfig!);
    unittest.expect(
      o.sourceLanguageCode!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.targetLanguageCodes!);
  }
  buildCounterBatchTranslateDocumentRequest--;
}

core.Map<core.String, api.TranslateTextGlossaryConfig> buildUnnamed8() => {
      'x': buildTranslateTextGlossaryConfig(),
      'y': buildTranslateTextGlossaryConfig(),
    };

void checkUnnamed8(core.Map<core.String, api.TranslateTextGlossaryConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTranslateTextGlossaryConfig(o['x']!);
  checkTranslateTextGlossaryConfig(o['y']!);
}

core.List<api.InputConfig> buildUnnamed9() => [
      buildInputConfig(),
      buildInputConfig(),
    ];

void checkUnnamed9(core.List<api.InputConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInputConfig(o[0]);
  checkInputConfig(o[1]);
}

core.Map<core.String, core.String> buildUnnamed10() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed10(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed11() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed11(core.Map<core.String, core.String> o) {
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

core.int buildCounterBatchTranslateTextRequest = 0;
api.BatchTranslateTextRequest buildBatchTranslateTextRequest() {
  final o = api.BatchTranslateTextRequest();
  buildCounterBatchTranslateTextRequest++;
  if (buildCounterBatchTranslateTextRequest < 3) {
    o.glossaries = buildUnnamed8();
    o.inputConfigs = buildUnnamed9();
    o.labels = buildUnnamed10();
    o.models = buildUnnamed11();
    o.outputConfig = buildOutputConfig();
    o.sourceLanguageCode = 'foo';
    o.targetLanguageCodes = buildUnnamed12();
  }
  buildCounterBatchTranslateTextRequest--;
  return o;
}

void checkBatchTranslateTextRequest(api.BatchTranslateTextRequest o) {
  buildCounterBatchTranslateTextRequest++;
  if (buildCounterBatchTranslateTextRequest < 3) {
    checkUnnamed8(o.glossaries!);
    checkUnnamed9(o.inputConfigs!);
    checkUnnamed10(o.labels!);
    checkUnnamed11(o.models!);
    checkOutputConfig(o.outputConfig!);
    unittest.expect(
      o.sourceLanguageCode!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.targetLanguageCodes!);
  }
  buildCounterBatchTranslateTextRequest--;
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

core.int buildCounterDataset = 0;
api.Dataset buildDataset() {
  final o = api.Dataset();
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.exampleCount = 42;
    o.name = 'foo';
    o.sourceLanguageCode = 'foo';
    o.targetLanguageCode = 'foo';
    o.testExampleCount = 42;
    o.trainExampleCount = 42;
    o.updateTime = 'foo';
    o.validateExampleCount = 42;
  }
  buildCounterDataset--;
  return o;
}

void checkDataset(api.Dataset o) {
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exampleCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceLanguageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetLanguageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.testExampleCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.trainExampleCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validateExampleCount!,
      unittest.equals(42),
    );
  }
  buildCounterDataset--;
}

core.List<api.InputFile> buildUnnamed13() => [
      buildInputFile(),
      buildInputFile(),
    ];

void checkUnnamed13(core.List<api.InputFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInputFile(o[0]);
  checkInputFile(o[1]);
}

core.int buildCounterDatasetInputConfig = 0;
api.DatasetInputConfig buildDatasetInputConfig() {
  final o = api.DatasetInputConfig();
  buildCounterDatasetInputConfig++;
  if (buildCounterDatasetInputConfig < 3) {
    o.inputFiles = buildUnnamed13();
  }
  buildCounterDatasetInputConfig--;
  return o;
}

void checkDatasetInputConfig(api.DatasetInputConfig o) {
  buildCounterDatasetInputConfig++;
  if (buildCounterDatasetInputConfig < 3) {
    checkUnnamed13(o.inputFiles!);
  }
  buildCounterDatasetInputConfig--;
}

core.int buildCounterDatasetOutputConfig = 0;
api.DatasetOutputConfig buildDatasetOutputConfig() {
  final o = api.DatasetOutputConfig();
  buildCounterDatasetOutputConfig++;
  if (buildCounterDatasetOutputConfig < 3) {
    o.gcsDestination = buildGcsOutputDestination();
  }
  buildCounterDatasetOutputConfig--;
  return o;
}

void checkDatasetOutputConfig(api.DatasetOutputConfig o) {
  buildCounterDatasetOutputConfig++;
  if (buildCounterDatasetOutputConfig < 3) {
    checkGcsOutputDestination(o.gcsDestination!);
  }
  buildCounterDatasetOutputConfig--;
}

core.Map<core.String, core.String> buildUnnamed14() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed14(core.Map<core.String, core.String> o) {
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

core.int buildCounterDetectLanguageRequest = 0;
api.DetectLanguageRequest buildDetectLanguageRequest() {
  final o = api.DetectLanguageRequest();
  buildCounterDetectLanguageRequest++;
  if (buildCounterDetectLanguageRequest < 3) {
    o.content = 'foo';
    o.labels = buildUnnamed14();
    o.mimeType = 'foo';
    o.model = 'foo';
  }
  buildCounterDetectLanguageRequest--;
  return o;
}

void checkDetectLanguageRequest(api.DetectLanguageRequest o) {
  buildCounterDetectLanguageRequest++;
  if (buildCounterDetectLanguageRequest < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.labels!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
  }
  buildCounterDetectLanguageRequest--;
}

core.List<api.DetectedLanguage> buildUnnamed15() => [
      buildDetectedLanguage(),
      buildDetectedLanguage(),
    ];

void checkUnnamed15(core.List<api.DetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetectedLanguage(o[0]);
  checkDetectedLanguage(o[1]);
}

core.int buildCounterDetectLanguageResponse = 0;
api.DetectLanguageResponse buildDetectLanguageResponse() {
  final o = api.DetectLanguageResponse();
  buildCounterDetectLanguageResponse++;
  if (buildCounterDetectLanguageResponse < 3) {
    o.languages = buildUnnamed15();
  }
  buildCounterDetectLanguageResponse--;
  return o;
}

void checkDetectLanguageResponse(api.DetectLanguageResponse o) {
  buildCounterDetectLanguageResponse++;
  if (buildCounterDetectLanguageResponse < 3) {
    checkUnnamed15(o.languages!);
  }
  buildCounterDetectLanguageResponse--;
}

core.int buildCounterDetectedLanguage = 0;
api.DetectedLanguage buildDetectedLanguage() {
  final o = api.DetectedLanguage();
  buildCounterDetectedLanguage++;
  if (buildCounterDetectedLanguage < 3) {
    o.confidence = 42.0;
    o.languageCode = 'foo';
  }
  buildCounterDetectedLanguage--;
  return o;
}

void checkDetectedLanguage(api.DetectedLanguage o) {
  buildCounterDetectedLanguage++;
  if (buildCounterDetectedLanguage < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterDetectedLanguage--;
}

core.int buildCounterDocumentInputConfig = 0;
api.DocumentInputConfig buildDocumentInputConfig() {
  final o = api.DocumentInputConfig();
  buildCounterDocumentInputConfig++;
  if (buildCounterDocumentInputConfig < 3) {
    o.content = 'foo';
    o.gcsSource = buildGcsSource();
    o.mimeType = 'foo';
  }
  buildCounterDocumentInputConfig--;
  return o;
}

void checkDocumentInputConfig(api.DocumentInputConfig o) {
  buildCounterDocumentInputConfig++;
  if (buildCounterDocumentInputConfig < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkGcsSource(o.gcsSource!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterDocumentInputConfig--;
}

core.int buildCounterDocumentOutputConfig = 0;
api.DocumentOutputConfig buildDocumentOutputConfig() {
  final o = api.DocumentOutputConfig();
  buildCounterDocumentOutputConfig++;
  if (buildCounterDocumentOutputConfig < 3) {
    o.gcsDestination = buildGcsDestination();
    o.mimeType = 'foo';
  }
  buildCounterDocumentOutputConfig--;
  return o;
}

void checkDocumentOutputConfig(api.DocumentOutputConfig o) {
  buildCounterDocumentOutputConfig++;
  if (buildCounterDocumentOutputConfig < 3) {
    checkGcsDestination(o.gcsDestination!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterDocumentOutputConfig--;
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

core.int buildCounterDocumentTranslation = 0;
api.DocumentTranslation buildDocumentTranslation() {
  final o = api.DocumentTranslation();
  buildCounterDocumentTranslation++;
  if (buildCounterDocumentTranslation < 3) {
    o.byteStreamOutputs = buildUnnamed16();
    o.detectedLanguageCode = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterDocumentTranslation--;
  return o;
}

void checkDocumentTranslation(api.DocumentTranslation o) {
  buildCounterDocumentTranslation++;
  if (buildCounterDocumentTranslation < 3) {
    checkUnnamed16(o.byteStreamOutputs!);
    unittest.expect(
      o.detectedLanguageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterDocumentTranslation--;
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

core.int buildCounterExample = 0;
api.Example buildExample() {
  final o = api.Example();
  buildCounterExample++;
  if (buildCounterExample < 3) {
    o.name = 'foo';
    o.sourceText = 'foo';
    o.targetText = 'foo';
    o.usage = 'foo';
  }
  buildCounterExample--;
  return o;
}

void checkExample(api.Example o) {
  buildCounterExample++;
  if (buildCounterExample < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.usage!,
      unittest.equals('foo'),
    );
  }
  buildCounterExample--;
}

core.int buildCounterExportDataRequest = 0;
api.ExportDataRequest buildExportDataRequest() {
  final o = api.ExportDataRequest();
  buildCounterExportDataRequest++;
  if (buildCounterExportDataRequest < 3) {
    o.outputConfig = buildDatasetOutputConfig();
  }
  buildCounterExportDataRequest--;
  return o;
}

void checkExportDataRequest(api.ExportDataRequest o) {
  buildCounterExportDataRequest++;
  if (buildCounterExportDataRequest < 3) {
    checkDatasetOutputConfig(o.outputConfig!);
  }
  buildCounterExportDataRequest--;
}

core.int buildCounterFileInputSource = 0;
api.FileInputSource buildFileInputSource() {
  final o = api.FileInputSource();
  buildCounterFileInputSource++;
  if (buildCounterFileInputSource < 3) {
    o.content = 'foo';
    o.displayName = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterFileInputSource--;
  return o;
}

void checkFileInputSource(api.FileInputSource o) {
  buildCounterFileInputSource++;
  if (buildCounterFileInputSource < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterFileInputSource--;
}

core.int buildCounterGcsDestination = 0;
api.GcsDestination buildGcsDestination() {
  final o = api.GcsDestination();
  buildCounterGcsDestination++;
  if (buildCounterGcsDestination < 3) {
    o.outputUriPrefix = 'foo';
  }
  buildCounterGcsDestination--;
  return o;
}

void checkGcsDestination(api.GcsDestination o) {
  buildCounterGcsDestination++;
  if (buildCounterGcsDestination < 3) {
    unittest.expect(
      o.outputUriPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGcsDestination--;
}

core.int buildCounterGcsInputSource = 0;
api.GcsInputSource buildGcsInputSource() {
  final o = api.GcsInputSource();
  buildCounterGcsInputSource++;
  if (buildCounterGcsInputSource < 3) {
    o.inputUri = 'foo';
  }
  buildCounterGcsInputSource--;
  return o;
}

void checkGcsInputSource(api.GcsInputSource o) {
  buildCounterGcsInputSource++;
  if (buildCounterGcsInputSource < 3) {
    unittest.expect(
      o.inputUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGcsInputSource--;
}

core.int buildCounterGcsOutputDestination = 0;
api.GcsOutputDestination buildGcsOutputDestination() {
  final o = api.GcsOutputDestination();
  buildCounterGcsOutputDestination++;
  if (buildCounterGcsOutputDestination < 3) {
    o.outputUriPrefix = 'foo';
  }
  buildCounterGcsOutputDestination--;
  return o;
}

void checkGcsOutputDestination(api.GcsOutputDestination o) {
  buildCounterGcsOutputDestination++;
  if (buildCounterGcsOutputDestination < 3) {
    unittest.expect(
      o.outputUriPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGcsOutputDestination--;
}

core.int buildCounterGcsSource = 0;
api.GcsSource buildGcsSource() {
  final o = api.GcsSource();
  buildCounterGcsSource++;
  if (buildCounterGcsSource < 3) {
    o.inputUri = 'foo';
  }
  buildCounterGcsSource--;
  return o;
}

void checkGcsSource(api.GcsSource o) {
  buildCounterGcsSource++;
  if (buildCounterGcsSource < 3) {
    unittest.expect(
      o.inputUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGcsSource--;
}

core.int buildCounterGlossary = 0;
api.Glossary buildGlossary() {
  final o = api.Glossary();
  buildCounterGlossary++;
  if (buildCounterGlossary < 3) {
    o.displayName = 'foo';
    o.endTime = 'foo';
    o.entryCount = 42;
    o.inputConfig = buildGlossaryInputConfig();
    o.languageCodesSet = buildLanguageCodesSet();
    o.languagePair = buildLanguageCodePair();
    o.name = 'foo';
    o.submitTime = 'foo';
  }
  buildCounterGlossary--;
  return o;
}

void checkGlossary(api.Glossary o) {
  buildCounterGlossary++;
  if (buildCounterGlossary < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entryCount!,
      unittest.equals(42),
    );
    checkGlossaryInputConfig(o.inputConfig!);
    checkLanguageCodesSet(o.languageCodesSet!);
    checkLanguageCodePair(o.languagePair!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.submitTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGlossary--;
}

core.int buildCounterGlossaryConfig = 0;
api.GlossaryConfig buildGlossaryConfig() {
  final o = api.GlossaryConfig();
  buildCounterGlossaryConfig++;
  if (buildCounterGlossaryConfig < 3) {
    o.contextualTranslationEnabled = true;
    o.glossary = 'foo';
    o.ignoreCase = true;
  }
  buildCounterGlossaryConfig--;
  return o;
}

void checkGlossaryConfig(api.GlossaryConfig o) {
  buildCounterGlossaryConfig++;
  if (buildCounterGlossaryConfig < 3) {
    unittest.expect(o.contextualTranslationEnabled!, unittest.isTrue);
    unittest.expect(
      o.glossary!,
      unittest.equals('foo'),
    );
    unittest.expect(o.ignoreCase!, unittest.isTrue);
  }
  buildCounterGlossaryConfig--;
}

core.int buildCounterGlossaryEntry = 0;
api.GlossaryEntry buildGlossaryEntry() {
  final o = api.GlossaryEntry();
  buildCounterGlossaryEntry++;
  if (buildCounterGlossaryEntry < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.termsPair = buildGlossaryTermsPair();
    o.termsSet = buildGlossaryTermsSet();
  }
  buildCounterGlossaryEntry--;
  return o;
}

void checkGlossaryEntry(api.GlossaryEntry o) {
  buildCounterGlossaryEntry++;
  if (buildCounterGlossaryEntry < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGlossaryTermsPair(o.termsPair!);
    checkGlossaryTermsSet(o.termsSet!);
  }
  buildCounterGlossaryEntry--;
}

core.int buildCounterGlossaryInputConfig = 0;
api.GlossaryInputConfig buildGlossaryInputConfig() {
  final o = api.GlossaryInputConfig();
  buildCounterGlossaryInputConfig++;
  if (buildCounterGlossaryInputConfig < 3) {
    o.gcsSource = buildGcsSource();
  }
  buildCounterGlossaryInputConfig--;
  return o;
}

void checkGlossaryInputConfig(api.GlossaryInputConfig o) {
  buildCounterGlossaryInputConfig++;
  if (buildCounterGlossaryInputConfig < 3) {
    checkGcsSource(o.gcsSource!);
  }
  buildCounterGlossaryInputConfig--;
}

core.int buildCounterGlossaryTerm = 0;
api.GlossaryTerm buildGlossaryTerm() {
  final o = api.GlossaryTerm();
  buildCounterGlossaryTerm++;
  if (buildCounterGlossaryTerm < 3) {
    o.languageCode = 'foo';
    o.text = 'foo';
  }
  buildCounterGlossaryTerm--;
  return o;
}

void checkGlossaryTerm(api.GlossaryTerm o) {
  buildCounterGlossaryTerm++;
  if (buildCounterGlossaryTerm < 3) {
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGlossaryTerm--;
}

core.int buildCounterGlossaryTermsPair = 0;
api.GlossaryTermsPair buildGlossaryTermsPair() {
  final o = api.GlossaryTermsPair();
  buildCounterGlossaryTermsPair++;
  if (buildCounterGlossaryTermsPair < 3) {
    o.sourceTerm = buildGlossaryTerm();
    o.targetTerm = buildGlossaryTerm();
  }
  buildCounterGlossaryTermsPair--;
  return o;
}

void checkGlossaryTermsPair(api.GlossaryTermsPair o) {
  buildCounterGlossaryTermsPair++;
  if (buildCounterGlossaryTermsPair < 3) {
    checkGlossaryTerm(o.sourceTerm!);
    checkGlossaryTerm(o.targetTerm!);
  }
  buildCounterGlossaryTermsPair--;
}

core.List<api.GlossaryTerm> buildUnnamed17() => [
      buildGlossaryTerm(),
      buildGlossaryTerm(),
    ];

void checkUnnamed17(core.List<api.GlossaryTerm> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGlossaryTerm(o[0]);
  checkGlossaryTerm(o[1]);
}

core.int buildCounterGlossaryTermsSet = 0;
api.GlossaryTermsSet buildGlossaryTermsSet() {
  final o = api.GlossaryTermsSet();
  buildCounterGlossaryTermsSet++;
  if (buildCounterGlossaryTermsSet < 3) {
    o.terms = buildUnnamed17();
  }
  buildCounterGlossaryTermsSet--;
  return o;
}

void checkGlossaryTermsSet(api.GlossaryTermsSet o) {
  buildCounterGlossaryTermsSet++;
  if (buildCounterGlossaryTermsSet < 3) {
    checkUnnamed17(o.terms!);
  }
  buildCounterGlossaryTermsSet--;
}

core.int buildCounterImportAdaptiveMtFileRequest = 0;
api.ImportAdaptiveMtFileRequest buildImportAdaptiveMtFileRequest() {
  final o = api.ImportAdaptiveMtFileRequest();
  buildCounterImportAdaptiveMtFileRequest++;
  if (buildCounterImportAdaptiveMtFileRequest < 3) {
    o.fileInputSource = buildFileInputSource();
    o.gcsInputSource = buildGcsInputSource();
  }
  buildCounterImportAdaptiveMtFileRequest--;
  return o;
}

void checkImportAdaptiveMtFileRequest(api.ImportAdaptiveMtFileRequest o) {
  buildCounterImportAdaptiveMtFileRequest++;
  if (buildCounterImportAdaptiveMtFileRequest < 3) {
    checkFileInputSource(o.fileInputSource!);
    checkGcsInputSource(o.gcsInputSource!);
  }
  buildCounterImportAdaptiveMtFileRequest--;
}

core.int buildCounterImportAdaptiveMtFileResponse = 0;
api.ImportAdaptiveMtFileResponse buildImportAdaptiveMtFileResponse() {
  final o = api.ImportAdaptiveMtFileResponse();
  buildCounterImportAdaptiveMtFileResponse++;
  if (buildCounterImportAdaptiveMtFileResponse < 3) {
    o.adaptiveMtFile = buildAdaptiveMtFile();
  }
  buildCounterImportAdaptiveMtFileResponse--;
  return o;
}

void checkImportAdaptiveMtFileResponse(api.ImportAdaptiveMtFileResponse o) {
  buildCounterImportAdaptiveMtFileResponse++;
  if (buildCounterImportAdaptiveMtFileResponse < 3) {
    checkAdaptiveMtFile(o.adaptiveMtFile!);
  }
  buildCounterImportAdaptiveMtFileResponse--;
}

core.int buildCounterImportDataRequest = 0;
api.ImportDataRequest buildImportDataRequest() {
  final o = api.ImportDataRequest();
  buildCounterImportDataRequest++;
  if (buildCounterImportDataRequest < 3) {
    o.inputConfig = buildDatasetInputConfig();
  }
  buildCounterImportDataRequest--;
  return o;
}

void checkImportDataRequest(api.ImportDataRequest o) {
  buildCounterImportDataRequest++;
  if (buildCounterImportDataRequest < 3) {
    checkDatasetInputConfig(o.inputConfig!);
  }
  buildCounterImportDataRequest--;
}

core.int buildCounterInputConfig = 0;
api.InputConfig buildInputConfig() {
  final o = api.InputConfig();
  buildCounterInputConfig++;
  if (buildCounterInputConfig < 3) {
    o.gcsSource = buildGcsSource();
    o.mimeType = 'foo';
  }
  buildCounterInputConfig--;
  return o;
}

void checkInputConfig(api.InputConfig o) {
  buildCounterInputConfig++;
  if (buildCounterInputConfig < 3) {
    checkGcsSource(o.gcsSource!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterInputConfig--;
}

core.int buildCounterInputFile = 0;
api.InputFile buildInputFile() {
  final o = api.InputFile();
  buildCounterInputFile++;
  if (buildCounterInputFile < 3) {
    o.gcsSource = buildGcsInputSource();
    o.usage = 'foo';
  }
  buildCounterInputFile--;
  return o;
}

void checkInputFile(api.InputFile o) {
  buildCounterInputFile++;
  if (buildCounterInputFile < 3) {
    checkGcsInputSource(o.gcsSource!);
    unittest.expect(
      o.usage!,
      unittest.equals('foo'),
    );
  }
  buildCounterInputFile--;
}

core.int buildCounterLanguageCodePair = 0;
api.LanguageCodePair buildLanguageCodePair() {
  final o = api.LanguageCodePair();
  buildCounterLanguageCodePair++;
  if (buildCounterLanguageCodePair < 3) {
    o.sourceLanguageCode = 'foo';
    o.targetLanguageCode = 'foo';
  }
  buildCounterLanguageCodePair--;
  return o;
}

void checkLanguageCodePair(api.LanguageCodePair o) {
  buildCounterLanguageCodePair++;
  if (buildCounterLanguageCodePair < 3) {
    unittest.expect(
      o.sourceLanguageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetLanguageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterLanguageCodePair--;
}

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

core.int buildCounterLanguageCodesSet = 0;
api.LanguageCodesSet buildLanguageCodesSet() {
  final o = api.LanguageCodesSet();
  buildCounterLanguageCodesSet++;
  if (buildCounterLanguageCodesSet < 3) {
    o.languageCodes = buildUnnamed18();
  }
  buildCounterLanguageCodesSet--;
  return o;
}

void checkLanguageCodesSet(api.LanguageCodesSet o) {
  buildCounterLanguageCodesSet++;
  if (buildCounterLanguageCodesSet < 3) {
    checkUnnamed18(o.languageCodes!);
  }
  buildCounterLanguageCodesSet--;
}

core.List<api.AdaptiveMtDataset> buildUnnamed19() => [
      buildAdaptiveMtDataset(),
      buildAdaptiveMtDataset(),
    ];

void checkUnnamed19(core.List<api.AdaptiveMtDataset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdaptiveMtDataset(o[0]);
  checkAdaptiveMtDataset(o[1]);
}

core.int buildCounterListAdaptiveMtDatasetsResponse = 0;
api.ListAdaptiveMtDatasetsResponse buildListAdaptiveMtDatasetsResponse() {
  final o = api.ListAdaptiveMtDatasetsResponse();
  buildCounterListAdaptiveMtDatasetsResponse++;
  if (buildCounterListAdaptiveMtDatasetsResponse < 3) {
    o.adaptiveMtDatasets = buildUnnamed19();
    o.nextPageToken = 'foo';
  }
  buildCounterListAdaptiveMtDatasetsResponse--;
  return o;
}

void checkListAdaptiveMtDatasetsResponse(api.ListAdaptiveMtDatasetsResponse o) {
  buildCounterListAdaptiveMtDatasetsResponse++;
  if (buildCounterListAdaptiveMtDatasetsResponse < 3) {
    checkUnnamed19(o.adaptiveMtDatasets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAdaptiveMtDatasetsResponse--;
}

core.List<api.AdaptiveMtFile> buildUnnamed20() => [
      buildAdaptiveMtFile(),
      buildAdaptiveMtFile(),
    ];

void checkUnnamed20(core.List<api.AdaptiveMtFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdaptiveMtFile(o[0]);
  checkAdaptiveMtFile(o[1]);
}

core.int buildCounterListAdaptiveMtFilesResponse = 0;
api.ListAdaptiveMtFilesResponse buildListAdaptiveMtFilesResponse() {
  final o = api.ListAdaptiveMtFilesResponse();
  buildCounterListAdaptiveMtFilesResponse++;
  if (buildCounterListAdaptiveMtFilesResponse < 3) {
    o.adaptiveMtFiles = buildUnnamed20();
    o.nextPageToken = 'foo';
  }
  buildCounterListAdaptiveMtFilesResponse--;
  return o;
}

void checkListAdaptiveMtFilesResponse(api.ListAdaptiveMtFilesResponse o) {
  buildCounterListAdaptiveMtFilesResponse++;
  if (buildCounterListAdaptiveMtFilesResponse < 3) {
    checkUnnamed20(o.adaptiveMtFiles!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAdaptiveMtFilesResponse--;
}

core.List<api.AdaptiveMtSentence> buildUnnamed21() => [
      buildAdaptiveMtSentence(),
      buildAdaptiveMtSentence(),
    ];

void checkUnnamed21(core.List<api.AdaptiveMtSentence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdaptiveMtSentence(o[0]);
  checkAdaptiveMtSentence(o[1]);
}

core.int buildCounterListAdaptiveMtSentencesResponse = 0;
api.ListAdaptiveMtSentencesResponse buildListAdaptiveMtSentencesResponse() {
  final o = api.ListAdaptiveMtSentencesResponse();
  buildCounterListAdaptiveMtSentencesResponse++;
  if (buildCounterListAdaptiveMtSentencesResponse < 3) {
    o.adaptiveMtSentences = buildUnnamed21();
    o.nextPageToken = 'foo';
  }
  buildCounterListAdaptiveMtSentencesResponse--;
  return o;
}

void checkListAdaptiveMtSentencesResponse(
    api.ListAdaptiveMtSentencesResponse o) {
  buildCounterListAdaptiveMtSentencesResponse++;
  if (buildCounterListAdaptiveMtSentencesResponse < 3) {
    checkUnnamed21(o.adaptiveMtSentences!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAdaptiveMtSentencesResponse--;
}

core.List<api.Dataset> buildUnnamed22() => [
      buildDataset(),
      buildDataset(),
    ];

void checkUnnamed22(core.List<api.Dataset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataset(o[0]);
  checkDataset(o[1]);
}

core.int buildCounterListDatasetsResponse = 0;
api.ListDatasetsResponse buildListDatasetsResponse() {
  final o = api.ListDatasetsResponse();
  buildCounterListDatasetsResponse++;
  if (buildCounterListDatasetsResponse < 3) {
    o.datasets = buildUnnamed22();
    o.nextPageToken = 'foo';
  }
  buildCounterListDatasetsResponse--;
  return o;
}

void checkListDatasetsResponse(api.ListDatasetsResponse o) {
  buildCounterListDatasetsResponse++;
  if (buildCounterListDatasetsResponse < 3) {
    checkUnnamed22(o.datasets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDatasetsResponse--;
}

core.List<api.Example> buildUnnamed23() => [
      buildExample(),
      buildExample(),
    ];

void checkUnnamed23(core.List<api.Example> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExample(o[0]);
  checkExample(o[1]);
}

core.int buildCounterListExamplesResponse = 0;
api.ListExamplesResponse buildListExamplesResponse() {
  final o = api.ListExamplesResponse();
  buildCounterListExamplesResponse++;
  if (buildCounterListExamplesResponse < 3) {
    o.examples = buildUnnamed23();
    o.nextPageToken = 'foo';
  }
  buildCounterListExamplesResponse--;
  return o;
}

void checkListExamplesResponse(api.ListExamplesResponse o) {
  buildCounterListExamplesResponse++;
  if (buildCounterListExamplesResponse < 3) {
    checkUnnamed23(o.examples!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListExamplesResponse--;
}

core.List<api.Glossary> buildUnnamed24() => [
      buildGlossary(),
      buildGlossary(),
    ];

void checkUnnamed24(core.List<api.Glossary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGlossary(o[0]);
  checkGlossary(o[1]);
}

core.int buildCounterListGlossariesResponse = 0;
api.ListGlossariesResponse buildListGlossariesResponse() {
  final o = api.ListGlossariesResponse();
  buildCounterListGlossariesResponse++;
  if (buildCounterListGlossariesResponse < 3) {
    o.glossaries = buildUnnamed24();
    o.nextPageToken = 'foo';
  }
  buildCounterListGlossariesResponse--;
  return o;
}

void checkListGlossariesResponse(api.ListGlossariesResponse o) {
  buildCounterListGlossariesResponse++;
  if (buildCounterListGlossariesResponse < 3) {
    checkUnnamed24(o.glossaries!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListGlossariesResponse--;
}

core.List<api.GlossaryEntry> buildUnnamed25() => [
      buildGlossaryEntry(),
      buildGlossaryEntry(),
    ];

void checkUnnamed25(core.List<api.GlossaryEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGlossaryEntry(o[0]);
  checkGlossaryEntry(o[1]);
}

core.int buildCounterListGlossaryEntriesResponse = 0;
api.ListGlossaryEntriesResponse buildListGlossaryEntriesResponse() {
  final o = api.ListGlossaryEntriesResponse();
  buildCounterListGlossaryEntriesResponse++;
  if (buildCounterListGlossaryEntriesResponse < 3) {
    o.glossaryEntries = buildUnnamed25();
    o.nextPageToken = 'foo';
  }
  buildCounterListGlossaryEntriesResponse--;
  return o;
}

void checkListGlossaryEntriesResponse(api.ListGlossaryEntriesResponse o) {
  buildCounterListGlossaryEntriesResponse++;
  if (buildCounterListGlossaryEntriesResponse < 3) {
    checkUnnamed25(o.glossaryEntries!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListGlossaryEntriesResponse--;
}

core.List<api.Location> buildUnnamed26() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed26(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed26();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed26(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Model> buildUnnamed27() => [
      buildModel(),
      buildModel(),
    ];

void checkUnnamed27(core.List<api.Model> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkModel(o[0]);
  checkModel(o[1]);
}

core.int buildCounterListModelsResponse = 0;
api.ListModelsResponse buildListModelsResponse() {
  final o = api.ListModelsResponse();
  buildCounterListModelsResponse++;
  if (buildCounterListModelsResponse < 3) {
    o.models = buildUnnamed27();
    o.nextPageToken = 'foo';
  }
  buildCounterListModelsResponse--;
  return o;
}

void checkListModelsResponse(api.ListModelsResponse o) {
  buildCounterListModelsResponse++;
  if (buildCounterListModelsResponse < 3) {
    checkUnnamed27(o.models!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListModelsResponse--;
}

core.List<api.Operation> buildUnnamed28() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed28(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed28();
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
    checkUnnamed28(o.operations!);
  }
  buildCounterListOperationsResponse--;
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

core.Map<core.String, core.Object?> buildUnnamed30() => {
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

void checkUnnamed30(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed29();
    o.locationId = 'foo';
    o.metadata = buildUnnamed30();
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
    checkUnnamed29(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterModel = 0;
api.Model buildModel() {
  final o = api.Model();
  buildCounterModel++;
  if (buildCounterModel < 3) {
    o.createTime = 'foo';
    o.dataset = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.sourceLanguageCode = 'foo';
    o.targetLanguageCode = 'foo';
    o.testExampleCount = 42;
    o.trainExampleCount = 42;
    o.updateTime = 'foo';
    o.validateExampleCount = 42;
  }
  buildCounterModel--;
  return o;
}

void checkModel(api.Model o) {
  buildCounterModel++;
  if (buildCounterModel < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataset!,
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
      o.sourceLanguageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetLanguageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.testExampleCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.trainExampleCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validateExampleCount!,
      unittest.equals(42),
    );
  }
  buildCounterModel--;
}

core.Map<core.String, core.Object?> buildUnnamed31() => {
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

void checkUnnamed31(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed31();
    o.name = 'foo';
    o.response = buildUnnamed32();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed31(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOutputConfig = 0;
api.OutputConfig buildOutputConfig() {
  final o = api.OutputConfig();
  buildCounterOutputConfig++;
  if (buildCounterOutputConfig < 3) {
    o.gcsDestination = buildGcsDestination();
  }
  buildCounterOutputConfig--;
  return o;
}

void checkOutputConfig(api.OutputConfig o) {
  buildCounterOutputConfig++;
  if (buildCounterOutputConfig < 3) {
    checkGcsDestination(o.gcsDestination!);
  }
  buildCounterOutputConfig--;
}

core.List<api.ReferenceSentencePairList> buildUnnamed33() => [
      buildReferenceSentencePairList(),
      buildReferenceSentencePairList(),
    ];

void checkUnnamed33(core.List<api.ReferenceSentencePairList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReferenceSentencePairList(o[0]);
  checkReferenceSentencePairList(o[1]);
}

core.int buildCounterReferenceSentenceConfig = 0;
api.ReferenceSentenceConfig buildReferenceSentenceConfig() {
  final o = api.ReferenceSentenceConfig();
  buildCounterReferenceSentenceConfig++;
  if (buildCounterReferenceSentenceConfig < 3) {
    o.referenceSentencePairLists = buildUnnamed33();
    o.sourceLanguageCode = 'foo';
    o.targetLanguageCode = 'foo';
  }
  buildCounterReferenceSentenceConfig--;
  return o;
}

void checkReferenceSentenceConfig(api.ReferenceSentenceConfig o) {
  buildCounterReferenceSentenceConfig++;
  if (buildCounterReferenceSentenceConfig < 3) {
    checkUnnamed33(o.referenceSentencePairLists!);
    unittest.expect(
      o.sourceLanguageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetLanguageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterReferenceSentenceConfig--;
}

core.int buildCounterReferenceSentencePair = 0;
api.ReferenceSentencePair buildReferenceSentencePair() {
  final o = api.ReferenceSentencePair();
  buildCounterReferenceSentencePair++;
  if (buildCounterReferenceSentencePair < 3) {
    o.sourceSentence = 'foo';
    o.targetSentence = 'foo';
  }
  buildCounterReferenceSentencePair--;
  return o;
}

void checkReferenceSentencePair(api.ReferenceSentencePair o) {
  buildCounterReferenceSentencePair++;
  if (buildCounterReferenceSentencePair < 3) {
    unittest.expect(
      o.sourceSentence!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetSentence!,
      unittest.equals('foo'),
    );
  }
  buildCounterReferenceSentencePair--;
}

core.List<api.ReferenceSentencePair> buildUnnamed34() => [
      buildReferenceSentencePair(),
      buildReferenceSentencePair(),
    ];

void checkUnnamed34(core.List<api.ReferenceSentencePair> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReferenceSentencePair(o[0]);
  checkReferenceSentencePair(o[1]);
}

core.int buildCounterReferenceSentencePairList = 0;
api.ReferenceSentencePairList buildReferenceSentencePairList() {
  final o = api.ReferenceSentencePairList();
  buildCounterReferenceSentencePairList++;
  if (buildCounterReferenceSentencePairList < 3) {
    o.referenceSentencePairs = buildUnnamed34();
  }
  buildCounterReferenceSentencePairList--;
  return o;
}

void checkReferenceSentencePairList(api.ReferenceSentencePairList o) {
  buildCounterReferenceSentencePairList++;
  if (buildCounterReferenceSentencePairList < 3) {
    checkUnnamed34(o.referenceSentencePairs!);
  }
  buildCounterReferenceSentencePairList--;
}

core.int buildCounterRomanization = 0;
api.Romanization buildRomanization() {
  final o = api.Romanization();
  buildCounterRomanization++;
  if (buildCounterRomanization < 3) {
    o.detectedLanguageCode = 'foo';
    o.romanizedText = 'foo';
  }
  buildCounterRomanization--;
  return o;
}

void checkRomanization(api.Romanization o) {
  buildCounterRomanization++;
  if (buildCounterRomanization < 3) {
    unittest.expect(
      o.detectedLanguageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.romanizedText!,
      unittest.equals('foo'),
    );
  }
  buildCounterRomanization--;
}

core.List<core.String> buildUnnamed35() => [
      'foo',
      'foo',
    ];

void checkUnnamed35(core.List<core.String> o) {
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

core.int buildCounterRomanizeTextRequest = 0;
api.RomanizeTextRequest buildRomanizeTextRequest() {
  final o = api.RomanizeTextRequest();
  buildCounterRomanizeTextRequest++;
  if (buildCounterRomanizeTextRequest < 3) {
    o.contents = buildUnnamed35();
    o.sourceLanguageCode = 'foo';
  }
  buildCounterRomanizeTextRequest--;
  return o;
}

void checkRomanizeTextRequest(api.RomanizeTextRequest o) {
  buildCounterRomanizeTextRequest++;
  if (buildCounterRomanizeTextRequest < 3) {
    checkUnnamed35(o.contents!);
    unittest.expect(
      o.sourceLanguageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterRomanizeTextRequest--;
}

core.List<api.Romanization> buildUnnamed36() => [
      buildRomanization(),
      buildRomanization(),
    ];

void checkUnnamed36(core.List<api.Romanization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRomanization(o[0]);
  checkRomanization(o[1]);
}

core.int buildCounterRomanizeTextResponse = 0;
api.RomanizeTextResponse buildRomanizeTextResponse() {
  final o = api.RomanizeTextResponse();
  buildCounterRomanizeTextResponse++;
  if (buildCounterRomanizeTextResponse < 3) {
    o.romanizations = buildUnnamed36();
  }
  buildCounterRomanizeTextResponse--;
  return o;
}

void checkRomanizeTextResponse(api.RomanizeTextResponse o) {
  buildCounterRomanizeTextResponse++;
  if (buildCounterRomanizeTextResponse < 3) {
    checkUnnamed36(o.romanizations!);
  }
  buildCounterRomanizeTextResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed37() => {
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

void checkUnnamed37(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed38() => [
      buildUnnamed37(),
      buildUnnamed37(),
    ];

void checkUnnamed38(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed37(o[0]);
  checkUnnamed37(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed38();
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
    checkUnnamed38(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterSupportedLanguage = 0;
api.SupportedLanguage buildSupportedLanguage() {
  final o = api.SupportedLanguage();
  buildCounterSupportedLanguage++;
  if (buildCounterSupportedLanguage < 3) {
    o.displayName = 'foo';
    o.languageCode = 'foo';
    o.supportSource = true;
    o.supportTarget = true;
  }
  buildCounterSupportedLanguage--;
  return o;
}

void checkSupportedLanguage(api.SupportedLanguage o) {
  buildCounterSupportedLanguage++;
  if (buildCounterSupportedLanguage < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(o.supportSource!, unittest.isTrue);
    unittest.expect(o.supportTarget!, unittest.isTrue);
  }
  buildCounterSupportedLanguage--;
}

core.List<api.SupportedLanguage> buildUnnamed39() => [
      buildSupportedLanguage(),
      buildSupportedLanguage(),
    ];

void checkUnnamed39(core.List<api.SupportedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSupportedLanguage(o[0]);
  checkSupportedLanguage(o[1]);
}

core.int buildCounterSupportedLanguages = 0;
api.SupportedLanguages buildSupportedLanguages() {
  final o = api.SupportedLanguages();
  buildCounterSupportedLanguages++;
  if (buildCounterSupportedLanguages < 3) {
    o.languages = buildUnnamed39();
  }
  buildCounterSupportedLanguages--;
  return o;
}

void checkSupportedLanguages(api.SupportedLanguages o) {
  buildCounterSupportedLanguages++;
  if (buildCounterSupportedLanguages < 3) {
    checkUnnamed39(o.languages!);
  }
  buildCounterSupportedLanguages--;
}

core.Map<core.String, core.String> buildUnnamed40() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed40(core.Map<core.String, core.String> o) {
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

core.int buildCounterTranslateDocumentRequest = 0;
api.TranslateDocumentRequest buildTranslateDocumentRequest() {
  final o = api.TranslateDocumentRequest();
  buildCounterTranslateDocumentRequest++;
  if (buildCounterTranslateDocumentRequest < 3) {
    o.customizedAttribution = 'foo';
    o.documentInputConfig = buildDocumentInputConfig();
    o.documentOutputConfig = buildDocumentOutputConfig();
    o.enableRotationCorrection = true;
    o.enableShadowRemovalNativePdf = true;
    o.glossaryConfig = buildTranslateTextGlossaryConfig();
    o.isTranslateNativePdfOnly = true;
    o.labels = buildUnnamed40();
    o.model = 'foo';
    o.sourceLanguageCode = 'foo';
    o.targetLanguageCode = 'foo';
  }
  buildCounterTranslateDocumentRequest--;
  return o;
}

void checkTranslateDocumentRequest(api.TranslateDocumentRequest o) {
  buildCounterTranslateDocumentRequest++;
  if (buildCounterTranslateDocumentRequest < 3) {
    unittest.expect(
      o.customizedAttribution!,
      unittest.equals('foo'),
    );
    checkDocumentInputConfig(o.documentInputConfig!);
    checkDocumentOutputConfig(o.documentOutputConfig!);
    unittest.expect(o.enableRotationCorrection!, unittest.isTrue);
    unittest.expect(o.enableShadowRemovalNativePdf!, unittest.isTrue);
    checkTranslateTextGlossaryConfig(o.glossaryConfig!);
    unittest.expect(o.isTranslateNativePdfOnly!, unittest.isTrue);
    checkUnnamed40(o.labels!);
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceLanguageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetLanguageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterTranslateDocumentRequest--;
}

core.int buildCounterTranslateDocumentResponse = 0;
api.TranslateDocumentResponse buildTranslateDocumentResponse() {
  final o = api.TranslateDocumentResponse();
  buildCounterTranslateDocumentResponse++;
  if (buildCounterTranslateDocumentResponse < 3) {
    o.documentTranslation = buildDocumentTranslation();
    o.glossaryConfig = buildTranslateTextGlossaryConfig();
    o.glossaryDocumentTranslation = buildDocumentTranslation();
    o.model = 'foo';
  }
  buildCounterTranslateDocumentResponse--;
  return o;
}

void checkTranslateDocumentResponse(api.TranslateDocumentResponse o) {
  buildCounterTranslateDocumentResponse++;
  if (buildCounterTranslateDocumentResponse < 3) {
    checkDocumentTranslation(o.documentTranslation!);
    checkTranslateTextGlossaryConfig(o.glossaryConfig!);
    checkDocumentTranslation(o.glossaryDocumentTranslation!);
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
  }
  buildCounterTranslateDocumentResponse--;
}

core.int buildCounterTranslateTextGlossaryConfig = 0;
api.TranslateTextGlossaryConfig buildTranslateTextGlossaryConfig() {
  final o = api.TranslateTextGlossaryConfig();
  buildCounterTranslateTextGlossaryConfig++;
  if (buildCounterTranslateTextGlossaryConfig < 3) {
    o.contextualTranslationEnabled = true;
    o.glossary = 'foo';
    o.ignoreCase = true;
  }
  buildCounterTranslateTextGlossaryConfig--;
  return o;
}

void checkTranslateTextGlossaryConfig(api.TranslateTextGlossaryConfig o) {
  buildCounterTranslateTextGlossaryConfig++;
  if (buildCounterTranslateTextGlossaryConfig < 3) {
    unittest.expect(o.contextualTranslationEnabled!, unittest.isTrue);
    unittest.expect(
      o.glossary!,
      unittest.equals('foo'),
    );
    unittest.expect(o.ignoreCase!, unittest.isTrue);
  }
  buildCounterTranslateTextGlossaryConfig--;
}

core.List<core.String> buildUnnamed41() => [
      'foo',
      'foo',
    ];

void checkUnnamed41(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed42() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed42(core.Map<core.String, core.String> o) {
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

core.int buildCounterTranslateTextRequest = 0;
api.TranslateTextRequest buildTranslateTextRequest() {
  final o = api.TranslateTextRequest();
  buildCounterTranslateTextRequest++;
  if (buildCounterTranslateTextRequest < 3) {
    o.contents = buildUnnamed41();
    o.glossaryConfig = buildTranslateTextGlossaryConfig();
    o.labels = buildUnnamed42();
    o.mimeType = 'foo';
    o.model = 'foo';
    o.sourceLanguageCode = 'foo';
    o.targetLanguageCode = 'foo';
    o.transliterationConfig = buildTransliterationConfig();
  }
  buildCounterTranslateTextRequest--;
  return o;
}

void checkTranslateTextRequest(api.TranslateTextRequest o) {
  buildCounterTranslateTextRequest++;
  if (buildCounterTranslateTextRequest < 3) {
    checkUnnamed41(o.contents!);
    checkTranslateTextGlossaryConfig(o.glossaryConfig!);
    checkUnnamed42(o.labels!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceLanguageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetLanguageCode!,
      unittest.equals('foo'),
    );
    checkTransliterationConfig(o.transliterationConfig!);
  }
  buildCounterTranslateTextRequest--;
}

core.List<api.Translation> buildUnnamed43() => [
      buildTranslation(),
      buildTranslation(),
    ];

void checkUnnamed43(core.List<api.Translation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTranslation(o[0]);
  checkTranslation(o[1]);
}

core.List<api.Translation> buildUnnamed44() => [
      buildTranslation(),
      buildTranslation(),
    ];

void checkUnnamed44(core.List<api.Translation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTranslation(o[0]);
  checkTranslation(o[1]);
}

core.int buildCounterTranslateTextResponse = 0;
api.TranslateTextResponse buildTranslateTextResponse() {
  final o = api.TranslateTextResponse();
  buildCounterTranslateTextResponse++;
  if (buildCounterTranslateTextResponse < 3) {
    o.glossaryTranslations = buildUnnamed43();
    o.translations = buildUnnamed44();
  }
  buildCounterTranslateTextResponse--;
  return o;
}

void checkTranslateTextResponse(api.TranslateTextResponse o) {
  buildCounterTranslateTextResponse++;
  if (buildCounterTranslateTextResponse < 3) {
    checkUnnamed43(o.glossaryTranslations!);
    checkUnnamed44(o.translations!);
  }
  buildCounterTranslateTextResponse--;
}

core.int buildCounterTranslation = 0;
api.Translation buildTranslation() {
  final o = api.Translation();
  buildCounterTranslation++;
  if (buildCounterTranslation < 3) {
    o.detectedLanguageCode = 'foo';
    o.glossaryConfig = buildTranslateTextGlossaryConfig();
    o.model = 'foo';
    o.translatedText = 'foo';
  }
  buildCounterTranslation--;
  return o;
}

void checkTranslation(api.Translation o) {
  buildCounterTranslation++;
  if (buildCounterTranslation < 3) {
    unittest.expect(
      o.detectedLanguageCode!,
      unittest.equals('foo'),
    );
    checkTranslateTextGlossaryConfig(o.glossaryConfig!);
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.translatedText!,
      unittest.equals('foo'),
    );
  }
  buildCounterTranslation--;
}

core.int buildCounterTransliterationConfig = 0;
api.TransliterationConfig buildTransliterationConfig() {
  final o = api.TransliterationConfig();
  buildCounterTransliterationConfig++;
  if (buildCounterTransliterationConfig < 3) {
    o.enableTransliteration = true;
  }
  buildCounterTransliterationConfig--;
  return o;
}

void checkTransliterationConfig(api.TransliterationConfig o) {
  buildCounterTransliterationConfig++;
  if (buildCounterTransliterationConfig < 3) {
    unittest.expect(o.enableTransliteration!, unittest.isTrue);
  }
  buildCounterTransliterationConfig--;
}

core.int buildCounterWaitOperationRequest = 0;
api.WaitOperationRequest buildWaitOperationRequest() {
  final o = api.WaitOperationRequest();
  buildCounterWaitOperationRequest++;
  if (buildCounterWaitOperationRequest < 3) {
    o.timeout = 'foo';
  }
  buildCounterWaitOperationRequest--;
  return o;
}

void checkWaitOperationRequest(api.WaitOperationRequest o) {
  buildCounterWaitOperationRequest++;
  if (buildCounterWaitOperationRequest < 3) {
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
  }
  buildCounterWaitOperationRequest--;
}

void main() {
  unittest.group('obj-schema-AdaptiveMtDataset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdaptiveMtDataset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdaptiveMtDataset.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdaptiveMtDataset(od);
    });
  });

  unittest.group('obj-schema-AdaptiveMtFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdaptiveMtFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdaptiveMtFile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdaptiveMtFile(od);
    });
  });

  unittest.group('obj-schema-AdaptiveMtSentence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdaptiveMtSentence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdaptiveMtSentence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdaptiveMtSentence(od);
    });
  });

  unittest.group('obj-schema-AdaptiveMtTranslateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdaptiveMtTranslateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdaptiveMtTranslateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdaptiveMtTranslateRequest(od);
    });
  });

  unittest.group('obj-schema-AdaptiveMtTranslateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdaptiveMtTranslateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdaptiveMtTranslateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdaptiveMtTranslateResponse(od);
    });
  });

  unittest.group('obj-schema-AdaptiveMtTranslation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdaptiveMtTranslation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdaptiveMtTranslation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdaptiveMtTranslation(od);
    });
  });

  unittest.group('obj-schema-BatchDocumentInputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchDocumentInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchDocumentInputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDocumentInputConfig(od);
    });
  });

  unittest.group('obj-schema-BatchDocumentOutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchDocumentOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchDocumentOutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDocumentOutputConfig(od);
    });
  });

  unittest.group('obj-schema-BatchTranslateDocumentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchTranslateDocumentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchTranslateDocumentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchTranslateDocumentRequest(od);
    });
  });

  unittest.group('obj-schema-BatchTranslateTextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchTranslateTextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchTranslateTextRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchTranslateTextRequest(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-Dataset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Dataset.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDataset(od);
    });
  });

  unittest.group('obj-schema-DatasetInputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatasetInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatasetInputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatasetInputConfig(od);
    });
  });

  unittest.group('obj-schema-DatasetOutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatasetOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatasetOutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatasetOutputConfig(od);
    });
  });

  unittest.group('obj-schema-DetectLanguageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetectLanguageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DetectLanguageRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDetectLanguageRequest(od);
    });
  });

  unittest.group('obj-schema-DetectLanguageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetectLanguageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DetectLanguageResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDetectLanguageResponse(od);
    });
  });

  unittest.group('obj-schema-DetectedLanguage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetectedLanguage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DetectedLanguage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDetectedLanguage(od);
    });
  });

  unittest.group('obj-schema-DocumentInputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentInputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocumentInputConfig(od);
    });
  });

  unittest.group('obj-schema-DocumentOutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentOutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocumentOutputConfig(od);
    });
  });

  unittest.group('obj-schema-DocumentTranslation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentTranslation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentTranslation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocumentTranslation(od);
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

  unittest.group('obj-schema-Example', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExample();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Example.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExample(od);
    });
  });

  unittest.group('obj-schema-ExportDataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportDataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportDataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExportDataRequest(od);
    });
  });

  unittest.group('obj-schema-FileInputSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileInputSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileInputSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileInputSource(od);
    });
  });

  unittest.group('obj-schema-GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGcsDestination(od);
    });
  });

  unittest.group('obj-schema-GcsInputSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsInputSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcsInputSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGcsInputSource(od);
    });
  });

  unittest.group('obj-schema-GcsOutputDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsOutputDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcsOutputDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGcsOutputDestination(od);
    });
  });

  unittest.group('obj-schema-GcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GcsSource.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGcsSource(od);
    });
  });

  unittest.group('obj-schema-Glossary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGlossary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Glossary.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGlossary(od);
    });
  });

  unittest.group('obj-schema-GlossaryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGlossaryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GlossaryConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGlossaryConfig(od);
    });
  });

  unittest.group('obj-schema-GlossaryEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGlossaryEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GlossaryEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGlossaryEntry(od);
    });
  });

  unittest.group('obj-schema-GlossaryInputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGlossaryInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GlossaryInputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGlossaryInputConfig(od);
    });
  });

  unittest.group('obj-schema-GlossaryTerm', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGlossaryTerm();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GlossaryTerm.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGlossaryTerm(od);
    });
  });

  unittest.group('obj-schema-GlossaryTermsPair', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGlossaryTermsPair();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GlossaryTermsPair.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGlossaryTermsPair(od);
    });
  });

  unittest.group('obj-schema-GlossaryTermsSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGlossaryTermsSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GlossaryTermsSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGlossaryTermsSet(od);
    });
  });

  unittest.group('obj-schema-ImportAdaptiveMtFileRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportAdaptiveMtFileRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportAdaptiveMtFileRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportAdaptiveMtFileRequest(od);
    });
  });

  unittest.group('obj-schema-ImportAdaptiveMtFileResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportAdaptiveMtFileResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportAdaptiveMtFileResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportAdaptiveMtFileResponse(od);
    });
  });

  unittest.group('obj-schema-ImportDataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportDataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportDataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportDataRequest(od);
    });
  });

  unittest.group('obj-schema-InputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInputConfig(od);
    });
  });

  unittest.group('obj-schema-InputFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.InputFile.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInputFile(od);
    });
  });

  unittest.group('obj-schema-LanguageCodePair', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLanguageCodePair();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LanguageCodePair.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLanguageCodePair(od);
    });
  });

  unittest.group('obj-schema-LanguageCodesSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLanguageCodesSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LanguageCodesSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLanguageCodesSet(od);
    });
  });

  unittest.group('obj-schema-ListAdaptiveMtDatasetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAdaptiveMtDatasetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAdaptiveMtDatasetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAdaptiveMtDatasetsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAdaptiveMtFilesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAdaptiveMtFilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAdaptiveMtFilesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAdaptiveMtFilesResponse(od);
    });
  });

  unittest.group('obj-schema-ListAdaptiveMtSentencesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAdaptiveMtSentencesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAdaptiveMtSentencesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAdaptiveMtSentencesResponse(od);
    });
  });

  unittest.group('obj-schema-ListDatasetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDatasetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDatasetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDatasetsResponse(od);
    });
  });

  unittest.group('obj-schema-ListExamplesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListExamplesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListExamplesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListExamplesResponse(od);
    });
  });

  unittest.group('obj-schema-ListGlossariesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGlossariesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGlossariesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGlossariesResponse(od);
    });
  });

  unittest.group('obj-schema-ListGlossaryEntriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGlossaryEntriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGlossaryEntriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGlossaryEntriesResponse(od);
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

  unittest.group('obj-schema-ListModelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListModelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListModelsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListModelsResponse(od);
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

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-Model', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Model.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkModel(od);
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

  unittest.group('obj-schema-OutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOutputConfig(od);
    });
  });

  unittest.group('obj-schema-ReferenceSentenceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReferenceSentenceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReferenceSentenceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReferenceSentenceConfig(od);
    });
  });

  unittest.group('obj-schema-ReferenceSentencePair', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReferenceSentencePair();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReferenceSentencePair.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReferenceSentencePair(od);
    });
  });

  unittest.group('obj-schema-ReferenceSentencePairList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReferenceSentencePairList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReferenceSentencePairList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReferenceSentencePairList(od);
    });
  });

  unittest.group('obj-schema-Romanization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRomanization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Romanization.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRomanization(od);
    });
  });

  unittest.group('obj-schema-RomanizeTextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRomanizeTextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RomanizeTextRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRomanizeTextRequest(od);
    });
  });

  unittest.group('obj-schema-RomanizeTextResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRomanizeTextResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RomanizeTextResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRomanizeTextResponse(od);
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

  unittest.group('obj-schema-SupportedLanguage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSupportedLanguage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SupportedLanguage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSupportedLanguage(od);
    });
  });

  unittest.group('obj-schema-SupportedLanguages', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSupportedLanguages();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SupportedLanguages.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSupportedLanguages(od);
    });
  });

  unittest.group('obj-schema-TranslateDocumentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTranslateDocumentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TranslateDocumentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTranslateDocumentRequest(od);
    });
  });

  unittest.group('obj-schema-TranslateDocumentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTranslateDocumentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TranslateDocumentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTranslateDocumentResponse(od);
    });
  });

  unittest.group('obj-schema-TranslateTextGlossaryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTranslateTextGlossaryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TranslateTextGlossaryConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTranslateTextGlossaryConfig(od);
    });
  });

  unittest.group('obj-schema-TranslateTextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTranslateTextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TranslateTextRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTranslateTextRequest(od);
    });
  });

  unittest.group('obj-schema-TranslateTextResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTranslateTextResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TranslateTextResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTranslateTextResponse(od);
    });
  });

  unittest.group('obj-schema-Translation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTranslation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Translation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTranslation(od);
    });
  });

  unittest.group('obj-schema-TransliterationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransliterationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransliterationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransliterationConfig(od);
    });
  });

  unittest.group('obj-schema-WaitOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWaitOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WaitOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWaitOperationRequest(od);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--detectLanguage', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects;
      final arg_request = buildDetectLanguageRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DetectLanguageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDetectLanguageRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildDetectLanguageResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.detectLanguage(arg_request, arg_parent,
          $fields: arg_$fields);
      checkDetectLanguageResponse(response as api.DetectLanguageResponse);
    });

    unittest.test('method--getSupportedLanguages', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects;
      final arg_parent = 'foo';
      final arg_displayLanguageCode = 'foo';
      final arg_model = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['displayLanguageCode']!.first,
          unittest.equals(arg_displayLanguageCode),
        );
        unittest.expect(
          queryMap['model']!.first,
          unittest.equals(arg_model),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSupportedLanguages());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getSupportedLanguages(arg_parent,
          displayLanguageCode: arg_displayLanguageCode,
          model: arg_model,
          $fields: arg_$fields);
      checkSupportedLanguages(response as api.SupportedLanguages);
    });

    unittest.test('method--romanizeText', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects;
      final arg_request = buildRomanizeTextRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RomanizeTextRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRomanizeTextRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildRomanizeTextResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.romanizeText(arg_request, arg_parent, $fields: arg_$fields);
      checkRomanizeTextResponse(response as api.RomanizeTextResponse);
    });

    unittest.test('method--translateText', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects;
      final arg_request = buildTranslateTextRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TranslateTextRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTranslateTextRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildTranslateTextResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.translateText(arg_request, arg_parent,
          $fields: arg_$fields);
      checkTranslateTextResponse(response as api.TranslateTextResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--adaptiveMtTranslate', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations;
      final arg_request = buildAdaptiveMtTranslateRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AdaptiveMtTranslateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAdaptiveMtTranslateRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildAdaptiveMtTranslateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.adaptiveMtTranslate(arg_request, arg_parent,
          $fields: arg_$fields);
      checkAdaptiveMtTranslateResponse(
          response as api.AdaptiveMtTranslateResponse);
    });

    unittest.test('method--batchTranslateDocument', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations;
      final arg_request = buildBatchTranslateDocumentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchTranslateDocumentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchTranslateDocumentRequest(obj);

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
          unittest.equals('v3/'),
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
      final response = await res.batchTranslateDocument(arg_request, arg_parent,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--batchTranslateText', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations;
      final arg_request = buildBatchTranslateTextRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchTranslateTextRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchTranslateTextRequest(obj);

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
          unittest.equals('v3/'),
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
      final response = await res.batchTranslateText(arg_request, arg_parent,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--detectLanguage', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations;
      final arg_request = buildDetectLanguageRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DetectLanguageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDetectLanguageRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildDetectLanguageResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.detectLanguage(arg_request, arg_parent,
          $fields: arg_$fields);
      checkDetectLanguageResponse(response as api.DetectLanguageResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations;
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
          unittest.equals('v3/'),
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

    unittest.test('method--getSupportedLanguages', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations;
      final arg_parent = 'foo';
      final arg_displayLanguageCode = 'foo';
      final arg_model = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['displayLanguageCode']!.first,
          unittest.equals(arg_displayLanguageCode),
        );
        unittest.expect(
          queryMap['model']!.first,
          unittest.equals(arg_model),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSupportedLanguages());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getSupportedLanguages(arg_parent,
          displayLanguageCode: arg_displayLanguageCode,
          model: arg_model,
          $fields: arg_$fields);
      checkSupportedLanguages(response as api.SupportedLanguages);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations;
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
          unittest.equals('v3/'),
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

    unittest.test('method--romanizeText', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations;
      final arg_request = buildRomanizeTextRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RomanizeTextRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRomanizeTextRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildRomanizeTextResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.romanizeText(arg_request, arg_parent, $fields: arg_$fields);
      checkRomanizeTextResponse(response as api.RomanizeTextResponse);
    });

    unittest.test('method--translateDocument', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations;
      final arg_request = buildTranslateDocumentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TranslateDocumentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTranslateDocumentRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildTranslateDocumentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.translateDocument(arg_request, arg_parent,
          $fields: arg_$fields);
      checkTranslateDocumentResponse(response as api.TranslateDocumentResponse);
    });

    unittest.test('method--translateText', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations;
      final arg_request = buildTranslateTextRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TranslateTextRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTranslateTextRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildTranslateTextResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.translateText(arg_request, arg_parent,
          $fields: arg_$fields);
      checkTranslateTextResponse(response as api.TranslateTextResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAdaptiveMtDatasetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.adaptiveMtDatasets;
      final arg_request = buildAdaptiveMtDataset();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AdaptiveMtDataset.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAdaptiveMtDataset(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildAdaptiveMtDataset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkAdaptiveMtDataset(response as api.AdaptiveMtDataset);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.adaptiveMtDatasets;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.adaptiveMtDatasets;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildAdaptiveMtDataset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAdaptiveMtDataset(response as api.AdaptiveMtDataset);
    });

    unittest.test('method--importAdaptiveMtFile', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.adaptiveMtDatasets;
      final arg_request = buildImportAdaptiveMtFileRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ImportAdaptiveMtFileRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkImportAdaptiveMtFileRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildImportAdaptiveMtFileResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.importAdaptiveMtFile(arg_request, arg_parent,
          $fields: arg_$fields);
      checkImportAdaptiveMtFileResponse(
          response as api.ImportAdaptiveMtFileResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.adaptiveMtDatasets;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildListAdaptiveMtDatasetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAdaptiveMtDatasetsResponse(
          response as api.ListAdaptiveMtDatasetsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesResource',
      () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock)
          .projects
          .locations
          .adaptiveMtDatasets
          .adaptiveMtFiles;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock)
          .projects
          .locations
          .adaptiveMtDatasets
          .adaptiveMtFiles;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildAdaptiveMtFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAdaptiveMtFile(response as api.AdaptiveMtFile);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock)
          .projects
          .locations
          .adaptiveMtDatasets
          .adaptiveMtFiles;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildListAdaptiveMtFilesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAdaptiveMtFilesResponse(
          response as api.ListAdaptiveMtFilesResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsAdaptiveMtDatasetsAdaptiveMtFilesAdaptiveMtSentencesResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock)
          .projects
          .locations
          .adaptiveMtDatasets
          .adaptiveMtFiles
          .adaptiveMtSentences;
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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildListAdaptiveMtSentencesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAdaptiveMtSentencesResponse(
          response as api.ListAdaptiveMtSentencesResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsAdaptiveMtDatasetsAdaptiveMtSentencesResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock)
          .projects
          .locations
          .adaptiveMtDatasets
          .adaptiveMtSentences;
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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildListAdaptiveMtSentencesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAdaptiveMtSentencesResponse(
          response as api.ListAdaptiveMtSentencesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDatasetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.datasets;
      final arg_request = buildDataset();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Dataset.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDataset(obj);

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
          unittest.equals('v3/'),
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
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.datasets;
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
          unittest.equals('v3/'),
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--exportData', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.datasets;
      final arg_request = buildExportDataRequest();
      final arg_dataset = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExportDataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExportDataRequest(obj);

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
          unittest.equals('v3/'),
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
          await res.exportData(arg_request, arg_dataset, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.datasets;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildDataset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDataset(response as api.Dataset);
    });

    unittest.test('method--importData', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.datasets;
      final arg_request = buildImportDataRequest();
      final arg_dataset = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ImportDataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkImportDataRequest(obj);

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
          unittest.equals('v3/'),
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
          await res.importData(arg_request, arg_dataset, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.datasets;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildListDatasetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDatasetsResponse(response as api.ListDatasetsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDatasetsExamplesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.datasets.examples;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildListExamplesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListExamplesResponse(response as api.ListExamplesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsGlossariesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.glossaries;
      final arg_request = buildGlossary();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Glossary.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGlossary(obj);

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
          unittest.equals('v3/'),
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
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.glossaries;
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
          unittest.equals('v3/'),
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.glossaries;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGlossary());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGlossary(response as api.Glossary);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.glossaries;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildListGlossariesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListGlossariesResponse(response as api.ListGlossariesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.glossaries;
      final arg_request = buildGlossary();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Glossary.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGlossary(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsGlossariesGlossaryEntriesResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.TranslateApi(mock).projects.locations.glossaries.glossaryEntries;
      final arg_request = buildGlossaryEntry();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GlossaryEntry.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGlossaryEntry(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGlossaryEntry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGlossaryEntry(response as api.GlossaryEntry);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.TranslateApi(mock).projects.locations.glossaries.glossaryEntries;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.TranslateApi(mock).projects.locations.glossaries.glossaryEntries;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGlossaryEntry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGlossaryEntry(response as api.GlossaryEntry);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.TranslateApi(mock).projects.locations.glossaries.glossaryEntries;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildListGlossaryEntriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListGlossaryEntriesResponse(
          response as api.ListGlossaryEntriesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.TranslateApi(mock).projects.locations.glossaries.glossaryEntries;
      final arg_request = buildGlossaryEntry();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GlossaryEntry.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGlossaryEntry(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGlossaryEntry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGlossaryEntry(response as api.GlossaryEntry);
    });
  });

  unittest.group('resource-ProjectsLocationsModelsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.models;
      final arg_request = buildModel();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Model.fromJson(json as core.Map<core.String, core.dynamic>);
        checkModel(obj);

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
          unittest.equals('v3/'),
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
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.models;
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
          unittest.equals('v3/'),
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.models;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildModel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkModel(response as api.Model);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.models;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildListModelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListModelsResponse(response as api.ListModelsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.operations;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.operations;
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
          unittest.equals('v3/'),
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
      final res = api.TranslateApi(mock).projects.locations.operations;
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
          unittest.equals('v3/'),
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

    unittest.test('method--wait', () async {
      final mock = HttpServerMock();
      final res = api.TranslateApi(mock).projects.locations.operations;
      final arg_request = buildWaitOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WaitOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWaitOperationRequest(obj);

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
          unittest.equals('v3/'),
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
          await res.wait(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
