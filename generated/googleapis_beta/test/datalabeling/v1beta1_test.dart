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

import 'package:googleapis_beta/datalabeling/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.int buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDataset = 0;
api.GoogleCloudDatalabelingV1beta1AnnotatedDataset
    buildGoogleCloudDatalabelingV1beta1AnnotatedDataset() {
  final o = api.GoogleCloudDatalabelingV1beta1AnnotatedDataset();
  buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDataset++;
  if (buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDataset < 3) {
    o.annotationSource = 'foo';
    o.annotationType = 'foo';
    o.blockingResources = buildUnnamed0();
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
    unittest.expect(
      o.annotationSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.annotationType!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.blockingResources!);
    unittest.expect(
      o.completedExampleCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exampleCount!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatalabelingV1beta1LabelStats(o.labelStats!);
    checkGoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDataset--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata = 0;
api.GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata
    buildGoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata() {
  final o = api.GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata();
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
    checkGoogleCloudDatalabelingV1beta1BoundingPolyConfig(
        o.boundingPolyConfig!);
    checkGoogleCloudDatalabelingV1beta1EventConfig(o.eventConfig!);
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(
        o.humanAnnotationConfig!);
    checkGoogleCloudDatalabelingV1beta1ImageClassificationConfig(
        o.imageClassificationConfig!);
    checkGoogleCloudDatalabelingV1beta1ObjectDetectionConfig(
        o.objectDetectionConfig!);
    checkGoogleCloudDatalabelingV1beta1ObjectTrackingConfig(
        o.objectTrackingConfig!);
    checkGoogleCloudDatalabelingV1beta1PolylineConfig(o.polylineConfig!);
    checkGoogleCloudDatalabelingV1beta1SegmentationConfig(
        o.segmentationConfig!);
    checkGoogleCloudDatalabelingV1beta1TextClassificationConfig(
        o.textClassificationConfig!);
    checkGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig(
        o.textEntityExtractionConfig!);
    checkGoogleCloudDatalabelingV1beta1VideoClassificationConfig(
        o.videoClassificationConfig!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1Annotation = 0;
api.GoogleCloudDatalabelingV1beta1Annotation
    buildGoogleCloudDatalabelingV1beta1Annotation() {
  final o = api.GoogleCloudDatalabelingV1beta1Annotation();
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
    checkGoogleCloudDatalabelingV1beta1AnnotationMetadata(
        o.annotationMetadata!);
    unittest.expect(
      o.annotationSentiment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.annotationSource!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatalabelingV1beta1AnnotationValue(o.annotationValue!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1Annotation--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1AnnotationMetadata = 0;
api.GoogleCloudDatalabelingV1beta1AnnotationMetadata
    buildGoogleCloudDatalabelingV1beta1AnnotationMetadata() {
  final o = api.GoogleCloudDatalabelingV1beta1AnnotationMetadata();
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
    checkGoogleCloudDatalabelingV1beta1OperatorMetadata(o.operatorMetadata!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpec = 0;
api.GoogleCloudDatalabelingV1beta1AnnotationSpec
    buildGoogleCloudDatalabelingV1beta1AnnotationSpec() {
  final o = api.GoogleCloudDatalabelingV1beta1AnnotationSpec();
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpec--;
}

core.List<api.GoogleCloudDatalabelingV1beta1AnnotationSpec> buildUnnamed1() => [
      buildGoogleCloudDatalabelingV1beta1AnnotationSpec(),
      buildGoogleCloudDatalabelingV1beta1AnnotationSpec(),
    ];

void checkUnnamed1(
    core.List<api.GoogleCloudDatalabelingV1beta1AnnotationSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1AnnotationSpec(o[0]);
  checkGoogleCloudDatalabelingV1beta1AnnotationSpec(o[1]);
}

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSet = 0;
api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet
    buildGoogleCloudDatalabelingV1beta1AnnotationSpecSet() {
  final o = api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet();
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSet++;
  if (buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSet < 3) {
    o.annotationSpecs = buildUnnamed1();
    o.blockingResources = buildUnnamed2();
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
    checkUnnamed1(o.annotationSpecs!);
    checkUnnamed2(o.blockingResources!);
    unittest.expect(
      o.description!,
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
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSet--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig = 0;
api.GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig
    buildGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig() {
  final o = api.GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig();
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
    unittest.expect(o.allowMultiLabel!, unittest.isTrue);
    unittest.expect(
      o.annotationSpecSet!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1AnnotationValue = 0;
api.GoogleCloudDatalabelingV1beta1AnnotationValue
    buildGoogleCloudDatalabelingV1beta1AnnotationValue() {
  final o = api.GoogleCloudDatalabelingV1beta1AnnotationValue();
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
        o.imageBoundingPolyAnnotation!);
    checkGoogleCloudDatalabelingV1beta1ImageClassificationAnnotation(
        o.imageClassificationAnnotation!);
    checkGoogleCloudDatalabelingV1beta1ImagePolylineAnnotation(
        o.imagePolylineAnnotation!);
    checkGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation(
        o.imageSegmentationAnnotation!);
    checkGoogleCloudDatalabelingV1beta1TextClassificationAnnotation(
        o.textClassificationAnnotation!);
    checkGoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation(
        o.textEntityExtractionAnnotation!);
    checkGoogleCloudDatalabelingV1beta1VideoClassificationAnnotation(
        o.videoClassificationAnnotation!);
    checkGoogleCloudDatalabelingV1beta1VideoEventAnnotation(
        o.videoEventAnnotation!);
    checkGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation(
        o.videoObjectTrackingAnnotation!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1AnnotationValue--;
}

core.List<api.GoogleRpcStatus> buildUnnamed3() => [
      buildGoogleRpcStatus(),
      buildGoogleRpcStatus(),
    ];

void checkUnnamed3(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1Attempt = 0;
api.GoogleCloudDatalabelingV1beta1Attempt
    buildGoogleCloudDatalabelingV1beta1Attempt() {
  final o = api.GoogleCloudDatalabelingV1beta1Attempt();
  buildCounterGoogleCloudDatalabelingV1beta1Attempt++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Attempt < 3) {
    o.attemptTime = 'foo';
    o.partialFailures = buildUnnamed3();
  }
  buildCounterGoogleCloudDatalabelingV1beta1Attempt--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1Attempt(
    api.GoogleCloudDatalabelingV1beta1Attempt o) {
  buildCounterGoogleCloudDatalabelingV1beta1Attempt++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Attempt < 3) {
    unittest.expect(
      o.attemptTime!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.partialFailures!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1Attempt--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1BigQuerySource = 0;
api.GoogleCloudDatalabelingV1beta1BigQuerySource
    buildGoogleCloudDatalabelingV1beta1BigQuerySource() {
  final o = api.GoogleCloudDatalabelingV1beta1BigQuerySource();
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
    unittest.expect(
      o.inputUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1BigQuerySource--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions = 0;
api.GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions
    buildGoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions() {
  final o = api.GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions();
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
    unittest.expect(
      o.iouThreshold!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Vertex> buildUnnamed4() => [
      buildGoogleCloudDatalabelingV1beta1Vertex(),
      buildGoogleCloudDatalabelingV1beta1Vertex(),
    ];

void checkUnnamed4(core.List<api.GoogleCloudDatalabelingV1beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Vertex(o[0]);
  checkGoogleCloudDatalabelingV1beta1Vertex(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1BoundingPoly = 0;
api.GoogleCloudDatalabelingV1beta1BoundingPoly
    buildGoogleCloudDatalabelingV1beta1BoundingPoly() {
  final o = api.GoogleCloudDatalabelingV1beta1BoundingPoly();
  buildCounterGoogleCloudDatalabelingV1beta1BoundingPoly++;
  if (buildCounterGoogleCloudDatalabelingV1beta1BoundingPoly < 3) {
    o.vertices = buildUnnamed4();
  }
  buildCounterGoogleCloudDatalabelingV1beta1BoundingPoly--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1BoundingPoly(
    api.GoogleCloudDatalabelingV1beta1BoundingPoly o) {
  buildCounterGoogleCloudDatalabelingV1beta1BoundingPoly++;
  if (buildCounterGoogleCloudDatalabelingV1beta1BoundingPoly < 3) {
    checkUnnamed4(o.vertices!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1BoundingPoly--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1BoundingPolyConfig = 0;
api.GoogleCloudDatalabelingV1beta1BoundingPolyConfig
    buildGoogleCloudDatalabelingV1beta1BoundingPolyConfig() {
  final o = api.GoogleCloudDatalabelingV1beta1BoundingPolyConfig();
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
    unittest.expect(
      o.annotationSpecSet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instructionMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1BoundingPolyConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ClassificationMetadata = 0;
api.GoogleCloudDatalabelingV1beta1ClassificationMetadata
    buildGoogleCloudDatalabelingV1beta1ClassificationMetadata() {
  final o = api.GoogleCloudDatalabelingV1beta1ClassificationMetadata();
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
    unittest.expect(o.isMultiLabel!, unittest.isTrue);
  }
  buildCounterGoogleCloudDatalabelingV1beta1ClassificationMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ClassificationMetrics = 0;
api.GoogleCloudDatalabelingV1beta1ClassificationMetrics
    buildGoogleCloudDatalabelingV1beta1ClassificationMetrics() {
  final o = api.GoogleCloudDatalabelingV1beta1ClassificationMetrics();
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
    checkGoogleCloudDatalabelingV1beta1ConfusionMatrix(o.confusionMatrix!);
    checkGoogleCloudDatalabelingV1beta1PrCurve(o.prCurve!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1ClassificationMetrics--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry = 0;
api.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry
    buildGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry() {
  final o = api.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry();
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
    unittest.expect(
      o.confidenceThreshold!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.f1Score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.f1ScoreAt1!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.f1ScoreAt5!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.precision!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.precisionAt1!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.precisionAt5!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.recall!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.recallAt1!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.recallAt5!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Row> buildUnnamed5() => [
      buildGoogleCloudDatalabelingV1beta1Row(),
      buildGoogleCloudDatalabelingV1beta1Row(),
    ];

void checkUnnamed5(core.List<api.GoogleCloudDatalabelingV1beta1Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Row(o[0]);
  checkGoogleCloudDatalabelingV1beta1Row(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrix = 0;
api.GoogleCloudDatalabelingV1beta1ConfusionMatrix
    buildGoogleCloudDatalabelingV1beta1ConfusionMatrix() {
  final o = api.GoogleCloudDatalabelingV1beta1ConfusionMatrix();
  buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrix++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrix < 3) {
    o.row = buildUnnamed5();
  }
  buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrix--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ConfusionMatrix(
    api.GoogleCloudDatalabelingV1beta1ConfusionMatrix o) {
  buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrix++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrix < 3) {
    checkUnnamed5(o.row!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrix--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry = 0;
api.GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry
    buildGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry() {
  final o = api.GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry();
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
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(o.annotationSpec!);
    unittest.expect(
      o.itemCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest =
    0;
api.GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest
    buildGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest() {
  final o = api.GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest();
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
    checkGoogleCloudDatalabelingV1beta1AnnotationSpecSet(o.annotationSpecSet!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1CreateDatasetRequest = 0;
api.GoogleCloudDatalabelingV1beta1CreateDatasetRequest
    buildGoogleCloudDatalabelingV1beta1CreateDatasetRequest() {
  final o = api.GoogleCloudDatalabelingV1beta1CreateDatasetRequest();
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
    checkGoogleCloudDatalabelingV1beta1Dataset(o.dataset!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1CreateDatasetRequest--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest =
    0;
api.GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest
    buildGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest() {
  final o = api.GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest();
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
    checkGoogleCloudDatalabelingV1beta1EvaluationJob(o.job!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1CreateInstructionRequest = 0;
api.GoogleCloudDatalabelingV1beta1CreateInstructionRequest
    buildGoogleCloudDatalabelingV1beta1CreateInstructionRequest() {
  final o = api.GoogleCloudDatalabelingV1beta1CreateInstructionRequest();
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
    checkGoogleCloudDatalabelingV1beta1Instruction(o.instruction!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1CreateInstructionRequest--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1CsvInstruction = 0;
api.GoogleCloudDatalabelingV1beta1CsvInstruction
    buildGoogleCloudDatalabelingV1beta1CsvInstruction() {
  final o = api.GoogleCloudDatalabelingV1beta1CsvInstruction();
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
    unittest.expect(
      o.gcsFileUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1CsvInstruction--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1DataItem = 0;
api.GoogleCloudDatalabelingV1beta1DataItem
    buildGoogleCloudDatalabelingV1beta1DataItem() {
  final o = api.GoogleCloudDatalabelingV1beta1DataItem();
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
    checkGoogleCloudDatalabelingV1beta1ImagePayload(o.imagePayload!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatalabelingV1beta1TextPayload(o.textPayload!);
    checkGoogleCloudDatalabelingV1beta1VideoPayload(o.videoPayload!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1DataItem--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.List<api.GoogleCloudDatalabelingV1beta1InputConfig> buildUnnamed7() => [
      buildGoogleCloudDatalabelingV1beta1InputConfig(),
      buildGoogleCloudDatalabelingV1beta1InputConfig(),
    ];

void checkUnnamed7(core.List<api.GoogleCloudDatalabelingV1beta1InputConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1InputConfig(o[0]);
  checkGoogleCloudDatalabelingV1beta1InputConfig(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1Dataset = 0;
api.GoogleCloudDatalabelingV1beta1Dataset
    buildGoogleCloudDatalabelingV1beta1Dataset() {
  final o = api.GoogleCloudDatalabelingV1beta1Dataset();
  buildCounterGoogleCloudDatalabelingV1beta1Dataset++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Dataset < 3) {
    o.blockingResources = buildUnnamed6();
    o.createTime = 'foo';
    o.dataItemCount = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.inputConfigs = buildUnnamed7();
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
    checkUnnamed6(o.blockingResources!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataItemCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.inputConfigs!);
    unittest.expect(
      o.lastMigrateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1Dataset--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1Evaluation = 0;
api.GoogleCloudDatalabelingV1beta1Evaluation
    buildGoogleCloudDatalabelingV1beta1Evaluation() {
  final o = api.GoogleCloudDatalabelingV1beta1Evaluation();
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
    unittest.expect(
      o.annotationType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatalabelingV1beta1EvaluationConfig(o.config!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.evaluatedItemCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.evaluationJobRunTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatalabelingV1beta1EvaluationMetrics(o.evaluationMetrics!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1Evaluation--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1EvaluationConfig = 0;
api.GoogleCloudDatalabelingV1beta1EvaluationConfig
    buildGoogleCloudDatalabelingV1beta1EvaluationConfig() {
  final o = api.GoogleCloudDatalabelingV1beta1EvaluationConfig();
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
        o.boundingBoxEvaluationOptions!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationConfig--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Attempt> buildUnnamed8() => [
      buildGoogleCloudDatalabelingV1beta1Attempt(),
      buildGoogleCloudDatalabelingV1beta1Attempt(),
    ];

void checkUnnamed8(core.List<api.GoogleCloudDatalabelingV1beta1Attempt> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Attempt(o[0]);
  checkGoogleCloudDatalabelingV1beta1Attempt(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1EvaluationJob = 0;
api.GoogleCloudDatalabelingV1beta1EvaluationJob
    buildGoogleCloudDatalabelingV1beta1EvaluationJob() {
  final o = api.GoogleCloudDatalabelingV1beta1EvaluationJob();
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationJob++;
  if (buildCounterGoogleCloudDatalabelingV1beta1EvaluationJob < 3) {
    o.annotationSpecSet = 'foo';
    o.attempts = buildUnnamed8();
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
    unittest.expect(
      o.annotationSpecSet!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.attempts!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatalabelingV1beta1EvaluationJobConfig(
        o.evaluationJobConfig!);
    unittest.expect(o.labelMissingGroundTruth!, unittest.isTrue);
    unittest.expect(
      o.modelVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.schedule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationJob--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig = 0;
api.GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig
    buildGoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig() {
  final o = api.GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig();
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
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minAcceptableMeanAveragePrecision!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig--;
}

core.Map<core.String, core.String> buildUnnamed9() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed9(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobConfig = 0;
api.GoogleCloudDatalabelingV1beta1EvaluationJobConfig
    buildGoogleCloudDatalabelingV1beta1EvaluationJobConfig() {
  final o = api.GoogleCloudDatalabelingV1beta1EvaluationJobConfig();
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobConfig < 3) {
    o.bigqueryImportKeys = buildUnnamed9();
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
    checkUnnamed9(o.bigqueryImportKeys!);
    checkGoogleCloudDatalabelingV1beta1BoundingPolyConfig(
        o.boundingPolyConfig!);
    checkGoogleCloudDatalabelingV1beta1EvaluationConfig(o.evaluationConfig!);
    checkGoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig(
        o.evaluationJobAlertConfig!);
    unittest.expect(
      o.exampleCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.exampleSamplePercentage!,
      unittest.equals(42.0),
    );
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(
        o.humanAnnotationConfig!);
    checkGoogleCloudDatalabelingV1beta1ImageClassificationConfig(
        o.imageClassificationConfig!);
    checkGoogleCloudDatalabelingV1beta1InputConfig(o.inputConfig!);
    checkGoogleCloudDatalabelingV1beta1TextClassificationConfig(
        o.textClassificationConfig!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationJobConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1EvaluationMetrics = 0;
api.GoogleCloudDatalabelingV1beta1EvaluationMetrics
    buildGoogleCloudDatalabelingV1beta1EvaluationMetrics() {
  final o = api.GoogleCloudDatalabelingV1beta1EvaluationMetrics();
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
        o.classificationMetrics!);
    checkGoogleCloudDatalabelingV1beta1ObjectDetectionMetrics(
        o.objectDetectionMetrics!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1EvaluationMetrics--;
}

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDatalabelingV1beta1EventConfig = 0;
api.GoogleCloudDatalabelingV1beta1EventConfig
    buildGoogleCloudDatalabelingV1beta1EventConfig() {
  final o = api.GoogleCloudDatalabelingV1beta1EventConfig();
  buildCounterGoogleCloudDatalabelingV1beta1EventConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1EventConfig < 3) {
    o.annotationSpecSets = buildUnnamed10();
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
    checkUnnamed10(o.annotationSpecSets!);
    unittest.expect(
      o.clipLength!,
      unittest.equals(42),
    );
    unittest.expect(
      o.overlapLength!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1EventConfig--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Annotation> buildUnnamed11() => [
      buildGoogleCloudDatalabelingV1beta1Annotation(),
      buildGoogleCloudDatalabelingV1beta1Annotation(),
    ];

void checkUnnamed11(core.List<api.GoogleCloudDatalabelingV1beta1Annotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Annotation(o[0]);
  checkGoogleCloudDatalabelingV1beta1Annotation(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1Example = 0;
api.GoogleCloudDatalabelingV1beta1Example
    buildGoogleCloudDatalabelingV1beta1Example() {
  final o = api.GoogleCloudDatalabelingV1beta1Example();
  buildCounterGoogleCloudDatalabelingV1beta1Example++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Example < 3) {
    o.annotations = buildUnnamed11();
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
    checkUnnamed11(o.annotations!);
    checkGoogleCloudDatalabelingV1beta1ImagePayload(o.imagePayload!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatalabelingV1beta1TextPayload(o.textPayload!);
    checkGoogleCloudDatalabelingV1beta1VideoPayload(o.videoPayload!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1Example--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Example> buildUnnamed12() => [
      buildGoogleCloudDatalabelingV1beta1Example(),
      buildGoogleCloudDatalabelingV1beta1Example(),
    ];

void checkUnnamed12(core.List<api.GoogleCloudDatalabelingV1beta1Example> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Example(o[0]);
  checkGoogleCloudDatalabelingV1beta1Example(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ExampleComparison = 0;
api.GoogleCloudDatalabelingV1beta1ExampleComparison
    buildGoogleCloudDatalabelingV1beta1ExampleComparison() {
  final o = api.GoogleCloudDatalabelingV1beta1ExampleComparison();
  buildCounterGoogleCloudDatalabelingV1beta1ExampleComparison++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ExampleComparison < 3) {
    o.groundTruthExample = buildGoogleCloudDatalabelingV1beta1Example();
    o.modelCreatedExamples = buildUnnamed12();
  }
  buildCounterGoogleCloudDatalabelingV1beta1ExampleComparison--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ExampleComparison(
    api.GoogleCloudDatalabelingV1beta1ExampleComparison o) {
  buildCounterGoogleCloudDatalabelingV1beta1ExampleComparison++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ExampleComparison < 3) {
    checkGoogleCloudDatalabelingV1beta1Example(o.groundTruthExample!);
    checkUnnamed12(o.modelCreatedExamples!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1ExampleComparison--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ExportDataRequest = 0;
api.GoogleCloudDatalabelingV1beta1ExportDataRequest
    buildGoogleCloudDatalabelingV1beta1ExportDataRequest() {
  final o = api.GoogleCloudDatalabelingV1beta1ExportDataRequest();
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
    unittest.expect(
      o.annotatedDataset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatalabelingV1beta1OutputConfig(o.outputConfig!);
    unittest.expect(
      o.userEmailAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1ExportDataRequest--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1FeedbackMessage = 0;
api.GoogleCloudDatalabelingV1beta1FeedbackMessage
    buildGoogleCloudDatalabelingV1beta1FeedbackMessage() {
  final o = api.GoogleCloudDatalabelingV1beta1FeedbackMessage();
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
    unittest.expect(
      o.body!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.image!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata(
        o.operatorFeedbackMetadata!);
    checkGoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata(
        o.requesterFeedbackMetadata!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1FeedbackMessage--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1FeedbackThread = 0;
api.GoogleCloudDatalabelingV1beta1FeedbackThread
    buildGoogleCloudDatalabelingV1beta1FeedbackThread() {
  final o = api.GoogleCloudDatalabelingV1beta1FeedbackThread();
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
        o.feedbackThreadMetadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1FeedbackThread--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1FeedbackThreadMetadata = 0;
api.GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata
    buildGoogleCloudDatalabelingV1beta1FeedbackThreadMetadata() {
  final o = api.GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata();
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastUpdateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thumbnail!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1FeedbackThreadMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1GcsDestination = 0;
api.GoogleCloudDatalabelingV1beta1GcsDestination
    buildGoogleCloudDatalabelingV1beta1GcsDestination() {
  final o = api.GoogleCloudDatalabelingV1beta1GcsDestination();
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
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1GcsDestination--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1GcsFolderDestination = 0;
api.GoogleCloudDatalabelingV1beta1GcsFolderDestination
    buildGoogleCloudDatalabelingV1beta1GcsFolderDestination() {
  final o = api.GoogleCloudDatalabelingV1beta1GcsFolderDestination();
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
    unittest.expect(
      o.outputFolderUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1GcsFolderDestination--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1GcsSource = 0;
api.GoogleCloudDatalabelingV1beta1GcsSource
    buildGoogleCloudDatalabelingV1beta1GcsSource() {
  final o = api.GoogleCloudDatalabelingV1beta1GcsSource();
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
    unittest.expect(
      o.inputUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1GcsSource--;
}

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDatalabelingV1beta1HumanAnnotationConfig = 0;
api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig
    buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig() {
  final o = api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
  buildCounterGoogleCloudDatalabelingV1beta1HumanAnnotationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1HumanAnnotationConfig < 3) {
    o.annotatedDatasetDescription = 'foo';
    o.annotatedDatasetDisplayName = 'foo';
    o.contributorEmails = buildUnnamed13();
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
    unittest.expect(
      o.annotatedDatasetDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.annotatedDatasetDisplayName!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.contributorEmails!);
    unittest.expect(
      o.instruction!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.labelGroup!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.questionDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replicaCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.userEmailAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1HumanAnnotationConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation =
    0;
api.GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation
    buildGoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation() {
  final o = api.GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation();
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
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(o.annotationSpec!);
    checkGoogleCloudDatalabelingV1beta1BoundingPoly(o.boundingPoly!);
    checkGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly(
        o.normalizedBoundingPoly!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1ImageClassificationAnnotation = 0;
api.GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation
    buildGoogleCloudDatalabelingV1beta1ImageClassificationAnnotation() {
  final o = api.GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation();
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
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(o.annotationSpec!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImageClassificationAnnotation--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ImageClassificationConfig =
    0;
api.GoogleCloudDatalabelingV1beta1ImageClassificationConfig
    buildGoogleCloudDatalabelingV1beta1ImageClassificationConfig() {
  final o = api.GoogleCloudDatalabelingV1beta1ImageClassificationConfig();
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
    unittest.expect(o.allowMultiLabel!, unittest.isTrue);
    unittest.expect(
      o.annotationSpecSet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.answerAggregationType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImageClassificationConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ImagePayload = 0;
api.GoogleCloudDatalabelingV1beta1ImagePayload
    buildGoogleCloudDatalabelingV1beta1ImagePayload() {
  final o = api.GoogleCloudDatalabelingV1beta1ImagePayload();
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
    unittest.expect(
      o.imageThumbnail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signedUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImagePayload--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ImagePolylineAnnotation = 0;
api.GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation
    buildGoogleCloudDatalabelingV1beta1ImagePolylineAnnotation() {
  final o = api.GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation();
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
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(o.annotationSpec!);
    checkGoogleCloudDatalabelingV1beta1NormalizedPolyline(
        o.normalizedPolyline!);
    checkGoogleCloudDatalabelingV1beta1Polyline(o.polyline!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImagePolylineAnnotation--;
}

core.Map<core.String, api.GoogleCloudDatalabelingV1beta1AnnotationSpec>
    buildUnnamed14() => {
          'x': buildGoogleCloudDatalabelingV1beta1AnnotationSpec(),
          'y': buildGoogleCloudDatalabelingV1beta1AnnotationSpec(),
        };

void checkUnnamed14(
    core.Map<core.String, api.GoogleCloudDatalabelingV1beta1AnnotationSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1AnnotationSpec(o['x']!);
  checkGoogleCloudDatalabelingV1beta1AnnotationSpec(o['y']!);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation =
    0;
api.GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation
    buildGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation() {
  final o = api.GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation();
  buildCounterGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation <
      3) {
    o.annotationColors = buildUnnamed14();
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
    checkUnnamed14(o.annotationColors!);
    unittest.expect(
      o.imageBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ImportDataRequest = 0;
api.GoogleCloudDatalabelingV1beta1ImportDataRequest
    buildGoogleCloudDatalabelingV1beta1ImportDataRequest() {
  final o = api.GoogleCloudDatalabelingV1beta1ImportDataRequest();
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
    checkGoogleCloudDatalabelingV1beta1InputConfig(o.inputConfig!);
    unittest.expect(
      o.userEmailAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1ImportDataRequest--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1InputConfig = 0;
api.GoogleCloudDatalabelingV1beta1InputConfig
    buildGoogleCloudDatalabelingV1beta1InputConfig() {
  final o = api.GoogleCloudDatalabelingV1beta1InputConfig();
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
    unittest.expect(
      o.annotationType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatalabelingV1beta1BigQuerySource(o.bigquerySource!);
    checkGoogleCloudDatalabelingV1beta1ClassificationMetadata(
        o.classificationMetadata!);
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatalabelingV1beta1GcsSource(o.gcsSource!);
    checkGoogleCloudDatalabelingV1beta1TextMetadata(o.textMetadata!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1InputConfig--;
}

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDatalabelingV1beta1Instruction = 0;
api.GoogleCloudDatalabelingV1beta1Instruction
    buildGoogleCloudDatalabelingV1beta1Instruction() {
  final o = api.GoogleCloudDatalabelingV1beta1Instruction();
  buildCounterGoogleCloudDatalabelingV1beta1Instruction++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Instruction < 3) {
    o.blockingResources = buildUnnamed15();
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
    checkUnnamed15(o.blockingResources!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatalabelingV1beta1CsvInstruction(o.csvInstruction!);
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
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
    checkGoogleCloudDatalabelingV1beta1PdfInstruction(o.pdfInstruction!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1Instruction--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1LabelImageRequest = 0;
api.GoogleCloudDatalabelingV1beta1LabelImageRequest
    buildGoogleCloudDatalabelingV1beta1LabelImageRequest() {
  final o = api.GoogleCloudDatalabelingV1beta1LabelImageRequest();
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
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(o.basicConfig!);
    checkGoogleCloudDatalabelingV1beta1BoundingPolyConfig(
        o.boundingPolyConfig!);
    unittest.expect(
      o.feature!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatalabelingV1beta1ImageClassificationConfig(
        o.imageClassificationConfig!);
    checkGoogleCloudDatalabelingV1beta1PolylineConfig(o.polylineConfig!);
    checkGoogleCloudDatalabelingV1beta1SegmentationConfig(
        o.segmentationConfig!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelImageRequest--;
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

core.int buildCounterGoogleCloudDatalabelingV1beta1LabelStats = 0;
api.GoogleCloudDatalabelingV1beta1LabelStats
    buildGoogleCloudDatalabelingV1beta1LabelStats() {
  final o = api.GoogleCloudDatalabelingV1beta1LabelStats();
  buildCounterGoogleCloudDatalabelingV1beta1LabelStats++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelStats < 3) {
    o.exampleCount = buildUnnamed16();
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelStats--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1LabelStats(
    api.GoogleCloudDatalabelingV1beta1LabelStats o) {
  buildCounterGoogleCloudDatalabelingV1beta1LabelStats++;
  if (buildCounterGoogleCloudDatalabelingV1beta1LabelStats < 3) {
    checkUnnamed16(o.exampleCount!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelStats--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1LabelTextRequest = 0;
api.GoogleCloudDatalabelingV1beta1LabelTextRequest
    buildGoogleCloudDatalabelingV1beta1LabelTextRequest() {
  final o = api.GoogleCloudDatalabelingV1beta1LabelTextRequest();
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
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(o.basicConfig!);
    unittest.expect(
      o.feature!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatalabelingV1beta1TextClassificationConfig(
        o.textClassificationConfig!);
    checkGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig(
        o.textEntityExtractionConfig!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelTextRequest--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1LabelVideoRequest = 0;
api.GoogleCloudDatalabelingV1beta1LabelVideoRequest
    buildGoogleCloudDatalabelingV1beta1LabelVideoRequest() {
  final o = api.GoogleCloudDatalabelingV1beta1LabelVideoRequest();
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
    checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(o.basicConfig!);
    checkGoogleCloudDatalabelingV1beta1EventConfig(o.eventConfig!);
    unittest.expect(
      o.feature!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatalabelingV1beta1ObjectDetectionConfig(
        o.objectDetectionConfig!);
    checkGoogleCloudDatalabelingV1beta1ObjectTrackingConfig(
        o.objectTrackingConfig!);
    checkGoogleCloudDatalabelingV1beta1VideoClassificationConfig(
        o.videoClassificationConfig!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1LabelVideoRequest--;
}

core.List<api.GoogleCloudDatalabelingV1beta1AnnotatedDataset>
    buildUnnamed17() => [
          buildGoogleCloudDatalabelingV1beta1AnnotatedDataset(),
          buildGoogleCloudDatalabelingV1beta1AnnotatedDataset(),
        ];

void checkUnnamed17(
    core.List<api.GoogleCloudDatalabelingV1beta1AnnotatedDataset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1AnnotatedDataset(o[0]);
  checkGoogleCloudDatalabelingV1beta1AnnotatedDataset(o[1]);
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse = 0;
api.GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse
    buildGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse() {
  final o = api.GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse <
      3) {
    o.annotatedDatasets = buildUnnamed17();
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
    checkUnnamed17(o.annotatedDatasets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse--;
}

core.List<api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet>
    buildUnnamed18() => [
          buildGoogleCloudDatalabelingV1beta1AnnotationSpecSet(),
          buildGoogleCloudDatalabelingV1beta1AnnotationSpecSet(),
        ];

void checkUnnamed18(
    core.List<api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1AnnotationSpecSet(o[0]);
  checkGoogleCloudDatalabelingV1beta1AnnotationSpecSet(o[1]);
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse =
    0;
api.GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse
    buildGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse() {
  final o = api.GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse <
      3) {
    o.annotationSpecSets = buildUnnamed18();
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
    checkUnnamed18(o.annotationSpecSets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse--;
}

core.List<api.GoogleCloudDatalabelingV1beta1DataItem> buildUnnamed19() => [
      buildGoogleCloudDatalabelingV1beta1DataItem(),
      buildGoogleCloudDatalabelingV1beta1DataItem(),
    ];

void checkUnnamed19(core.List<api.GoogleCloudDatalabelingV1beta1DataItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1DataItem(o[0]);
  checkGoogleCloudDatalabelingV1beta1DataItem(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ListDataItemsResponse = 0;
api.GoogleCloudDatalabelingV1beta1ListDataItemsResponse
    buildGoogleCloudDatalabelingV1beta1ListDataItemsResponse() {
  final o = api.GoogleCloudDatalabelingV1beta1ListDataItemsResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ListDataItemsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListDataItemsResponse < 3) {
    o.dataItems = buildUnnamed19();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListDataItemsResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ListDataItemsResponse(
    api.GoogleCloudDatalabelingV1beta1ListDataItemsResponse o) {
  buildCounterGoogleCloudDatalabelingV1beta1ListDataItemsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListDataItemsResponse < 3) {
    checkUnnamed19(o.dataItems!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListDataItemsResponse--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Dataset> buildUnnamed20() => [
      buildGoogleCloudDatalabelingV1beta1Dataset(),
      buildGoogleCloudDatalabelingV1beta1Dataset(),
    ];

void checkUnnamed20(core.List<api.GoogleCloudDatalabelingV1beta1Dataset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Dataset(o[0]);
  checkGoogleCloudDatalabelingV1beta1Dataset(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ListDatasetsResponse = 0;
api.GoogleCloudDatalabelingV1beta1ListDatasetsResponse
    buildGoogleCloudDatalabelingV1beta1ListDatasetsResponse() {
  final o = api.GoogleCloudDatalabelingV1beta1ListDatasetsResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ListDatasetsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListDatasetsResponse < 3) {
    o.datasets = buildUnnamed20();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListDatasetsResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ListDatasetsResponse(
    api.GoogleCloudDatalabelingV1beta1ListDatasetsResponse o) {
  buildCounterGoogleCloudDatalabelingV1beta1ListDatasetsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListDatasetsResponse < 3) {
    checkUnnamed20(o.datasets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListDatasetsResponse--;
}

core.List<api.GoogleCloudDatalabelingV1beta1EvaluationJob> buildUnnamed21() => [
      buildGoogleCloudDatalabelingV1beta1EvaluationJob(),
      buildGoogleCloudDatalabelingV1beta1EvaluationJob(),
    ];

void checkUnnamed21(
    core.List<api.GoogleCloudDatalabelingV1beta1EvaluationJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1EvaluationJob(o[0]);
  checkGoogleCloudDatalabelingV1beta1EvaluationJob(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse =
    0;
api.GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse
    buildGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse() {
  final o = api.GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse <
      3) {
    o.evaluationJobs = buildUnnamed21();
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
    checkUnnamed21(o.evaluationJobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Example> buildUnnamed22() => [
      buildGoogleCloudDatalabelingV1beta1Example(),
      buildGoogleCloudDatalabelingV1beta1Example(),
    ];

void checkUnnamed22(core.List<api.GoogleCloudDatalabelingV1beta1Example> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Example(o[0]);
  checkGoogleCloudDatalabelingV1beta1Example(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ListExamplesResponse = 0;
api.GoogleCloudDatalabelingV1beta1ListExamplesResponse
    buildGoogleCloudDatalabelingV1beta1ListExamplesResponse() {
  final o = api.GoogleCloudDatalabelingV1beta1ListExamplesResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ListExamplesResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListExamplesResponse < 3) {
    o.examples = buildUnnamed22();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListExamplesResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ListExamplesResponse(
    api.GoogleCloudDatalabelingV1beta1ListExamplesResponse o) {
  buildCounterGoogleCloudDatalabelingV1beta1ListExamplesResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListExamplesResponse < 3) {
    checkUnnamed22(o.examples!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListExamplesResponse--;
}

core.List<api.GoogleCloudDatalabelingV1beta1FeedbackMessage> buildUnnamed23() =>
    [
      buildGoogleCloudDatalabelingV1beta1FeedbackMessage(),
      buildGoogleCloudDatalabelingV1beta1FeedbackMessage(),
    ];

void checkUnnamed23(
    core.List<api.GoogleCloudDatalabelingV1beta1FeedbackMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1FeedbackMessage(o[0]);
  checkGoogleCloudDatalabelingV1beta1FeedbackMessage(o[1]);
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse = 0;
api.GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse
    buildGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse() {
  final o = api.GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse <
      3) {
    o.feedbackMessages = buildUnnamed23();
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
    checkUnnamed23(o.feedbackMessages!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse--;
}

core.List<api.GoogleCloudDatalabelingV1beta1FeedbackThread> buildUnnamed24() =>
    [
      buildGoogleCloudDatalabelingV1beta1FeedbackThread(),
      buildGoogleCloudDatalabelingV1beta1FeedbackThread(),
    ];

void checkUnnamed24(
    core.List<api.GoogleCloudDatalabelingV1beta1FeedbackThread> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1FeedbackThread(o[0]);
  checkGoogleCloudDatalabelingV1beta1FeedbackThread(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse =
    0;
api.GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse
    buildGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse() {
  final o = api.GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse <
      3) {
    o.feedbackThreads = buildUnnamed24();
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
    checkUnnamed24(o.feedbackThreads!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Instruction> buildUnnamed25() => [
      buildGoogleCloudDatalabelingV1beta1Instruction(),
      buildGoogleCloudDatalabelingV1beta1Instruction(),
    ];

void checkUnnamed25(
    core.List<api.GoogleCloudDatalabelingV1beta1Instruction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Instruction(o[0]);
  checkGoogleCloudDatalabelingV1beta1Instruction(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ListInstructionsResponse = 0;
api.GoogleCloudDatalabelingV1beta1ListInstructionsResponse
    buildGoogleCloudDatalabelingV1beta1ListInstructionsResponse() {
  final o = api.GoogleCloudDatalabelingV1beta1ListInstructionsResponse();
  buildCounterGoogleCloudDatalabelingV1beta1ListInstructionsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListInstructionsResponse < 3) {
    o.instructions = buildUnnamed25();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListInstructionsResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1ListInstructionsResponse(
    api.GoogleCloudDatalabelingV1beta1ListInstructionsResponse o) {
  buildCounterGoogleCloudDatalabelingV1beta1ListInstructionsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1ListInstructionsResponse < 3) {
    checkUnnamed25(o.instructions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1ListInstructionsResponse--;
}

core.List<api.GoogleCloudDatalabelingV1beta1NormalizedVertex>
    buildUnnamed26() => [
          buildGoogleCloudDatalabelingV1beta1NormalizedVertex(),
          buildGoogleCloudDatalabelingV1beta1NormalizedVertex(),
        ];

void checkUnnamed26(
    core.List<api.GoogleCloudDatalabelingV1beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1NormalizedVertex(o[0]);
  checkGoogleCloudDatalabelingV1beta1NormalizedVertex(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly = 0;
api.GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly
    buildGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly() {
  final o = api.GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly();
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed26();
  }
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly(
    api.GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly o) {
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly < 3) {
    checkUnnamed26(o.normalizedVertices!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly--;
}

core.List<api.GoogleCloudDatalabelingV1beta1NormalizedVertex>
    buildUnnamed27() => [
          buildGoogleCloudDatalabelingV1beta1NormalizedVertex(),
          buildGoogleCloudDatalabelingV1beta1NormalizedVertex(),
        ];

void checkUnnamed27(
    core.List<api.GoogleCloudDatalabelingV1beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1NormalizedVertex(o[0]);
  checkGoogleCloudDatalabelingV1beta1NormalizedVertex(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1NormalizedPolyline = 0;
api.GoogleCloudDatalabelingV1beta1NormalizedPolyline
    buildGoogleCloudDatalabelingV1beta1NormalizedPolyline() {
  final o = api.GoogleCloudDatalabelingV1beta1NormalizedPolyline();
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedPolyline++;
  if (buildCounterGoogleCloudDatalabelingV1beta1NormalizedPolyline < 3) {
    o.normalizedVertices = buildUnnamed27();
  }
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedPolyline--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1NormalizedPolyline(
    api.GoogleCloudDatalabelingV1beta1NormalizedPolyline o) {
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedPolyline++;
  if (buildCounterGoogleCloudDatalabelingV1beta1NormalizedPolyline < 3) {
    checkUnnamed27(o.normalizedVertices!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedPolyline--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1NormalizedVertex = 0;
api.GoogleCloudDatalabelingV1beta1NormalizedVertex
    buildGoogleCloudDatalabelingV1beta1NormalizedVertex() {
  final o = api.GoogleCloudDatalabelingV1beta1NormalizedVertex();
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
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1NormalizedVertex--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ObjectDetectionConfig = 0;
api.GoogleCloudDatalabelingV1beta1ObjectDetectionConfig
    buildGoogleCloudDatalabelingV1beta1ObjectDetectionConfig() {
  final o = api.GoogleCloudDatalabelingV1beta1ObjectDetectionConfig();
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
    unittest.expect(
      o.annotationSpecSet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.extractionFrameRate!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1ObjectDetectionConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ObjectDetectionMetrics = 0;
api.GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics
    buildGoogleCloudDatalabelingV1beta1ObjectDetectionMetrics() {
  final o = api.GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics();
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
    checkGoogleCloudDatalabelingV1beta1PrCurve(o.prCurve!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1ObjectDetectionMetrics--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ObjectTrackingConfig = 0;
api.GoogleCloudDatalabelingV1beta1ObjectTrackingConfig
    buildGoogleCloudDatalabelingV1beta1ObjectTrackingConfig() {
  final o = api.GoogleCloudDatalabelingV1beta1ObjectTrackingConfig();
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
    unittest.expect(
      o.annotationSpecSet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clipLength!,
      unittest.equals(42),
    );
    unittest.expect(
      o.overlapLength!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1ObjectTrackingConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1ObjectTrackingFrame = 0;
api.GoogleCloudDatalabelingV1beta1ObjectTrackingFrame
    buildGoogleCloudDatalabelingV1beta1ObjectTrackingFrame() {
  final o = api.GoogleCloudDatalabelingV1beta1ObjectTrackingFrame();
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
    checkGoogleCloudDatalabelingV1beta1BoundingPoly(o.boundingPoly!);
    checkGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly(
        o.normalizedBoundingPoly!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1ObjectTrackingFrame--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata = 0;
api.GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata
    buildGoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata() {
  final o = api.GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata();
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

core.List<core.String> buildUnnamed28() => [
      'foo',
      'foo',
    ];

void checkUnnamed28(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDatalabelingV1beta1OperatorMetadata = 0;
api.GoogleCloudDatalabelingV1beta1OperatorMetadata
    buildGoogleCloudDatalabelingV1beta1OperatorMetadata() {
  final o = api.GoogleCloudDatalabelingV1beta1OperatorMetadata();
  buildCounterGoogleCloudDatalabelingV1beta1OperatorMetadata++;
  if (buildCounterGoogleCloudDatalabelingV1beta1OperatorMetadata < 3) {
    o.comments = buildUnnamed28();
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
    checkUnnamed28(o.comments!);
    unittest.expect(
      o.labelVotes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.totalVotes!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1OperatorMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1OutputConfig = 0;
api.GoogleCloudDatalabelingV1beta1OutputConfig
    buildGoogleCloudDatalabelingV1beta1OutputConfig() {
  final o = api.GoogleCloudDatalabelingV1beta1OutputConfig();
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
    checkGoogleCloudDatalabelingV1beta1GcsDestination(o.gcsDestination!);
    checkGoogleCloudDatalabelingV1beta1GcsFolderDestination(
        o.gcsFolderDestination!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1OutputConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest =
    0;
api.GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest
    buildGoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest() {
  final o = api.GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest();
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
  final o = api.GoogleCloudDatalabelingV1beta1PdfInstruction();
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
    unittest.expect(
      o.gcsFileUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1PdfInstruction--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Vertex> buildUnnamed29() => [
      buildGoogleCloudDatalabelingV1beta1Vertex(),
      buildGoogleCloudDatalabelingV1beta1Vertex(),
    ];

void checkUnnamed29(core.List<api.GoogleCloudDatalabelingV1beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Vertex(o[0]);
  checkGoogleCloudDatalabelingV1beta1Vertex(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1Polyline = 0;
api.GoogleCloudDatalabelingV1beta1Polyline
    buildGoogleCloudDatalabelingV1beta1Polyline() {
  final o = api.GoogleCloudDatalabelingV1beta1Polyline();
  buildCounterGoogleCloudDatalabelingV1beta1Polyline++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Polyline < 3) {
    o.vertices = buildUnnamed29();
  }
  buildCounterGoogleCloudDatalabelingV1beta1Polyline--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1Polyline(
    api.GoogleCloudDatalabelingV1beta1Polyline o) {
  buildCounterGoogleCloudDatalabelingV1beta1Polyline++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Polyline < 3) {
    checkUnnamed29(o.vertices!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1Polyline--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1PolylineConfig = 0;
api.GoogleCloudDatalabelingV1beta1PolylineConfig
    buildGoogleCloudDatalabelingV1beta1PolylineConfig() {
  final o = api.GoogleCloudDatalabelingV1beta1PolylineConfig();
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
    unittest.expect(
      o.annotationSpecSet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instructionMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1PolylineConfig--;
}

core.List<api.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry>
    buildUnnamed30() => [
          buildGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry(),
          buildGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry(),
        ];

void checkUnnamed30(
    core.List<api.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry(o[0]);
  checkGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1PrCurve = 0;
api.GoogleCloudDatalabelingV1beta1PrCurve
    buildGoogleCloudDatalabelingV1beta1PrCurve() {
  final o = api.GoogleCloudDatalabelingV1beta1PrCurve();
  buildCounterGoogleCloudDatalabelingV1beta1PrCurve++;
  if (buildCounterGoogleCloudDatalabelingV1beta1PrCurve < 3) {
    o.annotationSpec = buildGoogleCloudDatalabelingV1beta1AnnotationSpec();
    o.areaUnderCurve = 42.0;
    o.confidenceMetricsEntries = buildUnnamed30();
    o.meanAveragePrecision = 42.0;
  }
  buildCounterGoogleCloudDatalabelingV1beta1PrCurve--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1PrCurve(
    api.GoogleCloudDatalabelingV1beta1PrCurve o) {
  buildCounterGoogleCloudDatalabelingV1beta1PrCurve++;
  if (buildCounterGoogleCloudDatalabelingV1beta1PrCurve < 3) {
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(o.annotationSpec!);
    unittest.expect(
      o.areaUnderCurve!,
      unittest.equals(42.0),
    );
    checkUnnamed30(o.confidenceMetricsEntries!);
    unittest.expect(
      o.meanAveragePrecision!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1PrCurve--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata =
    0;
api.GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata
    buildGoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata() {
  final o = api.GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata();
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
  final o = api.GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest();
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
    buildUnnamed31() => [
          buildGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry(),
          buildGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry(),
        ];

void checkUnnamed31(
    core.List<api.GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry(o[0]);
  checkGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1Row = 0;
api.GoogleCloudDatalabelingV1beta1Row buildGoogleCloudDatalabelingV1beta1Row() {
  final o = api.GoogleCloudDatalabelingV1beta1Row();
  buildCounterGoogleCloudDatalabelingV1beta1Row++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Row < 3) {
    o.annotationSpec = buildGoogleCloudDatalabelingV1beta1AnnotationSpec();
    o.entries = buildUnnamed31();
  }
  buildCounterGoogleCloudDatalabelingV1beta1Row--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1Row(
    api.GoogleCloudDatalabelingV1beta1Row o) {
  buildCounterGoogleCloudDatalabelingV1beta1Row++;
  if (buildCounterGoogleCloudDatalabelingV1beta1Row < 3) {
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(o.annotationSpec!);
    checkUnnamed31(o.entries!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1Row--;
}

core.List<api.GoogleCloudDatalabelingV1beta1Evaluation> buildUnnamed32() => [
      buildGoogleCloudDatalabelingV1beta1Evaluation(),
      buildGoogleCloudDatalabelingV1beta1Evaluation(),
    ];

void checkUnnamed32(core.List<api.GoogleCloudDatalabelingV1beta1Evaluation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1Evaluation(o[0]);
  checkGoogleCloudDatalabelingV1beta1Evaluation(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse =
    0;
api.GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse
    buildGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse() {
  final o = api.GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse();
  buildCounterGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse < 3) {
    o.evaluations = buildUnnamed32();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse(
    api.GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse o) {
  buildCounterGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse < 3) {
    checkUnnamed32(o.evaluations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest =
    0;
api.GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest
    buildGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest() {
  final o = api.GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest();
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
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest--;
}

core.List<api.GoogleCloudDatalabelingV1beta1ExampleComparison>
    buildUnnamed33() => [
          buildGoogleCloudDatalabelingV1beta1ExampleComparison(),
          buildGoogleCloudDatalabelingV1beta1ExampleComparison(),
        ];

void checkUnnamed33(
    core.List<api.GoogleCloudDatalabelingV1beta1ExampleComparison> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1ExampleComparison(o[0]);
  checkGoogleCloudDatalabelingV1beta1ExampleComparison(o[1]);
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse =
    0;
api.GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse
    buildGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse() {
  final o =
      api.GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse();
  buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse++;
  if (buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse <
      3) {
    o.exampleComparisons = buildUnnamed33();
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
    checkUnnamed33(o.exampleComparisons!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1SegmentationConfig = 0;
api.GoogleCloudDatalabelingV1beta1SegmentationConfig
    buildGoogleCloudDatalabelingV1beta1SegmentationConfig() {
  final o = api.GoogleCloudDatalabelingV1beta1SegmentationConfig();
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
    unittest.expect(
      o.annotationSpecSet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instructionMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1SegmentationConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1SentimentConfig = 0;
api.GoogleCloudDatalabelingV1beta1SentimentConfig
    buildGoogleCloudDatalabelingV1beta1SentimentConfig() {
  final o = api.GoogleCloudDatalabelingV1beta1SentimentConfig();
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
    unittest.expect(o.enableLabelSentimentSelection!, unittest.isTrue);
  }
  buildCounterGoogleCloudDatalabelingV1beta1SentimentConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1SequentialSegment = 0;
api.GoogleCloudDatalabelingV1beta1SequentialSegment
    buildGoogleCloudDatalabelingV1beta1SequentialSegment() {
  final o = api.GoogleCloudDatalabelingV1beta1SequentialSegment();
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
    unittest.expect(
      o.end!,
      unittest.equals(42),
    );
    unittest.expect(
      o.start!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1SequentialSegment--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1TextClassificationAnnotation = 0;
api.GoogleCloudDatalabelingV1beta1TextClassificationAnnotation
    buildGoogleCloudDatalabelingV1beta1TextClassificationAnnotation() {
  final o = api.GoogleCloudDatalabelingV1beta1TextClassificationAnnotation();
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
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(o.annotationSpec!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1TextClassificationAnnotation--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1TextClassificationConfig = 0;
api.GoogleCloudDatalabelingV1beta1TextClassificationConfig
    buildGoogleCloudDatalabelingV1beta1TextClassificationConfig() {
  final o = api.GoogleCloudDatalabelingV1beta1TextClassificationConfig();
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
    unittest.expect(o.allowMultiLabel!, unittest.isTrue);
    unittest.expect(
      o.annotationSpecSet!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDatalabelingV1beta1SentimentConfig(o.sentimentConfig!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1TextClassificationConfig--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation =
    0;
api.GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation
    buildGoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation() {
  final o = api.GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation();
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
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(o.annotationSpec!);
    checkGoogleCloudDatalabelingV1beta1SequentialSegment(o.sequentialSegment!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig =
    0;
api.GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig
    buildGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig() {
  final o = api.GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig();
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
    unittest.expect(
      o.annotationSpecSet!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1TextMetadata = 0;
api.GoogleCloudDatalabelingV1beta1TextMetadata
    buildGoogleCloudDatalabelingV1beta1TextMetadata() {
  final o = api.GoogleCloudDatalabelingV1beta1TextMetadata();
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
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1TextMetadata--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1TextPayload = 0;
api.GoogleCloudDatalabelingV1beta1TextPayload
    buildGoogleCloudDatalabelingV1beta1TextPayload() {
  final o = api.GoogleCloudDatalabelingV1beta1TextPayload();
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
    unittest.expect(
      o.textContent!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1TextPayload--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1TimeSegment = 0;
api.GoogleCloudDatalabelingV1beta1TimeSegment
    buildGoogleCloudDatalabelingV1beta1TimeSegment() {
  final o = api.GoogleCloudDatalabelingV1beta1TimeSegment();
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
    unittest.expect(
      o.endTimeOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTimeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1TimeSegment--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1Vertex = 0;
api.GoogleCloudDatalabelingV1beta1Vertex
    buildGoogleCloudDatalabelingV1beta1Vertex() {
  final o = api.GoogleCloudDatalabelingV1beta1Vertex();
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
    unittest.expect(
      o.x!,
      unittest.equals(42),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1Vertex--;
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationAnnotation = 0;
api.GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation
    buildGoogleCloudDatalabelingV1beta1VideoClassificationAnnotation() {
  final o = api.GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation();
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
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(o.annotationSpec!);
    checkGoogleCloudDatalabelingV1beta1TimeSegment(o.timeSegment!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationAnnotation--;
}

core.List<api.GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig>
    buildUnnamed34() => [
          buildGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig(),
          buildGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig(),
        ];

void checkUnnamed34(
    core.List<api.GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig(o[0]);
  checkGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationConfig =
    0;
api.GoogleCloudDatalabelingV1beta1VideoClassificationConfig
    buildGoogleCloudDatalabelingV1beta1VideoClassificationConfig() {
  final o = api.GoogleCloudDatalabelingV1beta1VideoClassificationConfig();
  buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationConfig < 3) {
    o.annotationSpecSetConfigs = buildUnnamed34();
    o.applyShotDetection = true;
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationConfig--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1VideoClassificationConfig(
    api.GoogleCloudDatalabelingV1beta1VideoClassificationConfig o) {
  buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationConfig++;
  if (buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationConfig < 3) {
    checkUnnamed34(o.annotationSpecSetConfigs!);
    unittest.expect(o.applyShotDetection!, unittest.isTrue);
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoClassificationConfig--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1VideoEventAnnotation = 0;
api.GoogleCloudDatalabelingV1beta1VideoEventAnnotation
    buildGoogleCloudDatalabelingV1beta1VideoEventAnnotation() {
  final o = api.GoogleCloudDatalabelingV1beta1VideoEventAnnotation();
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
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(o.annotationSpec!);
    checkGoogleCloudDatalabelingV1beta1TimeSegment(o.timeSegment!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoEventAnnotation--;
}

core.List<api.GoogleCloudDatalabelingV1beta1ObjectTrackingFrame>
    buildUnnamed35() => [
          buildGoogleCloudDatalabelingV1beta1ObjectTrackingFrame(),
          buildGoogleCloudDatalabelingV1beta1ObjectTrackingFrame(),
        ];

void checkUnnamed35(
    core.List<api.GoogleCloudDatalabelingV1beta1ObjectTrackingFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1ObjectTrackingFrame(o[0]);
  checkGoogleCloudDatalabelingV1beta1ObjectTrackingFrame(o[1]);
}

core.int
    buildCounterGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation = 0;
api.GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation
    buildGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation() {
  final o = api.GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation();
  buildCounterGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation <
      3) {
    o.annotationSpec = buildGoogleCloudDatalabelingV1beta1AnnotationSpec();
    o.objectTrackingFrames = buildUnnamed35();
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
    checkGoogleCloudDatalabelingV1beta1AnnotationSpec(o.annotationSpec!);
    checkUnnamed35(o.objectTrackingFrames!);
    checkGoogleCloudDatalabelingV1beta1TimeSegment(o.timeSegment!);
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation--;
}

core.List<api.GoogleCloudDatalabelingV1beta1VideoThumbnail> buildUnnamed36() =>
    [
      buildGoogleCloudDatalabelingV1beta1VideoThumbnail(),
      buildGoogleCloudDatalabelingV1beta1VideoThumbnail(),
    ];

void checkUnnamed36(
    core.List<api.GoogleCloudDatalabelingV1beta1VideoThumbnail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatalabelingV1beta1VideoThumbnail(o[0]);
  checkGoogleCloudDatalabelingV1beta1VideoThumbnail(o[1]);
}

core.int buildCounterGoogleCloudDatalabelingV1beta1VideoPayload = 0;
api.GoogleCloudDatalabelingV1beta1VideoPayload
    buildGoogleCloudDatalabelingV1beta1VideoPayload() {
  final o = api.GoogleCloudDatalabelingV1beta1VideoPayload();
  buildCounterGoogleCloudDatalabelingV1beta1VideoPayload++;
  if (buildCounterGoogleCloudDatalabelingV1beta1VideoPayload < 3) {
    o.frameRate = 42.0;
    o.mimeType = 'foo';
    o.signedUri = 'foo';
    o.videoThumbnails = buildUnnamed36();
    o.videoUri = 'foo';
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoPayload--;
  return o;
}

void checkGoogleCloudDatalabelingV1beta1VideoPayload(
    api.GoogleCloudDatalabelingV1beta1VideoPayload o) {
  buildCounterGoogleCloudDatalabelingV1beta1VideoPayload++;
  if (buildCounterGoogleCloudDatalabelingV1beta1VideoPayload < 3) {
    unittest.expect(
      o.frameRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signedUri!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.videoThumbnails!);
    unittest.expect(
      o.videoUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoPayload--;
}

core.int buildCounterGoogleCloudDatalabelingV1beta1VideoThumbnail = 0;
api.GoogleCloudDatalabelingV1beta1VideoThumbnail
    buildGoogleCloudDatalabelingV1beta1VideoThumbnail() {
  final o = api.GoogleCloudDatalabelingV1beta1VideoThumbnail();
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
    unittest.expect(
      o.thumbnail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDatalabelingV1beta1VideoThumbnail--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed37() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed37(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed37();
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
    checkUnnamed37(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed38() => {
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

void checkUnnamed38(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed39() => {
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

void checkUnnamed39(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed38();
    o.name = 'foo';
    o.response = buildUnnamed39();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed38(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.response!);
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

core.Map<core.String, core.Object?> buildUnnamed40() => {
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

void checkUnnamed40(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed41() => [
      buildUnnamed40(),
      buildUnnamed40(),
    ];

void checkUnnamed41(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed40(o[0]);
  checkUnnamed40(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed41();
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
    checkUnnamed41(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1AnnotatedDataset',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1AnnotatedDataset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1AnnotatedDataset.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1AnnotatedDataset(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1Annotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1Annotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1Annotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1Annotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1AnnotationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1AnnotationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1AnnotationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1AnnotationMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1AnnotationSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1AnnotationSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1AnnotationSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1AnnotationSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1AnnotationSpecSet',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1AnnotationSpecSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1AnnotationSpecSet(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1AnnotationValue',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1AnnotationValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1AnnotationValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1AnnotationValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1Attempt', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1Attempt();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1Attempt.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1Attempt(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1BigQuerySource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1BigQuerySource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1BigQuerySource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1BigQuerySource(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1BoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1BoundingPoly.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1BoundingPoly(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1BoundingPolyConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1BoundingPolyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1BoundingPolyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1BoundingPolyConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ClassificationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ClassificationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1ClassificationMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ClassificationMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ClassificationMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ClassificationMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1ClassificationMetrics.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ClassificationMetrics(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1ConfusionMatrix',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ConfusionMatrix();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1ConfusionMatrix.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ConfusionMatrix(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ConfusionMatrixEntry(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1CreateDatasetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1CreateDatasetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1CreateDatasetRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1CreateDatasetRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1CreateInstructionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1CreateInstructionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1CreateInstructionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1CreateInstructionRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1CsvInstruction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1CsvInstruction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1CsvInstruction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1CsvInstruction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1DataItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1DataItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1DataItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1DataItem(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1Dataset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1Dataset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1Dataset.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1Dataset(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1Evaluation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1Evaluation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1Evaluation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1Evaluation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1EvaluationConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1EvaluationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1EvaluationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1EvaluationConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1EvaluationJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1EvaluationJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1EvaluationJob.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1EvaluationJob(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1EvaluationJobConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1EvaluationJobConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1EvaluationJobConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1EvaluationJobConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1EvaluationMetrics',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1EvaluationMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1EvaluationMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1EvaluationMetrics(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1EventConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1EventConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1EventConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1EventConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1Example', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1Example();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1Example.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1Example(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1ExampleComparison',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ExampleComparison();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1ExampleComparison.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ExampleComparison(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1ExportDataRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ExportDataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1ExportDataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ExportDataRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1FeedbackMessage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1FeedbackMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1FeedbackMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1FeedbackMessage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1FeedbackThread', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1FeedbackThread();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1FeedbackThread.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1FeedbackThread(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1FeedbackThreadMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1FeedbackThreadMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1GcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1GcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1GcsDestination(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1GcsFolderDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1GcsFolderDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1GcsFolderDestination.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1GcsFolderDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1GcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1GcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1GcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1GcsSource(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1HumanAnnotationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1HumanAnnotationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1HumanAnnotationConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDatalabelingV1beta1ImageClassificationAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ImageClassificationAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ImageClassificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ImageClassificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1ImageClassificationConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ImageClassificationConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1ImagePayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ImagePayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1ImagePayload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ImagePayload(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ImagePolylineAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ImagePolylineAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1ImportDataRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ImportDataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1ImportDataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ImportDataRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1InputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1InputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1InputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1InputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1Instruction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1Instruction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1Instruction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1Instruction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1LabelImageRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1LabelImageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1LabelImageRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1LabelImageRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1LabelStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1LabelStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1LabelStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1LabelStats(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1LabelTextRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1LabelTextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1LabelTextRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1LabelTextRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1LabelVideoRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1LabelVideoRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1LabelVideoRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1LabelVideoRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ListDataItemsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ListDataItemsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1ListDataItemsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ListDataItemsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ListDatasetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ListDatasetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1ListDatasetsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ListDatasetsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ListExamplesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ListExamplesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1ListExamplesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ListExamplesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ListInstructionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ListInstructionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1ListInstructionsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ListInstructionsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1NormalizedBoundingPoly(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1NormalizedPolyline',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1NormalizedPolyline();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1NormalizedPolyline.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1NormalizedPolyline(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1NormalizedVertex',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1NormalizedVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1NormalizedVertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1NormalizedVertex(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ObjectDetectionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ObjectDetectionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1ObjectDetectionConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ObjectDetectionConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ObjectDetectionMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ObjectDetectionMetrics(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ObjectTrackingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ObjectTrackingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1ObjectTrackingConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ObjectTrackingConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1ObjectTrackingFrame',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ObjectTrackingFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1ObjectTrackingFrame.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ObjectTrackingFrame(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1OperatorMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1OperatorMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1OperatorMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1OperatorMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1OutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1OutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1OutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1OutputConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1PdfInstruction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1PdfInstruction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1PdfInstruction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1PdfInstruction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1Polyline', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1Polyline();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1Polyline.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1Polyline(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1PolylineConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1PolylineConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1PolylineConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1PolylineConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1PrCurve', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1PrCurve();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1PrCurve.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1PrCurve(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1Row', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1Row();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1Row.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1Row(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1SegmentationConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1SegmentationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1SegmentationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1SegmentationConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1SentimentConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1SentimentConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1SentimentConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1SentimentConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1SequentialSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1SequentialSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1SequentialSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1SequentialSegment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1TextClassificationAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDatalabelingV1beta1TextClassificationAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1TextClassificationAnnotation
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1TextClassificationAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1TextClassificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1TextClassificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1TextClassificationConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1TextClassificationConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1TextEntityExtractionConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1TextMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1TextMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1TextMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1TextMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1TextPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1TextPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1TextPayload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1TextPayload(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1TimeSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1TimeSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1TimeSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1TimeSegment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1Vertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1Vertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1Vertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1Vertex(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDatalabelingV1beta1VideoClassificationAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1VideoClassificationAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1VideoClassificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1VideoClassificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1VideoClassificationConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1VideoClassificationConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1VideoEventAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1VideoEventAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDatalabelingV1beta1VideoEventAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1VideoEventAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1VideoPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1VideoPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1VideoPayload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1VideoPayload(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatalabelingV1beta1VideoThumbnail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatalabelingV1beta1VideoThumbnail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatalabelingV1beta1VideoThumbnail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDatalabelingV1beta1VideoThumbnail(od);
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

  unittest.group('resource-ProjectsAnnotationSpecSetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.annotationSpecSets;
      final arg_request =
          buildGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest(obj);

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
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatalabelingV1beta1AnnotationSpecSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1AnnotationSpecSet(
          response as api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.annotationSpecSets;
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
          unittest.equals('v1beta1/'),
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.annotationSpecSets;
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
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatalabelingV1beta1AnnotationSpecSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1AnnotationSpecSet(
          response as api.GoogleCloudDatalabelingV1beta1AnnotationSpecSet);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.annotationSpecSets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(
            buildGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse(response
          as api.GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse);
    });
  });

  unittest.group('resource-ProjectsDatasetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.datasets;
      final arg_request =
          buildGoogleCloudDatalabelingV1beta1CreateDatasetRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDatalabelingV1beta1CreateDatasetRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1CreateDatasetRequest(obj);

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
          unittest.equals('v1beta1/'),
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
            convert.json.encode(buildGoogleCloudDatalabelingV1beta1Dataset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1Dataset(
          response as api.GoogleCloudDatalabelingV1beta1Dataset);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.datasets;
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
          unittest.equals('v1beta1/'),
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--exportData', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.datasets;
      final arg_request =
          buildGoogleCloudDatalabelingV1beta1ExportDataRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDatalabelingV1beta1ExportDataRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1ExportDataRequest(obj);

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
          unittest.equals('v1beta1/'),
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
          await res.exportData(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.datasets;
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
          unittest.equals('v1beta1/'),
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
            convert.json.encode(buildGoogleCloudDatalabelingV1beta1Dataset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1Dataset(
          response as api.GoogleCloudDatalabelingV1beta1Dataset);
    });

    unittest.test('method--importData', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.datasets;
      final arg_request =
          buildGoogleCloudDatalabelingV1beta1ImportDataRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDatalabelingV1beta1ImportDataRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1ImportDataRequest(obj);

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
          unittest.equals('v1beta1/'),
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
          await res.importData(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.datasets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatalabelingV1beta1ListDatasetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1ListDatasetsResponse(
          response as api.GoogleCloudDatalabelingV1beta1ListDatasetsResponse);
    });
  });

  unittest.group('resource-ProjectsDatasetsAnnotatedDatasetsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.datasets.annotatedDatasets;
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
          unittest.equals('v1beta1/'),
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.datasets.annotatedDatasets;
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
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatalabelingV1beta1AnnotatedDataset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1AnnotatedDataset(
          response as api.GoogleCloudDatalabelingV1beta1AnnotatedDataset);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.datasets.annotatedDatasets;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(
            buildGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse(response
          as api.GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse);
    });
  });

  unittest.group('resource-ProjectsDatasetsAnnotatedDatasetsDataItemsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .dataItems;
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
          unittest.equals('v1beta1/'),
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
            convert.json.encode(buildGoogleCloudDatalabelingV1beta1DataItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1DataItem(
          response as api.GoogleCloudDatalabelingV1beta1DataItem);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .dataItems;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatalabelingV1beta1ListDataItemsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1ListDataItemsResponse(
          response as api.GoogleCloudDatalabelingV1beta1ListDataItemsResponse);
    });
  });

  unittest.group('resource-ProjectsDatasetsAnnotatedDatasetsExamplesResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .examples;
      final arg_name = 'foo';
      final arg_filter = 'foo';
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
          unittest.equals('v1beta1/'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDatalabelingV1beta1Example());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, filter: arg_filter, $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1Example(
          response as api.GoogleCloudDatalabelingV1beta1Example);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .examples;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatalabelingV1beta1ListExamplesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1ListExamplesResponse(
          response as api.GoogleCloudDatalabelingV1beta1ListExamplesResponse);
    });
  });

  unittest.group(
      'resource-ProjectsDatasetsAnnotatedDatasetsFeedbackThreadsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .feedbackThreads;
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
          unittest.equals('v1beta1/'),
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .feedbackThreads;
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
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatalabelingV1beta1FeedbackThread());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1FeedbackThread(
          response as api.GoogleCloudDatalabelingV1beta1FeedbackThread);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .feedbackThreads;
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
          unittest.equals('v1beta1/'),
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
            buildGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse(response
          as api.GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsDatasetsAnnotatedDatasetsFeedbackThreadsFeedbackMessagesResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .feedbackThreads
          .feedbackMessages;
      final arg_request = buildGoogleCloudDatalabelingV1beta1FeedbackMessage();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatalabelingV1beta1FeedbackMessage.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1FeedbackMessage(obj);

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
          unittest.equals('v1beta1/'),
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
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .feedbackThreads
          .feedbackMessages;
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
          unittest.equals('v1beta1/'),
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .feedbackThreads
          .feedbackMessages;
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
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatalabelingV1beta1FeedbackMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1FeedbackMessage(
          response as api.GoogleCloudDatalabelingV1beta1FeedbackMessage);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .annotatedDatasets
          .feedbackThreads
          .feedbackMessages;
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
          unittest.equals('v1beta1/'),
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
            buildGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse(response
          as api.GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse);
    });
  });

  unittest.group('resource-ProjectsDatasetsDataItemsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.datasets.dataItems;
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
          unittest.equals('v1beta1/'),
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
            convert.json.encode(buildGoogleCloudDatalabelingV1beta1DataItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1DataItem(
          response as api.GoogleCloudDatalabelingV1beta1DataItem);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.datasets.dataItems;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatalabelingV1beta1ListDataItemsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1ListDataItemsResponse(
          response as api.GoogleCloudDatalabelingV1beta1ListDataItemsResponse);
    });
  });

  unittest.group('resource-ProjectsDatasetsEvaluationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.datasets.evaluations;
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
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatalabelingV1beta1Evaluation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1Evaluation(
          response as api.GoogleCloudDatalabelingV1beta1Evaluation);
    });
  });

  unittest.group(
      'resource-ProjectsDatasetsEvaluationsExampleComparisonsResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock)
          .projects
          .datasets
          .evaluations
          .exampleComparisons;
      final arg_request =
          buildGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest(obj);

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
          unittest.equals('v1beta1/'),
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
            buildGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.search(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse(
          response as api
              .GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse);
    });
  });

  unittest.group('resource-ProjectsDatasetsImageResource', () {
    unittest.test('method--label', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.datasets.image;
      final arg_request =
          buildGoogleCloudDatalabelingV1beta1LabelImageRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDatalabelingV1beta1LabelImageRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1LabelImageRequest(obj);

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
          unittest.equals('v1beta1/'),
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
          await res.label(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsDatasetsTextResource', () {
    unittest.test('method--label', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.datasets.text;
      final arg_request = buildGoogleCloudDatalabelingV1beta1LabelTextRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatalabelingV1beta1LabelTextRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1LabelTextRequest(obj);

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
          unittest.equals('v1beta1/'),
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
          await res.label(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsDatasetsVideoResource', () {
    unittest.test('method--label', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.datasets.video;
      final arg_request =
          buildGoogleCloudDatalabelingV1beta1LabelVideoRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDatalabelingV1beta1LabelVideoRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1LabelVideoRequest(obj);

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
          unittest.equals('v1beta1/'),
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
          await res.label(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsEvaluationJobsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.evaluationJobs;
      final arg_request =
          buildGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest(obj);

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
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatalabelingV1beta1EvaluationJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1EvaluationJob(
          response as api.GoogleCloudDatalabelingV1beta1EvaluationJob);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.evaluationJobs;
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
          unittest.equals('v1beta1/'),
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.evaluationJobs;
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
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatalabelingV1beta1EvaluationJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1EvaluationJob(
          response as api.GoogleCloudDatalabelingV1beta1EvaluationJob);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.evaluationJobs;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(
            buildGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse(response
          as api.GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.evaluationJobs;
      final arg_request = buildGoogleCloudDatalabelingV1beta1EvaluationJob();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatalabelingV1beta1EvaluationJob.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1EvaluationJob(obj);

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
          unittest.equals('v1beta1/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDatalabelingV1beta1EvaluationJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1EvaluationJob(
          response as api.GoogleCloudDatalabelingV1beta1EvaluationJob);
    });

    unittest.test('method--pause', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.evaluationJobs;
      final arg_request =
          buildGoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest(obj);

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
          unittest.equals('v1beta1/'),
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
      final response =
          await res.pause(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--resume', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.evaluationJobs;
      final arg_request =
          buildGoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest(obj);

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
          unittest.equals('v1beta1/'),
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
      final response =
          await res.resume(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('resource-ProjectsEvaluationsResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.evaluations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(
            buildGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1SearchEvaluationsResponse(response
          as api.GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse);
    });
  });

  unittest.group('resource-ProjectsInstructionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.instructions;
      final arg_request =
          buildGoogleCloudDatalabelingV1beta1CreateInstructionRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDatalabelingV1beta1CreateInstructionRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDatalabelingV1beta1CreateInstructionRequest(obj);

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
          unittest.equals('v1beta1/'),
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
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.instructions;
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
          unittest.equals('v1beta1/'),
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.instructions;
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
          unittest.equals('v1beta1/'),
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
            .encode(buildGoogleCloudDatalabelingV1beta1Instruction());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1Instruction(
          response as api.GoogleCloudDatalabelingV1beta1Instruction);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.instructions;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
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
        final resp = convert.json.encode(
            buildGoogleCloudDatalabelingV1beta1ListInstructionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDatalabelingV1beta1ListInstructionsResponse(response
          as api.GoogleCloudDatalabelingV1beta1ListInstructionsResponse);
    });
  });

  unittest.group('resource-ProjectsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.operations;
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
          unittest.equals('v1beta1/'),
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

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.operations;
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
          unittest.equals('v1beta1/'),
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataLabelingApi(mock).projects.operations;
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
          unittest.equals('v1beta1/'),
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
      final res = api.DataLabelingApi(mock).projects.operations;
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
          unittest.equals('v1beta1/'),
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
}
