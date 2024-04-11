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

import 'package:googleapis/documentai/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudDocumentaiV1Barcode = 0;
api.GoogleCloudDocumentaiV1Barcode buildGoogleCloudDocumentaiV1Barcode() {
  final o = api.GoogleCloudDocumentaiV1Barcode();
  buildCounterGoogleCloudDocumentaiV1Barcode++;
  if (buildCounterGoogleCloudDocumentaiV1Barcode < 3) {
    o.format = 'foo';
    o.rawValue = 'foo';
    o.valueFormat = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1Barcode--;
  return o;
}

void checkGoogleCloudDocumentaiV1Barcode(api.GoogleCloudDocumentaiV1Barcode o) {
  buildCounterGoogleCloudDocumentaiV1Barcode++;
  if (buildCounterGoogleCloudDocumentaiV1Barcode < 3) {
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rawValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueFormat!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1Barcode--;
}

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

core.Map<core.String, core.String> buildUnnamed0() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed0(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDocumentaiV1BatchProcessRequest = 0;
api.GoogleCloudDocumentaiV1BatchProcessRequest
    buildGoogleCloudDocumentaiV1BatchProcessRequest() {
  final o = api.GoogleCloudDocumentaiV1BatchProcessRequest();
  buildCounterGoogleCloudDocumentaiV1BatchProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1BatchProcessRequest < 3) {
    o.documentOutputConfig = buildGoogleCloudDocumentaiV1DocumentOutputConfig();
    o.inputDocuments = buildGoogleCloudDocumentaiV1BatchDocumentsInputConfig();
    o.labels = buildUnnamed0();
    o.processOptions = buildGoogleCloudDocumentaiV1ProcessOptions();
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
    checkUnnamed0(o.labels!);
    checkGoogleCloudDocumentaiV1ProcessOptions(o.processOptions!);
    unittest.expect(o.skipHumanReview!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1BatchProcessRequest--;
}

core.List<api.GoogleCloudDocumentaiV1NormalizedVertex> buildUnnamed1() => [
      buildGoogleCloudDocumentaiV1NormalizedVertex(),
      buildGoogleCloudDocumentaiV1NormalizedVertex(),
    ];

void checkUnnamed1(core.List<api.GoogleCloudDocumentaiV1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1NormalizedVertex(o[0]);
  checkGoogleCloudDocumentaiV1NormalizedVertex(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1Vertex> buildUnnamed2() => [
      buildGoogleCloudDocumentaiV1Vertex(),
      buildGoogleCloudDocumentaiV1Vertex(),
    ];

void checkUnnamed2(core.List<api.GoogleCloudDocumentaiV1Vertex> o) {
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
    o.normalizedVertices = buildUnnamed1();
    o.vertices = buildUnnamed2();
  }
  buildCounterGoogleCloudDocumentaiV1BoundingPoly--;
  return o;
}

void checkGoogleCloudDocumentaiV1BoundingPoly(
    api.GoogleCloudDocumentaiV1BoundingPoly o) {
  buildCounterGoogleCloudDocumentaiV1BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1BoundingPoly < 3) {
    checkUnnamed1(o.normalizedVertices!);
    checkUnnamed2(o.vertices!);
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

core.List<api.GoogleCloudDocumentaiV1DocumentEntity> buildUnnamed3() => [
      buildGoogleCloudDocumentaiV1DocumentEntity(),
      buildGoogleCloudDocumentaiV1DocumentEntity(),
    ];

void checkUnnamed3(core.List<api.GoogleCloudDocumentaiV1DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1DocumentEntity(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentEntityRelation> buildUnnamed4() =>
    [
      buildGoogleCloudDocumentaiV1DocumentEntityRelation(),
      buildGoogleCloudDocumentaiV1DocumentEntityRelation(),
    ];

void checkUnnamed4(
    core.List<api.GoogleCloudDocumentaiV1DocumentEntityRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentEntityRelation(o[0]);
  checkGoogleCloudDocumentaiV1DocumentEntityRelation(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPage> buildUnnamed5() => [
      buildGoogleCloudDocumentaiV1DocumentPage(),
      buildGoogleCloudDocumentaiV1DocumentPage(),
    ];

void checkUnnamed5(core.List<api.GoogleCloudDocumentaiV1DocumentPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentRevision> buildUnnamed6() => [
      buildGoogleCloudDocumentaiV1DocumentRevision(),
      buildGoogleCloudDocumentaiV1DocumentRevision(),
    ];

void checkUnnamed6(core.List<api.GoogleCloudDocumentaiV1DocumentRevision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentRevision(o[0]);
  checkGoogleCloudDocumentaiV1DocumentRevision(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentTextChange> buildUnnamed7() => [
      buildGoogleCloudDocumentaiV1DocumentTextChange(),
      buildGoogleCloudDocumentaiV1DocumentTextChange(),
    ];

void checkUnnamed7(core.List<api.GoogleCloudDocumentaiV1DocumentTextChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentTextChange(o[0]);
  checkGoogleCloudDocumentaiV1DocumentTextChange(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentStyle> buildUnnamed8() => [
      buildGoogleCloudDocumentaiV1DocumentStyle(),
      buildGoogleCloudDocumentaiV1DocumentStyle(),
    ];

void checkUnnamed8(core.List<api.GoogleCloudDocumentaiV1DocumentStyle> o) {
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
    o.entities = buildUnnamed3();
    o.entityRelations = buildUnnamed4();
    o.error = buildGoogleRpcStatus();
    o.mimeType = 'foo';
    o.pages = buildUnnamed5();
    o.revisions = buildUnnamed6();
    o.shardInfo = buildGoogleCloudDocumentaiV1DocumentShardInfo();
    o.text = 'foo';
    o.textChanges = buildUnnamed7();
    o.textStyles = buildUnnamed8();
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
    checkUnnamed3(o.entities!);
    checkUnnamed4(o.entityRelations!);
    checkGoogleRpcStatus(o.error!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.pages!);
    checkUnnamed6(o.revisions!);
    checkGoogleCloudDocumentaiV1DocumentShardInfo(o.shardInfo!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.textChanges!);
    checkUnnamed8(o.textStyles!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1Document--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentEntity> buildUnnamed9() => [
      buildGoogleCloudDocumentaiV1DocumentEntity(),
      buildGoogleCloudDocumentaiV1DocumentEntity(),
    ];

void checkUnnamed9(core.List<api.GoogleCloudDocumentaiV1DocumentEntity> o) {
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
    o.properties = buildUnnamed9();
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
    checkUnnamed9(o.properties!);
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
    o.fieldMask = 'foo';
    o.gcsUri = 'foo';
    o.shardingConfig =
        buildGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig();
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
      o.fieldMask!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gcsUri!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig(
        o.shardingConfig!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig =
    0;
api.GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig
    buildGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig() {
  final o = api
      .GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig();
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig <
      3) {
    o.pagesOverlap = 42;
    o.pagesPerShard = 42;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig(
    api.GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig
        o) {
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig <
      3) {
    unittest.expect(
      o.pagesOverlap!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pagesPerShard!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageBlock> buildUnnamed10() => [
      buildGoogleCloudDocumentaiV1DocumentPageBlock(),
      buildGoogleCloudDocumentaiV1DocumentPageBlock(),
    ];

void checkUnnamed10(core.List<api.GoogleCloudDocumentaiV1DocumentPageBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageBlock(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageBlock(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedBarcode>
    buildUnnamed11() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedBarcode(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedBarcode(),
        ];

void checkUnnamed11(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedBarcode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedBarcode(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedBarcode(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed12() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed12(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageFormField> buildUnnamed13() =>
    [
      buildGoogleCloudDocumentaiV1DocumentPageFormField(),
      buildGoogleCloudDocumentaiV1DocumentPageFormField(),
    ];

void checkUnnamed13(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageFormField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageFormField(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageFormField(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageLine> buildUnnamed14() => [
      buildGoogleCloudDocumentaiV1DocumentPageLine(),
      buildGoogleCloudDocumentaiV1DocumentPageLine(),
    ];

void checkUnnamed14(core.List<api.GoogleCloudDocumentaiV1DocumentPageLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageLine(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageLine(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageParagraph> buildUnnamed15() =>
    [
      buildGoogleCloudDocumentaiV1DocumentPageParagraph(),
      buildGoogleCloudDocumentaiV1DocumentPageParagraph(),
    ];

void checkUnnamed15(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageParagraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageParagraph(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageParagraph(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageSymbol> buildUnnamed16() => [
      buildGoogleCloudDocumentaiV1DocumentPageSymbol(),
      buildGoogleCloudDocumentaiV1DocumentPageSymbol(),
    ];

void checkUnnamed16(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageSymbol> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageSymbol(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageSymbol(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageTable> buildUnnamed17() => [
      buildGoogleCloudDocumentaiV1DocumentPageTable(),
      buildGoogleCloudDocumentaiV1DocumentPageTable(),
    ];

void checkUnnamed17(core.List<api.GoogleCloudDocumentaiV1DocumentPageTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageTable(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageTable(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageToken> buildUnnamed18() => [
      buildGoogleCloudDocumentaiV1DocumentPageToken(),
      buildGoogleCloudDocumentaiV1DocumentPageToken(),
    ];

void checkUnnamed18(core.List<api.GoogleCloudDocumentaiV1DocumentPageToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageToken(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageToken(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageMatrix> buildUnnamed19() => [
      buildGoogleCloudDocumentaiV1DocumentPageMatrix(),
      buildGoogleCloudDocumentaiV1DocumentPageMatrix(),
    ];

void checkUnnamed19(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageMatrix(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageMatrix(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageVisualElement>
    buildUnnamed20() => [
          buildGoogleCloudDocumentaiV1DocumentPageVisualElement(),
          buildGoogleCloudDocumentaiV1DocumentPageVisualElement(),
        ];

void checkUnnamed20(
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
    o.blocks = buildUnnamed10();
    o.detectedBarcodes = buildUnnamed11();
    o.detectedLanguages = buildUnnamed12();
    o.dimension = buildGoogleCloudDocumentaiV1DocumentPageDimension();
    o.formFields = buildUnnamed13();
    o.image = buildGoogleCloudDocumentaiV1DocumentPageImage();
    o.imageQualityScores =
        buildGoogleCloudDocumentaiV1DocumentPageImageQualityScores();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.lines = buildUnnamed14();
    o.pageNumber = 42;
    o.paragraphs = buildUnnamed15();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
    o.symbols = buildUnnamed16();
    o.tables = buildUnnamed17();
    o.tokens = buildUnnamed18();
    o.transforms = buildUnnamed19();
    o.visualElements = buildUnnamed20();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPage--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPage(
    api.GoogleCloudDocumentaiV1DocumentPage o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPage < 3) {
    checkUnnamed10(o.blocks!);
    checkUnnamed11(o.detectedBarcodes!);
    checkUnnamed12(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageDimension(o.dimension!);
    checkUnnamed13(o.formFields!);
    checkGoogleCloudDocumentaiV1DocumentPageImage(o.image!);
    checkGoogleCloudDocumentaiV1DocumentPageImageQualityScores(
        o.imageQualityScores!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    checkUnnamed14(o.lines!);
    unittest.expect(
      o.pageNumber!,
      unittest.equals(42),
    );
    checkUnnamed15(o.paragraphs!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
    checkUnnamed16(o.symbols!);
    checkUnnamed17(o.tables!);
    checkUnnamed18(o.tokens!);
    checkUnnamed19(o.transforms!);
    checkUnnamed20(o.visualElements!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPage--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageAnchorPageRef>
    buildUnnamed21() => [
          buildGoogleCloudDocumentaiV1DocumentPageAnchorPageRef(),
          buildGoogleCloudDocumentaiV1DocumentPageAnchorPageRef(),
        ];

void checkUnnamed21(
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
    o.pageRefs = buildUnnamed21();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageAnchor(
    api.GoogleCloudDocumentaiV1DocumentPageAnchor o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageAnchor < 3) {
    checkUnnamed21(o.pageRefs!);
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

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageBlock = 0;
api.GoogleCloudDocumentaiV1DocumentPageBlock
    buildGoogleCloudDocumentaiV1DocumentPageBlock() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageBlock();
  buildCounterGoogleCloudDocumentaiV1DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageBlock < 3) {
    o.detectedLanguages = buildUnnamed22();
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
    checkUnnamed22(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageBlock--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedBarcode = 0;
api.GoogleCloudDocumentaiV1DocumentPageDetectedBarcode
    buildGoogleCloudDocumentaiV1DocumentPageDetectedBarcode() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageDetectedBarcode();
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedBarcode++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedBarcode < 3) {
    o.barcode = buildGoogleCloudDocumentaiV1Barcode();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedBarcode--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageDetectedBarcode(
    api.GoogleCloudDocumentaiV1DocumentPageDetectedBarcode o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedBarcode++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedBarcode < 3) {
    checkGoogleCloudDocumentaiV1Barcode(o.barcode!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageDetectedBarcode--;
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
    o.nameDetectedLanguages = buildUnnamed23();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
    o.valueDetectedLanguages = buildUnnamed24();
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
    checkUnnamed23(o.nameDetectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
    checkUnnamed24(o.valueDetectedLanguages!);
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

core.List<
        api.GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect>
    buildUnnamed25() => [
          buildGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect(),
          buildGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect(),
        ];

void checkUnnamed25(
    core.List<
            api
            .GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect(
      o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect(
      o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScores = 0;
api.GoogleCloudDocumentaiV1DocumentPageImageQualityScores
    buildGoogleCloudDocumentaiV1DocumentPageImageQualityScores() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageImageQualityScores();
  buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScores++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScores < 3) {
    o.detectedDefects = buildUnnamed25();
    o.qualityScore = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScores--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageImageQualityScores(
    api.GoogleCloudDocumentaiV1DocumentPageImageQualityScores o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScores++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScores < 3) {
    checkUnnamed25(o.detectedDefects!);
    unittest.expect(
      o.qualityScore!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScores--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect =
    0;
api.GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect
    buildGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect() {
  final o =
      api.GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect();
  buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect <
      3) {
    o.confidence = 42.0;
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect(
    api.GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect--;
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
    buildUnnamed26() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed26(
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
    o.detectedLanguages = buildUnnamed26();
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
    checkUnnamed26(o.detectedLanguages!);
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

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph = 0;
api.GoogleCloudDocumentaiV1DocumentPageParagraph
    buildGoogleCloudDocumentaiV1DocumentPageParagraph() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageParagraph();
  buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph < 3) {
    o.detectedLanguages = buildUnnamed27();
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
    checkUnnamed27(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageParagraph--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed28() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed28(
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
    o.detectedLanguages = buildUnnamed28();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageSymbol--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageSymbol(
    api.GoogleCloudDocumentaiV1DocumentPageSymbol o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageSymbol++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageSymbol < 3) {
    checkUnnamed28(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageSymbol--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableRow>
    buildUnnamed29() => [
          buildGoogleCloudDocumentaiV1DocumentPageTableTableRow(),
          buildGoogleCloudDocumentaiV1DocumentPageTableTableRow(),
        ];

void checkUnnamed29(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed30() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed30(
    core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableRow>
    buildUnnamed31() => [
          buildGoogleCloudDocumentaiV1DocumentPageTableTableRow(),
          buildGoogleCloudDocumentaiV1DocumentPageTableTableRow(),
        ];

void checkUnnamed31(
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
    o.bodyRows = buildUnnamed29();
    o.detectedLanguages = buildUnnamed30();
    o.headerRows = buildUnnamed31();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTable--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageTable(
    api.GoogleCloudDocumentaiV1DocumentPageTable o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTable < 3) {
    checkUnnamed29(o.bodyRows!);
    checkUnnamed30(o.detectedLanguages!);
    checkUnnamed31(o.headerRows!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTable--;
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

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell = 0;
api.GoogleCloudDocumentaiV1DocumentPageTableTableCell
    buildGoogleCloudDocumentaiV1DocumentPageTableTableCell() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageTableTableCell();
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell < 3) {
    o.colSpan = 42;
    o.detectedLanguages = buildUnnamed32();
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
    checkUnnamed32(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    unittest.expect(
      o.rowSpan!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableCell--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageTableTableCell>
    buildUnnamed33() => [
          buildGoogleCloudDocumentaiV1DocumentPageTableTableCell(),
          buildGoogleCloudDocumentaiV1DocumentPageTableTableCell(),
        ];

void checkUnnamed33(
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
    o.cells = buildUnnamed33();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageTableTableRow(
    api.GoogleCloudDocumentaiV1DocumentPageTableTableRow o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow < 3) {
    checkUnnamed33(o.cells!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTableTableRow--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed34() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed34(
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
    o.detectedLanguages = buildUnnamed34();
    o.layout = buildGoogleCloudDocumentaiV1DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1DocumentProvenance();
    o.styleInfo = buildGoogleCloudDocumentaiV1DocumentPageTokenStyleInfo();
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
    checkUnnamed34(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1DocumentProvenance(o.provenance!);
    checkGoogleCloudDocumentaiV1DocumentPageTokenStyleInfo(o.styleInfo!);
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

core.int buildCounterGoogleCloudDocumentaiV1DocumentPageTokenStyleInfo = 0;
api.GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo
    buildGoogleCloudDocumentaiV1DocumentPageTokenStyleInfo() {
  final o = api.GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo();
  buildCounterGoogleCloudDocumentaiV1DocumentPageTokenStyleInfo++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTokenStyleInfo < 3) {
    o.backgroundColor = buildGoogleTypeColor();
    o.bold = true;
    o.fontSize = 42;
    o.fontType = 'foo';
    o.fontWeight = 42;
    o.handwritten = true;
    o.italic = true;
    o.letterSpacing = 42.0;
    o.pixelFontSize = 42.0;
    o.smallcaps = true;
    o.strikeout = true;
    o.subscript = true;
    o.superscript = true;
    o.textColor = buildGoogleTypeColor();
    o.underlined = true;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTokenStyleInfo--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentPageTokenStyleInfo(
    api.GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo o) {
  buildCounterGoogleCloudDocumentaiV1DocumentPageTokenStyleInfo++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentPageTokenStyleInfo < 3) {
    checkGoogleTypeColor(o.backgroundColor!);
    unittest.expect(o.bold!, unittest.isTrue);
    unittest.expect(
      o.fontSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.fontType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fontWeight!,
      unittest.equals(42),
    );
    unittest.expect(o.handwritten!, unittest.isTrue);
    unittest.expect(o.italic!, unittest.isTrue);
    unittest.expect(
      o.letterSpacing!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.pixelFontSize!,
      unittest.equals(42.0),
    );
    unittest.expect(o.smallcaps!, unittest.isTrue);
    unittest.expect(o.strikeout!, unittest.isTrue);
    unittest.expect(o.subscript!, unittest.isTrue);
    unittest.expect(o.superscript!, unittest.isTrue);
    checkGoogleTypeColor(o.textColor!);
    unittest.expect(o.underlined!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageTokenStyleInfo--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>
    buildUnnamed35() => [
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1DocumentPageDetectedLanguage(),
        ];

void checkUnnamed35(
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
    o.detectedLanguages = buildUnnamed35();
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
    checkUnnamed35(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1DocumentPageLayout(o.layout!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentPageVisualElement--;
}

core.List<api.GoogleCloudDocumentaiV1DocumentProvenanceParent>
    buildUnnamed36() => [
          buildGoogleCloudDocumentaiV1DocumentProvenanceParent(),
          buildGoogleCloudDocumentaiV1DocumentProvenanceParent(),
        ];

void checkUnnamed36(
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
    o.parents = buildUnnamed36();
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
    checkUnnamed36(o.parents!);
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

core.List<core.int> buildUnnamed37() => [
      42,
      42,
    ];

void checkUnnamed37(core.List<core.int> o) {
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

core.List<core.String> buildUnnamed38() => [
      'foo',
      'foo',
    ];

void checkUnnamed38(core.List<core.String> o) {
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
    o.parent = buildUnnamed37();
    o.parentIds = buildUnnamed38();
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
    checkUnnamed37(o.parent!);
    checkUnnamed38(o.parentIds!);
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

core.List<api.GoogleCloudDocumentaiV1DocumentSchemaEntityType>
    buildUnnamed39() => [
          buildGoogleCloudDocumentaiV1DocumentSchemaEntityType(),
          buildGoogleCloudDocumentaiV1DocumentSchemaEntityType(),
        ];

void checkUnnamed39(
    core.List<api.GoogleCloudDocumentaiV1DocumentSchemaEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentSchemaEntityType(o[0]);
  checkGoogleCloudDocumentaiV1DocumentSchemaEntityType(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentSchema = 0;
api.GoogleCloudDocumentaiV1DocumentSchema
    buildGoogleCloudDocumentaiV1DocumentSchema() {
  final o = api.GoogleCloudDocumentaiV1DocumentSchema();
  buildCounterGoogleCloudDocumentaiV1DocumentSchema++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentSchema < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.entityTypes = buildUnnamed39();
    o.metadata = buildGoogleCloudDocumentaiV1DocumentSchemaMetadata();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentSchema--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentSchema(
    api.GoogleCloudDocumentaiV1DocumentSchema o) {
  buildCounterGoogleCloudDocumentaiV1DocumentSchema++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentSchema < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.entityTypes!);
    checkGoogleCloudDocumentaiV1DocumentSchemaMetadata(o.metadata!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentSchema--;
}

core.List<core.String> buildUnnamed40() => [
      'foo',
      'foo',
    ];

void checkUnnamed40(core.List<core.String> o) {
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

core.List<api.GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty>
    buildUnnamed41() => [
          buildGoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty(),
          buildGoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty(),
        ];

void checkUnnamed41(
    core.List<api.GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty(o[0]);
  checkGoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityType = 0;
api.GoogleCloudDocumentaiV1DocumentSchemaEntityType
    buildGoogleCloudDocumentaiV1DocumentSchemaEntityType() {
  final o = api.GoogleCloudDocumentaiV1DocumentSchemaEntityType();
  buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityType++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityType < 3) {
    o.baseTypes = buildUnnamed40();
    o.displayName = 'foo';
    o.enumValues =
        buildGoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues();
    o.name = 'foo';
    o.properties = buildUnnamed41();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityType--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentSchemaEntityType(
    api.GoogleCloudDocumentaiV1DocumentSchemaEntityType o) {
  buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityType++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityType < 3) {
    checkUnnamed40(o.baseTypes!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues(
        o.enumValues!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.properties!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityType--;
}

core.List<core.String> buildUnnamed42() => [
      'foo',
      'foo',
    ];

void checkUnnamed42(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues =
    0;
api.GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues
    buildGoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues() {
  final o = api.GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues();
  buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues <
      3) {
    o.values = buildUnnamed42();
  }
  buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues(
    api.GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues o) {
  buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues <
      3) {
    checkUnnamed42(o.values!);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty =
    0;
api.GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty
    buildGoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty() {
  final o = api.GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty();
  buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.occurrenceType = 'foo';
    o.valueType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty(
    api.GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty o) {
  buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.occurrenceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty--;
}

core.int buildCounterGoogleCloudDocumentaiV1DocumentSchemaMetadata = 0;
api.GoogleCloudDocumentaiV1DocumentSchemaMetadata
    buildGoogleCloudDocumentaiV1DocumentSchemaMetadata() {
  final o = api.GoogleCloudDocumentaiV1DocumentSchemaMetadata();
  buildCounterGoogleCloudDocumentaiV1DocumentSchemaMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentSchemaMetadata < 3) {
    o.documentAllowMultipleLabels = true;
    o.documentSplitter = true;
    o.prefixedNamingOnProperties = true;
    o.skipNamingValidation = true;
  }
  buildCounterGoogleCloudDocumentaiV1DocumentSchemaMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1DocumentSchemaMetadata(
    api.GoogleCloudDocumentaiV1DocumentSchemaMetadata o) {
  buildCounterGoogleCloudDocumentaiV1DocumentSchemaMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1DocumentSchemaMetadata < 3) {
    unittest.expect(o.documentAllowMultipleLabels!, unittest.isTrue);
    unittest.expect(o.documentSplitter!, unittest.isTrue);
    unittest.expect(o.prefixedNamingOnProperties!, unittest.isTrue);
    unittest.expect(o.skipNamingValidation!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1DocumentSchemaMetadata--;
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
    o.fontFamily = 'foo';
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
    unittest.expect(
      o.fontFamily!,
      unittest.equals('foo'),
    );
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
    buildUnnamed43() => [
          buildGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(),
          buildGoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(),
        ];

void checkUnnamed43(
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
    o.textSegments = buildUnnamed43();
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
    checkUnnamed43(o.textSegments!);
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

core.List<api.GoogleCloudDocumentaiV1DocumentProvenance> buildUnnamed44() => [
      buildGoogleCloudDocumentaiV1DocumentProvenance(),
      buildGoogleCloudDocumentaiV1DocumentProvenance(),
    ];

void checkUnnamed44(
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
    o.provenance = buildUnnamed44();
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
    checkUnnamed44(o.provenance!);
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

core.int buildCounterGoogleCloudDocumentaiV1EvaluateProcessorVersionRequest = 0;
api.GoogleCloudDocumentaiV1EvaluateProcessorVersionRequest
    buildGoogleCloudDocumentaiV1EvaluateProcessorVersionRequest() {
  final o = api.GoogleCloudDocumentaiV1EvaluateProcessorVersionRequest();
  buildCounterGoogleCloudDocumentaiV1EvaluateProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1EvaluateProcessorVersionRequest < 3) {
    o.evaluationDocuments =
        buildGoogleCloudDocumentaiV1BatchDocumentsInputConfig();
  }
  buildCounterGoogleCloudDocumentaiV1EvaluateProcessorVersionRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1EvaluateProcessorVersionRequest(
    api.GoogleCloudDocumentaiV1EvaluateProcessorVersionRequest o) {
  buildCounterGoogleCloudDocumentaiV1EvaluateProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1EvaluateProcessorVersionRequest < 3) {
    checkGoogleCloudDocumentaiV1BatchDocumentsInputConfig(
        o.evaluationDocuments!);
  }
  buildCounterGoogleCloudDocumentaiV1EvaluateProcessorVersionRequest--;
}

core.Map<core.String,
        api.GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics>
    buildUnnamed45() => {
          'x': buildGoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics(),
          'y': buildGoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics(),
        };

void checkUnnamed45(
    core.Map<core.String,
            api.GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics(o['x']!);
  checkGoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics(o['y']!);
}

core.int buildCounterGoogleCloudDocumentaiV1Evaluation = 0;
api.GoogleCloudDocumentaiV1Evaluation buildGoogleCloudDocumentaiV1Evaluation() {
  final o = api.GoogleCloudDocumentaiV1Evaluation();
  buildCounterGoogleCloudDocumentaiV1Evaluation++;
  if (buildCounterGoogleCloudDocumentaiV1Evaluation < 3) {
    o.allEntitiesMetrics =
        buildGoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics();
    o.createTime = 'foo';
    o.documentCounters = buildGoogleCloudDocumentaiV1EvaluationCounters();
    o.entityMetrics = buildUnnamed45();
    o.kmsKeyName = 'foo';
    o.kmsKeyVersionName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1Evaluation--;
  return o;
}

void checkGoogleCloudDocumentaiV1Evaluation(
    api.GoogleCloudDocumentaiV1Evaluation o) {
  buildCounterGoogleCloudDocumentaiV1Evaluation++;
  if (buildCounterGoogleCloudDocumentaiV1Evaluation < 3) {
    checkGoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics(
        o.allEntitiesMetrics!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1EvaluationCounters(o.documentCounters!);
    checkUnnamed45(o.entityMetrics!);
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
  }
  buildCounterGoogleCloudDocumentaiV1Evaluation--;
}

core.int buildCounterGoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics =
    0;
api.GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics
    buildGoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics() {
  final o = api.GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics();
  buildCounterGoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics++;
  if (buildCounterGoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics < 3) {
    o.confidenceLevel = 42.0;
    o.metrics = buildGoogleCloudDocumentaiV1EvaluationMetrics();
  }
  buildCounterGoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics--;
  return o;
}

void checkGoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics(
    api.GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics o) {
  buildCounterGoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics++;
  if (buildCounterGoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics < 3) {
    unittest.expect(
      o.confidenceLevel!,
      unittest.equals(42.0),
    );
    checkGoogleCloudDocumentaiV1EvaluationMetrics(o.metrics!);
  }
  buildCounterGoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics--;
}

core.int buildCounterGoogleCloudDocumentaiV1EvaluationCounters = 0;
api.GoogleCloudDocumentaiV1EvaluationCounters
    buildGoogleCloudDocumentaiV1EvaluationCounters() {
  final o = api.GoogleCloudDocumentaiV1EvaluationCounters();
  buildCounterGoogleCloudDocumentaiV1EvaluationCounters++;
  if (buildCounterGoogleCloudDocumentaiV1EvaluationCounters < 3) {
    o.evaluatedDocumentsCount = 42;
    o.failedDocumentsCount = 42;
    o.inputDocumentsCount = 42;
    o.invalidDocumentsCount = 42;
  }
  buildCounterGoogleCloudDocumentaiV1EvaluationCounters--;
  return o;
}

void checkGoogleCloudDocumentaiV1EvaluationCounters(
    api.GoogleCloudDocumentaiV1EvaluationCounters o) {
  buildCounterGoogleCloudDocumentaiV1EvaluationCounters++;
  if (buildCounterGoogleCloudDocumentaiV1EvaluationCounters < 3) {
    unittest.expect(
      o.evaluatedDocumentsCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.failedDocumentsCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.inputDocumentsCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.invalidDocumentsCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1EvaluationCounters--;
}

core.int buildCounterGoogleCloudDocumentaiV1EvaluationMetrics = 0;
api.GoogleCloudDocumentaiV1EvaluationMetrics
    buildGoogleCloudDocumentaiV1EvaluationMetrics() {
  final o = api.GoogleCloudDocumentaiV1EvaluationMetrics();
  buildCounterGoogleCloudDocumentaiV1EvaluationMetrics++;
  if (buildCounterGoogleCloudDocumentaiV1EvaluationMetrics < 3) {
    o.f1Score = 42.0;
    o.falseNegativesCount = 42;
    o.falsePositivesCount = 42;
    o.groundTruthDocumentCount = 42;
    o.groundTruthOccurrencesCount = 42;
    o.precision = 42.0;
    o.predictedDocumentCount = 42;
    o.predictedOccurrencesCount = 42;
    o.recall = 42.0;
    o.totalDocumentsCount = 42;
    o.truePositivesCount = 42;
  }
  buildCounterGoogleCloudDocumentaiV1EvaluationMetrics--;
  return o;
}

void checkGoogleCloudDocumentaiV1EvaluationMetrics(
    api.GoogleCloudDocumentaiV1EvaluationMetrics o) {
  buildCounterGoogleCloudDocumentaiV1EvaluationMetrics++;
  if (buildCounterGoogleCloudDocumentaiV1EvaluationMetrics < 3) {
    unittest.expect(
      o.f1Score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.falseNegativesCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.falsePositivesCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.groundTruthDocumentCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.groundTruthOccurrencesCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.precision!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.predictedDocumentCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.predictedOccurrencesCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.recall!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.totalDocumentsCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.truePositivesCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1EvaluationMetrics--;
}

core.List<api.GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics>
    buildUnnamed46() => [
          buildGoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics(),
          buildGoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics(),
        ];

void checkUnnamed46(
    core.List<api.GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics(o[0]);
  checkGoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics>
    buildUnnamed47() => [
          buildGoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics(),
          buildGoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics(),
        ];

void checkUnnamed47(
    core.List<api.GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics(o[0]);
  checkGoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics =
    0;
api.GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics
    buildGoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics() {
  final o = api.GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics();
  buildCounterGoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics++;
  if (buildCounterGoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics < 3) {
    o.auprc = 42.0;
    o.auprcExact = 42.0;
    o.confidenceLevelMetrics = buildUnnamed46();
    o.confidenceLevelMetricsExact = buildUnnamed47();
    o.estimatedCalibrationError = 42.0;
    o.estimatedCalibrationErrorExact = 42.0;
    o.metricsType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics--;
  return o;
}

void checkGoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics(
    api.GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics o) {
  buildCounterGoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics++;
  if (buildCounterGoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics < 3) {
    unittest.expect(
      o.auprc!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.auprcExact!,
      unittest.equals(42.0),
    );
    checkUnnamed46(o.confidenceLevelMetrics!);
    checkUnnamed47(o.confidenceLevelMetricsExact!);
    unittest.expect(
      o.estimatedCalibrationError!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.estimatedCalibrationErrorExact!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.metricsType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics--;
}

core.int buildCounterGoogleCloudDocumentaiV1EvaluationReference = 0;
api.GoogleCloudDocumentaiV1EvaluationReference
    buildGoogleCloudDocumentaiV1EvaluationReference() {
  final o = api.GoogleCloudDocumentaiV1EvaluationReference();
  buildCounterGoogleCloudDocumentaiV1EvaluationReference++;
  if (buildCounterGoogleCloudDocumentaiV1EvaluationReference < 3) {
    o.aggregateMetrics = buildGoogleCloudDocumentaiV1EvaluationMetrics();
    o.aggregateMetricsExact = buildGoogleCloudDocumentaiV1EvaluationMetrics();
    o.evaluation = 'foo';
    o.operation = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1EvaluationReference--;
  return o;
}

void checkGoogleCloudDocumentaiV1EvaluationReference(
    api.GoogleCloudDocumentaiV1EvaluationReference o) {
  buildCounterGoogleCloudDocumentaiV1EvaluationReference++;
  if (buildCounterGoogleCloudDocumentaiV1EvaluationReference < 3) {
    checkGoogleCloudDocumentaiV1EvaluationMetrics(o.aggregateMetrics!);
    checkGoogleCloudDocumentaiV1EvaluationMetrics(o.aggregateMetricsExact!);
    unittest.expect(
      o.evaluation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operation!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1EvaluationReference--;
}

core.List<api.GoogleCloudDocumentaiV1ProcessorType> buildUnnamed48() => [
      buildGoogleCloudDocumentaiV1ProcessorType(),
      buildGoogleCloudDocumentaiV1ProcessorType(),
    ];

void checkUnnamed48(core.List<api.GoogleCloudDocumentaiV1ProcessorType> o) {
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
    o.processorTypes = buildUnnamed48();
  }
  buildCounterGoogleCloudDocumentaiV1FetchProcessorTypesResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1FetchProcessorTypesResponse(
    api.GoogleCloudDocumentaiV1FetchProcessorTypesResponse o) {
  buildCounterGoogleCloudDocumentaiV1FetchProcessorTypesResponse++;
  if (buildCounterGoogleCloudDocumentaiV1FetchProcessorTypesResponse < 3) {
    checkUnnamed48(o.processorTypes!);
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

core.List<api.GoogleCloudDocumentaiV1GcsDocument> buildUnnamed49() => [
      buildGoogleCloudDocumentaiV1GcsDocument(),
      buildGoogleCloudDocumentaiV1GcsDocument(),
    ];

void checkUnnamed49(core.List<api.GoogleCloudDocumentaiV1GcsDocument> o) {
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
    o.documents = buildUnnamed49();
  }
  buildCounterGoogleCloudDocumentaiV1GcsDocuments--;
  return o;
}

void checkGoogleCloudDocumentaiV1GcsDocuments(
    api.GoogleCloudDocumentaiV1GcsDocuments o) {
  buildCounterGoogleCloudDocumentaiV1GcsDocuments++;
  if (buildCounterGoogleCloudDocumentaiV1GcsDocuments < 3) {
    checkUnnamed49(o.documents!);
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

core.List<api.GoogleCloudDocumentaiV1Evaluation> buildUnnamed50() => [
      buildGoogleCloudDocumentaiV1Evaluation(),
      buildGoogleCloudDocumentaiV1Evaluation(),
    ];

void checkUnnamed50(core.List<api.GoogleCloudDocumentaiV1Evaluation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1Evaluation(o[0]);
  checkGoogleCloudDocumentaiV1Evaluation(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1ListEvaluationsResponse = 0;
api.GoogleCloudDocumentaiV1ListEvaluationsResponse
    buildGoogleCloudDocumentaiV1ListEvaluationsResponse() {
  final o = api.GoogleCloudDocumentaiV1ListEvaluationsResponse();
  buildCounterGoogleCloudDocumentaiV1ListEvaluationsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1ListEvaluationsResponse < 3) {
    o.evaluations = buildUnnamed50();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1ListEvaluationsResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1ListEvaluationsResponse(
    api.GoogleCloudDocumentaiV1ListEvaluationsResponse o) {
  buildCounterGoogleCloudDocumentaiV1ListEvaluationsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1ListEvaluationsResponse < 3) {
    checkUnnamed50(o.evaluations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1ListEvaluationsResponse--;
}

core.List<api.GoogleCloudDocumentaiV1ProcessorType> buildUnnamed51() => [
      buildGoogleCloudDocumentaiV1ProcessorType(),
      buildGoogleCloudDocumentaiV1ProcessorType(),
    ];

void checkUnnamed51(core.List<api.GoogleCloudDocumentaiV1ProcessorType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1ProcessorType(o[0]);
  checkGoogleCloudDocumentaiV1ProcessorType(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1ListProcessorTypesResponse = 0;
api.GoogleCloudDocumentaiV1ListProcessorTypesResponse
    buildGoogleCloudDocumentaiV1ListProcessorTypesResponse() {
  final o = api.GoogleCloudDocumentaiV1ListProcessorTypesResponse();
  buildCounterGoogleCloudDocumentaiV1ListProcessorTypesResponse++;
  if (buildCounterGoogleCloudDocumentaiV1ListProcessorTypesResponse < 3) {
    o.nextPageToken = 'foo';
    o.processorTypes = buildUnnamed51();
  }
  buildCounterGoogleCloudDocumentaiV1ListProcessorTypesResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1ListProcessorTypesResponse(
    api.GoogleCloudDocumentaiV1ListProcessorTypesResponse o) {
  buildCounterGoogleCloudDocumentaiV1ListProcessorTypesResponse++;
  if (buildCounterGoogleCloudDocumentaiV1ListProcessorTypesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed51(o.processorTypes!);
  }
  buildCounterGoogleCloudDocumentaiV1ListProcessorTypesResponse--;
}

core.List<api.GoogleCloudDocumentaiV1ProcessorVersion> buildUnnamed52() => [
      buildGoogleCloudDocumentaiV1ProcessorVersion(),
      buildGoogleCloudDocumentaiV1ProcessorVersion(),
    ];

void checkUnnamed52(core.List<api.GoogleCloudDocumentaiV1ProcessorVersion> o) {
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
    o.processorVersions = buildUnnamed52();
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
    checkUnnamed52(o.processorVersions!);
  }
  buildCounterGoogleCloudDocumentaiV1ListProcessorVersionsResponse--;
}

core.List<api.GoogleCloudDocumentaiV1Processor> buildUnnamed53() => [
      buildGoogleCloudDocumentaiV1Processor(),
      buildGoogleCloudDocumentaiV1Processor(),
    ];

void checkUnnamed53(core.List<api.GoogleCloudDocumentaiV1Processor> o) {
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
    o.processors = buildUnnamed53();
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
    checkUnnamed53(o.processors!);
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

core.int buildCounterGoogleCloudDocumentaiV1OcrConfig = 0;
api.GoogleCloudDocumentaiV1OcrConfig buildGoogleCloudDocumentaiV1OcrConfig() {
  final o = api.GoogleCloudDocumentaiV1OcrConfig();
  buildCounterGoogleCloudDocumentaiV1OcrConfig++;
  if (buildCounterGoogleCloudDocumentaiV1OcrConfig < 3) {
    o.advancedOcrOptions = buildUnnamed54();
    o.computeStyleInfo = true;
    o.disableCharacterBoxesDetection = true;
    o.enableImageQualityScores = true;
    o.enableNativePdfParsing = true;
    o.enableSymbol = true;
    o.hints = buildGoogleCloudDocumentaiV1OcrConfigHints();
    o.premiumFeatures = buildGoogleCloudDocumentaiV1OcrConfigPremiumFeatures();
  }
  buildCounterGoogleCloudDocumentaiV1OcrConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1OcrConfig(
    api.GoogleCloudDocumentaiV1OcrConfig o) {
  buildCounterGoogleCloudDocumentaiV1OcrConfig++;
  if (buildCounterGoogleCloudDocumentaiV1OcrConfig < 3) {
    checkUnnamed54(o.advancedOcrOptions!);
    unittest.expect(o.computeStyleInfo!, unittest.isTrue);
    unittest.expect(o.disableCharacterBoxesDetection!, unittest.isTrue);
    unittest.expect(o.enableImageQualityScores!, unittest.isTrue);
    unittest.expect(o.enableNativePdfParsing!, unittest.isTrue);
    unittest.expect(o.enableSymbol!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1OcrConfigHints(o.hints!);
    checkGoogleCloudDocumentaiV1OcrConfigPremiumFeatures(o.premiumFeatures!);
  }
  buildCounterGoogleCloudDocumentaiV1OcrConfig--;
}

core.List<core.String> buildUnnamed55() => [
      'foo',
      'foo',
    ];

void checkUnnamed55(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDocumentaiV1OcrConfigHints = 0;
api.GoogleCloudDocumentaiV1OcrConfigHints
    buildGoogleCloudDocumentaiV1OcrConfigHints() {
  final o = api.GoogleCloudDocumentaiV1OcrConfigHints();
  buildCounterGoogleCloudDocumentaiV1OcrConfigHints++;
  if (buildCounterGoogleCloudDocumentaiV1OcrConfigHints < 3) {
    o.languageHints = buildUnnamed55();
  }
  buildCounterGoogleCloudDocumentaiV1OcrConfigHints--;
  return o;
}

void checkGoogleCloudDocumentaiV1OcrConfigHints(
    api.GoogleCloudDocumentaiV1OcrConfigHints o) {
  buildCounterGoogleCloudDocumentaiV1OcrConfigHints++;
  if (buildCounterGoogleCloudDocumentaiV1OcrConfigHints < 3) {
    checkUnnamed55(o.languageHints!);
  }
  buildCounterGoogleCloudDocumentaiV1OcrConfigHints--;
}

core.int buildCounterGoogleCloudDocumentaiV1OcrConfigPremiumFeatures = 0;
api.GoogleCloudDocumentaiV1OcrConfigPremiumFeatures
    buildGoogleCloudDocumentaiV1OcrConfigPremiumFeatures() {
  final o = api.GoogleCloudDocumentaiV1OcrConfigPremiumFeatures();
  buildCounterGoogleCloudDocumentaiV1OcrConfigPremiumFeatures++;
  if (buildCounterGoogleCloudDocumentaiV1OcrConfigPremiumFeatures < 3) {
    o.computeStyleInfo = true;
    o.enableMathOcr = true;
    o.enableSelectionMarkDetection = true;
  }
  buildCounterGoogleCloudDocumentaiV1OcrConfigPremiumFeatures--;
  return o;
}

void checkGoogleCloudDocumentaiV1OcrConfigPremiumFeatures(
    api.GoogleCloudDocumentaiV1OcrConfigPremiumFeatures o) {
  buildCounterGoogleCloudDocumentaiV1OcrConfigPremiumFeatures++;
  if (buildCounterGoogleCloudDocumentaiV1OcrConfigPremiumFeatures < 3) {
    unittest.expect(o.computeStyleInfo!, unittest.isTrue);
    unittest.expect(o.enableMathOcr!, unittest.isTrue);
    unittest.expect(o.enableSelectionMarkDetection!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1OcrConfigPremiumFeatures--;
}

core.int buildCounterGoogleCloudDocumentaiV1ProcessOptions = 0;
api.GoogleCloudDocumentaiV1ProcessOptions
    buildGoogleCloudDocumentaiV1ProcessOptions() {
  final o = api.GoogleCloudDocumentaiV1ProcessOptions();
  buildCounterGoogleCloudDocumentaiV1ProcessOptions++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessOptions < 3) {
    o.fromEnd = 42;
    o.fromStart = 42;
    o.individualPageSelector =
        buildGoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector();
    o.ocrConfig = buildGoogleCloudDocumentaiV1OcrConfig();
    o.schemaOverride = buildGoogleCloudDocumentaiV1DocumentSchema();
  }
  buildCounterGoogleCloudDocumentaiV1ProcessOptions--;
  return o;
}

void checkGoogleCloudDocumentaiV1ProcessOptions(
    api.GoogleCloudDocumentaiV1ProcessOptions o) {
  buildCounterGoogleCloudDocumentaiV1ProcessOptions++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessOptions < 3) {
    unittest.expect(
      o.fromEnd!,
      unittest.equals(42),
    );
    unittest.expect(
      o.fromStart!,
      unittest.equals(42),
    );
    checkGoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector(
        o.individualPageSelector!);
    checkGoogleCloudDocumentaiV1OcrConfig(o.ocrConfig!);
    checkGoogleCloudDocumentaiV1DocumentSchema(o.schemaOverride!);
  }
  buildCounterGoogleCloudDocumentaiV1ProcessOptions--;
}

core.List<core.int> buildUnnamed56() => [
      42,
      42,
    ];

void checkUnnamed56(core.List<core.int> o) {
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

core.int
    buildCounterGoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector = 0;
api.GoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector
    buildGoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector() {
  final o = api.GoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector();
  buildCounterGoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector <
      3) {
    o.pages = buildUnnamed56();
  }
  buildCounterGoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector--;
  return o;
}

void checkGoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector(
    api.GoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector o) {
  buildCounterGoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector <
      3) {
    checkUnnamed56(o.pages!);
  }
  buildCounterGoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector--;
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

core.int buildCounterGoogleCloudDocumentaiV1ProcessRequest = 0;
api.GoogleCloudDocumentaiV1ProcessRequest
    buildGoogleCloudDocumentaiV1ProcessRequest() {
  final o = api.GoogleCloudDocumentaiV1ProcessRequest();
  buildCounterGoogleCloudDocumentaiV1ProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessRequest < 3) {
    o.fieldMask = 'foo';
    o.gcsDocument = buildGoogleCloudDocumentaiV1GcsDocument();
    o.inlineDocument = buildGoogleCloudDocumentaiV1Document();
    o.labels = buildUnnamed57();
    o.processOptions = buildGoogleCloudDocumentaiV1ProcessOptions();
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
    unittest.expect(
      o.fieldMask!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1GcsDocument(o.gcsDocument!);
    checkGoogleCloudDocumentaiV1Document(o.inlineDocument!);
    checkUnnamed57(o.labels!);
    checkGoogleCloudDocumentaiV1ProcessOptions(o.processOptions!);
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

core.List<api.GoogleCloudDocumentaiV1ProcessorVersionAlias> buildUnnamed58() =>
    [
      buildGoogleCloudDocumentaiV1ProcessorVersionAlias(),
      buildGoogleCloudDocumentaiV1ProcessorVersionAlias(),
    ];

void checkUnnamed58(
    core.List<api.GoogleCloudDocumentaiV1ProcessorVersionAlias> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1ProcessorVersionAlias(o[0]);
  checkGoogleCloudDocumentaiV1ProcessorVersionAlias(o[1]);
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
    o.processorVersionAliases = buildUnnamed58();
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
    checkUnnamed58(o.processorVersionAliases!);
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
    buildUnnamed59() => [
          buildGoogleCloudDocumentaiV1ProcessorTypeLocationInfo(),
          buildGoogleCloudDocumentaiV1ProcessorTypeLocationInfo(),
        ];

void checkUnnamed59(
    core.List<api.GoogleCloudDocumentaiV1ProcessorTypeLocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1ProcessorTypeLocationInfo(o[0]);
  checkGoogleCloudDocumentaiV1ProcessorTypeLocationInfo(o[1]);
}

core.List<core.String> buildUnnamed60() => [
      'foo',
      'foo',
    ];

void checkUnnamed60(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDocumentaiV1ProcessorType = 0;
api.GoogleCloudDocumentaiV1ProcessorType
    buildGoogleCloudDocumentaiV1ProcessorType() {
  final o = api.GoogleCloudDocumentaiV1ProcessorType();
  buildCounterGoogleCloudDocumentaiV1ProcessorType++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessorType < 3) {
    o.allowCreation = true;
    o.availableLocations = buildUnnamed59();
    o.category = 'foo';
    o.launchStage = 'foo';
    o.name = 'foo';
    o.sampleDocumentUris = buildUnnamed60();
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
    checkUnnamed59(o.availableLocations!);
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
    checkUnnamed60(o.sampleDocumentUris!);
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
    o.deprecationInfo =
        buildGoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo();
    o.displayName = 'foo';
    o.documentSchema = buildGoogleCloudDocumentaiV1DocumentSchema();
    o.googleManaged = true;
    o.kmsKeyName = 'foo';
    o.kmsKeyVersionName = 'foo';
    o.latestEvaluation = buildGoogleCloudDocumentaiV1EvaluationReference();
    o.modelType = 'foo';
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
    checkGoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo(
        o.deprecationInfo!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1DocumentSchema(o.documentSchema!);
    unittest.expect(o.googleManaged!, unittest.isTrue);
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyVersionName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1EvaluationReference(o.latestEvaluation!);
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
  }
  buildCounterGoogleCloudDocumentaiV1ProcessorVersion--;
}

core.int buildCounterGoogleCloudDocumentaiV1ProcessorVersionAlias = 0;
api.GoogleCloudDocumentaiV1ProcessorVersionAlias
    buildGoogleCloudDocumentaiV1ProcessorVersionAlias() {
  final o = api.GoogleCloudDocumentaiV1ProcessorVersionAlias();
  buildCounterGoogleCloudDocumentaiV1ProcessorVersionAlias++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessorVersionAlias < 3) {
    o.alias = 'foo';
    o.processorVersion = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1ProcessorVersionAlias--;
  return o;
}

void checkGoogleCloudDocumentaiV1ProcessorVersionAlias(
    api.GoogleCloudDocumentaiV1ProcessorVersionAlias o) {
  buildCounterGoogleCloudDocumentaiV1ProcessorVersionAlias++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessorVersionAlias < 3) {
    unittest.expect(
      o.alias!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.processorVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1ProcessorVersionAlias--;
}

core.int buildCounterGoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo = 0;
api.GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo
    buildGoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo() {
  final o = api.GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo();
  buildCounterGoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo < 3) {
    o.deprecationTime = 'foo';
    o.replacementProcessorVersion = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo--;
  return o;
}

void checkGoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo(
    api.GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo o) {
  buildCounterGoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo++;
  if (buildCounterGoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo < 3) {
    unittest.expect(
      o.deprecationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replacementProcessorVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo--;
}

core.int buildCounterGoogleCloudDocumentaiV1RawDocument = 0;
api.GoogleCloudDocumentaiV1RawDocument
    buildGoogleCloudDocumentaiV1RawDocument() {
  final o = api.GoogleCloudDocumentaiV1RawDocument();
  buildCounterGoogleCloudDocumentaiV1RawDocument++;
  if (buildCounterGoogleCloudDocumentaiV1RawDocument < 3) {
    o.content = 'foo';
    o.displayName = 'foo';
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
      o.displayName!,
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
    o.documentSchema = buildGoogleCloudDocumentaiV1DocumentSchema();
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
    checkGoogleCloudDocumentaiV1DocumentSchema(o.documentSchema!);
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

core.int buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequest = 0;
api.GoogleCloudDocumentaiV1TrainProcessorVersionRequest
    buildGoogleCloudDocumentaiV1TrainProcessorVersionRequest() {
  final o = api.GoogleCloudDocumentaiV1TrainProcessorVersionRequest();
  buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequest < 3) {
    o.baseProcessorVersion = 'foo';
    o.customDocumentExtractionOptions =
        buildGoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions();
    o.documentSchema = buildGoogleCloudDocumentaiV1DocumentSchema();
    o.foundationModelTuningOptions =
        buildGoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions();
    o.inputData =
        buildGoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData();
    o.processorVersion = buildGoogleCloudDocumentaiV1ProcessorVersion();
  }
  buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1TrainProcessorVersionRequest(
    api.GoogleCloudDocumentaiV1TrainProcessorVersionRequest o) {
  buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequest < 3) {
    unittest.expect(
      o.baseProcessorVersion!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions(
        o.customDocumentExtractionOptions!);
    checkGoogleCloudDocumentaiV1DocumentSchema(o.documentSchema!);
    checkGoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions(
        o.foundationModelTuningOptions!);
    checkGoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData(
        o.inputData!);
    checkGoogleCloudDocumentaiV1ProcessorVersion(o.processorVersion!);
  }
  buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequest--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions =
    0;
api.GoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions
    buildGoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions() {
  final o = api
      .GoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions();
  buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions++;
  if (buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions <
      3) {
    o.trainingMethod = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions--;
  return o;
}

void checkGoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions(
    api.GoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions
        o) {
  buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions++;
  if (buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions <
      3) {
    unittest.expect(
      o.trainingMethod!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions =
    0;
api.GoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions
    buildGoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions() {
  final o = api
      .GoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions();
  buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions++;
  if (buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions <
      3) {
    o.learningRateMultiplier = 42.0;
    o.trainSteps = 42;
  }
  buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions--;
  return o;
}

void checkGoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions(
    api.GoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions
        o) {
  buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions++;
  if (buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions <
      3) {
    unittest.expect(
      o.learningRateMultiplier!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.trainSteps!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData =
    0;
api.GoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData
    buildGoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData() {
  final o = api.GoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData();
  buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData++;
  if (buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData <
      3) {
    o.testDocuments = buildGoogleCloudDocumentaiV1BatchDocumentsInputConfig();
    o.trainingDocuments =
        buildGoogleCloudDocumentaiV1BatchDocumentsInputConfig();
  }
  buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData--;
  return o;
}

void checkGoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData(
    api.GoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData o) {
  buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData++;
  if (buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData <
      3) {
    checkGoogleCloudDocumentaiV1BatchDocumentsInputConfig(o.testDocuments!);
    checkGoogleCloudDocumentaiV1BatchDocumentsInputConfig(o.trainingDocuments!);
  }
  buildCounterGoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData--;
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

core.List<api.GoogleCloudLocationLocation> buildUnnamed61() => [
      buildGoogleCloudLocationLocation(),
      buildGoogleCloudLocationLocation(),
    ];

void checkUnnamed61(core.List<api.GoogleCloudLocationLocation> o) {
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
    o.locations = buildUnnamed61();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
  return o;
}

void checkGoogleCloudLocationListLocationsResponse(
    api.GoogleCloudLocationListLocationsResponse o) {
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    checkUnnamed61(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed62() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed62(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed63() => {
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

void checkUnnamed63(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed62();
    o.locationId = 'foo';
    o.metadata = buildUnnamed63();
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
    checkUnnamed62(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed63(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudLocationLocation--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed64() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed64(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed64();
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
    checkUnnamed64(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed65() => {
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

void checkUnnamed65(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed66() => {
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

void checkUnnamed66(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed65();
    o.name = 'foo';
    o.response = buildUnnamed66();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed65(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed66(o.response!);
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

core.Map<core.String, core.Object?> buildUnnamed67() => {
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

void checkUnnamed67(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed68() => [
      buildUnnamed67(),
      buildUnnamed67(),
    ];

void checkUnnamed68(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed67(o[0]);
  checkUnnamed67(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed68();
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
    checkUnnamed68(o.details!);
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

core.List<core.String> buildUnnamed69() => [
      'foo',
      'foo',
    ];

void checkUnnamed69(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed70() => [
      'foo',
      'foo',
    ];

void checkUnnamed70(core.List<core.String> o) {
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
    o.addressLines = buildUnnamed69();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed70();
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
    checkUnnamed69(o.addressLines!);
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
    checkUnnamed70(o.recipients!);
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
  unittest.group('obj-schema-GoogleCloudDocumentaiV1Barcode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1Barcode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1Barcode.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1Barcode(od);
    });
  });

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

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig(
          od);
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
      'obj-schema-GoogleCloudDocumentaiV1DocumentPageDetectedBarcode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageDetectedBarcode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1DocumentPageDetectedBarcode.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageDetectedBarcode(od);
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

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentPageImageQualityScores', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageImageQualityScores();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1DocumentPageImageQualityScores.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageImageQualityScores(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect(
          od);
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

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentPageTokenStyleInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentPageTokenStyleInfo(od);
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

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentSchema(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentSchemaEntityType',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentSchemaEntityType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentSchemaEntityType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentSchemaEntityType(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1DocumentSchemaMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1DocumentSchemaMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1DocumentSchemaMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1DocumentSchemaMetadata(od);
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
      'obj-schema-GoogleCloudDocumentaiV1EvaluateProcessorVersionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1EvaluateProcessorVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1EvaluateProcessorVersionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1EvaluateProcessorVersionRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1Evaluation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1Evaluation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1Evaluation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1Evaluation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1EvaluationCounters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1EvaluationCounters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1EvaluationCounters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1EvaluationCounters(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1EvaluationMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1EvaluationMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1EvaluationMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1EvaluationMetrics(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1EvaluationReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1EvaluationReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1EvaluationReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1EvaluationReference(od);
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

  unittest.group('obj-schema-GoogleCloudDocumentaiV1ListEvaluationsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1ListEvaluationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1ListEvaluationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ListEvaluationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1ListProcessorTypesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1ListProcessorTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1ListProcessorTypesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ListProcessorTypesResponse(od);
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

  unittest.group('obj-schema-GoogleCloudDocumentaiV1OcrConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1OcrConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1OcrConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1OcrConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1OcrConfigHints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1OcrConfigHints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1OcrConfigHints.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1OcrConfigHints(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1OcrConfigPremiumFeatures',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1OcrConfigPremiumFeatures();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1OcrConfigPremiumFeatures.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1OcrConfigPremiumFeatures(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1ProcessOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1ProcessOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1ProcessOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ProcessOptions(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector(od);
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

  unittest.group('obj-schema-GoogleCloudDocumentaiV1ProcessorVersionAlias', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1ProcessorVersionAlias();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1ProcessorVersionAlias.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ProcessorVersionAlias(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo(od);
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
      'obj-schema-GoogleCloudDocumentaiV1TrainProcessorVersionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1TrainProcessorVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1TrainProcessorVersionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1TrainProcessorVersionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData(od);
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
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--fetchProcessorTypes', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations;
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
      final res = api.DocumentApi(mock).projects.locations.operations;
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
      final res = api.DocumentApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsProcessorTypesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processorTypes;
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
            convert.json.encode(buildGoogleCloudDocumentaiV1ProcessorType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1ProcessorType(
          response as api.GoogleCloudDocumentaiV1ProcessorType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processorTypes;
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
            .encode(buildGoogleCloudDocumentaiV1ListProcessorTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1ListProcessorTypesResponse(
          response as api.GoogleCloudDocumentaiV1ListProcessorTypesResponse);
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

    unittest.test('method--evaluateProcessorVersion', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      final arg_request =
          buildGoogleCloudDocumentaiV1EvaluateProcessorVersionRequest();
      final arg_processorVersion = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDocumentaiV1EvaluateProcessorVersionRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1EvaluateProcessorVersionRequest(obj);

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
      final response = await res.evaluateProcessorVersion(
          arg_request, arg_processorVersion,
          $fields: arg_$fields);
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
            convert.json.encode(buildGoogleCloudDocumentaiV1ProcessResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.process(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1ProcessResponse(
          response as api.GoogleCloudDocumentaiV1ProcessResponse);
    });

    unittest.test('method--train', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      final arg_request =
          buildGoogleCloudDocumentaiV1TrainProcessorVersionRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDocumentaiV1TrainProcessorVersionRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1TrainProcessorVersionRequest(obj);

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
          await res.train(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
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

  unittest.group(
      'resource-ProjectsLocationsProcessorsProcessorVersionsEvaluationsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock)
          .projects
          .locations
          .processors
          .processorVersions
          .evaluations;
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
            convert.json.encode(buildGoogleCloudDocumentaiV1Evaluation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1Evaluation(
          response as api.GoogleCloudDocumentaiV1Evaluation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock)
          .projects
          .locations
          .processors
          .processorVersions
          .evaluations;
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
            .encode(buildGoogleCloudDocumentaiV1ListEvaluationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1ListEvaluationsResponse(
          response as api.GoogleCloudDocumentaiV1ListEvaluationsResponse);
    });
  });

  unittest.group('resource-ProjectsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.operations;
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
  });
}
