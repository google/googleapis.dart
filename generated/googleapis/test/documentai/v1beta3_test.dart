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

import 'package:googleapis/documentai/v1beta3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudDocumentaiV1beta3Barcode = 0;
api.GoogleCloudDocumentaiV1beta3Barcode
buildGoogleCloudDocumentaiV1beta3Barcode() {
  final o = api.GoogleCloudDocumentaiV1beta3Barcode();
  buildCounterGoogleCloudDocumentaiV1beta3Barcode++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Barcode < 3) {
    o.format = 'foo';
    o.rawValue = 'foo';
    o.valueFormat = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3Barcode--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3Barcode(
  api.GoogleCloudDocumentaiV1beta3Barcode o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3Barcode++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Barcode < 3) {
    unittest.expect(o.format!, unittest.equals('foo'));
    unittest.expect(o.rawValue!, unittest.equals('foo'));
    unittest.expect(o.valueFormat!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3Barcode--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3BatchDatasetDocuments = 0;
api.GoogleCloudDocumentaiV1beta3BatchDatasetDocuments
buildGoogleCloudDocumentaiV1beta3BatchDatasetDocuments() {
  final o = api.GoogleCloudDocumentaiV1beta3BatchDatasetDocuments();
  buildCounterGoogleCloudDocumentaiV1beta3BatchDatasetDocuments++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchDatasetDocuments < 3) {
    o.filter = 'foo';
    o.individualDocumentIds =
        buildGoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds();
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchDatasetDocuments--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BatchDatasetDocuments(
  api.GoogleCloudDocumentaiV1beta3BatchDatasetDocuments o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchDatasetDocuments++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchDatasetDocuments < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds(
      o.individualDocumentIds!,
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchDatasetDocuments--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentId> buildUnnamed0() => [
  buildGoogleCloudDocumentaiV1beta3DocumentId(),
  buildGoogleCloudDocumentaiV1beta3DocumentId(),
];

void checkUnnamed0(core.List<api.GoogleCloudDocumentaiV1beta3DocumentId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentId(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentId(o[1]);
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds =
    0;
api.GoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds
buildGoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds() {
  final o =
      api.GoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds();
  buildCounterGoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds <
      3) {
    o.documentIds = buildUnnamed0();
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds(
  api.GoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds <
      3) {
    checkUnnamed0(o.documentIds!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest =
    0;
api.GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest
buildGoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest() {
  final o = api.GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest();
  buildCounterGoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest < 3) {
    o.datasetDocuments =
        buildGoogleCloudDocumentaiV1beta3BatchDatasetDocuments();
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest(
  api.GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest < 3) {
    checkGoogleCloudDocumentaiV1beta3BatchDatasetDocuments(o.datasetDocuments!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest--;
}

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
  api.GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig < 3) {
    checkGoogleCloudDocumentaiV1beta3GcsDocuments(o.gcsDocuments!);
    checkGoogleCloudDocumentaiV1beta3GcsPrefix(o.gcsPrefix!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig--;
}

core.List<api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig>
buildUnnamed1() => [
  buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig(),
  buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig(),
];

void checkUnnamed1(
  core.List<api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig(o[0]);
  checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig(o[1]);
}

core.Map<core.String, core.String> buildUnnamed2() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed2(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest = 0;
api.GoogleCloudDocumentaiV1beta3BatchProcessRequest
buildGoogleCloudDocumentaiV1beta3BatchProcessRequest() {
  final o = api.GoogleCloudDocumentaiV1beta3BatchProcessRequest();
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest < 3) {
    o.documentOutputConfig =
        buildGoogleCloudDocumentaiV1beta3DocumentOutputConfig();
    o.inputConfigs = buildUnnamed1();
    o.inputDocuments =
        buildGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig();
    o.labels = buildUnnamed2();
    o.outputConfig =
        buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig();
    o.processOptions = buildGoogleCloudDocumentaiV1beta3ProcessOptions();
    o.skipHumanReview = true;
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BatchProcessRequest(
  api.GoogleCloudDocumentaiV1beta3BatchProcessRequest o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest < 3) {
    checkGoogleCloudDocumentaiV1beta3DocumentOutputConfig(
      o.documentOutputConfig!,
    );
    checkUnnamed1(o.inputConfigs!);
    checkGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig(
      o.inputDocuments!,
    );
    checkUnnamed2(o.labels!);
    checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig(
      o.outputConfig!,
    );
    checkGoogleCloudDocumentaiV1beta3ProcessOptions(o.processOptions!);
    unittest.expect(o.skipHumanReview!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequest--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig = 0;
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
  api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig <
      3) {
    unittest.expect(o.gcsSource!, unittest.equals('foo'));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
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
  api.GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig <
      3) {
    unittest.expect(o.gcsDestination!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig--;
}

core.List<api.GoogleCloudDocumentaiV1beta3NormalizedVertex> buildUnnamed3() => [
  buildGoogleCloudDocumentaiV1beta3NormalizedVertex(),
  buildGoogleCloudDocumentaiV1beta3NormalizedVertex(),
];

void checkUnnamed3(
  core.List<api.GoogleCloudDocumentaiV1beta3NormalizedVertex> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3NormalizedVertex(o[0]);
  checkGoogleCloudDocumentaiV1beta3NormalizedVertex(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3Vertex> buildUnnamed4() => [
  buildGoogleCloudDocumentaiV1beta3Vertex(),
  buildGoogleCloudDocumentaiV1beta3Vertex(),
];

void checkUnnamed4(core.List<api.GoogleCloudDocumentaiV1beta3Vertex> o) {
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
    o.normalizedVertices = buildUnnamed3();
    o.vertices = buildUnnamed4();
  }
  buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3BoundingPoly(
  api.GoogleCloudDocumentaiV1beta3BoundingPoly o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly++;
  if (buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly < 3) {
    checkUnnamed3(o.normalizedVertices!);
    checkUnnamed4(o.vertices!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3BoundingPoly--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3Dataset = 0;
api.GoogleCloudDocumentaiV1beta3Dataset
buildGoogleCloudDocumentaiV1beta3Dataset() {
  final o = api.GoogleCloudDocumentaiV1beta3Dataset();
  buildCounterGoogleCloudDocumentaiV1beta3Dataset++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Dataset < 3) {
    o.documentWarehouseConfig =
        buildGoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig();
    o.gcsManagedConfig =
        buildGoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig();
    o.name = 'foo';
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.spannerIndexingConfig =
        buildGoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig();
    o.state = 'foo';
    o.unmanagedDatasetConfig =
        buildGoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig();
  }
  buildCounterGoogleCloudDocumentaiV1beta3Dataset--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3Dataset(
  api.GoogleCloudDocumentaiV1beta3Dataset o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3Dataset++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Dataset < 3) {
    checkGoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig(
      o.documentWarehouseConfig!,
    );
    checkGoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig(
      o.gcsManagedConfig!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig(
      o.spannerIndexingConfig!,
    );
    unittest.expect(o.state!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig(
      o.unmanagedDatasetConfig!,
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3Dataset--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig = 0;
api.GoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig
buildGoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig() {
  final o = api.GoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig();
  buildCounterGoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig <
      3) {
    o.collection = 'foo';
    o.schema = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig(
  api.GoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig <
      3) {
    unittest.expect(o.collection!, unittest.equals('foo'));
    unittest.expect(o.schema!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig = 0;
api.GoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig
buildGoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig() {
  final o = api.GoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig();
  buildCounterGoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig < 3) {
    o.gcsPrefix = buildGoogleCloudDocumentaiV1beta3GcsPrefix();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig(
  api.GoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig < 3) {
    checkGoogleCloudDocumentaiV1beta3GcsPrefix(o.gcsPrefix!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DatasetSchema = 0;
api.GoogleCloudDocumentaiV1beta3DatasetSchema
buildGoogleCloudDocumentaiV1beta3DatasetSchema() {
  final o = api.GoogleCloudDocumentaiV1beta3DatasetSchema();
  buildCounterGoogleCloudDocumentaiV1beta3DatasetSchema++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DatasetSchema < 3) {
    o.documentSchema = buildGoogleCloudDocumentaiV1beta3DocumentSchema();
    o.name = 'foo';
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
  }
  buildCounterGoogleCloudDocumentaiV1beta3DatasetSchema--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DatasetSchema(
  api.GoogleCloudDocumentaiV1beta3DatasetSchema o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DatasetSchema++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DatasetSchema < 3) {
    checkGoogleCloudDocumentaiV1beta3DocumentSchema(o.documentSchema!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DatasetSchema--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig =
    0;
api.GoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig
buildGoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig() {
  final o = api.GoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig();
  buildCounterGoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig <
      3) {}
  buildCounterGoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig(
  api.GoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig <
      3) {}
  buildCounterGoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig =
    0;
api.GoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig
buildGoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig() {
  final o = api.GoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig();
  buildCounterGoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig <
      3) {}
  buildCounterGoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig(
  api.GoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig <
      3) {}
  buildCounterGoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig--;
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
  api.GoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest o,
) {
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
  api.GoogleCloudDocumentaiV1beta3DisableProcessorRequest o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorRequest < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3DisableProcessorRequest--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentBlobAsset> buildUnnamed5() =>
    [
      buildGoogleCloudDocumentaiV1beta3DocumentBlobAsset(),
      buildGoogleCloudDocumentaiV1beta3DocumentBlobAsset(),
    ];

void checkUnnamed5(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentBlobAsset> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentBlobAsset(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentBlobAsset(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntity> buildUnnamed6() => [
  buildGoogleCloudDocumentaiV1beta3DocumentEntity(),
  buildGoogleCloudDocumentaiV1beta3DocumentEntity(),
];

void checkUnnamed6(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntity> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentEntity(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentEntity(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation>
buildUnnamed7() => [
  buildGoogleCloudDocumentaiV1beta3DocumentEntityRelation(),
  buildGoogleCloudDocumentaiV1beta3DocumentEntityRelation(),
];

void checkUnnamed7(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentEntityRelation(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentEntityRelation(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPage> buildUnnamed8() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPage(),
  buildGoogleCloudDocumentaiV1beta3DocumentPage(),
];

void checkUnnamed8(core.List<api.GoogleCloudDocumentaiV1beta3DocumentPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentRevision> buildUnnamed9() => [
  buildGoogleCloudDocumentaiV1beta3DocumentRevision(),
  buildGoogleCloudDocumentaiV1beta3DocumentRevision(),
];

void checkUnnamed9(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentRevision> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentRevision(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentRevision(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentTextChange>
buildUnnamed10() => [
  buildGoogleCloudDocumentaiV1beta3DocumentTextChange(),
  buildGoogleCloudDocumentaiV1beta3DocumentTextChange(),
];

void checkUnnamed10(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentTextChange> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentTextChange(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentTextChange(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentStyle> buildUnnamed11() => [
  buildGoogleCloudDocumentaiV1beta3DocumentStyle(),
  buildGoogleCloudDocumentaiV1beta3DocumentStyle(),
];

void checkUnnamed11(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentStyle> o,
) {
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
    o.blobAssets = buildUnnamed5();
    o.chunkedDocument =
        buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocument();
    o.content = 'foo';
    o.docid = 'foo';
    o.documentLayout =
        buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayout();
    o.entities = buildUnnamed6();
    o.entityRelations = buildUnnamed7();
    o.error = buildGoogleRpcStatus();
    o.mimeType = 'foo';
    o.pages = buildUnnamed8();
    o.revisions = buildUnnamed9();
    o.shardInfo = buildGoogleCloudDocumentaiV1beta3DocumentShardInfo();
    o.text = 'foo';
    o.textChanges = buildUnnamed10();
    o.textStyles = buildUnnamed11();
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3Document--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3Document(
  api.GoogleCloudDocumentaiV1beta3Document o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3Document++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Document < 3) {
    checkUnnamed5(o.blobAssets!);
    checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocument(
      o.chunkedDocument!,
    );
    unittest.expect(o.content!, unittest.equals('foo'));
    unittest.expect(o.docid!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayout(o.documentLayout!);
    checkUnnamed6(o.entities!);
    checkUnnamed7(o.entityRelations!);
    checkGoogleRpcStatus(o.error!);
    unittest.expect(o.mimeType!, unittest.equals('foo'));
    checkUnnamed8(o.pages!);
    checkUnnamed9(o.revisions!);
    checkGoogleCloudDocumentaiV1beta3DocumentShardInfo(o.shardInfo!);
    unittest.expect(o.text!, unittest.equals('foo'));
    checkUnnamed10(o.textChanges!);
    checkUnnamed11(o.textStyles!);
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3Document--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentAnnotations = 0;
api.GoogleCloudDocumentaiV1beta3DocumentAnnotations
buildGoogleCloudDocumentaiV1beta3DocumentAnnotations() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentAnnotations();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentAnnotations++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentAnnotations < 3) {
    o.description = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentAnnotations--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentAnnotations(
  api.GoogleCloudDocumentaiV1beta3DocumentAnnotations o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentAnnotations++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentAnnotations < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentAnnotations--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentBlobAsset = 0;
api.GoogleCloudDocumentaiV1beta3DocumentBlobAsset
buildGoogleCloudDocumentaiV1beta3DocumentBlobAsset() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentBlobAsset();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentBlobAsset++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentBlobAsset < 3) {
    o.assetId = 'foo';
    o.content = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentBlobAsset--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentBlobAsset(
  api.GoogleCloudDocumentaiV1beta3DocumentBlobAsset o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentBlobAsset++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentBlobAsset < 3) {
    unittest.expect(o.assetId!, unittest.equals('foo'));
    unittest.expect(o.content!, unittest.equals('foo'));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentBlobAsset--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk>
buildUnnamed12() => [
  buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk(),
  buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk(),
];

void checkUnnamed12(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocument = 0;
api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocument
buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocument() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocument();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocument++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocument < 3) {
    o.chunks = buildUnnamed12();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocument--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocument(
  api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocument o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocument++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocument < 3) {
    checkUnnamed12(o.chunks!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocument--;
}

core.List<
  api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField
>
buildUnnamed13() => [
  buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField(),
  buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField(),
];

void checkUnnamed13(
  core.List<
    api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField(o[1]);
}

core.List<
  api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter
>
buildUnnamed14() => [
  buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter(),
  buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter(),
];

void checkUnnamed14(
  core.List<
    api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter(
    o[0],
  );
  checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter(
    o[1],
  );
}

core.List<
  api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader
>
buildUnnamed15() => [
  buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader(),
  buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader(),
];

void checkUnnamed15(
  core.List<
    api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader(
    o[0],
  );
  checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader(
    o[1],
  );
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk
buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk <
      3) {
    o.chunkFields = buildUnnamed13();
    o.chunkId = 'foo';
    o.content = 'foo';
    o.pageFooters = buildUnnamed14();
    o.pageHeaders = buildUnnamed15();
    o.pageSpan =
        buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan();
    o.sourceBlockIds = buildUnnamed16();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk(
  api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk <
      3) {
    checkUnnamed13(o.chunkFields!);
    unittest.expect(o.chunkId!, unittest.equals('foo'));
    unittest.expect(o.content!, unittest.equals('foo'));
    checkUnnamed14(o.pageFooters!);
    checkUnnamed15(o.pageHeaders!);
    checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan(
      o.pageSpan!,
    );
    checkUnnamed16(o.sourceBlockIds!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField
buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField <
      3) {
    o.imageChunkField =
        buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField();
    o.tableChunkField =
        buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField(
  api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField <
      3) {
    checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField(
      o.imageChunkField!,
    );
    checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField(
      o.tableChunkField!,
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter
buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter <
      3) {
    o.pageSpan =
        buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan();
    o.text = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter(
  api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter <
      3) {
    checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan(
      o.pageSpan!,
    );
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader
buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader <
      3) {
    o.pageSpan =
        buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan();
    o.text = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader(
  api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader <
      3) {
    checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan(
      o.pageSpan!,
    );
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan
buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan <
      3) {
    o.pageEnd = 42;
    o.pageStart = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan(
  api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan <
      3) {
    unittest.expect(o.pageEnd!, unittest.equals(42));
    unittest.expect(o.pageStart!, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField
buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField <
      3) {
    o.annotations = buildGoogleCloudDocumentaiV1beta3DocumentAnnotations();
    o.blobAssetId = 'foo';
    o.dataUri = 'foo';
    o.gcsUri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField(
  api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField <
      3) {
    checkGoogleCloudDocumentaiV1beta3DocumentAnnotations(o.annotations!);
    unittest.expect(o.blobAssetId!, unittest.equals('foo'));
    unittest.expect(o.dataUri!, unittest.equals('foo'));
    unittest.expect(o.gcsUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField
buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField <
      3) {
    o.annotations = buildGoogleCloudDocumentaiV1beta3DocumentAnnotations();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField(
  api.GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField <
      3) {
    checkGoogleCloudDocumentaiV1beta3DocumentAnnotations(o.annotations!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField--;
}

core.List<
  api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock
>
buildUnnamed17() => [
  buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock(),
  buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock(),
];

void checkUnnamed17(
  core.List<
    api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock(
    o[0],
  );
  checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock(
    o[1],
  );
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayout = 0;
api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayout
buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayout() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayout();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayout < 3) {
    o.blocks = buildUnnamed17();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayout--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayout(
  api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayout o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayout < 3) {
    checkUnnamed17(o.blocks!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayout--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock
buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock <
      3) {
    o.blockId = 'foo';
    o.boundingBox = buildGoogleCloudDocumentaiV1beta3BoundingPoly();
    o.imageBlock =
        buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock();
    o.listBlock =
        buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock();
    o.pageSpan =
        buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan();
    o.tableBlock =
        buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock();
    o.textBlock =
        buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock(
  api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock <
      3) {
    unittest.expect(o.blockId!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3BoundingPoly(o.boundingBox!);
    checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock(
      o.imageBlock!,
    );
    checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock(
      o.listBlock!,
    );
    checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan(
      o.pageSpan!,
    );
    checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock(
      o.tableBlock!,
    );
    checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock(
      o.textBlock!,
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock
buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock <
      3) {
    o.annotations = buildGoogleCloudDocumentaiV1beta3DocumentAnnotations();
    o.blobAssetId = 'foo';
    o.dataUri = 'foo';
    o.gcsUri = 'foo';
    o.imageText = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock(
  api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock
  o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock <
      3) {
    checkGoogleCloudDocumentaiV1beta3DocumentAnnotations(o.annotations!);
    unittest.expect(o.blobAssetId!, unittest.equals('foo'));
    unittest.expect(o.dataUri!, unittest.equals('foo'));
    unittest.expect(o.gcsUri!, unittest.equals('foo'));
    unittest.expect(o.imageText!, unittest.equals('foo'));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock--;
}

core.List<
  api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry
>
buildUnnamed18() => [
  buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry(),
  buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry(),
];

void checkUnnamed18(
  core.List<
    api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry(
    o[0],
  );
  checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry(
    o[1],
  );
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock
buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock <
      3) {
    o.listEntries = buildUnnamed18();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock(
  api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock
  o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock <
      3) {
    checkUnnamed18(o.listEntries!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock--;
}

core.List<
  api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock
>
buildUnnamed19() => [
  buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock(),
  buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock(),
];

void checkUnnamed19(
  core.List<
    api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock(
    o[0],
  );
  checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock(
    o[1],
  );
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry
buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry <
      3) {
    o.blocks = buildUnnamed19();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry(
  api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry
  o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry <
      3) {
    checkUnnamed19(o.blocks!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan
buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan <
      3) {
    o.pageEnd = 42;
    o.pageStart = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan(
  api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan
  o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan <
      3) {
    unittest.expect(o.pageEnd!, unittest.equals(42));
    unittest.expect(o.pageStart!, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan--;
}

core.List<
  api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow
>
buildUnnamed20() => [
  buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow(),
  buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow(),
];

void checkUnnamed20(
  core.List<
    api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow(
    o[0],
  );
  checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow(
    o[1],
  );
}

core.List<
  api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow
>
buildUnnamed21() => [
  buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow(),
  buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow(),
];

void checkUnnamed21(
  core.List<
    api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow(
    o[0],
  );
  checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow(
    o[1],
  );
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock
buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock <
      3) {
    o.annotations = buildGoogleCloudDocumentaiV1beta3DocumentAnnotations();
    o.bodyRows = buildUnnamed20();
    o.caption = 'foo';
    o.headerRows = buildUnnamed21();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock(
  api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock
  o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock <
      3) {
    checkGoogleCloudDocumentaiV1beta3DocumentAnnotations(o.annotations!);
    checkUnnamed20(o.bodyRows!);
    unittest.expect(o.caption!, unittest.equals('foo'));
    checkUnnamed21(o.headerRows!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock--;
}

core.List<
  api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock
>
buildUnnamed22() => [
  buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock(),
  buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock(),
];

void checkUnnamed22(
  core.List<
    api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock(
    o[0],
  );
  checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock(
    o[1],
  );
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell
buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell <
      3) {
    o.blocks = buildUnnamed22();
    o.colSpan = 42;
    o.rowSpan = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell(
  api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell
  o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell <
      3) {
    checkUnnamed22(o.blocks!);
    unittest.expect(o.colSpan!, unittest.equals(42));
    unittest.expect(o.rowSpan!, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell--;
}

core.List<
  api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell
>
buildUnnamed23() => [
  buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell(),
  buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell(),
];

void checkUnnamed23(
  core.List<
    api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell(
    o[0],
  );
  checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell(
    o[1],
  );
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow
buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow <
      3) {
    o.cells = buildUnnamed23();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow(
  api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow
  o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow <
      3) {
    checkUnnamed23(o.cells!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow--;
}

core.List<
  api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock
>
buildUnnamed24() => [
  buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock(),
  buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock(),
];

void checkUnnamed24(
  core.List<
    api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock(
    o[0],
  );
  checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock(
    o[1],
  );
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock
buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock <
      3) {
    o.blocks = buildUnnamed24();
    o.text = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock(
  api.GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock
  o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock <
      3) {
    checkUnnamed24(o.blocks!);
    unittest.expect(o.text!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntity> buildUnnamed25() => [
  buildGoogleCloudDocumentaiV1beta3DocumentEntity(),
  buildGoogleCloudDocumentaiV1beta3DocumentEntity(),
];

void checkUnnamed25(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentEntity> o,
) {
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
    o.properties = buildUnnamed25();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
    o.redacted = true;
    o.textAnchor = buildGoogleCloudDocumentaiV1beta3DocumentTextAnchor();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentEntity(
  api.GoogleCloudDocumentaiV1beta3DocumentEntity o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentEntity < 3) {
    unittest.expect(o.confidence!, unittest.equals(42.0));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.mentionId!, unittest.equals('foo'));
    unittest.expect(o.mentionText!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue(
      o.normalizedValue!,
    );
    checkGoogleCloudDocumentaiV1beta3DocumentPageAnchor(o.pageAnchor!);
    checkUnnamed25(o.properties!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
    unittest.expect(o.redacted!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(o.textAnchor!);
    unittest.expect(o.type!, unittest.equals('foo'));
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
    o.signatureValue = true;
    o.text = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue(
  api.GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue <
      3) {
    checkGoogleTypePostalAddress(o.addressValue!);
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkGoogleTypeDate(o.dateValue!);
    checkGoogleTypeDateTime(o.datetimeValue!);
    unittest.expect(o.floatValue!, unittest.equals(42.0));
    unittest.expect(o.integerValue!, unittest.equals(42));
    checkGoogleTypeMoney(o.moneyValue!);
    unittest.expect(o.signatureValue!, unittest.isTrue);
    unittest.expect(o.text!, unittest.equals('foo'));
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
  api.GoogleCloudDocumentaiV1beta3DocumentEntityRelation o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityRelation++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityRelation < 3) {
    unittest.expect(o.objectId!, unittest.equals('foo'));
    unittest.expect(o.relation!, unittest.equals('foo'));
    unittest.expect(o.subjectId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentEntityRelation--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentId = 0;
api.GoogleCloudDocumentaiV1beta3DocumentId
buildGoogleCloudDocumentaiV1beta3DocumentId() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentId();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentId++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentId < 3) {
    o.gcsManagedDocId =
        buildGoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId();
    o.revisionRef = buildGoogleCloudDocumentaiV1beta3RevisionRef();
    o.unmanagedDocId =
        buildGoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentId--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentId(
  api.GoogleCloudDocumentaiV1beta3DocumentId o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentId++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentId < 3) {
    checkGoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId(
      o.gcsManagedDocId!,
    );
    checkGoogleCloudDocumentaiV1beta3RevisionRef(o.revisionRef!);
    checkGoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId(
      o.unmanagedDocId!,
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentId--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId = 0;
api.GoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId
buildGoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId <
      3) {
    o.cwDocId = 'foo';
    o.gcsUri = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId(
  api.GoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId <
      3) {
    unittest.expect(o.cwDocId!, unittest.equals('foo'));
    unittest.expect(o.gcsUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId
buildGoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId <
      3) {
    o.docId = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId(
  api.GoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId <
      3) {
    unittest.expect(o.docId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentMetadata = 0;
api.GoogleCloudDocumentaiV1beta3DocumentMetadata
buildGoogleCloudDocumentaiV1beta3DocumentMetadata() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentMetadata < 3) {
    o.datasetType = 'foo';
    o.displayName = 'foo';
    o.documentId = buildGoogleCloudDocumentaiV1beta3DocumentId();
    o.labelingState = 'foo';
    o.pageCount = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentMetadata(
  api.GoogleCloudDocumentaiV1beta3DocumentMetadata o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentMetadata < 3) {
    unittest.expect(o.datasetType!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3DocumentId(o.documentId!);
    unittest.expect(o.labelingState!, unittest.equals('foo'));
    unittest.expect(o.pageCount!, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentMetadata--;
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
  api.GoogleCloudDocumentaiV1beta3DocumentOutputConfig o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfig < 3) {
    checkGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig(
      o.gcsOutputConfig!,
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfig--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig = 0;
api.GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig
buildGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig <
      3) {
    o.fieldMask = 'foo';
    o.gcsUri = 'foo';
    o.shardingConfig =
        buildGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig(
  api.GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig <
      3) {
    unittest.expect(o.fieldMask!, unittest.equals('foo'));
    unittest.expect(o.gcsUri!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig(
      o.shardingConfig!,
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig
buildGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig <
      3) {
    o.pagesOverlap = 42;
    o.pagesPerShard = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig(
  api.GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig
  o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig <
      3) {
    unittest.expect(o.pagesOverlap!, unittest.equals(42));
    unittest.expect(o.pagesPerShard!, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageBlock> buildUnnamed26() =>
    [
      buildGoogleCloudDocumentaiV1beta3DocumentPageBlock(),
      buildGoogleCloudDocumentaiV1beta3DocumentPageBlock(),
    ];

void checkUnnamed26(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageBlock> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageBlock(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageBlock(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode>
buildUnnamed27() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode(),
];

void checkUnnamed27(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
buildUnnamed28() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
];

void checkUnnamed28(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageFormField>
buildUnnamed29() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageFormField(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageFormField(),
];

void checkUnnamed29(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageFormField> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageFormField(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageFormField(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageLine> buildUnnamed30() =>
    [
      buildGoogleCloudDocumentaiV1beta3DocumentPageLine(),
      buildGoogleCloudDocumentaiV1beta3DocumentPageLine(),
    ];

void checkUnnamed30(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageLine> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageLine(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageLine(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph>
buildUnnamed31() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageParagraph(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageParagraph(),
];

void checkUnnamed31(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageParagraph(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageParagraph(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageSymbol>
buildUnnamed32() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageSymbol(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageSymbol(),
];

void checkUnnamed32(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageSymbol> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageSymbol(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageSymbol(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTable> buildUnnamed33() =>
    [
      buildGoogleCloudDocumentaiV1beta3DocumentPageTable(),
      buildGoogleCloudDocumentaiV1beta3DocumentPageTable(),
    ];

void checkUnnamed33(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTable> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageTable(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageTable(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageToken> buildUnnamed34() =>
    [
      buildGoogleCloudDocumentaiV1beta3DocumentPageToken(),
      buildGoogleCloudDocumentaiV1beta3DocumentPageToken(),
    ];

void checkUnnamed34(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageToken> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageToken(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageToken(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix>
buildUnnamed35() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageMatrix(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageMatrix(),
];

void checkUnnamed35(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageMatrix(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageMatrix(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement>
buildUnnamed36() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageVisualElement(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageVisualElement(),
];

void checkUnnamed36(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement> o,
) {
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
    o.blocks = buildUnnamed26();
    o.detectedBarcodes = buildUnnamed27();
    o.detectedLanguages = buildUnnamed28();
    o.dimension = buildGoogleCloudDocumentaiV1beta3DocumentPageDimension();
    o.formFields = buildUnnamed29();
    o.image = buildGoogleCloudDocumentaiV1beta3DocumentPageImage();
    o.imageQualityScores =
        buildGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.lines = buildUnnamed30();
    o.pageNumber = 42;
    o.paragraphs = buildUnnamed31();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
    o.symbols = buildUnnamed32();
    o.tables = buildUnnamed33();
    o.tokens = buildUnnamed34();
    o.transforms = buildUnnamed35();
    o.visualElements = buildUnnamed36();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPage--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPage(
  api.GoogleCloudDocumentaiV1beta3DocumentPage o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPage++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPage < 3) {
    checkUnnamed26(o.blocks!);
    checkUnnamed27(o.detectedBarcodes!);
    checkUnnamed28(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageDimension(o.dimension!);
    checkUnnamed29(o.formFields!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageImage(o.image!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores(
      o.imageQualityScores!,
    );
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    checkUnnamed30(o.lines!);
    unittest.expect(o.pageNumber!, unittest.equals(42));
    checkUnnamed31(o.paragraphs!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
    checkUnnamed32(o.symbols!);
    checkUnnamed33(o.tables!);
    checkUnnamed34(o.tokens!);
    checkUnnamed35(o.transforms!);
    checkUnnamed36(o.visualElements!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPage--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef>
buildUnnamed37() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef(),
];

void checkUnnamed37(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef> o,
) {
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
    o.pageRefs = buildUnnamed37();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageAnchor(
  api.GoogleCloudDocumentaiV1beta3DocumentPageAnchor o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchor < 3) {
    checkUnnamed37(o.pageRefs!);
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
  api.GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef < 3) {
    checkGoogleCloudDocumentaiV1beta3BoundingPoly(o.boundingPoly!);
    unittest.expect(o.confidence!, unittest.equals(42.0));
    unittest.expect(o.layoutId!, unittest.equals('foo'));
    unittest.expect(o.layoutType!, unittest.equals('foo'));
    unittest.expect(o.page!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
buildUnnamed38() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
];

void checkUnnamed38(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o,
) {
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
    o.detectedLanguages = buildUnnamed38();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageBlock(
  api.GoogleCloudDocumentaiV1beta3DocumentPageBlock o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock < 3) {
    checkUnnamed38(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageBlock--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode
buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode < 3) {
    o.barcode = buildGoogleCloudDocumentaiV1beta3Barcode();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode(
  api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode < 3) {
    checkGoogleCloudDocumentaiV1beta3Barcode(o.barcode!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode--;
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
  api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage <
      3) {
    unittest.expect(o.confidence!, unittest.equals(42.0));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
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
  api.GoogleCloudDocumentaiV1beta3DocumentPageDimension o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDimension++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDimension < 3) {
    unittest.expect(o.height!, unittest.equals(42.0));
    unittest.expect(o.unit!, unittest.equals('foo'));
    unittest.expect(o.width!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageDimension--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
buildUnnamed39() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
];

void checkUnnamed39(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
buildUnnamed40() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
];

void checkUnnamed40(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o,
) {
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
    o.nameDetectedLanguages = buildUnnamed39();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
    o.valueDetectedLanguages = buildUnnamed40();
    o.valueType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageFormField(
  api.GoogleCloudDocumentaiV1beta3DocumentPageFormField o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageFormField < 3) {
    unittest.expect(o.correctedKeyText!, unittest.equals('foo'));
    unittest.expect(o.correctedValueText!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.fieldName!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.fieldValue!);
    checkUnnamed39(o.nameDetectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
    checkUnnamed40(o.valueDetectedLanguages!);
    unittest.expect(o.valueType!, unittest.equals('foo'));
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
  api.GoogleCloudDocumentaiV1beta3DocumentPageImage o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImage++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImage < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
    unittest.expect(o.height!, unittest.equals(42));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
    unittest.expect(o.width!, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImage--;
}

core.List<
  api.GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect
>
buildUnnamed41() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect(),
];

void checkUnnamed41(
  core.List<
    api.GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect(
    o[0],
  );
  checkGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect(
    o[1],
  );
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores
buildGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores <
      3) {
    o.detectedDefects = buildUnnamed41();
    o.qualityScore = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores(
  api.GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores <
      3) {
    checkUnnamed41(o.detectedDefects!);
    unittest.expect(o.qualityScore!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect =
    0;
api.GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect
buildGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect <
      3) {
    o.confidence = 42.0;
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect(
  api.GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect
  o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect <
      3) {
    unittest.expect(o.confidence!, unittest.equals(42.0));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect--;
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
  api.GoogleCloudDocumentaiV1beta3DocumentPageLayout o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLayout++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLayout < 3) {
    checkGoogleCloudDocumentaiV1beta3BoundingPoly(o.boundingPoly!);
    unittest.expect(o.confidence!, unittest.equals(42.0));
    unittest.expect(o.orientation!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(o.textAnchor!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLayout--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
buildUnnamed42() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
];

void checkUnnamed42(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o,
) {
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
    o.detectedLanguages = buildUnnamed42();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageLine(
  api.GoogleCloudDocumentaiV1beta3DocumentPageLine o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageLine < 3) {
    checkUnnamed42(o.detectedLanguages!);
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
  api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageMatrix++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageMatrix < 3) {
    unittest.expect(o.cols!, unittest.equals(42));
    unittest.expect(o.data!, unittest.equals('foo'));
    unittest.expect(o.rows!, unittest.equals(42));
    unittest.expect(o.type!, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageMatrix--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
buildUnnamed43() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
];

void checkUnnamed43(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o,
) {
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
    o.detectedLanguages = buildUnnamed43();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageParagraph(
  api.GoogleCloudDocumentaiV1beta3DocumentPageParagraph o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph < 3) {
    checkUnnamed43(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageParagraph--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
buildUnnamed44() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
];

void checkUnnamed44(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o,
) {
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
    o.detectedLanguages = buildUnnamed44();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageSymbol--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageSymbol(
  api.GoogleCloudDocumentaiV1beta3DocumentPageSymbol o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageSymbol++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageSymbol < 3) {
    checkUnnamed44(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageSymbol--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow>
buildUnnamed45() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(),
];

void checkUnnamed45(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
buildUnnamed46() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
];

void checkUnnamed46(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow>
buildUnnamed47() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(),
];

void checkUnnamed47(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow> o,
) {
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
    o.bodyRows = buildUnnamed45();
    o.detectedLanguages = buildUnnamed46();
    o.headerRows = buildUnnamed47();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageTable(
  api.GoogleCloudDocumentaiV1beta3DocumentPageTable o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable < 3) {
    checkUnnamed45(o.bodyRows!);
    checkUnnamed46(o.detectedLanguages!);
    checkUnnamed47(o.headerRows!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTable--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
buildUnnamed48() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
];

void checkUnnamed48(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o,
) {
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
    o.detectedLanguages = buildUnnamed48();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.rowSpan = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell(
  api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell < 3) {
    unittest.expect(o.colSpan!, unittest.equals(42));
    checkUnnamed48(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    unittest.expect(o.rowSpan!, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell>
buildUnnamed49() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell(),
];

void checkUnnamed49(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell> o,
) {
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
    o.cells = buildUnnamed49();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(
  api.GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow < 3) {
    checkUnnamed49(o.cells!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
buildUnnamed50() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
];

void checkUnnamed50(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o,
) {
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
    o.detectedLanguages = buildUnnamed50();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.provenance = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
    o.styleInfo = buildGoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageToken(
  api.GoogleCloudDocumentaiV1beta3DocumentPageToken o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageToken < 3) {
    checkGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak(
      o.detectedBreak!,
    );
    checkUnnamed50(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    checkGoogleCloudDocumentaiV1beta3DocumentProvenance(o.provenance!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo(o.styleInfo!);
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
  api.GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak <
      3) {
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo = 0;
api.GoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo
buildGoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo < 3) {
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
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo(
  api.GoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo < 3) {
    checkGoogleTypeColor(o.backgroundColor!);
    unittest.expect(o.bold!, unittest.isTrue);
    unittest.expect(o.fontSize!, unittest.equals(42));
    unittest.expect(o.fontType!, unittest.equals('foo'));
    unittest.expect(o.fontWeight!, unittest.equals(42));
    unittest.expect(o.handwritten!, unittest.isTrue);
    unittest.expect(o.italic!, unittest.isTrue);
    unittest.expect(o.letterSpacing!, unittest.equals(42.0));
    unittest.expect(o.pixelFontSize!, unittest.equals(42.0));
    unittest.expect(o.smallcaps!, unittest.isTrue);
    unittest.expect(o.strikeout!, unittest.isTrue);
    unittest.expect(o.subscript!, unittest.isTrue);
    unittest.expect(o.superscript!, unittest.isTrue);
    checkGoogleTypeColor(o.textColor!);
    unittest.expect(o.underlined!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>
buildUnnamed51() => [
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
  buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(),
];

void checkUnnamed51(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage> o,
) {
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
    o.detectedLanguages = buildUnnamed51();
    o.layout = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentPageVisualElement(
  api.GoogleCloudDocumentaiV1beta3DocumentPageVisualElement o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement < 3) {
    checkUnnamed51(o.detectedLanguages!);
    checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(o.layout!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentPageVisualElement--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent>
buildUnnamed52() => [
  buildGoogleCloudDocumentaiV1beta3DocumentProvenanceParent(),
  buildGoogleCloudDocumentaiV1beta3DocumentProvenanceParent(),
];

void checkUnnamed52(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent> o,
) {
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
    o.parents = buildUnnamed52();
    o.revision = 42;
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentProvenance(
  api.GoogleCloudDocumentaiV1beta3DocumentProvenance o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenance < 3) {
    unittest.expect(o.id!, unittest.equals(42));
    checkUnnamed52(o.parents!);
    unittest.expect(o.revision!, unittest.equals(42));
    unittest.expect(o.type!, unittest.equals('foo'));
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
  api.GoogleCloudDocumentaiV1beta3DocumentProvenanceParent o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenanceParent++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenanceParent < 3) {
    unittest.expect(o.id!, unittest.equals(42));
    unittest.expect(o.index!, unittest.equals(42));
    unittest.expect(o.revision!, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentProvenanceParent--;
}

core.List<core.int> buildUnnamed53() => [42, 42];

void checkUnnamed53(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.List<core.String> buildUnnamed54() => ['foo', 'foo'];

void checkUnnamed54(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    o.parent = buildUnnamed53();
    o.parentIds = buildUnnamed54();
    o.processor = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevision--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentRevision(
  api.GoogleCloudDocumentaiV1beta3DocumentRevision o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevision++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentRevision < 3) {
    unittest.expect(o.agent!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview(
      o.humanReview!,
    );
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed53(o.parent!);
    checkUnnamed54(o.parentIds!);
    unittest.expect(o.processor!, unittest.equals('foo'));
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
  api.GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview < 3) {
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.stateMessage!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType>
buildUnnamed55() => [
  buildGoogleCloudDocumentaiV1beta3DocumentSchemaEntityType(),
  buildGoogleCloudDocumentaiV1beta3DocumentSchemaEntityType(),
];

void checkUnnamed55(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentSchemaEntityType(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentSchemaEntityType(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentSchema = 0;
api.GoogleCloudDocumentaiV1beta3DocumentSchema
buildGoogleCloudDocumentaiV1beta3DocumentSchema() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentSchema();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchema++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentSchema < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.entityTypes = buildUnnamed55();
    o.metadata = buildGoogleCloudDocumentaiV1beta3DocumentSchemaMetadata();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchema--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentSchema(
  api.GoogleCloudDocumentaiV1beta3DocumentSchema o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchema++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentSchema < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed55(o.entityTypes!);
    checkGoogleCloudDocumentaiV1beta3DocumentSchemaMetadata(o.metadata!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchema--;
}

core.List<core.String> buildUnnamed56() => ['foo', 'foo'];

void checkUnnamed56(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty>
buildUnnamed57() => [
  buildGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty(),
  buildGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty(),
];

void checkUnnamed57(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityType = 0;
api.GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType
buildGoogleCloudDocumentaiV1beta3DocumentSchemaEntityType() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityType++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityType < 3) {
    o.baseTypes = buildUnnamed56();
    o.description = 'foo';
    o.displayName = 'foo';
    o.entityTypeMetadata =
        buildGoogleCloudDocumentaiV1beta3EntityTypeMetadata();
    o.enumValues =
        buildGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues();
    o.name = 'foo';
    o.properties = buildUnnamed57();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityType--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentSchemaEntityType(
  api.GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityType++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityType < 3) {
    checkUnnamed56(o.baseTypes!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3EntityTypeMetadata(o.entityTypeMetadata!);
    checkGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues(
      o.enumValues!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed57(o.properties!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityType--;
}

core.List<core.String> buildUnnamed58() => ['foo', 'foo'];

void checkUnnamed58(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues = 0;
api.GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues
buildGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues() {
  final o =
      api.GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues <
      3) {
    o.values = buildUnnamed58();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues(
  api.GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues <
      3) {
    checkUnnamed58(o.values!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty = 0;
api.GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty
buildGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty <
      3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.method = 'foo';
    o.name = 'foo';
    o.occurrenceType = 'foo';
    o.propertyMetadata = buildGoogleCloudDocumentaiV1beta3PropertyMetadata();
    o.valueType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty(
  api.GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty <
      3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.method!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.occurrenceType!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3PropertyMetadata(o.propertyMetadata!);
    unittest.expect(o.valueType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaMetadata = 0;
api.GoogleCloudDocumentaiV1beta3DocumentSchemaMetadata
buildGoogleCloudDocumentaiV1beta3DocumentSchemaMetadata() {
  final o = api.GoogleCloudDocumentaiV1beta3DocumentSchemaMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaMetadata < 3) {
    o.documentAllowMultipleLabels = true;
    o.documentSplitter = true;
    o.prefixedNamingOnProperties = true;
    o.skipNamingValidation = true;
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentSchemaMetadata(
  api.GoogleCloudDocumentaiV1beta3DocumentSchemaMetadata o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaMetadata < 3) {
    unittest.expect(o.documentAllowMultipleLabels!, unittest.isTrue);
    unittest.expect(o.documentSplitter!, unittest.isTrue);
    unittest.expect(o.prefixedNamingOnProperties!, unittest.isTrue);
    unittest.expect(o.skipNamingValidation!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentSchemaMetadata--;
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
  api.GoogleCloudDocumentaiV1beta3DocumentShardInfo o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentShardInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentShardInfo < 3) {
    unittest.expect(o.shardCount!, unittest.equals('foo'));
    unittest.expect(o.shardIndex!, unittest.equals('foo'));
    unittest.expect(o.textOffset!, unittest.equals('foo'));
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
    o.fontFamily = 'foo';
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
  api.GoogleCloudDocumentaiV1beta3DocumentStyle o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentStyle++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentStyle < 3) {
    checkGoogleTypeColor(o.backgroundColor!);
    checkGoogleTypeColor(o.color!);
    unittest.expect(o.fontFamily!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3DocumentStyleFontSize(o.fontSize!);
    unittest.expect(o.fontWeight!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(o.textAnchor!);
    unittest.expect(o.textDecoration!, unittest.equals('foo'));
    unittest.expect(o.textStyle!, unittest.equals('foo'));
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
  api.GoogleCloudDocumentaiV1beta3DocumentStyleFontSize o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentStyleFontSize++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentStyleFontSize < 3) {
    unittest.expect(o.size!, unittest.equals(42.0));
    unittest.expect(o.unit!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentStyleFontSize--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment>
buildUnnamed59() => [
  buildGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment(),
  buildGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment(),
];

void checkUnnamed59(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment> o,
) {
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
    o.textSegments = buildUnnamed59();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(
  api.GoogleCloudDocumentaiV1beta3DocumentTextAnchor o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchor < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
    checkUnnamed59(o.textSegments!);
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
  api.GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment <
      3) {
    unittest.expect(o.endIndex!, unittest.equals('foo'));
    unittest.expect(o.startIndex!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentProvenance>
buildUnnamed60() => [
  buildGoogleCloudDocumentaiV1beta3DocumentProvenance(),
  buildGoogleCloudDocumentaiV1beta3DocumentProvenance(),
];

void checkUnnamed60(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentProvenance> o,
) {
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
    o.provenance = buildUnnamed60();
    o.textAnchor = buildGoogleCloudDocumentaiV1beta3DocumentTextAnchor();
  }
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3DocumentTextChange(
  api.GoogleCloudDocumentaiV1beta3DocumentTextChange o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange++;
  if (buildCounterGoogleCloudDocumentaiV1beta3DocumentTextChange < 3) {
    unittest.expect(o.changedText!, unittest.equals('foo'));
    checkUnnamed60(o.provenance!);
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
  api.GoogleCloudDocumentaiV1beta3EnableProcessorRequest o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorRequest < 3) {}
  buildCounterGoogleCloudDocumentaiV1beta3EnableProcessorRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3EntityTypeMetadata = 0;
api.GoogleCloudDocumentaiV1beta3EntityTypeMetadata
buildGoogleCloudDocumentaiV1beta3EntityTypeMetadata() {
  final o = api.GoogleCloudDocumentaiV1beta3EntityTypeMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3EntityTypeMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EntityTypeMetadata < 3) {
    o.inactive = true;
  }
  buildCounterGoogleCloudDocumentaiV1beta3EntityTypeMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3EntityTypeMetadata(
  api.GoogleCloudDocumentaiV1beta3EntityTypeMetadata o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3EntityTypeMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EntityTypeMetadata < 3) {
    unittest.expect(o.inactive!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1beta3EntityTypeMetadata--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest = 0;
api.GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest
buildGoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest() {
  final o = api.GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest();
  buildCounterGoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest <
      3) {
    o.evaluationDocuments =
        buildGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig();
  }
  buildCounterGoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest(
  api.GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest <
      3) {
    checkGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig(
      o.evaluationDocuments!,
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest--;
}

core.Map<
  core.String,
  api.GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics
>
buildUnnamed61() => {
  'x': buildGoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics(),
  'y': buildGoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics(),
};

void checkUnnamed61(
  core.Map<
    core.String,
    api.GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics(o['x']!);
  checkGoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics(o['y']!);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3Evaluation = 0;
api.GoogleCloudDocumentaiV1beta3Evaluation
buildGoogleCloudDocumentaiV1beta3Evaluation() {
  final o = api.GoogleCloudDocumentaiV1beta3Evaluation();
  buildCounterGoogleCloudDocumentaiV1beta3Evaluation++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Evaluation < 3) {
    o.allEntitiesMetrics =
        buildGoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics();
    o.createTime = 'foo';
    o.documentCounters = buildGoogleCloudDocumentaiV1beta3EvaluationCounters();
    o.entityMetrics = buildUnnamed61();
    o.kmsKeyName = 'foo';
    o.kmsKeyVersionName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3Evaluation--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3Evaluation(
  api.GoogleCloudDocumentaiV1beta3Evaluation o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3Evaluation++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Evaluation < 3) {
    checkGoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics(
      o.allEntitiesMetrics!,
    );
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3EvaluationCounters(o.documentCounters!);
    checkUnnamed61(o.entityMetrics!);
    unittest.expect(o.kmsKeyName!, unittest.equals('foo'));
    unittest.expect(o.kmsKeyVersionName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3Evaluation--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics = 0;
api.GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics
buildGoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics() {
  final o = api.GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics();
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics <
      3) {
    o.confidenceLevel = 42.0;
    o.metrics = buildGoogleCloudDocumentaiV1beta3EvaluationMetrics();
  }
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics(
  api.GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics <
      3) {
    unittest.expect(o.confidenceLevel!, unittest.equals(42.0));
    checkGoogleCloudDocumentaiV1beta3EvaluationMetrics(o.metrics!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3EvaluationCounters = 0;
api.GoogleCloudDocumentaiV1beta3EvaluationCounters
buildGoogleCloudDocumentaiV1beta3EvaluationCounters() {
  final o = api.GoogleCloudDocumentaiV1beta3EvaluationCounters();
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationCounters++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EvaluationCounters < 3) {
    o.evaluatedDocumentsCount = 42;
    o.failedDocumentsCount = 42;
    o.inputDocumentsCount = 42;
    o.invalidDocumentsCount = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationCounters--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3EvaluationCounters(
  api.GoogleCloudDocumentaiV1beta3EvaluationCounters o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationCounters++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EvaluationCounters < 3) {
    unittest.expect(o.evaluatedDocumentsCount!, unittest.equals(42));
    unittest.expect(o.failedDocumentsCount!, unittest.equals(42));
    unittest.expect(o.inputDocumentsCount!, unittest.equals(42));
    unittest.expect(o.invalidDocumentsCount!, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationCounters--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3EvaluationMetrics = 0;
api.GoogleCloudDocumentaiV1beta3EvaluationMetrics
buildGoogleCloudDocumentaiV1beta3EvaluationMetrics() {
  final o = api.GoogleCloudDocumentaiV1beta3EvaluationMetrics();
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationMetrics++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EvaluationMetrics < 3) {
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
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationMetrics--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3EvaluationMetrics(
  api.GoogleCloudDocumentaiV1beta3EvaluationMetrics o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationMetrics++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EvaluationMetrics < 3) {
    unittest.expect(o.f1Score!, unittest.equals(42.0));
    unittest.expect(o.falseNegativesCount!, unittest.equals(42));
    unittest.expect(o.falsePositivesCount!, unittest.equals(42));
    unittest.expect(o.groundTruthDocumentCount!, unittest.equals(42));
    unittest.expect(o.groundTruthOccurrencesCount!, unittest.equals(42));
    unittest.expect(o.precision!, unittest.equals(42.0));
    unittest.expect(o.predictedDocumentCount!, unittest.equals(42));
    unittest.expect(o.predictedOccurrencesCount!, unittest.equals(42));
    unittest.expect(o.recall!, unittest.equals(42.0));
    unittest.expect(o.totalDocumentsCount!, unittest.equals(42));
    unittest.expect(o.truePositivesCount!, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationMetrics--;
}

core.List<api.GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics>
buildUnnamed62() => [
  buildGoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics(),
  buildGoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics(),
];

void checkUnnamed62(
  core.List<api.GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics(o[0]);
  checkGoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics(o[1]);
}

core.List<api.GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics>
buildUnnamed63() => [
  buildGoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics(),
  buildGoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics(),
];

void checkUnnamed63(
  core.List<api.GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics(o[0]);
  checkGoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics(o[1]);
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics = 0;
api.GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics
buildGoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics() {
  final o = api.GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics();
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics <
      3) {
    o.auprc = 42.0;
    o.auprcExact = 42.0;
    o.confidenceLevelMetrics = buildUnnamed62();
    o.confidenceLevelMetricsExact = buildUnnamed63();
    o.estimatedCalibrationError = 42.0;
    o.estimatedCalibrationErrorExact = 42.0;
    o.metricsType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics(
  api.GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics <
      3) {
    unittest.expect(o.auprc!, unittest.equals(42.0));
    unittest.expect(o.auprcExact!, unittest.equals(42.0));
    checkUnnamed62(o.confidenceLevelMetrics!);
    checkUnnamed63(o.confidenceLevelMetricsExact!);
    unittest.expect(o.estimatedCalibrationError!, unittest.equals(42.0));
    unittest.expect(o.estimatedCalibrationErrorExact!, unittest.equals(42.0));
    unittest.expect(o.metricsType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3EvaluationReference = 0;
api.GoogleCloudDocumentaiV1beta3EvaluationReference
buildGoogleCloudDocumentaiV1beta3EvaluationReference() {
  final o = api.GoogleCloudDocumentaiV1beta3EvaluationReference();
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationReference++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EvaluationReference < 3) {
    o.aggregateMetrics = buildGoogleCloudDocumentaiV1beta3EvaluationMetrics();
    o.aggregateMetricsExact =
        buildGoogleCloudDocumentaiV1beta3EvaluationMetrics();
    o.evaluation = 'foo';
    o.operation = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationReference--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3EvaluationReference(
  api.GoogleCloudDocumentaiV1beta3EvaluationReference o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationReference++;
  if (buildCounterGoogleCloudDocumentaiV1beta3EvaluationReference < 3) {
    checkGoogleCloudDocumentaiV1beta3EvaluationMetrics(o.aggregateMetrics!);
    checkGoogleCloudDocumentaiV1beta3EvaluationMetrics(
      o.aggregateMetricsExact!,
    );
    unittest.expect(o.evaluation!, unittest.equals('foo'));
    unittest.expect(o.operation!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3EvaluationReference--;
}

core.List<api.GoogleCloudDocumentaiV1beta3ProcessorType> buildUnnamed64() => [
  buildGoogleCloudDocumentaiV1beta3ProcessorType(),
  buildGoogleCloudDocumentaiV1beta3ProcessorType(),
];

void checkUnnamed64(
  core.List<api.GoogleCloudDocumentaiV1beta3ProcessorType> o,
) {
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
    o.processorTypes = buildUnnamed64();
  }
  buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse(
  api.GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse < 3) {
    checkUnnamed64(o.processorTypes!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3FieldExtractionMetadata = 0;
api.GoogleCloudDocumentaiV1beta3FieldExtractionMetadata
buildGoogleCloudDocumentaiV1beta3FieldExtractionMetadata() {
  final o = api.GoogleCloudDocumentaiV1beta3FieldExtractionMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3FieldExtractionMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3FieldExtractionMetadata < 3) {
    o.summaryOptions = buildGoogleCloudDocumentaiV1beta3SummaryOptions();
  }
  buildCounterGoogleCloudDocumentaiV1beta3FieldExtractionMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3FieldExtractionMetadata(
  api.GoogleCloudDocumentaiV1beta3FieldExtractionMetadata o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3FieldExtractionMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3FieldExtractionMetadata < 3) {
    checkGoogleCloudDocumentaiV1beta3SummaryOptions(o.summaryOptions!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3FieldExtractionMetadata--;
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
  api.GoogleCloudDocumentaiV1beta3GcsDocument o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocument++;
  if (buildCounterGoogleCloudDocumentaiV1beta3GcsDocument < 3) {
    unittest.expect(o.gcsUri!, unittest.equals('foo'));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocument--;
}

core.List<api.GoogleCloudDocumentaiV1beta3GcsDocument> buildUnnamed65() => [
  buildGoogleCloudDocumentaiV1beta3GcsDocument(),
  buildGoogleCloudDocumentaiV1beta3GcsDocument(),
];

void checkUnnamed65(core.List<api.GoogleCloudDocumentaiV1beta3GcsDocument> o) {
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
    o.documents = buildUnnamed65();
  }
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3GcsDocuments(
  api.GoogleCloudDocumentaiV1beta3GcsDocuments o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments++;
  if (buildCounterGoogleCloudDocumentaiV1beta3GcsDocuments < 3) {
    checkUnnamed65(o.documents!);
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
  api.GoogleCloudDocumentaiV1beta3GcsPrefix o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3GcsPrefix++;
  if (buildCounterGoogleCloudDocumentaiV1beta3GcsPrefix < 3) {
    unittest.expect(o.gcsUriPrefix!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3GcsPrefix--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3GetDocumentResponse = 0;
api.GoogleCloudDocumentaiV1beta3GetDocumentResponse
buildGoogleCloudDocumentaiV1beta3GetDocumentResponse() {
  final o = api.GoogleCloudDocumentaiV1beta3GetDocumentResponse();
  buildCounterGoogleCloudDocumentaiV1beta3GetDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3GetDocumentResponse < 3) {
    o.document = buildGoogleCloudDocumentaiV1beta3Document();
  }
  buildCounterGoogleCloudDocumentaiV1beta3GetDocumentResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3GetDocumentResponse(
  api.GoogleCloudDocumentaiV1beta3GetDocumentResponse o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3GetDocumentResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3GetDocumentResponse < 3) {
    checkGoogleCloudDocumentaiV1beta3Document(o.document!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3GetDocumentResponse--;
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
  api.GoogleCloudDocumentaiV1beta3HumanReviewStatus o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus++;
  if (buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus < 3) {
    unittest.expect(o.humanReviewOperation!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.stateMessage!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3HumanReviewStatus--;
}

core.List<
  api.GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig
>
buildUnnamed66() => [
  buildGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig(),
  buildGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig(),
];

void checkUnnamed66(
  core.List<
    api.GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig(
    o[0],
  );
  checkGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig(
    o[1],
  );
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequest = 0;
api.GoogleCloudDocumentaiV1beta3ImportDocumentsRequest
buildGoogleCloudDocumentaiV1beta3ImportDocumentsRequest() {
  final o = api.GoogleCloudDocumentaiV1beta3ImportDocumentsRequest();
  buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequest < 3) {
    o.batchDocumentsImportConfigs = buildUnnamed66();
  }
  buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ImportDocumentsRequest(
  api.GoogleCloudDocumentaiV1beta3ImportDocumentsRequest o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequest < 3) {
    checkUnnamed66(o.batchDocumentsImportConfigs!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequest--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig =
    0;
api.GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig
buildGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig() {
  final o =
      api.GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig();
  buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig <
      3) {
    o.autoSplitConfig =
        buildGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig();
    o.batchInputConfig =
        buildGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig();
    o.datasetSplit = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig(
  api.GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig
  o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig <
      3) {
    checkGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig(
      o.autoSplitConfig!,
    );
    checkGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig(
      o.batchInputConfig!,
    );
    unittest.expect(o.datasetSplit!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig =
    0;
api.GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig
buildGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig() {
  final o =
      api.GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig();
  buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig <
      3) {
    o.trainingSplitRatio = 42.0;
  }
  buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig(
  api.GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig
  o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig <
      3) {
    unittest.expect(o.trainingSplitRatio!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest =
    0;
api.GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest
buildGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest() {
  final o = api.GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest();
  buildCounterGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest <
      3) {
    o.externalProcessorVersionSource =
        buildGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource();
    o.processorVersionSource = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest(
  api.GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest <
      3) {
    checkGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource(
      o.externalProcessorVersionSource!,
    );
    unittest.expect(o.processorVersionSource!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource =
    0;
api.GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource
buildGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource() {
  final o =
      api.GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource();
  buildCounterGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource <
      3) {
    o.processorVersion = 'foo';
    o.serviceEndpoint = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource(
  api.GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource
  o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource <
      3) {
    unittest.expect(o.processorVersion!, unittest.equals('foo'));
    unittest.expect(o.serviceEndpoint!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ListDocumentsRequest = 0;
api.GoogleCloudDocumentaiV1beta3ListDocumentsRequest
buildGoogleCloudDocumentaiV1beta3ListDocumentsRequest() {
  final o = api.GoogleCloudDocumentaiV1beta3ListDocumentsRequest();
  buildCounterGoogleCloudDocumentaiV1beta3ListDocumentsRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ListDocumentsRequest < 3) {
    o.filter = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.returnTotalSize = true;
    o.skip = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3ListDocumentsRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ListDocumentsRequest(
  api.GoogleCloudDocumentaiV1beta3ListDocumentsRequest o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ListDocumentsRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ListDocumentsRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    unittest.expect(o.returnTotalSize!, unittest.isTrue);
    unittest.expect(o.skip!, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta3ListDocumentsRequest--;
}

core.List<api.GoogleCloudDocumentaiV1beta3DocumentMetadata> buildUnnamed67() =>
    [
      buildGoogleCloudDocumentaiV1beta3DocumentMetadata(),
      buildGoogleCloudDocumentaiV1beta3DocumentMetadata(),
    ];

void checkUnnamed67(
  core.List<api.GoogleCloudDocumentaiV1beta3DocumentMetadata> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3DocumentMetadata(o[0]);
  checkGoogleCloudDocumentaiV1beta3DocumentMetadata(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ListDocumentsResponse = 0;
api.GoogleCloudDocumentaiV1beta3ListDocumentsResponse
buildGoogleCloudDocumentaiV1beta3ListDocumentsResponse() {
  final o = api.GoogleCloudDocumentaiV1beta3ListDocumentsResponse();
  buildCounterGoogleCloudDocumentaiV1beta3ListDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ListDocumentsResponse < 3) {
    o.documentMetadata = buildUnnamed67();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3ListDocumentsResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ListDocumentsResponse(
  api.GoogleCloudDocumentaiV1beta3ListDocumentsResponse o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ListDocumentsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ListDocumentsResponse < 3) {
    checkUnnamed67(o.documentMetadata!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    unittest.expect(o.totalSize!, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta3ListDocumentsResponse--;
}

core.List<api.GoogleCloudDocumentaiV1beta3Evaluation> buildUnnamed68() => [
  buildGoogleCloudDocumentaiV1beta3Evaluation(),
  buildGoogleCloudDocumentaiV1beta3Evaluation(),
];

void checkUnnamed68(core.List<api.GoogleCloudDocumentaiV1beta3Evaluation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3Evaluation(o[0]);
  checkGoogleCloudDocumentaiV1beta3Evaluation(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ListEvaluationsResponse = 0;
api.GoogleCloudDocumentaiV1beta3ListEvaluationsResponse
buildGoogleCloudDocumentaiV1beta3ListEvaluationsResponse() {
  final o = api.GoogleCloudDocumentaiV1beta3ListEvaluationsResponse();
  buildCounterGoogleCloudDocumentaiV1beta3ListEvaluationsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ListEvaluationsResponse < 3) {
    o.evaluations = buildUnnamed68();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ListEvaluationsResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ListEvaluationsResponse(
  api.GoogleCloudDocumentaiV1beta3ListEvaluationsResponse o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ListEvaluationsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ListEvaluationsResponse < 3) {
    checkUnnamed68(o.evaluations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3ListEvaluationsResponse--;
}

core.List<api.GoogleCloudDocumentaiV1beta3ProcessorType> buildUnnamed69() => [
  buildGoogleCloudDocumentaiV1beta3ProcessorType(),
  buildGoogleCloudDocumentaiV1beta3ProcessorType(),
];

void checkUnnamed69(
  core.List<api.GoogleCloudDocumentaiV1beta3ProcessorType> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3ProcessorType(o[0]);
  checkGoogleCloudDocumentaiV1beta3ProcessorType(o[1]);
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ListProcessorTypesResponse = 0;
api.GoogleCloudDocumentaiV1beta3ListProcessorTypesResponse
buildGoogleCloudDocumentaiV1beta3ListProcessorTypesResponse() {
  final o = api.GoogleCloudDocumentaiV1beta3ListProcessorTypesResponse();
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorTypesResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ListProcessorTypesResponse < 3) {
    o.nextPageToken = 'foo';
    o.processorTypes = buildUnnamed69();
  }
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorTypesResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ListProcessorTypesResponse(
  api.GoogleCloudDocumentaiV1beta3ListProcessorTypesResponse o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorTypesResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ListProcessorTypesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed69(o.processorTypes!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorTypesResponse--;
}

core.List<api.GoogleCloudDocumentaiV1beta3ProcessorVersion> buildUnnamed70() =>
    [
      buildGoogleCloudDocumentaiV1beta3ProcessorVersion(),
      buildGoogleCloudDocumentaiV1beta3ProcessorVersion(),
    ];

void checkUnnamed70(
  core.List<api.GoogleCloudDocumentaiV1beta3ProcessorVersion> o,
) {
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
    o.processorVersions = buildUnnamed70();
  }
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse(
  api.GoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed70(o.processorVersions!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse--;
}

core.List<api.GoogleCloudDocumentaiV1beta3Processor> buildUnnamed71() => [
  buildGoogleCloudDocumentaiV1beta3Processor(),
  buildGoogleCloudDocumentaiV1beta3Processor(),
];

void checkUnnamed71(core.List<api.GoogleCloudDocumentaiV1beta3Processor> o) {
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
    o.processors = buildUnnamed71();
  }
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ListProcessorsResponse(
  api.GoogleCloudDocumentaiV1beta3ListProcessorsResponse o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ListProcessorsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed71(o.processors!);
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
  api.GoogleCloudDocumentaiV1beta3NormalizedVertex o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3NormalizedVertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta3NormalizedVertex < 3) {
    unittest.expect(o.x!, unittest.equals(42.0));
    unittest.expect(o.y!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDocumentaiV1beta3NormalizedVertex--;
}

core.List<core.String> buildUnnamed72() => ['foo', 'foo'];

void checkUnnamed72(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDocumentaiV1beta3OcrConfig = 0;
api.GoogleCloudDocumentaiV1beta3OcrConfig
buildGoogleCloudDocumentaiV1beta3OcrConfig() {
  final o = api.GoogleCloudDocumentaiV1beta3OcrConfig();
  buildCounterGoogleCloudDocumentaiV1beta3OcrConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3OcrConfig < 3) {
    o.advancedOcrOptions = buildUnnamed72();
    o.computeStyleInfo = true;
    o.disableCharacterBoxesDetection = true;
    o.enableImageQualityScores = true;
    o.enableNativePdfParsing = true;
    o.enableSymbol = true;
    o.hints = buildGoogleCloudDocumentaiV1beta3OcrConfigHints();
    o.premiumFeatures =
        buildGoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures();
  }
  buildCounterGoogleCloudDocumentaiV1beta3OcrConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3OcrConfig(
  api.GoogleCloudDocumentaiV1beta3OcrConfig o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3OcrConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3OcrConfig < 3) {
    checkUnnamed72(o.advancedOcrOptions!);
    unittest.expect(o.computeStyleInfo!, unittest.isTrue);
    unittest.expect(o.disableCharacterBoxesDetection!, unittest.isTrue);
    unittest.expect(o.enableImageQualityScores!, unittest.isTrue);
    unittest.expect(o.enableNativePdfParsing!, unittest.isTrue);
    unittest.expect(o.enableSymbol!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta3OcrConfigHints(o.hints!);
    checkGoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures(
      o.premiumFeatures!,
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3OcrConfig--;
}

core.List<core.String> buildUnnamed73() => ['foo', 'foo'];

void checkUnnamed73(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDocumentaiV1beta3OcrConfigHints = 0;
api.GoogleCloudDocumentaiV1beta3OcrConfigHints
buildGoogleCloudDocumentaiV1beta3OcrConfigHints() {
  final o = api.GoogleCloudDocumentaiV1beta3OcrConfigHints();
  buildCounterGoogleCloudDocumentaiV1beta3OcrConfigHints++;
  if (buildCounterGoogleCloudDocumentaiV1beta3OcrConfigHints < 3) {
    o.languageHints = buildUnnamed73();
  }
  buildCounterGoogleCloudDocumentaiV1beta3OcrConfigHints--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3OcrConfigHints(
  api.GoogleCloudDocumentaiV1beta3OcrConfigHints o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3OcrConfigHints++;
  if (buildCounterGoogleCloudDocumentaiV1beta3OcrConfigHints < 3) {
    checkUnnamed73(o.languageHints!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3OcrConfigHints--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures = 0;
api.GoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures
buildGoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures() {
  final o = api.GoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures();
  buildCounterGoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures++;
  if (buildCounterGoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures < 3) {
    o.computeStyleInfo = true;
    o.enableMathOcr = true;
    o.enableSelectionMarkDetection = true;
  }
  buildCounterGoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures(
  api.GoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures++;
  if (buildCounterGoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures < 3) {
    unittest.expect(o.computeStyleInfo!, unittest.isTrue);
    unittest.expect(o.enableMathOcr!, unittest.isTrue);
    unittest.expect(o.enableSelectionMarkDetection!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ProcessOptions = 0;
api.GoogleCloudDocumentaiV1beta3ProcessOptions
buildGoogleCloudDocumentaiV1beta3ProcessOptions() {
  final o = api.GoogleCloudDocumentaiV1beta3ProcessOptions();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessOptions++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessOptions < 3) {
    o.fromEnd = 42;
    o.fromStart = 42;
    o.individualPageSelector =
        buildGoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector();
    o.layoutConfig =
        buildGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig();
    o.ocrConfig = buildGoogleCloudDocumentaiV1beta3OcrConfig();
    o.schemaOverride = buildGoogleCloudDocumentaiV1beta3DocumentSchema();
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessOptions--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ProcessOptions(
  api.GoogleCloudDocumentaiV1beta3ProcessOptions o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessOptions++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessOptions < 3) {
    unittest.expect(o.fromEnd!, unittest.equals(42));
    unittest.expect(o.fromStart!, unittest.equals(42));
    checkGoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector(
      o.individualPageSelector!,
    );
    checkGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig(
      o.layoutConfig!,
    );
    checkGoogleCloudDocumentaiV1beta3OcrConfig(o.ocrConfig!);
    checkGoogleCloudDocumentaiV1beta3DocumentSchema(o.schemaOverride!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessOptions--;
}

core.List<core.int> buildUnnamed74() => [42, 42];

void checkUnnamed74(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector =
    0;
api.GoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector
buildGoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector() {
  final o =
      api.GoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector <
      3) {
    o.pages = buildUnnamed74();
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector(
  api.GoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector <
      3) {
    checkUnnamed74(o.pages!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig = 0;
api.GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig
buildGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig() {
  final o = api.GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig < 3) {
    o.chunkingConfig =
        buildGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig();
    o.enableImageAnnotation = true;
    o.enableImageExtraction = true;
    o.enableLlmLayoutParsing = true;
    o.enableTableAnnotation = true;
    o.returnBoundingBoxes = true;
    o.returnImages = true;
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig(
  api.GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig < 3) {
    checkGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig(
      o.chunkingConfig!,
    );
    unittest.expect(o.enableImageAnnotation!, unittest.isTrue);
    unittest.expect(o.enableImageExtraction!, unittest.isTrue);
    unittest.expect(o.enableLlmLayoutParsing!, unittest.isTrue);
    unittest.expect(o.enableTableAnnotation!, unittest.isTrue);
    unittest.expect(o.returnBoundingBoxes!, unittest.isTrue);
    unittest.expect(o.returnImages!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig =
    0;
api.GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig
buildGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig() {
  final o =
      api.GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig <
      3) {
    o.breakpointPercentileThreshold = 42;
    o.chunkSize = 42;
    o.includeAncestorHeadings = true;
    o.semanticChunkingGroupSize = true;
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig(
  api.GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig <
      3) {
    unittest.expect(o.breakpointPercentileThreshold!, unittest.equals(42));
    unittest.expect(o.chunkSize!, unittest.equals(42));
    unittest.expect(o.includeAncestorHeadings!, unittest.isTrue);
    unittest.expect(o.semanticChunkingGroupSize!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig--;
}

core.Map<core.String, core.String> buildUnnamed75() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed75(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest = 0;
api.GoogleCloudDocumentaiV1beta3ProcessRequest
buildGoogleCloudDocumentaiV1beta3ProcessRequest() {
  final o = api.GoogleCloudDocumentaiV1beta3ProcessRequest();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest < 3) {
    o.document = buildGoogleCloudDocumentaiV1beta3Document();
    o.fieldMask = 'foo';
    o.gcsDocument = buildGoogleCloudDocumentaiV1beta3GcsDocument();
    o.imagelessMode = true;
    o.inlineDocument = buildGoogleCloudDocumentaiV1beta3Document();
    o.labels = buildUnnamed75();
    o.processOptions = buildGoogleCloudDocumentaiV1beta3ProcessOptions();
    o.rawDocument = buildGoogleCloudDocumentaiV1beta3RawDocument();
    o.skipHumanReview = true;
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ProcessRequest(
  api.GoogleCloudDocumentaiV1beta3ProcessRequest o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessRequest < 3) {
    checkGoogleCloudDocumentaiV1beta3Document(o.document!);
    unittest.expect(o.fieldMask!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3GcsDocument(o.gcsDocument!);
    unittest.expect(o.imagelessMode!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta3Document(o.inlineDocument!);
    checkUnnamed75(o.labels!);
    checkGoogleCloudDocumentaiV1beta3ProcessOptions(o.processOptions!);
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
  api.GoogleCloudDocumentaiV1beta3ProcessResponse o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessResponse++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessResponse < 3) {
    checkGoogleCloudDocumentaiV1beta3Document(o.document!);
    unittest.expect(o.humanReviewOperation!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3HumanReviewStatus(o.humanReviewStatus!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessResponse--;
}

core.List<api.GoogleCloudDocumentaiV1beta3ProcessorVersionAlias>
buildUnnamed76() => [
  buildGoogleCloudDocumentaiV1beta3ProcessorVersionAlias(),
  buildGoogleCloudDocumentaiV1beta3ProcessorVersionAlias(),
];

void checkUnnamed76(
  core.List<api.GoogleCloudDocumentaiV1beta3ProcessorVersionAlias> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3ProcessorVersionAlias(o[0]);
  checkGoogleCloudDocumentaiV1beta3ProcessorVersionAlias(o[1]);
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
    o.processorVersionAliases = buildUnnamed76();
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.state = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3Processor--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3Processor(
  api.GoogleCloudDocumentaiV1beta3Processor o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3Processor++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Processor < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.defaultProcessorVersion!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.kmsKeyName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.processEndpoint!, unittest.equals('foo'));
    checkUnnamed76(o.processorVersionAliases!);
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3Processor--;
}

core.List<api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo>
buildUnnamed77() => [
  buildGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo(),
  buildGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo(),
];

void checkUnnamed77(
  core.List<api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo(o[0]);
  checkGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo(o[1]);
}

core.List<core.String> buildUnnamed78() => ['foo', 'foo'];

void checkUnnamed78(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ProcessorType = 0;
api.GoogleCloudDocumentaiV1beta3ProcessorType
buildGoogleCloudDocumentaiV1beta3ProcessorType() {
  final o = api.GoogleCloudDocumentaiV1beta3ProcessorType();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorType++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorType < 3) {
    o.allowCreation = true;
    o.availableLocations = buildUnnamed77();
    o.category = 'foo';
    o.launchStage = 'foo';
    o.name = 'foo';
    o.sampleDocumentUris = buildUnnamed78();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorType--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ProcessorType(
  api.GoogleCloudDocumentaiV1beta3ProcessorType o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorType++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorType < 3) {
    unittest.expect(o.allowCreation!, unittest.isTrue);
    checkUnnamed77(o.availableLocations!);
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.launchStage!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed78(o.sampleDocumentUris!);
    unittest.expect(o.type!, unittest.equals('foo'));
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
  api.GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo < 3) {
    unittest.expect(o.locationId!, unittest.equals('foo'));
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
    o.deprecationInfo =
        buildGoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo();
    o.displayName = 'foo';
    o.documentSchema = buildGoogleCloudDocumentaiV1beta3DocumentSchema();
    o.genAiModelInfo =
        buildGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo();
    o.googleManaged = true;
    o.kmsKeyName = 'foo';
    o.kmsKeyVersionName = 'foo';
    o.latestEvaluation = buildGoogleCloudDocumentaiV1beta3EvaluationReference();
    o.modelType = 'foo';
    o.name = 'foo';
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.state = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersion--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ProcessorVersion(
  api.GoogleCloudDocumentaiV1beta3ProcessorVersion o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersion++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersion < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo(
      o.deprecationInfo!,
    );
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3DocumentSchema(o.documentSchema!);
    checkGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo(
      o.genAiModelInfo!,
    );
    unittest.expect(o.googleManaged!, unittest.isTrue);
    unittest.expect(o.kmsKeyName!, unittest.equals('foo'));
    unittest.expect(o.kmsKeyVersionName!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3EvaluationReference(o.latestEvaluation!);
    unittest.expect(o.modelType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersion--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionAlias = 0;
api.GoogleCloudDocumentaiV1beta3ProcessorVersionAlias
buildGoogleCloudDocumentaiV1beta3ProcessorVersionAlias() {
  final o = api.GoogleCloudDocumentaiV1beta3ProcessorVersionAlias();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionAlias++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionAlias < 3) {
    o.alias = 'foo';
    o.processorVersion = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionAlias--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ProcessorVersionAlias(
  api.GoogleCloudDocumentaiV1beta3ProcessorVersionAlias o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionAlias++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionAlias < 3) {
    unittest.expect(o.alias!, unittest.equals('foo'));
    unittest.expect(o.processorVersion!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionAlias--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo = 0;
api.GoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo
buildGoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo() {
  final o = api.GoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo <
      3) {
    o.deprecationTime = 'foo';
    o.replacementProcessorVersion = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo(
  api.GoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo <
      3) {
    unittest.expect(o.deprecationTime!, unittest.equals('foo'));
    unittest.expect(o.replacementProcessorVersion!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo = 0;
api.GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo
buildGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo() {
  final o = api.GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo <
      3) {
    o.customGenAiModelInfo =
        buildGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo();
    o.foundationGenAiModelInfo =
        buildGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo();
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo(
  api.GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo <
      3) {
    checkGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo(
      o.customGenAiModelInfo!,
    );
    checkGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo(
      o.foundationGenAiModelInfo!,
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo =
    0;
api.GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo
buildGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo() {
  final o =
      api.GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo <
      3) {
    o.baseProcessorVersionId = 'foo';
    o.customModelType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo(
  api.GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo
  o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo <
      3) {
    unittest.expect(o.baseProcessorVersionId!, unittest.equals('foo'));
    unittest.expect(o.customModelType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo =
    0;
api.GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo
buildGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo() {
  final o =
      api.GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo();
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo <
      3) {
    o.finetuningAllowed = true;
    o.minTrainLabeledDocuments = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo(
  api.GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo
  o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo <
      3) {
    unittest.expect(o.finetuningAllowed!, unittest.isTrue);
    unittest.expect(o.minTrainLabeledDocuments!, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3PropertyMetadata = 0;
api.GoogleCloudDocumentaiV1beta3PropertyMetadata
buildGoogleCloudDocumentaiV1beta3PropertyMetadata() {
  final o = api.GoogleCloudDocumentaiV1beta3PropertyMetadata();
  buildCounterGoogleCloudDocumentaiV1beta3PropertyMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3PropertyMetadata < 3) {
    o.fieldExtractionMetadata =
        buildGoogleCloudDocumentaiV1beta3FieldExtractionMetadata();
    o.inactive = true;
  }
  buildCounterGoogleCloudDocumentaiV1beta3PropertyMetadata--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3PropertyMetadata(
  api.GoogleCloudDocumentaiV1beta3PropertyMetadata o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3PropertyMetadata++;
  if (buildCounterGoogleCloudDocumentaiV1beta3PropertyMetadata < 3) {
    checkGoogleCloudDocumentaiV1beta3FieldExtractionMetadata(
      o.fieldExtractionMetadata!,
    );
    unittest.expect(o.inactive!, unittest.isTrue);
  }
  buildCounterGoogleCloudDocumentaiV1beta3PropertyMetadata--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3RawDocument = 0;
api.GoogleCloudDocumentaiV1beta3RawDocument
buildGoogleCloudDocumentaiV1beta3RawDocument() {
  final o = api.GoogleCloudDocumentaiV1beta3RawDocument();
  buildCounterGoogleCloudDocumentaiV1beta3RawDocument++;
  if (buildCounterGoogleCloudDocumentaiV1beta3RawDocument < 3) {
    o.content = 'foo';
    o.displayName = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3RawDocument--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3RawDocument(
  api.GoogleCloudDocumentaiV1beta3RawDocument o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3RawDocument++;
  if (buildCounterGoogleCloudDocumentaiV1beta3RawDocument < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
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
    o.documentSchema = buildGoogleCloudDocumentaiV1beta3DocumentSchema();
    o.enableSchemaValidation = true;
    o.inlineDocument = buildGoogleCloudDocumentaiV1beta3Document();
    o.priority = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3ReviewDocumentRequest(
  api.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest < 3) {
    checkGoogleCloudDocumentaiV1beta3Document(o.document!);
    checkGoogleCloudDocumentaiV1beta3DocumentSchema(o.documentSchema!);
    unittest.expect(o.enableSchemaValidation!, unittest.isTrue);
    checkGoogleCloudDocumentaiV1beta3Document(o.inlineDocument!);
    unittest.expect(o.priority!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3ReviewDocumentRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3RevisionRef = 0;
api.GoogleCloudDocumentaiV1beta3RevisionRef
buildGoogleCloudDocumentaiV1beta3RevisionRef() {
  final o = api.GoogleCloudDocumentaiV1beta3RevisionRef();
  buildCounterGoogleCloudDocumentaiV1beta3RevisionRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta3RevisionRef < 3) {
    o.latestProcessorVersion = 'foo';
    o.revisionCase = 'foo';
    o.revisionId = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3RevisionRef--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3RevisionRef(
  api.GoogleCloudDocumentaiV1beta3RevisionRef o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3RevisionRef++;
  if (buildCounterGoogleCloudDocumentaiV1beta3RevisionRef < 3) {
    unittest.expect(o.latestProcessorVersion!, unittest.equals('foo'));
    unittest.expect(o.revisionCase!, unittest.equals('foo'));
    unittest.expect(o.revisionId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3RevisionRef--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest = 0;
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
  api.GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest <
      3) {
    unittest.expect(o.defaultProcessorVersion!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3SummaryOptions = 0;
api.GoogleCloudDocumentaiV1beta3SummaryOptions
buildGoogleCloudDocumentaiV1beta3SummaryOptions() {
  final o = api.GoogleCloudDocumentaiV1beta3SummaryOptions();
  buildCounterGoogleCloudDocumentaiV1beta3SummaryOptions++;
  if (buildCounterGoogleCloudDocumentaiV1beta3SummaryOptions < 3) {
    o.format = 'foo';
    o.length = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3SummaryOptions--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3SummaryOptions(
  api.GoogleCloudDocumentaiV1beta3SummaryOptions o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3SummaryOptions++;
  if (buildCounterGoogleCloudDocumentaiV1beta3SummaryOptions < 3) {
    unittest.expect(o.format!, unittest.equals('foo'));
    unittest.expect(o.length!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3SummaryOptions--;
}

core.int buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest =
    0;
api.GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest
buildGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest() {
  final o = api.GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest();
  buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest <
      3) {
    o.baseProcessorVersion = 'foo';
    o.customDocumentExtractionOptions =
        buildGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions();
    o.documentSchema = buildGoogleCloudDocumentaiV1beta3DocumentSchema();
    o.foundationModelTuningOptions =
        buildGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions();
    o.inputData =
        buildGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData();
    o.processorVersion = buildGoogleCloudDocumentaiV1beta3ProcessorVersion();
  }
  buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest(
  api.GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest++;
  if (buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest <
      3) {
    unittest.expect(o.baseProcessorVersion!, unittest.equals('foo'));
    checkGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions(
      o.customDocumentExtractionOptions!,
    );
    checkGoogleCloudDocumentaiV1beta3DocumentSchema(o.documentSchema!);
    checkGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions(
      o.foundationModelTuningOptions!,
    );
    checkGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData(
      o.inputData!,
    );
    checkGoogleCloudDocumentaiV1beta3ProcessorVersion(o.processorVersion!);
  }
  buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions =
    0;
api.GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions
buildGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions() {
  final o =
      api.GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions();
  buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions++;
  if (buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions <
      3) {
    o.trainingMethod = 'foo';
  }
  buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions(
  api.GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions
  o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions++;
  if (buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions <
      3) {
    unittest.expect(o.trainingMethod!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions =
    0;
api.GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions
buildGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions() {
  final o =
      api.GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions();
  buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions++;
  if (buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions <
      3) {
    o.learningRateMultiplier = 42.0;
    o.trainSteps = 42;
  }
  buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions--;
  return o;
}

void
checkGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions(
  api.GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions
  o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions++;
  if (buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions <
      3) {
    unittest.expect(o.learningRateMultiplier!, unittest.equals(42.0));
    unittest.expect(o.trainSteps!, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions--;
}

core.int
buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData =
    0;
api.GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData
buildGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData() {
  final o =
      api.GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData();
  buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData++;
  if (buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData <
      3) {
    o.testDocuments =
        buildGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig();
    o.trainingDocuments =
        buildGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig();
  }
  buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData--;
  return o;
}

void checkGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData(
  api.GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData++;
  if (buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData <
      3) {
    checkGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig(
      o.testDocuments!,
    );
    checkGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig(
      o.trainingDocuments!,
    );
  }
  buildCounterGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData--;
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
  api.GoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest o,
) {
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
  api.GoogleCloudDocumentaiV1beta3Vertex o,
) {
  buildCounterGoogleCloudDocumentaiV1beta3Vertex++;
  if (buildCounterGoogleCloudDocumentaiV1beta3Vertex < 3) {
    unittest.expect(o.x!, unittest.equals(42));
    unittest.expect(o.y!, unittest.equals(42));
  }
  buildCounterGoogleCloudDocumentaiV1beta3Vertex--;
}

core.List<api.GoogleCloudLocationLocation> buildUnnamed79() => [
  buildGoogleCloudLocationLocation(),
  buildGoogleCloudLocationLocation(),
];

void checkUnnamed79(core.List<api.GoogleCloudLocationLocation> o) {
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
    o.locations = buildUnnamed79();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
  return o;
}

void checkGoogleCloudLocationListLocationsResponse(
  api.GoogleCloudLocationListLocationsResponse o,
) {
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    checkUnnamed79(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed80() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed80(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed81() => {
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

void checkUnnamed81(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudLocationLocation = 0;
api.GoogleCloudLocationLocation buildGoogleCloudLocationLocation() {
  final o = api.GoogleCloudLocationLocation();
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed80();
    o.locationId = 'foo';
    o.metadata = buildUnnamed81();
    o.name = 'foo';
  }
  buildCounterGoogleCloudLocationLocation--;
  return o;
}

void checkGoogleCloudLocationLocation(api.GoogleCloudLocationLocation o) {
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed80(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed81(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudLocationLocation--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed82() => [
  buildGoogleLongrunningOperation(),
  buildGoogleLongrunningOperation(),
];

void checkUnnamed82(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed82();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
  api.GoogleLongrunningListOperationsResponse o,
) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed82(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed83() => {
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

void checkUnnamed83(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed84() => {
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

void checkUnnamed84(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed83();
    o.name = 'foo';
    o.response = buildUnnamed84();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed83(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed84(o.response!);
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

core.Map<core.String, core.Object?> buildUnnamed85() => {
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

void checkUnnamed85(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed86() => [
  buildUnnamed85(),
  buildUnnamed85(),
];

void checkUnnamed86(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed85(o[0]);
  checkUnnamed85(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed86();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed86(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
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
    unittest.expect(o.alpha!, unittest.equals(42.0));
    unittest.expect(o.blue!, unittest.equals(42.0));
    unittest.expect(o.green!, unittest.equals(42.0));
    unittest.expect(o.red!, unittest.equals(42.0));
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
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.year!, unittest.equals(42));
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
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.hours!, unittest.equals(42));
    unittest.expect(o.minutes!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.seconds!, unittest.equals(42));
    checkGoogleTypeTimeZone(o.timeZone!);
    unittest.expect(o.utcOffset!, unittest.equals('foo'));
    unittest.expect(o.year!, unittest.equals(42));
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
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.units!, unittest.equals('foo'));
  }
  buildCounterGoogleTypeMoney--;
}

core.List<core.String> buildUnnamed87() => ['foo', 'foo'];

void checkUnnamed87(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed88() => ['foo', 'foo'];

void checkUnnamed88(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleTypePostalAddress = 0;
api.GoogleTypePostalAddress buildGoogleTypePostalAddress() {
  final o = api.GoogleTypePostalAddress();
  buildCounterGoogleTypePostalAddress++;
  if (buildCounterGoogleTypePostalAddress < 3) {
    o.addressLines = buildUnnamed87();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed88();
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
    checkUnnamed87(o.addressLines!);
    unittest.expect(o.administrativeArea!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.locality!, unittest.equals('foo'));
    unittest.expect(o.organization!, unittest.equals('foo'));
    unittest.expect(o.postalCode!, unittest.equals('foo'));
    checkUnnamed88(o.recipients!);
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    unittest.expect(o.revision!, unittest.equals(42));
    unittest.expect(o.sortingCode!, unittest.equals('foo'));
    unittest.expect(o.sublocality!, unittest.equals('foo'));
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
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterGoogleTypeTimeZone--;
}

core.List<core.String> buildUnnamed89() => ['foo', 'foo'];

void checkUnnamed89(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3Barcode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3Barcode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3Barcode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3Barcode(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3BatchDatasetDocuments',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3BatchDatasetDocuments();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3BatchDatasetDocuments.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3BatchDatasetDocuments(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3BatchProcessRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3BatchProcessRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3BatchProcessRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3BoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3BoundingPoly.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3BoundingPoly(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3Dataset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3Dataset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3Dataset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3Dataset(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DatasetSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DatasetSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DatasetSchema.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3DatasetSchema(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DisableProcessorRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DisableProcessorRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DisableProcessorRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DisableProcessorRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3Document', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3Document();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3Document.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3Document(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentAnnotations',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentAnnotations();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3DocumentAnnotations.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentAnnotations(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentBlobAsset',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentBlobAsset();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3DocumentBlobAsset.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentBlobAsset(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentChunkedDocument',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocument();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentChunkedDocument.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocument(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentDocumentLayout',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayout();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentDocumentLayout.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayout(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentEntity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
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
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentEntityRelation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentEntityRelation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentEntityRelation.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentEntityRelation(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentId.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3DocumentId(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3DocumentMetadata(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentOutputConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentOutputConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentOutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentOutputConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3DocumentPage(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageAnchor',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentPageAnchor();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3DocumentPageAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageAnchor(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageBlock',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentPageBlock();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3DocumentPageBlock.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageBlock(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageDimension',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentPageDimension();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentPageDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageDimension(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageFormField',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentPageFormField();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentPageFormField.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageFormField(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageImage',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentPageImage();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3DocumentPageImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageImage(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageLayout',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentPageLayout();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageLayout(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageLine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentPageLine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentPageLine.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3DocumentPageLine(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageMatrix',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentPageMatrix();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3DocumentPageMatrix.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageMatrix(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageParagraph',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentPageParagraph();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentPageParagraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageParagraph(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageSymbol',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentPageSymbol();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3DocumentPageSymbol.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageSymbol(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageTable',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentPageTable();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3DocumentPageTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageTable(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableCell(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageTableTableRow(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageToken',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentPageToken();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3DocumentPageToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageToken(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentPageVisualElement',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentPageVisualElement();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentPageVisualElement.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentPageVisualElement(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentProvenance',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentProvenance();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentProvenance(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentProvenanceParent',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentProvenanceParent();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentProvenanceParent.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentProvenanceParent(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentRevision', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentRevision();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentRevision.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3DocumentRevision(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentSchema.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3DocumentSchema(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentSchemaEntityType();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentSchemaEntityType(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentSchemaMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentSchemaMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentSchemaMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentSchemaMetadata(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentShardInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentShardInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3DocumentShardInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentShardInfo(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3DocumentStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3DocumentStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3DocumentStyle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3DocumentStyle(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentStyleFontSize',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentStyleFontSize();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentStyleFontSize.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentStyleFontSize(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentTextAnchor',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentTextAnchor();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3DocumentTextAnchor.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentTextAnchor(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3DocumentTextChange',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3DocumentTextChange();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3DocumentTextChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3DocumentTextChange(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3EnableProcessorRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3EnableProcessorRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3EnableProcessorRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3EnableProcessorRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3EntityTypeMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3EntityTypeMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3EntityTypeMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3EntityTypeMetadata(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3Evaluation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3Evaluation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3Evaluation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3Evaluation(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3EvaluationCounters',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3EvaluationCounters();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3EvaluationCounters.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3EvaluationCounters(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3EvaluationMetrics',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3EvaluationMetrics();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3EvaluationMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3EvaluationMetrics(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3EvaluationReference',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3EvaluationReference();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3EvaluationReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3EvaluationReference(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3FieldExtractionMetadata',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3FieldExtractionMetadata();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3FieldExtractionMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3FieldExtractionMetadata(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3GcsDocument', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3GcsDocument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3GcsDocument.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3GcsDocument(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3GcsDocuments', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3GcsDocuments();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3GcsDocuments.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3GcsDocuments(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3GcsPrefix', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3GcsPrefix();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3GcsPrefix.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3GcsPrefix(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3GetDocumentResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3GetDocumentResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3GetDocumentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3GetDocumentResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3HumanReviewStatus',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3HumanReviewStatus();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDocumentaiV1beta3HumanReviewStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3HumanReviewStatus(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ImportDocumentsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3ImportDocumentsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ImportDocumentsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ImportDocumentsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ListDocumentsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3ListDocumentsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ListDocumentsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ListDocumentsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ListDocumentsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3ListDocumentsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ListDocumentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ListDocumentsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ListEvaluationsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3ListEvaluationsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ListEvaluationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ListEvaluationsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ListProcessorTypesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3ListProcessorTypesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ListProcessorTypesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ListProcessorTypesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ListProcessorsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3ListProcessorsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ListProcessorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ListProcessorsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3NormalizedVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3NormalizedVertex.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3NormalizedVertex(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3OcrConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3OcrConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3OcrConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3OcrConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3OcrConfigHints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3OcrConfigHints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3OcrConfigHints.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3OcrConfigHints(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3ProcessOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3ProcessOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3ProcessOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3ProcessOptions(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3ProcessRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3ProcessRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3ProcessRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3ProcessRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3ProcessResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3ProcessResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3ProcessResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3ProcessResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3Processor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3Processor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3Processor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3Processor(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3ProcessorType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3ProcessorType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3ProcessorType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3ProcessorType(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3ProcessorVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3ProcessorVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3ProcessorVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3ProcessorVersion(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ProcessorVersionAlias',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3ProcessorVersionAlias();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ProcessorVersionAlias.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ProcessorVersionAlias(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3PropertyMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3PropertyMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3PropertyMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3PropertyMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3RawDocument', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3RawDocument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3RawDocument.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3RawDocument(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3ReviewDocumentRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDocumentaiV1beta3ReviewDocumentRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3ReviewDocumentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3ReviewDocumentRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3RevisionRef', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3RevisionRef();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3RevisionRef.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3RevisionRef(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3SummaryOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3SummaryOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3SummaryOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3SummaryOptions(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDocumentaiV1beta3Vertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDocumentaiV1beta3Vertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDocumentaiV1beta3Vertex.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDocumentaiV1beta3Vertex(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudLocationListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudLocationLocation(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeColor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeColor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeColor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeColor(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeDate(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDateTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDateTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDateTime.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeDateTime(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeMoney', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeMoney.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeMoney(od);
    });
  });

  unittest.group('obj-schema-GoogleTypePostalAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypePostalAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypePostalAddress.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypePostalAddress(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeTimeZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeTimeZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeTimeZone.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeTimeZone(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--fetchProcessorTypes', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations;
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(
            buildGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.fetchProcessorTypes(
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse(
        response as api.GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleCloudLocationLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudLocationLocation(
        response as api.GoogleCloudLocationLocation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed89();
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
            queryMap['extraLocationTypes']!,
            unittest.equals(arg_extraLocationTypes),
          );
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
          final resp = convert.json.encode(
            buildGoogleCloudLocationListLocationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudLocationListLocationsResponse(
        response as api.GoogleCloudLocationListLocationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.operations;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.operations;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.operations;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(
            buildGoogleLongrunningListOperationsResponse(),
          );
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
      checkGoogleLongrunningListOperationsResponse(
        response as api.GoogleLongrunningListOperationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsProcessorTypesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processorTypes;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(
            buildGoogleCloudDocumentaiV1beta3ProcessorType(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1beta3ProcessorType(
        response as api.GoogleCloudDocumentaiV1beta3ProcessorType,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processorTypes;
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDocumentaiV1beta3ListProcessorTypesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDocumentaiV1beta3ListProcessorTypesResponse(
        response as api.GoogleCloudDocumentaiV1beta3ListProcessorTypesResponse,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDocumentaiV1beta3BatchProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDocumentaiV1beta3BatchProcessRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchProcess(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_request = buildGoogleCloudDocumentaiV1beta3Processor();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDocumentaiV1beta3Processor.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDocumentaiV1beta3Processor(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(
            buildGoogleCloudDocumentaiV1beta3Processor(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudDocumentaiV1beta3Processor(
        response as api.GoogleCloudDocumentaiV1beta3Processor,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--disable', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3DisableProcessorRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDocumentaiV1beta3DisableProcessorRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDocumentaiV1beta3DisableProcessorRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.disable(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--enable', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3EnableProcessorRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDocumentaiV1beta3EnableProcessorRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDocumentaiV1beta3EnableProcessorRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.enable(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(
            buildGoogleCloudDocumentaiV1beta3Processor(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1beta3Processor(
        response as api.GoogleCloudDocumentaiV1beta3Processor,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDocumentaiV1beta3ListProcessorsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDocumentaiV1beta3ListProcessorsResponse(
        response as api.GoogleCloudDocumentaiV1beta3ListProcessorsResponse,
      );
    });

    unittest.test('method--process', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_request = buildGoogleCloudDocumentaiV1beta3ProcessRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDocumentaiV1beta3ProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDocumentaiV1beta3ProcessRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(
            buildGoogleCloudDocumentaiV1beta3ProcessResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.process(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudDocumentaiV1beta3ProcessResponse(
        response as api.GoogleCloudDocumentaiV1beta3ProcessResponse,
      );
    });

    unittest.test('method--setDefaultProcessorVersion', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest();
      final arg_processor = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest(
            obj,
          );

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setDefaultProcessorVersion(
        arg_request,
        arg_processor,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--updateDataset', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors;
      final arg_request = buildGoogleCloudDocumentaiV1beta3Dataset();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDocumentaiV1beta3Dataset.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDocumentaiV1beta3Dataset(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateDataset(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsProcessorsDatasetResource', () {
    unittest.test('method--batchDeleteDocuments', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors.dataset;
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest();
      final arg_dataset = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchDeleteDocuments(
        arg_request,
        arg_dataset,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--getDatasetSchema', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors.dataset;
      final arg_name = 'foo';
      final arg_visibleFieldsOnly = true;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
            queryMap['visibleFieldsOnly']!.first,
            unittest.equals('$arg_visibleFieldsOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDocumentaiV1beta3DatasetSchema(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getDatasetSchema(
        arg_name,
        visibleFieldsOnly: arg_visibleFieldsOnly,
        $fields: arg_$fields,
      );
      checkGoogleCloudDocumentaiV1beta3DatasetSchema(
        response as api.GoogleCloudDocumentaiV1beta3DatasetSchema,
      );
    });

    unittest.test('method--getDocument', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors.dataset;
      final arg_dataset = 'foo';
      final arg_documentId_gcsManagedDocId_cwDocId = 'foo';
      final arg_documentId_gcsManagedDocId_gcsUri = 'foo';
      final arg_documentId_revisionRef_latestProcessorVersion = 'foo';
      final arg_documentId_revisionRef_revisionCase = 'foo';
      final arg_documentId_revisionRef_revisionId = 'foo';
      final arg_documentId_unmanagedDocId_docId = 'foo';
      final arg_pageRange_end = 42;
      final arg_pageRange_start = 42;
      final arg_readMask = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
            queryMap['documentId.gcsManagedDocId.cwDocId']!.first,
            unittest.equals(arg_documentId_gcsManagedDocId_cwDocId),
          );
          unittest.expect(
            queryMap['documentId.gcsManagedDocId.gcsUri']!.first,
            unittest.equals(arg_documentId_gcsManagedDocId_gcsUri),
          );
          unittest.expect(
            queryMap['documentId.revisionRef.latestProcessorVersion']!.first,
            unittest.equals(arg_documentId_revisionRef_latestProcessorVersion),
          );
          unittest.expect(
            queryMap['documentId.revisionRef.revisionCase']!.first,
            unittest.equals(arg_documentId_revisionRef_revisionCase),
          );
          unittest.expect(
            queryMap['documentId.revisionRef.revisionId']!.first,
            unittest.equals(arg_documentId_revisionRef_revisionId),
          );
          unittest.expect(
            queryMap['documentId.unmanagedDocId.docId']!.first,
            unittest.equals(arg_documentId_unmanagedDocId_docId),
          );
          unittest.expect(
            core.int.parse(queryMap['pageRange.end']!.first),
            unittest.equals(arg_pageRange_end),
          );
          unittest.expect(
            core.int.parse(queryMap['pageRange.start']!.first),
            unittest.equals(arg_pageRange_start),
          );
          unittest.expect(
            queryMap['readMask']!.first,
            unittest.equals(arg_readMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDocumentaiV1beta3GetDocumentResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getDocument(
        arg_dataset,
        documentId_gcsManagedDocId_cwDocId:
            arg_documentId_gcsManagedDocId_cwDocId,
        documentId_gcsManagedDocId_gcsUri:
            arg_documentId_gcsManagedDocId_gcsUri,
        documentId_revisionRef_latestProcessorVersion:
            arg_documentId_revisionRef_latestProcessorVersion,
        documentId_revisionRef_revisionCase:
            arg_documentId_revisionRef_revisionCase,
        documentId_revisionRef_revisionId:
            arg_documentId_revisionRef_revisionId,
        documentId_unmanagedDocId_docId: arg_documentId_unmanagedDocId_docId,
        pageRange_end: arg_pageRange_end,
        pageRange_start: arg_pageRange_start,
        readMask: arg_readMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudDocumentaiV1beta3GetDocumentResponse(
        response as api.GoogleCloudDocumentaiV1beta3GetDocumentResponse,
      );
    });

    unittest.test('method--importDocuments', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors.dataset;
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3ImportDocumentsRequest();
      final arg_dataset = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDocumentaiV1beta3ImportDocumentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDocumentaiV1beta3ImportDocumentsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.importDocuments(
        arg_request,
        arg_dataset,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--listDocuments', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors.dataset;
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3ListDocumentsRequest();
      final arg_dataset = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDocumentaiV1beta3ListDocumentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDocumentaiV1beta3ListDocumentsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(
            buildGoogleCloudDocumentaiV1beta3ListDocumentsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listDocuments(
        arg_request,
        arg_dataset,
        $fields: arg_$fields,
      );
      checkGoogleCloudDocumentaiV1beta3ListDocumentsResponse(
        response as api.GoogleCloudDocumentaiV1beta3ListDocumentsResponse,
      );
    });

    unittest.test('method--updateDatasetSchema', () async {
      final mock = HttpServerMock();
      final res = api.DocumentApi(mock).projects.locations.processors.dataset;
      final arg_request = buildGoogleCloudDocumentaiV1beta3DatasetSchema();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDocumentaiV1beta3DatasetSchema.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDocumentaiV1beta3DatasetSchema(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDocumentaiV1beta3DatasetSchema(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateDatasetSchema(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudDocumentaiV1beta3DatasetSchema(
        response as api.GoogleCloudDocumentaiV1beta3DatasetSchema,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsProcessorsHumanReviewConfigResource',
    () {
      unittest.test('method--reviewDocument', () async {
        final mock = HttpServerMock();
        final res =
            api.DocumentApi(
              mock,
            ).projects.locations.processors.humanReviewConfig;
        final arg_request =
            buildGoogleCloudDocumentaiV1beta3ReviewDocumentRequest();
        final arg_humanReviewConfig = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api
                .GoogleCloudDocumentaiV1beta3ReviewDocumentRequest.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkGoogleCloudDocumentaiV1beta3ReviewDocumentRequest(obj);

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
              path.substring(pathOffset, pathOffset + 8),
              unittest.equals('v1beta3/'),
            );
            pathOffset += 8;
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
            final resp = convert.json.encode(buildGoogleLongrunningOperation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.reviewDocument(
          arg_request,
          arg_humanReviewConfig,
          $fields: arg_$fields,
        );
        checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsProcessorsProcessorVersionsResource', () {
    unittest.test('method--batchProcess', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3BatchProcessRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDocumentaiV1beta3BatchProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDocumentaiV1beta3BatchProcessRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchProcess(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--deploy', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.deploy(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--evaluateProcessorVersion', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest();
      final arg_processorVersion = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.evaluateProcessorVersion(
        arg_request,
        arg_processorVersion,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(
            buildGoogleCloudDocumentaiV1beta3ProcessorVersion(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDocumentaiV1beta3ProcessorVersion(
        response as api.GoogleCloudDocumentaiV1beta3ProcessorVersion,
      );
    });

    unittest.test('method--importProcessorVersion', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.importProcessorVersion(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse(
        response
            as api.GoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse,
      );
    });

    unittest.test('method--process', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      final arg_request = buildGoogleCloudDocumentaiV1beta3ProcessRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDocumentaiV1beta3ProcessRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDocumentaiV1beta3ProcessRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(
            buildGoogleCloudDocumentaiV1beta3ProcessResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.process(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudDocumentaiV1beta3ProcessResponse(
        response as api.GoogleCloudDocumentaiV1beta3ProcessResponse,
      );
    });

    unittest.test('method--train', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.train(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--undeploy', () async {
      final mock = HttpServerMock();
      final res =
          api.DocumentApi(mock).projects.locations.processors.processorVersions;
      final arg_request =
          buildGoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta3/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.undeploy(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsProcessorsProcessorVersionsEvaluationsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.DocumentApi(
              mock,
            ).projects.locations.processors.processorVersions.evaluations;
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
              path.substring(pathOffset, pathOffset + 8),
              unittest.equals('v1beta3/'),
            );
            pathOffset += 8;
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
            final resp = convert.json.encode(
              buildGoogleCloudDocumentaiV1beta3Evaluation(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleCloudDocumentaiV1beta3Evaluation(
          response as api.GoogleCloudDocumentaiV1beta3Evaluation,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.DocumentApi(
              mock,
            ).projects.locations.processors.processorVersions.evaluations;
        final arg_parent = 'foo';
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
              path.substring(pathOffset, pathOffset + 8),
              unittest.equals('v1beta3/'),
            );
            pathOffset += 8;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildGoogleCloudDocumentaiV1beta3ListEvaluationsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkGoogleCloudDocumentaiV1beta3ListEvaluationsResponse(
          response as api.GoogleCloudDocumentaiV1beta3ListEvaluationsResponse,
        );
      });
    },
  );
}
