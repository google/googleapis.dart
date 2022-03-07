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

import 'package:googleapis/documentai/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudDocumentaiV1BatchDocumentsInputConfig = 0;
api.GoogleCloudDocumentaiV1BatchDocumentsInputConfig
    buildGoogleCloudDocumentaiV1BatchDocumentsInputConfig() {
  final o = api.GoogleCloudDocumentaiV1BatchDocumentsInputConfig();
  buildCounterGoogleCloudDocumentaiV1BatchDocumentsInputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1BatchDocumentsInputConfig < 3) {
    o.gcsDocuments = buildGoogleCloudDocumentaiV1GcsDocuments();
    o.gcsPrefix = buildGoogleCloudDocumentaiV1GcsPrefix();
  }
  buildCounterGoogleCloudDocumentaiV1BatchDocumentsInputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1BatchDocumentsInputConfig(
    api.GoogleCloudDocumentaiV1BatchDocumentsInputConfig o) {
  buildCounterGoogleCloudDocumentaiV1BatchDocumentsInputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1BatchDocumentsInputConfig < 3) {
    checkGoogleCloudDocumentaiV1GcsDocuments(o.gcsDocuments!);
    checkGoogleCloudDocumentaiV1GcsPrefix(o.gcsPrefix!);
  }
  buildCounterGoogleCloudDocumentaiV1BatchDocumentsInputConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1BatchProcessRequest = 0;
api.GoogleCloudDocumentaiV1BatchProcessRequest
    buildGoogleCloudDocumentaiV1BatchProcessRequest() {
  final o = api.GoogleCloudDocumentaiV1BatchProcessRequest();
  buildCounterGoogleCloudDocumentaiV1BatchProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1BatchProcessRequest < 3) {
    o.documentOutputConfig = buildGoogleCloudDocumentaiV1DocumentOutputConfig();
    o.inputDocuments = buildGoogleCloudDocumentaiV1BatchDocumentsInputConfig();
    o.skipHumanReview = true;
  }
  buildCounterGoogleCloudDocumentaiV1BatchProcessRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1BatchProcessRequest(
    api.GoogleCloudDocumentaiV1BatchProcessRequest o) {
  buildCounterGoogleCloudDocumentaiV1BatchProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1BatchProcessRequest < 3) {
    checkGoogleCloudDocumentaiV1DocumentOutputConfig(o.documentOutputConfig!);
    checkGoogleCloudDocumentaiV1BatchDocumentsInputConfig(o.inputDocuments!);
    unittest.expect(o.skipHumanReview!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1BatchProcessRequest--;
}

core.List<api.GoogleCloudDocumentaiV1NormalizedVertex> buildUnnamed0() => [
      buildGoogleCloudDocumentaiV1NormalizedVertex(),
      buildGoogleCloudDocumentaiV1NormalizedVertex(),
    ];

void checkUnnamed0(core.List<api.GoogleCloudDocumentaiV1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1NormalizedVertex(o[0]);
  checkGoogleCloudDocumentaiV1NormalizedVertex(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1Vertex> buildUnnamed1() => [
      buildGoogleCloudDocumentaiV1Vertex(),
      buildGoogleCloudDocumentaiV1Vertex(),
    ];

void checkUnnamed1(core.List<api.GoogleCloudDocumentaiV1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1Vertex(o[0]);
  checkGoogleCloudDocumentaiV1Vertex(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1BoundingPoly = 0;
api.GoogleCloudDocumentaiV1BoundingPoly
    buildGoogleCloudDocumentaiV1BoundingPoly() {
  final o = api.GoogleCloudDocumentaiV1BoundingPoly();
  buildCounterGoogleCloudDocumentaiV1BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed0();
    o.vertices = buildUnnamed1();
  }
  buildCounterGoogleCloudDocumentaiV1BoundingPoly--;
  return o;
}

void checkGoogleCloudDocumentaiV1BoundingPoly(
    api.GoogleCloudDocumentaiV1BoundingPoly o) {
  buildCounterGoogleCloudDocumentaiV1BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1BoundingPoly < 3) {
    checkUnnamed0(o.normalizedVertices!);
    checkUnnamed1(o.vertices!);
  }
  buildCounterGoogleCloudDocumentaiV1BoundingPoly--;
}

core.int buildCounterGoogleCloudDocumentaiV1DeployProcessorVersionRequest = 0;
api.GoogleCloudDocumentaiV1DeployProcessorVersionRequest
    buildGoogleCloudDocumentaiV1DeployProcessorVersionRequest() {
  final o = api.GoogleCloudDocumentaiV1DeployProcessorVersionRequest();
  buildCounterGoogleCloudDocumentaiV1DeployProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1DeployProcessorVersionRequest < 3) {}
  buildCounterGoogleCloudDocumentaiV1DeployProcessorVersionRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1DeployProcessorVersionRequest(
    api.GoogleCloudDocumentaiV1DeployProcessorVersionRequest o) {
  buildCounterGoogleCloudDocumentaiV1DeployProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1DeployProcessorVersionRequest < 3) {}
  buildCounterGoogleCloudDocumentaiV1DeployProcessorVersionRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1DisableProcessorRequest = 0;
api.GoogleCloudDocumentaiV1DisableProcessorRequest
    buildGoogleCloudDocumentaiV1DisableProcessorRequest() {
  final o = api.GoogleCloudDocumentaiV1DisableProcessorRequest();
  buildCounterGoogleCloudDocumentaiV1DisableProcessorRequest++;
  if (buildCounterGoogleCloudDocumentaiV1DisableProcessorRequest < 3) {}
  buildCounterGoogleCloudDocumentaiV1DisableProcessorRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1DisableProcessorRequest(
    api.GoogleCloudDocumentaiV1DisableProcessorRequest o) {
  buildCounterGoogleCloudDocumentaiV1DisableProcessorRequest++;
  if (buildCounterGoogleCloudDocumentaiV1DisableProcessorRequest < 3) {}
  buildCounterGoogleCloudDocumentaiV1DisableProcessorRequest--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentEntity> buildUnnamed2() => [
      buildGoogleCloudDocumentaiV1DocumentEntity(),
      buildGoogleCloudDocumentaiV1DocumentEntity(),
    ];

void checkUnnamed2(core.List<api.GoogleCloudDocumentaiV1DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1DocumentEntity(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentEntityRelation> buildUnnamed3() =>
    [
      buildGoogleCloudDocumentaiV1DocumentEntityRelation(),
      buildGoogleCloudDocumentaiV1DocumentEntityRelation(),
    ];

void checkUnnamed3(
    core.List<api.GoogleCloudDocumentaiV1DocumentEntityRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentEntityRelation(o[0]);
  checkGoogleCloudDocumentaiV1DocumentEntityRelation(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPage> buildUnnamed4() => [
      buildGoogleCloudDocumentaiV1DocumentPage(),
      buildGoogleCloudDocumentaiV1DocumentPage(),
    ];

void checkUnnamed4(core.List<api.GoogleCloudDocumentaiV1DocumentPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentRevision> buildUnnamed5() => [
      buildGoogleCloudDocumentaiV1DocumentRevision(),
      buildGoogleCloudDocumentaiV1DocumentRevision(),
    ];

void checkUnnamed5(core.List<api.GoogleCloudDocumentaiV1DocumentRevision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentRevision(o[0]);
  checkGoogleCloudDocumentaiV1DocumentRevision(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentTextChange> buildUnnamed6() => [
      buildGoogleCloudDocumentaiV1DocumentTextChange(),
      buildGoogleCloudDocumentaiV1DocumentTextChange(),
    ];

void checkUnnamed6(core.List<api.GoogleCloudDocumentaiV1DocumentTextChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentTextChange(o[0]);
  checkGoogleCloudDocumentaiV1DocumentTextChange(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentStyle> buildUnnamed7() => [
      buildGoogleCloudDocumentaiV1DocumentStyle(),
      buildGoogleCloudDocumentaiV1DocumentStyle(),
    ];

void checkUnnamed7(core.List<api.GoogleCloudDocumentaiV1DocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentStyle(o[0]);
  checkGoogleCloudDocumentaiV1DocumentStyle(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1Document = 0;
api.GoogleCloudDocumentaiV1Document buildGoogleCloudDocumentaiV1Document() {
  final o = api.GoogleCloudDocumentaiV1Document();
  buildCounterGoogleCloudDocumentaiV1Document++;
  if (buildCounterGoogleCloudDocumentaiV1Document < 3) {
    o.content = 'foo';
    o.entities = buildUnnamed2();
    o.entityRelations = buildUnnamed3();
    o.error = buildGoogleRpcStatus();
    o.mimeType = 'foo';
    o.pages = buildUnnamed4();
    o.revisions = buildUnnamed5();
    o.shardInfo = buildGoogleCloudDocumentaiV1DocumentShardInfo();
    o.text = 'foo';
    o.textChanges = buildUnnamed6();
    o.textStyles = buildUnnamed7();
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1Document--;
  return o;
}

void checkGoogleCloudDocumentaiV1Document(
    api.GoogleCloudDocumentaiV1Document o) {
  buildCounterGoogleCloudDocumentaiV1Document++;
  if (buildCounterGoogleCloudDocumentaiV1Document < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.entities!);
    checkUnnamed3(o.entityRelations!);
    checkGoogleRpcStatus(o.error!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.pages!);
    checkUnnamed5(o.revisions!);
    checkGoogleCloudDocumentaiV1DocumentShardInfo(o.shardInfo!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.textChanges!);
    checkUnnamed7(o.textStyles!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1Document--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentEntity> buildUnnamed8() => [
      buildGoogleCloudDocumentaiV1DocumentEntity(),
      buildGoogleCloudDocumentaiV1DocumentEntity(),
    ];

void checkUnnamed8(core.List<api.GoogleCloudDocumentaiV1DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1DocumentEntity(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentEntity = 0;
api.GoogleCloudDocumentaiV1DocumentEntity
    buildGoogleCloudDocumentaiV1DocumentEntity() {
  final o = api.GoogleCloudDocumentaiV1DocumentEntity();
  buildCounterGoogleCloudDocumentaiV1DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentEntity < 3) {
    o.confidence = 42.0;
    o.id = 'foo';
    o.mentionId = 'foo';
    o.mentionText = 'foo';
    o.normalizedValue =
        buildGoogleCloudDocumentaiV1DocumentEntityNormalizedValue();
    o.pageAnchor = buildGoogleCloudDocumentaiV1DocumentPageAnchor();
    o.properties = buildUnnamed8();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
    o.redacted = true;
    o.textAnchor = buildGoogleCloudDocumentaiV1DocumentTextAnchor();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentEntity--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentEntity(
    api.GoogleCloudDocumentaiV1DocumentEntity o) {
  buildCounterGoogleCloudDocumentaiV1DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentEntity < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mentionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mentionText!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1DocumentEntityNormalizedValue(
        o.normalizedValue!);
    checkGoogleCloudDocumentaiV1DocumentPageAnchor(o.pageAnchor!);
    checkUnnamed8(o.properties!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
    unittest.expect(o.redacted!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1DocumentTextAnchor(o.textAnchor!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentEntity--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue = 0;
api.GoogleCloudDocumentaiV1DocumentEntityNormalizedValue
    buildGoogleCloudDocumentaiV1DocumentEntityNormalizedValue() {
  final o = api.GoogleCloudDocumentaiV1DocumentEntityNormalizedValue();
  buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue < 3) {
    o.addressValue = buildGoogleTypePostalAddress();
    o.booleanValue = true;
    o.dateValue = buildGoogleTypeDate();
    o.datetimeValue = buildGoogleTypeDateTime();
    o.floatValue = 42.0;
    o.integerValue = 42;
    o.moneyValue = buildGoogleTypeMoney();
    o.text = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentEntityNormalizedValue(
    api.GoogleCloudDocumentaiV1DocumentEntityNormalizedValue o) {
  buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue < 3) {
    checkGoogleTypePostalAddress(o.addressValue!);
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkGoogleTypeDate(o.dateValue!);
    checkGoogleTypeDateTime(o.datetimeValue!);
    unittest.expect(
      o.floatValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.integerValue!,
      unittest.equals(42),
    );
    checkGoogleTypeMoney(o.moneyValue!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentEntityNormalizedValue--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation = 0;
api.GoogleCloudDocumentaiV1DocumentEntityRelation
    buildGoogleCloudDocumentaiV1DocumentEntityRelation() {
  final o = api.GoogleCloudDocumentaiV1DocumentEntityRelation();
  buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation < 3) {
    o.objectId = 'foo';
    o.relation = 'foo';
    o.subjectId = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentEntityRelation(
    api.GoogleCloudDocumentaiV1DocumentEntityRelation o) {
  buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subjectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentEntityRelation--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentOutputConfig = 0;
api.GoogleCloudDocumentaiV1DocumentOutputConfig
    buildGoogleCloudDocumentaiV1DocumentOutputConfig() {
  final o = api.GoogleCloudDocumentaiV1DocumentOutputConfig();
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentOutputConfig < 3) {
    o.gcsOutputConfig =
        buildGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentOutputConfig(
    api.GoogleCloudDocumentaiV1DocumentOutputConfig o) {
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentOutputConfig < 3) {
    checkGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig(
        o.gcsOutputConfig!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfig--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig = 0;
api.GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig
    buildGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig() {
  final o = api.GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig();
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig <
      3) {
    o.gcsUri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig(
    api.GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig o) {
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig <
      3) {
    unittest.expect(
      o.gcsUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageBlock> buildUnnamed9() => [
      buildGoogleCloudDocumentaiV1DocumentPageBlock(),
      buildGoogleCloudDocumentaiV1DocumentPageBlock(),
    ];

void checkUnnamed9(core.List<api.GoogleCloudDocumentaiV1DocumentPageBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageBlock(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageBlock(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed10() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed10(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageFormField> buildUnnamed11() =>
    [
      buildGoogleCloudDocumentaiV1DocumentPageFormField(),
      buildGoogleCloudDocumentaiV1DocumentPageFormField(),
    ];

void checkUnnamed11(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageFormField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageFormField(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageFormField(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageLine> buildUnnamed12() => [
      buildGoogleCloudDocumentaiV1DocumentPageLine(),
      buildGoogleCloudDocumentaiV1DocumentPageLine(),
    ];

void checkUnnamed12(core.List<api.GoogleCloudDocumentaiV1DocumentPageLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageLine(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageLine(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageParagraph> buildUnnamed13() =>
    [
      buildGoogleCloudDocumentaiV1DocumentPageParagraph(),
      buildGoogleCloudDocumentaiV1DocumentPageParagraph(),
    ];

void checkUnnamed13(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageParagraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageParagraph(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageParagraph(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageSymbol> buildUnnamed14() => [
      buildGoogleCloudDocumentaiV1DocumentPageSymbol(),
      buildGoogleCloudDocumentaiV1DocumentPageSymbol(),
    ];

void checkUnnamed14(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageSymbol> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageSymbol(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageSymbol(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageTable> buildUnnamed15() => [
      buildGoogleCloudDocumentaiV1DocumentPageTable(),
      buildGoogleCloudDocumentaiV1DocumentPageTable(),
    ];

void checkUnnamed15(core.List<api.GoogleCloudDocumentaiV1DocumentPageTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageTable(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageTable(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageToken> buildUnnamed16() => [
      buildGoogleCloudDocumentaiV1DocumentPageToken(),
      buildGoogleCloudDocumentaiV1DocumentPageToken(),
    ];

void checkUnnamed16(core.List<api.GoogleCloudDocumentaiV1DocumentPageToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageToken(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageToken(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageMatrix> buildUnnamed17() => [
      buildGoogleCloudDocumentaiV1DocumentPageMatrix(),
      buildGoogleCloudDocumentaiV1DocumentPageMatrix(),
    ];

void checkUnnamed17(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageMatrix(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageMatrix(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageVisualElement>
    buildUnnamed18() => [
          buildGoogleCloudDocumentaiV1DocumentPageVisualElement(),
          buildGoogleCloudDocumentaiV1DocumentPageVisualElement(),
        ];

void checkUnnamed18(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageVisualElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageVisualElement(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageVisualElement(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPage = 0;
api.GoogleCloudDocumentaiV1DocumentPage
    buildGoogleCloudDocumentaiV1DocumentPage() {
  final o = api.GoogleCloudDocumentaiV1DocumentPage();
  buildCounterGoogleCloudDocumentaiV1DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPage < 3) {
    o.blocks = buildUnnamed9();
    o.detectedLanguages = buildUnnamed10();
    o.dimension = buildGoogleCloudDocumentaiV1DocumentPageDimension();
    o.formFields = buildUnnamed11();
    o.image = buildGoogleCloudDocumentaiV1DocumentPageImage();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.lines = buildUnnamed12();
    o.pageNumber = 42;
    o.paragraphs = buildUnnamed13();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
    o.symbols = buildUnnamed14();
    o.tables = buildUnnamed15();
    o.tokens = buildUnnamed16();
    o.transforms = buildUnnamed17();
    o.visualElements = buildUnnamed18();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPage--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPage(
    api.GoogleCloudDocumentaiV1DocumentPage o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPage < 3) {
    checkUnnamed9(o.blocks!);
    checkUnnamed10(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageDimension(o.dimension!);
    checkUnnamed11(o.formFields!);
    checkGoogleCloudDocumentaiV1DocumentPageImage(o.image!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    checkUnnamed12(o.lines!);
    unittest.expect(
      o.pageNumber!,
      unittest.equals(42),
    );
    checkUnnamed13(o.paragraphs!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
    checkUnnamed14(o.symbols!);
    checkUnnamed15(o.tables!);
    checkUnnamed16(o.tokens!);
    checkUnnamed17(o.transforms!);
    checkUnnamed18(o.visualElements!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPage--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef>
    buildUnnamed19() => [
          buildGoogleCloudDocumentaiV1DocumentPageAnchorPageRef(),
          buildGoogleCloudDocumentaiV1DocumentPageAnchorPageRef(),
        ];

void checkUnnamed19(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageAnchorPageRef(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageAnchorPageRef(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor = 0;
api.GoogleCloudDocumentaiV1DocumentPageAnchor
    buildGoogleCloudDocumentaiV1DocumentPageAnchor() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageAnchor();
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor < 3) {
    o.pageRefs = buildUnnamed19();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageAnchor(
    api.GoogleCloudDocumentaiV1DocumentPageAnchor o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor < 3) {
    checkUnnamed19(o.pageRefs!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef = 0;
api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef
    buildGoogleCloudDocumentaiV1DocumentPageAnchorPageRef() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef();
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1BoundingPoly();
    o.confidence = 42.0;
    o.layoutId = 'foo';
    o.layoutType = 'foo';
    o.page = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageAnchorPageRef(
    api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef < 3) {
    checkGoogleCloudDocumentaiV1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.layoutId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.layoutType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.page!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchorPageRef--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed20() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed20(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageBlock = 0;
api.GoogleCloudDocumentaiV1DocumentPageBlock
    buildGoogleCloudDocumentaiV1DocumentPageBlock() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageBlock();
  buildCounterGoogleCloudDocumentaiV1DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageBlock < 3) {
    o.detectedLanguages = buildUnnamed20();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageBlock--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageBlock(
    api.GoogleCloudDocumentaiV1DocumentPageBlock o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageBlock < 3) {
    checkUnnamed20(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageBlock--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage = 0;
api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
    buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage();
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage < 3) {
    o.confidence = 42.0;
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
    api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedLanguage--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageDimension = 0;
api.GoogleCloudDocumentaiV1DocumentPageDimension
    buildGoogleCloudDocumentaiV1DocumentPageDimension() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageDimension();
  buildCounterGoogleCloudDocumentaiV1DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageDimension < 3) {
    o.height = 42.0;
    o.unit = 'foo';
    o.width = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageDimension--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageDimension(
    api.GoogleCloudDocumentaiV1DocumentPageDimension o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageDimension < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageDimension--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed21() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed21(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed22() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed22(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageFormField = 0;
api.GoogleCloudDocumentaiV1DocumentPageFormField
    buildGoogleCloudDocumentaiV1DocumentPageFormField() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageFormField();
  buildCounterGoogleCloudDocumentaiV1DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageFormField < 3) {
    o.correctedKeyText = 'foo';
    o.correctedValueText = 'foo';
    o.fieldName = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.fieldValue = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.nameDetectedLanguages = buildUnnamed21();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
    o.valueDetectedLanguages = buildUnnamed22();
    o.valueType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageFormField--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageFormField(
    api.GoogleCloudDocumentaiV1DocumentPageFormField o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageFormField < 3) {
    unittest.expect(
      o.correctedKeyText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.correctedValueText!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.fieldName!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.fieldValue!);
    checkUnnamed21(o.nameDetectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
    checkUnnamed22(o.valueDetectedLanguages!);
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageFormField--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageImage = 0;
api.GoogleCloudDocumentaiV1DocumentPageImage
    buildGoogleCloudDocumentaiV1DocumentPageImage() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageImage();
  buildCounterGoogleCloudDocumentaiV1DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageImage < 3) {
    o.content = 'foo';
    o.height = 42;
    o.mimeType = 'foo';
    o.width = 42;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageImage--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageImage(
    api.GoogleCloudDocumentaiV1DocumentPageImage o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageImage < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageImage--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageLayout = 0;
api.GoogleCloudDocumentaiV1DocumentPageLayout
    buildGoogleCloudDocumentaiV1DocumentPageLayout() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageLayout();
  buildCounterGoogleCloudDocumentaiV1DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageLayout < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1BoundingPoly();
    o.confidence = 42.0;
    o.orientation = 'foo';
    o.textAnchor = buildGoogleCloudDocumentaiV1DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageLayout--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageLayout(
    api.GoogleCloudDocumentaiV1DocumentPageLayout o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageLayout < 3) {
    checkGoogleCloudDocumentaiV1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.orientation!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1DocumentTextAnchor(o.textAnchor!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageLayout--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed23() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed23(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageLine = 0;
api.GoogleCloudDocumentaiV1DocumentPageLine
    buildGoogleCloudDocumentaiV1DocumentPageLine() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageLine();
  buildCounterGoogleCloudDocumentaiV1DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageLine < 3) {
    o.detectedLanguages = buildUnnamed23();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageLine--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageLine(
    api.GoogleCloudDocumentaiV1DocumentPageLine o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageLine < 3) {
    checkUnnamed23(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageLine--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix = 0;
api.GoogleCloudDocumentaiV1DocumentPageMatrix
    buildGoogleCloudDocumentaiV1DocumentPageMatrix() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageMatrix();
  buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix < 3) {
    o.cols = 42;
    o.data = 'foo';
    o.rows = 42;
    o.type = 42;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageMatrix(
    api.GoogleCloudDocumentaiV1DocumentPageMatrix o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix < 3) {
    unittest.expect(
      o.cols!,
      unittest.equals(42),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rows!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageMatrix--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed24() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed24(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph = 0;
api.GoogleCloudDocumentaiV1DocumentPageParagraph
    buildGoogleCloudDocumentaiV1DocumentPageParagraph() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageParagraph();
  buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph < 3) {
    o.detectedLanguages = buildUnnamed24();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageParagraph(
    api.GoogleCloudDocumentaiV1DocumentPageParagraph o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph < 3) {
    checkUnnamed24(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed25() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed25(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageSymbol = 0;
api.GoogleCloudDocumentaiV1DocumentPageSymbol
    buildGoogleCloudDocumentaiV1DocumentPageSymbol() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageSymbol();
  buildCounterGoogleCloudDocumentaiV1DocumentPageSymbol++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageSymbol < 3) {
    o.detectedLanguages = buildUnnamed25();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageSymbol--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageSymbol(
    api.GoogleCloudDocumentaiV1DocumentPageSymbol o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageSymbol++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageSymbol < 3) {
    checkUnnamed25(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageSymbol--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableRow>
    buildUnnamed26() => [
          buildGoogleCloudDocumentaiV1DocumentPageTableTableRow(),
          buildGoogleCloudDocumentaiV1DocumentPageTableTableRow(),
        ];

void checkUnnamed26(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed27() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed27(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableRow>
    buildUnnamed28() => [
          buildGoogleCloudDocumentaiV1DocumentPageTableTableRow(),
          buildGoogleCloudDocumentaiV1DocumentPageTableTableRow(),
        ];

void checkUnnamed28(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageTable = 0;
api.GoogleCloudDocumentaiV1DocumentPageTable
    buildGoogleCloudDocumentaiV1DocumentPageTable() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageTable();
  buildCounterGoogleCloudDocumentaiV1DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTable < 3) {
    o.bodyRows = buildUnnamed26();
    o.detectedLanguages = buildUnnamed27();
    o.headerRows = buildUnnamed28();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTable--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageTable(
    api.GoogleCloudDocumentaiV1DocumentPageTable o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTable < 3) {
    checkUnnamed26(o.bodyRows!);
    checkUnnamed27(o.detectedLanguages!);
    checkUnnamed28(o.headerRows!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTable--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed29() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed29(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell = 0;
api.GoogleCloudDocumentaiV1DocumentPageTableTableCell
    buildGoogleCloudDocumentaiV1DocumentPageTableTableCell() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageTableTableCell();
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell < 3) {
    o.colSpan = 42;
    o.detectedLanguages = buildUnnamed29();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.rowSpan = 42;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageTableTableCell(
    api.GoogleCloudDocumentaiV1DocumentPageTableTableCell o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell < 3) {
    unittest.expect(
      o.colSpan!,
      unittest.equals(42),
    );
    checkUnnamed29(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    unittest.expect(
      o.rowSpan!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableCell>
    buildUnnamed30() => [
          buildGoogleCloudDocumentaiV1DocumentPageTableTableCell(),
          buildGoogleCloudDocumentaiV1DocumentPageTableTableCell(),
        ];

void checkUnnamed30(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageTableTableCell(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageTableTableCell(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow = 0;
api.GoogleCloudDocumentaiV1DocumentPageTableTableRow
    buildGoogleCloudDocumentaiV1DocumentPageTableTableRow() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageTableTableRow();
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow < 3) {
    o.cells = buildUnnamed30();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(
    api.GoogleCloudDocumentaiV1DocumentPageTableTableRow o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow < 3) {
    checkUnnamed30(o.cells!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed31() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed31(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageToken = 0;
api.GoogleCloudDocumentaiV1DocumentPageToken
    buildGoogleCloudDocumentaiV1DocumentPageToken() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageToken();
  buildCounterGoogleCloudDocumentaiV1DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageToken < 3) {
    o.detectedBreak =
        buildGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak();
    o.detectedLanguages = buildUnnamed31();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageToken--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageToken(
    api.GoogleCloudDocumentaiV1DocumentPageToken o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageToken < 3) {
    checkGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak(
        o.detectedBreak!);
    checkUnnamed31(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageToken--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak = 0;
api.GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak
    buildGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak();
  buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak < 3) {
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak(
    api.GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed32() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed32(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement = 0;
api.GoogleCloudDocumentaiV1DocumentPageVisualElement
    buildGoogleCloudDocumentaiV1DocumentPageVisualElement() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageVisualElement();
  buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement < 3) {
    o.detectedLanguages = buildUnnamed32();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageVisualElement(
    api.GoogleCloudDocumentaiV1DocumentPageVisualElement o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement < 3) {
    checkUnnamed32(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentProvenanceParent>
    buildUnnamed33() => [
          buildGoogleCloudDocumentaiV1DocumentProvenanceParent(),
          buildGoogleCloudDocumentaiV1DocumentProvenanceParent(),
        ];

void checkUnnamed33(
    core.List<api.GoogleCloudDocumentaiV1DocumentProvenanceParent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentProvenanceParent(o[0]);
  checkGoogleCloudDocumentaiV1DocumentProvenanceParent(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentProvenance = 0;
api.GoogleCloudDocumentaiV1DocumentProvenance
    buildGoogleCloudDocumentaiV1DocumentProvenance() {
  final o = api.GoogleCloudDocumentaiV1DocumentProvenance();
  buildCounterGoogleCloudDocumentaiV1DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentProvenance < 3) {
    o.id = 42;
    o.parents = buildUnnamed33();
    o.revision = 42;
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentProvenance--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentProvenance(
    api.GoogleCloudDocumentaiV1DocumentProvenance o) {
  buildCounterGoogleCloudDocumentaiV1DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentProvenance < 3) {
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    checkUnnamed33(o.parents!);
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentProvenance--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent = 0;
api.GoogleCloudDocumentaiV1DocumentProvenanceParent
    buildGoogleCloudDocumentaiV1DocumentProvenanceParent() {
  final o = api.GoogleCloudDocumentaiV1DocumentProvenanceParent();
  buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent < 3) {
    o.id = 42;
    o.index = 42;
    o.revision = 42;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentProvenanceParent(
    api.GoogleCloudDocumentaiV1DocumentProvenanceParent o) {
  buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent < 3) {
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentProvenanceParent--;
}

core.List<core.int> buildUnnamed34() => [
      42,
      42,
    ];

void checkUnnamed34(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
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

core.int buildCounterGoogleCloudDocumentaiV1DocumentRevision = 0;
api.GoogleCloudDocumentaiV1DocumentRevision
    buildGoogleCloudDocumentaiV1DocumentRevision() {
  final o = api.GoogleCloudDocumentaiV1DocumentRevision();
  buildCounterGoogleCloudDocumentaiV1DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentRevision < 3) {
    o.agent = 'foo';
    o.createTime = 'foo';
    o.humanReview = buildGoogleCloudDocumentaiV1DocumentRevisionHumanReview();
    o.id = 'foo';
    o.parent = buildUnnamed34();
    o.parentIds = buildUnnamed35();
    o.processor = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentRevision--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentRevision(
    api.GoogleCloudDocumentaiV1DocumentRevision o) {
  buildCounterGoogleCloudDocumentaiV1DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentRevision < 3) {
    unittest.expect(
      o.agent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1DocumentRevisionHumanReview(o.humanReview!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.parent!);
    checkUnnamed35(o.parentIds!);
    unittest.expect(
      o.processor!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentRevision--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview = 0;
api.GoogleCloudDocumentaiV1DocumentRevisionHumanReview
    buildGoogleCloudDocumentaiV1DocumentRevisionHumanReview() {
  final o = api.GoogleCloudDocumentaiV1DocumentRevisionHumanReview();
  buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview < 3) {
    o.state = 'foo';
    o.stateMessage = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentRevisionHumanReview(
    api.GoogleCloudDocumentaiV1DocumentRevisionHumanReview o) {
  buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview < 3) {
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentRevisionHumanReview--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentShardInfo = 0;
api.GoogleCloudDocumentaiV1DocumentShardInfo
    buildGoogleCloudDocumentaiV1DocumentShardInfo() {
  final o = api.GoogleCloudDocumentaiV1DocumentShardInfo();
  buildCounterGoogleCloudDocumentaiV1DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentShardInfo < 3) {
    o.shardCount = 'foo';
    o.shardIndex = 'foo';
    o.textOffset = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentShardInfo--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentShardInfo(
    api.GoogleCloudDocumentaiV1DocumentShardInfo o) {
  buildCounterGoogleCloudDocumentaiV1DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentShardInfo < 3) {
    unittest.expect(
      o.shardCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shardIndex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentShardInfo--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentStyle = 0;
api.GoogleCloudDocumentaiV1DocumentStyle
    buildGoogleCloudDocumentaiV1DocumentStyle() {
  final o = api.GoogleCloudDocumentaiV1DocumentStyle();
  buildCounterGoogleCloudDocumentaiV1DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentStyle < 3) {
    o.backgroundColor = buildGoogleTypeColor();
    o.color = buildGoogleTypeColor();
    o.fontSize = buildGoogleCloudDocumentaiV1DocumentStyleFontSize();
    o.fontWeight = 'foo';
    o.textAnchor = buildGoogleCloudDocumentaiV1DocumentTextAnchor();
    o.textDecoration = 'foo';
    o.textStyle = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentStyle--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentStyle(
    api.GoogleCloudDocumentaiV1DocumentStyle o) {
  buildCounterGoogleCloudDocumentaiV1DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentStyle < 3) {
    checkGoogleTypeColor(o.backgroundColor!);
    checkGoogleTypeColor(o.color!);
    checkGoogleCloudDocumentaiV1DocumentStyleFontSize(o.fontSize!);
    unittest.expect(
      o.fontWeight!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1DocumentTextAnchor(o.textAnchor!);
    unittest.expect(
      o.textDecoration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textStyle!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentStyle--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize = 0;
api.GoogleCloudDocumentaiV1DocumentStyleFontSize
    buildGoogleCloudDocumentaiV1DocumentStyleFontSize() {
  final o = api.GoogleCloudDocumentaiV1DocumentStyleFontSize();
  buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize < 3) {
    o.size = 42.0;
    o.unit = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentStyleFontSize(
    api.GoogleCloudDocumentaiV1DocumentStyleFontSize o) {
  buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize < 3) {
    unittest.expect(
      o.size!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentStyleFontSize--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment>
    buildUnnamed36() => [
          buildGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(),
          buildGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(),
        ];

void checkUnnamed36(
    core.List<api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(o[0]);
  checkGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor = 0;
api.GoogleCloudDocumentaiV1DocumentTextAnchor
    buildGoogleCloudDocumentaiV1DocumentTextAnchor() {
  final o = api.GoogleCloudDocumentaiV1DocumentTextAnchor();
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor < 3) {
    o.content = 'foo';
    o.textSegments = buildUnnamed36();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentTextAnchor(
    api.GoogleCloudDocumentaiV1DocumentTextAnchor o) {
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.textSegments!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment = 0;
api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment
    buildGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment() {
  final o = api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment();
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment < 3) {
    o.endIndex = 'foo';
    o.startIndex = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(
    api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment o) {
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment < 3) {
    unittest.expect(
      o.endIndex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentProvenance> buildUnnamed37() => [
      buildGoogleCloudDocumentaiV1DocumentProvenance(),
      buildGoogleCloudDocumentaiV1DocumentProvenance(),
    ];

void checkUnnamed37(
    core.List<api.GoogleCloudDocumentaiV1DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentProvenance(o[0]);
  checkGoogleCloudDocumentaiV1DocumentProvenance(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentTextChange = 0;
api.GoogleCloudDocumentaiV1DocumentTextChange
    buildGoogleCloudDocumentaiV1DocumentTextChange() {
  final o = api.GoogleCloudDocumentaiV1DocumentTextChange();
  buildCounterGoogleCloudDocumentaiV1DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentTextChange < 3) {
    o.changedText = 'foo';
    o.provenance = buildUnnamed37();
    o.textAnchor = buildGoogleCloudDocumentaiV1DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentTextChange--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentTextChange(
    api.GoogleCloudDocumentaiV1DocumentTextChange o) {
  buildCounterGoogleCloudDocumentaiV1DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentTextChange < 3) {
    unittest.expect(
      o.changedText!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.provenance!);
    checkGoogleCloudDocumentaiV1DocumentTextAnchor(o.textAnchor!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentTextChange--;
}

core.int buildCounterGoogleCloudDocumentaiV1EnableProcessorRequest = 0;
api.GoogleCloudDocumentaiV1EnableProcessorRequest
    buildGoogleCloudDocumentaiV1EnableProcessorRequest() {
  final o = api.GoogleCloudDocumentaiV1EnableProcessorRequest();
  buildCounterGoogleCloudDocumentaiV1EnableProcessorRequest++;
  if (buildCounterGoogleCloudDocumentaiV1EnableProcessorRequest < 3) {}
  buildCounterGoogleCloudDocumentaiV1EnableProcessorRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1EnableProcessorRequest(
    api.GoogleCloudDocumentaiV1EnableProcessorRequest o) {
  buildCounterGoogleCloudDocumentaiV1EnableProcessorRequest++;
  if (buildCounterGoogleCloudDocumentaiV1EnableProcessorRequest < 3) {}
  buildCounterGoogleCloudDocumentaiV1EnableProcessorRequest--;
}

core.List<api.GoogleCloudDocumentaiV1ProcessorType> buildUnnamed38() => [
      buildGoogleCloudDocumentaiV1ProcessorType(),
      buildGoogleCloudDocumentaiV1ProcessorType(),
    ];

void checkUnnamed38(core.List<api.GoogleCloudDocumentaiV1ProcessorType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1ProcessorType(o[0]);
  checkGoogleCloudDocumentaiV1ProcessorType(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1FetchProcessorTypesResponse = 0;
api.GoogleCloudDocumentaiV1FetchProcessorTypesResponse
    buildGoogleCloudDocumentaiV1FetchProcessorTypesResponse() {
  final o = api.GoogleCloudDocumentaiV1FetchProcessorTypesResponse();
  buildCounterGoogleCloudDocumentaiV1FetchProcessorTypesResponse++;
  if (buildCounterGoogleCloudDocumentaiV1FetchProcessorTypesResponse < 3) {
    o.processorTypes = buildUnnamed38();
  }
  buildCounterGoogleCloudDocumentaiV1FetchProcessorTypesResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1FetchProcessorTypesResponse(
    api.GoogleCloudDocumentaiV1FetchProcessorTypesResponse o) {
  buildCounterGoogleCloudDocumentaiV1FetchProcessorTypesResponse++;
  if (buildCounterGoogleCloudDocumentaiV1FetchProcessorTypesResponse < 3) {
    checkUnnamed38(o.processorTypes!);
  }
  buildCounterGoogleCloudDocumentaiV1FetchProcessorTypesResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1GcsDocument = 0;
api.GoogleCloudDocumentaiV1GcsDocument
    buildGoogleCloudDocumentaiV1GcsDocument() {
  final o = api.GoogleCloudDocumentaiV1GcsDocument();
  buildCounterGoogleCloudDocumentaiV1GcsDocument++;
  if (buildCounterGoogleCloudDocumentaiV1GcsDocument < 3) {
    o.gcsUri = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1GcsDocument--;
  return o;
}

void checkGoogleCloudDocumentaiV1GcsDocument(
    api.GoogleCloudDocumentaiV1GcsDocument o) {
  buildCounterGoogleCloudDocumentaiV1GcsDocument++;
  if (buildCounterGoogleCloudDocumentaiV1GcsDocument < 3) {
    unittest.expect(
      o.gcsUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1GcsDocument--;
}

core.List<api.GoogleCloudDocumentaiV1GcsDocument> buildUnnamed39() => [
      buildGoogleCloudDocumentaiV1GcsDocument(),
      buildGoogleCloudDocumentaiV1GcsDocument(),
    ];

void checkUnnamed39(core.List<api.GoogleCloudDocumentaiV1GcsDocument> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1GcsDocument(o[0]);
  checkGoogleCloudDocumentaiV1GcsDocument(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1GcsDocuments = 0;
api.GoogleCloudDocumentaiV1GcsDocuments
    buildGoogleCloudDocumentaiV1GcsDocuments() {
  final o = api.GoogleCloudDocumentaiV1GcsDocuments();
  buildCounterGoogleCloudDocumentaiV1GcsDocuments++;
  if (buildCounterGoogleCloudDocumentaiV1GcsDocuments < 3) {
    o.documents = buildUnnamed39();
  }
  buildCounterGoogleCloudDocumentaiV1GcsDocuments--;
  return o;
}

void checkGoogleCloudDocumentaiV1GcsDocuments(
    api.GoogleCloudDocumentaiV1GcsDocuments o) {
  buildCounterGoogleCloudDocumentaiV1GcsDocuments++;
  if (buildCounterGoogleCloudDocumentaiV1GcsDocuments < 3) {
    checkUnnamed39(o.documents!);
  }
  buildCounterGoogleCloudDocumentaiV1GcsDocuments--;
}

core.int buildCounterGoogleCloudDocumentaiV1GcsPrefix = 0;
api.GoogleCloudDocumentaiV1GcsPrefix buildGoogleCloudDocumentaiV1GcsPrefix() {
  final o = api.GoogleCloudDocumentaiV1GcsPrefix();
  buildCounterGoogleCloudDocumentaiV1GcsPrefix++;
  if (buildCounterGoogleCloudDocumentaiV1GcsPrefix < 3) {
    o.gcsUriPrefix = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1GcsPrefix--;
  return o;
}

void checkGoogleCloudDocumentaiV1GcsPrefix(
    api.GoogleCloudDocumentaiV1GcsPrefix o) {
  buildCounterGoogleCloudDocumentaiV1GcsPrefix++;
  if (buildCounterGoogleCloudDocumentaiV1GcsPrefix < 3) {
    unittest.expect(
      o.gcsUriPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1GcsPrefix--;
}

core.int buildCounterGoogleCloudDocumentaiV1HumanReviewStatus = 0;
api.GoogleCloudDocumentaiV1HumanReviewStatus
    buildGoogleCloudDocumentaiV1HumanReviewStatus() {
  final o = api.GoogleCloudDocumentaiV1HumanReviewStatus();
  buildCounterGoogleCloudDocumentaiV1HumanReviewStatus++;
  if (buildCounterGoogleCloudDocumentaiV1HumanReviewStatus < 3) {
    o.humanReviewOperation = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1HumanReviewStatus--;
  return o;
}

void checkGoogleCloudDocumentaiV1HumanReviewStatus(
    api.GoogleCloudDocumentaiV1HumanReviewStatus o) {
  buildCounterGoogleCloudDocumentaiV1HumanReviewStatus++;
  if (buildCounterGoogleCloudDocumentaiV1HumanReviewStatus < 3) {
    unittest.expect(
      o.humanReviewOperation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1HumanReviewStatus--;
}

core.List<api.GoogleCloudDocumentaiV1ProcessorVersion> buildUnnamed40() => [
      buildGoogleCloudDocumentaiV1ProcessorVersion(),
      buildGoogleCloudDocumentaiV1ProcessorVersion(),
    ];

void checkUnnamed40(core.List<api.GoogleCloudDocumentaiV1ProcessorVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1ProcessorVersion(o[0]);
  checkGoogleCloudDocumentaiV1ProcessorVersion(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1ListProcessorVersionsResponse = 0;
api.GoogleCloudDocumentaiV1ListProcessorVersionsResponse
    buildGoogleCloudDocumentaiV1ListProcessorVersionsResponse() {
  final o = api.GoogleCloudDocumentaiV1ListProcessorVersionsResponse();
  buildCounterGoogleCloudDocumentaiV1ListProcessorVersionsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1ListProcessorVersionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.processorVersions = buildUnnamed40();
  }
  buildCounterGoogleCloudDocumentaiV1ListProcessorVersionsResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1ListProcessorVersionsResponse(
    api.GoogleCloudDocumentaiV1ListProcessorVersionsResponse o) {
  buildCounterGoogleCloudDocumentaiV1ListProcessorVersionsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1ListProcessorVersionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed40(o.processorVersions!);
  }
  buildCounterGoogleCloudDocumentaiV1ListProcessorVersionsResponse--;
}

core.List<api.GoogleCloudDocumentaiV1Processor> buildUnnamed41() => [
      buildGoogleCloudDocumentaiV1Processor(),
      buildGoogleCloudDocumentaiV1Processor(),
    ];

void checkUnnamed41(core.List<api.GoogleCloudDocumentaiV1Processor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1Processor(o[0]);
  checkGoogleCloudDocumentaiV1Processor(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1ListProcessorsResponse = 0;
api.GoogleCloudDocumentaiV1ListProcessorsResponse
    buildGoogleCloudDocumentaiV1ListProcessorsResponse() {
  final o = api.GoogleCloudDocumentaiV1ListProcessorsResponse();
  buildCounterGoogleCloudDocumentaiV1ListProcessorsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1ListProcessorsResponse < 3) {
    o.nextPageToken = 'foo';
    o.processors = buildUnnamed41();
  }
  buildCounterGoogleCloudDocumentaiV1ListProcessorsResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1ListProcessorsResponse(
    api.GoogleCloudDocumentaiV1ListProcessorsResponse o) {
  buildCounterGoogleCloudDocumentaiV1ListProcessorsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1ListProcessorsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.processors!);
  }
  buildCounterGoogleCloudDocumentaiV1ListProcessorsResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1NormalizedVertex = 0;
api.GoogleCloudDocumentaiV1NormalizedVertex
    buildGoogleCloudDocumentaiV1NormalizedVertex() {
  final o = api.GoogleCloudDocumentaiV1NormalizedVertex();
  buildCounterGoogleCloudDocumentaiV1NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1NormalizedVertex--;
  return o;
}

void checkGoogleCloudDocumentaiV1NormalizedVertex(
    api.GoogleCloudDocumentaiV1NormalizedVertex o) {
  buildCounterGoogleCloudDocumentaiV1NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1NormalizedVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDocumentaiV1NormalizedVertex--;
}

core.int buildCounterGoogleCloudDocumentaiV1ProcessRequest = 0;
api.GoogleCloudDocumentaiV1ProcessRequest
    buildGoogleCloudDocumentaiV1ProcessRequest() {
  final o = api.GoogleCloudDocumentaiV1ProcessRequest();
  buildCounterGoogleCloudDocumentaiV1ProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessRequest < 3) {
    o.inlineDocument = buildGoogleCloudDocumentaiV1Document();
    o.rawDocument = buildGoogleCloudDocumentaiV1RawDocument();
    o.skipHumanReview = true;
  }
  buildCounterGoogleCloudDocumentaiV1ProcessRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1ProcessRequest(
    api.GoogleCloudDocumentaiV1ProcessRequest o) {
  buildCounterGoogleCloudDocumentaiV1ProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessRequest < 3) {
    checkGoogleCloudDocumentaiV1Document(o.inlineDocument!);
    checkGoogleCloudDocumentaiV1RawDocument(o.rawDocument!);
    unittest.expect(o.skipHumanReview!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1ProcessRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1ProcessResponse = 0;
api.GoogleCloudDocumentaiV1ProcessResponse
    buildGoogleCloudDocumentaiV1ProcessResponse() {
  final o = api.GoogleCloudDocumentaiV1ProcessResponse();
  buildCounterGoogleCloudDocumentaiV1ProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessResponse < 3) {
    o.document = buildGoogleCloudDocumentaiV1Document();
    o.humanReviewStatus = buildGoogleCloudDocumentaiV1HumanReviewStatus();
  }
  buildCounterGoogleCloudDocumentaiV1ProcessResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1ProcessResponse(
    api.GoogleCloudDocumentaiV1ProcessResponse o) {
  buildCounterGoogleCloudDocumentaiV1ProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessResponse < 3) {
    checkGoogleCloudDocumentaiV1Document(o.document!);
    checkGoogleCloudDocumentaiV1HumanReviewStatus(o.humanReviewStatus!);
  }
  buildCounterGoogleCloudDocumentaiV1ProcessResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1Processor = 0;
api.GoogleCloudDocumentaiV1Processor buildGoogleCloudDocumentaiV1Processor() {
  final o = api.GoogleCloudDocumentaiV1Processor();
  buildCounterGoogleCloudDocumentaiV1Processor++;
  if (buildCounterGoogleCloudDocumentaiV1Processor < 3) {
    o.createTime = 'foo';
    o.defaultProcessorVersion = 'foo';
    o.displayName = 'foo';
    o.kmsKeyName = 'foo';
    o.name = 'foo';
    o.processEndpoint = 'foo';
    o.state = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1Processor--;
  return o;
}

void checkGoogleCloudDocumentaiV1Processor(
    api.GoogleCloudDocumentaiV1Processor o) {
  buildCounterGoogleCloudDocumentaiV1Processor++;
  if (buildCounterGoogleCloudDocumentaiV1Processor < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultProcessorVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.processEndpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1Processor--;
}

core.List<api.GoogleCloudDocumentaiV1ProcessorTypeLocationInfo>
    buildUnnamed42() => [
          buildGoogleCloudDocumentaiV1ProcessorTypeLocationInfo(),
          buildGoogleCloudDocumentaiV1ProcessorTypeLocationInfo(),
        ];

void checkUnnamed42(
    core.List<api.GoogleCloudDocumentaiV1ProcessorTypeLocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1ProcessorTypeLocationInfo(o[0]);
  checkGoogleCloudDocumentaiV1ProcessorTypeLocationInfo(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1ProcessorType = 0;
api.GoogleCloudDocumentaiV1ProcessorType
    buildGoogleCloudDocumentaiV1ProcessorType() {
  final o = api.GoogleCloudDocumentaiV1ProcessorType();
  buildCounterGoogleCloudDocumentaiV1ProcessorType++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessorType < 3) {
    o.allowCreation = true;
    o.availableLocations = buildUnnamed42();
    o.category = 'foo';
    o.launchStage = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1ProcessorType--;
  return o;
}

void checkGoogleCloudDocumentaiV1ProcessorType(
    api.GoogleCloudDocumentaiV1ProcessorType o) {
  buildCounterGoogleCloudDocumentaiV1ProcessorType++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessorType < 3) {
    unittest.expect(o.allowCreation!, unittest.isTrue);
    checkUnnamed42(o.availableLocations!);
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.launchStage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1ProcessorType--;
}

core.int buildCounterGoogleCloudDocumentaiV1ProcessorTypeLocationInfo = 0;
api.GoogleCloudDocumentaiV1ProcessorTypeLocationInfo
    buildGoogleCloudDocumentaiV1ProcessorTypeLocationInfo() {
  final o = api.GoogleCloudDocumentaiV1ProcessorTypeLocationInfo();
  buildCounterGoogleCloudDocumentaiV1ProcessorTypeLocationInfo++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessorTypeLocationInfo < 3) {
    o.locationId = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1ProcessorTypeLocationInfo--;
  return o;
}

void checkGoogleCloudDocumentaiV1ProcessorTypeLocationInfo(
    api.GoogleCloudDocumentaiV1ProcessorTypeLocationInfo o) {
  buildCounterGoogleCloudDocumentaiV1ProcessorTypeLocationInfo++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessorTypeLocationInfo < 3) {
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1ProcessorTypeLocationInfo--;
}

core.int buildCounterGoogleCloudDocumentaiV1ProcessorVersion = 0;
api.GoogleCloudDocumentaiV1ProcessorVersion
    buildGoogleCloudDocumentaiV1ProcessorVersion() {
  final o = api.GoogleCloudDocumentaiV1ProcessorVersion();
  buildCounterGoogleCloudDocumentaiV1ProcessorVersion++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessorVersion < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.kmsKeyName = 'foo';
    o.kmsKeyVersionName = 'foo';
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1ProcessorVersion--;
  return o;
}

void checkGoogleCloudDocumentaiV1ProcessorVersion(
    api.GoogleCloudDocumentaiV1ProcessorVersion o) {
  buildCounterGoogleCloudDocumentaiV1ProcessorVersion++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessorVersion < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
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
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1ProcessorVersion--;
}

core.int buildCounterGoogleCloudDocumentaiV1RawDocument = 0;
api.GoogleCloudDocumentaiV1RawDocument
    buildGoogleCloudDocumentaiV1RawDocument() {
  final o = api.GoogleCloudDocumentaiV1RawDocument();
  buildCounterGoogleCloudDocumentaiV1RawDocument++;
  if (buildCounterGoogleCloudDocumentaiV1RawDocument < 3) {
    o.content = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1RawDocument--;
  return o;
}

void checkGoogleCloudDocumentaiV1RawDocument(
    api.GoogleCloudDocumentaiV1RawDocument o) {
  buildCounterGoogleCloudDocumentaiV1RawDocument++;
  if (buildCounterGoogleCloudDocumentaiV1RawDocument < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1RawDocument--;
}

core.int buildCounterGoogleCloudDocumentaiV1ReviewDocumentRequest = 0;
api.GoogleCloudDocumentaiV1ReviewDocumentRequest
    buildGoogleCloudDocumentaiV1ReviewDocumentRequest() {
  final o = api.GoogleCloudDocumentaiV1ReviewDocumentRequest();
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentRequest++;
  if (buildCounterGoogleCloudDocumentaiV1ReviewDocumentRequest < 3) {
    o.enableSchemaValidation = true;
    o.inlineDocument = buildGoogleCloudDocumentaiV1Document();
    o.priority = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1ReviewDocumentRequest(
    api.GoogleCloudDocumentaiV1ReviewDocumentRequest o) {
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentRequest++;
  if (buildCounterGoogleCloudDocumentaiV1ReviewDocumentRequest < 3) {
    unittest.expect(o.enableSchemaValidation!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1Document(o.inlineDocument!);
    unittest.expect(
      o.priority!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1ReviewDocumentRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest =
    0;
api.GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest
    buildGoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest() {
  final o = api.GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest();
  buildCounterGoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest <
      3) {
    o.defaultProcessorVersion = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest(
    api.GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest o) {
  buildCounterGoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest <
      3) {
    unittest.expect(
      o.defaultProcessorVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1UndeployProcessorVersionRequest = 0;
api.GoogleCloudDocumentaiV1UndeployProcessorVersionRequest
    buildGoogleCloudDocumentaiV1UndeployProcessorVersionRequest() {
  final o = api.GoogleCloudDocumentaiV1UndeployProcessorVersionRequest();
  buildCounterGoogleCloudDocumentaiV1UndeployProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1UndeployProcessorVersionRequest < 3) {}
  buildCounterGoogleCloudDocumentaiV1UndeployProcessorVersionRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1UndeployProcessorVersionRequest(
    api.GoogleCloudDocumentaiV1UndeployProcessorVersionRequest o) {
  buildCounterGoogleCloudDocumentaiV1UndeployProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1UndeployProcessorVersionRequest < 3) {}
  buildCounterGoogleCloudDocumentaiV1UndeployProcessorVersionRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1Vertex = 0;
api.GoogleCloudDocumentaiV1Vertex buildGoogleCloudDocumentaiV1Vertex() {
  final o = api.GoogleCloudDocumentaiV1Vertex();
  buildCounterGoogleCloudDocumentaiV1Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudDocumentaiV1Vertex--;
  return o;
}

void checkGoogleCloudDocumentaiV1Vertex(api.GoogleCloudDocumentaiV1Vertex o) {
  buildCounterGoogleCloudDocumentaiV1Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1Vertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1Vertex--;
}

core.List<api.GoogleCloudLocationLocation> buildUnnamed43() => [
      buildGoogleCloudLocationLocation(),
      buildGoogleCloudLocationLocation(),
    ];

void checkUnnamed43(core.List<api.GoogleCloudLocationLocation> o) {
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
    o.locations = buildUnnamed43();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
  return o;
}

void checkGoogleCloudLocationListLocationsResponse(
    api.GoogleCloudLocationListLocationsResponse o) {
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    checkUnnamed43(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed44() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed44(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed45() => {
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

void checkUnnamed45(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudLocationLocation = 0;
api.GoogleCloudLocationLocation buildGoogleCloudLocationLocation() {
  final o = api.GoogleCloudLocationLocation();
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed44();
    o.locationId = 'foo';
    o.metadata = buildUnnamed45();
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
    checkUnnamed44(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed45(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudLocationLocation--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed46() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed46(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed46();
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
    checkUnnamed46(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed47() => {
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

void checkUnnamed47(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed48() => {
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

void checkUnnamed48(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed47();
    o.name = 'foo';
    o.response = buildUnnamed48();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed47(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed48(o.response!);
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

core.Map<core.String, core.Object?> buildUnnamed49() => {
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

void checkUnnamed49(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed50() => [
      buildUnnamed49(),
      buildUnnamed49(),
    ];

void checkUnnamed50(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed49(o[0]);
  checkUnnamed49(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed50();
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
    checkUnnamed50(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeColor = 0;
api.GoogleTypeColor buildGoogleTypeColor() {
  final o = api.GoogleTypeColor();
  buildCounterGoogleTypeColor++;
  if (buildCounterGoogleTypeColor < 3) {
    o.alpha = 42.0;
    o.blue = 42.0;
    o.green = 42.0;
    o.red = 42.0;
  }
  buildCounterGoogleTypeColor--;
  return o;
}

void checkGoogleTypeColor(api.GoogleTypeColor o) {
  buildCounterGoogleTypeColor++;
  if (buildCounterGoogleTypeColor < 3) {
    unittest.expect(
      o.alpha!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.blue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.green!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.red!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleTypeColor--;
}

core.int buildCounterGoogleTypeDate = 0;
api.GoogleTypeDate buildGoogleTypeDate() {
  final o = api.GoogleTypeDate();
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterGoogleTypeDate--;
  return o;
}

void checkGoogleTypeDate(api.GoogleTypeDate o) {
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleTypeDate--;
}

core.int buildCounterGoogleTypeDateTime = 0;
api.GoogleTypeDateTime buildGoogleTypeDateTime() {
  final o = api.GoogleTypeDateTime();
  buildCounterGoogleTypeDateTime++;
  if (buildCounterGoogleTypeDateTime < 3) {
    o.day = 42;
    o.hours = 42;
    o.minutes = 42;
    o.month = 42;
    o.nanos = 42;
    o.seconds = 42;
    o.timeZone = buildGoogleTypeTimeZone();
    o.utcOffset = 'foo';
    o.year = 42;
  }
  buildCounterGoogleTypeDateTime--;
  return o;
}

void checkGoogleTypeDateTime(api.GoogleTypeDateTime o) {
  buildCounterGoogleTypeDateTime++;
  if (buildCounterGoogleTypeDateTime < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.hours!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minutes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.seconds!,
      unittest.equals(42),
    );
    checkGoogleTypeTimeZone(o.timeZone!);
    unittest.expect(
      o.utcOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleTypeDateTime--;
}

core.int buildCounterGoogleTypeMoney = 0;
api.GoogleTypeMoney buildGoogleTypeMoney() {
  final o = api.GoogleTypeMoney();
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
    o.currencyCode = 'foo';
    o.nanos = 42;
    o.units = 'foo';
  }
  buildCounterGoogleTypeMoney--;
  return o;
}

void checkGoogleTypeMoney(api.GoogleTypeMoney o) {
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.units!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypeMoney--;
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

core.int buildCounterGoogleTypePostalAddress = 0;
api.GoogleTypePostalAddress buildGoogleTypePostalAddress() {
  final o = api.GoogleTypePostalAddress();
  buildCounterGoogleTypePostalAddress++;
  if (buildCounterGoogleTypePostalAddress < 3) {
    o.addressLines = buildUnnamed51();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed52();
    o.regionCode = 'foo';
    o.revision = 42;
    o.sortingCode = 'foo';
    o.sublocality = 'foo';
  }
  buildCounterGoogleTypePostalAddress--;
  return o;
}

void checkGoogleTypePostalAddress(api.GoogleTypePostalAddress o) {
  buildCounterGoogleTypePostalAddress++;
  if (buildCounterGoogleTypePostalAddress < 3) {
    checkUnnamed51(o.addressLines!);
    unittest.expect(
      o.administrativeArea!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.organization!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    checkUnnamed52(o.recipients!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sortingCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sublocality!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypePostalAddress--;
}

core.int buildCounterGoogleTypeTimeZone = 0;
api.GoogleTypeTimeZone buildGoogleTypeTimeZone() {
  final o = api.GoogleTypeTimeZone();
  buildCounterGoogleTypeTimeZone++;
  if (buildCounterGoogleTypeTimeZone < 3) {
    o.id = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleTypeTimeZone--;
  return o;
}

void checkGoogleTypeTimeZone(api.GoogleTypeTimeZone o) {
  buildCounterGoogleTypeTimeZone++;
  if (buildCounterGoogleTypeTimeZone < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypeTimeZone--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudDocumentaiV1BatchDocumentsInputConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1BatchDocumentsInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1BatchDocumentsInputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1BatchDocumentsInputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1BatchProcessRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1BatchProcessRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1BatchProcessRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1BatchProcessRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1BoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1BoundingPoly.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1BoundingPoly(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DeployProcessorVersionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DeployProcessorVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1DeployProcessorVersionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DeployProcessorVersionRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DisableProcessorRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DisableProcessorRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DisableProcessorRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DisableProcessorRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1Document', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1Document();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1Document.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1Document(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentEntity(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentEntityNormalizedValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentEntityNormalizedValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1DocumentEntityNormalizedValue.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentEntityNormalizedValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentEntityRelation',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentEntityRelation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentEntityRelation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentEntityRelation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentOutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentOutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentOutputConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageAnchor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageAnchor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageAnchor(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageAnchorPageRef',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageAnchorPageRef();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageAnchorPageRef(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageBlock', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageBlock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageBlock.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageBlock(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentPageDetectedLanguage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageDimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageDimension(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageFormField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageFormField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageFormField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageFormField(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageImage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageLayout', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageLayout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageLayout(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageLine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageLine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageLine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageLine(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageMatrix', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageMatrix();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageMatrix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageMatrix(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageParagraph', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageParagraph();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageParagraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageParagraph(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageSymbol', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageSymbol();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageSymbol.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageSymbol(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageTable(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageTableTableCell',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageTableTableCell();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageTableTableCell.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageTableTableCell(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageTableTableRow',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageTableTableRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageToken(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageVisualElement',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageVisualElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageVisualElement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageVisualElement(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentProvenance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentProvenance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentProvenance(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentProvenanceParent',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentProvenanceParent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentProvenanceParent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentProvenanceParent(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentRevision', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentRevision();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentRevision.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentRevision(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentRevisionHumanReview', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentRevisionHumanReview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1DocumentRevisionHumanReview.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentRevisionHumanReview(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentShardInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentShardInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentShardInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentShardInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentStyle(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentStyleFontSize', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentStyleFontSize();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentStyleFontSize.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentStyleFontSize(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentTextAnchor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentTextAnchor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentTextAnchor(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentTextChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentTextChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentTextChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentTextChange(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1EnableProcessorRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1EnableProcessorRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1EnableProcessorRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1EnableProcessorRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1FetchProcessorTypesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1FetchProcessorTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1FetchProcessorTypesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1FetchProcessorTypesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1GcsDocument', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1GcsDocument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1GcsDocument.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1GcsDocument(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1GcsDocuments', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1GcsDocuments();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1GcsDocuments.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1GcsDocuments(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1GcsPrefix', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1GcsPrefix();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1GcsPrefix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1GcsPrefix(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1HumanReviewStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1HumanReviewStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1HumanReviewStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1HumanReviewStatus(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1ListProcessorVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1ListProcessorVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1ListProcessorVersionsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ListProcessorVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1ListProcessorsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1ListProcessorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1ListProcessorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ListProcessorsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1NormalizedVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1NormalizedVertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1NormalizedVertex(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1ProcessRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1ProcessRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1ProcessRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ProcessRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1ProcessResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1ProcessResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1ProcessResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ProcessResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1Processor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1Processor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1Processor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1Processor(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1ProcessorType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1ProcessorType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1ProcessorType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ProcessorType(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1ProcessorTypeLocationInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1ProcessorTypeLocationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1ProcessorTypeLocationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ProcessorTypeLocationInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1ProcessorVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1ProcessorVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1ProcessorVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ProcessorVersion(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1RawDocument', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1RawDocument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1RawDocument.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1RawDocument(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1ReviewDocumentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1ReviewDocumentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1ReviewDocumentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ReviewDocumentRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1UndeployProcessorVersionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1UndeployProcessorVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1UndeployProcessorVersionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1UndeployProcessorVersionRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1Vertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1Vertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1Vertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1Vertex(od);
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

  unittest.group('obj-schema-GoogleTypeColor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeColor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeColor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeColor(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDate(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDateTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDateTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDateTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDateTime(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeMoney', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeMoney.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeMoney(od);
    });
  });

  unittest.group('obj-schema-GoogleTypePostalAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypePostalAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypePostalAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypePostalAddress(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeTimeZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeTimeZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeTimeZone.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeTimeZone(od);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).operations;
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
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--fetchProcessorTypes', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations;
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
        final resp = convert.json
            .encode(buildGoogleCloudDocumentaiV1FetchProcessorTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.fetchProcessorTypes(arg_parent, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1FetchProcessorTypesResponse(
          response as api.GoogleCloudDocumentaiV1FetchProcessorTypesResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations;
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
        final resp = convert.json.encode(buildGoogleCloudLocationLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudLocationLocation(
          response as api.GoogleCloudLocationLocation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations;
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
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.operations;
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
      final res = api.DocumentApi(mock).projects.locations.operations;
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
      final res = api.DocumentApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsProcessorsResource', () {
    unittest.test('method--batchProcess', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_request = buildGoogleCloudDocumentaiV1BatchProcessRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDocumentaiV1BatchProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1BatchProcessRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
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
          await res.batchProcess(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_request = buildGoogleCloudDocumentaiV1Processor();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDocumentaiV1Processor.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1Processor(obj);

        final path = (req.url).path;
        var pathOffset = 0;
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
            convert.json.encode(buildGoogleCloudDocumentaiV1Processor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1Processor(
          response as api.GoogleCloudDocumentaiV1Processor);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
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

    unittest.test('method--disable', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_request = buildGoogleCloudDocumentaiV1DisableProcessorRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDocumentaiV1DisableProcessorRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1DisableProcessorRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
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
          await res.disable(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--enable', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_request = buildGoogleCloudDocumentaiV1EnableProcessorRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDocumentaiV1EnableProcessorRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1EnableProcessorRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
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
          await res.enable(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
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
            convert.json.encode(buildGoogleCloudDocumentaiV1Processor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1Processor(
          response as api.GoogleCloudDocumentaiV1Processor);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
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
            .encode(buildGoogleCloudDocumentaiV1ListProcessorsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1ListProcessorsResponse(
          response as api.GoogleCloudDocumentaiV1ListProcessorsResponse);
    });

    unittest.test('method--process', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_request = buildGoogleCloudDocumentaiV1ProcessRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDocumentaiV1ProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1ProcessRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
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
            convert.json.encode(buildGoogleCloudDocumentaiV1ProcessResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.process(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1ProcessResponse(
          response as api.GoogleCloudDocumentaiV1ProcessResponse);
    });

    unittest.test('method--setDefaultProcessorVersion', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_request =
          buildGoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest();
      final arg_processor = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
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
      final response = await res.setDefaultProcessorVersion(
          arg_request, arg_processor,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsProcessorsHumanReviewConfigResource', () {
    unittest.test('method--reviewDocument', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.humanReviewConfig;
      final arg_request = buildGoogleCloudDocumentaiV1ReviewDocumentRequest();
      final arg_humanReviewConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDocumentaiV1ReviewDocumentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1ReviewDocumentRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
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
      final response = await res.reviewDocument(
          arg_request, arg_humanReviewConfig,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsProcessorsProcessorVersionsResource', () {
    unittest.test('method--batchProcess', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      final arg_request = buildGoogleCloudDocumentaiV1BatchProcessRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDocumentaiV1BatchProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1BatchProcessRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
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
          await res.batchProcess(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
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
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      final arg_request =
          buildGoogleCloudDocumentaiV1DeployProcessorVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDocumentaiV1DeployProcessorVersionRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1DeployProcessorVersionRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
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
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
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
            convert.json.encode(buildGoogleCloudDocumentaiV1ProcessorVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1ProcessorVersion(
          response as api.GoogleCloudDocumentaiV1ProcessorVersion);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
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
        final resp = convert.json.encode(
            buildGoogleCloudDocumentaiV1ListProcessorVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1ListProcessorVersionsResponse(
          response as api.GoogleCloudDocumentaiV1ListProcessorVersionsResponse);
    });

    unittest.test('method--process', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      final arg_request = buildGoogleCloudDocumentaiV1ProcessRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDocumentaiV1ProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1ProcessRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
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
            convert.json.encode(buildGoogleCloudDocumentaiV1ProcessResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.process(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1ProcessResponse(
          response as api.GoogleCloudDocumentaiV1ProcessResponse);
    });

    unittest.test('method--undeploy', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      final arg_request =
          buildGoogleCloudDocumentaiV1UndeployProcessorVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDocumentaiV1UndeployProcessorVersionRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1UndeployProcessorVersionRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
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

  unittest.group('resource-ProjectsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.operations;
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
  });

  unittest.group('resource-Uiv1beta3ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).uiv1beta3.projects.locations;
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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('uiv1beta3/'),
        );
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).uiv1beta3.projects.locations;
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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('uiv1beta3/'),
        );
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
  });

  unittest.group('resource-Uiv1beta3ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).uiv1beta3.projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('uiv1beta3/'),
        );
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
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
      final res = api.DocumentApi(mock).uiv1beta3.projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('uiv1beta3/'),
        );
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
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
      final res = api.DocumentApi(mock).uiv1beta3.projects.locations.operations;
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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('uiv1beta3/'),
        );
        pathOffset += 10;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
