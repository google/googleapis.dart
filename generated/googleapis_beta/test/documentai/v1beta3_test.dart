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

import 'package:googleapis_beta/documentai/v1beta3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig = 0;
api.GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig
    buildGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig() {
  final o = api.GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig();
  buildCounterGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig < 3) {
    o.gcsDocuments = buildGoogleCloudDocumentaiV1beta3GcsDocuments();
    o.gcsPrefix = buildGoogleCloudDocumentaiV1beta3GcsPrefix();
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig(
    api.GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig < 3) {
    checkGoogleCloudDocumentaiV1beta3GcsDocuments(o.gcsDocuments!);
    checkGoogleCloudDocumentaiV1beta3GcsPrefix(o.gcsPrefix!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig--;
}

core.List<api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig>
    buildUnnamed0() => [
          buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig(),
          buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig(),
        ];

void checkUnnamed0(
    core.List<
            api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig(o[0]);
  checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest = 0;
api.GoogleCloudDocumentaiV1beta3BatchProcessRequest
    buildGoogleCloudDocumentaiV1beta3BatchProcessRequest() {
  final o = api.GoogleCloudDocumentaiV1beta3BatchProcessRequest();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest < 3) {
    o.documentOutputConfig =
        buildGoogleCloudDocumentaiV1beta3DocumentOutputConfig();
    o.inputConfigs = buildUnnamed0();
    o.inputDocuments =
        buildGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig();
    o.outputConfig =
        buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig();
    o.skipHumanReview = true;
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BatchProcessRequest(
    api.GoogleCloudDocumentaiV1beta3BatchProcessRequest o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest < 3) {
    checkGoogleCloudDocumentaiV1beta3DocumentOutputConfig(
        o.documentOutputConfig!);
    checkUnnamed0(o.inputConfigs!);
    checkGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig(
        o.inputDocuments!);
    checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig(
        o.outputConfig!);
    unittest.expect(o.skipHumanReview!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig =
    0;
api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig
    buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig() {
  final o =
      api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig <
      3) {
    o.gcsSource = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig(
    api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig <
      3) {
    unittest.expect(
      o.gcsSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig =
    0;
api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig
    buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig() {
  final o =
      api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig <
      3) {
    o.gcsDestination = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig(
    api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig <
      3) {
    unittest.expect(
      o.gcsDestination!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig--;
}

core.List<api.GoogleCloudDocumentaiV1beta3NormalizedVertex> buildUnnamed1() => [
      buildGoogleCloudDocumentaiV1beta3NormalizedVertex(),
      buildGoogleCloudDocumentaiV1beta3NormalizedVertex(),
    ];

void checkUnnamed1(
    core.List<api.GoogleCloudDocumentaiV1beta3NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3NormalizedVertex(o[0]);
  checkGoogleCloudDocumentaiV1beta3NormalizedVertex(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3Vertex> buildUnnamed2() => [
      buildGoogleCloudDocumentaiV1beta3Vertex(),
      buildGoogleCloudDocumentaiV1beta3Vertex(),
    ];

void checkUnnamed2(core.List<api.GoogleCloudDocumentaiV1beta3Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3Vertex(o[0]);
  checkGoogleCloudDocumentaiV1beta3Vertex(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly = 0;
api.GoogleCloudDocumentaiV1beta3BoundingPoly
    buildGoogleCloudDocumentaiV1beta3BoundingPoly() {
  final o = api.GoogleCloudDocumentaiV1beta3BoundingPoly();
  buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed1();
    o.vertices = buildUnnamed2();
  }
  buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BoundingPoly(
    api.GoogleCloudDocumentaiV1beta3BoundingPoly o) {
  buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly < 3) {
    checkUnnamed1(o.normalizedVertices!);
    checkUnnamed2(o.vertices!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest =
    0;
api.GoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest
    buildGoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest() {
  final o = api.GoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest();
  buildCounterGoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest <
      3) {}
  buildCounterGoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest(
    api.GoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest o) {
  buildCounterGoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest <
      3) {}
  buildCounterGoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorRequest = 0;
api.GoogleCloudDocumentaiV1beta3DisableProcessorRequest
    buildGoogleCloudDocumentaiV1beta3DisableProcessorRequest() {
  final o = api.GoogleCloudDocumentaiV1beta3DisableProcessorRequest();
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorRequest < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DisableProcessorRequest(
    api.GoogleCloudDocumentaiV1beta3DisableProcessorRequest o) {
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorRequest < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorRequest--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntity> buildUnnamed3() => [
      buildGoogleCloudDocumentaiV1beta3DocumentEntity(),
      buildGoogleCloudDocumentaiV1beta3DocumentEntity(),
    ];

void checkUnnamed3(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentEntity(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation>
    buildUnnamed4() => [
          buildGoogleCloudDocumentaiV1beta3DocumentEntityRelation(),
          buildGoogleCloudDocumentaiV1beta3DocumentEntityRelation(),
        ];

void checkUnnamed4(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentEntityRelation(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentEntityRelation(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPage> buildUnnamed5() => [
      buildGoogleCloudDocumentaiV1beta3DocumentPage(),
      buildGoogleCloudDocumentaiV1beta3DocumentPage(),
    ];

void checkUnnamed5(core.List<api.GoogleCloudDocumentaiV1beta3DocumentPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentRevision> buildUnnamed6() => [
      buildGoogleCloudDocumentaiV1beta3DocumentRevision(),
      buildGoogleCloudDocumentaiV1beta3DocumentRevision(),
    ];

void checkUnnamed6(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentRevision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentRevision(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentRevision(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentTextChange> buildUnnamed7() =>
    [
      buildGoogleCloudDocumentaiV1beta3DocumentTextChange(),
      buildGoogleCloudDocumentaiV1beta3DocumentTextChange(),
    ];

void checkUnnamed7(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentTextChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentTextChange(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentTextChange(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentStyle> buildUnnamed8() => [
      buildGoogleCloudDocumentaiV1beta3DocumentStyle(),
      buildGoogleCloudDocumentaiV1beta3DocumentStyle(),
    ];

void checkUnnamed8(core.List<api.GoogleCloudDocumentaiV1beta3DocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentStyle(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentStyle(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3Document = 0;
api.GoogleCloudDocumentaiV1beta3Document
    buildGoogleCloudDocumentaiV1beta3Document() {
  final o = api.GoogleCloudDocumentaiV1beta3Document();
  buildCounterGoogleCloudDocumentaiV1beta3Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Document < 3) {
    o.content = 'foo';
    o.entities = buildUnnamed3();
    o.entityRelations = buildUnnamed4();
    o.error = buildGoogleRpcStatus();
    o.mimeType = 'foo';
    o.pages = buildUnnamed5();
    o.revisions = buildUnnamed6();
    o.shardInfo = buildGoogleCloudDocumentaiV1beta3DocumentShardInfo();
    o.text = 'foo';
    o.textChanges = buildUnnamed7();
    o.textStyles = buildUnnamed8();
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3Document--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3Document(
    api.GoogleCloudDocumentaiV1beta3Document o) {
  buildCounterGoogleCloudDocumentaiV1beta3Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Document < 3) {
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
    checkGoogleCloudDocumentaiV1beta3DocumentShardInfo(o.shardInfo!);
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
  buildCounterGoogleCloudDocumentaiV1beta3Document--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntity> buildUnnamed9() => [
      buildGoogleCloudDocumentaiV1beta3DocumentEntity(),
      buildGoogleCloudDocumentaiV1beta3DocumentEntity(),
    ];

void checkUnnamed9(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentEntity(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity = 0;
api.GoogleCloudDocumentaiV1beta3DocumentEntity
    buildGoogleCloudDocumentaiV1beta3DocumentEntity() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentEntity();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity < 3) {
    o.confidence = 42.0;
    o.id = 'foo';
    o.mentionId = 'foo';
    o.mentionText = 'foo';
    o.normalizedValue =
        buildGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue();
    o.pageAnchor = buildGoogleCloudDocumentaiV1beta3DocumentPageAnchor();
    o.properties = buildUnnamed9();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
    o.redacted = true;
    o.textAnchor = buildGoogleCloudDocumentaiV1beta3DocumentTextAnchor();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentEntity(
    api.GoogleCloudDocumentaiV1beta3DocumentEntity o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity < 3) {
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
    checkGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue(
        o.normalizedValue!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageAnchor(o.pageAnchor!);
    checkUnnamed9(o.properties!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
    unittest.expect(o.redacted!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(o.textAnchor!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue
    buildGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue <
      3) {
    o.addressValue = buildGoogleTypePostalAddress();
    o.booleanValue = true;
    o.dateValue = buildGoogleTypeDate();
    o.datetimeValue = buildGoogleTypeDateTime();
    o.floatValue = 42.0;
    o.integerValue = 42;
    o.moneyValue = buildGoogleTypeMoney();
    o.text = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue(
    api.GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue <
      3) {
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
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityRelation = 0;
api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation
    buildGoogleCloudDocumentaiV1beta3DocumentEntityRelation() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityRelation < 3) {
    o.objectId = 'foo';
    o.relation = 'foo';
    o.subjectId = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityRelation--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentEntityRelation(
    api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityRelation < 3) {
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
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityRelation--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfig = 0;
api.GoogleCloudDocumentaiV1beta3DocumentOutputConfig
    buildGoogleCloudDocumentaiV1beta3DocumentOutputConfig() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentOutputConfig();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfig < 3) {
    o.gcsOutputConfig =
        buildGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentOutputConfig(
    api.GoogleCloudDocumentaiV1beta3DocumentOutputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfig < 3) {
    checkGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig(
        o.gcsOutputConfig!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfig--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig
    buildGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig <
      3) {
    o.gcsUri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig(
    api.GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig <
      3) {
    unittest.expect(
      o.gcsUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageBlock> buildUnnamed10() =>
    [
      buildGoogleCloudDocumentaiV1beta3DocumentPageBlock(),
      buildGoogleCloudDocumentaiV1beta3DocumentPageBlock(),
    ];

void checkUnnamed10(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageBlock(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageBlock(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed11() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
        ];

void checkUnnamed11(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageFormField>
    buildUnnamed12() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageFormField(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageFormField(),
        ];

void checkUnnamed12(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageFormField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageFormField(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageFormField(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageLine> buildUnnamed13() =>
    [
      buildGoogleCloudDocumentaiV1beta3DocumentPageLine(),
      buildGoogleCloudDocumentaiV1beta3DocumentPageLine(),
    ];

void checkUnnamed13(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageLine> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageLine(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageLine(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph>
    buildUnnamed14() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageParagraph(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageParagraph(),
        ];

void checkUnnamed14(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageParagraph(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageParagraph(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageSymbol>
    buildUnnamed15() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageSymbol(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageSymbol(),
        ];

void checkUnnamed15(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageSymbol> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageSymbol(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageSymbol(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTable> buildUnnamed16() =>
    [
      buildGoogleCloudDocumentaiV1beta3DocumentPageTable(),
      buildGoogleCloudDocumentaiV1beta3DocumentPageTable(),
    ];

void checkUnnamed16(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageTable(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageTable(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageToken> buildUnnamed17() =>
    [
      buildGoogleCloudDocumentaiV1beta3DocumentPageToken(),
      buildGoogleCloudDocumentaiV1beta3DocumentPageToken(),
    ];

void checkUnnamed17(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageToken(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageToken(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix>
    buildUnnamed18() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageMatrix(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageMatrix(),
        ];

void checkUnnamed18(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageMatrix(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageMatrix(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement>
    buildUnnamed19() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageVisualElement(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageVisualElement(),
        ];

void checkUnnamed19(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageVisualElement(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageVisualElement(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPage = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPage
    buildGoogleCloudDocumentaiV1beta3DocumentPage() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPage();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPage < 3) {
    o.blocks = buildUnnamed10();
    o.detectedLanguages = buildUnnamed11();
    o.dimension = buildGoogleCloudDocumentaiV1beta3DocumentPageDimension();
    o.formFields = buildUnnamed12();
    o.image = buildGoogleCloudDocumentaiV1beta3DocumentPageImage();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.lines = buildUnnamed13();
    o.pageNumber = 42;
    o.paragraphs = buildUnnamed14();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
    o.symbols = buildUnnamed15();
    o.tables = buildUnnamed16();
    o.tokens = buildUnnamed17();
    o.transforms = buildUnnamed18();
    o.visualElements = buildUnnamed19();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPage(
    api.GoogleCloudDocumentaiV1beta3DocumentPage o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPage < 3) {
    checkUnnamed10(o.blocks!);
    checkUnnamed11(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageDimension(o.dimension!);
    checkUnnamed12(o.formFields!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageImage(o.image!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    checkUnnamed13(o.lines!);
    unittest.expect(
      o.pageNumber!,
      unittest.equals(42),
    );
    checkUnnamed14(o.paragraphs!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
    checkUnnamed15(o.symbols!);
    checkUnnamed16(o.tables!);
    checkUnnamed17(o.tokens!);
    checkUnnamed18(o.transforms!);
    checkUnnamed19(o.visualElements!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPage--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef>
    buildUnnamed20() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef(),
        ];

void checkUnnamed20(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageAnchor
    buildGoogleCloudDocumentaiV1beta3DocumentPageAnchor() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageAnchor();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor < 3) {
    o.pageRefs = buildUnnamed20();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageAnchor(
    api.GoogleCloudDocumentaiV1beta3DocumentPageAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor < 3) {
    checkUnnamed20(o.pageRefs!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef
    buildGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta3BoundingPoly();
    o.confidence = 42.0;
    o.layoutId = 'foo';
    o.layoutType = 'foo';
    o.page = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef(
    api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef < 3) {
    checkGoogleCloudDocumentaiV1beta3BoundingPoly(o.boundingPoly!);
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
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed21() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
        ];

void checkUnnamed21(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageBlock
    buildGoogleCloudDocumentaiV1beta3DocumentPageBlock() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageBlock();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock < 3) {
    o.detectedLanguages = buildUnnamed21();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageBlock(
    api.GoogleCloudDocumentaiV1beta3DocumentPageBlock o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock < 3) {
    checkUnnamed21(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage
    buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage <
      3) {
    o.confidence = 42.0;
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(
    api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDimension = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageDimension
    buildGoogleCloudDocumentaiV1beta3DocumentPageDimension() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageDimension();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDimension < 3) {
    o.height = 42.0;
    o.unit = 'foo';
    o.width = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDimension--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageDimension(
    api.GoogleCloudDocumentaiV1beta3DocumentPageDimension o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDimension < 3) {
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
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDimension--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed22() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
        ];

void checkUnnamed22(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed23() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
        ];

void checkUnnamed23(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageFormField
    buildGoogleCloudDocumentaiV1beta3DocumentPageFormField() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageFormField();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField < 3) {
    o.correctedKeyText = 'foo';
    o.correctedValueText = 'foo';
    o.fieldName = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.fieldValue = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.nameDetectedLanguages = buildUnnamed22();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
    o.valueDetectedLanguages = buildUnnamed23();
    o.valueType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageFormField(
    api.GoogleCloudDocumentaiV1beta3DocumentPageFormField o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField < 3) {
    unittest.expect(
      o.correctedKeyText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.correctedValueText!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.fieldName!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.fieldValue!);
    checkUnnamed22(o.nameDetectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
    checkUnnamed23(o.valueDetectedLanguages!);
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImage = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageImage
    buildGoogleCloudDocumentaiV1beta3DocumentPageImage() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageImage();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImage < 3) {
    o.content = 'foo';
    o.height = 42;
    o.mimeType = 'foo';
    o.width = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageImage(
    api.GoogleCloudDocumentaiV1beta3DocumentPageImage o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImage < 3) {
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
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImage--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLayout = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageLayout
    buildGoogleCloudDocumentaiV1beta3DocumentPageLayout() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageLayout();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLayout < 3) {
    o.boundingPoly = buildGoogleCloudDocumentaiV1beta3BoundingPoly();
    o.confidence = 42.0;
    o.orientation = 'foo';
    o.textAnchor = buildGoogleCloudDocumentaiV1beta3DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLayout--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(
    api.GoogleCloudDocumentaiV1beta3DocumentPageLayout o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLayout < 3) {
    checkGoogleCloudDocumentaiV1beta3BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.orientation!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(o.textAnchor!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLayout--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed24() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
        ];

void checkUnnamed24(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageLine
    buildGoogleCloudDocumentaiV1beta3DocumentPageLine() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageLine();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine < 3) {
    o.detectedLanguages = buildUnnamed24();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageLine(
    api.GoogleCloudDocumentaiV1beta3DocumentPageLine o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine < 3) {
    checkUnnamed24(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageMatrix = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix
    buildGoogleCloudDocumentaiV1beta3DocumentPageMatrix() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageMatrix < 3) {
    o.cols = 42;
    o.data = 'foo';
    o.rows = 42;
    o.type = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageMatrix--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageMatrix(
    api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageMatrix < 3) {
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
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageMatrix--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed25() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
        ];

void checkUnnamed25(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph
    buildGoogleCloudDocumentaiV1beta3DocumentPageParagraph() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph < 3) {
    o.detectedLanguages = buildUnnamed25();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageParagraph(
    api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph < 3) {
    checkUnnamed25(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed26() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
        ];

void checkUnnamed26(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageSymbol = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageSymbol
    buildGoogleCloudDocumentaiV1beta3DocumentPageSymbol() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageSymbol();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageSymbol++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageSymbol < 3) {
    o.detectedLanguages = buildUnnamed26();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageSymbol--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageSymbol(
    api.GoogleCloudDocumentaiV1beta3DocumentPageSymbol o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageSymbol++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageSymbol < 3) {
    checkUnnamed26(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageSymbol--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow>
    buildUnnamed27() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(),
        ];

void checkUnnamed27(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed28() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
        ];

void checkUnnamed28(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow>
    buildUnnamed29() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(),
        ];

void checkUnnamed29(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageTable
    buildGoogleCloudDocumentaiV1beta3DocumentPageTable() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageTable();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable < 3) {
    o.bodyRows = buildUnnamed27();
    o.detectedLanguages = buildUnnamed28();
    o.headerRows = buildUnnamed29();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageTable(
    api.GoogleCloudDocumentaiV1beta3DocumentPageTable o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable < 3) {
    checkUnnamed27(o.bodyRows!);
    checkUnnamed28(o.detectedLanguages!);
    checkUnnamed29(o.headerRows!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed30() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
        ];

void checkUnnamed30(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell
    buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell < 3) {
    o.colSpan = 42;
    o.detectedLanguages = buildUnnamed30();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.rowSpan = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell(
    api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell < 3) {
    unittest.expect(
      o.colSpan!,
      unittest.equals(42),
    );
    checkUnnamed30(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    unittest.expect(
      o.rowSpan!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell>
    buildUnnamed31() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell(),
        ];

void checkUnnamed31(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow
    buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow < 3) {
    o.cells = buildUnnamed31();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(
    api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow < 3) {
    checkUnnamed31(o.cells!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed32() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
        ];

void checkUnnamed32(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageToken
    buildGoogleCloudDocumentaiV1beta3DocumentPageToken() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageToken();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken < 3) {
    o.detectedBreak =
        buildGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak();
    o.detectedLanguages = buildUnnamed32();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageToken(
    api.GoogleCloudDocumentaiV1beta3DocumentPageToken o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken < 3) {
    checkGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak(
        o.detectedBreak!);
    checkUnnamed32(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak
    buildGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak <
      3) {
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak(
    api.GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak <
      3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
    buildUnnamed33() => [
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
          buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
        ];

void checkUnnamed33(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement
    buildGoogleCloudDocumentaiV1beta3DocumentPageVisualElement() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement < 3) {
    o.detectedLanguages = buildUnnamed33();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageVisualElement(
    api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement < 3) {
    checkUnnamed33(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent>
    buildUnnamed34() => [
          buildGoogleCloudDocumentaiV1beta3DocumentProvenanceParent(),
          buildGoogleCloudDocumentaiV1beta3DocumentProvenanceParent(),
        ];

void checkUnnamed34(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentProvenanceParent(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentProvenanceParent(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance = 0;
api.GoogleCloudDocumentaiV1beta3DocumentProvenance
    buildGoogleCloudDocumentaiV1beta3DocumentProvenance() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentProvenance();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance < 3) {
    o.id = 42;
    o.parents = buildUnnamed34();
    o.revision = 42;
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentProvenance(
    api.GoogleCloudDocumentaiV1beta3DocumentProvenance o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance < 3) {
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    checkUnnamed34(o.parents!);
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenanceParent = 0;
api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent
    buildGoogleCloudDocumentaiV1beta3DocumentProvenanceParent() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenanceParent < 3) {
    o.id = 42;
    o.index = 42;
    o.revision = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenanceParent--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentProvenanceParent(
    api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenanceParent < 3) {
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
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenanceParent--;
}

core.List<core.int> buildUnnamed35() => [
      42,
      42,
    ];

void checkUnnamed35(core.List<core.int> o) {
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

core.List<core.String> buildUnnamed36() => [
      'foo',
      'foo',
    ];

void checkUnnamed36(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentRevision = 0;
api.GoogleCloudDocumentaiV1beta3DocumentRevision
    buildGoogleCloudDocumentaiV1beta3DocumentRevision() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentRevision();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentRevision < 3) {
    o.agent = 'foo';
    o.createTime = 'foo';
    o.humanReview =
        buildGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview();
    o.id = 'foo';
    o.parent = buildUnnamed35();
    o.parentIds = buildUnnamed36();
    o.processor = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevision--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentRevision(
    api.GoogleCloudDocumentaiV1beta3DocumentRevision o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentRevision < 3) {
    unittest.expect(
      o.agent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview(
        o.humanReview!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed35(o.parent!);
    checkUnnamed36(o.parentIds!);
    unittest.expect(
      o.processor!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevision--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview
    buildGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview < 3) {
    o.state = 'foo';
    o.stateMessage = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview(
    api.GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview < 3) {
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentShardInfo = 0;
api.GoogleCloudDocumentaiV1beta3DocumentShardInfo
    buildGoogleCloudDocumentaiV1beta3DocumentShardInfo() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentShardInfo();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentShardInfo < 3) {
    o.shardCount = 'foo';
    o.shardIndex = 'foo';
    o.textOffset = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentShardInfo--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentShardInfo(
    api.GoogleCloudDocumentaiV1beta3DocumentShardInfo o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentShardInfo < 3) {
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
  buildCounterGoogleCloudDocumentaiV1beta3DocumentShardInfo--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentStyle = 0;
api.GoogleCloudDocumentaiV1beta3DocumentStyle
    buildGoogleCloudDocumentaiV1beta3DocumentStyle() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentStyle();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentStyle < 3) {
    o.backgroundColor = buildGoogleTypeColor();
    o.color = buildGoogleTypeColor();
    o.fontSize = buildGoogleCloudDocumentaiV1beta3DocumentStyleFontSize();
    o.fontWeight = 'foo';
    o.textAnchor = buildGoogleCloudDocumentaiV1beta3DocumentTextAnchor();
    o.textDecoration = 'foo';
    o.textStyle = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentStyle--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentStyle(
    api.GoogleCloudDocumentaiV1beta3DocumentStyle o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentStyle < 3) {
    checkGoogleTypeColor(o.backgroundColor!);
    checkGoogleTypeColor(o.color!);
    checkGoogleCloudDocumentaiV1beta3DocumentStyleFontSize(o.fontSize!);
    unittest.expect(
      o.fontWeight!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(o.textAnchor!);
    unittest.expect(
      o.textDecoration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textStyle!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentStyle--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentStyleFontSize = 0;
api.GoogleCloudDocumentaiV1beta3DocumentStyleFontSize
    buildGoogleCloudDocumentaiV1beta3DocumentStyleFontSize() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentStyleFontSize();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentStyleFontSize < 3) {
    o.size = 42.0;
    o.unit = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentStyleFontSize--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentStyleFontSize(
    api.GoogleCloudDocumentaiV1beta3DocumentStyleFontSize o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentStyleFontSize < 3) {
    unittest.expect(
      o.size!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentStyleFontSize--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment>
    buildUnnamed37() => [
          buildGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment(),
          buildGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment(),
        ];

void checkUnnamed37(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor = 0;
api.GoogleCloudDocumentaiV1beta3DocumentTextAnchor
    buildGoogleCloudDocumentaiV1beta3DocumentTextAnchor() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentTextAnchor();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor < 3) {
    o.content = 'foo';
    o.textSegments = buildUnnamed37();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(
    api.GoogleCloudDocumentaiV1beta3DocumentTextAnchor o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.textSegments!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment
    buildGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment <
      3) {
    o.endIndex = 'foo';
    o.startIndex = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment(
    api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment <
      3) {
    unittest.expect(
      o.endIndex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentProvenance>
    buildUnnamed38() => [
          buildGoogleCloudDocumentaiV1beta3DocumentProvenance(),
          buildGoogleCloudDocumentaiV1beta3DocumentProvenance(),
        ];

void checkUnnamed38(
    core.List<api.GoogleCloudDocumentaiV1beta3DocumentProvenance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange = 0;
api.GoogleCloudDocumentaiV1beta3DocumentTextChange
    buildGoogleCloudDocumentaiV1beta3DocumentTextChange() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentTextChange();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange < 3) {
    o.changedText = 'foo';
    o.provenance = buildUnnamed38();
    o.textAnchor = buildGoogleCloudDocumentaiV1beta3DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentTextChange(
    api.GoogleCloudDocumentaiV1beta3DocumentTextChange o) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange < 3) {
    unittest.expect(
      o.changedText!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.provenance!);
    checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(o.textAnchor!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorRequest = 0;
api.GoogleCloudDocumentaiV1beta3EnableProcessorRequest
    buildGoogleCloudDocumentaiV1beta3EnableProcessorRequest() {
  final o = api.GoogleCloudDocumentaiV1beta3EnableProcessorRequest();
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorRequest < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3EnableProcessorRequest(
    api.GoogleCloudDocumentaiV1beta3EnableProcessorRequest o) {
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorRequest < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorRequest--;
}

core.List<api.GoogleCloudDocumentaiV1beta3ProcessorType> buildUnnamed39() => [
      buildGoogleCloudDocumentaiV1beta3ProcessorType(),
      buildGoogleCloudDocumentaiV1beta3ProcessorType(),
    ];

void checkUnnamed39(
    core.List<api.GoogleCloudDocumentaiV1beta3ProcessorType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3ProcessorType(o[0]);
  checkGoogleCloudDocumentaiV1beta3ProcessorType(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse =
    0;
api.GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse
    buildGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse() {
  final o = api.GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse();
  buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse < 3) {
    o.processorTypes = buildUnnamed39();
  }
  buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse(
    api.GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse < 3) {
    checkUnnamed39(o.processorTypes!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3GcsDocument = 0;
api.GoogleCloudDocumentaiV1beta3GcsDocument
    buildGoogleCloudDocumentaiV1beta3GcsDocument() {
  final o = api.GoogleCloudDocumentaiV1beta3GcsDocument();
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocument++;
  if (buildCounterGoogleCloudDocumentaiV1beta3GcsDocument < 3) {
    o.gcsUri = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocument--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3GcsDocument(
    api.GoogleCloudDocumentaiV1beta3GcsDocument o) {
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocument++;
  if (buildCounterGoogleCloudDocumentaiV1beta3GcsDocument < 3) {
    unittest.expect(
      o.gcsUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocument--;
}

core.List<api.GoogleCloudDocumentaiV1beta3GcsDocument> buildUnnamed40() => [
      buildGoogleCloudDocumentaiV1beta3GcsDocument(),
      buildGoogleCloudDocumentaiV1beta3GcsDocument(),
    ];

void checkUnnamed40(core.List<api.GoogleCloudDocumentaiV1beta3GcsDocument> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3GcsDocument(o[0]);
  checkGoogleCloudDocumentaiV1beta3GcsDocument(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments = 0;
api.GoogleCloudDocumentaiV1beta3GcsDocuments
    buildGoogleCloudDocumentaiV1beta3GcsDocuments() {
  final o = api.GoogleCloudDocumentaiV1beta3GcsDocuments();
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments++;
  if (buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments < 3) {
    o.documents = buildUnnamed40();
  }
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3GcsDocuments(
    api.GoogleCloudDocumentaiV1beta3GcsDocuments o) {
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments++;
  if (buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments < 3) {
    checkUnnamed40(o.documents!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3GcsPrefix = 0;
api.GoogleCloudDocumentaiV1beta3GcsPrefix
    buildGoogleCloudDocumentaiV1beta3GcsPrefix() {
  final o = api.GoogleCloudDocumentaiV1beta3GcsPrefix();
  buildCounterGoogleCloudDocumentaiV1beta3GcsPrefix++;
  if (buildCounterGoogleCloudDocumentaiV1beta3GcsPrefix < 3) {
    o.gcsUriPrefix = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3GcsPrefix--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3GcsPrefix(
    api.GoogleCloudDocumentaiV1beta3GcsPrefix o) {
  buildCounterGoogleCloudDocumentaiV1beta3GcsPrefix++;
  if (buildCounterGoogleCloudDocumentaiV1beta3GcsPrefix < 3) {
    unittest.expect(
      o.gcsUriPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3GcsPrefix--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus = 0;
api.GoogleCloudDocumentaiV1beta3HumanReviewStatus
    buildGoogleCloudDocumentaiV1beta3HumanReviewStatus() {
  final o = api.GoogleCloudDocumentaiV1beta3HumanReviewStatus();
  buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus++;
  if (buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus < 3) {
    o.humanReviewOperation = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3HumanReviewStatus(
    api.GoogleCloudDocumentaiV1beta3HumanReviewStatus o) {
  buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus++;
  if (buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus < 3) {
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
  buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus--;
}

core.List<api.GoogleCloudDocumentaiV1beta3ProcessorVersion> buildUnnamed41() =>
    [
      buildGoogleCloudDocumentaiV1beta3ProcessorVersion(),
      buildGoogleCloudDocumentaiV1beta3ProcessorVersion(),
    ];

void checkUnnamed41(
    core.List<api.GoogleCloudDocumentaiV1beta3ProcessorVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3ProcessorVersion(o[0]);
  checkGoogleCloudDocumentaiV1beta3ProcessorVersion(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse =
    0;
api.GoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse
    buildGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse() {
  final o = api.GoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse();
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.processorVersions = buildUnnamed41();
  }
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse(
    api.GoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.processorVersions!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse--;
}

core.List<api.GoogleCloudDocumentaiV1beta3Processor> buildUnnamed42() => [
      buildGoogleCloudDocumentaiV1beta3Processor(),
      buildGoogleCloudDocumentaiV1beta3Processor(),
    ];

void checkUnnamed42(core.List<api.GoogleCloudDocumentaiV1beta3Processor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3Processor(o[0]);
  checkGoogleCloudDocumentaiV1beta3Processor(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse = 0;
api.GoogleCloudDocumentaiV1beta3ListProcessorsResponse
    buildGoogleCloudDocumentaiV1beta3ListProcessorsResponse() {
  final o = api.GoogleCloudDocumentaiV1beta3ListProcessorsResponse();
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse < 3) {
    o.nextPageToken = 'foo';
    o.processors = buildUnnamed42();
  }
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ListProcessorsResponse(
    api.GoogleCloudDocumentaiV1beta3ListProcessorsResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed42(o.processors!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3NormalizedVertex = 0;
api.GoogleCloudDocumentaiV1beta3NormalizedVertex
    buildGoogleCloudDocumentaiV1beta3NormalizedVertex() {
  final o = api.GoogleCloudDocumentaiV1beta3NormalizedVertex();
  buildCounterGoogleCloudDocumentaiV1beta3NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta3NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta3NormalizedVertex--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3NormalizedVertex(
    api.GoogleCloudDocumentaiV1beta3NormalizedVertex o) {
  buildCounterGoogleCloudDocumentaiV1beta3NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta3NormalizedVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3NormalizedVertex--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest = 0;
api.GoogleCloudDocumentaiV1beta3ProcessRequest
    buildGoogleCloudDocumentaiV1beta3ProcessRequest() {
  final o = api.GoogleCloudDocumentaiV1beta3ProcessRequest();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest < 3) {
    o.document = buildGoogleCloudDocumentaiV1beta3Document();
    o.inlineDocument = buildGoogleCloudDocumentaiV1beta3Document();
    o.rawDocument = buildGoogleCloudDocumentaiV1beta3RawDocument();
    o.skipHumanReview = true;
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ProcessRequest(
    api.GoogleCloudDocumentaiV1beta3ProcessRequest o) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest < 3) {
    checkGoogleCloudDocumentaiV1beta3Document(o.document!);
    checkGoogleCloudDocumentaiV1beta3Document(o.inlineDocument!);
    checkGoogleCloudDocumentaiV1beta3RawDocument(o.rawDocument!);
    unittest.expect(o.skipHumanReview!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ProcessResponse = 0;
api.GoogleCloudDocumentaiV1beta3ProcessResponse
    buildGoogleCloudDocumentaiV1beta3ProcessResponse() {
  final o = api.GoogleCloudDocumentaiV1beta3ProcessResponse();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessResponse < 3) {
    o.document = buildGoogleCloudDocumentaiV1beta3Document();
    o.humanReviewOperation = 'foo';
    o.humanReviewStatus = buildGoogleCloudDocumentaiV1beta3HumanReviewStatus();
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ProcessResponse(
    api.GoogleCloudDocumentaiV1beta3ProcessResponse o) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessResponse < 3) {
    checkGoogleCloudDocumentaiV1beta3Document(o.document!);
    unittest.expect(
      o.humanReviewOperation!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDocumentaiV1beta3HumanReviewStatus(o.humanReviewStatus!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3Processor = 0;
api.GoogleCloudDocumentaiV1beta3Processor
    buildGoogleCloudDocumentaiV1beta3Processor() {
  final o = api.GoogleCloudDocumentaiV1beta3Processor();
  buildCounterGoogleCloudDocumentaiV1beta3Processor++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Processor < 3) {
    o.createTime = 'foo';
    o.defaultProcessorVersion = 'foo';
    o.displayName = 'foo';
    o.kmsKeyName = 'foo';
    o.name = 'foo';
    o.processEndpoint = 'foo';
    o.state = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3Processor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3Processor(
    api.GoogleCloudDocumentaiV1beta3Processor o) {
  buildCounterGoogleCloudDocumentaiV1beta3Processor++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Processor < 3) {
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
  buildCounterGoogleCloudDocumentaiV1beta3Processor--;
}

core.List<api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo>
    buildUnnamed43() => [
          buildGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo(),
          buildGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo(),
        ];

void checkUnnamed43(
    core.List<api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo(o[0]);
  checkGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ProcessorType = 0;
api.GoogleCloudDocumentaiV1beta3ProcessorType
    buildGoogleCloudDocumentaiV1beta3ProcessorType() {
  final o = api.GoogleCloudDocumentaiV1beta3ProcessorType();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorType++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorType < 3) {
    o.allowCreation = true;
    o.availableLocations = buildUnnamed43();
    o.category = 'foo';
    o.launchStage = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorType--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ProcessorType(
    api.GoogleCloudDocumentaiV1beta3ProcessorType o) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorType++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorType < 3) {
    unittest.expect(o.allowCreation!, unittest.isTrue);
    checkUnnamed43(o.availableLocations!);
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
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorType--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo = 0;
api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo
    buildGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo() {
  final o = api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo < 3) {
    o.locationId = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo(
    api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo o) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo < 3) {
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersion = 0;
api.GoogleCloudDocumentaiV1beta3ProcessorVersion
    buildGoogleCloudDocumentaiV1beta3ProcessorVersion() {
  final o = api.GoogleCloudDocumentaiV1beta3ProcessorVersion();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersion++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersion < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.kmsKeyName = 'foo';
    o.kmsKeyVersionName = 'foo';
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersion--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ProcessorVersion(
    api.GoogleCloudDocumentaiV1beta3ProcessorVersion o) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersion++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersion < 3) {
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
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersion--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3RawDocument = 0;
api.GoogleCloudDocumentaiV1beta3RawDocument
    buildGoogleCloudDocumentaiV1beta3RawDocument() {
  final o = api.GoogleCloudDocumentaiV1beta3RawDocument();
  buildCounterGoogleCloudDocumentaiV1beta3RawDocument++;
  if (buildCounterGoogleCloudDocumentaiV1beta3RawDocument < 3) {
    o.content = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3RawDocument--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3RawDocument(
    api.GoogleCloudDocumentaiV1beta3RawDocument o) {
  buildCounterGoogleCloudDocumentaiV1beta3RawDocument++;
  if (buildCounterGoogleCloudDocumentaiV1beta3RawDocument < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3RawDocument--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest = 0;
api.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest
    buildGoogleCloudDocumentaiV1beta3ReviewDocumentRequest() {
  final o = api.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest();
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest < 3) {
    o.document = buildGoogleCloudDocumentaiV1beta3Document();
    o.enableSchemaValidation = true;
    o.inlineDocument = buildGoogleCloudDocumentaiV1beta3Document();
    o.priority = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ReviewDocumentRequest(
    api.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest o) {
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest < 3) {
    checkGoogleCloudDocumentaiV1beta3Document(o.document!);
    unittest.expect(o.enableSchemaValidation!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta3Document(o.inlineDocument!);
    unittest.expect(
      o.priority!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest =
    0;
api.GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest
    buildGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest() {
  final o = api.GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest();
  buildCounterGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest <
      3) {
    o.defaultProcessorVersion = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest(
    api.GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest o) {
  buildCounterGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest <
      3) {
    unittest.expect(
      o.defaultProcessorVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest--;
}

core.int
    buildCounterGoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest = 0;
api.GoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest
    buildGoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest() {
  final o = api.GoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest();
  buildCounterGoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest <
      3) {}
  buildCounterGoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest(
    api.GoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest o) {
  buildCounterGoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest <
      3) {}
  buildCounterGoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3Vertex = 0;
api.GoogleCloudDocumentaiV1beta3Vertex
    buildGoogleCloudDocumentaiV1beta3Vertex() {
  final o = api.GoogleCloudDocumentaiV1beta3Vertex();
  buildCounterGoogleCloudDocumentaiV1beta3Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3Vertex--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3Vertex(
    api.GoogleCloudDocumentaiV1beta3Vertex o) {
  buildCounterGoogleCloudDocumentaiV1beta3Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Vertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3Vertex--;
}

core.List<api.GoogleCloudLocationLocation> buildUnnamed44() => [
      buildGoogleCloudLocationLocation(),
      buildGoogleCloudLocationLocation(),
    ];

void checkUnnamed44(core.List<api.GoogleCloudLocationLocation> o) {
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
    o.locations = buildUnnamed44();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
  return o;
}

void checkGoogleCloudLocationListLocationsResponse(
    api.GoogleCloudLocationListLocationsResponse o) {
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    checkUnnamed44(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed45() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed45(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed46() => {
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

void checkUnnamed46(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed45();
    o.locationId = 'foo';
    o.metadata = buildUnnamed46();
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
    checkUnnamed45(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudLocationLocation--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed47() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed47(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed47();
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
    checkUnnamed47(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
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
    o.metadata = buildUnnamed48();
    o.name = 'foo';
    o.response = buildUnnamed49();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed48(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed49(o.response!);
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

core.Map<core.String, core.Object?> buildUnnamed50() => {
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

void checkUnnamed50(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed51() => [
      buildUnnamed50(),
      buildUnnamed50(),
    ];

void checkUnnamed51(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed50(o[0]);
  checkUnnamed50(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed51();
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
    checkUnnamed51(o.details!);
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

core.List<core.String> buildUnnamed53() => [
      'foo',
      'foo',
    ];

void checkUnnamed53(core.List<core.String> o) {
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
    o.addressLines = buildUnnamed52();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed53();
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
    checkUnnamed52(o.addressLines!);
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
    checkUnnamed53(o.recipients!);
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
  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3BatchProcessRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3BatchProcessRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchProcessRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3BoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3BoundingPoly.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3BoundingPoly(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DisableProcessorRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DisableProcessorRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DisableProcessorRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DisableProcessorRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3Document', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3Document();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3Document.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3Document(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentEntity(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentEntityRelation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentEntityRelation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentEntityRelation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentOutputConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentOutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentOutputConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageAnchor',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageAnchor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageAnchor(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageBlock',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageBlock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageBlock.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageBlock(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageDimension',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageDimension(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageFormField',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageFormField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageFormField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageFormField(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageImage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageImage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageLayout',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageLine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageLine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageLine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageLine(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageMatrix',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageMatrix();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageMatrix(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageParagraph',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageParagraph();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageParagraph(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageSymbol',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageSymbol();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageSymbol.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageSymbol(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageTable',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageTable(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageToken',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageToken(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageVisualElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageVisualElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentPageVisualElement(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentProvenance',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentProvenance(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentProvenanceParent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentProvenanceParent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentProvenanceParent(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentRevision', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentRevision();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentRevision.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentRevision(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentShardInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentShardInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentShardInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentShardInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentStyle(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentStyleFontSize',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentStyleFontSize();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentStyleFontSize.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentStyleFontSize(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentTextAnchor',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentTextAnchor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentTextAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentTextChange',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentTextChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentTextChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3DocumentTextChange(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3EnableProcessorRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3EnableProcessorRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3EnableProcessorRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3EnableProcessorRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3GcsDocument', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3GcsDocument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3GcsDocument.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3GcsDocument(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3GcsDocuments', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3GcsDocuments();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3GcsDocuments.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3GcsDocuments(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3GcsPrefix', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3GcsPrefix();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3GcsPrefix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3GcsPrefix(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3HumanReviewStatus',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3HumanReviewStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3HumanReviewStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3HumanReviewStatus(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3ListProcessorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3ListProcessorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3ListProcessorsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ListProcessorsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3NormalizedVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3NormalizedVertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3NormalizedVertex(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3ProcessRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3ProcessRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3ProcessRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ProcessRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3ProcessResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3ProcessResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3ProcessResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ProcessResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3Processor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3Processor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3Processor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3Processor(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3ProcessorType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3ProcessorType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3ProcessorType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ProcessorType(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3ProcessorVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3ProcessorVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3ProcessorVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ProcessorVersion(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3RawDocument', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3RawDocument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3RawDocument.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3RawDocument(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3ReviewDocumentRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3ReviewDocumentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3ReviewDocumentRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3Vertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3Vertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3Vertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDocumentaiV1beta3Vertex(od);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
            buildGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.fetchProcessorTypes(arg_parent, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse(response
          as api.GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3BatchProcessRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDocumentaiV1beta3BatchProcessRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3BatchProcessRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
      final arg_request = buildGoogleCloudDocumentaiV1beta3Processor();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDocumentaiV1beta3Processor.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3Processor(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleCloudDocumentaiV1beta3Processor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1beta3Processor(
          response as api.GoogleCloudDocumentaiV1beta3Processor);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3DisableProcessorRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDocumentaiV1beta3DisableProcessorRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3DisableProcessorRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3EnableProcessorRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDocumentaiV1beta3EnableProcessorRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3EnableProcessorRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
            convert.json.encode(buildGoogleCloudDocumentaiV1beta3Processor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1beta3Processor(
          response as api.GoogleCloudDocumentaiV1beta3Processor);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleCloudDocumentaiV1beta3ListProcessorsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1beta3ListProcessorsResponse(
          response as api.GoogleCloudDocumentaiV1beta3ListProcessorsResponse);
    });

    unittest.test('method--process', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_request = buildGoogleCloudDocumentaiV1beta3ProcessRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDocumentaiV1beta3ProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3ProcessRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleCloudDocumentaiV1beta3ProcessResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.process(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1beta3ProcessResponse(
          response as api.GoogleCloudDocumentaiV1beta3ProcessResponse);
    });

    unittest.test('method--setDefaultProcessorVersion', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest();
      final arg_processor = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3ReviewDocumentRequest();
      final arg_humanReviewConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3ReviewDocumentRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3BatchProcessRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDocumentaiV1beta3BatchProcessRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3BatchProcessRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
          buildGoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleCloudDocumentaiV1beta3ProcessorVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1beta3ProcessorVersion(
          response as api.GoogleCloudDocumentaiV1beta3ProcessorVersion);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
            buildGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse(response
          as api.GoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse);
    });

    unittest.test('method--process', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      final arg_request = buildGoogleCloudDocumentaiV1beta3ProcessRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDocumentaiV1beta3ProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3ProcessRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
            .encode(buildGoogleCloudDocumentaiV1beta3ProcessResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.process(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1beta3ProcessResponse(
          response as api.GoogleCloudDocumentaiV1beta3ProcessResponse);
    });

    unittest.test('method--undeploy', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta3/'),
        );
        pathOffset += 8;
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
}
