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

import 'package:googleapis/language/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAnalyzeEntitiesRequest = 0;
api.AnalyzeEntitiesRequest buildAnalyzeEntitiesRequest() {
  final o = api.AnalyzeEntitiesRequest();
  buildCounterAnalyzeEntitiesRequest++;
  if (buildCounterAnalyzeEntitiesRequest < 3) {
    o.document = buildDocument();
    o.encodingType = 'foo';
  }
  buildCounterAnalyzeEntitiesRequest--;
  return o;
}

void checkAnalyzeEntitiesRequest(api.AnalyzeEntitiesRequest o) {
  buildCounterAnalyzeEntitiesRequest++;
  if (buildCounterAnalyzeEntitiesRequest < 3) {
    checkDocument(o.document!);
    unittest.expect(o.encodingType!, unittest.equals('foo'));
  }
  buildCounterAnalyzeEntitiesRequest--;
}

core.List<api.Entity> buildUnnamed0() => [buildEntity(), buildEntity()];

void checkUnnamed0(core.List<api.Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntity(o[0]);
  checkEntity(o[1]);
}

core.int buildCounterAnalyzeEntitiesResponse = 0;
api.AnalyzeEntitiesResponse buildAnalyzeEntitiesResponse() {
  final o = api.AnalyzeEntitiesResponse();
  buildCounterAnalyzeEntitiesResponse++;
  if (buildCounterAnalyzeEntitiesResponse < 3) {
    o.entities = buildUnnamed0();
    o.languageCode = 'foo';
    o.languageSupported = true;
  }
  buildCounterAnalyzeEntitiesResponse--;
  return o;
}

void checkAnalyzeEntitiesResponse(api.AnalyzeEntitiesResponse o) {
  buildCounterAnalyzeEntitiesResponse++;
  if (buildCounterAnalyzeEntitiesResponse < 3) {
    checkUnnamed0(o.entities!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.languageSupported!, unittest.isTrue);
  }
  buildCounterAnalyzeEntitiesResponse--;
}

core.int buildCounterAnalyzeSentimentRequest = 0;
api.AnalyzeSentimentRequest buildAnalyzeSentimentRequest() {
  final o = api.AnalyzeSentimentRequest();
  buildCounterAnalyzeSentimentRequest++;
  if (buildCounterAnalyzeSentimentRequest < 3) {
    o.document = buildDocument();
    o.encodingType = 'foo';
  }
  buildCounterAnalyzeSentimentRequest--;
  return o;
}

void checkAnalyzeSentimentRequest(api.AnalyzeSentimentRequest o) {
  buildCounterAnalyzeSentimentRequest++;
  if (buildCounterAnalyzeSentimentRequest < 3) {
    checkDocument(o.document!);
    unittest.expect(o.encodingType!, unittest.equals('foo'));
  }
  buildCounterAnalyzeSentimentRequest--;
}

core.List<api.Sentence> buildUnnamed1() => [buildSentence(), buildSentence()];

void checkUnnamed1(core.List<api.Sentence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSentence(o[0]);
  checkSentence(o[1]);
}

core.int buildCounterAnalyzeSentimentResponse = 0;
api.AnalyzeSentimentResponse buildAnalyzeSentimentResponse() {
  final o = api.AnalyzeSentimentResponse();
  buildCounterAnalyzeSentimentResponse++;
  if (buildCounterAnalyzeSentimentResponse < 3) {
    o.documentSentiment = buildSentiment();
    o.languageCode = 'foo';
    o.languageSupported = true;
    o.sentences = buildUnnamed1();
  }
  buildCounterAnalyzeSentimentResponse--;
  return o;
}

void checkAnalyzeSentimentResponse(api.AnalyzeSentimentResponse o) {
  buildCounterAnalyzeSentimentResponse++;
  if (buildCounterAnalyzeSentimentResponse < 3) {
    checkSentiment(o.documentSentiment!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.languageSupported!, unittest.isTrue);
    checkUnnamed1(o.sentences!);
  }
  buildCounterAnalyzeSentimentResponse--;
}

core.int buildCounterAnnotateTextRequest = 0;
api.AnnotateTextRequest buildAnnotateTextRequest() {
  final o = api.AnnotateTextRequest();
  buildCounterAnnotateTextRequest++;
  if (buildCounterAnnotateTextRequest < 3) {
    o.document = buildDocument();
    o.encodingType = 'foo';
    o.features = buildAnnotateTextRequestFeatures();
  }
  buildCounterAnnotateTextRequest--;
  return o;
}

void checkAnnotateTextRequest(api.AnnotateTextRequest o) {
  buildCounterAnnotateTextRequest++;
  if (buildCounterAnnotateTextRequest < 3) {
    checkDocument(o.document!);
    unittest.expect(o.encodingType!, unittest.equals('foo'));
    checkAnnotateTextRequestFeatures(o.features!);
  }
  buildCounterAnnotateTextRequest--;
}

core.int buildCounterAnnotateTextRequestFeatures = 0;
api.AnnotateTextRequestFeatures buildAnnotateTextRequestFeatures() {
  final o = api.AnnotateTextRequestFeatures();
  buildCounterAnnotateTextRequestFeatures++;
  if (buildCounterAnnotateTextRequestFeatures < 3) {
    o.classifyText = true;
    o.extractDocumentSentiment = true;
    o.extractEntities = true;
    o.moderateText = true;
  }
  buildCounterAnnotateTextRequestFeatures--;
  return o;
}

void checkAnnotateTextRequestFeatures(api.AnnotateTextRequestFeatures o) {
  buildCounterAnnotateTextRequestFeatures++;
  if (buildCounterAnnotateTextRequestFeatures < 3) {
    unittest.expect(o.classifyText!, unittest.isTrue);
    unittest.expect(o.extractDocumentSentiment!, unittest.isTrue);
    unittest.expect(o.extractEntities!, unittest.isTrue);
    unittest.expect(o.moderateText!, unittest.isTrue);
  }
  buildCounterAnnotateTextRequestFeatures--;
}

core.List<api.ClassificationCategory> buildUnnamed2() => [
  buildClassificationCategory(),
  buildClassificationCategory(),
];

void checkUnnamed2(core.List<api.ClassificationCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClassificationCategory(o[0]);
  checkClassificationCategory(o[1]);
}

core.List<api.Entity> buildUnnamed3() => [buildEntity(), buildEntity()];

void checkUnnamed3(core.List<api.Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntity(o[0]);
  checkEntity(o[1]);
}

core.List<api.ClassificationCategory> buildUnnamed4() => [
  buildClassificationCategory(),
  buildClassificationCategory(),
];

void checkUnnamed4(core.List<api.ClassificationCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClassificationCategory(o[0]);
  checkClassificationCategory(o[1]);
}

core.List<api.Sentence> buildUnnamed5() => [buildSentence(), buildSentence()];

void checkUnnamed5(core.List<api.Sentence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSentence(o[0]);
  checkSentence(o[1]);
}

core.int buildCounterAnnotateTextResponse = 0;
api.AnnotateTextResponse buildAnnotateTextResponse() {
  final o = api.AnnotateTextResponse();
  buildCounterAnnotateTextResponse++;
  if (buildCounterAnnotateTextResponse < 3) {
    o.categories = buildUnnamed2();
    o.documentSentiment = buildSentiment();
    o.entities = buildUnnamed3();
    o.languageCode = 'foo';
    o.languageSupported = true;
    o.moderationCategories = buildUnnamed4();
    o.sentences = buildUnnamed5();
  }
  buildCounterAnnotateTextResponse--;
  return o;
}

void checkAnnotateTextResponse(api.AnnotateTextResponse o) {
  buildCounterAnnotateTextResponse++;
  if (buildCounterAnnotateTextResponse < 3) {
    checkUnnamed2(o.categories!);
    checkSentiment(o.documentSentiment!);
    checkUnnamed3(o.entities!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.languageSupported!, unittest.isTrue);
    checkUnnamed4(o.moderationCategories!);
    checkUnnamed5(o.sentences!);
  }
  buildCounterAnnotateTextResponse--;
}

core.int buildCounterClassificationCategory = 0;
api.ClassificationCategory buildClassificationCategory() {
  final o = api.ClassificationCategory();
  buildCounterClassificationCategory++;
  if (buildCounterClassificationCategory < 3) {
    o.confidence = 42.0;
    o.name = 'foo';
    o.severity = 42.0;
  }
  buildCounterClassificationCategory--;
  return o;
}

void checkClassificationCategory(api.ClassificationCategory o) {
  buildCounterClassificationCategory++;
  if (buildCounterClassificationCategory < 3) {
    unittest.expect(o.confidence!, unittest.equals(42.0));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals(42.0));
  }
  buildCounterClassificationCategory--;
}

core.int buildCounterClassifyTextRequest = 0;
api.ClassifyTextRequest buildClassifyTextRequest() {
  final o = api.ClassifyTextRequest();
  buildCounterClassifyTextRequest++;
  if (buildCounterClassifyTextRequest < 3) {
    o.document = buildDocument();
  }
  buildCounterClassifyTextRequest--;
  return o;
}

void checkClassifyTextRequest(api.ClassifyTextRequest o) {
  buildCounterClassifyTextRequest++;
  if (buildCounterClassifyTextRequest < 3) {
    checkDocument(o.document!);
  }
  buildCounterClassifyTextRequest--;
}

core.List<api.ClassificationCategory> buildUnnamed6() => [
  buildClassificationCategory(),
  buildClassificationCategory(),
];

void checkUnnamed6(core.List<api.ClassificationCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClassificationCategory(o[0]);
  checkClassificationCategory(o[1]);
}

core.int buildCounterClassifyTextResponse = 0;
api.ClassifyTextResponse buildClassifyTextResponse() {
  final o = api.ClassifyTextResponse();
  buildCounterClassifyTextResponse++;
  if (buildCounterClassifyTextResponse < 3) {
    o.categories = buildUnnamed6();
    o.languageCode = 'foo';
    o.languageSupported = true;
  }
  buildCounterClassifyTextResponse--;
  return o;
}

void checkClassifyTextResponse(api.ClassifyTextResponse o) {
  buildCounterClassifyTextResponse++;
  if (buildCounterClassifyTextResponse < 3) {
    checkUnnamed6(o.categories!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.languageSupported!, unittest.isTrue);
  }
  buildCounterClassifyTextResponse--;
}

core.int buildCounterDocument = 0;
api.Document buildDocument() {
  final o = api.Document();
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    o.content = 'foo';
    o.gcsContentUri = 'foo';
    o.languageCode = 'foo';
    o.type = 'foo';
  }
  buildCounterDocument--;
  return o;
}

void checkDocument(api.Document o) {
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
    unittest.expect(o.gcsContentUri!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterDocument--;
}

core.List<api.EntityMention> buildUnnamed7() => [
  buildEntityMention(),
  buildEntityMention(),
];

void checkUnnamed7(core.List<api.EntityMention> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityMention(o[0]);
  checkEntityMention(o[1]);
}

core.Map<core.String, core.String> buildUnnamed8() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed8(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterEntity = 0;
api.Entity buildEntity() {
  final o = api.Entity();
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    o.mentions = buildUnnamed7();
    o.metadata = buildUnnamed8();
    o.name = 'foo';
    o.sentiment = buildSentiment();
    o.type = 'foo';
  }
  buildCounterEntity--;
  return o;
}

void checkEntity(api.Entity o) {
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    checkUnnamed7(o.mentions!);
    checkUnnamed8(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkSentiment(o.sentiment!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterEntity--;
}

core.int buildCounterEntityMention = 0;
api.EntityMention buildEntityMention() {
  final o = api.EntityMention();
  buildCounterEntityMention++;
  if (buildCounterEntityMention < 3) {
    o.probability = 42.0;
    o.sentiment = buildSentiment();
    o.text = buildTextSpan();
    o.type = 'foo';
  }
  buildCounterEntityMention--;
  return o;
}

void checkEntityMention(api.EntityMention o) {
  buildCounterEntityMention++;
  if (buildCounterEntityMention < 3) {
    unittest.expect(o.probability!, unittest.equals(42.0));
    checkSentiment(o.sentiment!);
    checkTextSpan(o.text!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterEntityMention--;
}

core.int buildCounterModerateTextRequest = 0;
api.ModerateTextRequest buildModerateTextRequest() {
  final o = api.ModerateTextRequest();
  buildCounterModerateTextRequest++;
  if (buildCounterModerateTextRequest < 3) {
    o.document = buildDocument();
    o.modelVersion = 'foo';
  }
  buildCounterModerateTextRequest--;
  return o;
}

void checkModerateTextRequest(api.ModerateTextRequest o) {
  buildCounterModerateTextRequest++;
  if (buildCounterModerateTextRequest < 3) {
    checkDocument(o.document!);
    unittest.expect(o.modelVersion!, unittest.equals('foo'));
  }
  buildCounterModerateTextRequest--;
}

core.List<api.ClassificationCategory> buildUnnamed9() => [
  buildClassificationCategory(),
  buildClassificationCategory(),
];

void checkUnnamed9(core.List<api.ClassificationCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClassificationCategory(o[0]);
  checkClassificationCategory(o[1]);
}

core.int buildCounterModerateTextResponse = 0;
api.ModerateTextResponse buildModerateTextResponse() {
  final o = api.ModerateTextResponse();
  buildCounterModerateTextResponse++;
  if (buildCounterModerateTextResponse < 3) {
    o.languageCode = 'foo';
    o.languageSupported = true;
    o.moderationCategories = buildUnnamed9();
  }
  buildCounterModerateTextResponse--;
  return o;
}

void checkModerateTextResponse(api.ModerateTextResponse o) {
  buildCounterModerateTextResponse++;
  if (buildCounterModerateTextResponse < 3) {
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.languageSupported!, unittest.isTrue);
    checkUnnamed9(o.moderationCategories!);
  }
  buildCounterModerateTextResponse--;
}

core.int buildCounterSentence = 0;
api.Sentence buildSentence() {
  final o = api.Sentence();
  buildCounterSentence++;
  if (buildCounterSentence < 3) {
    o.sentiment = buildSentiment();
    o.text = buildTextSpan();
  }
  buildCounterSentence--;
  return o;
}

void checkSentence(api.Sentence o) {
  buildCounterSentence++;
  if (buildCounterSentence < 3) {
    checkSentiment(o.sentiment!);
    checkTextSpan(o.text!);
  }
  buildCounterSentence--;
}

core.int buildCounterSentiment = 0;
api.Sentiment buildSentiment() {
  final o = api.Sentiment();
  buildCounterSentiment++;
  if (buildCounterSentiment < 3) {
    o.magnitude = 42.0;
    o.score = 42.0;
  }
  buildCounterSentiment--;
  return o;
}

void checkSentiment(api.Sentiment o) {
  buildCounterSentiment++;
  if (buildCounterSentiment < 3) {
    unittest.expect(o.magnitude!, unittest.equals(42.0));
    unittest.expect(o.score!, unittest.equals(42.0));
  }
  buildCounterSentiment--;
}

core.int buildCounterTextSpan = 0;
api.TextSpan buildTextSpan() {
  final o = api.TextSpan();
  buildCounterTextSpan++;
  if (buildCounterTextSpan < 3) {
    o.beginOffset = 42;
    o.content = 'foo';
  }
  buildCounterTextSpan--;
  return o;
}

void checkTextSpan(api.TextSpan o) {
  buildCounterTextSpan++;
  if (buildCounterTextSpan < 3) {
    unittest.expect(o.beginOffset!, unittest.equals(42));
    unittest.expect(o.content!, unittest.equals('foo'));
  }
  buildCounterTextSpan--;
}

void main() {
  unittest.group('obj-schema-AnalyzeEntitiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeEntitiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeEntitiesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnalyzeEntitiesRequest(od);
    });
  });

  unittest.group('obj-schema-AnalyzeEntitiesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeEntitiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeEntitiesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnalyzeEntitiesResponse(od);
    });
  });

  unittest.group('obj-schema-AnalyzeSentimentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeSentimentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeSentimentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnalyzeSentimentRequest(od);
    });
  });

  unittest.group('obj-schema-AnalyzeSentimentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeSentimentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeSentimentResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnalyzeSentimentResponse(od);
    });
  });

  unittest.group('obj-schema-AnnotateTextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotateTextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnnotateTextRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnnotateTextRequest(od);
    });
  });

  unittest.group('obj-schema-AnnotateTextRequestFeatures', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotateTextRequestFeatures();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnnotateTextRequestFeatures.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnnotateTextRequestFeatures(od);
    });
  });

  unittest.group('obj-schema-AnnotateTextResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotateTextResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnnotateTextResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnnotateTextResponse(od);
    });
  });

  unittest.group('obj-schema-ClassificationCategory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClassificationCategory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClassificationCategory.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClassificationCategory(od);
    });
  });

  unittest.group('obj-schema-ClassifyTextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClassifyTextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClassifyTextRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClassifyTextRequest(od);
    });
  });

  unittest.group('obj-schema-ClassifyTextResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClassifyTextResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClassifyTextResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClassifyTextResponse(od);
    });
  });

  unittest.group('obj-schema-Document', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Document.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocument(od);
    });
  });

  unittest.group('obj-schema-Entity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Entity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEntity(od);
    });
  });

  unittest.group('obj-schema-EntityMention', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityMention();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityMention.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEntityMention(od);
    });
  });

  unittest.group('obj-schema-ModerateTextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModerateTextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModerateTextRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkModerateTextRequest(od);
    });
  });

  unittest.group('obj-schema-ModerateTextResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModerateTextResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModerateTextResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkModerateTextResponse(od);
    });
  });

  unittest.group('obj-schema-Sentence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSentence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Sentence.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSentence(od);
    });
  });

  unittest.group('obj-schema-Sentiment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSentiment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Sentiment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSentiment(od);
    });
  });

  unittest.group('obj-schema-TextSpan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextSpan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextSpan.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTextSpan(od);
    });
  });

  unittest.group('resource-DocumentsResource', () {
    unittest.test('method--analyzeEntities', () async {
      final mock = HttpServerMock();
      final res = api.CloudNaturalLanguageApi(mock).documents;
      final arg_request = buildAnalyzeEntitiesRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AnalyzeEntitiesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAnalyzeEntitiesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 28),
            unittest.equals('v2/documents:analyzeEntities'),
          );
          pathOffset += 28;

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
          final resp = convert.json.encode(buildAnalyzeEntitiesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.analyzeEntities(
        arg_request,
        $fields: arg_$fields,
      );
      checkAnalyzeEntitiesResponse(response as api.AnalyzeEntitiesResponse);
    });

    unittest.test('method--analyzeSentiment', () async {
      final mock = HttpServerMock();
      final res = api.CloudNaturalLanguageApi(mock).documents;
      final arg_request = buildAnalyzeSentimentRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AnalyzeSentimentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAnalyzeSentimentRequest(obj);

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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('v2/documents:analyzeSentiment'),
          );
          pathOffset += 29;

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
          final resp = convert.json.encode(buildAnalyzeSentimentResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.analyzeSentiment(
        arg_request,
        $fields: arg_$fields,
      );
      checkAnalyzeSentimentResponse(response as api.AnalyzeSentimentResponse);
    });

    unittest.test('method--annotateText', () async {
      final mock = HttpServerMock();
      final res = api.CloudNaturalLanguageApi(mock).documents;
      final arg_request = buildAnnotateTextRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AnnotateTextRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAnnotateTextRequest(obj);

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
            path.substring(pathOffset, pathOffset + 25),
            unittest.equals('v2/documents:annotateText'),
          );
          pathOffset += 25;

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
          final resp = convert.json.encode(buildAnnotateTextResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.annotateText(
        arg_request,
        $fields: arg_$fields,
      );
      checkAnnotateTextResponse(response as api.AnnotateTextResponse);
    });

    unittest.test('method--classifyText', () async {
      final mock = HttpServerMock();
      final res = api.CloudNaturalLanguageApi(mock).documents;
      final arg_request = buildClassifyTextRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ClassifyTextRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkClassifyTextRequest(obj);

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
            path.substring(pathOffset, pathOffset + 25),
            unittest.equals('v2/documents:classifyText'),
          );
          pathOffset += 25;

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
          final resp = convert.json.encode(buildClassifyTextResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.classifyText(
        arg_request,
        $fields: arg_$fields,
      );
      checkClassifyTextResponse(response as api.ClassifyTextResponse);
    });

    unittest.test('method--moderateText', () async {
      final mock = HttpServerMock();
      final res = api.CloudNaturalLanguageApi(mock).documents;
      final arg_request = buildModerateTextRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ModerateTextRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkModerateTextRequest(obj);

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
            path.substring(pathOffset, pathOffset + 25),
            unittest.equals('v2/documents:moderateText'),
          );
          pathOffset += 25;

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
          final resp = convert.json.encode(buildModerateTextResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.moderateText(
        arg_request,
        $fields: arg_$fields,
      );
      checkModerateTextResponse(response as api.ModerateTextResponse);
    });
  });
}
