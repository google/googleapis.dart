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

import 'package:googleapis/translate/v3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.Map<core.String, api.TranslateTextGlossaryConfig> buildUnnamed0() => {
      'x': buildTranslateTextGlossaryConfig(),
      'y': buildTranslateTextGlossaryConfig(),
    };

void checkUnnamed0(core.Map<core.String, api.TranslateTextGlossaryConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTranslateTextGlossaryConfig(o['x']!);
  checkTranslateTextGlossaryConfig(o['y']!);
}

core.List<api.InputConfig> buildUnnamed1() => [
      buildInputConfig(),
      buildInputConfig(),
    ];

void checkUnnamed1(core.List<api.InputConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInputConfig(o[0]);
  checkInputConfig(o[1]);
}

core.Map<core.String, core.String> buildUnnamed2() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2(core.Map<core.String, core.String> o) {
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

core.int buildCounterBatchTranslateTextRequest = 0;
api.BatchTranslateTextRequest buildBatchTranslateTextRequest() {
  final o = api.BatchTranslateTextRequest();
  buildCounterBatchTranslateTextRequest++;
  if (buildCounterBatchTranslateTextRequest < 3) {
    o.glossaries = buildUnnamed0();
    o.inputConfigs = buildUnnamed1();
    o.labels = buildUnnamed2();
    o.models = buildUnnamed3();
    o.outputConfig = buildOutputConfig();
    o.sourceLanguageCode = 'foo';
    o.targetLanguageCodes = buildUnnamed4();
  }
  buildCounterBatchTranslateTextRequest--;
  return o;
}

void checkBatchTranslateTextRequest(api.BatchTranslateTextRequest o) {
  buildCounterBatchTranslateTextRequest++;
  if (buildCounterBatchTranslateTextRequest < 3) {
    checkUnnamed0(o.glossaries!);
    checkUnnamed1(o.inputConfigs!);
    checkUnnamed2(o.labels!);
    checkUnnamed3(o.models!);
    checkOutputConfig(o.outputConfig!);
    unittest.expect(
      o.sourceLanguageCode!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.targetLanguageCodes!);
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

core.int buildCounterDetectLanguageRequest = 0;
api.DetectLanguageRequest buildDetectLanguageRequest() {
  final o = api.DetectLanguageRequest();
  buildCounterDetectLanguageRequest++;
  if (buildCounterDetectLanguageRequest < 3) {
    o.content = 'foo';
    o.labels = buildUnnamed5();
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
    checkUnnamed5(o.labels!);
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

core.List<api.DetectedLanguage> buildUnnamed6() => [
      buildDetectedLanguage(),
      buildDetectedLanguage(),
    ];

void checkUnnamed6(core.List<api.DetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetectedLanguage(o[0]);
  checkDetectedLanguage(o[1]);
}

core.int buildCounterDetectLanguageResponse = 0;
api.DetectLanguageResponse buildDetectLanguageResponse() {
  final o = api.DetectLanguageResponse();
  buildCounterDetectLanguageResponse++;
  if (buildCounterDetectLanguageResponse < 3) {
    o.languages = buildUnnamed6();
  }
  buildCounterDetectLanguageResponse--;
  return o;
}

void checkDetectLanguageResponse(api.DetectLanguageResponse o) {
  buildCounterDetectLanguageResponse++;
  if (buildCounterDetectLanguageResponse < 3) {
    checkUnnamed6(o.languages!);
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

core.int buildCounterLanguageCodesSet = 0;
api.LanguageCodesSet buildLanguageCodesSet() {
  final o = api.LanguageCodesSet();
  buildCounterLanguageCodesSet++;
  if (buildCounterLanguageCodesSet < 3) {
    o.languageCodes = buildUnnamed7();
  }
  buildCounterLanguageCodesSet--;
  return o;
}

void checkLanguageCodesSet(api.LanguageCodesSet o) {
  buildCounterLanguageCodesSet++;
  if (buildCounterLanguageCodesSet < 3) {
    checkUnnamed7(o.languageCodes!);
  }
  buildCounterLanguageCodesSet--;
}

core.List<api.Glossary> buildUnnamed8() => [
      buildGlossary(),
      buildGlossary(),
    ];

void checkUnnamed8(core.List<api.Glossary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGlossary(o[0]);
  checkGlossary(o[1]);
}

core.int buildCounterListGlossariesResponse = 0;
api.ListGlossariesResponse buildListGlossariesResponse() {
  final o = api.ListGlossariesResponse();
  buildCounterListGlossariesResponse++;
  if (buildCounterListGlossariesResponse < 3) {
    o.glossaries = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterListGlossariesResponse--;
  return o;
}

void checkListGlossariesResponse(api.ListGlossariesResponse o) {
  buildCounterListGlossariesResponse++;
  if (buildCounterListGlossariesResponse < 3) {
    checkUnnamed8(o.glossaries!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListGlossariesResponse--;
}

core.List<api.Location> buildUnnamed9() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed9(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed9();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed9(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed10() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed10(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed10();
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
    checkUnnamed10(o.operations!);
  }
  buildCounterListOperationsResponse--;
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

core.Map<core.String, core.Object> buildUnnamed12() => {
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

void checkUnnamed12(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed11();
    o.locationId = 'foo';
    o.metadata = buildUnnamed12();
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
    checkUnnamed11(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.Map<core.String, core.Object> buildUnnamed13() => {
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

void checkUnnamed13(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed14() => {
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

void checkUnnamed14(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed13();
    o.name = 'foo';
    o.response = buildUnnamed14();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed13(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.response!);
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

core.Map<core.String, core.Object> buildUnnamed15() => {
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

void checkUnnamed15(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed16() => [
      buildUnnamed15(),
      buildUnnamed15(),
    ];

void checkUnnamed16(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed15(o[0]);
  checkUnnamed15(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed16();
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
    checkUnnamed16(o.details!);
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

core.List<api.SupportedLanguage> buildUnnamed17() => [
      buildSupportedLanguage(),
      buildSupportedLanguage(),
    ];

void checkUnnamed17(core.List<api.SupportedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSupportedLanguage(o[0]);
  checkSupportedLanguage(o[1]);
}

core.int buildCounterSupportedLanguages = 0;
api.SupportedLanguages buildSupportedLanguages() {
  final o = api.SupportedLanguages();
  buildCounterSupportedLanguages++;
  if (buildCounterSupportedLanguages < 3) {
    o.languages = buildUnnamed17();
  }
  buildCounterSupportedLanguages--;
  return o;
}

void checkSupportedLanguages(api.SupportedLanguages o) {
  buildCounterSupportedLanguages++;
  if (buildCounterSupportedLanguages < 3) {
    checkUnnamed17(o.languages!);
  }
  buildCounterSupportedLanguages--;
}

core.int buildCounterTranslateTextGlossaryConfig = 0;
api.TranslateTextGlossaryConfig buildTranslateTextGlossaryConfig() {
  final o = api.TranslateTextGlossaryConfig();
  buildCounterTranslateTextGlossaryConfig++;
  if (buildCounterTranslateTextGlossaryConfig < 3) {
    o.glossary = 'foo';
    o.ignoreCase = true;
  }
  buildCounterTranslateTextGlossaryConfig--;
  return o;
}

void checkTranslateTextGlossaryConfig(api.TranslateTextGlossaryConfig o) {
  buildCounterTranslateTextGlossaryConfig++;
  if (buildCounterTranslateTextGlossaryConfig < 3) {
    unittest.expect(
      o.glossary!,
      unittest.equals('foo'),
    );
    unittest.expect(o.ignoreCase!, unittest.isTrue);
  }
  buildCounterTranslateTextGlossaryConfig--;
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

core.int buildCounterTranslateTextRequest = 0;
api.TranslateTextRequest buildTranslateTextRequest() {
  final o = api.TranslateTextRequest();
  buildCounterTranslateTextRequest++;
  if (buildCounterTranslateTextRequest < 3) {
    o.contents = buildUnnamed18();
    o.glossaryConfig = buildTranslateTextGlossaryConfig();
    o.labels = buildUnnamed19();
    o.mimeType = 'foo';
    o.model = 'foo';
    o.sourceLanguageCode = 'foo';
    o.targetLanguageCode = 'foo';
  }
  buildCounterTranslateTextRequest--;
  return o;
}

void checkTranslateTextRequest(api.TranslateTextRequest o) {
  buildCounterTranslateTextRequest++;
  if (buildCounterTranslateTextRequest < 3) {
    checkUnnamed18(o.contents!);
    checkTranslateTextGlossaryConfig(o.glossaryConfig!);
    checkUnnamed19(o.labels!);
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
  }
  buildCounterTranslateTextRequest--;
}

core.List<api.Translation> buildUnnamed20() => [
      buildTranslation(),
      buildTranslation(),
    ];

void checkUnnamed20(core.List<api.Translation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTranslation(o[0]);
  checkTranslation(o[1]);
}

core.List<api.Translation> buildUnnamed21() => [
      buildTranslation(),
      buildTranslation(),
    ];

void checkUnnamed21(core.List<api.Translation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTranslation(o[0]);
  checkTranslation(o[1]);
}

core.int buildCounterTranslateTextResponse = 0;
api.TranslateTextResponse buildTranslateTextResponse() {
  final o = api.TranslateTextResponse();
  buildCounterTranslateTextResponse++;
  if (buildCounterTranslateTextResponse < 3) {
    o.glossaryTranslations = buildUnnamed20();
    o.translations = buildUnnamed21();
  }
  buildCounterTranslateTextResponse--;
  return o;
}

void checkTranslateTextResponse(api.TranslateTextResponse o) {
  buildCounterTranslateTextResponse++;
  if (buildCounterTranslateTextResponse < 3) {
    checkUnnamed20(o.glossaryTranslations!);
    checkUnnamed21(o.translations!);
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

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
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

  unittest.group('obj-schema-GlossaryInputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGlossaryInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GlossaryInputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGlossaryInputConfig(od);
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

  unittest.group('obj-schema-ListGlossariesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGlossariesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGlossariesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGlossariesResponse(od);
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

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
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

        final path = (req.url).path;
        var pathOffset = 0;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final path = (req.url).path;
        var pathOffset = 0;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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

        final path = (req.url).path;
        var pathOffset = 0;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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

        final path = (req.url).path;
        var pathOffset = 0;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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

        final path = (req.url).path;
        var pathOffset = 0;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final path = (req.url).path;
        var pathOffset = 0;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final path = (req.url).path;
        var pathOffset = 0;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final path = (req.url).path;
        var pathOffset = 0;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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

        final path = (req.url).path;
        var pathOffset = 0;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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

        final path = (req.url).path;
        var pathOffset = 0;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final path = (req.url).path;
        var pathOffset = 0;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final path = (req.url).path;
        var pathOffset = 0;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final path = (req.url).path;
        var pathOffset = 0;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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

        final path = (req.url).path;
        var pathOffset = 0;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final path = (req.url).path;
        var pathOffset = 0;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final path = (req.url).path;
        var pathOffset = 0;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final path = (req.url).path;
        var pathOffset = 0;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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

        final path = (req.url).path;
        var pathOffset = 0;
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

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
