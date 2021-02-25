// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis_beta/datalabeling/v1beta1.dart' as api;

import '../test_shared.dart';

core.List<api.GoogleRpcStatus> buildUnnamed7341() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7341(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int buildCounterGoogleCloudDatalabelingV1alpha1CreateInstructionMetadata =
    0;
api.GoogleCloudDatalabelingV1alpha1CreateInstructionMetadata
    buildGoogleCloudDatalabelingV1alpha1CreateInstructionMetadata() {
  var o = api.GoogleCloudDatalabelingV1alpha1CreateInstructionMetadata();
  buildCounterGoogleCloudDatalabelingV1alpha1CreateInstructionMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1CreateInstructionMetadata <
      3) {
    o.createTime = 'foo';
    o.instruction = 'foo';
    o.partialFailures = buildUnnamed7341();
  }
  buildCounterGoogleCloudDatalabelingV1alpha1CreateInstructionMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1CreateInstructionMetadata(
    api.GoogleCloudDatalabelingV1alpha1CreateInstructionMetadata o) {
  buildCounterGoogleCloudDatalabelingV1alpha1CreateInstructionMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1CreateInstructionMetadata <
      3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.instruction, unittest.equals('foo'));
    checkUnnamed7341(o.partialFailures);
  }
  buildCounterGoogleCloudDatalabelingV1alpha1CreateInstructionMetadata--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7342() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7342(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int
    buildCounterGoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata = 0;
api.GoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata
    buildGoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata() {
  var o = api.GoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata <
      3) {
    o.annotatedDataset = 'foo';
    o.createTime = 'foo';
    o.dataset = 'foo';
    o.partialFailures = buildUnnamed7342();
  }
  buildCounterGoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata(
    api.GoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata <
      3) {
    unittest.expect(o.annotatedDataset, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
    checkUnnamed7342(o.partialFailures);
  }
  buildCounterGoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1alpha1ExportDataOperationResponse = 0;
api.GoogleCloudDatalabelingV1alpha1ExportDataOperationResponse
    buildGoogleCloudDatalabelingV1alpha1ExportDataOperationResponse() {
  var o = api.GoogleCloudDatalabelingV1alpha1ExportDataOperationResponse();
  buildCounterGoogleCloudDatalabelingV1alpha1ExportDataOperationResponse++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1ExportDataOperationResponse <
      3) {
    o.annotatedDataset = 'foo';
    o.dataset = 'foo';
    o.exportCount = 42;
    o.labelStats = buildGoogleCloudDatalabelingV1alpha1LabelStats();
    o.outputConfig = buildGoogleCloudDatalabelingV1alpha1OutputConfig();
    o.totalCount = 42;
  }
  buildCounterGoogleCloudDatalabelingV1alpha1ExportDataOperationResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1ExportDataOperationResponse(
    api.GoogleCloudDatalabelingV1alpha1ExportDataOperationResponse o) {
  buildCounterGoogleCloudDatalabelingV1alpha1ExportDataOperationResponse++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1ExportDataOperationResponse <
      3) {
    unittest.expect(o.annotatedDataset, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
    unittest.expect(o.exportCount, unittest.equals(42));
    checkGoogleCloudDatalabelingV1alpha1LabelStats(
        o.labelStats as api.GoogleCloudDatalabelingV1alpha1LabelStats);
    checkGoogleCloudDatalabelingV1alpha1OutputConfig(
        o.outputConfig as api.GoogleCloudDatalabelingV1alpha1OutputConfig);
    unittest.expect(o.totalCount, unittest.equals(42));
  }
  buildCounterGoogleCloudDatalabelingV1alpha1ExportDataOperationResponse--;
}

core.int buildCounterGoogleCloudDatalabelingV1alpha1GcsDestination = 0;
api.GoogleCloudDatalabelingV1alpha1GcsDestination
    buildGoogleCloudDatalabelingV1alpha1GcsDestination() {
  var o = api.GoogleCloudDatalabelingV1alpha1GcsDestination();
  buildCounterGoogleCloudDatalabelingV1alpha1GcsDestination++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1GcsDestination < 3) {
    o.mimeType = 'foo';
    o.outputUri = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1alpha1GcsDestination--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1GcsDestination(
    api.GoogleCloudDatalabelingV1alpha1GcsDestination o) {
  buildCounterGoogleCloudDatalabelingV1alpha1GcsDestination++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1GcsDestination < 3) {
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.outputUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1alpha1GcsDestination--;
}

core.int buildCounterGoogleCloudDatalabelingV1alpha1GcsFolderDestination = 0;
api.GoogleCloudDatalabelingV1alpha1GcsFolderDestination
    buildGoogleCloudDatalabelingV1alpha1GcsFolderDestination() {
  var o = api.GoogleCloudDatalabelingV1alpha1GcsFolderDestination();
  buildCounterGoogleCloudDatalabelingV1alpha1GcsFolderDestination++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1GcsFolderDestination < 3) {
    o.outputFolderUri = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1alpha1GcsFolderDestination--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1GcsFolderDestination(
    api.GoogleCloudDatalabelingV1alpha1GcsFolderDestination o) {
  buildCounterGoogleCloudDatalabelingV1alpha1GcsFolderDestination++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1GcsFolderDestination < 3) {
    unittest.expect(o.outputFolderUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1alpha1GcsFolderDestination--;
}

core.List<core.String> buildUnnamed7343() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7343(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig = 0;
api.GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig
    buildGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig() {
  var o = api.GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig();
  buildCounterGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig < 3) {
    o.annotatedDatasetDescription = 'foo';
    o.annotatedDatasetDisplayName = 'foo';
    o.contributorEmails = buildUnnamed7343();
    o.instruction = 'foo';
    o.labelGroup = 'foo';
    o.languageCode = 'foo';
    o.questionDuration = 'foo';
    o.replicaCount = 42;
    o.userEmailAddress = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig(
    api.GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig o) {
  buildCounterGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig < 3) {
    unittest.expect(o.annotatedDatasetDescription, unittest.equals('foo'));
    unittest.expect(o.annotatedDatasetDisplayName, unittest.equals('foo'));
    checkUnnamed7343(o.contributorEmails);
    unittest.expect(o.instruction, unittest.equals('foo'));
    unittest.expect(o.labelGroup, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.questionDuration, unittest.equals('foo'));
    unittest.expect(o.replicaCount, unittest.equals(42));
    unittest.expect(o.userEmailAddress, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7344() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7344(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int
    buildCounterGoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata = 0;
api.GoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata
    buildGoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata() {
  var o = api.GoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata <
      3) {
    o.createTime = 'foo';
    o.dataset = 'foo';
    o.partialFailures = buildUnnamed7344();
  }
  buildCounterGoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata(
    api.GoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata <
      3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
    checkUnnamed7344(o.partialFailures);
  }
  buildCounterGoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1alpha1ImportDataOperationResponse = 0;
api.GoogleCloudDatalabelingV1alpha1ImportDataOperationResponse
    buildGoogleCloudDatalabelingV1alpha1ImportDataOperationResponse() {
  var o = api.GoogleCloudDatalabelingV1alpha1ImportDataOperationResponse();
  buildCounterGoogleCloudDatalabelingV1alpha1ImportDataOperationResponse++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1ImportDataOperationResponse <
      3) {
    o.dataset = 'foo';
    o.importCount = 42;
    o.totalCount = 42;
  }
  buildCounterGoogleCloudDatalabelingV1alpha1ImportDataOperationResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1ImportDataOperationResponse(
    api.GoogleCloudDatalabelingV1alpha1ImportDataOperationResponse o) {
  buildCounterGoogleCloudDatalabelingV1alpha1ImportDataOperationResponse++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1ImportDataOperationResponse <
      3) {
    unittest.expect(o.dataset, unittest.equals('foo'));
    unittest.expect(o.importCount, unittest.equals(42));
    unittest.expect(o.totalCount, unittest.equals(42));
  }
  buildCounterGoogleCloudDatalabelingV1alpha1ImportDataOperationResponse--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata
    buildGoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata(
    api.GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata
    buildGoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata(
    api.GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata
    buildGoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata(
    api.GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata
    buildGoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata(
    api.GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata
    buildGoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata() {
  var o =
      api.GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata(
    api.GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata
    buildGoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata(
    api.GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7345() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7345(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int buildCounterGoogleCloudDatalabelingV1alpha1LabelOperationMetadata = 0;
api.GoogleCloudDatalabelingV1alpha1LabelOperationMetadata
    buildGoogleCloudDatalabelingV1alpha1LabelOperationMetadata() {
  var o = api.GoogleCloudDatalabelingV1alpha1LabelOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1alpha1LabelOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelOperationMetadata < 3) {
    o.annotatedDataset = 'foo';
    o.createTime = 'foo';
    o.dataset = 'foo';
    o.imageBoundingBoxDetails =
        buildGoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata();
    o.imageBoundingPolyDetails =
        buildGoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata();
    o.imageClassificationDetails =
        buildGoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata();
    o.imageOrientedBoundingBoxDetails =
        buildGoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata();
    o.imagePolylineDetails =
        buildGoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata();
    o.imageSegmentationDetails =
        buildGoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata();
    o.partialFailures = buildUnnamed7345();
    o.progressPercent = 42;
    o.textClassificationDetails =
        buildGoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata();
    o.textEntityExtractionDetails =
        buildGoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata();
    o.videoClassificationDetails =
        buildGoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata();
    o.videoEventDetails =
        buildGoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata();
    o.videoObjectDetectionDetails =
        buildGoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata();
    o.videoObjectTrackingDetails =
        buildGoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata();
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1LabelOperationMetadata(
    api.GoogleCloudDatalabelingV1alpha1LabelOperationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1alpha1LabelOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelOperationMetadata < 3) {
    unittest.expect(o.annotatedDataset, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata(
        o.imageBoundingBoxDetails as api
            .GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata);
    checkGoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata(
        o.imageBoundingPolyDetails as api
            .GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata);
    checkGoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata(
        o.imageClassificationDetails as api
            .GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata);
    checkGoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata(
        o.imageOrientedBoundingBoxDetails as api
            .GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata);
    checkGoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata(
        o.imagePolylineDetails as api
            .GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata);
    checkGoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata(
        o.imageSegmentationDetails as api
            .GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata);
    checkUnnamed7345(o.partialFailures);
    unittest.expect(o.progressPercent, unittest.equals(42));
    checkGoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata(
        o.textClassificationDetails as api
            .GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata);
    checkGoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata(
        o.textEntityExtractionDetails as api
            .GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata);
    checkGoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata(
        o.videoClassificationDetails as api
            .GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata);
    checkGoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata(o
            .videoEventDetails
        as api.GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata);
    checkGoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata(
        o.videoObjectDetectionDetails as api
            .GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata);
    checkGoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata(
        o.videoObjectTrackingDetails as api
            .GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata);
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelOperationMetadata--;
}

core.Map<core.String, core.String> buildUnnamed7346() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7346(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatalabelingV1alpha1LabelStats = 0;
api.GoogleCloudDatalabelingV1alpha1LabelStats
    buildGoogleCloudDatalabelingV1alpha1LabelStats() {
  var o = api.GoogleCloudDatalabelingV1alpha1LabelStats();
  buildCounterGoogleCloudDatalabelingV1alpha1LabelStats++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelStats < 3) {
    o.exampleCount = buildUnnamed7346();
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelStats--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1LabelStats(
    api.GoogleCloudDatalabelingV1alpha1LabelStats o) {
  buildCounterGoogleCloudDatalabelingV1alpha1LabelStats++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelStats < 3) {
    checkUnnamed7346(o.exampleCount);
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelStats--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata
    buildGoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata(
    api.GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata
    buildGoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata(
    api.GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata
    buildGoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata(
    api.GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata
    buildGoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata() {
  var o = api.GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata(
    api.GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata
    buildGoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata(
    api.GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata
    buildGoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata(
    api.GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1alpha1OutputConfig = 0;
api.GoogleCloudDatalabelingV1alpha1OutputConfig
    buildGoogleCloudDatalabelingV1alpha1OutputConfig() {
  var o = api.GoogleCloudDatalabelingV1alpha1OutputConfig();
  buildCounterGoogleCloudDatalabelingV1alpha1OutputConfig++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1OutputConfig < 3) {
    o.gcsDestination = buildGoogleCloudDatalabelingV1alpha1GcsDestination();
    o.gcsFolderDestination =
        buildGoogleCloudDatalabelingV1alpha1GcsFolderDestination();
  }
  buildCounterGoogleCloudDatalabelingV1alpha1OutputConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1alpha1OutputConfig(
    api.GoogleCloudDatalabelingV1alpha1OutputConfig o) {
  buildCounterGoogleCloudDatalabelingV1alpha1OutputConfig++;
  if (buildCounterGoogleCloudDatalabelingV1alpha1OutputConfig < 3) {
    checkGoogleCloudDatalabelingV1alpha1GcsDestination(
        o.gcsDestination as api.GoogleCloudDatalabelingV1alpha1GcsDestination);
    checkGoogleCloudDatalabelingV1alpha1GcsFolderDestination(
        o.gcsFolderDestination
            as api.GoogleCloudDatalabelingV1alpha1GcsFolderDestination);
  }
  buildCounterGoogleCloudDatalabelingV1alpha1OutputConfig--;
}

core.List<core.String> buildUnnamed7347() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7347(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDataset = 0;
api.GoogleCloudDatalabelingV1beta1AnnotatedDataset
    buildGoogleCloudDatalabelingV1beta1AnnotatedDataset() {
  var o = api.GoogleCloudDatalabelingV1beta1AnnotatedDataset();
  buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDataset++;
  if (buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDataset < 3) {
    o.annotationSource = 'foo';
    o.annotationType = 'foo';
    o.blockingResources = buildUnnamed7347();
    o.completedExampleCount = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.exampleCount = 'foo';
    o.labelStats = buildGoogleCloudDatalabelingV1beta1LabelStats();
    o.metadata = buildGoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata();
    o.name = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDataset--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1AnnotatedDataset(
    api.GoogleCloudDatalabelingV1beta1AnnotatedDataset o) {
  buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDataset++;
  if (buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDataset < 3) {
    unittest.expect(o.annotationSource, unittest.equals('foo'));
    unittest.expect(o.annotationType, unittest.equals('foo'));
    checkUnnamed7347(o.blockingResources);
    unittest.expect(o.completedExampleCount, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.exampleCount, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1beta1LabelStats(
        o.labelStats as api.GoogleCloudDatalabelingV1beta1LabelStats);
    checkGoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata(o.metadata
        as api.GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDataset--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata = 0;
api.GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata
    buildGoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata() {
  var o = api.GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata < 3) {
    o.boundingPolyConfig =
        buildGoogleCloudDatalabelingV1beta1BoundingPolyConfig();
    o.eventConfig = buildGoogleCloudDatalabelingV1beta1EventConfig();
    o.humanAnnotationConfig =
        buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
    o.imageClassificationConfig =
        buildGoogleCloudDatalabelingV1beta1ImageClassificationConfig();
    o.objectDetectionConfig =
        buildGoogleCloudDatalabelingV1beta1ObjectDetectionConfig();
    o.objectTrackingConfig =
        buildGoogleCloudDatalabelingV1beta1ObjectTrackingConfig();
    o.polylineConfig = buildGoogleCloudDatalabelingV1beta1PolylineConfig();
    o.segmentationConfig =
        buildGoogleCloudDatalabelingV1beta1SegmentationConfig();
    o.textClassificationConfig =
        buildGoogleCloudDatalabelingV1beta1TextClassificationConfig();
    o.textEntityExtractionConfig =
        buildGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig();
    o.videoClassificationConfig =
        buildGoogleCloudDatalabelingV1beta1VideoClassificationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata(
    api.GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata o) {
  buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata < 3) {
    checkGoogleCloudDatalabelingV1beta1BoundingPolyConfig(o.boundingPolyConfig
        as api.GoogleCloudDatalabelingV1beta1BoundingPolyConfig);
    checkGoogleCloudDatalabelingV1beta1EventConfig(
        o.eventConfig as api.GoogleCloudDatalabelingV1beta1EventConfig);
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(
        o.humanAnnotationConfig
            as api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig);
    checkGoogleCloudDatalabelingV1beta1ImageClassificationConfig(
        o.imageClassificationConfig
            as api.GoogleCloudDatalabelingV1beta1ImageClassificationConfig);
    checkGoogleCloudDatalabelingV1beta1ObjectDetectionConfig(
        o.objectDetectionConfig
            as api.GoogleCloudDatalabelingV1beta1ObjectDetectionConfig);
    checkGoogleCloudDatalabelingV1beta1ObjectTrackingConfig(
        o.objectTrackingConfig
            as api.GoogleCloudDatalabelingV1beta1ObjectTrackingConfig);
    checkGoogleCloudDatalabelingV1beta1PolylineConfig(
        o.polylineConfig as api.GoogleCloudDatalabelingV1beta1PolylineConfig);
    checkGoogleCloudDatalabelingV1beta1SegmentationConfig(o.segmentationConfig
        as api.GoogleCloudDatalabelingV1beta1SegmentationConfig);
    checkGoogleCloudDatalabelingV1beta1TextClassificationConfig(
        o.textClassificationConfig
            as api.GoogleCloudDatalabelingV1beta1TextClassificationConfig);
    checkGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig(
        o.textEntityExtractionConfig
            as api.GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig);
    checkGoogleCloudDatalabelingV1beta1VideoClassificationConfig(
        o.videoClassificationConfig
            as api.GoogleCloudDatalabelingV1beta1VideoClassificationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1Annotation = 0;
api.GoogleCloudDatalabelingV1beta1Annotation
    buildGoogleCloudDatalabelingV1beta1Annotation() {
  var o = api.GoogleCloudDatalabelingV1beta1Annotation();
  buildCounterGoogleCloudDatalabelingV1beta1Annotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Annotation < 3) {
    o.annotationMetadata =
        buildGoogleCloudDatalabelingV1beta1AnnotationMetadata();
    o.annotationSentiment = 'foo';
    o.annotationSource = 'foo';
    o.annotationValue = buildGoogleCloudDatalabelingV1beta1AnnotationValue();
    o.name = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1Annotation--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1Annotation(
    api.GoogleCloudDatalabelingV1beta1Annotation o) {
  buildCounterGoogleCloudDatalabelingV1beta1Annotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Annotation < 3) {
    checkGoogleCloudDatalabelingV1beta1AnnotationMetadata(o.annotationMetadata
        as api.GoogleCloudDatalabelingV1beta1AnnotationMetadata);
    unittest.expect(o.annotationSentiment, unittest.equals('foo'));
    unittest.expect(o.annotationSource, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1beta1AnnotationValue(
        o.annotationValue as api.GoogleCloudDatalabelingV1beta1AnnotationValue);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1Annotation--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1AnnotationMetadata = 0;
api.GoogleCloudDatalabelingV1beta1AnnotationMetadata
    buildGoogleCloudDatalabelingV1beta1AnnotationMetadata() {
  var o = api.GoogleCloudDatalabelingV1beta1AnnotationMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1AnnotationMetadata < 3) {
    o.operatorMetadata = buildGoogleCloudDatalabelingV1beta1OperatorMetadata();
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1AnnotationMetadata(
    api.GoogleCloudDatalabelingV1beta1AnnotationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1AnnotationMetadata < 3) {
    checkGoogleCloudDatalabelingV1beta1OperatorMetadata(o.operatorMetadata
        as api.GoogleCloudDatalabelingV1beta1OperatorMetadata);
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpec = 0;
api.GoogleCloudDatalabelingV1beta1AnnotationSpec
    buildGoogleCloudDatalabelingV1beta1AnnotationSpec() {
  var o = api.GoogleCloudDatalabelingV1beta1AnnotationSpec();
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpec++;
  if (buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpec < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.index = 42;
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpec--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1AnnotationSpec(
    api.GoogleCloudDatalabelingV1beta1AnnotationSpec o) {
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpec++;
  if (buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpec < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.index, unittest.equals(42));
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpec--;
}

core.List<api.GoogleCloudDatalabelingV1beta1AnnotationSpec> buildUnnamed7348() {
  var o = <api.GoogleCloudDatalabelingV1beta1AnnotationSpec>[];
  o.add(buildGoogleCloudDatalabelingV1beta1AnnotationSpec());
  o.add(buildGoogleCloudDatalabelingV1beta1AnnotationSpec());
  return o;
}

void checkUnnamed7348(
    core.List<api.GoogleCloudDatalabelingV1beta1AnnotationSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1AnnotationSpec(
      o[0] as api.GoogleCloudDatalabelingV1beta1AnnotationSpec);
  checkGoogleCloudDatalabelingV1beta1AnnotationSpec(
      o[1] as api.GoogleCloudDatalabelingV1beta1AnnotationSpec);
}

core.List<core.String> buildUnnamed7349() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7349(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSet = 0;
api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet
    buildGoogleCloudDatalabelingV1beta1AnnotationSpecSet() {
  var o = api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet();
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSet++;
  if (buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSet < 3) {
    o.annotationSpecs = buildUnnamed7348();
    o.blockingResources = buildUnnamed7349();
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSet--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1AnnotationSpecSet(
    api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet o) {
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSet++;
  if (buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSet < 3) {
    checkUnnamed7348(o.annotationSpecs);
    checkUnnamed7349(o.blockingResources);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSet--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig = 0;
api.GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig
    buildGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig() {
  var o = api.GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig();
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig < 3) {
    o.allowMultiLabel = true;
    o.annotationSpecSet = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig(
    api.GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig o) {
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig < 3) {
    unittest.expect(o.allowMultiLabel, unittest.isTrue);
    unittest.expect(o.annotationSpecSet, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1AnnotationValue = 0;
api.GoogleCloudDatalabelingV1beta1AnnotationValue
    buildGoogleCloudDatalabelingV1beta1AnnotationValue() {
  var o = api.GoogleCloudDatalabelingV1beta1AnnotationValue();
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationValue++;
  if (buildCounterGoogleCloudDatalabelingV1beta1AnnotationValue < 3) {
    o.imageBoundingPolyAnnotation =
        buildGoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation();
    o.imageClassificationAnnotation =
        buildGoogleCloudDatalabelingV1beta1ImageClassificationAnnotation();
    o.imagePolylineAnnotation =
        buildGoogleCloudDatalabelingV1beta1ImagePolylineAnnotation();
    o.imageSegmentationAnnotation =
        buildGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation();
    o.textClassificationAnnotation =
        buildGoogleCloudDatalabelingV1beta1TextClassificationAnnotation();
    o.textEntityExtractionAnnotation =
        buildGoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation();
    o.videoClassificationAnnotation =
        buildGoogleCloudDatalabelingV1beta1VideoClassificationAnnotation();
    o.videoEventAnnotation =
        buildGoogleCloudDatalabelingV1beta1VideoEventAnnotation();
    o.videoObjectTrackingAnnotation =
        buildGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation();
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationValue--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1AnnotationValue(
    api.GoogleCloudDatalabelingV1beta1AnnotationValue o) {
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationValue++;
  if (buildCounterGoogleCloudDatalabelingV1beta1AnnotationValue < 3) {
    checkGoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation(
        o.imageBoundingPolyAnnotation
            as api.GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation);
    checkGoogleCloudDatalabelingV1beta1ImageClassificationAnnotation(
        o.imageClassificationAnnotation
            as api.GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation);
    checkGoogleCloudDatalabelingV1beta1ImagePolylineAnnotation(
        o.imagePolylineAnnotation
            as api.GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation);
    checkGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation(
        o.imageSegmentationAnnotation
            as api.GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation);
    checkGoogleCloudDatalabelingV1beta1TextClassificationAnnotation(
        o.textClassificationAnnotation
            as api.GoogleCloudDatalabelingV1beta1TextClassificationAnnotation);
    checkGoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation(o
            .textEntityExtractionAnnotation
        as api.GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation);
    checkGoogleCloudDatalabelingV1beta1VideoClassificationAnnotation(
        o.videoClassificationAnnotation
            as api.GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation);
    checkGoogleCloudDatalabelingV1beta1VideoEventAnnotation(
        o.videoEventAnnotation
            as api.GoogleCloudDatalabelingV1beta1VideoEventAnnotation);
    checkGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation(
        o.videoObjectTrackingAnnotation
            as api.GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation);
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationValue--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7350() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7350(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1Attempt = 0;
api.GoogleCloudDatalabelingV1beta1Attempt
    buildGoogleCloudDatalabelingV1beta1Attempt() {
  var o = api.GoogleCloudDatalabelingV1beta1Attempt();
  buildCounterGoogleCloudDatalabelingV1beta1Attempt++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Attempt < 3) {
    o.attemptTime = 'foo';
    o.partialFailures = buildUnnamed7350();
  }
  buildCounterGoogleCloudDatalabelingV1beta1Attempt--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1Attempt(
    api.GoogleCloudDatalabelingV1beta1Attempt o) {
  buildCounterGoogleCloudDatalabelingV1beta1Attempt++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Attempt < 3) {
    unittest.expect(o.attemptTime, unittest.equals('foo'));
    checkUnnamed7350(o.partialFailures);
  }
  buildCounterGoogleCloudDatalabelingV1beta1Attempt--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1BigQuerySource = 0;
api.GoogleCloudDatalabelingV1beta1BigQuerySource
    buildGoogleCloudDatalabelingV1beta1BigQuerySource() {
  var o = api.GoogleCloudDatalabelingV1beta1BigQuerySource();
  buildCounterGoogleCloudDatalabelingV1beta1BigQuerySource++;
  if (buildCounterGoogleCloudDatalabelingV1beta1BigQuerySource < 3) {
    o.inputUri = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1BigQuerySource--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1BigQuerySource(
    api.GoogleCloudDatalabelingV1beta1BigQuerySource o) {
  buildCounterGoogleCloudDatalabelingV1beta1BigQuerySource++;
  if (buildCounterGoogleCloudDatalabelingV1beta1BigQuerySource < 3) {
    unittest.expect(o.inputUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1BigQuerySource--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions = 0;
api.GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions
    buildGoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions() {
  var o = api.GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions();
  buildCounterGoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions++;
  if (buildCounterGoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions <
      3) {
    o.iouThreshold = 42.0;
  }
  buildCounterGoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions(
    api.GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions o) {
  buildCounterGoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions++;
  if (buildCounterGoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions <
      3) {
    unittest.expect(o.iouThreshold, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Vertex> buildUnnamed7351() {
  var o = <api.GoogleCloudDatalabelingV1beta1Vertex>[];
  o.add(buildGoogleCloudDatalabelingV1beta1Vertex());
  o.add(buildGoogleCloudDatalabelingV1beta1Vertex());
  return o;
}

void checkUnnamed7351(core.List<api.GoogleCloudDatalabelingV1beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Vertex(
      o[0] as api.GoogleCloudDatalabelingV1beta1Vertex);
  checkGoogleCloudDatalabelingV1beta1Vertex(
      o[1] as api.GoogleCloudDatalabelingV1beta1Vertex);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1BoundingPoly = 0;
api.GoogleCloudDatalabelingV1beta1BoundingPoly
    buildGoogleCloudDatalabelingV1beta1BoundingPoly() {
  var o = api.GoogleCloudDatalabelingV1beta1BoundingPoly();
  buildCounterGoogleCloudDatalabelingV1beta1BoundingPoly++;
  if (buildCounterGoogleCloudDatalabelingV1beta1BoundingPoly < 3) {
    o.vertices = buildUnnamed7351();
  }
  buildCounterGoogleCloudDatalabelingV1beta1BoundingPoly--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1BoundingPoly(
    api.GoogleCloudDatalabelingV1beta1BoundingPoly o) {
  buildCounterGoogleCloudDatalabelingV1beta1BoundingPoly++;
  if (buildCounterGoogleCloudDatalabelingV1beta1BoundingPoly < 3) {
    checkUnnamed7351(o.vertices);
  }
  buildCounterGoogleCloudDatalabelingV1beta1BoundingPoly--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1BoundingPolyConfig = 0;
api.GoogleCloudDatalabelingV1beta1BoundingPolyConfig
    buildGoogleCloudDatalabelingV1beta1BoundingPolyConfig() {
  var o = api.GoogleCloudDatalabelingV1beta1BoundingPolyConfig();
  buildCounterGoogleCloudDatalabelingV1beta1BoundingPolyConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1BoundingPolyConfig < 3) {
    o.annotationSpecSet = 'foo';
    o.instructionMessage = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1BoundingPolyConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1BoundingPolyConfig(
    api.GoogleCloudDatalabelingV1beta1BoundingPolyConfig o) {
  buildCounterGoogleCloudDatalabelingV1beta1BoundingPolyConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1BoundingPolyConfig < 3) {
    unittest.expect(o.annotationSpecSet, unittest.equals('foo'));
    unittest.expect(o.instructionMessage, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1BoundingPolyConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ClassificationMetadata = 0;
api.GoogleCloudDatalabelingV1beta1ClassificationMetadata
    buildGoogleCloudDatalabelingV1beta1ClassificationMetadata() {
  var o = api.GoogleCloudDatalabelingV1beta1ClassificationMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1ClassificationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ClassificationMetadata < 3) {
    o.isMultiLabel = true;
  }
  buildCounterGoogleCloudDatalabelingV1beta1ClassificationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ClassificationMetadata(
    api.GoogleCloudDatalabelingV1beta1ClassificationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1beta1ClassificationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ClassificationMetadata < 3) {
    unittest.expect(o.isMultiLabel, unittest.isTrue);
  }
  buildCounterGoogleCloudDatalabelingV1beta1ClassificationMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ClassificationMetrics = 0;
api.GoogleCloudDatalabelingV1beta1ClassificationMetrics
    buildGoogleCloudDatalabelingV1beta1ClassificationMetrics() {
  var o = api.GoogleCloudDatalabelingV1beta1ClassificationMetrics();
  buildCounterGoogleCloudDatalabelingV1beta1ClassificationMetrics++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ClassificationMetrics < 3) {
    o.confusionMatrix = buildGoogleCloudDatalabelingV1beta1ConfusionMatrix();
    o.prCurve = buildGoogleCloudDatalabelingV1beta1PrCurve();
  }
  buildCounterGoogleCloudDatalabelingV1beta1ClassificationMetrics--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ClassificationMetrics(
    api.GoogleCloudDatalabelingV1beta1ClassificationMetrics o) {
  buildCounterGoogleCloudDatalabelingV1beta1ClassificationMetrics++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ClassificationMetrics < 3) {
    checkGoogleCloudDatalabelingV1beta1ConfusionMatrix(
        o.confusionMatrix as api.GoogleCloudDatalabelingV1beta1ConfusionMatrix);
    checkGoogleCloudDatalabelingV1beta1PrCurve(
        o.prCurve as api.GoogleCloudDatalabelingV1beta1PrCurve);
  }
  buildCounterGoogleCloudDatalabelingV1beta1ClassificationMetrics--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry = 0;
api.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry
    buildGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry() {
  var o = api.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry();
  buildCounterGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry < 3) {
    o.confidenceThreshold = 42.0;
    o.f1Score = 42.0;
    o.f1ScoreAt1 = 42.0;
    o.f1ScoreAt5 = 42.0;
    o.precision = 42.0;
    o.precisionAt1 = 42.0;
    o.precisionAt5 = 42.0;
    o.recall = 42.0;
    o.recallAt1 = 42.0;
    o.recallAt5 = 42.0;
  }
  buildCounterGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry(
    api.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry o) {
  buildCounterGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry < 3) {
    unittest.expect(o.confidenceThreshold, unittest.equals(42.0));
    unittest.expect(o.f1Score, unittest.equals(42.0));
    unittest.expect(o.f1ScoreAt1, unittest.equals(42.0));
    unittest.expect(o.f1ScoreAt5, unittest.equals(42.0));
    unittest.expect(o.precision, unittest.equals(42.0));
    unittest.expect(o.precisionAt1, unittest.equals(42.0));
    unittest.expect(o.precisionAt5, unittest.equals(42.0));
    unittest.expect(o.recall, unittest.equals(42.0));
    unittest.expect(o.recallAt1, unittest.equals(42.0));
    unittest.expect(o.recallAt5, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Row> buildUnnamed7352() {
  var o = <api.GoogleCloudDatalabelingV1beta1Row>[];
  o.add(buildGoogleCloudDatalabelingV1beta1Row());
  o.add(buildGoogleCloudDatalabelingV1beta1Row());
  return o;
}

void checkUnnamed7352(core.List<api.GoogleCloudDatalabelingV1beta1Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Row(
      o[0] as api.GoogleCloudDatalabelingV1beta1Row);
  checkGoogleCloudDatalabelingV1beta1Row(
      o[1] as api.GoogleCloudDatalabelingV1beta1Row);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrix = 0;
api.GoogleCloudDatalabelingV1beta1ConfusionMatrix
    buildGoogleCloudDatalabelingV1beta1ConfusionMatrix() {
  var o = api.GoogleCloudDatalabelingV1beta1ConfusionMatrix();
  buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrix++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrix < 3) {
    o.row = buildUnnamed7352();
  }
  buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrix--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ConfusionMatrix(
    api.GoogleCloudDatalabelingV1beta1ConfusionMatrix o) {
  buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrix++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrix < 3) {
    checkUnnamed7352(o.row);
  }
  buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrix--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry = 0;
api.GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry
    buildGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry() {
  var o = api.GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry();
  buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry < 3) {
    o.annotationSpec = buildGoogleCloudDatalabelingV1beta1AnnotationSpec();
    o.itemCount = 42;
  }
  buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry(
    api.GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry o) {
  buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry < 3) {
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(
        o.annotationSpec as api.GoogleCloudDatalabelingV1beta1AnnotationSpec);
    unittest.expect(o.itemCount, unittest.equals(42));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest =
    0;
api.GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest
    buildGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest() {
  var o = api.GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest();
  buildCounterGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest <
      3) {
    o.annotationSpecSet =
        buildGoogleCloudDatalabelingV1beta1AnnotationSpecSet();
  }
  buildCounterGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest(
    api.GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest o) {
  buildCounterGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest <
      3) {
    checkGoogleCloudDatalabelingV1beta1AnnotationSpecSet(o.annotationSpecSet
        as api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet);
  }
  buildCounterGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1CreateDatasetRequest = 0;
api.GoogleCloudDatalabelingV1beta1CreateDatasetRequest
    buildGoogleCloudDatalabelingV1beta1CreateDatasetRequest() {
  var o = api.GoogleCloudDatalabelingV1beta1CreateDatasetRequest();
  buildCounterGoogleCloudDatalabelingV1beta1CreateDatasetRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1CreateDatasetRequest < 3) {
    o.dataset = buildGoogleCloudDatalabelingV1beta1Dataset();
  }
  buildCounterGoogleCloudDatalabelingV1beta1CreateDatasetRequest--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1CreateDatasetRequest(
    api.GoogleCloudDatalabelingV1beta1CreateDatasetRequest o) {
  buildCounterGoogleCloudDatalabelingV1beta1CreateDatasetRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1CreateDatasetRequest < 3) {
    checkGoogleCloudDatalabelingV1beta1Dataset(
        o.dataset as api.GoogleCloudDatalabelingV1beta1Dataset);
  }
  buildCounterGoogleCloudDatalabelingV1beta1CreateDatasetRequest--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest =
    0;
api.GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest
    buildGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest() {
  var o = api.GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest();
  buildCounterGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest <
      3) {
    o.job = buildGoogleCloudDatalabelingV1beta1EvaluationJob();
  }
  buildCounterGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest(
    api.GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest o) {
  buildCounterGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest <
      3) {
    checkGoogleCloudDatalabelingV1beta1EvaluationJob(
        o.job as api.GoogleCloudDatalabelingV1beta1EvaluationJob);
  }
  buildCounterGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7353() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7353(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1CreateInstructionMetadata =
    0;
api.GoogleCloudDatalabelingV1beta1CreateInstructionMetadata
    buildGoogleCloudDatalabelingV1beta1CreateInstructionMetadata() {
  var o = api.GoogleCloudDatalabelingV1beta1CreateInstructionMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1CreateInstructionMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1CreateInstructionMetadata < 3) {
    o.createTime = 'foo';
    o.instruction = 'foo';
    o.partialFailures = buildUnnamed7353();
  }
  buildCounterGoogleCloudDatalabelingV1beta1CreateInstructionMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1CreateInstructionMetadata(
    api.GoogleCloudDatalabelingV1beta1CreateInstructionMetadata o) {
  buildCounterGoogleCloudDatalabelingV1beta1CreateInstructionMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1CreateInstructionMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.instruction, unittest.equals('foo'));
    checkUnnamed7353(o.partialFailures);
  }
  buildCounterGoogleCloudDatalabelingV1beta1CreateInstructionMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1CreateInstructionRequest = 0;
api.GoogleCloudDatalabelingV1beta1CreateInstructionRequest
    buildGoogleCloudDatalabelingV1beta1CreateInstructionRequest() {
  var o = api.GoogleCloudDatalabelingV1beta1CreateInstructionRequest();
  buildCounterGoogleCloudDatalabelingV1beta1CreateInstructionRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1CreateInstructionRequest < 3) {
    o.instruction = buildGoogleCloudDatalabelingV1beta1Instruction();
  }
  buildCounterGoogleCloudDatalabelingV1beta1CreateInstructionRequest--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1CreateInstructionRequest(
    api.GoogleCloudDatalabelingV1beta1CreateInstructionRequest o) {
  buildCounterGoogleCloudDatalabelingV1beta1CreateInstructionRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1CreateInstructionRequest < 3) {
    checkGoogleCloudDatalabelingV1beta1Instruction(
        o.instruction as api.GoogleCloudDatalabelingV1beta1Instruction);
  }
  buildCounterGoogleCloudDatalabelingV1beta1CreateInstructionRequest--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1CsvInstruction = 0;
api.GoogleCloudDatalabelingV1beta1CsvInstruction
    buildGoogleCloudDatalabelingV1beta1CsvInstruction() {
  var o = api.GoogleCloudDatalabelingV1beta1CsvInstruction();
  buildCounterGoogleCloudDatalabelingV1beta1CsvInstruction++;
  if (buildCounterGoogleCloudDatalabelingV1beta1CsvInstruction < 3) {
    o.gcsFileUri = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1CsvInstruction--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1CsvInstruction(
    api.GoogleCloudDatalabelingV1beta1CsvInstruction o) {
  buildCounterGoogleCloudDatalabelingV1beta1CsvInstruction++;
  if (buildCounterGoogleCloudDatalabelingV1beta1CsvInstruction < 3) {
    unittest.expect(o.gcsFileUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1CsvInstruction--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1DataItem = 0;
api.GoogleCloudDatalabelingV1beta1DataItem
    buildGoogleCloudDatalabelingV1beta1DataItem() {
  var o = api.GoogleCloudDatalabelingV1beta1DataItem();
  buildCounterGoogleCloudDatalabelingV1beta1DataItem++;
  if (buildCounterGoogleCloudDatalabelingV1beta1DataItem < 3) {
    o.imagePayload = buildGoogleCloudDatalabelingV1beta1ImagePayload();
    o.name = 'foo';
    o.textPayload = buildGoogleCloudDatalabelingV1beta1TextPayload();
    o.videoPayload = buildGoogleCloudDatalabelingV1beta1VideoPayload();
  }
  buildCounterGoogleCloudDatalabelingV1beta1DataItem--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1DataItem(
    api.GoogleCloudDatalabelingV1beta1DataItem o) {
  buildCounterGoogleCloudDatalabelingV1beta1DataItem++;
  if (buildCounterGoogleCloudDatalabelingV1beta1DataItem < 3) {
    checkGoogleCloudDatalabelingV1beta1ImagePayload(
        o.imagePayload as api.GoogleCloudDatalabelingV1beta1ImagePayload);
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1beta1TextPayload(
        o.textPayload as api.GoogleCloudDatalabelingV1beta1TextPayload);
    checkGoogleCloudDatalabelingV1beta1VideoPayload(
        o.videoPayload as api.GoogleCloudDatalabelingV1beta1VideoPayload);
  }
  buildCounterGoogleCloudDatalabelingV1beta1DataItem--;
}

core.List<core.String> buildUnnamed7354() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7354(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudDatalabelingV1beta1InputConfig> buildUnnamed7355() {
  var o = <api.GoogleCloudDatalabelingV1beta1InputConfig>[];
  o.add(buildGoogleCloudDatalabelingV1beta1InputConfig());
  o.add(buildGoogleCloudDatalabelingV1beta1InputConfig());
  return o;
}

void checkUnnamed7355(
    core.List<api.GoogleCloudDatalabelingV1beta1InputConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1InputConfig(
      o[0] as api.GoogleCloudDatalabelingV1beta1InputConfig);
  checkGoogleCloudDatalabelingV1beta1InputConfig(
      o[1] as api.GoogleCloudDatalabelingV1beta1InputConfig);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1Dataset = 0;
api.GoogleCloudDatalabelingV1beta1Dataset
    buildGoogleCloudDatalabelingV1beta1Dataset() {
  var o = api.GoogleCloudDatalabelingV1beta1Dataset();
  buildCounterGoogleCloudDatalabelingV1beta1Dataset++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Dataset < 3) {
    o.blockingResources = buildUnnamed7354();
    o.createTime = 'foo';
    o.dataItemCount = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.inputConfigs = buildUnnamed7355();
    o.lastMigrateTime = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1Dataset--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1Dataset(
    api.GoogleCloudDatalabelingV1beta1Dataset o) {
  buildCounterGoogleCloudDatalabelingV1beta1Dataset++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Dataset < 3) {
    checkUnnamed7354(o.blockingResources);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.dataItemCount, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed7355(o.inputConfigs);
    unittest.expect(o.lastMigrateTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1Dataset--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1Evaluation = 0;
api.GoogleCloudDatalabelingV1beta1Evaluation
    buildGoogleCloudDatalabelingV1beta1Evaluation() {
  var o = api.GoogleCloudDatalabelingV1beta1Evaluation();
  buildCounterGoogleCloudDatalabelingV1beta1Evaluation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Evaluation < 3) {
    o.annotationType = 'foo';
    o.config = buildGoogleCloudDatalabelingV1beta1EvaluationConfig();
    o.createTime = 'foo';
    o.evaluatedItemCount = 'foo';
    o.evaluationJobRunTime = 'foo';
    o.evaluationMetrics =
        buildGoogleCloudDatalabelingV1beta1EvaluationMetrics();
    o.name = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1Evaluation--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1Evaluation(
    api.GoogleCloudDatalabelingV1beta1Evaluation o) {
  buildCounterGoogleCloudDatalabelingV1beta1Evaluation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Evaluation < 3) {
    unittest.expect(o.annotationType, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1beta1EvaluationConfig(
        o.config as api.GoogleCloudDatalabelingV1beta1EvaluationConfig);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.evaluatedItemCount, unittest.equals('foo'));
    unittest.expect(o.evaluationJobRunTime, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1beta1EvaluationMetrics(o.evaluationMetrics
        as api.GoogleCloudDatalabelingV1beta1EvaluationMetrics);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1Evaluation--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1EvaluationConfig = 0;
api.GoogleCloudDatalabelingV1beta1EvaluationConfig
    buildGoogleCloudDatalabelingV1beta1EvaluationConfig() {
  var o = api.GoogleCloudDatalabelingV1beta1EvaluationConfig();
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1EvaluationConfig < 3) {
    o.boundingBoxEvaluationOptions =
        buildGoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions();
  }
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1EvaluationConfig(
    api.GoogleCloudDatalabelingV1beta1EvaluationConfig o) {
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1EvaluationConfig < 3) {
    checkGoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions(
        o.boundingBoxEvaluationOptions
            as api.GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions);
  }
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationConfig--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Attempt> buildUnnamed7356() {
  var o = <api.GoogleCloudDatalabelingV1beta1Attempt>[];
  o.add(buildGoogleCloudDatalabelingV1beta1Attempt());
  o.add(buildGoogleCloudDatalabelingV1beta1Attempt());
  return o;
}

void checkUnnamed7356(core.List<api.GoogleCloudDatalabelingV1beta1Attempt> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Attempt(
      o[0] as api.GoogleCloudDatalabelingV1beta1Attempt);
  checkGoogleCloudDatalabelingV1beta1Attempt(
      o[1] as api.GoogleCloudDatalabelingV1beta1Attempt);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1EvaluationJob = 0;
api.GoogleCloudDatalabelingV1beta1EvaluationJob
    buildGoogleCloudDatalabelingV1beta1EvaluationJob() {
  var o = api.GoogleCloudDatalabelingV1beta1EvaluationJob();
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationJob++;
  if (buildCounterGoogleCloudDatalabelingV1beta1EvaluationJob < 3) {
    o.annotationSpecSet = 'foo';
    o.attempts = buildUnnamed7356();
    o.createTime = 'foo';
    o.description = 'foo';
    o.evaluationJobConfig =
        buildGoogleCloudDatalabelingV1beta1EvaluationJobConfig();
    o.labelMissingGroundTruth = true;
    o.modelVersion = 'foo';
    o.name = 'foo';
    o.schedule = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationJob--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1EvaluationJob(
    api.GoogleCloudDatalabelingV1beta1EvaluationJob o) {
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationJob++;
  if (buildCounterGoogleCloudDatalabelingV1beta1EvaluationJob < 3) {
    unittest.expect(o.annotationSpecSet, unittest.equals('foo'));
    checkUnnamed7356(o.attempts);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1beta1EvaluationJobConfig(o.evaluationJobConfig
        as api.GoogleCloudDatalabelingV1beta1EvaluationJobConfig);
    unittest.expect(o.labelMissingGroundTruth, unittest.isTrue);
    unittest.expect(o.modelVersion, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.schedule, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationJob--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig = 0;
api.GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig
    buildGoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig() {
  var o = api.GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig();
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig < 3) {
    o.email = 'foo';
    o.minAcceptableMeanAveragePrecision = 42.0;
  }
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig(
    api.GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig o) {
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.minAcceptableMeanAveragePrecision, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig--;
}

core.Map<core.String, core.String> buildUnnamed7357() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7357(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobConfig = 0;
api.GoogleCloudDatalabelingV1beta1EvaluationJobConfig
    buildGoogleCloudDatalabelingV1beta1EvaluationJobConfig() {
  var o = api.GoogleCloudDatalabelingV1beta1EvaluationJobConfig();
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobConfig < 3) {
    o.bigqueryImportKeys = buildUnnamed7357();
    o.boundingPolyConfig =
        buildGoogleCloudDatalabelingV1beta1BoundingPolyConfig();
    o.evaluationConfig = buildGoogleCloudDatalabelingV1beta1EvaluationConfig();
    o.evaluationJobAlertConfig =
        buildGoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig();
    o.exampleCount = 42;
    o.exampleSamplePercentage = 42.0;
    o.humanAnnotationConfig =
        buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
    o.imageClassificationConfig =
        buildGoogleCloudDatalabelingV1beta1ImageClassificationConfig();
    o.inputConfig = buildGoogleCloudDatalabelingV1beta1InputConfig();
    o.textClassificationConfig =
        buildGoogleCloudDatalabelingV1beta1TextClassificationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1EvaluationJobConfig(
    api.GoogleCloudDatalabelingV1beta1EvaluationJobConfig o) {
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobConfig < 3) {
    checkUnnamed7357(o.bigqueryImportKeys);
    checkGoogleCloudDatalabelingV1beta1BoundingPolyConfig(o.boundingPolyConfig
        as api.GoogleCloudDatalabelingV1beta1BoundingPolyConfig);
    checkGoogleCloudDatalabelingV1beta1EvaluationConfig(o.evaluationConfig
        as api.GoogleCloudDatalabelingV1beta1EvaluationConfig);
    checkGoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig(
        o.evaluationJobAlertConfig
            as api.GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig);
    unittest.expect(o.exampleCount, unittest.equals(42));
    unittest.expect(o.exampleSamplePercentage, unittest.equals(42.0));
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(
        o.humanAnnotationConfig
            as api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig);
    checkGoogleCloudDatalabelingV1beta1ImageClassificationConfig(
        o.imageClassificationConfig
            as api.GoogleCloudDatalabelingV1beta1ImageClassificationConfig);
    checkGoogleCloudDatalabelingV1beta1InputConfig(
        o.inputConfig as api.GoogleCloudDatalabelingV1beta1InputConfig);
    checkGoogleCloudDatalabelingV1beta1TextClassificationConfig(
        o.textClassificationConfig
            as api.GoogleCloudDatalabelingV1beta1TextClassificationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1EvaluationMetrics = 0;
api.GoogleCloudDatalabelingV1beta1EvaluationMetrics
    buildGoogleCloudDatalabelingV1beta1EvaluationMetrics() {
  var o = api.GoogleCloudDatalabelingV1beta1EvaluationMetrics();
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationMetrics++;
  if (buildCounterGoogleCloudDatalabelingV1beta1EvaluationMetrics < 3) {
    o.classificationMetrics =
        buildGoogleCloudDatalabelingV1beta1ClassificationMetrics();
    o.objectDetectionMetrics =
        buildGoogleCloudDatalabelingV1beta1ObjectDetectionMetrics();
  }
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationMetrics--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1EvaluationMetrics(
    api.GoogleCloudDatalabelingV1beta1EvaluationMetrics o) {
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationMetrics++;
  if (buildCounterGoogleCloudDatalabelingV1beta1EvaluationMetrics < 3) {
    checkGoogleCloudDatalabelingV1beta1ClassificationMetrics(
        o.classificationMetrics
            as api.GoogleCloudDatalabelingV1beta1ClassificationMetrics);
    checkGoogleCloudDatalabelingV1beta1ObjectDetectionMetrics(
        o.objectDetectionMetrics
            as api.GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics);
  }
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationMetrics--;
}

core.List<core.String> buildUnnamed7358() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7358(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatalabelingV1beta1EventConfig = 0;
api.GoogleCloudDatalabelingV1beta1EventConfig
    buildGoogleCloudDatalabelingV1beta1EventConfig() {
  var o = api.GoogleCloudDatalabelingV1beta1EventConfig();
  buildCounterGoogleCloudDatalabelingV1beta1EventConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1EventConfig < 3) {
    o.annotationSpecSets = buildUnnamed7358();
    o.clipLength = 42;
    o.overlapLength = 42;
  }
  buildCounterGoogleCloudDatalabelingV1beta1EventConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1EventConfig(
    api.GoogleCloudDatalabelingV1beta1EventConfig o) {
  buildCounterGoogleCloudDatalabelingV1beta1EventConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1EventConfig < 3) {
    checkUnnamed7358(o.annotationSpecSets);
    unittest.expect(o.clipLength, unittest.equals(42));
    unittest.expect(o.overlapLength, unittest.equals(42));
  }
  buildCounterGoogleCloudDatalabelingV1beta1EventConfig--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Annotation> buildUnnamed7359() {
  var o = <api.GoogleCloudDatalabelingV1beta1Annotation>[];
  o.add(buildGoogleCloudDatalabelingV1beta1Annotation());
  o.add(buildGoogleCloudDatalabelingV1beta1Annotation());
  return o;
}

void checkUnnamed7359(
    core.List<api.GoogleCloudDatalabelingV1beta1Annotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Annotation(
      o[0] as api.GoogleCloudDatalabelingV1beta1Annotation);
  checkGoogleCloudDatalabelingV1beta1Annotation(
      o[1] as api.GoogleCloudDatalabelingV1beta1Annotation);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1Example = 0;
api.GoogleCloudDatalabelingV1beta1Example
    buildGoogleCloudDatalabelingV1beta1Example() {
  var o = api.GoogleCloudDatalabelingV1beta1Example();
  buildCounterGoogleCloudDatalabelingV1beta1Example++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Example < 3) {
    o.annotations = buildUnnamed7359();
    o.imagePayload = buildGoogleCloudDatalabelingV1beta1ImagePayload();
    o.name = 'foo';
    o.textPayload = buildGoogleCloudDatalabelingV1beta1TextPayload();
    o.videoPayload = buildGoogleCloudDatalabelingV1beta1VideoPayload();
  }
  buildCounterGoogleCloudDatalabelingV1beta1Example--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1Example(
    api.GoogleCloudDatalabelingV1beta1Example o) {
  buildCounterGoogleCloudDatalabelingV1beta1Example++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Example < 3) {
    checkUnnamed7359(o.annotations);
    checkGoogleCloudDatalabelingV1beta1ImagePayload(
        o.imagePayload as api.GoogleCloudDatalabelingV1beta1ImagePayload);
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1beta1TextPayload(
        o.textPayload as api.GoogleCloudDatalabelingV1beta1TextPayload);
    checkGoogleCloudDatalabelingV1beta1VideoPayload(
        o.videoPayload as api.GoogleCloudDatalabelingV1beta1VideoPayload);
  }
  buildCounterGoogleCloudDatalabelingV1beta1Example--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Example> buildUnnamed7360() {
  var o = <api.GoogleCloudDatalabelingV1beta1Example>[];
  o.add(buildGoogleCloudDatalabelingV1beta1Example());
  o.add(buildGoogleCloudDatalabelingV1beta1Example());
  return o;
}

void checkUnnamed7360(core.List<api.GoogleCloudDatalabelingV1beta1Example> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Example(
      o[0] as api.GoogleCloudDatalabelingV1beta1Example);
  checkGoogleCloudDatalabelingV1beta1Example(
      o[1] as api.GoogleCloudDatalabelingV1beta1Example);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ExampleComparison = 0;
api.GoogleCloudDatalabelingV1beta1ExampleComparison
    buildGoogleCloudDatalabelingV1beta1ExampleComparison() {
  var o = api.GoogleCloudDatalabelingV1beta1ExampleComparison();
  buildCounterGoogleCloudDatalabelingV1beta1ExampleComparison++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ExampleComparison < 3) {
    o.groundTruthExample = buildGoogleCloudDatalabelingV1beta1Example();
    o.modelCreatedExamples = buildUnnamed7360();
  }
  buildCounterGoogleCloudDatalabelingV1beta1ExampleComparison--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ExampleComparison(
    api.GoogleCloudDatalabelingV1beta1ExampleComparison o) {
  buildCounterGoogleCloudDatalabelingV1beta1ExampleComparison++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ExampleComparison < 3) {
    checkGoogleCloudDatalabelingV1beta1Example(
        o.groundTruthExample as api.GoogleCloudDatalabelingV1beta1Example);
    checkUnnamed7360(o.modelCreatedExamples);
  }
  buildCounterGoogleCloudDatalabelingV1beta1ExampleComparison--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7361() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7361(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ExportDataOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1beta1ExportDataOperationMetadata
    buildGoogleCloudDatalabelingV1beta1ExportDataOperationMetadata() {
  var o = api.GoogleCloudDatalabelingV1beta1ExportDataOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1ExportDataOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ExportDataOperationMetadata <
      3) {
    o.annotatedDataset = 'foo';
    o.createTime = 'foo';
    o.dataset = 'foo';
    o.partialFailures = buildUnnamed7361();
  }
  buildCounterGoogleCloudDatalabelingV1beta1ExportDataOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ExportDataOperationMetadata(
    api.GoogleCloudDatalabelingV1beta1ExportDataOperationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1beta1ExportDataOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ExportDataOperationMetadata <
      3) {
    unittest.expect(o.annotatedDataset, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
    checkUnnamed7361(o.partialFailures);
  }
  buildCounterGoogleCloudDatalabelingV1beta1ExportDataOperationMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ExportDataOperationResponse =
    0;
api.GoogleCloudDatalabelingV1beta1ExportDataOperationResponse
    buildGoogleCloudDatalabelingV1beta1ExportDataOperationResponse() {
  var o = api.GoogleCloudDatalabelingV1beta1ExportDataOperationResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ExportDataOperationResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ExportDataOperationResponse <
      3) {
    o.annotatedDataset = 'foo';
    o.dataset = 'foo';
    o.exportCount = 42;
    o.labelStats = buildGoogleCloudDatalabelingV1beta1LabelStats();
    o.outputConfig = buildGoogleCloudDatalabelingV1beta1OutputConfig();
    o.totalCount = 42;
  }
  buildCounterGoogleCloudDatalabelingV1beta1ExportDataOperationResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ExportDataOperationResponse(
    api.GoogleCloudDatalabelingV1beta1ExportDataOperationResponse o) {
  buildCounterGoogleCloudDatalabelingV1beta1ExportDataOperationResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ExportDataOperationResponse <
      3) {
    unittest.expect(o.annotatedDataset, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
    unittest.expect(o.exportCount, unittest.equals(42));
    checkGoogleCloudDatalabelingV1beta1LabelStats(
        o.labelStats as api.GoogleCloudDatalabelingV1beta1LabelStats);
    checkGoogleCloudDatalabelingV1beta1OutputConfig(
        o.outputConfig as api.GoogleCloudDatalabelingV1beta1OutputConfig);
    unittest.expect(o.totalCount, unittest.equals(42));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ExportDataOperationResponse--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ExportDataRequest = 0;
api.GoogleCloudDatalabelingV1beta1ExportDataRequest
    buildGoogleCloudDatalabelingV1beta1ExportDataRequest() {
  var o = api.GoogleCloudDatalabelingV1beta1ExportDataRequest();
  buildCounterGoogleCloudDatalabelingV1beta1ExportDataRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ExportDataRequest < 3) {
    o.annotatedDataset = 'foo';
    o.filter = 'foo';
    o.outputConfig = buildGoogleCloudDatalabelingV1beta1OutputConfig();
    o.userEmailAddress = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1ExportDataRequest--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ExportDataRequest(
    api.GoogleCloudDatalabelingV1beta1ExportDataRequest o) {
  buildCounterGoogleCloudDatalabelingV1beta1ExportDataRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ExportDataRequest < 3) {
    unittest.expect(o.annotatedDataset, unittest.equals('foo'));
    unittest.expect(o.filter, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1beta1OutputConfig(
        o.outputConfig as api.GoogleCloudDatalabelingV1beta1OutputConfig);
    unittest.expect(o.userEmailAddress, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ExportDataRequest--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1FeedbackMessage = 0;
api.GoogleCloudDatalabelingV1beta1FeedbackMessage
    buildGoogleCloudDatalabelingV1beta1FeedbackMessage() {
  var o = api.GoogleCloudDatalabelingV1beta1FeedbackMessage();
  buildCounterGoogleCloudDatalabelingV1beta1FeedbackMessage++;
  if (buildCounterGoogleCloudDatalabelingV1beta1FeedbackMessage < 3) {
    o.body = 'foo';
    o.createTime = 'foo';
    o.image = 'foo';
    o.name = 'foo';
    o.operatorFeedbackMetadata =
        buildGoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata();
    o.requesterFeedbackMetadata =
        buildGoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata();
  }
  buildCounterGoogleCloudDatalabelingV1beta1FeedbackMessage--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1FeedbackMessage(
    api.GoogleCloudDatalabelingV1beta1FeedbackMessage o) {
  buildCounterGoogleCloudDatalabelingV1beta1FeedbackMessage++;
  if (buildCounterGoogleCloudDatalabelingV1beta1FeedbackMessage < 3) {
    unittest.expect(o.body, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.image, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata(
        o.operatorFeedbackMetadata
            as api.GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata);
    checkGoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata(
        o.requesterFeedbackMetadata
            as api.GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata);
  }
  buildCounterGoogleCloudDatalabelingV1beta1FeedbackMessage--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1FeedbackThread = 0;
api.GoogleCloudDatalabelingV1beta1FeedbackThread
    buildGoogleCloudDatalabelingV1beta1FeedbackThread() {
  var o = api.GoogleCloudDatalabelingV1beta1FeedbackThread();
  buildCounterGoogleCloudDatalabelingV1beta1FeedbackThread++;
  if (buildCounterGoogleCloudDatalabelingV1beta1FeedbackThread < 3) {
    o.feedbackThreadMetadata =
        buildGoogleCloudDatalabelingV1beta1FeedbackThreadMetadata();
    o.name = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1FeedbackThread--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1FeedbackThread(
    api.GoogleCloudDatalabelingV1beta1FeedbackThread o) {
  buildCounterGoogleCloudDatalabelingV1beta1FeedbackThread++;
  if (buildCounterGoogleCloudDatalabelingV1beta1FeedbackThread < 3) {
    checkGoogleCloudDatalabelingV1beta1FeedbackThreadMetadata(
        o.feedbackThreadMetadata
            as api.GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1FeedbackThread--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1FeedbackThreadMetadata = 0;
api.GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata
    buildGoogleCloudDatalabelingV1beta1FeedbackThreadMetadata() {
  var o = api.GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1FeedbackThreadMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1FeedbackThreadMetadata < 3) {
    o.createTime = 'foo';
    o.lastUpdateTime = 'foo';
    o.status = 'foo';
    o.thumbnail = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1FeedbackThreadMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1FeedbackThreadMetadata(
    api.GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata o) {
  buildCounterGoogleCloudDatalabelingV1beta1FeedbackThreadMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1FeedbackThreadMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.lastUpdateTime, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.thumbnail, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1FeedbackThreadMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1GcsDestination = 0;
api.GoogleCloudDatalabelingV1beta1GcsDestination
    buildGoogleCloudDatalabelingV1beta1GcsDestination() {
  var o = api.GoogleCloudDatalabelingV1beta1GcsDestination();
  buildCounterGoogleCloudDatalabelingV1beta1GcsDestination++;
  if (buildCounterGoogleCloudDatalabelingV1beta1GcsDestination < 3) {
    o.mimeType = 'foo';
    o.outputUri = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1GcsDestination--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1GcsDestination(
    api.GoogleCloudDatalabelingV1beta1GcsDestination o) {
  buildCounterGoogleCloudDatalabelingV1beta1GcsDestination++;
  if (buildCounterGoogleCloudDatalabelingV1beta1GcsDestination < 3) {
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.outputUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1GcsDestination--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1GcsFolderDestination = 0;
api.GoogleCloudDatalabelingV1beta1GcsFolderDestination
    buildGoogleCloudDatalabelingV1beta1GcsFolderDestination() {
  var o = api.GoogleCloudDatalabelingV1beta1GcsFolderDestination();
  buildCounterGoogleCloudDatalabelingV1beta1GcsFolderDestination++;
  if (buildCounterGoogleCloudDatalabelingV1beta1GcsFolderDestination < 3) {
    o.outputFolderUri = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1GcsFolderDestination--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1GcsFolderDestination(
    api.GoogleCloudDatalabelingV1beta1GcsFolderDestination o) {
  buildCounterGoogleCloudDatalabelingV1beta1GcsFolderDestination++;
  if (buildCounterGoogleCloudDatalabelingV1beta1GcsFolderDestination < 3) {
    unittest.expect(o.outputFolderUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1GcsFolderDestination--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1GcsSource = 0;
api.GoogleCloudDatalabelingV1beta1GcsSource
    buildGoogleCloudDatalabelingV1beta1GcsSource() {
  var o = api.GoogleCloudDatalabelingV1beta1GcsSource();
  buildCounterGoogleCloudDatalabelingV1beta1GcsSource++;
  if (buildCounterGoogleCloudDatalabelingV1beta1GcsSource < 3) {
    o.inputUri = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1GcsSource--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1GcsSource(
    api.GoogleCloudDatalabelingV1beta1GcsSource o) {
  buildCounterGoogleCloudDatalabelingV1beta1GcsSource++;
  if (buildCounterGoogleCloudDatalabelingV1beta1GcsSource < 3) {
    unittest.expect(o.inputUri, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1GcsSource--;
}

core.List<core.String> buildUnnamed7362() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7362(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatalabelingV1beta1HumanAnnotationConfig = 0;
api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig
    buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig() {
  var o = api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
  buildCounterGoogleCloudDatalabelingV1beta1HumanAnnotationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1HumanAnnotationConfig < 3) {
    o.annotatedDatasetDescription = 'foo';
    o.annotatedDatasetDisplayName = 'foo';
    o.contributorEmails = buildUnnamed7362();
    o.instruction = 'foo';
    o.labelGroup = 'foo';
    o.languageCode = 'foo';
    o.questionDuration = 'foo';
    o.replicaCount = 42;
    o.userEmailAddress = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1HumanAnnotationConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(
    api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig o) {
  buildCounterGoogleCloudDatalabelingV1beta1HumanAnnotationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1HumanAnnotationConfig < 3) {
    unittest.expect(o.annotatedDatasetDescription, unittest.equals('foo'));
    unittest.expect(o.annotatedDatasetDisplayName, unittest.equals('foo'));
    checkUnnamed7362(o.contributorEmails);
    unittest.expect(o.instruction, unittest.equals('foo'));
    unittest.expect(o.labelGroup, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.questionDuration, unittest.equals('foo'));
    unittest.expect(o.replicaCount, unittest.equals(42));
    unittest.expect(o.userEmailAddress, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1HumanAnnotationConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation =
    0;
api.GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation
    buildGoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation() {
  var o = api.GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation();
  buildCounterGoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation <
      3) {
    o.annotationSpec = buildGoogleCloudDatalabelingV1beta1AnnotationSpec();
    o.boundingPoly = buildGoogleCloudDatalabelingV1beta1BoundingPoly();
    o.normalizedBoundingPoly =
        buildGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly();
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation(
    api.GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation o) {
  buildCounterGoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation <
      3) {
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(
        o.annotationSpec as api.GoogleCloudDatalabelingV1beta1AnnotationSpec);
    checkGoogleCloudDatalabelingV1beta1BoundingPoly(
        o.boundingPoly as api.GoogleCloudDatalabelingV1beta1BoundingPoly);
    checkGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly(
        o.normalizedBoundingPoly
            as api.GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly);
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1ImageClassificationAnnotation = 0;
api.GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation
    buildGoogleCloudDatalabelingV1beta1ImageClassificationAnnotation() {
  var o = api.GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation();
  buildCounterGoogleCloudDatalabelingV1beta1ImageClassificationAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ImageClassificationAnnotation <
      3) {
    o.annotationSpec = buildGoogleCloudDatalabelingV1beta1AnnotationSpec();
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImageClassificationAnnotation--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ImageClassificationAnnotation(
    api.GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation o) {
  buildCounterGoogleCloudDatalabelingV1beta1ImageClassificationAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ImageClassificationAnnotation <
      3) {
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(
        o.annotationSpec as api.GoogleCloudDatalabelingV1beta1AnnotationSpec);
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImageClassificationAnnotation--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ImageClassificationConfig =
    0;
api.GoogleCloudDatalabelingV1beta1ImageClassificationConfig
    buildGoogleCloudDatalabelingV1beta1ImageClassificationConfig() {
  var o = api.GoogleCloudDatalabelingV1beta1ImageClassificationConfig();
  buildCounterGoogleCloudDatalabelingV1beta1ImageClassificationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ImageClassificationConfig < 3) {
    o.allowMultiLabel = true;
    o.annotationSpecSet = 'foo';
    o.answerAggregationType = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImageClassificationConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ImageClassificationConfig(
    api.GoogleCloudDatalabelingV1beta1ImageClassificationConfig o) {
  buildCounterGoogleCloudDatalabelingV1beta1ImageClassificationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ImageClassificationConfig < 3) {
    unittest.expect(o.allowMultiLabel, unittest.isTrue);
    unittest.expect(o.annotationSpecSet, unittest.equals('foo'));
    unittest.expect(o.answerAggregationType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImageClassificationConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ImagePayload = 0;
api.GoogleCloudDatalabelingV1beta1ImagePayload
    buildGoogleCloudDatalabelingV1beta1ImagePayload() {
  var o = api.GoogleCloudDatalabelingV1beta1ImagePayload();
  buildCounterGoogleCloudDatalabelingV1beta1ImagePayload++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ImagePayload < 3) {
    o.imageThumbnail = 'foo';
    o.imageUri = 'foo';
    o.mimeType = 'foo';
    o.signedUri = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImagePayload--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ImagePayload(
    api.GoogleCloudDatalabelingV1beta1ImagePayload o) {
  buildCounterGoogleCloudDatalabelingV1beta1ImagePayload++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ImagePayload < 3) {
    unittest.expect(o.imageThumbnail, unittest.equals('foo'));
    unittest.expect(o.imageUri, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.signedUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImagePayload--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ImagePolylineAnnotation = 0;
api.GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation
    buildGoogleCloudDatalabelingV1beta1ImagePolylineAnnotation() {
  var o = api.GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation();
  buildCounterGoogleCloudDatalabelingV1beta1ImagePolylineAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ImagePolylineAnnotation < 3) {
    o.annotationSpec = buildGoogleCloudDatalabelingV1beta1AnnotationSpec();
    o.normalizedPolyline =
        buildGoogleCloudDatalabelingV1beta1NormalizedPolyline();
    o.polyline = buildGoogleCloudDatalabelingV1beta1Polyline();
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImagePolylineAnnotation--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ImagePolylineAnnotation(
    api.GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation o) {
  buildCounterGoogleCloudDatalabelingV1beta1ImagePolylineAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ImagePolylineAnnotation < 3) {
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(
        o.annotationSpec as api.GoogleCloudDatalabelingV1beta1AnnotationSpec);
    checkGoogleCloudDatalabelingV1beta1NormalizedPolyline(o.normalizedPolyline
        as api.GoogleCloudDatalabelingV1beta1NormalizedPolyline);
    checkGoogleCloudDatalabelingV1beta1Polyline(
        o.polyline as api.GoogleCloudDatalabelingV1beta1Polyline);
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImagePolylineAnnotation--;
}

core.Map<core.String, api.GoogleCloudDatalabelingV1beta1AnnotationSpec>
    buildUnnamed7363() {
  var o = <core.String, api.GoogleCloudDatalabelingV1beta1AnnotationSpec>{};
  o['x'] = buildGoogleCloudDatalabelingV1beta1AnnotationSpec();
  o['y'] = buildGoogleCloudDatalabelingV1beta1AnnotationSpec();
  return o;
}

void checkUnnamed7363(
    core.Map<core.String, api.GoogleCloudDatalabelingV1beta1AnnotationSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1AnnotationSpec(
      o['x'] as api.GoogleCloudDatalabelingV1beta1AnnotationSpec);
  checkGoogleCloudDatalabelingV1beta1AnnotationSpec(
      o['y'] as api.GoogleCloudDatalabelingV1beta1AnnotationSpec);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation =
    0;
api.GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation
    buildGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation() {
  var o = api.GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation();
  buildCounterGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation <
      3) {
    o.annotationColors = buildUnnamed7363();
    o.imageBytes = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation(
    api.GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation o) {
  buildCounterGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation <
      3) {
    checkUnnamed7363(o.annotationColors);
    unittest.expect(o.imageBytes, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7364() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7364(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ImportDataOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1beta1ImportDataOperationMetadata
    buildGoogleCloudDatalabelingV1beta1ImportDataOperationMetadata() {
  var o = api.GoogleCloudDatalabelingV1beta1ImportDataOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1ImportDataOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ImportDataOperationMetadata <
      3) {
    o.createTime = 'foo';
    o.dataset = 'foo';
    o.partialFailures = buildUnnamed7364();
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImportDataOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ImportDataOperationMetadata(
    api.GoogleCloudDatalabelingV1beta1ImportDataOperationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1beta1ImportDataOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ImportDataOperationMetadata <
      3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
    checkUnnamed7364(o.partialFailures);
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImportDataOperationMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ImportDataOperationResponse =
    0;
api.GoogleCloudDatalabelingV1beta1ImportDataOperationResponse
    buildGoogleCloudDatalabelingV1beta1ImportDataOperationResponse() {
  var o = api.GoogleCloudDatalabelingV1beta1ImportDataOperationResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ImportDataOperationResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ImportDataOperationResponse <
      3) {
    o.dataset = 'foo';
    o.importCount = 42;
    o.totalCount = 42;
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImportDataOperationResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ImportDataOperationResponse(
    api.GoogleCloudDatalabelingV1beta1ImportDataOperationResponse o) {
  buildCounterGoogleCloudDatalabelingV1beta1ImportDataOperationResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ImportDataOperationResponse <
      3) {
    unittest.expect(o.dataset, unittest.equals('foo'));
    unittest.expect(o.importCount, unittest.equals(42));
    unittest.expect(o.totalCount, unittest.equals(42));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImportDataOperationResponse--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ImportDataRequest = 0;
api.GoogleCloudDatalabelingV1beta1ImportDataRequest
    buildGoogleCloudDatalabelingV1beta1ImportDataRequest() {
  var o = api.GoogleCloudDatalabelingV1beta1ImportDataRequest();
  buildCounterGoogleCloudDatalabelingV1beta1ImportDataRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ImportDataRequest < 3) {
    o.inputConfig = buildGoogleCloudDatalabelingV1beta1InputConfig();
    o.userEmailAddress = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImportDataRequest--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ImportDataRequest(
    api.GoogleCloudDatalabelingV1beta1ImportDataRequest o) {
  buildCounterGoogleCloudDatalabelingV1beta1ImportDataRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ImportDataRequest < 3) {
    checkGoogleCloudDatalabelingV1beta1InputConfig(
        o.inputConfig as api.GoogleCloudDatalabelingV1beta1InputConfig);
    unittest.expect(o.userEmailAddress, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImportDataRequest--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1InputConfig = 0;
api.GoogleCloudDatalabelingV1beta1InputConfig
    buildGoogleCloudDatalabelingV1beta1InputConfig() {
  var o = api.GoogleCloudDatalabelingV1beta1InputConfig();
  buildCounterGoogleCloudDatalabelingV1beta1InputConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1InputConfig < 3) {
    o.annotationType = 'foo';
    o.bigquerySource = buildGoogleCloudDatalabelingV1beta1BigQuerySource();
    o.classificationMetadata =
        buildGoogleCloudDatalabelingV1beta1ClassificationMetadata();
    o.dataType = 'foo';
    o.gcsSource = buildGoogleCloudDatalabelingV1beta1GcsSource();
    o.textMetadata = buildGoogleCloudDatalabelingV1beta1TextMetadata();
  }
  buildCounterGoogleCloudDatalabelingV1beta1InputConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1InputConfig(
    api.GoogleCloudDatalabelingV1beta1InputConfig o) {
  buildCounterGoogleCloudDatalabelingV1beta1InputConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1InputConfig < 3) {
    unittest.expect(o.annotationType, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1beta1BigQuerySource(
        o.bigquerySource as api.GoogleCloudDatalabelingV1beta1BigQuerySource);
    checkGoogleCloudDatalabelingV1beta1ClassificationMetadata(
        o.classificationMetadata
            as api.GoogleCloudDatalabelingV1beta1ClassificationMetadata);
    unittest.expect(o.dataType, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1beta1GcsSource(
        o.gcsSource as api.GoogleCloudDatalabelingV1beta1GcsSource);
    checkGoogleCloudDatalabelingV1beta1TextMetadata(
        o.textMetadata as api.GoogleCloudDatalabelingV1beta1TextMetadata);
  }
  buildCounterGoogleCloudDatalabelingV1beta1InputConfig--;
}

core.List<core.String> buildUnnamed7365() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7365(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatalabelingV1beta1Instruction = 0;
api.GoogleCloudDatalabelingV1beta1Instruction
    buildGoogleCloudDatalabelingV1beta1Instruction() {
  var o = api.GoogleCloudDatalabelingV1beta1Instruction();
  buildCounterGoogleCloudDatalabelingV1beta1Instruction++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Instruction < 3) {
    o.blockingResources = buildUnnamed7365();
    o.createTime = 'foo';
    o.csvInstruction = buildGoogleCloudDatalabelingV1beta1CsvInstruction();
    o.dataType = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.pdfInstruction = buildGoogleCloudDatalabelingV1beta1PdfInstruction();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1Instruction--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1Instruction(
    api.GoogleCloudDatalabelingV1beta1Instruction o) {
  buildCounterGoogleCloudDatalabelingV1beta1Instruction++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Instruction < 3) {
    checkUnnamed7365(o.blockingResources);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1beta1CsvInstruction(
        o.csvInstruction as api.GoogleCloudDatalabelingV1beta1CsvInstruction);
    unittest.expect(o.dataType, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1beta1PdfInstruction(
        o.pdfInstruction as api.GoogleCloudDatalabelingV1beta1PdfInstruction);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1Instruction--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata
    buildGoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata(
    api.GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata
    buildGoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata(
    api.GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata
    buildGoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata(
    api.GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata
    buildGoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata(
    api.GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata
    buildGoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata() {
  var o =
      api.GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata(
    api.GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1LabelImageRequest = 0;
api.GoogleCloudDatalabelingV1beta1LabelImageRequest
    buildGoogleCloudDatalabelingV1beta1LabelImageRequest() {
  var o = api.GoogleCloudDatalabelingV1beta1LabelImageRequest();
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelImageRequest < 3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
    o.boundingPolyConfig =
        buildGoogleCloudDatalabelingV1beta1BoundingPolyConfig();
    o.feature = 'foo';
    o.imageClassificationConfig =
        buildGoogleCloudDatalabelingV1beta1ImageClassificationConfig();
    o.polylineConfig = buildGoogleCloudDatalabelingV1beta1PolylineConfig();
    o.segmentationConfig =
        buildGoogleCloudDatalabelingV1beta1SegmentationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageRequest--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1LabelImageRequest(
    api.GoogleCloudDatalabelingV1beta1LabelImageRequest o) {
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelImageRequest < 3) {
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig);
    checkGoogleCloudDatalabelingV1beta1BoundingPolyConfig(o.boundingPolyConfig
        as api.GoogleCloudDatalabelingV1beta1BoundingPolyConfig);
    unittest.expect(o.feature, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1beta1ImageClassificationConfig(
        o.imageClassificationConfig
            as api.GoogleCloudDatalabelingV1beta1ImageClassificationConfig);
    checkGoogleCloudDatalabelingV1beta1PolylineConfig(
        o.polylineConfig as api.GoogleCloudDatalabelingV1beta1PolylineConfig);
    checkGoogleCloudDatalabelingV1beta1SegmentationConfig(o.segmentationConfig
        as api.GoogleCloudDatalabelingV1beta1SegmentationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageRequest--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata
    buildGoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata(
    api.GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7366() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7366(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1LabelOperationMetadata = 0;
api.GoogleCloudDatalabelingV1beta1LabelOperationMetadata
    buildGoogleCloudDatalabelingV1beta1LabelOperationMetadata() {
  var o = api.GoogleCloudDatalabelingV1beta1LabelOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1LabelOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelOperationMetadata < 3) {
    o.annotatedDataset = 'foo';
    o.createTime = 'foo';
    o.dataset = 'foo';
    o.imageBoundingBoxDetails =
        buildGoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata();
    o.imageBoundingPolyDetails =
        buildGoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata();
    o.imageClassificationDetails =
        buildGoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata();
    o.imageOrientedBoundingBoxDetails =
        buildGoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata();
    o.imagePolylineDetails =
        buildGoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata();
    o.imageSegmentationDetails =
        buildGoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata();
    o.partialFailures = buildUnnamed7366();
    o.progressPercent = 42;
    o.textClassificationDetails =
        buildGoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata();
    o.textEntityExtractionDetails =
        buildGoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata();
    o.videoClassificationDetails =
        buildGoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata();
    o.videoEventDetails =
        buildGoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata();
    o.videoObjectDetectionDetails =
        buildGoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata();
    o.videoObjectTrackingDetails =
        buildGoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata();
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1LabelOperationMetadata(
    api.GoogleCloudDatalabelingV1beta1LabelOperationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1beta1LabelOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelOperationMetadata < 3) {
    unittest.expect(o.annotatedDataset, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata(
        o.imageBoundingBoxDetails as api
            .GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata);
    checkGoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata(
        o.imageBoundingPolyDetails as api
            .GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata);
    checkGoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata(
        o.imageClassificationDetails as api
            .GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata);
    checkGoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata(
        o.imageOrientedBoundingBoxDetails as api
            .GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata);
    checkGoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata(
        o.imagePolylineDetails as api
            .GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata);
    checkGoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata(
        o.imageSegmentationDetails as api
            .GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata);
    checkUnnamed7366(o.partialFailures);
    unittest.expect(o.progressPercent, unittest.equals(42));
    checkGoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata(
        o.textClassificationDetails as api
            .GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata);
    checkGoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata(
        o.textEntityExtractionDetails as api
            .GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata);
    checkGoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata(
        o.videoClassificationDetails as api
            .GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata);
    checkGoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata(o
            .videoEventDetails
        as api.GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata);
    checkGoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata(
        o.videoObjectDetectionDetails as api
            .GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata);
    checkGoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata(
        o.videoObjectTrackingDetails as api
            .GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelOperationMetadata--;
}

core.Map<core.String, core.String> buildUnnamed7367() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7367(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatalabelingV1beta1LabelStats = 0;
api.GoogleCloudDatalabelingV1beta1LabelStats
    buildGoogleCloudDatalabelingV1beta1LabelStats() {
  var o = api.GoogleCloudDatalabelingV1beta1LabelStats();
  buildCounterGoogleCloudDatalabelingV1beta1LabelStats++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelStats < 3) {
    o.exampleCount = buildUnnamed7367();
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelStats--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1LabelStats(
    api.GoogleCloudDatalabelingV1beta1LabelStats o) {
  buildCounterGoogleCloudDatalabelingV1beta1LabelStats++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelStats < 3) {
    checkUnnamed7367(o.exampleCount);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelStats--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata
    buildGoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata(
    api.GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata
    buildGoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata(
    api.GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1LabelTextRequest = 0;
api.GoogleCloudDatalabelingV1beta1LabelTextRequest
    buildGoogleCloudDatalabelingV1beta1LabelTextRequest() {
  var o = api.GoogleCloudDatalabelingV1beta1LabelTextRequest();
  buildCounterGoogleCloudDatalabelingV1beta1LabelTextRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelTextRequest < 3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
    o.feature = 'foo';
    o.textClassificationConfig =
        buildGoogleCloudDatalabelingV1beta1TextClassificationConfig();
    o.textEntityExtractionConfig =
        buildGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig();
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelTextRequest--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1LabelTextRequest(
    api.GoogleCloudDatalabelingV1beta1LabelTextRequest o) {
  buildCounterGoogleCloudDatalabelingV1beta1LabelTextRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelTextRequest < 3) {
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig);
    unittest.expect(o.feature, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1beta1TextClassificationConfig(
        o.textClassificationConfig
            as api.GoogleCloudDatalabelingV1beta1TextClassificationConfig);
    checkGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig(
        o.textEntityExtractionConfig
            as api.GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelTextRequest--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata
    buildGoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata(
    api.GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata
    buildGoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata() {
  var o = api.GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata(
    api.GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata
    buildGoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata(
    api.GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata
    buildGoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata <
      3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata(
    api.GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1LabelVideoRequest = 0;
api.GoogleCloudDatalabelingV1beta1LabelVideoRequest
    buildGoogleCloudDatalabelingV1beta1LabelVideoRequest() {
  var o = api.GoogleCloudDatalabelingV1beta1LabelVideoRequest();
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelVideoRequest < 3) {
    o.basicConfig = buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
    o.eventConfig = buildGoogleCloudDatalabelingV1beta1EventConfig();
    o.feature = 'foo';
    o.objectDetectionConfig =
        buildGoogleCloudDatalabelingV1beta1ObjectDetectionConfig();
    o.objectTrackingConfig =
        buildGoogleCloudDatalabelingV1beta1ObjectTrackingConfig();
    o.videoClassificationConfig =
        buildGoogleCloudDatalabelingV1beta1VideoClassificationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoRequest--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1LabelVideoRequest(
    api.GoogleCloudDatalabelingV1beta1LabelVideoRequest o) {
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelVideoRequest < 3) {
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig);
    checkGoogleCloudDatalabelingV1beta1EventConfig(
        o.eventConfig as api.GoogleCloudDatalabelingV1beta1EventConfig);
    unittest.expect(o.feature, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1beta1ObjectDetectionConfig(
        o.objectDetectionConfig
            as api.GoogleCloudDatalabelingV1beta1ObjectDetectionConfig);
    checkGoogleCloudDatalabelingV1beta1ObjectTrackingConfig(
        o.objectTrackingConfig
            as api.GoogleCloudDatalabelingV1beta1ObjectTrackingConfig);
    checkGoogleCloudDatalabelingV1beta1VideoClassificationConfig(
        o.videoClassificationConfig
            as api.GoogleCloudDatalabelingV1beta1VideoClassificationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoRequest--;
}

core.List<api.GoogleCloudDatalabelingV1beta1AnnotatedDataset>
    buildUnnamed7368() {
  var o = <api.GoogleCloudDatalabelingV1beta1AnnotatedDataset>[];
  o.add(buildGoogleCloudDatalabelingV1beta1AnnotatedDataset());
  o.add(buildGoogleCloudDatalabelingV1beta1AnnotatedDataset());
  return o;
}

void checkUnnamed7368(
    core.List<api.GoogleCloudDatalabelingV1beta1AnnotatedDataset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1AnnotatedDataset(
      o[0] as api.GoogleCloudDatalabelingV1beta1AnnotatedDataset);
  checkGoogleCloudDatalabelingV1beta1AnnotatedDataset(
      o[1] as api.GoogleCloudDatalabelingV1beta1AnnotatedDataset);
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse = 0;
api.GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse
    buildGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse() {
  var o = api.GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse <
      3) {
    o.annotatedDatasets = buildUnnamed7368();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse(
    api.GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse o) {
  buildCounterGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse <
      3) {
    checkUnnamed7368(o.annotatedDatasets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse--;
}

core.List<api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet>
    buildUnnamed7369() {
  var o = <api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet>[];
  o.add(buildGoogleCloudDatalabelingV1beta1AnnotationSpecSet());
  o.add(buildGoogleCloudDatalabelingV1beta1AnnotationSpecSet());
  return o;
}

void checkUnnamed7369(
    core.List<api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1AnnotationSpecSet(
      o[0] as api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet);
  checkGoogleCloudDatalabelingV1beta1AnnotationSpecSet(
      o[1] as api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet);
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse =
    0;
api.GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse
    buildGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse() {
  var o = api.GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse <
      3) {
    o.annotationSpecSets = buildUnnamed7369();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse(
    api.GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse o) {
  buildCounterGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse <
      3) {
    checkUnnamed7369(o.annotationSpecSets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse--;
}

core.List<api.GoogleCloudDatalabelingV1beta1DataItem> buildUnnamed7370() {
  var o = <api.GoogleCloudDatalabelingV1beta1DataItem>[];
  o.add(buildGoogleCloudDatalabelingV1beta1DataItem());
  o.add(buildGoogleCloudDatalabelingV1beta1DataItem());
  return o;
}

void checkUnnamed7370(core.List<api.GoogleCloudDatalabelingV1beta1DataItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1DataItem(
      o[0] as api.GoogleCloudDatalabelingV1beta1DataItem);
  checkGoogleCloudDatalabelingV1beta1DataItem(
      o[1] as api.GoogleCloudDatalabelingV1beta1DataItem);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ListDataItemsResponse = 0;
api.GoogleCloudDatalabelingV1beta1ListDataItemsResponse
    buildGoogleCloudDatalabelingV1beta1ListDataItemsResponse() {
  var o = api.GoogleCloudDatalabelingV1beta1ListDataItemsResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ListDataItemsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListDataItemsResponse < 3) {
    o.dataItems = buildUnnamed7370();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListDataItemsResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ListDataItemsResponse(
    api.GoogleCloudDatalabelingV1beta1ListDataItemsResponse o) {
  buildCounterGoogleCloudDatalabelingV1beta1ListDataItemsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListDataItemsResponse < 3) {
    checkUnnamed7370(o.dataItems);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListDataItemsResponse--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Dataset> buildUnnamed7371() {
  var o = <api.GoogleCloudDatalabelingV1beta1Dataset>[];
  o.add(buildGoogleCloudDatalabelingV1beta1Dataset());
  o.add(buildGoogleCloudDatalabelingV1beta1Dataset());
  return o;
}

void checkUnnamed7371(core.List<api.GoogleCloudDatalabelingV1beta1Dataset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Dataset(
      o[0] as api.GoogleCloudDatalabelingV1beta1Dataset);
  checkGoogleCloudDatalabelingV1beta1Dataset(
      o[1] as api.GoogleCloudDatalabelingV1beta1Dataset);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ListDatasetsResponse = 0;
api.GoogleCloudDatalabelingV1beta1ListDatasetsResponse
    buildGoogleCloudDatalabelingV1beta1ListDatasetsResponse() {
  var o = api.GoogleCloudDatalabelingV1beta1ListDatasetsResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ListDatasetsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListDatasetsResponse < 3) {
    o.datasets = buildUnnamed7371();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListDatasetsResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ListDatasetsResponse(
    api.GoogleCloudDatalabelingV1beta1ListDatasetsResponse o) {
  buildCounterGoogleCloudDatalabelingV1beta1ListDatasetsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListDatasetsResponse < 3) {
    checkUnnamed7371(o.datasets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListDatasetsResponse--;
}

core.List<api.GoogleCloudDatalabelingV1beta1EvaluationJob> buildUnnamed7372() {
  var o = <api.GoogleCloudDatalabelingV1beta1EvaluationJob>[];
  o.add(buildGoogleCloudDatalabelingV1beta1EvaluationJob());
  o.add(buildGoogleCloudDatalabelingV1beta1EvaluationJob());
  return o;
}

void checkUnnamed7372(
    core.List<api.GoogleCloudDatalabelingV1beta1EvaluationJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1EvaluationJob(
      o[0] as api.GoogleCloudDatalabelingV1beta1EvaluationJob);
  checkGoogleCloudDatalabelingV1beta1EvaluationJob(
      o[1] as api.GoogleCloudDatalabelingV1beta1EvaluationJob);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse =
    0;
api.GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse
    buildGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse() {
  var o = api.GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse <
      3) {
    o.evaluationJobs = buildUnnamed7372();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse(
    api.GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse o) {
  buildCounterGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse <
      3) {
    checkUnnamed7372(o.evaluationJobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Example> buildUnnamed7373() {
  var o = <api.GoogleCloudDatalabelingV1beta1Example>[];
  o.add(buildGoogleCloudDatalabelingV1beta1Example());
  o.add(buildGoogleCloudDatalabelingV1beta1Example());
  return o;
}

void checkUnnamed7373(core.List<api.GoogleCloudDatalabelingV1beta1Example> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Example(
      o[0] as api.GoogleCloudDatalabelingV1beta1Example);
  checkGoogleCloudDatalabelingV1beta1Example(
      o[1] as api.GoogleCloudDatalabelingV1beta1Example);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ListExamplesResponse = 0;
api.GoogleCloudDatalabelingV1beta1ListExamplesResponse
    buildGoogleCloudDatalabelingV1beta1ListExamplesResponse() {
  var o = api.GoogleCloudDatalabelingV1beta1ListExamplesResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ListExamplesResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListExamplesResponse < 3) {
    o.examples = buildUnnamed7373();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListExamplesResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ListExamplesResponse(
    api.GoogleCloudDatalabelingV1beta1ListExamplesResponse o) {
  buildCounterGoogleCloudDatalabelingV1beta1ListExamplesResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListExamplesResponse < 3) {
    checkUnnamed7373(o.examples);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListExamplesResponse--;
}

core.List<api.GoogleCloudDatalabelingV1beta1FeedbackMessage>
    buildUnnamed7374() {
  var o = <api.GoogleCloudDatalabelingV1beta1FeedbackMessage>[];
  o.add(buildGoogleCloudDatalabelingV1beta1FeedbackMessage());
  o.add(buildGoogleCloudDatalabelingV1beta1FeedbackMessage());
  return o;
}

void checkUnnamed7374(
    core.List<api.GoogleCloudDatalabelingV1beta1FeedbackMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1FeedbackMessage(
      o[0] as api.GoogleCloudDatalabelingV1beta1FeedbackMessage);
  checkGoogleCloudDatalabelingV1beta1FeedbackMessage(
      o[1] as api.GoogleCloudDatalabelingV1beta1FeedbackMessage);
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse = 0;
api.GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse
    buildGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse() {
  var o = api.GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse <
      3) {
    o.feedbackMessages = buildUnnamed7374();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse(
    api.GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse o) {
  buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse <
      3) {
    checkUnnamed7374(o.feedbackMessages);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse--;
}

core.List<api.GoogleCloudDatalabelingV1beta1FeedbackThread> buildUnnamed7375() {
  var o = <api.GoogleCloudDatalabelingV1beta1FeedbackThread>[];
  o.add(buildGoogleCloudDatalabelingV1beta1FeedbackThread());
  o.add(buildGoogleCloudDatalabelingV1beta1FeedbackThread());
  return o;
}

void checkUnnamed7375(
    core.List<api.GoogleCloudDatalabelingV1beta1FeedbackThread> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1FeedbackThread(
      o[0] as api.GoogleCloudDatalabelingV1beta1FeedbackThread);
  checkGoogleCloudDatalabelingV1beta1FeedbackThread(
      o[1] as api.GoogleCloudDatalabelingV1beta1FeedbackThread);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse =
    0;
api.GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse
    buildGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse() {
  var o = api.GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse <
      3) {
    o.feedbackThreads = buildUnnamed7375();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse(
    api.GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse o) {
  buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse <
      3) {
    checkUnnamed7375(o.feedbackThreads);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Instruction> buildUnnamed7376() {
  var o = <api.GoogleCloudDatalabelingV1beta1Instruction>[];
  o.add(buildGoogleCloudDatalabelingV1beta1Instruction());
  o.add(buildGoogleCloudDatalabelingV1beta1Instruction());
  return o;
}

void checkUnnamed7376(
    core.List<api.GoogleCloudDatalabelingV1beta1Instruction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Instruction(
      o[0] as api.GoogleCloudDatalabelingV1beta1Instruction);
  checkGoogleCloudDatalabelingV1beta1Instruction(
      o[1] as api.GoogleCloudDatalabelingV1beta1Instruction);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ListInstructionsResponse = 0;
api.GoogleCloudDatalabelingV1beta1ListInstructionsResponse
    buildGoogleCloudDatalabelingV1beta1ListInstructionsResponse() {
  var o = api.GoogleCloudDatalabelingV1beta1ListInstructionsResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ListInstructionsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListInstructionsResponse < 3) {
    o.instructions = buildUnnamed7376();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListInstructionsResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ListInstructionsResponse(
    api.GoogleCloudDatalabelingV1beta1ListInstructionsResponse o) {
  buildCounterGoogleCloudDatalabelingV1beta1ListInstructionsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListInstructionsResponse < 3) {
    checkUnnamed7376(o.instructions);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListInstructionsResponse--;
}

core.List<api.GoogleCloudDatalabelingV1beta1NormalizedVertex>
    buildUnnamed7377() {
  var o = <api.GoogleCloudDatalabelingV1beta1NormalizedVertex>[];
  o.add(buildGoogleCloudDatalabelingV1beta1NormalizedVertex());
  o.add(buildGoogleCloudDatalabelingV1beta1NormalizedVertex());
  return o;
}

void checkUnnamed7377(
    core.List<api.GoogleCloudDatalabelingV1beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1NormalizedVertex(
      o[0] as api.GoogleCloudDatalabelingV1beta1NormalizedVertex);
  checkGoogleCloudDatalabelingV1beta1NormalizedVertex(
      o[1] as api.GoogleCloudDatalabelingV1beta1NormalizedVertex);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly = 0;
api.GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly
    buildGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly() {
  var o = api.GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly();
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed7377();
  }
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly(
    api.GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly o) {
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly < 3) {
    checkUnnamed7377(o.normalizedVertices);
  }
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly--;
}

core.List<api.GoogleCloudDatalabelingV1beta1NormalizedVertex>
    buildUnnamed7378() {
  var o = <api.GoogleCloudDatalabelingV1beta1NormalizedVertex>[];
  o.add(buildGoogleCloudDatalabelingV1beta1NormalizedVertex());
  o.add(buildGoogleCloudDatalabelingV1beta1NormalizedVertex());
  return o;
}

void checkUnnamed7378(
    core.List<api.GoogleCloudDatalabelingV1beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1NormalizedVertex(
      o[0] as api.GoogleCloudDatalabelingV1beta1NormalizedVertex);
  checkGoogleCloudDatalabelingV1beta1NormalizedVertex(
      o[1] as api.GoogleCloudDatalabelingV1beta1NormalizedVertex);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1NormalizedPolyline = 0;
api.GoogleCloudDatalabelingV1beta1NormalizedPolyline
    buildGoogleCloudDatalabelingV1beta1NormalizedPolyline() {
  var o = api.GoogleCloudDatalabelingV1beta1NormalizedPolyline();
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedPolyline++;
  if (buildCounterGoogleCloudDatalabelingV1beta1NormalizedPolyline < 3) {
    o.normalizedVertices = buildUnnamed7378();
  }
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedPolyline--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1NormalizedPolyline(
    api.GoogleCloudDatalabelingV1beta1NormalizedPolyline o) {
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedPolyline++;
  if (buildCounterGoogleCloudDatalabelingV1beta1NormalizedPolyline < 3) {
    checkUnnamed7378(o.normalizedVertices);
  }
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedPolyline--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1NormalizedVertex = 0;
api.GoogleCloudDatalabelingV1beta1NormalizedVertex
    buildGoogleCloudDatalabelingV1beta1NormalizedVertex() {
  var o = api.GoogleCloudDatalabelingV1beta1NormalizedVertex();
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedVertex++;
  if (buildCounterGoogleCloudDatalabelingV1beta1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedVertex--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1NormalizedVertex(
    api.GoogleCloudDatalabelingV1beta1NormalizedVertex o) {
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedVertex++;
  if (buildCounterGoogleCloudDatalabelingV1beta1NormalizedVertex < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedVertex--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ObjectDetectionConfig = 0;
api.GoogleCloudDatalabelingV1beta1ObjectDetectionConfig
    buildGoogleCloudDatalabelingV1beta1ObjectDetectionConfig() {
  var o = api.GoogleCloudDatalabelingV1beta1ObjectDetectionConfig();
  buildCounterGoogleCloudDatalabelingV1beta1ObjectDetectionConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ObjectDetectionConfig < 3) {
    o.annotationSpecSet = 'foo';
    o.extractionFrameRate = 42.0;
  }
  buildCounterGoogleCloudDatalabelingV1beta1ObjectDetectionConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ObjectDetectionConfig(
    api.GoogleCloudDatalabelingV1beta1ObjectDetectionConfig o) {
  buildCounterGoogleCloudDatalabelingV1beta1ObjectDetectionConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ObjectDetectionConfig < 3) {
    unittest.expect(o.annotationSpecSet, unittest.equals('foo'));
    unittest.expect(o.extractionFrameRate, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ObjectDetectionConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ObjectDetectionMetrics = 0;
api.GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics
    buildGoogleCloudDatalabelingV1beta1ObjectDetectionMetrics() {
  var o = api.GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics();
  buildCounterGoogleCloudDatalabelingV1beta1ObjectDetectionMetrics++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ObjectDetectionMetrics < 3) {
    o.prCurve = buildGoogleCloudDatalabelingV1beta1PrCurve();
  }
  buildCounterGoogleCloudDatalabelingV1beta1ObjectDetectionMetrics--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ObjectDetectionMetrics(
    api.GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics o) {
  buildCounterGoogleCloudDatalabelingV1beta1ObjectDetectionMetrics++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ObjectDetectionMetrics < 3) {
    checkGoogleCloudDatalabelingV1beta1PrCurve(
        o.prCurve as api.GoogleCloudDatalabelingV1beta1PrCurve);
  }
  buildCounterGoogleCloudDatalabelingV1beta1ObjectDetectionMetrics--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ObjectTrackingConfig = 0;
api.GoogleCloudDatalabelingV1beta1ObjectTrackingConfig
    buildGoogleCloudDatalabelingV1beta1ObjectTrackingConfig() {
  var o = api.GoogleCloudDatalabelingV1beta1ObjectTrackingConfig();
  buildCounterGoogleCloudDatalabelingV1beta1ObjectTrackingConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ObjectTrackingConfig < 3) {
    o.annotationSpecSet = 'foo';
    o.clipLength = 42;
    o.overlapLength = 42;
  }
  buildCounterGoogleCloudDatalabelingV1beta1ObjectTrackingConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ObjectTrackingConfig(
    api.GoogleCloudDatalabelingV1beta1ObjectTrackingConfig o) {
  buildCounterGoogleCloudDatalabelingV1beta1ObjectTrackingConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ObjectTrackingConfig < 3) {
    unittest.expect(o.annotationSpecSet, unittest.equals('foo'));
    unittest.expect(o.clipLength, unittest.equals(42));
    unittest.expect(o.overlapLength, unittest.equals(42));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ObjectTrackingConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ObjectTrackingFrame = 0;
api.GoogleCloudDatalabelingV1beta1ObjectTrackingFrame
    buildGoogleCloudDatalabelingV1beta1ObjectTrackingFrame() {
  var o = api.GoogleCloudDatalabelingV1beta1ObjectTrackingFrame();
  buildCounterGoogleCloudDatalabelingV1beta1ObjectTrackingFrame++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ObjectTrackingFrame < 3) {
    o.boundingPoly = buildGoogleCloudDatalabelingV1beta1BoundingPoly();
    o.normalizedBoundingPoly =
        buildGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1ObjectTrackingFrame--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ObjectTrackingFrame(
    api.GoogleCloudDatalabelingV1beta1ObjectTrackingFrame o) {
  buildCounterGoogleCloudDatalabelingV1beta1ObjectTrackingFrame++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ObjectTrackingFrame < 3) {
    checkGoogleCloudDatalabelingV1beta1BoundingPoly(
        o.boundingPoly as api.GoogleCloudDatalabelingV1beta1BoundingPoly);
    checkGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly(
        o.normalizedBoundingPoly
            as api.GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1ObjectTrackingFrame--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata = 0;
api.GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata
    buildGoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata() {
  var o = api.GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata < 3) {}
  buildCounterGoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata(
    api.GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata o) {
  buildCounterGoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata < 3) {}
  buildCounterGoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata--;
}

core.List<core.String> buildUnnamed7379() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7379(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatalabelingV1beta1OperatorMetadata = 0;
api.GoogleCloudDatalabelingV1beta1OperatorMetadata
    buildGoogleCloudDatalabelingV1beta1OperatorMetadata() {
  var o = api.GoogleCloudDatalabelingV1beta1OperatorMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1OperatorMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1OperatorMetadata < 3) {
    o.comments = buildUnnamed7379();
    o.labelVotes = 42;
    o.score = 42.0;
    o.totalVotes = 42;
  }
  buildCounterGoogleCloudDatalabelingV1beta1OperatorMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1OperatorMetadata(
    api.GoogleCloudDatalabelingV1beta1OperatorMetadata o) {
  buildCounterGoogleCloudDatalabelingV1beta1OperatorMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1OperatorMetadata < 3) {
    checkUnnamed7379(o.comments);
    unittest.expect(o.labelVotes, unittest.equals(42));
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.totalVotes, unittest.equals(42));
  }
  buildCounterGoogleCloudDatalabelingV1beta1OperatorMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1OutputConfig = 0;
api.GoogleCloudDatalabelingV1beta1OutputConfig
    buildGoogleCloudDatalabelingV1beta1OutputConfig() {
  var o = api.GoogleCloudDatalabelingV1beta1OutputConfig();
  buildCounterGoogleCloudDatalabelingV1beta1OutputConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1OutputConfig < 3) {
    o.gcsDestination = buildGoogleCloudDatalabelingV1beta1GcsDestination();
    o.gcsFolderDestination =
        buildGoogleCloudDatalabelingV1beta1GcsFolderDestination();
  }
  buildCounterGoogleCloudDatalabelingV1beta1OutputConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1OutputConfig(
    api.GoogleCloudDatalabelingV1beta1OutputConfig o) {
  buildCounterGoogleCloudDatalabelingV1beta1OutputConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1OutputConfig < 3) {
    checkGoogleCloudDatalabelingV1beta1GcsDestination(
        o.gcsDestination as api.GoogleCloudDatalabelingV1beta1GcsDestination);
    checkGoogleCloudDatalabelingV1beta1GcsFolderDestination(
        o.gcsFolderDestination
            as api.GoogleCloudDatalabelingV1beta1GcsFolderDestination);
  }
  buildCounterGoogleCloudDatalabelingV1beta1OutputConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest =
    0;
api.GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest
    buildGoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest() {
  var o = api.GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest();
  buildCounterGoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest <
      3) {}
  buildCounterGoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest(
    api.GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest o) {
  buildCounterGoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest <
      3) {}
  buildCounterGoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1PdfInstruction = 0;
api.GoogleCloudDatalabelingV1beta1PdfInstruction
    buildGoogleCloudDatalabelingV1beta1PdfInstruction() {
  var o = api.GoogleCloudDatalabelingV1beta1PdfInstruction();
  buildCounterGoogleCloudDatalabelingV1beta1PdfInstruction++;
  if (buildCounterGoogleCloudDatalabelingV1beta1PdfInstruction < 3) {
    o.gcsFileUri = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1PdfInstruction--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1PdfInstruction(
    api.GoogleCloudDatalabelingV1beta1PdfInstruction o) {
  buildCounterGoogleCloudDatalabelingV1beta1PdfInstruction++;
  if (buildCounterGoogleCloudDatalabelingV1beta1PdfInstruction < 3) {
    unittest.expect(o.gcsFileUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1PdfInstruction--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Vertex> buildUnnamed7380() {
  var o = <api.GoogleCloudDatalabelingV1beta1Vertex>[];
  o.add(buildGoogleCloudDatalabelingV1beta1Vertex());
  o.add(buildGoogleCloudDatalabelingV1beta1Vertex());
  return o;
}

void checkUnnamed7380(core.List<api.GoogleCloudDatalabelingV1beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Vertex(
      o[0] as api.GoogleCloudDatalabelingV1beta1Vertex);
  checkGoogleCloudDatalabelingV1beta1Vertex(
      o[1] as api.GoogleCloudDatalabelingV1beta1Vertex);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1Polyline = 0;
api.GoogleCloudDatalabelingV1beta1Polyline
    buildGoogleCloudDatalabelingV1beta1Polyline() {
  var o = api.GoogleCloudDatalabelingV1beta1Polyline();
  buildCounterGoogleCloudDatalabelingV1beta1Polyline++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Polyline < 3) {
    o.vertices = buildUnnamed7380();
  }
  buildCounterGoogleCloudDatalabelingV1beta1Polyline--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1Polyline(
    api.GoogleCloudDatalabelingV1beta1Polyline o) {
  buildCounterGoogleCloudDatalabelingV1beta1Polyline++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Polyline < 3) {
    checkUnnamed7380(o.vertices);
  }
  buildCounterGoogleCloudDatalabelingV1beta1Polyline--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1PolylineConfig = 0;
api.GoogleCloudDatalabelingV1beta1PolylineConfig
    buildGoogleCloudDatalabelingV1beta1PolylineConfig() {
  var o = api.GoogleCloudDatalabelingV1beta1PolylineConfig();
  buildCounterGoogleCloudDatalabelingV1beta1PolylineConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1PolylineConfig < 3) {
    o.annotationSpecSet = 'foo';
    o.instructionMessage = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1PolylineConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1PolylineConfig(
    api.GoogleCloudDatalabelingV1beta1PolylineConfig o) {
  buildCounterGoogleCloudDatalabelingV1beta1PolylineConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1PolylineConfig < 3) {
    unittest.expect(o.annotationSpecSet, unittest.equals('foo'));
    unittest.expect(o.instructionMessage, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1PolylineConfig--;
}

core.List<api.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry>
    buildUnnamed7381() {
  var o = <api.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry>[];
  o.add(buildGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry());
  o.add(buildGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry());
  return o;
}

void checkUnnamed7381(
    core.List<api.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry(
      o[0] as api.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry);
  checkGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry(
      o[1] as api.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1PrCurve = 0;
api.GoogleCloudDatalabelingV1beta1PrCurve
    buildGoogleCloudDatalabelingV1beta1PrCurve() {
  var o = api.GoogleCloudDatalabelingV1beta1PrCurve();
  buildCounterGoogleCloudDatalabelingV1beta1PrCurve++;
  if (buildCounterGoogleCloudDatalabelingV1beta1PrCurve < 3) {
    o.annotationSpec = buildGoogleCloudDatalabelingV1beta1AnnotationSpec();
    o.areaUnderCurve = 42.0;
    o.confidenceMetricsEntries = buildUnnamed7381();
    o.meanAveragePrecision = 42.0;
  }
  buildCounterGoogleCloudDatalabelingV1beta1PrCurve--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1PrCurve(
    api.GoogleCloudDatalabelingV1beta1PrCurve o) {
  buildCounterGoogleCloudDatalabelingV1beta1PrCurve++;
  if (buildCounterGoogleCloudDatalabelingV1beta1PrCurve < 3) {
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(
        o.annotationSpec as api.GoogleCloudDatalabelingV1beta1AnnotationSpec);
    unittest.expect(o.areaUnderCurve, unittest.equals(42.0));
    checkUnnamed7381(o.confidenceMetricsEntries);
    unittest.expect(o.meanAveragePrecision, unittest.equals(42.0));
  }
  buildCounterGoogleCloudDatalabelingV1beta1PrCurve--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata =
    0;
api.GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata
    buildGoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata() {
  var o = api.GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata <
      3) {}
  buildCounterGoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata(
    api.GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata o) {
  buildCounterGoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata <
      3) {}
  buildCounterGoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest =
    0;
api.GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest
    buildGoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest() {
  var o = api.GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest();
  buildCounterGoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest <
      3) {}
  buildCounterGoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest(
    api.GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest o) {
  buildCounterGoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest <
      3) {}
  buildCounterGoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest--;
}

core.List<api.GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry>
    buildUnnamed7382() {
  var o = <api.GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry>[];
  o.add(buildGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry());
  o.add(buildGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry());
  return o;
}

void checkUnnamed7382(
    core.List<api.GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry(
      o[0] as api.GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry);
  checkGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry(
      o[1] as api.GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1Row = 0;
api.GoogleCloudDatalabelingV1beta1Row buildGoogleCloudDatalabelingV1beta1Row() {
  var o = api.GoogleCloudDatalabelingV1beta1Row();
  buildCounterGoogleCloudDatalabelingV1beta1Row++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Row < 3) {
    o.annotationSpec = buildGoogleCloudDatalabelingV1beta1AnnotationSpec();
    o.entries = buildUnnamed7382();
  }
  buildCounterGoogleCloudDatalabelingV1beta1Row--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1Row(
    api.GoogleCloudDatalabelingV1beta1Row o) {
  buildCounterGoogleCloudDatalabelingV1beta1Row++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Row < 3) {
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(
        o.annotationSpec as api.GoogleCloudDatalabelingV1beta1AnnotationSpec);
    checkUnnamed7382(o.entries);
  }
  buildCounterGoogleCloudDatalabelingV1beta1Row--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Evaluation> buildUnnamed7383() {
  var o = <api.GoogleCloudDatalabelingV1beta1Evaluation>[];
  o.add(buildGoogleCloudDatalabelingV1beta1Evaluation());
  o.add(buildGoogleCloudDatalabelingV1beta1Evaluation());
  return o;
}

void checkUnnamed7383(
    core.List<api.GoogleCloudDatalabelingV1beta1Evaluation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Evaluation(
      o[0] as api.GoogleCloudDatalabelingV1beta1Evaluation);
  checkGoogleCloudDatalabelingV1beta1Evaluation(
      o[1] as api.GoogleCloudDatalabelingV1beta1Evaluation);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse =
    0;
api.GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse
    buildGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse() {
  var o = api.GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse();
  buildCounterGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse < 3) {
    o.evaluations = buildUnnamed7383();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse(
    api.GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse o) {
  buildCounterGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse < 3) {
    checkUnnamed7383(o.evaluations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest =
    0;
api.GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest
    buildGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest() {
  var o = api.GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest();
  buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest <
      3) {
    o.pageSize = 42;
    o.pageToken = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest(
    api.GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest o) {
  buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest++;
  if (buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest <
      3) {
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest--;
}

core.List<api.GoogleCloudDatalabelingV1beta1ExampleComparison>
    buildUnnamed7384() {
  var o = <api.GoogleCloudDatalabelingV1beta1ExampleComparison>[];
  o.add(buildGoogleCloudDatalabelingV1beta1ExampleComparison());
  o.add(buildGoogleCloudDatalabelingV1beta1ExampleComparison());
  return o;
}

void checkUnnamed7384(
    core.List<api.GoogleCloudDatalabelingV1beta1ExampleComparison> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1ExampleComparison(
      o[0] as api.GoogleCloudDatalabelingV1beta1ExampleComparison);
  checkGoogleCloudDatalabelingV1beta1ExampleComparison(
      o[1] as api.GoogleCloudDatalabelingV1beta1ExampleComparison);
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse =
    0;
api.GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse
    buildGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse() {
  var o = api.GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse();
  buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse <
      3) {
    o.exampleComparisons = buildUnnamed7384();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse(
    api.GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse o) {
  buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse <
      3) {
    checkUnnamed7384(o.exampleComparisons);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1SegmentationConfig = 0;
api.GoogleCloudDatalabelingV1beta1SegmentationConfig
    buildGoogleCloudDatalabelingV1beta1SegmentationConfig() {
  var o = api.GoogleCloudDatalabelingV1beta1SegmentationConfig();
  buildCounterGoogleCloudDatalabelingV1beta1SegmentationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1SegmentationConfig < 3) {
    o.annotationSpecSet = 'foo';
    o.instructionMessage = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1SegmentationConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1SegmentationConfig(
    api.GoogleCloudDatalabelingV1beta1SegmentationConfig o) {
  buildCounterGoogleCloudDatalabelingV1beta1SegmentationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1SegmentationConfig < 3) {
    unittest.expect(o.annotationSpecSet, unittest.equals('foo'));
    unittest.expect(o.instructionMessage, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1SegmentationConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1SentimentConfig = 0;
api.GoogleCloudDatalabelingV1beta1SentimentConfig
    buildGoogleCloudDatalabelingV1beta1SentimentConfig() {
  var o = api.GoogleCloudDatalabelingV1beta1SentimentConfig();
  buildCounterGoogleCloudDatalabelingV1beta1SentimentConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1SentimentConfig < 3) {
    o.enableLabelSentimentSelection = true;
  }
  buildCounterGoogleCloudDatalabelingV1beta1SentimentConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1SentimentConfig(
    api.GoogleCloudDatalabelingV1beta1SentimentConfig o) {
  buildCounterGoogleCloudDatalabelingV1beta1SentimentConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1SentimentConfig < 3) {
    unittest.expect(o.enableLabelSentimentSelection, unittest.isTrue);
  }
  buildCounterGoogleCloudDatalabelingV1beta1SentimentConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1SequentialSegment = 0;
api.GoogleCloudDatalabelingV1beta1SequentialSegment
    buildGoogleCloudDatalabelingV1beta1SequentialSegment() {
  var o = api.GoogleCloudDatalabelingV1beta1SequentialSegment();
  buildCounterGoogleCloudDatalabelingV1beta1SequentialSegment++;
  if (buildCounterGoogleCloudDatalabelingV1beta1SequentialSegment < 3) {
    o.end = 42;
    o.start = 42;
  }
  buildCounterGoogleCloudDatalabelingV1beta1SequentialSegment--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1SequentialSegment(
    api.GoogleCloudDatalabelingV1beta1SequentialSegment o) {
  buildCounterGoogleCloudDatalabelingV1beta1SequentialSegment++;
  if (buildCounterGoogleCloudDatalabelingV1beta1SequentialSegment < 3) {
    unittest.expect(o.end, unittest.equals(42));
    unittest.expect(o.start, unittest.equals(42));
  }
  buildCounterGoogleCloudDatalabelingV1beta1SequentialSegment--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1TextClassificationAnnotation = 0;
api.GoogleCloudDatalabelingV1beta1TextClassificationAnnotation
    buildGoogleCloudDatalabelingV1beta1TextClassificationAnnotation() {
  var o = api.GoogleCloudDatalabelingV1beta1TextClassificationAnnotation();
  buildCounterGoogleCloudDatalabelingV1beta1TextClassificationAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1TextClassificationAnnotation <
      3) {
    o.annotationSpec = buildGoogleCloudDatalabelingV1beta1AnnotationSpec();
  }
  buildCounterGoogleCloudDatalabelingV1beta1TextClassificationAnnotation--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1TextClassificationAnnotation(
    api.GoogleCloudDatalabelingV1beta1TextClassificationAnnotation o) {
  buildCounterGoogleCloudDatalabelingV1beta1TextClassificationAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1TextClassificationAnnotation <
      3) {
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(
        o.annotationSpec as api.GoogleCloudDatalabelingV1beta1AnnotationSpec);
  }
  buildCounterGoogleCloudDatalabelingV1beta1TextClassificationAnnotation--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1TextClassificationConfig = 0;
api.GoogleCloudDatalabelingV1beta1TextClassificationConfig
    buildGoogleCloudDatalabelingV1beta1TextClassificationConfig() {
  var o = api.GoogleCloudDatalabelingV1beta1TextClassificationConfig();
  buildCounterGoogleCloudDatalabelingV1beta1TextClassificationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1TextClassificationConfig < 3) {
    o.allowMultiLabel = true;
    o.annotationSpecSet = 'foo';
    o.sentimentConfig = buildGoogleCloudDatalabelingV1beta1SentimentConfig();
  }
  buildCounterGoogleCloudDatalabelingV1beta1TextClassificationConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1TextClassificationConfig(
    api.GoogleCloudDatalabelingV1beta1TextClassificationConfig o) {
  buildCounterGoogleCloudDatalabelingV1beta1TextClassificationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1TextClassificationConfig < 3) {
    unittest.expect(o.allowMultiLabel, unittest.isTrue);
    unittest.expect(o.annotationSpecSet, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1beta1SentimentConfig(
        o.sentimentConfig as api.GoogleCloudDatalabelingV1beta1SentimentConfig);
  }
  buildCounterGoogleCloudDatalabelingV1beta1TextClassificationConfig--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation =
    0;
api.GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation
    buildGoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation() {
  var o = api.GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation();
  buildCounterGoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation <
      3) {
    o.annotationSpec = buildGoogleCloudDatalabelingV1beta1AnnotationSpec();
    o.sequentialSegment =
        buildGoogleCloudDatalabelingV1beta1SequentialSegment();
  }
  buildCounterGoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation(
    api.GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation o) {
  buildCounterGoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation <
      3) {
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(
        o.annotationSpec as api.GoogleCloudDatalabelingV1beta1AnnotationSpec);
    checkGoogleCloudDatalabelingV1beta1SequentialSegment(o.sequentialSegment
        as api.GoogleCloudDatalabelingV1beta1SequentialSegment);
  }
  buildCounterGoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig =
    0;
api.GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig
    buildGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig() {
  var o = api.GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig();
  buildCounterGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig <
      3) {
    o.annotationSpecSet = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig(
    api.GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig o) {
  buildCounterGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig <
      3) {
    unittest.expect(o.annotationSpecSet, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1TextMetadata = 0;
api.GoogleCloudDatalabelingV1beta1TextMetadata
    buildGoogleCloudDatalabelingV1beta1TextMetadata() {
  var o = api.GoogleCloudDatalabelingV1beta1TextMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1TextMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1TextMetadata < 3) {
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1TextMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1TextMetadata(
    api.GoogleCloudDatalabelingV1beta1TextMetadata o) {
  buildCounterGoogleCloudDatalabelingV1beta1TextMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1TextMetadata < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1TextMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1TextPayload = 0;
api.GoogleCloudDatalabelingV1beta1TextPayload
    buildGoogleCloudDatalabelingV1beta1TextPayload() {
  var o = api.GoogleCloudDatalabelingV1beta1TextPayload();
  buildCounterGoogleCloudDatalabelingV1beta1TextPayload++;
  if (buildCounterGoogleCloudDatalabelingV1beta1TextPayload < 3) {
    o.textContent = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1TextPayload--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1TextPayload(
    api.GoogleCloudDatalabelingV1beta1TextPayload o) {
  buildCounterGoogleCloudDatalabelingV1beta1TextPayload++;
  if (buildCounterGoogleCloudDatalabelingV1beta1TextPayload < 3) {
    unittest.expect(o.textContent, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1TextPayload--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1TimeSegment = 0;
api.GoogleCloudDatalabelingV1beta1TimeSegment
    buildGoogleCloudDatalabelingV1beta1TimeSegment() {
  var o = api.GoogleCloudDatalabelingV1beta1TimeSegment();
  buildCounterGoogleCloudDatalabelingV1beta1TimeSegment++;
  if (buildCounterGoogleCloudDatalabelingV1beta1TimeSegment < 3) {
    o.endTimeOffset = 'foo';
    o.startTimeOffset = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1TimeSegment--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1TimeSegment(
    api.GoogleCloudDatalabelingV1beta1TimeSegment o) {
  buildCounterGoogleCloudDatalabelingV1beta1TimeSegment++;
  if (buildCounterGoogleCloudDatalabelingV1beta1TimeSegment < 3) {
    unittest.expect(o.endTimeOffset, unittest.equals('foo'));
    unittest.expect(o.startTimeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1TimeSegment--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1Vertex = 0;
api.GoogleCloudDatalabelingV1beta1Vertex
    buildGoogleCloudDatalabelingV1beta1Vertex() {
  var o = api.GoogleCloudDatalabelingV1beta1Vertex();
  buildCounterGoogleCloudDatalabelingV1beta1Vertex++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudDatalabelingV1beta1Vertex--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1Vertex(
    api.GoogleCloudDatalabelingV1beta1Vertex o) {
  buildCounterGoogleCloudDatalabelingV1beta1Vertex++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Vertex < 3) {
    unittest.expect(o.x, unittest.equals(42));
    unittest.expect(o.y, unittest.equals(42));
  }
  buildCounterGoogleCloudDatalabelingV1beta1Vertex--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationAnnotation = 0;
api.GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation
    buildGoogleCloudDatalabelingV1beta1VideoClassificationAnnotation() {
  var o = api.GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation();
  buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationAnnotation <
      3) {
    o.annotationSpec = buildGoogleCloudDatalabelingV1beta1AnnotationSpec();
    o.timeSegment = buildGoogleCloudDatalabelingV1beta1TimeSegment();
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationAnnotation--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1VideoClassificationAnnotation(
    api.GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation o) {
  buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationAnnotation <
      3) {
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(
        o.annotationSpec as api.GoogleCloudDatalabelingV1beta1AnnotationSpec);
    checkGoogleCloudDatalabelingV1beta1TimeSegment(
        o.timeSegment as api.GoogleCloudDatalabelingV1beta1TimeSegment);
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationAnnotation--;
}

core.List<api.GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig>
    buildUnnamed7385() {
  var o = <api.GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig>[];
  o.add(buildGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig());
  o.add(buildGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig());
  return o;
}

void checkUnnamed7385(
    core.List<api.GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig(
      o[0] as api.GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig);
  checkGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig(
      o[1] as api.GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationConfig =
    0;
api.GoogleCloudDatalabelingV1beta1VideoClassificationConfig
    buildGoogleCloudDatalabelingV1beta1VideoClassificationConfig() {
  var o = api.GoogleCloudDatalabelingV1beta1VideoClassificationConfig();
  buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationConfig < 3) {
    o.annotationSpecSetConfigs = buildUnnamed7385();
    o.applyShotDetection = true;
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1VideoClassificationConfig(
    api.GoogleCloudDatalabelingV1beta1VideoClassificationConfig o) {
  buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationConfig < 3) {
    checkUnnamed7385(o.annotationSpecSetConfigs);
    unittest.expect(o.applyShotDetection, unittest.isTrue);
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1VideoEventAnnotation = 0;
api.GoogleCloudDatalabelingV1beta1VideoEventAnnotation
    buildGoogleCloudDatalabelingV1beta1VideoEventAnnotation() {
  var o = api.GoogleCloudDatalabelingV1beta1VideoEventAnnotation();
  buildCounterGoogleCloudDatalabelingV1beta1VideoEventAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1VideoEventAnnotation < 3) {
    o.annotationSpec = buildGoogleCloudDatalabelingV1beta1AnnotationSpec();
    o.timeSegment = buildGoogleCloudDatalabelingV1beta1TimeSegment();
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoEventAnnotation--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1VideoEventAnnotation(
    api.GoogleCloudDatalabelingV1beta1VideoEventAnnotation o) {
  buildCounterGoogleCloudDatalabelingV1beta1VideoEventAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1VideoEventAnnotation < 3) {
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(
        o.annotationSpec as api.GoogleCloudDatalabelingV1beta1AnnotationSpec);
    checkGoogleCloudDatalabelingV1beta1TimeSegment(
        o.timeSegment as api.GoogleCloudDatalabelingV1beta1TimeSegment);
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoEventAnnotation--;
}

core.List<api.GoogleCloudDatalabelingV1beta1ObjectTrackingFrame>
    buildUnnamed7386() {
  var o = <api.GoogleCloudDatalabelingV1beta1ObjectTrackingFrame>[];
  o.add(buildGoogleCloudDatalabelingV1beta1ObjectTrackingFrame());
  o.add(buildGoogleCloudDatalabelingV1beta1ObjectTrackingFrame());
  return o;
}

void checkUnnamed7386(
    core.List<api.GoogleCloudDatalabelingV1beta1ObjectTrackingFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1ObjectTrackingFrame(
      o[0] as api.GoogleCloudDatalabelingV1beta1ObjectTrackingFrame);
  checkGoogleCloudDatalabelingV1beta1ObjectTrackingFrame(
      o[1] as api.GoogleCloudDatalabelingV1beta1ObjectTrackingFrame);
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation = 0;
api.GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation
    buildGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation() {
  var o = api.GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation();
  buildCounterGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation <
      3) {
    o.annotationSpec = buildGoogleCloudDatalabelingV1beta1AnnotationSpec();
    o.objectTrackingFrames = buildUnnamed7386();
    o.timeSegment = buildGoogleCloudDatalabelingV1beta1TimeSegment();
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation(
    api.GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation o) {
  buildCounterGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation <
      3) {
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(
        o.annotationSpec as api.GoogleCloudDatalabelingV1beta1AnnotationSpec);
    checkUnnamed7386(o.objectTrackingFrames);
    checkGoogleCloudDatalabelingV1beta1TimeSegment(
        o.timeSegment as api.GoogleCloudDatalabelingV1beta1TimeSegment);
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation--;
}

core.List<api.GoogleCloudDatalabelingV1beta1VideoThumbnail> buildUnnamed7387() {
  var o = <api.GoogleCloudDatalabelingV1beta1VideoThumbnail>[];
  o.add(buildGoogleCloudDatalabelingV1beta1VideoThumbnail());
  o.add(buildGoogleCloudDatalabelingV1beta1VideoThumbnail());
  return o;
}

void checkUnnamed7387(
    core.List<api.GoogleCloudDatalabelingV1beta1VideoThumbnail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1VideoThumbnail(
      o[0] as api.GoogleCloudDatalabelingV1beta1VideoThumbnail);
  checkGoogleCloudDatalabelingV1beta1VideoThumbnail(
      o[1] as api.GoogleCloudDatalabelingV1beta1VideoThumbnail);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1VideoPayload = 0;
api.GoogleCloudDatalabelingV1beta1VideoPayload
    buildGoogleCloudDatalabelingV1beta1VideoPayload() {
  var o = api.GoogleCloudDatalabelingV1beta1VideoPayload();
  buildCounterGoogleCloudDatalabelingV1beta1VideoPayload++;
  if (buildCounterGoogleCloudDatalabelingV1beta1VideoPayload < 3) {
    o.frameRate = 42.0;
    o.mimeType = 'foo';
    o.signedUri = 'foo';
    o.videoThumbnails = buildUnnamed7387();
    o.videoUri = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoPayload--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1VideoPayload(
    api.GoogleCloudDatalabelingV1beta1VideoPayload o) {
  buildCounterGoogleCloudDatalabelingV1beta1VideoPayload++;
  if (buildCounterGoogleCloudDatalabelingV1beta1VideoPayload < 3) {
    unittest.expect(o.frameRate, unittest.equals(42.0));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.signedUri, unittest.equals('foo'));
    checkUnnamed7387(o.videoThumbnails);
    unittest.expect(o.videoUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoPayload--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1VideoThumbnail = 0;
api.GoogleCloudDatalabelingV1beta1VideoThumbnail
    buildGoogleCloudDatalabelingV1beta1VideoThumbnail() {
  var o = api.GoogleCloudDatalabelingV1beta1VideoThumbnail();
  buildCounterGoogleCloudDatalabelingV1beta1VideoThumbnail++;
  if (buildCounterGoogleCloudDatalabelingV1beta1VideoThumbnail < 3) {
    o.thumbnail = 'foo';
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoThumbnail--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1VideoThumbnail(
    api.GoogleCloudDatalabelingV1beta1VideoThumbnail o) {
  buildCounterGoogleCloudDatalabelingV1beta1VideoThumbnail++;
  if (buildCounterGoogleCloudDatalabelingV1beta1VideoThumbnail < 3) {
    unittest.expect(o.thumbnail, unittest.equals('foo'));
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoThumbnail--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7388() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7388(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int
    buildCounterGoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata = 0;
api.GoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata
    buildGoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata() {
  var o = api.GoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata();
  buildCounterGoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata <
      3) {
    o.createTime = 'foo';
    o.instruction = 'foo';
    o.partialFailures = buildUnnamed7388();
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata(
    api.GoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata <
      3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.instruction, unittest.equals('foo'));
    checkUnnamed7388(o.partialFailures);
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7389() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7389(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int
    buildCounterGoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata
    buildGoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata() {
  var o = api.GoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata <
      3) {
    o.annotatedDataset = 'foo';
    o.createTime = 'foo';
    o.dataset = 'foo';
    o.partialFailures = buildUnnamed7389();
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata(
    api.GoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata <
      3) {
    unittest.expect(o.annotatedDataset, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
    checkUnnamed7389(o.partialFailures);
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse =
    0;
api.GoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse
    buildGoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse() {
  var o = api.GoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse();
  buildCounterGoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse <
      3) {
    o.annotatedDataset = 'foo';
    o.dataset = 'foo';
    o.exportCount = 42;
    o.labelStats = buildGoogleCloudDatalabelingV1p1alpha1LabelStats();
    o.outputConfig = buildGoogleCloudDatalabelingV1p1alpha1OutputConfig();
    o.totalCount = 42;
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse(
    api.GoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse <
      3) {
    unittest.expect(o.annotatedDataset, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
    unittest.expect(o.exportCount, unittest.equals(42));
    checkGoogleCloudDatalabelingV1p1alpha1LabelStats(
        o.labelStats as api.GoogleCloudDatalabelingV1p1alpha1LabelStats);
    checkGoogleCloudDatalabelingV1p1alpha1OutputConfig(
        o.outputConfig as api.GoogleCloudDatalabelingV1p1alpha1OutputConfig);
    unittest.expect(o.totalCount, unittest.equals(42));
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse--;
}

core.int buildCounterGoogleCloudDatalabelingV1p1alpha1GcsDestination = 0;
api.GoogleCloudDatalabelingV1p1alpha1GcsDestination
    buildGoogleCloudDatalabelingV1p1alpha1GcsDestination() {
  var o = api.GoogleCloudDatalabelingV1p1alpha1GcsDestination();
  buildCounterGoogleCloudDatalabelingV1p1alpha1GcsDestination++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1GcsDestination < 3) {
    o.mimeType = 'foo';
    o.outputUri = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1GcsDestination--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1GcsDestination(
    api.GoogleCloudDatalabelingV1p1alpha1GcsDestination o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1GcsDestination++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1GcsDestination < 3) {
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.outputUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1GcsDestination--;
}

core.int buildCounterGoogleCloudDatalabelingV1p1alpha1GcsFolderDestination = 0;
api.GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination
    buildGoogleCloudDatalabelingV1p1alpha1GcsFolderDestination() {
  var o = api.GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination();
  buildCounterGoogleCloudDatalabelingV1p1alpha1GcsFolderDestination++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1GcsFolderDestination < 3) {
    o.outputFolderUri = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1GcsFolderDestination--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1GcsFolderDestination(
    api.GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1GcsFolderDestination++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1GcsFolderDestination < 3) {
    unittest.expect(o.outputFolderUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1GcsFolderDestination--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata
    buildGoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata <
      3) {
    o.createTime = 'foo';
    o.dataset = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata(
    api.GoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata <
      3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata--;
}

core.List<core.String> buildUnnamed7390() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7390(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig = 0;
api.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig
    buildGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig() {
  var o = api.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig();
  buildCounterGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig < 3) {
    o.annotatedDatasetDescription = 'foo';
    o.annotatedDatasetDisplayName = 'foo';
    o.contributorEmails = buildUnnamed7390();
    o.instruction = 'foo';
    o.labelGroup = 'foo';
    o.languageCode = 'foo';
    o.questionDuration = 'foo';
    o.replicaCount = 42;
    o.userEmailAddress = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig(
    api.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig < 3) {
    unittest.expect(o.annotatedDatasetDescription, unittest.equals('foo'));
    unittest.expect(o.annotatedDatasetDisplayName, unittest.equals('foo'));
    checkUnnamed7390(o.contributorEmails);
    unittest.expect(o.instruction, unittest.equals('foo'));
    unittest.expect(o.labelGroup, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.questionDuration, unittest.equals('foo'));
    unittest.expect(o.replicaCount, unittest.equals(42));
    unittest.expect(o.userEmailAddress, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7391() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7391(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int
    buildCounterGoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata
    buildGoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata() {
  var o = api.GoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata <
      3) {
    o.createTime = 'foo';
    o.dataset = 'foo';
    o.partialFailures = buildUnnamed7391();
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata(
    api.GoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata <
      3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
    checkUnnamed7391(o.partialFailures);
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse =
    0;
api.GoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse
    buildGoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse() {
  var o = api.GoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse();
  buildCounterGoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse <
      3) {
    o.dataset = 'foo';
    o.importCount = 42;
    o.totalCount = 42;
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse(
    api.GoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse <
      3) {
    unittest.expect(o.dataset, unittest.equals('foo'));
    unittest.expect(o.importCount, unittest.equals(42));
    unittest.expect(o.totalCount, unittest.equals(42));
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata
    buildGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata(
    api.GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata
    buildGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata(
    api.GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata
    buildGoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata(
    api.GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata
    buildGoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata(
    api.GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata
    buildGoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata(
    api.GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata
    buildGoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata(
    api.GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7392() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7392(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int buildCounterGoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata
    buildGoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata() {
  var o = api.GoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata < 3) {
    o.annotatedDataset = 'foo';
    o.createTime = 'foo';
    o.dataset = 'foo';
    o.imageBoundingBoxDetails =
        buildGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata();
    o.imageBoundingPolyDetails =
        buildGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata();
    o.imageClassificationDetails =
        buildGoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata();
    o.imageOrientedBoundingBoxDetails =
        buildGoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata();
    o.imagePolylineDetails =
        buildGoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata();
    o.imageSegmentationDetails =
        buildGoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata();
    o.partialFailures = buildUnnamed7392();
    o.progressPercent = 42;
    o.textClassificationDetails =
        buildGoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata();
    o.textEntityExtractionDetails =
        buildGoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata();
    o.videoClassificationDetails =
        buildGoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata();
    o.videoEventDetails =
        buildGoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata();
    o.videoObjectDetectionDetails =
        buildGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata();
    o.videoObjectTrackingDetails =
        buildGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata();
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata(
    api.GoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata < 3) {
    unittest.expect(o.annotatedDataset, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata(
        o.imageBoundingBoxDetails as api
            .GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata);
    checkGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata(
        o.imageBoundingPolyDetails as api
            .GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata);
    checkGoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata(
        o.imageClassificationDetails as api
            .GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata);
    checkGoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata(
        o.imageOrientedBoundingBoxDetails as api
            .GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata);
    checkGoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata(
        o.imagePolylineDetails as api
            .GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata);
    checkGoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata(
        o.imageSegmentationDetails as api
            .GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata);
    checkUnnamed7392(o.partialFailures);
    unittest.expect(o.progressPercent, unittest.equals(42));
    checkGoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata(
        o.textClassificationDetails as api
            .GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata);
    checkGoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata(
        o.textEntityExtractionDetails as api
            .GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata);
    checkGoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata(
        o.videoClassificationDetails as api
            .GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata);
    checkGoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata(
        o.videoEventDetails as api
            .GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata);
    checkGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata(
        o.videoObjectDetectionDetails as api
            .GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata);
    checkGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata(
        o.videoObjectTrackingDetails as api
            .GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata);
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata--;
}

core.Map<core.String, core.String> buildUnnamed7393() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7393(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatalabelingV1p1alpha1LabelStats = 0;
api.GoogleCloudDatalabelingV1p1alpha1LabelStats
    buildGoogleCloudDatalabelingV1p1alpha1LabelStats() {
  var o = api.GoogleCloudDatalabelingV1p1alpha1LabelStats();
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelStats++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelStats < 3) {
    o.exampleCount = buildUnnamed7393();
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelStats--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1LabelStats(
    api.GoogleCloudDatalabelingV1p1alpha1LabelStats o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelStats++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelStats < 3) {
    checkUnnamed7393(o.exampleCount);
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelStats--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata
    buildGoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata(
    api.GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata
    buildGoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata(
    api.GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata
    buildGoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata(
    api.GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata
    buildGoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata() {
  var o =
      api.GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata(
    api.GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata
    buildGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata(
    api.GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata
    buildGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata(
    api.GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1p1alpha1OutputConfig = 0;
api.GoogleCloudDatalabelingV1p1alpha1OutputConfig
    buildGoogleCloudDatalabelingV1p1alpha1OutputConfig() {
  var o = api.GoogleCloudDatalabelingV1p1alpha1OutputConfig();
  buildCounterGoogleCloudDatalabelingV1p1alpha1OutputConfig++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1OutputConfig < 3) {
    o.gcsDestination = buildGoogleCloudDatalabelingV1p1alpha1GcsDestination();
    o.gcsFolderDestination =
        buildGoogleCloudDatalabelingV1p1alpha1GcsFolderDestination();
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1OutputConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1p1alpha1OutputConfig(
    api.GoogleCloudDatalabelingV1p1alpha1OutputConfig o) {
  buildCounterGoogleCloudDatalabelingV1p1alpha1OutputConfig++;
  if (buildCounterGoogleCloudDatalabelingV1p1alpha1OutputConfig < 3) {
    checkGoogleCloudDatalabelingV1p1alpha1GcsDestination(o.gcsDestination
        as api.GoogleCloudDatalabelingV1p1alpha1GcsDestination);
    checkGoogleCloudDatalabelingV1p1alpha1GcsFolderDestination(
        o.gcsFolderDestination
            as api.GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination);
  }
  buildCounterGoogleCloudDatalabelingV1p1alpha1OutputConfig--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7394() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7394(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int
    buildCounterGoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata = 0;
api.GoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata
    buildGoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata() {
  var o = api.GoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata();
  buildCounterGoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata <
      3) {
    o.createTime = 'foo';
    o.instruction = 'foo';
    o.partialFailures = buildUnnamed7394();
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata(
    api.GoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata <
      3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.instruction, unittest.equals('foo'));
    checkUnnamed7394(o.partialFailures);
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7395() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7395(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int
    buildCounterGoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata
    buildGoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata() {
  var o = api.GoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata <
      3) {
    o.annotatedDataset = 'foo';
    o.createTime = 'foo';
    o.dataset = 'foo';
    o.partialFailures = buildUnnamed7395();
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata(
    api.GoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata <
      3) {
    unittest.expect(o.annotatedDataset, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
    checkUnnamed7395(o.partialFailures);
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse =
    0;
api.GoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse
    buildGoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse() {
  var o = api.GoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse();
  buildCounterGoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse <
      3) {
    o.annotatedDataset = 'foo';
    o.dataset = 'foo';
    o.exportCount = 42;
    o.labelStats = buildGoogleCloudDatalabelingV1p2alpha1LabelStats();
    o.outputConfig = buildGoogleCloudDatalabelingV1p2alpha1OutputConfig();
    o.totalCount = 42;
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse(
    api.GoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse <
      3) {
    unittest.expect(o.annotatedDataset, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
    unittest.expect(o.exportCount, unittest.equals(42));
    checkGoogleCloudDatalabelingV1p2alpha1LabelStats(
        o.labelStats as api.GoogleCloudDatalabelingV1p2alpha1LabelStats);
    checkGoogleCloudDatalabelingV1p2alpha1OutputConfig(
        o.outputConfig as api.GoogleCloudDatalabelingV1p2alpha1OutputConfig);
    unittest.expect(o.totalCount, unittest.equals(42));
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse--;
}

core.int buildCounterGoogleCloudDatalabelingV1p2alpha1GcsDestination = 0;
api.GoogleCloudDatalabelingV1p2alpha1GcsDestination
    buildGoogleCloudDatalabelingV1p2alpha1GcsDestination() {
  var o = api.GoogleCloudDatalabelingV1p2alpha1GcsDestination();
  buildCounterGoogleCloudDatalabelingV1p2alpha1GcsDestination++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1GcsDestination < 3) {
    o.mimeType = 'foo';
    o.outputUri = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1GcsDestination--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1GcsDestination(
    api.GoogleCloudDatalabelingV1p2alpha1GcsDestination o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1GcsDestination++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1GcsDestination < 3) {
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.outputUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1GcsDestination--;
}

core.int buildCounterGoogleCloudDatalabelingV1p2alpha1GcsFolderDestination = 0;
api.GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination
    buildGoogleCloudDatalabelingV1p2alpha1GcsFolderDestination() {
  var o = api.GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination();
  buildCounterGoogleCloudDatalabelingV1p2alpha1GcsFolderDestination++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1GcsFolderDestination < 3) {
    o.outputFolderUri = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1GcsFolderDestination--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1GcsFolderDestination(
    api.GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1GcsFolderDestination++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1GcsFolderDestination < 3) {
    unittest.expect(o.outputFolderUri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1GcsFolderDestination--;
}

core.List<core.String> buildUnnamed7396() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7396(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig = 0;
api.GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig
    buildGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig() {
  var o = api.GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig();
  buildCounterGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig < 3) {
    o.annotatedDatasetDescription = 'foo';
    o.annotatedDatasetDisplayName = 'foo';
    o.contributorEmails = buildUnnamed7396();
    o.instruction = 'foo';
    o.labelGroup = 'foo';
    o.languageCode = 'foo';
    o.questionDuration = 'foo';
    o.replicaCount = 42;
    o.userEmailAddress = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig(
    api.GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig < 3) {
    unittest.expect(o.annotatedDatasetDescription, unittest.equals('foo'));
    unittest.expect(o.annotatedDatasetDisplayName, unittest.equals('foo'));
    checkUnnamed7396(o.contributorEmails);
    unittest.expect(o.instruction, unittest.equals('foo'));
    unittest.expect(o.labelGroup, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.questionDuration, unittest.equals('foo'));
    unittest.expect(o.replicaCount, unittest.equals(42));
    unittest.expect(o.userEmailAddress, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7397() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7397(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int
    buildCounterGoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata
    buildGoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata() {
  var o = api.GoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata <
      3) {
    o.createTime = 'foo';
    o.dataset = 'foo';
    o.partialFailures = buildUnnamed7397();
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata(
    api.GoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata <
      3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
    checkUnnamed7397(o.partialFailures);
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse =
    0;
api.GoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse
    buildGoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse() {
  var o = api.GoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse();
  buildCounterGoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse <
      3) {
    o.dataset = 'foo';
    o.importCount = 42;
    o.totalCount = 42;
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse(
    api.GoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse <
      3) {
    unittest.expect(o.dataset, unittest.equals('foo'));
    unittest.expect(o.importCount, unittest.equals(42));
    unittest.expect(o.totalCount, unittest.equals(42));
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata
    buildGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata(
    api.GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata
    buildGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata(
    api.GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata
    buildGoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata(
    api.GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata
    buildGoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata(
    api.GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata
    buildGoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata(
    api.GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata
    buildGoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata(
    api.GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata--;
}

core.List<api.GoogleRpcStatus> buildUnnamed7398() {
  var o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed7398(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0] as api.GoogleRpcStatus);
  checkGoogleRpcStatus(o[1] as api.GoogleRpcStatus);
}

core.int buildCounterGoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata
    buildGoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata() {
  var o = api.GoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata < 3) {
    o.annotatedDataset = 'foo';
    o.createTime = 'foo';
    o.dataset = 'foo';
    o.imageBoundingBoxDetails =
        buildGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata();
    o.imageBoundingPolyDetails =
        buildGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata();
    o.imageClassificationDetails =
        buildGoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata();
    o.imageOrientedBoundingBoxDetails =
        buildGoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata();
    o.imagePolylineDetails =
        buildGoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata();
    o.imageSegmentationDetails =
        buildGoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata();
    o.partialFailures = buildUnnamed7398();
    o.progressPercent = 42;
    o.textClassificationDetails =
        buildGoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata();
    o.textEntityExtractionDetails =
        buildGoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata();
    o.videoClassificationDetails =
        buildGoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata();
    o.videoEventDetails =
        buildGoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata();
    o.videoObjectDetectionDetails =
        buildGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata();
    o.videoObjectTrackingDetails =
        buildGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata();
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata(
    api.GoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata < 3) {
    unittest.expect(o.annotatedDataset, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
    checkGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata(
        o.imageBoundingBoxDetails as api
            .GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata);
    checkGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata(
        o.imageBoundingPolyDetails as api
            .GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata);
    checkGoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata(
        o.imageClassificationDetails as api
            .GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata);
    checkGoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata(
        o.imageOrientedBoundingBoxDetails as api
            .GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata);
    checkGoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata(
        o.imagePolylineDetails as api
            .GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata);
    checkGoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata(
        o.imageSegmentationDetails as api
            .GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata);
    checkUnnamed7398(o.partialFailures);
    unittest.expect(o.progressPercent, unittest.equals(42));
    checkGoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata(
        o.textClassificationDetails as api
            .GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata);
    checkGoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata(
        o.textEntityExtractionDetails as api
            .GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata);
    checkGoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata(
        o.videoClassificationDetails as api
            .GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata);
    checkGoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata(
        o.videoEventDetails as api
            .GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata);
    checkGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata(
        o.videoObjectDetectionDetails as api
            .GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata);
    checkGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata(
        o.videoObjectTrackingDetails as api
            .GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata);
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata--;
}

core.Map<core.String, core.String> buildUnnamed7399() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7399(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudDatalabelingV1p2alpha1LabelStats = 0;
api.GoogleCloudDatalabelingV1p2alpha1LabelStats
    buildGoogleCloudDatalabelingV1p2alpha1LabelStats() {
  var o = api.GoogleCloudDatalabelingV1p2alpha1LabelStats();
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelStats++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelStats < 3) {
    o.exampleCount = buildUnnamed7399();
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelStats--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1LabelStats(
    api.GoogleCloudDatalabelingV1p2alpha1LabelStats o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelStats++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelStats < 3) {
    checkUnnamed7399(o.exampleCount);
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelStats--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata
    buildGoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata(
    api.GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata
    buildGoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata(
    api.GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata
    buildGoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata(
    api.GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata
    buildGoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata() {
  var o =
      api.GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata(
    api.GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata
    buildGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata(
    api.GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata =
    0;
api.GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata
    buildGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata() {
  var o = api
      .GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata();
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata <
      3) {
    o.basicConfig =
        buildGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig();
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata(
    api.GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata
        o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata <
      3) {
    checkGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig(o.basicConfig
        as api.GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig);
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1p2alpha1OutputConfig = 0;
api.GoogleCloudDatalabelingV1p2alpha1OutputConfig
    buildGoogleCloudDatalabelingV1p2alpha1OutputConfig() {
  var o = api.GoogleCloudDatalabelingV1p2alpha1OutputConfig();
  buildCounterGoogleCloudDatalabelingV1p2alpha1OutputConfig++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1OutputConfig < 3) {
    o.gcsDestination = buildGoogleCloudDatalabelingV1p2alpha1GcsDestination();
    o.gcsFolderDestination =
        buildGoogleCloudDatalabelingV1p2alpha1GcsFolderDestination();
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1OutputConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1p2alpha1OutputConfig(
    api.GoogleCloudDatalabelingV1p2alpha1OutputConfig o) {
  buildCounterGoogleCloudDatalabelingV1p2alpha1OutputConfig++;
  if (buildCounterGoogleCloudDatalabelingV1p2alpha1OutputConfig < 3) {
    checkGoogleCloudDatalabelingV1p2alpha1GcsDestination(o.gcsDestination
        as api.GoogleCloudDatalabelingV1p2alpha1GcsDestination);
    checkGoogleCloudDatalabelingV1p2alpha1GcsFolderDestination(
        o.gcsFolderDestination
            as api.GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination);
  }
  buildCounterGoogleCloudDatalabelingV1p2alpha1OutputConfig--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed7400() {
  var o = <api.GoogleLongrunningOperation>[];
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

void checkUnnamed7400(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0] as api.GoogleLongrunningOperation);
  checkGoogleLongrunningOperation(o[1] as api.GoogleLongrunningOperation);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  var o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed7400();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7400(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed7401() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7401(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed7402() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7402(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  var o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed7401();
    o.name = 'foo';
    o.response = buildUnnamed7402();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error as api.GoogleRpcStatus);
    checkUnnamed7401(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed7402(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  var o = api.GoogleProtobufEmpty();
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

core.Map<core.String, core.Object> buildUnnamed7403() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7403(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed7404() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7403());
  o.add(buildUnnamed7403());
  return o;
}

void checkUnnamed7404(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7403(o[0]);
  checkUnnamed7403(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  var o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed7404();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed7404(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

void main() {
  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1CreateInstructionMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1alpha1CreateInstructionMetadata();
      var od =
          api.GoogleCloudDatalabelingV1alpha1CreateInstructionMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1alpha1CreateInstructionMetadata(
          od as api.GoogleCloudDatalabelingV1alpha1CreateInstructionMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata();
      var od = api.GoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata(
          od as api.GoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1ExportDataOperationResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1alpha1ExportDataOperationResponse();
      var od = api.GoogleCloudDatalabelingV1alpha1ExportDataOperationResponse
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1alpha1ExportDataOperationResponse(
          od as api.GoogleCloudDatalabelingV1alpha1ExportDataOperationResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1alpha1GcsDestination',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1alpha1GcsDestination();
      var od = api.GoogleCloudDatalabelingV1alpha1GcsDestination.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1alpha1GcsDestination(
          od as api.GoogleCloudDatalabelingV1alpha1GcsDestination);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1GcsFolderDestination', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1alpha1GcsFolderDestination();
      var od = api.GoogleCloudDatalabelingV1alpha1GcsFolderDestination.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1alpha1GcsFolderDestination(
          od as api.GoogleCloudDatalabelingV1alpha1GcsFolderDestination);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig();
      var od =
          api.GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1alpha1HumanAnnotationConfig(
          od as api.GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata();
      var od = api.GoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata(
          od as api.GoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1ImportDataOperationResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1alpha1ImportDataOperationResponse();
      var od = api.GoogleCloudDatalabelingV1alpha1ImportDataOperationResponse
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1alpha1ImportDataOperationResponse(
          od as api.GoogleCloudDatalabelingV1alpha1ImportDataOperationResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata(od
          as api
              .GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1LabelOperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1alpha1LabelOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1alpha1LabelOperationMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1alpha1LabelOperationMetadata(
          od as api.GoogleCloudDatalabelingV1alpha1LabelOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1alpha1LabelStats', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1alpha1LabelStats();
      var od =
          api.GoogleCloudDatalabelingV1alpha1LabelStats.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1alpha1LabelStats(
          od as api.GoogleCloudDatalabelingV1alpha1LabelStats);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata(od
          as api
              .GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1alpha1OutputConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1alpha1OutputConfig();
      var od =
          api.GoogleCloudDatalabelingV1alpha1OutputConfig.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1alpha1OutputConfig(
          od as api.GoogleCloudDatalabelingV1alpha1OutputConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1AnnotatedDataset',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1AnnotatedDataset();
      var od = api.GoogleCloudDatalabelingV1beta1AnnotatedDataset.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1AnnotatedDataset(
          od as api.GoogleCloudDatalabelingV1beta1AnnotatedDataset);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata(
          od as api.GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1Annotation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1Annotation();
      var od =
          api.GoogleCloudDatalabelingV1beta1Annotation.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1Annotation(
          od as api.GoogleCloudDatalabelingV1beta1Annotation);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1AnnotationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1AnnotationMetadata();
      var od = api.GoogleCloudDatalabelingV1beta1AnnotationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1AnnotationMetadata(
          od as api.GoogleCloudDatalabelingV1beta1AnnotationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1AnnotationSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1AnnotationSpec();
      var od =
          api.GoogleCloudDatalabelingV1beta1AnnotationSpec.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1AnnotationSpec(
          od as api.GoogleCloudDatalabelingV1beta1AnnotationSpec);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1AnnotationSpecSet',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1AnnotationSpecSet();
      var od = api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1AnnotationSpecSet(
          od as api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig();
      var od =
          api.GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig(
          od as api.GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1AnnotationValue',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1AnnotationValue();
      var od = api.GoogleCloudDatalabelingV1beta1AnnotationValue.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1AnnotationValue(
          od as api.GoogleCloudDatalabelingV1beta1AnnotationValue);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1Attempt', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1Attempt();
      var od = api.GoogleCloudDatalabelingV1beta1Attempt.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1Attempt(
          od as api.GoogleCloudDatalabelingV1beta1Attempt);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1BigQuerySource', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1BigQuerySource();
      var od =
          api.GoogleCloudDatalabelingV1beta1BigQuerySource.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1BigQuerySource(
          od as api.GoogleCloudDatalabelingV1beta1BigQuerySource);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions();
      var od = api.GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions(
          od as api.GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1BoundingPoly', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1BoundingPoly();
      var od =
          api.GoogleCloudDatalabelingV1beta1BoundingPoly.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1BoundingPoly(
          od as api.GoogleCloudDatalabelingV1beta1BoundingPoly);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1BoundingPolyConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1BoundingPolyConfig();
      var od = api.GoogleCloudDatalabelingV1beta1BoundingPolyConfig.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1BoundingPolyConfig(
          od as api.GoogleCloudDatalabelingV1beta1BoundingPolyConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ClassificationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ClassificationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1ClassificationMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1ClassificationMetadata(
          od as api.GoogleCloudDatalabelingV1beta1ClassificationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ClassificationMetrics', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ClassificationMetrics();
      var od = api.GoogleCloudDatalabelingV1beta1ClassificationMetrics.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1ClassificationMetrics(
          od as api.GoogleCloudDatalabelingV1beta1ClassificationMetrics);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry();
      var od =
          api.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry(
          od as api.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1ConfusionMatrix',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ConfusionMatrix();
      var od = api.GoogleCloudDatalabelingV1beta1ConfusionMatrix.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1ConfusionMatrix(
          od as api.GoogleCloudDatalabelingV1beta1ConfusionMatrix);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry();
      var od = api.GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry(
          od as api.GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest();
      var od = api.GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest(od
          as api.GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1CreateDatasetRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1CreateDatasetRequest();
      var od = api.GoogleCloudDatalabelingV1beta1CreateDatasetRequest.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1CreateDatasetRequest(
          od as api.GoogleCloudDatalabelingV1beta1CreateDatasetRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest();
      var od =
          api.GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest(
          od as api.GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1CreateInstructionMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1CreateInstructionMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1CreateInstructionMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1CreateInstructionMetadata(
          od as api.GoogleCloudDatalabelingV1beta1CreateInstructionMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1CreateInstructionRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1CreateInstructionRequest();
      var od =
          api.GoogleCloudDatalabelingV1beta1CreateInstructionRequest.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1CreateInstructionRequest(
          od as api.GoogleCloudDatalabelingV1beta1CreateInstructionRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1CsvInstruction', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1CsvInstruction();
      var od =
          api.GoogleCloudDatalabelingV1beta1CsvInstruction.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1CsvInstruction(
          od as api.GoogleCloudDatalabelingV1beta1CsvInstruction);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1DataItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1DataItem();
      var od = api.GoogleCloudDatalabelingV1beta1DataItem.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1DataItem(
          od as api.GoogleCloudDatalabelingV1beta1DataItem);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1Dataset', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1Dataset();
      var od = api.GoogleCloudDatalabelingV1beta1Dataset.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1Dataset(
          od as api.GoogleCloudDatalabelingV1beta1Dataset);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1Evaluation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1Evaluation();
      var od =
          api.GoogleCloudDatalabelingV1beta1Evaluation.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1Evaluation(
          od as api.GoogleCloudDatalabelingV1beta1Evaluation);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1EvaluationConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1EvaluationConfig();
      var od = api.GoogleCloudDatalabelingV1beta1EvaluationConfig.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1EvaluationConfig(
          od as api.GoogleCloudDatalabelingV1beta1EvaluationConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1EvaluationJob', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1EvaluationJob();
      var od =
          api.GoogleCloudDatalabelingV1beta1EvaluationJob.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1EvaluationJob(
          od as api.GoogleCloudDatalabelingV1beta1EvaluationJob);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig();
      var od =
          api.GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig(
          od as api.GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1EvaluationJobConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1EvaluationJobConfig();
      var od = api.GoogleCloudDatalabelingV1beta1EvaluationJobConfig.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1EvaluationJobConfig(
          od as api.GoogleCloudDatalabelingV1beta1EvaluationJobConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1EvaluationMetrics',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1EvaluationMetrics();
      var od = api.GoogleCloudDatalabelingV1beta1EvaluationMetrics.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1EvaluationMetrics(
          od as api.GoogleCloudDatalabelingV1beta1EvaluationMetrics);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1EventConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1EventConfig();
      var od =
          api.GoogleCloudDatalabelingV1beta1EventConfig.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1EventConfig(
          od as api.GoogleCloudDatalabelingV1beta1EventConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1Example', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1Example();
      var od = api.GoogleCloudDatalabelingV1beta1Example.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1Example(
          od as api.GoogleCloudDatalabelingV1beta1Example);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1ExampleComparison',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ExampleComparison();
      var od = api.GoogleCloudDatalabelingV1beta1ExampleComparison.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1ExampleComparison(
          od as api.GoogleCloudDatalabelingV1beta1ExampleComparison);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ExportDataOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ExportDataOperationMetadata();
      var od = api.GoogleCloudDatalabelingV1beta1ExportDataOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1ExportDataOperationMetadata(
          od as api.GoogleCloudDatalabelingV1beta1ExportDataOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ExportDataOperationResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ExportDataOperationResponse();
      var od = api.GoogleCloudDatalabelingV1beta1ExportDataOperationResponse
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1ExportDataOperationResponse(
          od as api.GoogleCloudDatalabelingV1beta1ExportDataOperationResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1ExportDataRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ExportDataRequest();
      var od = api.GoogleCloudDatalabelingV1beta1ExportDataRequest.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1ExportDataRequest(
          od as api.GoogleCloudDatalabelingV1beta1ExportDataRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1FeedbackMessage',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1FeedbackMessage();
      var od = api.GoogleCloudDatalabelingV1beta1FeedbackMessage.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1FeedbackMessage(
          od as api.GoogleCloudDatalabelingV1beta1FeedbackMessage);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1FeedbackThread', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1FeedbackThread();
      var od =
          api.GoogleCloudDatalabelingV1beta1FeedbackThread.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1FeedbackThread(
          od as api.GoogleCloudDatalabelingV1beta1FeedbackThread);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1FeedbackThreadMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1FeedbackThreadMetadata(
          od as api.GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1GcsDestination', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1GcsDestination();
      var od =
          api.GoogleCloudDatalabelingV1beta1GcsDestination.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1GcsDestination(
          od as api.GoogleCloudDatalabelingV1beta1GcsDestination);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1GcsFolderDestination', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1GcsFolderDestination();
      var od = api.GoogleCloudDatalabelingV1beta1GcsFolderDestination.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1GcsFolderDestination(
          od as api.GoogleCloudDatalabelingV1beta1GcsFolderDestination);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1GcsSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1GcsSource();
      var od = api.GoogleCloudDatalabelingV1beta1GcsSource.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1GcsSource(
          od as api.GoogleCloudDatalabelingV1beta1GcsSource);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1HumanAnnotationConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
      var od = api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(
          od as api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation();
      var od = api.GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation(
          od as api.GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1ImageClassificationAnnotation();
      var od = api.GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1ImageClassificationAnnotation(od
          as api.GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ImageClassificationConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ImageClassificationConfig();
      var od =
          api.GoogleCloudDatalabelingV1beta1ImageClassificationConfig.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1ImageClassificationConfig(
          od as api.GoogleCloudDatalabelingV1beta1ImageClassificationConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1ImagePayload', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ImagePayload();
      var od =
          api.GoogleCloudDatalabelingV1beta1ImagePayload.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1ImagePayload(
          od as api.GoogleCloudDatalabelingV1beta1ImagePayload);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ImagePolylineAnnotation();
      var od =
          api.GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1ImagePolylineAnnotation(
          od as api.GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation();
      var od = api.GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation(
          od as api.GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ImportDataOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ImportDataOperationMetadata();
      var od = api.GoogleCloudDatalabelingV1beta1ImportDataOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1ImportDataOperationMetadata(
          od as api.GoogleCloudDatalabelingV1beta1ImportDataOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ImportDataOperationResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ImportDataOperationResponse();
      var od = api.GoogleCloudDatalabelingV1beta1ImportDataOperationResponse
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1ImportDataOperationResponse(
          od as api.GoogleCloudDatalabelingV1beta1ImportDataOperationResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1ImportDataRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ImportDataRequest();
      var od = api.GoogleCloudDatalabelingV1beta1ImportDataRequest.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1ImportDataRequest(
          od as api.GoogleCloudDatalabelingV1beta1ImportDataRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1InputConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1InputConfig();
      var od =
          api.GoogleCloudDatalabelingV1beta1InputConfig.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1InputConfig(
          od as api.GoogleCloudDatalabelingV1beta1InputConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1Instruction', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1Instruction();
      var od =
          api.GoogleCloudDatalabelingV1beta1Instruction.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1Instruction(
          od as api.GoogleCloudDatalabelingV1beta1Instruction);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata(od
          as api
              .GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1LabelImageRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1LabelImageRequest();
      var od = api.GoogleCloudDatalabelingV1beta1LabelImageRequest.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1LabelImageRequest(
          od as api.GoogleCloudDatalabelingV1beta1LabelImageRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1LabelOperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1LabelOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1LabelOperationMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1LabelOperationMetadata(
          od as api.GoogleCloudDatalabelingV1beta1LabelOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1LabelStats', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1LabelStats();
      var od =
          api.GoogleCloudDatalabelingV1beta1LabelStats.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1LabelStats(
          od as api.GoogleCloudDatalabelingV1beta1LabelStats);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1LabelTextRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1LabelTextRequest();
      var od = api.GoogleCloudDatalabelingV1beta1LabelTextRequest.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1LabelTextRequest(
          od as api.GoogleCloudDatalabelingV1beta1LabelTextRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata(od
          as api
              .GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1LabelVideoRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1LabelVideoRequest();
      var od = api.GoogleCloudDatalabelingV1beta1LabelVideoRequest.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1LabelVideoRequest(
          od as api.GoogleCloudDatalabelingV1beta1LabelVideoRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse();
      var od = api.GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse(od
          as api.GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse();
      var od = api.GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse(od
          as api.GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ListDataItemsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ListDataItemsResponse();
      var od = api.GoogleCloudDatalabelingV1beta1ListDataItemsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1ListDataItemsResponse(
          od as api.GoogleCloudDatalabelingV1beta1ListDataItemsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ListDatasetsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ListDatasetsResponse();
      var od = api.GoogleCloudDatalabelingV1beta1ListDatasetsResponse.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1ListDatasetsResponse(
          od as api.GoogleCloudDatalabelingV1beta1ListDatasetsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse();
      var od =
          api.GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse(
          od as api.GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ListExamplesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ListExamplesResponse();
      var od = api.GoogleCloudDatalabelingV1beta1ListExamplesResponse.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1ListExamplesResponse(
          od as api.GoogleCloudDatalabelingV1beta1ListExamplesResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse();
      var od = api.GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse(
          od as api.GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse();
      var od = api.GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse(
          od as api.GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ListInstructionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ListInstructionsResponse();
      var od =
          api.GoogleCloudDatalabelingV1beta1ListInstructionsResponse.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1ListInstructionsResponse(
          od as api.GoogleCloudDatalabelingV1beta1ListInstructionsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly();
      var od =
          api.GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly(
          od as api.GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1NormalizedPolyline',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1NormalizedPolyline();
      var od = api.GoogleCloudDatalabelingV1beta1NormalizedPolyline.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1NormalizedPolyline(
          od as api.GoogleCloudDatalabelingV1beta1NormalizedPolyline);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1NormalizedVertex',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1NormalizedVertex();
      var od = api.GoogleCloudDatalabelingV1beta1NormalizedVertex.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1NormalizedVertex(
          od as api.GoogleCloudDatalabelingV1beta1NormalizedVertex);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ObjectDetectionConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ObjectDetectionConfig();
      var od = api.GoogleCloudDatalabelingV1beta1ObjectDetectionConfig.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1ObjectDetectionConfig(
          od as api.GoogleCloudDatalabelingV1beta1ObjectDetectionConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ObjectDetectionMetrics();
      var od =
          api.GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1ObjectDetectionMetrics(
          od as api.GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ObjectTrackingConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ObjectTrackingConfig();
      var od = api.GoogleCloudDatalabelingV1beta1ObjectTrackingConfig.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1ObjectTrackingConfig(
          od as api.GoogleCloudDatalabelingV1beta1ObjectTrackingConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1ObjectTrackingFrame',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ObjectTrackingFrame();
      var od = api.GoogleCloudDatalabelingV1beta1ObjectTrackingFrame.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1ObjectTrackingFrame(
          od as api.GoogleCloudDatalabelingV1beta1ObjectTrackingFrame);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata(
          od as api.GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1OperatorMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1OperatorMetadata();
      var od = api.GoogleCloudDatalabelingV1beta1OperatorMetadata.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1OperatorMetadata(
          od as api.GoogleCloudDatalabelingV1beta1OperatorMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1OutputConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1OutputConfig();
      var od =
          api.GoogleCloudDatalabelingV1beta1OutputConfig.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1OutputConfig(
          od as api.GoogleCloudDatalabelingV1beta1OutputConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest();
      var od =
          api.GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest(
          od as api.GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1PdfInstruction', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1PdfInstruction();
      var od =
          api.GoogleCloudDatalabelingV1beta1PdfInstruction.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1PdfInstruction(
          od as api.GoogleCloudDatalabelingV1beta1PdfInstruction);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1Polyline', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1Polyline();
      var od = api.GoogleCloudDatalabelingV1beta1Polyline.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1Polyline(
          od as api.GoogleCloudDatalabelingV1beta1Polyline);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1PolylineConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1PolylineConfig();
      var od =
          api.GoogleCloudDatalabelingV1beta1PolylineConfig.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1PolylineConfig(
          od as api.GoogleCloudDatalabelingV1beta1PolylineConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1PrCurve', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1PrCurve();
      var od = api.GoogleCloudDatalabelingV1beta1PrCurve.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1PrCurve(
          od as api.GoogleCloudDatalabelingV1beta1PrCurve);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata(
          od as api.GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest();
      var od =
          api.GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest(
          od as api.GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1Row', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1Row();
      var od = api.GoogleCloudDatalabelingV1beta1Row.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1Row(
          od as api.GoogleCloudDatalabelingV1beta1Row);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse();
      var od =
          api.GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse(
          od as api.GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest();
      var od = api.GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest(od
          as api.GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse();
      var od =
          api.GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse(od
          as api
              .GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1SegmentationConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1SegmentationConfig();
      var od = api.GoogleCloudDatalabelingV1beta1SegmentationConfig.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1SegmentationConfig(
          od as api.GoogleCloudDatalabelingV1beta1SegmentationConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1SentimentConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1SentimentConfig();
      var od = api.GoogleCloudDatalabelingV1beta1SentimentConfig.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1SentimentConfig(
          od as api.GoogleCloudDatalabelingV1beta1SentimentConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1SequentialSegment',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1SequentialSegment();
      var od = api.GoogleCloudDatalabelingV1beta1SequentialSegment.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1SequentialSegment(
          od as api.GoogleCloudDatalabelingV1beta1SequentialSegment);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1TextClassificationAnnotation',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1TextClassificationAnnotation();
      var od = api.GoogleCloudDatalabelingV1beta1TextClassificationAnnotation
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1TextClassificationAnnotation(
          od as api.GoogleCloudDatalabelingV1beta1TextClassificationAnnotation);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1TextClassificationConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1TextClassificationConfig();
      var od =
          api.GoogleCloudDatalabelingV1beta1TextClassificationConfig.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1TextClassificationConfig(
          od as api.GoogleCloudDatalabelingV1beta1TextClassificationConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation();
      var od = api.GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation(od
          as api.GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig();
      var od =
          api.GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig(
          od as api.GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1TextMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1TextMetadata();
      var od =
          api.GoogleCloudDatalabelingV1beta1TextMetadata.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1TextMetadata(
          od as api.GoogleCloudDatalabelingV1beta1TextMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1TextPayload', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1TextPayload();
      var od =
          api.GoogleCloudDatalabelingV1beta1TextPayload.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1TextPayload(
          od as api.GoogleCloudDatalabelingV1beta1TextPayload);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1TimeSegment', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1TimeSegment();
      var od =
          api.GoogleCloudDatalabelingV1beta1TimeSegment.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1TimeSegment(
          od as api.GoogleCloudDatalabelingV1beta1TimeSegment);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1Vertex', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1Vertex();
      var od = api.GoogleCloudDatalabelingV1beta1Vertex.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1Vertex(
          od as api.GoogleCloudDatalabelingV1beta1Vertex);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1VideoClassificationAnnotation();
      var od = api.GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1VideoClassificationAnnotation(od
          as api.GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1VideoClassificationConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1VideoClassificationConfig();
      var od =
          api.GoogleCloudDatalabelingV1beta1VideoClassificationConfig.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1beta1VideoClassificationConfig(
          od as api.GoogleCloudDatalabelingV1beta1VideoClassificationConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1VideoEventAnnotation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1VideoEventAnnotation();
      var od = api.GoogleCloudDatalabelingV1beta1VideoEventAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1beta1VideoEventAnnotation(
          od as api.GoogleCloudDatalabelingV1beta1VideoEventAnnotation);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation();
      var od = api.GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation(od
          as api.GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1VideoPayload', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1VideoPayload();
      var od =
          api.GoogleCloudDatalabelingV1beta1VideoPayload.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1VideoPayload(
          od as api.GoogleCloudDatalabelingV1beta1VideoPayload);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1VideoThumbnail', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1beta1VideoThumbnail();
      var od =
          api.GoogleCloudDatalabelingV1beta1VideoThumbnail.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1beta1VideoThumbnail(
          od as api.GoogleCloudDatalabelingV1beta1VideoThumbnail);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata();
      var od = api.GoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata(
          od as api.GoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata();
      var od = api.GoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata(od
          as api.GoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse();
      var od = api.GoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse(od
          as api.GoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1p1alpha1GcsDestination',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1p1alpha1GcsDestination();
      var od = api.GoogleCloudDatalabelingV1p1alpha1GcsDestination.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1GcsDestination(
          od as api.GoogleCloudDatalabelingV1p1alpha1GcsDestination);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1p1alpha1GcsFolderDestination();
      var od =
          api.GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1GcsFolderDestination(
          od as api.GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig();
      var od =
          api.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig(
          od as api.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata();
      var od = api.GoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata(od
          as api.GoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse();
      var od = api.GoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse(od
          as api.GoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata(
          od as api.GoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1p1alpha1LabelStats', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1p1alpha1LabelStats();
      var od =
          api.GoogleCloudDatalabelingV1p1alpha1LabelStats.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1LabelStats(
          od as api.GoogleCloudDatalabelingV1p1alpha1LabelStats);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata(od
          as api
              .GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1p1alpha1OutputConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1p1alpha1OutputConfig();
      var od = api.GoogleCloudDatalabelingV1p1alpha1OutputConfig.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1p1alpha1OutputConfig(
          od as api.GoogleCloudDatalabelingV1p1alpha1OutputConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata();
      var od = api.GoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata(
          od as api.GoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata();
      var od = api.GoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata(od
          as api.GoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse();
      var od = api.GoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse(od
          as api.GoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1p2alpha1GcsDestination',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1p2alpha1GcsDestination();
      var od = api.GoogleCloudDatalabelingV1p2alpha1GcsDestination.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1GcsDestination(
          od as api.GoogleCloudDatalabelingV1p2alpha1GcsDestination);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1p2alpha1GcsFolderDestination();
      var od =
          api.GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1GcsFolderDestination(
          od as api.GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig();
      var od =
          api.GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig(
          od as api.GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata();
      var od = api.GoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata(od
          as api.GoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse();
      var od = api.GoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse
          .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse(od
          as api.GoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata.fromJson(
              o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata(
          od as api.GoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1p2alpha1LabelStats', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1p2alpha1LabelStats();
      var od =
          api.GoogleCloudDatalabelingV1p2alpha1LabelStats.fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1LabelStats(
          od as api.GoogleCloudDatalabelingV1p2alpha1LabelStats);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata(od
          as api
              .GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata();
      var od =
          api.GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata
              .fromJson(o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata(
          od as api
              .GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1p2alpha1OutputConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudDatalabelingV1p2alpha1OutputConfig();
      var od = api.GoogleCloudDatalabelingV1p2alpha1OutputConfig.fromJson(
          o.toJson());
      checkGoogleCloudDatalabelingV1p2alpha1OutputConfig(
          od as api.GoogleCloudDatalabelingV1p2alpha1OutputConfig);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleLongrunningListOperationsResponse();
      var od = api.GoogleLongrunningListOperationsResponse.fromJson(o.toJson());
      checkGoogleLongrunningListOperationsResponse(
          od as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleLongrunningOperation();
      var od = api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleProtobufEmpty();
      var od = api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleRpcStatus();
      var od = api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od as api.GoogleRpcStatus);
    });
  });

  unittest.group('resource-ProjectsAnnotationSpecSetsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.annotationSpecSets;
      var arg_request =
          buildGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest(obj
            as api
                .GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatalabelingV1beta1AnnotationSpecSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1AnnotationSpecSet(
            response as api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.annotationSpecSets;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.annotationSpecSets;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatalabelingV1beta1AnnotationSpecSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1AnnotationSpecSet(
            response as api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.annotationSpecSets;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse(
            response as api
                .GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsDatasetsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.datasets;
      var arg_request =
          buildGoogleCloudDatalabelingV1beta1CreateDatasetRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDatalabelingV1beta1CreateDatasetRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1CreateDatasetRequest(
            obj as api.GoogleCloudDatalabelingV1beta1CreateDatasetRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatalabelingV1beta1Dataset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1Dataset(
            response as api.GoogleCloudDatalabelingV1beta1Dataset);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.datasets;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--exportData', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.datasets;
      var arg_request = buildGoogleCloudDatalabelingV1beta1ExportDataRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatalabelingV1beta1ExportDataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1ExportDataRequest(
            obj as api.GoogleCloudDatalabelingV1beta1ExportDataRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .exportData(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.datasets;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatalabelingV1beta1Dataset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1Dataset(
            response as api.GoogleCloudDatalabelingV1beta1Dataset);
      })));
    });

    unittest.test('method--importData', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.datasets;
      var arg_request = buildGoogleCloudDatalabelingV1beta1ImportDataRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatalabelingV1beta1ImportDataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1ImportDataRequest(
            obj as api.GoogleCloudDatalabelingV1beta1ImportDataRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .importData(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.datasets;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatalabelingV1beta1ListDatasetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1ListDatasetsResponse(
            response as api.GoogleCloudDatalabelingV1beta1ListDatasetsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsDatasetsAnnotatedDatasetsResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.datasets.annotatedDatasets;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.datasets.annotatedDatasets;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatalabelingV1beta1AnnotatedDataset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1AnnotatedDataset(
            response as api.GoogleCloudDatalabelingV1beta1AnnotatedDataset);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.datasets.annotatedDatasets;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse(
            response as api
                .GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsDatasetsAnnotatedDatasetsDataItemsResource',
      () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .dataItems;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatalabelingV1beta1DataItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1DataItem(
            response as api.GoogleCloudDatalabelingV1beta1DataItem);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .dataItems;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatalabelingV1beta1ListDataItemsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1ListDataItemsResponse(response
            as api.GoogleCloudDatalabelingV1beta1ListDataItemsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsDatasetsAnnotatedDatasetsExamplesResource',
      () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .examples;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatalabelingV1beta1Example());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, filter: arg_filter, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1Example(
            response as api.GoogleCloudDatalabelingV1beta1Example);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .examples;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatalabelingV1beta1ListExamplesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1ListExamplesResponse(
            response as api.GoogleCloudDatalabelingV1beta1ListExamplesResponse);
      })));
    });
  });

  unittest.group(
      'resource-ProjectsDatasetsAnnotatedDatasetsFeedbackThreadsResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .feedbackThreads;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .feedbackThreads;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatalabelingV1beta1FeedbackThread());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1FeedbackThread(
            response as api.GoogleCloudDatalabelingV1beta1FeedbackThread);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .feedbackThreads;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse(response
            as api.GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse);
      })));
    });
  });

  unittest.group(
      'resource-ProjectsDatasetsAnnotatedDatasetsFeedbackThreadsFeedbackMessagesResource',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .feedbackThreads
          .feedbackMessages;
      var arg_request = buildGoogleCloudDatalabelingV1beta1FeedbackMessage();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatalabelingV1beta1FeedbackMessage.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1FeedbackMessage(
            obj as api.GoogleCloudDatalabelingV1beta1FeedbackMessage);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .feedbackThreads
          .feedbackMessages;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .feedbackThreads
          .feedbackMessages;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatalabelingV1beta1FeedbackMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1FeedbackMessage(
            response as api.GoogleCloudDatalabelingV1beta1FeedbackMessage);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .feedbackThreads
          .feedbackMessages;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse(response
            as api.GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsDatasetsDataItemsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.datasets.dataItems;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudDatalabelingV1beta1DataItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1DataItem(
            response as api.GoogleCloudDatalabelingV1beta1DataItem);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.datasets.dataItems;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatalabelingV1beta1ListDataItemsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1ListDataItemsResponse(response
            as api.GoogleCloudDatalabelingV1beta1ListDataItemsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsDatasetsEvaluationsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.datasets.evaluations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatalabelingV1beta1Evaluation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1Evaluation(
            response as api.GoogleCloudDatalabelingV1beta1Evaluation);
      })));
    });
  });

  unittest.group(
      'resource-ProjectsDatasetsEvaluationsExampleComparisonsResource', () {
    unittest.test('method--search', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .evaluations
          .exampleComparisons;
      var arg_request =
          buildGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest(obj
            as api
                .GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse(
            response as api
                .GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsDatasetsImageResource', () {
    unittest.test('method--label', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.datasets.image;
      var arg_request = buildGoogleCloudDatalabelingV1beta1LabelImageRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatalabelingV1beta1LabelImageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1LabelImageRequest(
            obj as api.GoogleCloudDatalabelingV1beta1LabelImageRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .label(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });
  });

  unittest.group('resource-ProjectsDatasetsTextResource', () {
    unittest.test('method--label', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.datasets.text;
      var arg_request = buildGoogleCloudDatalabelingV1beta1LabelTextRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatalabelingV1beta1LabelTextRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1LabelTextRequest(
            obj as api.GoogleCloudDatalabelingV1beta1LabelTextRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .label(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });
  });

  unittest.group('resource-ProjectsDatasetsVideoResource', () {
    unittest.test('method--label', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.datasets.video;
      var arg_request = buildGoogleCloudDatalabelingV1beta1LabelVideoRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatalabelingV1beta1LabelVideoRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1LabelVideoRequest(
            obj as api.GoogleCloudDatalabelingV1beta1LabelVideoRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .label(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });
  });

  unittest.group('resource-ProjectsEvaluationJobsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.evaluationJobs;
      var arg_request =
          buildGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest(obj
            as api.GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatalabelingV1beta1EvaluationJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1EvaluationJob(
            response as api.GoogleCloudDatalabelingV1beta1EvaluationJob);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.evaluationJobs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.evaluationJobs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatalabelingV1beta1EvaluationJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1EvaluationJob(
            response as api.GoogleCloudDatalabelingV1beta1EvaluationJob);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.evaluationJobs;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse(response
            as api.GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.evaluationJobs;
      var arg_request = buildGoogleCloudDatalabelingV1beta1EvaluationJob();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatalabelingV1beta1EvaluationJob.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1EvaluationJob(
            obj as api.GoogleCloudDatalabelingV1beta1EvaluationJob);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatalabelingV1beta1EvaluationJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1EvaluationJob(
            response as api.GoogleCloudDatalabelingV1beta1EvaluationJob);
      })));
    });

    unittest.test('method--pause', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.evaluationJobs;
      var arg_request =
          buildGoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest(
            obj as api.GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .pause(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--resume', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.evaluationJobs;
      var arg_request =
          buildGoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest(obj
            as api.GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resume(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });
  });

  unittest.group('resource-ProjectsEvaluationsResource', () {
    unittest.test('method--search', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.evaluations;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse(response
            as api.GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsInstructionsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.instructions;
      var arg_request =
          buildGoogleCloudDatalabelingV1beta1CreateInstructionRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudDatalabelingV1beta1CreateInstructionRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1CreateInstructionRequest(
            obj as api.GoogleCloudDatalabelingV1beta1CreateInstructionRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.instructions;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.instructions;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudDatalabelingV1beta1Instruction());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1Instruction(
            response as api.GoogleCloudDatalabelingV1beta1Instruction);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.instructions;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudDatalabelingV1beta1ListInstructionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudDatalabelingV1beta1ListInstructionsResponse(response
            as api.GoogleCloudDatalabelingV1beta1ListInstructionsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsOperationsResource', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DataLabelingApi(mock).projects.operations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(
            response as api.GoogleLongrunningListOperationsResponse);
      })));
    });
  });
}
