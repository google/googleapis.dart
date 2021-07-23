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

import 'package:googleapis/videointelligence/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.GoogleCloudVideointelligenceV1VideoAnnotationProgress>
    buildUnnamed6947() => [
          buildGoogleCloudVideointelligenceV1VideoAnnotationProgress(),
          buildGoogleCloudVideointelligenceV1VideoAnnotationProgress(),
        ];

void checkUnnamed6947(
    core.List<api.GoogleCloudVideointelligenceV1VideoAnnotationProgress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1VideoAnnotationProgress(o[0]);
  checkGoogleCloudVideointelligenceV1VideoAnnotationProgress(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress = 0;
api.GoogleCloudVideointelligenceV1AnnotateVideoProgress
    buildGoogleCloudVideointelligenceV1AnnotateVideoProgress() {
  final o = api.GoogleCloudVideointelligenceV1AnnotateVideoProgress();
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress < 3) {
    o.annotationProgress = buildUnnamed6947();
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress--;
  return o;
}

void checkGoogleCloudVideointelligenceV1AnnotateVideoProgress(
    api.GoogleCloudVideointelligenceV1AnnotateVideoProgress o) {
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress < 3) {
    checkUnnamed6947(o.annotationProgress!);
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress--;
}

core.List<core.String> buildUnnamed6948() => [
      'foo',
      'foo',
    ];

void checkUnnamed6948(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudVideointelligenceV1AnnotateVideoRequest = 0;
api.GoogleCloudVideointelligenceV1AnnotateVideoRequest
    buildGoogleCloudVideointelligenceV1AnnotateVideoRequest() {
  final o = api.GoogleCloudVideointelligenceV1AnnotateVideoRequest();
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoRequest++;
  if (buildCounterGoogleCloudVideointelligenceV1AnnotateVideoRequest < 3) {
    o.features = buildUnnamed6948();
    o.inputContent = 'foo';
    o.inputUri = 'foo';
    o.locationId = 'foo';
    o.outputUri = 'foo';
    o.videoContext = buildGoogleCloudVideointelligenceV1VideoContext();
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoRequest--;
  return o;
}

void checkGoogleCloudVideointelligenceV1AnnotateVideoRequest(
    api.GoogleCloudVideointelligenceV1AnnotateVideoRequest o) {
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoRequest++;
  if (buildCounterGoogleCloudVideointelligenceV1AnnotateVideoRequest < 3) {
    checkUnnamed6948(o.features!);
    unittest.expect(
      o.inputContent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputUri!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVideointelligenceV1VideoContext(o.videoContext!);
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoRequest--;
}

core.List<api.GoogleCloudVideointelligenceV1VideoAnnotationResults>
    buildUnnamed6949() => [
          buildGoogleCloudVideointelligenceV1VideoAnnotationResults(),
          buildGoogleCloudVideointelligenceV1VideoAnnotationResults(),
        ];

void checkUnnamed6949(
    core.List<api.GoogleCloudVideointelligenceV1VideoAnnotationResults> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1VideoAnnotationResults(o[0]);
  checkGoogleCloudVideointelligenceV1VideoAnnotationResults(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse = 0;
api.GoogleCloudVideointelligenceV1AnnotateVideoResponse
    buildGoogleCloudVideointelligenceV1AnnotateVideoResponse() {
  final o = api.GoogleCloudVideointelligenceV1AnnotateVideoResponse();
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse < 3) {
    o.annotationResults = buildUnnamed6949();
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse--;
  return o;
}

void checkGoogleCloudVideointelligenceV1AnnotateVideoResponse(
    api.GoogleCloudVideointelligenceV1AnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse < 3) {
    checkUnnamed6949(o.annotationResults!);
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse--;
}

core.int buildCounterGoogleCloudVideointelligenceV1DetectedAttribute = 0;
api.GoogleCloudVideointelligenceV1DetectedAttribute
    buildGoogleCloudVideointelligenceV1DetectedAttribute() {
  final o = api.GoogleCloudVideointelligenceV1DetectedAttribute();
  buildCounterGoogleCloudVideointelligenceV1DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1DetectedAttribute < 3) {
    o.confidence = 42.0;
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1DetectedAttribute--;
  return o;
}

void checkGoogleCloudVideointelligenceV1DetectedAttribute(
    api.GoogleCloudVideointelligenceV1DetectedAttribute o) {
  buildCounterGoogleCloudVideointelligenceV1DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1DetectedAttribute < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1DetectedAttribute--;
}

core.int buildCounterGoogleCloudVideointelligenceV1DetectedLandmark = 0;
api.GoogleCloudVideointelligenceV1DetectedLandmark
    buildGoogleCloudVideointelligenceV1DetectedLandmark() {
  final o = api.GoogleCloudVideointelligenceV1DetectedLandmark();
  buildCounterGoogleCloudVideointelligenceV1DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1DetectedLandmark < 3) {
    o.confidence = 42.0;
    o.name = 'foo';
    o.point = buildGoogleCloudVideointelligenceV1NormalizedVertex();
  }
  buildCounterGoogleCloudVideointelligenceV1DetectedLandmark--;
  return o;
}

void checkGoogleCloudVideointelligenceV1DetectedLandmark(
    api.GoogleCloudVideointelligenceV1DetectedLandmark o) {
  buildCounterGoogleCloudVideointelligenceV1DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1DetectedLandmark < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVideointelligenceV1NormalizedVertex(o.point!);
  }
  buildCounterGoogleCloudVideointelligenceV1DetectedLandmark--;
}

core.int buildCounterGoogleCloudVideointelligenceV1Entity = 0;
api.GoogleCloudVideointelligenceV1Entity
    buildGoogleCloudVideointelligenceV1Entity() {
  final o = api.GoogleCloudVideointelligenceV1Entity();
  buildCounterGoogleCloudVideointelligenceV1Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1Entity < 3) {
    o.description = 'foo';
    o.entityId = 'foo';
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1Entity--;
  return o;
}

void checkGoogleCloudVideointelligenceV1Entity(
    api.GoogleCloudVideointelligenceV1Entity o) {
  buildCounterGoogleCloudVideointelligenceV1Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1Entity < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1Entity--;
}

core.List<api.GoogleCloudVideointelligenceV1ExplicitContentFrame>
    buildUnnamed6950() => [
          buildGoogleCloudVideointelligenceV1ExplicitContentFrame(),
          buildGoogleCloudVideointelligenceV1ExplicitContentFrame(),
        ];

void checkUnnamed6950(
    core.List<api.GoogleCloudVideointelligenceV1ExplicitContentFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1ExplicitContentFrame(o[0]);
  checkGoogleCloudVideointelligenceV1ExplicitContentFrame(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1ExplicitContentAnnotation =
    0;
api.GoogleCloudVideointelligenceV1ExplicitContentAnnotation
    buildGoogleCloudVideointelligenceV1ExplicitContentAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1ExplicitContentAnnotation();
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1ExplicitContentAnnotation < 3) {
    o.frames = buildUnnamed6950();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1ExplicitContentAnnotation(
    api.GoogleCloudVideointelligenceV1ExplicitContentAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1ExplicitContentAnnotation < 3) {
    checkUnnamed6950(o.frames!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentAnnotation--;
}

core.int
    buildCounterGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig =
    0;
api.GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig
    buildGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig() {
  final o = api.GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig <
      3) {
    o.model = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig(
    api.GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig o) {
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig <
      3) {
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig--;
}

core.int buildCounterGoogleCloudVideointelligenceV1ExplicitContentFrame = 0;
api.GoogleCloudVideointelligenceV1ExplicitContentFrame
    buildGoogleCloudVideointelligenceV1ExplicitContentFrame() {
  final o = api.GoogleCloudVideointelligenceV1ExplicitContentFrame();
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1ExplicitContentFrame < 3) {
    o.pornographyLikelihood = 'foo';
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1ExplicitContentFrame(
    api.GoogleCloudVideointelligenceV1ExplicitContentFrame o) {
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1ExplicitContentFrame < 3) {
    unittest.expect(
      o.pornographyLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentFrame--;
}

core.List<api.GoogleCloudVideointelligenceV1FaceFrame> buildUnnamed6951() => [
      buildGoogleCloudVideointelligenceV1FaceFrame(),
      buildGoogleCloudVideointelligenceV1FaceFrame(),
    ];

void checkUnnamed6951(
    core.List<api.GoogleCloudVideointelligenceV1FaceFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1FaceFrame(o[0]);
  checkGoogleCloudVideointelligenceV1FaceFrame(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1FaceSegment> buildUnnamed6952() => [
      buildGoogleCloudVideointelligenceV1FaceSegment(),
      buildGoogleCloudVideointelligenceV1FaceSegment(),
    ];

void checkUnnamed6952(
    core.List<api.GoogleCloudVideointelligenceV1FaceSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1FaceSegment(o[0]);
  checkGoogleCloudVideointelligenceV1FaceSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1FaceAnnotation = 0;
api.GoogleCloudVideointelligenceV1FaceAnnotation
    buildGoogleCloudVideointelligenceV1FaceAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1FaceAnnotation();
  buildCounterGoogleCloudVideointelligenceV1FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceAnnotation < 3) {
    o.frames = buildUnnamed6951();
    o.segments = buildUnnamed6952();
    o.thumbnail = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1FaceAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1FaceAnnotation(
    api.GoogleCloudVideointelligenceV1FaceAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceAnnotation < 3) {
    checkUnnamed6951(o.frames!);
    checkUnnamed6952(o.segments!);
    unittest.expect(
      o.thumbnail!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1FaceAnnotation--;
}

core.List<api.GoogleCloudVideointelligenceV1Track> buildUnnamed6953() => [
      buildGoogleCloudVideointelligenceV1Track(),
      buildGoogleCloudVideointelligenceV1Track(),
    ];

void checkUnnamed6953(core.List<api.GoogleCloudVideointelligenceV1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1Track(o[0]);
  checkGoogleCloudVideointelligenceV1Track(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1FaceDetectionAnnotation = 0;
api.GoogleCloudVideointelligenceV1FaceDetectionAnnotation
    buildGoogleCloudVideointelligenceV1FaceDetectionAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1FaceDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceDetectionAnnotation < 3) {
    o.thumbnail = 'foo';
    o.tracks = buildUnnamed6953();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1FaceDetectionAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1FaceDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1FaceDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceDetectionAnnotation < 3) {
    unittest.expect(
      o.thumbnail!,
      unittest.equals('foo'),
    );
    checkUnnamed6953(o.tracks!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1FaceDetectionAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1FaceDetectionConfig = 0;
api.GoogleCloudVideointelligenceV1FaceDetectionConfig
    buildGoogleCloudVideointelligenceV1FaceDetectionConfig() {
  final o = api.GoogleCloudVideointelligenceV1FaceDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1FaceDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceDetectionConfig < 3) {
    o.includeAttributes = true;
    o.includeBoundingBoxes = true;
    o.model = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1FaceDetectionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1FaceDetectionConfig(
    api.GoogleCloudVideointelligenceV1FaceDetectionConfig o) {
  buildCounterGoogleCloudVideointelligenceV1FaceDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceDetectionConfig < 3) {
    unittest.expect(o.includeAttributes!, unittest.isTrue);
    unittest.expect(o.includeBoundingBoxes!, unittest.isTrue);
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1FaceDetectionConfig--;
}

core.List<api.GoogleCloudVideointelligenceV1NormalizedBoundingBox>
    buildUnnamed6954() => [
          buildGoogleCloudVideointelligenceV1NormalizedBoundingBox(),
          buildGoogleCloudVideointelligenceV1NormalizedBoundingBox(),
        ];

void checkUnnamed6954(
    core.List<api.GoogleCloudVideointelligenceV1NormalizedBoundingBox> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1NormalizedBoundingBox(o[0]);
  checkGoogleCloudVideointelligenceV1NormalizedBoundingBox(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1FaceFrame = 0;
api.GoogleCloudVideointelligenceV1FaceFrame
    buildGoogleCloudVideointelligenceV1FaceFrame() {
  final o = api.GoogleCloudVideointelligenceV1FaceFrame();
  buildCounterGoogleCloudVideointelligenceV1FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceFrame < 3) {
    o.normalizedBoundingBoxes = buildUnnamed6954();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1FaceFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1FaceFrame(
    api.GoogleCloudVideointelligenceV1FaceFrame o) {
  buildCounterGoogleCloudVideointelligenceV1FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceFrame < 3) {
    checkUnnamed6954(o.normalizedBoundingBoxes!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1FaceFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1FaceSegment = 0;
api.GoogleCloudVideointelligenceV1FaceSegment
    buildGoogleCloudVideointelligenceV1FaceSegment() {
  final o = api.GoogleCloudVideointelligenceV1FaceSegment();
  buildCounterGoogleCloudVideointelligenceV1FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceSegment < 3) {
    o.segment = buildGoogleCloudVideointelligenceV1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1FaceSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1FaceSegment(
    api.GoogleCloudVideointelligenceV1FaceSegment o) {
  buildCounterGoogleCloudVideointelligenceV1FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceSegment < 3) {
    checkGoogleCloudVideointelligenceV1VideoSegment(o.segment!);
  }
  buildCounterGoogleCloudVideointelligenceV1FaceSegment--;
}

core.List<api.GoogleCloudVideointelligenceV1Entity> buildUnnamed6955() => [
      buildGoogleCloudVideointelligenceV1Entity(),
      buildGoogleCloudVideointelligenceV1Entity(),
    ];

void checkUnnamed6955(core.List<api.GoogleCloudVideointelligenceV1Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1Entity(o[0]);
  checkGoogleCloudVideointelligenceV1Entity(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1LabelFrame> buildUnnamed6956() => [
      buildGoogleCloudVideointelligenceV1LabelFrame(),
      buildGoogleCloudVideointelligenceV1LabelFrame(),
    ];

void checkUnnamed6956(
    core.List<api.GoogleCloudVideointelligenceV1LabelFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelFrame(o[0]);
  checkGoogleCloudVideointelligenceV1LabelFrame(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1LabelSegment> buildUnnamed6957() =>
    [
      buildGoogleCloudVideointelligenceV1LabelSegment(),
      buildGoogleCloudVideointelligenceV1LabelSegment(),
    ];

void checkUnnamed6957(
    core.List<api.GoogleCloudVideointelligenceV1LabelSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelSegment(o[0]);
  checkGoogleCloudVideointelligenceV1LabelSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1LabelAnnotation = 0;
api.GoogleCloudVideointelligenceV1LabelAnnotation
    buildGoogleCloudVideointelligenceV1LabelAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1LabelAnnotation();
  buildCounterGoogleCloudVideointelligenceV1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelAnnotation < 3) {
    o.categoryEntities = buildUnnamed6955();
    o.entity = buildGoogleCloudVideointelligenceV1Entity();
    o.frames = buildUnnamed6956();
    o.segments = buildUnnamed6957();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1LabelAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1LabelAnnotation(
    api.GoogleCloudVideointelligenceV1LabelAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelAnnotation < 3) {
    checkUnnamed6955(o.categoryEntities!);
    checkGoogleCloudVideointelligenceV1Entity(o.entity!);
    checkUnnamed6956(o.frames!);
    checkUnnamed6957(o.segments!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1LabelAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1LabelDetectionConfig = 0;
api.GoogleCloudVideointelligenceV1LabelDetectionConfig
    buildGoogleCloudVideointelligenceV1LabelDetectionConfig() {
  final o = api.GoogleCloudVideointelligenceV1LabelDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1LabelDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelDetectionConfig < 3) {
    o.frameConfidenceThreshold = 42.0;
    o.labelDetectionMode = 'foo';
    o.model = 'foo';
    o.stationaryCamera = true;
    o.videoConfidenceThreshold = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1LabelDetectionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1LabelDetectionConfig(
    api.GoogleCloudVideointelligenceV1LabelDetectionConfig o) {
  buildCounterGoogleCloudVideointelligenceV1LabelDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelDetectionConfig < 3) {
    unittest.expect(
      o.frameConfidenceThreshold!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.labelDetectionMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(o.stationaryCamera!, unittest.isTrue);
    unittest.expect(
      o.videoConfidenceThreshold!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1LabelDetectionConfig--;
}

core.int buildCounterGoogleCloudVideointelligenceV1LabelFrame = 0;
api.GoogleCloudVideointelligenceV1LabelFrame
    buildGoogleCloudVideointelligenceV1LabelFrame() {
  final o = api.GoogleCloudVideointelligenceV1LabelFrame();
  buildCounterGoogleCloudVideointelligenceV1LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelFrame < 3) {
    o.confidence = 42.0;
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1LabelFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1LabelFrame(
    api.GoogleCloudVideointelligenceV1LabelFrame o) {
  buildCounterGoogleCloudVideointelligenceV1LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelFrame < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1LabelFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1LabelSegment = 0;
api.GoogleCloudVideointelligenceV1LabelSegment
    buildGoogleCloudVideointelligenceV1LabelSegment() {
  final o = api.GoogleCloudVideointelligenceV1LabelSegment();
  buildCounterGoogleCloudVideointelligenceV1LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelSegment < 3) {
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1LabelSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1LabelSegment(
    api.GoogleCloudVideointelligenceV1LabelSegment o) {
  buildCounterGoogleCloudVideointelligenceV1LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelSegment < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVideointelligenceV1VideoSegment(o.segment!);
  }
  buildCounterGoogleCloudVideointelligenceV1LabelSegment--;
}

core.List<api.GoogleCloudVideointelligenceV1VideoSegment> buildUnnamed6958() =>
    [
      buildGoogleCloudVideointelligenceV1VideoSegment(),
      buildGoogleCloudVideointelligenceV1VideoSegment(),
    ];

void checkUnnamed6958(
    core.List<api.GoogleCloudVideointelligenceV1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1VideoSegment(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1Track> buildUnnamed6959() => [
      buildGoogleCloudVideointelligenceV1Track(),
      buildGoogleCloudVideointelligenceV1Track(),
    ];

void checkUnnamed6959(core.List<api.GoogleCloudVideointelligenceV1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1Track(o[0]);
  checkGoogleCloudVideointelligenceV1Track(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1LogoRecognitionAnnotation =
    0;
api.GoogleCloudVideointelligenceV1LogoRecognitionAnnotation
    buildGoogleCloudVideointelligenceV1LogoRecognitionAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1LogoRecognitionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1LogoRecognitionAnnotation < 3) {
    o.entity = buildGoogleCloudVideointelligenceV1Entity();
    o.segments = buildUnnamed6958();
    o.tracks = buildUnnamed6959();
  }
  buildCounterGoogleCloudVideointelligenceV1LogoRecognitionAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1LogoRecognitionAnnotation(
    api.GoogleCloudVideointelligenceV1LogoRecognitionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1LogoRecognitionAnnotation < 3) {
    checkGoogleCloudVideointelligenceV1Entity(o.entity!);
    checkUnnamed6958(o.segments!);
    checkUnnamed6959(o.tracks!);
  }
  buildCounterGoogleCloudVideointelligenceV1LogoRecognitionAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingBox = 0;
api.GoogleCloudVideointelligenceV1NormalizedBoundingBox
    buildGoogleCloudVideointelligenceV1NormalizedBoundingBox() {
  final o = api.GoogleCloudVideointelligenceV1NormalizedBoundingBox();
  buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingBox++;
  if (buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingBox < 3) {
    o.bottom = 42.0;
    o.left = 42.0;
    o.right = 42.0;
    o.top = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingBox--;
  return o;
}

void checkGoogleCloudVideointelligenceV1NormalizedBoundingBox(
    api.GoogleCloudVideointelligenceV1NormalizedBoundingBox o) {
  buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingBox++;
  if (buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingBox < 3) {
    unittest.expect(
      o.bottom!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.left!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.right!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.top!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingBox--;
}

core.List<api.GoogleCloudVideointelligenceV1NormalizedVertex>
    buildUnnamed6960() => [
          buildGoogleCloudVideointelligenceV1NormalizedVertex(),
          buildGoogleCloudVideointelligenceV1NormalizedVertex(),
        ];

void checkUnnamed6960(
    core.List<api.GoogleCloudVideointelligenceV1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1NormalizedVertex(o[0]);
  checkGoogleCloudVideointelligenceV1NormalizedVertex(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingPoly = 0;
api.GoogleCloudVideointelligenceV1NormalizedBoundingPoly
    buildGoogleCloudVideointelligenceV1NormalizedBoundingPoly() {
  final o = api.GoogleCloudVideointelligenceV1NormalizedBoundingPoly();
  buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingPoly < 3) {
    o.vertices = buildUnnamed6960();
  }
  buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingPoly--;
  return o;
}

void checkGoogleCloudVideointelligenceV1NormalizedBoundingPoly(
    api.GoogleCloudVideointelligenceV1NormalizedBoundingPoly o) {
  buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingPoly < 3) {
    checkUnnamed6960(o.vertices!);
  }
  buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingPoly--;
}

core.int buildCounterGoogleCloudVideointelligenceV1NormalizedVertex = 0;
api.GoogleCloudVideointelligenceV1NormalizedVertex
    buildGoogleCloudVideointelligenceV1NormalizedVertex() {
  final o = api.GoogleCloudVideointelligenceV1NormalizedVertex();
  buildCounterGoogleCloudVideointelligenceV1NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1NormalizedVertex--;
  return o;
}

void checkGoogleCloudVideointelligenceV1NormalizedVertex(
    api.GoogleCloudVideointelligenceV1NormalizedVertex o) {
  buildCounterGoogleCloudVideointelligenceV1NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1NormalizedVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1NormalizedVertex--;
}

core.List<api.GoogleCloudVideointelligenceV1ObjectTrackingFrame>
    buildUnnamed6961() => [
          buildGoogleCloudVideointelligenceV1ObjectTrackingFrame(),
          buildGoogleCloudVideointelligenceV1ObjectTrackingFrame(),
        ];

void checkUnnamed6961(
    core.List<api.GoogleCloudVideointelligenceV1ObjectTrackingFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1ObjectTrackingFrame(o[0]);
  checkGoogleCloudVideointelligenceV1ObjectTrackingFrame(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1ObjectTrackingAnnotation = 0;
api.GoogleCloudVideointelligenceV1ObjectTrackingAnnotation
    buildGoogleCloudVideointelligenceV1ObjectTrackingAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1ObjectTrackingAnnotation();
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1ObjectTrackingAnnotation < 3) {
    o.confidence = 42.0;
    o.entity = buildGoogleCloudVideointelligenceV1Entity();
    o.frames = buildUnnamed6961();
    o.segment = buildGoogleCloudVideointelligenceV1VideoSegment();
    o.trackId = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1ObjectTrackingAnnotation(
    api.GoogleCloudVideointelligenceV1ObjectTrackingAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1ObjectTrackingAnnotation < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVideointelligenceV1Entity(o.entity!);
    checkUnnamed6961(o.frames!);
    checkGoogleCloudVideointelligenceV1VideoSegment(o.segment!);
    unittest.expect(
      o.trackId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1ObjectTrackingConfig = 0;
api.GoogleCloudVideointelligenceV1ObjectTrackingConfig
    buildGoogleCloudVideointelligenceV1ObjectTrackingConfig() {
  final o = api.GoogleCloudVideointelligenceV1ObjectTrackingConfig();
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1ObjectTrackingConfig < 3) {
    o.model = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1ObjectTrackingConfig(
    api.GoogleCloudVideointelligenceV1ObjectTrackingConfig o) {
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1ObjectTrackingConfig < 3) {
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingConfig--;
}

core.int buildCounterGoogleCloudVideointelligenceV1ObjectTrackingFrame = 0;
api.GoogleCloudVideointelligenceV1ObjectTrackingFrame
    buildGoogleCloudVideointelligenceV1ObjectTrackingFrame() {
  final o = api.GoogleCloudVideointelligenceV1ObjectTrackingFrame();
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1ObjectTrackingFrame < 3) {
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1NormalizedBoundingBox();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1ObjectTrackingFrame(
    api.GoogleCloudVideointelligenceV1ObjectTrackingFrame o) {
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1ObjectTrackingFrame < 3) {
    checkGoogleCloudVideointelligenceV1NormalizedBoundingBox(
        o.normalizedBoundingBox!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingFrame--;
}

core.List<api.GoogleCloudVideointelligenceV1Track> buildUnnamed6962() => [
      buildGoogleCloudVideointelligenceV1Track(),
      buildGoogleCloudVideointelligenceV1Track(),
    ];

void checkUnnamed6962(core.List<api.GoogleCloudVideointelligenceV1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1Track(o[0]);
  checkGoogleCloudVideointelligenceV1Track(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1PersonDetectionAnnotation =
    0;
api.GoogleCloudVideointelligenceV1PersonDetectionAnnotation
    buildGoogleCloudVideointelligenceV1PersonDetectionAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1PersonDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1PersonDetectionAnnotation < 3) {
    o.tracks = buildUnnamed6962();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1PersonDetectionAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1PersonDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1PersonDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1PersonDetectionAnnotation < 3) {
    checkUnnamed6962(o.tracks!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1PersonDetectionAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1PersonDetectionConfig = 0;
api.GoogleCloudVideointelligenceV1PersonDetectionConfig
    buildGoogleCloudVideointelligenceV1PersonDetectionConfig() {
  final o = api.GoogleCloudVideointelligenceV1PersonDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1PersonDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1PersonDetectionConfig < 3) {
    o.includeAttributes = true;
    o.includeBoundingBoxes = true;
    o.includePoseLandmarks = true;
  }
  buildCounterGoogleCloudVideointelligenceV1PersonDetectionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1PersonDetectionConfig(
    api.GoogleCloudVideointelligenceV1PersonDetectionConfig o) {
  buildCounterGoogleCloudVideointelligenceV1PersonDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1PersonDetectionConfig < 3) {
    unittest.expect(o.includeAttributes!, unittest.isTrue);
    unittest.expect(o.includeBoundingBoxes!, unittest.isTrue);
    unittest.expect(o.includePoseLandmarks!, unittest.isTrue);
  }
  buildCounterGoogleCloudVideointelligenceV1PersonDetectionConfig--;
}

core.int buildCounterGoogleCloudVideointelligenceV1ShotChangeDetectionConfig =
    0;
api.GoogleCloudVideointelligenceV1ShotChangeDetectionConfig
    buildGoogleCloudVideointelligenceV1ShotChangeDetectionConfig() {
  final o = api.GoogleCloudVideointelligenceV1ShotChangeDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1ShotChangeDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1ShotChangeDetectionConfig < 3) {
    o.model = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1ShotChangeDetectionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1ShotChangeDetectionConfig(
    api.GoogleCloudVideointelligenceV1ShotChangeDetectionConfig o) {
  buildCounterGoogleCloudVideointelligenceV1ShotChangeDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1ShotChangeDetectionConfig < 3) {
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1ShotChangeDetectionConfig--;
}

core.List<core.String> buildUnnamed6963() => [
      'foo',
      'foo',
    ];

void checkUnnamed6963(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudVideointelligenceV1SpeechContext = 0;
api.GoogleCloudVideointelligenceV1SpeechContext
    buildGoogleCloudVideointelligenceV1SpeechContext() {
  final o = api.GoogleCloudVideointelligenceV1SpeechContext();
  buildCounterGoogleCloudVideointelligenceV1SpeechContext++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechContext < 3) {
    o.phrases = buildUnnamed6963();
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechContext--;
  return o;
}

void checkGoogleCloudVideointelligenceV1SpeechContext(
    api.GoogleCloudVideointelligenceV1SpeechContext o) {
  buildCounterGoogleCloudVideointelligenceV1SpeechContext++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechContext < 3) {
    checkUnnamed6963(o.phrases!);
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechContext--;
}

core.List<api.GoogleCloudVideointelligenceV1WordInfo> buildUnnamed6964() => [
      buildGoogleCloudVideointelligenceV1WordInfo(),
      buildGoogleCloudVideointelligenceV1WordInfo(),
    ];

void checkUnnamed6964(core.List<api.GoogleCloudVideointelligenceV1WordInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1WordInfo(o[0]);
  checkGoogleCloudVideointelligenceV1WordInfo(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1SpeechRecognitionAlternative = 0;
api.GoogleCloudVideointelligenceV1SpeechRecognitionAlternative
    buildGoogleCloudVideointelligenceV1SpeechRecognitionAlternative() {
  final o = api.GoogleCloudVideointelligenceV1SpeechRecognitionAlternative();
  buildCounterGoogleCloudVideointelligenceV1SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechRecognitionAlternative <
      3) {
    o.confidence = 42.0;
    o.transcript = 'foo';
    o.words = buildUnnamed6964();
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechRecognitionAlternative--;
  return o;
}

void checkGoogleCloudVideointelligenceV1SpeechRecognitionAlternative(
    api.GoogleCloudVideointelligenceV1SpeechRecognitionAlternative o) {
  buildCounterGoogleCloudVideointelligenceV1SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechRecognitionAlternative <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.transcript!,
      unittest.equals('foo'),
    );
    checkUnnamed6964(o.words!);
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechRecognitionAlternative--;
}

core.List<api.GoogleCloudVideointelligenceV1SpeechRecognitionAlternative>
    buildUnnamed6965() => [
          buildGoogleCloudVideointelligenceV1SpeechRecognitionAlternative(),
          buildGoogleCloudVideointelligenceV1SpeechRecognitionAlternative(),
        ];

void checkUnnamed6965(
    core.List<api.GoogleCloudVideointelligenceV1SpeechRecognitionAlternative>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1SpeechRecognitionAlternative(o[0]);
  checkGoogleCloudVideointelligenceV1SpeechRecognitionAlternative(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1SpeechTranscription = 0;
api.GoogleCloudVideointelligenceV1SpeechTranscription
    buildGoogleCloudVideointelligenceV1SpeechTranscription() {
  final o = api.GoogleCloudVideointelligenceV1SpeechTranscription();
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechTranscription < 3) {
    o.alternatives = buildUnnamed6965();
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscription--;
  return o;
}

void checkGoogleCloudVideointelligenceV1SpeechTranscription(
    api.GoogleCloudVideointelligenceV1SpeechTranscription o) {
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechTranscription < 3) {
    checkUnnamed6965(o.alternatives!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscription--;
}

core.List<core.int> buildUnnamed6966() => [
      42,
      42,
    ];

void checkUnnamed6966(core.List<core.int> o) {
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

core.List<api.GoogleCloudVideointelligenceV1SpeechContext> buildUnnamed6967() =>
    [
      buildGoogleCloudVideointelligenceV1SpeechContext(),
      buildGoogleCloudVideointelligenceV1SpeechContext(),
    ];

void checkUnnamed6967(
    core.List<api.GoogleCloudVideointelligenceV1SpeechContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1SpeechContext(o[0]);
  checkGoogleCloudVideointelligenceV1SpeechContext(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1SpeechTranscriptionConfig =
    0;
api.GoogleCloudVideointelligenceV1SpeechTranscriptionConfig
    buildGoogleCloudVideointelligenceV1SpeechTranscriptionConfig() {
  final o = api.GoogleCloudVideointelligenceV1SpeechTranscriptionConfig();
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscriptionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechTranscriptionConfig < 3) {
    o.audioTracks = buildUnnamed6966();
    o.diarizationSpeakerCount = 42;
    o.enableAutomaticPunctuation = true;
    o.enableSpeakerDiarization = true;
    o.enableWordConfidence = true;
    o.filterProfanity = true;
    o.languageCode = 'foo';
    o.maxAlternatives = 42;
    o.speechContexts = buildUnnamed6967();
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscriptionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1SpeechTranscriptionConfig(
    api.GoogleCloudVideointelligenceV1SpeechTranscriptionConfig o) {
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscriptionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechTranscriptionConfig < 3) {
    checkUnnamed6966(o.audioTracks!);
    unittest.expect(
      o.diarizationSpeakerCount!,
      unittest.equals(42),
    );
    unittest.expect(o.enableAutomaticPunctuation!, unittest.isTrue);
    unittest.expect(o.enableSpeakerDiarization!, unittest.isTrue);
    unittest.expect(o.enableWordConfidence!, unittest.isTrue);
    unittest.expect(o.filterProfanity!, unittest.isTrue);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxAlternatives!,
      unittest.equals(42),
    );
    checkUnnamed6967(o.speechContexts!);
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscriptionConfig--;
}

core.List<api.GoogleCloudVideointelligenceV1TextSegment> buildUnnamed6968() => [
      buildGoogleCloudVideointelligenceV1TextSegment(),
      buildGoogleCloudVideointelligenceV1TextSegment(),
    ];

void checkUnnamed6968(
    core.List<api.GoogleCloudVideointelligenceV1TextSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1TextSegment(o[0]);
  checkGoogleCloudVideointelligenceV1TextSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1TextAnnotation = 0;
api.GoogleCloudVideointelligenceV1TextAnnotation
    buildGoogleCloudVideointelligenceV1TextAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1TextAnnotation();
  buildCounterGoogleCloudVideointelligenceV1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1TextAnnotation < 3) {
    o.segments = buildUnnamed6968();
    o.text = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1TextAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1TextAnnotation(
    api.GoogleCloudVideointelligenceV1TextAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1TextAnnotation < 3) {
    checkUnnamed6968(o.segments!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1TextAnnotation--;
}

core.List<core.String> buildUnnamed6969() => [
      'foo',
      'foo',
    ];

void checkUnnamed6969(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig = 0;
api.GoogleCloudVideointelligenceV1TextDetectionConfig
    buildGoogleCloudVideointelligenceV1TextDetectionConfig() {
  final o = api.GoogleCloudVideointelligenceV1TextDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig < 3) {
    o.languageHints = buildUnnamed6969();
    o.model = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1TextDetectionConfig(
    api.GoogleCloudVideointelligenceV1TextDetectionConfig o) {
  buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig < 3) {
    checkUnnamed6969(o.languageHints!);
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig--;
}

core.int buildCounterGoogleCloudVideointelligenceV1TextFrame = 0;
api.GoogleCloudVideointelligenceV1TextFrame
    buildGoogleCloudVideointelligenceV1TextFrame() {
  final o = api.GoogleCloudVideointelligenceV1TextFrame();
  buildCounterGoogleCloudVideointelligenceV1TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1TextFrame < 3) {
    o.rotatedBoundingBox =
        buildGoogleCloudVideointelligenceV1NormalizedBoundingPoly();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1TextFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1TextFrame(
    api.GoogleCloudVideointelligenceV1TextFrame o) {
  buildCounterGoogleCloudVideointelligenceV1TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1TextFrame < 3) {
    checkGoogleCloudVideointelligenceV1NormalizedBoundingPoly(
        o.rotatedBoundingBox!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1TextFrame--;
}

core.List<api.GoogleCloudVideointelligenceV1TextFrame> buildUnnamed6970() => [
      buildGoogleCloudVideointelligenceV1TextFrame(),
      buildGoogleCloudVideointelligenceV1TextFrame(),
    ];

void checkUnnamed6970(
    core.List<api.GoogleCloudVideointelligenceV1TextFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1TextFrame(o[0]);
  checkGoogleCloudVideointelligenceV1TextFrame(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1TextSegment = 0;
api.GoogleCloudVideointelligenceV1TextSegment
    buildGoogleCloudVideointelligenceV1TextSegment() {
  final o = api.GoogleCloudVideointelligenceV1TextSegment();
  buildCounterGoogleCloudVideointelligenceV1TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1TextSegment < 3) {
    o.confidence = 42.0;
    o.frames = buildUnnamed6970();
    o.segment = buildGoogleCloudVideointelligenceV1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1TextSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1TextSegment(
    api.GoogleCloudVideointelligenceV1TextSegment o) {
  buildCounterGoogleCloudVideointelligenceV1TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1TextSegment < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkUnnamed6970(o.frames!);
    checkGoogleCloudVideointelligenceV1VideoSegment(o.segment!);
  }
  buildCounterGoogleCloudVideointelligenceV1TextSegment--;
}

core.List<api.GoogleCloudVideointelligenceV1DetectedAttribute>
    buildUnnamed6971() => [
          buildGoogleCloudVideointelligenceV1DetectedAttribute(),
          buildGoogleCloudVideointelligenceV1DetectedAttribute(),
        ];

void checkUnnamed6971(
    core.List<api.GoogleCloudVideointelligenceV1DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1DetectedAttribute(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1DetectedLandmark>
    buildUnnamed6972() => [
          buildGoogleCloudVideointelligenceV1DetectedLandmark(),
          buildGoogleCloudVideointelligenceV1DetectedLandmark(),
        ];

void checkUnnamed6972(
    core.List<api.GoogleCloudVideointelligenceV1DetectedLandmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1DetectedLandmark(o[0]);
  checkGoogleCloudVideointelligenceV1DetectedLandmark(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1TimestampedObject = 0;
api.GoogleCloudVideointelligenceV1TimestampedObject
    buildGoogleCloudVideointelligenceV1TimestampedObject() {
  final o = api.GoogleCloudVideointelligenceV1TimestampedObject();
  buildCounterGoogleCloudVideointelligenceV1TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1TimestampedObject < 3) {
    o.attributes = buildUnnamed6971();
    o.landmarks = buildUnnamed6972();
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1NormalizedBoundingBox();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1TimestampedObject--;
  return o;
}

void checkGoogleCloudVideointelligenceV1TimestampedObject(
    api.GoogleCloudVideointelligenceV1TimestampedObject o) {
  buildCounterGoogleCloudVideointelligenceV1TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1TimestampedObject < 3) {
    checkUnnamed6971(o.attributes!);
    checkUnnamed6972(o.landmarks!);
    checkGoogleCloudVideointelligenceV1NormalizedBoundingBox(
        o.normalizedBoundingBox!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1TimestampedObject--;
}

core.List<api.GoogleCloudVideointelligenceV1DetectedAttribute>
    buildUnnamed6973() => [
          buildGoogleCloudVideointelligenceV1DetectedAttribute(),
          buildGoogleCloudVideointelligenceV1DetectedAttribute(),
        ];

void checkUnnamed6973(
    core.List<api.GoogleCloudVideointelligenceV1DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1DetectedAttribute(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1TimestampedObject>
    buildUnnamed6974() => [
          buildGoogleCloudVideointelligenceV1TimestampedObject(),
          buildGoogleCloudVideointelligenceV1TimestampedObject(),
        ];

void checkUnnamed6974(
    core.List<api.GoogleCloudVideointelligenceV1TimestampedObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1TimestampedObject(o[0]);
  checkGoogleCloudVideointelligenceV1TimestampedObject(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1Track = 0;
api.GoogleCloudVideointelligenceV1Track
    buildGoogleCloudVideointelligenceV1Track() {
  final o = api.GoogleCloudVideointelligenceV1Track();
  buildCounterGoogleCloudVideointelligenceV1Track++;
  if (buildCounterGoogleCloudVideointelligenceV1Track < 3) {
    o.attributes = buildUnnamed6973();
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1VideoSegment();
    o.timestampedObjects = buildUnnamed6974();
  }
  buildCounterGoogleCloudVideointelligenceV1Track--;
  return o;
}

void checkGoogleCloudVideointelligenceV1Track(
    api.GoogleCloudVideointelligenceV1Track o) {
  buildCounterGoogleCloudVideointelligenceV1Track++;
  if (buildCounterGoogleCloudVideointelligenceV1Track < 3) {
    checkUnnamed6973(o.attributes!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVideointelligenceV1VideoSegment(o.segment!);
    checkUnnamed6974(o.timestampedObjects!);
  }
  buildCounterGoogleCloudVideointelligenceV1Track--;
}

core.int buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress = 0;
api.GoogleCloudVideointelligenceV1VideoAnnotationProgress
    buildGoogleCloudVideointelligenceV1VideoAnnotationProgress() {
  final o = api.GoogleCloudVideointelligenceV1VideoAnnotationProgress();
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress < 3) {
    o.feature = 'foo';
    o.inputUri = 'foo';
    o.progressPercent = 42;
    o.segment = buildGoogleCloudVideointelligenceV1VideoSegment();
    o.startTime = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress--;
  return o;
}

void checkGoogleCloudVideointelligenceV1VideoAnnotationProgress(
    api.GoogleCloudVideointelligenceV1VideoAnnotationProgress o) {
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress < 3) {
    unittest.expect(
      o.feature!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.progressPercent!,
      unittest.equals(42),
    );
    checkGoogleCloudVideointelligenceV1VideoSegment(o.segment!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress--;
}

core.List<api.GoogleCloudVideointelligenceV1FaceAnnotation>
    buildUnnamed6975() => [
          buildGoogleCloudVideointelligenceV1FaceAnnotation(),
          buildGoogleCloudVideointelligenceV1FaceAnnotation(),
        ];

void checkUnnamed6975(
    core.List<api.GoogleCloudVideointelligenceV1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1FaceAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1FaceAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1FaceDetectionAnnotation>
    buildUnnamed6976() => [
          buildGoogleCloudVideointelligenceV1FaceDetectionAnnotation(),
          buildGoogleCloudVideointelligenceV1FaceDetectionAnnotation(),
        ];

void checkUnnamed6976(
    core.List<api.GoogleCloudVideointelligenceV1FaceDetectionAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1FaceDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1FaceDetectionAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation>
    buildUnnamed6977() => [
          buildGoogleCloudVideointelligenceV1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1LabelAnnotation(),
        ];

void checkUnnamed6977(
    core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1LogoRecognitionAnnotation>
    buildUnnamed6978() => [
          buildGoogleCloudVideointelligenceV1LogoRecognitionAnnotation(),
          buildGoogleCloudVideointelligenceV1LogoRecognitionAnnotation(),
        ];

void checkUnnamed6978(
    core.List<api.GoogleCloudVideointelligenceV1LogoRecognitionAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LogoRecognitionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1LogoRecognitionAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1ObjectTrackingAnnotation>
    buildUnnamed6979() => [
          buildGoogleCloudVideointelligenceV1ObjectTrackingAnnotation(),
          buildGoogleCloudVideointelligenceV1ObjectTrackingAnnotation(),
        ];

void checkUnnamed6979(
    core.List<api.GoogleCloudVideointelligenceV1ObjectTrackingAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1ObjectTrackingAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1ObjectTrackingAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1PersonDetectionAnnotation>
    buildUnnamed6980() => [
          buildGoogleCloudVideointelligenceV1PersonDetectionAnnotation(),
          buildGoogleCloudVideointelligenceV1PersonDetectionAnnotation(),
        ];

void checkUnnamed6980(
    core.List<api.GoogleCloudVideointelligenceV1PersonDetectionAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1PersonDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1PersonDetectionAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation>
    buildUnnamed6981() => [
          buildGoogleCloudVideointelligenceV1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1LabelAnnotation(),
        ];

void checkUnnamed6981(
    core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation>
    buildUnnamed6982() => [
          buildGoogleCloudVideointelligenceV1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1LabelAnnotation(),
        ];

void checkUnnamed6982(
    core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1VideoSegment> buildUnnamed6983() =>
    [
      buildGoogleCloudVideointelligenceV1VideoSegment(),
      buildGoogleCloudVideointelligenceV1VideoSegment(),
    ];

void checkUnnamed6983(
    core.List<api.GoogleCloudVideointelligenceV1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1VideoSegment(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation>
    buildUnnamed6984() => [
          buildGoogleCloudVideointelligenceV1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1LabelAnnotation(),
        ];

void checkUnnamed6984(
    core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation>
    buildUnnamed6985() => [
          buildGoogleCloudVideointelligenceV1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1LabelAnnotation(),
        ];

void checkUnnamed6985(
    core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1SpeechTranscription>
    buildUnnamed6986() => [
          buildGoogleCloudVideointelligenceV1SpeechTranscription(),
          buildGoogleCloudVideointelligenceV1SpeechTranscription(),
        ];

void checkUnnamed6986(
    core.List<api.GoogleCloudVideointelligenceV1SpeechTranscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1SpeechTranscription(o[0]);
  checkGoogleCloudVideointelligenceV1SpeechTranscription(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1TextAnnotation>
    buildUnnamed6987() => [
          buildGoogleCloudVideointelligenceV1TextAnnotation(),
          buildGoogleCloudVideointelligenceV1TextAnnotation(),
        ];

void checkUnnamed6987(
    core.List<api.GoogleCloudVideointelligenceV1TextAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1TextAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1TextAnnotation(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults = 0;
api.GoogleCloudVideointelligenceV1VideoAnnotationResults
    buildGoogleCloudVideointelligenceV1VideoAnnotationResults() {
  final o = api.GoogleCloudVideointelligenceV1VideoAnnotationResults();
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults < 3) {
    o.error = buildGoogleRpcStatus();
    o.explicitAnnotation =
        buildGoogleCloudVideointelligenceV1ExplicitContentAnnotation();
    o.faceAnnotations = buildUnnamed6975();
    o.faceDetectionAnnotations = buildUnnamed6976();
    o.frameLabelAnnotations = buildUnnamed6977();
    o.inputUri = 'foo';
    o.logoRecognitionAnnotations = buildUnnamed6978();
    o.objectAnnotations = buildUnnamed6979();
    o.personDetectionAnnotations = buildUnnamed6980();
    o.segment = buildGoogleCloudVideointelligenceV1VideoSegment();
    o.segmentLabelAnnotations = buildUnnamed6981();
    o.segmentPresenceLabelAnnotations = buildUnnamed6982();
    o.shotAnnotations = buildUnnamed6983();
    o.shotLabelAnnotations = buildUnnamed6984();
    o.shotPresenceLabelAnnotations = buildUnnamed6985();
    o.speechTranscriptions = buildUnnamed6986();
    o.textAnnotations = buildUnnamed6987();
  }
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults--;
  return o;
}

void checkGoogleCloudVideointelligenceV1VideoAnnotationResults(
    api.GoogleCloudVideointelligenceV1VideoAnnotationResults o) {
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults < 3) {
    checkGoogleRpcStatus(o.error!);
    checkGoogleCloudVideointelligenceV1ExplicitContentAnnotation(
        o.explicitAnnotation!);
    checkUnnamed6975(o.faceAnnotations!);
    checkUnnamed6976(o.faceDetectionAnnotations!);
    checkUnnamed6977(o.frameLabelAnnotations!);
    unittest.expect(
      o.inputUri!,
      unittest.equals('foo'),
    );
    checkUnnamed6978(o.logoRecognitionAnnotations!);
    checkUnnamed6979(o.objectAnnotations!);
    checkUnnamed6980(o.personDetectionAnnotations!);
    checkGoogleCloudVideointelligenceV1VideoSegment(o.segment!);
    checkUnnamed6981(o.segmentLabelAnnotations!);
    checkUnnamed6982(o.segmentPresenceLabelAnnotations!);
    checkUnnamed6983(o.shotAnnotations!);
    checkUnnamed6984(o.shotLabelAnnotations!);
    checkUnnamed6985(o.shotPresenceLabelAnnotations!);
    checkUnnamed6986(o.speechTranscriptions!);
    checkUnnamed6987(o.textAnnotations!);
  }
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults--;
}

core.List<api.GoogleCloudVideointelligenceV1VideoSegment> buildUnnamed6988() =>
    [
      buildGoogleCloudVideointelligenceV1VideoSegment(),
      buildGoogleCloudVideointelligenceV1VideoSegment(),
    ];

void checkUnnamed6988(
    core.List<api.GoogleCloudVideointelligenceV1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1VideoSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1VideoContext = 0;
api.GoogleCloudVideointelligenceV1VideoContext
    buildGoogleCloudVideointelligenceV1VideoContext() {
  final o = api.GoogleCloudVideointelligenceV1VideoContext();
  buildCounterGoogleCloudVideointelligenceV1VideoContext++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoContext < 3) {
    o.explicitContentDetectionConfig =
        buildGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig();
    o.faceDetectionConfig =
        buildGoogleCloudVideointelligenceV1FaceDetectionConfig();
    o.labelDetectionConfig =
        buildGoogleCloudVideointelligenceV1LabelDetectionConfig();
    o.objectTrackingConfig =
        buildGoogleCloudVideointelligenceV1ObjectTrackingConfig();
    o.personDetectionConfig =
        buildGoogleCloudVideointelligenceV1PersonDetectionConfig();
    o.segments = buildUnnamed6988();
    o.shotChangeDetectionConfig =
        buildGoogleCloudVideointelligenceV1ShotChangeDetectionConfig();
    o.speechTranscriptionConfig =
        buildGoogleCloudVideointelligenceV1SpeechTranscriptionConfig();
    o.textDetectionConfig =
        buildGoogleCloudVideointelligenceV1TextDetectionConfig();
  }
  buildCounterGoogleCloudVideointelligenceV1VideoContext--;
  return o;
}

void checkGoogleCloudVideointelligenceV1VideoContext(
    api.GoogleCloudVideointelligenceV1VideoContext o) {
  buildCounterGoogleCloudVideointelligenceV1VideoContext++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoContext < 3) {
    checkGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig(
        o.explicitContentDetectionConfig!);
    checkGoogleCloudVideointelligenceV1FaceDetectionConfig(
        o.faceDetectionConfig!);
    checkGoogleCloudVideointelligenceV1LabelDetectionConfig(
        o.labelDetectionConfig!);
    checkGoogleCloudVideointelligenceV1ObjectTrackingConfig(
        o.objectTrackingConfig!);
    checkGoogleCloudVideointelligenceV1PersonDetectionConfig(
        o.personDetectionConfig!);
    checkUnnamed6988(o.segments!);
    checkGoogleCloudVideointelligenceV1ShotChangeDetectionConfig(
        o.shotChangeDetectionConfig!);
    checkGoogleCloudVideointelligenceV1SpeechTranscriptionConfig(
        o.speechTranscriptionConfig!);
    checkGoogleCloudVideointelligenceV1TextDetectionConfig(
        o.textDetectionConfig!);
  }
  buildCounterGoogleCloudVideointelligenceV1VideoContext--;
}

core.int buildCounterGoogleCloudVideointelligenceV1VideoSegment = 0;
api.GoogleCloudVideointelligenceV1VideoSegment
    buildGoogleCloudVideointelligenceV1VideoSegment() {
  final o = api.GoogleCloudVideointelligenceV1VideoSegment();
  buildCounterGoogleCloudVideointelligenceV1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoSegment < 3) {
    o.endTimeOffset = 'foo';
    o.startTimeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1VideoSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1VideoSegment(
    api.GoogleCloudVideointelligenceV1VideoSegment o) {
  buildCounterGoogleCloudVideointelligenceV1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoSegment < 3) {
    unittest.expect(
      o.endTimeOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTimeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1VideoSegment--;
}

core.int buildCounterGoogleCloudVideointelligenceV1WordInfo = 0;
api.GoogleCloudVideointelligenceV1WordInfo
    buildGoogleCloudVideointelligenceV1WordInfo() {
  final o = api.GoogleCloudVideointelligenceV1WordInfo();
  buildCounterGoogleCloudVideointelligenceV1WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1WordInfo < 3) {
    o.confidence = 42.0;
    o.endTime = 'foo';
    o.speakerTag = 42;
    o.startTime = 'foo';
    o.word = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1WordInfo--;
  return o;
}

void checkGoogleCloudVideointelligenceV1WordInfo(
    api.GoogleCloudVideointelligenceV1WordInfo o) {
  buildCounterGoogleCloudVideointelligenceV1WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1WordInfo < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.speakerTag!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.word!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1WordInfo--;
}

core.List<api.GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress>
    buildUnnamed6989() => [
          buildGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress(),
          buildGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress(),
        ];

void checkUnnamed6989(
    core.List<api.GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress(o[0]);
  checkGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress =
    0;
api.GoogleCloudVideointelligenceV1beta2AnnotateVideoProgress
    buildGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress() {
  final o = api.GoogleCloudVideointelligenceV1beta2AnnotateVideoProgress();
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress <
      3) {
    o.annotationProgress = buildUnnamed6989();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress(
    api.GoogleCloudVideointelligenceV1beta2AnnotateVideoProgress o) {
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress <
      3) {
    checkUnnamed6989(o.annotationProgress!);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress--;
}

core.List<api.GoogleCloudVideointelligenceV1beta2VideoAnnotationResults>
    buildUnnamed6990() => [
          buildGoogleCloudVideointelligenceV1beta2VideoAnnotationResults(),
          buildGoogleCloudVideointelligenceV1beta2VideoAnnotationResults(),
        ];

void checkUnnamed6990(
    core.List<api.GoogleCloudVideointelligenceV1beta2VideoAnnotationResults>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2VideoAnnotationResults(o[0]);
  checkGoogleCloudVideointelligenceV1beta2VideoAnnotationResults(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse =
    0;
api.GoogleCloudVideointelligenceV1beta2AnnotateVideoResponse
    buildGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse() {
  final o = api.GoogleCloudVideointelligenceV1beta2AnnotateVideoResponse();
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse <
      3) {
    o.annotationResults = buildUnnamed6990();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse(
    api.GoogleCloudVideointelligenceV1beta2AnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse <
      3) {
    checkUnnamed6990(o.annotationResults!);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2DetectedAttribute = 0;
api.GoogleCloudVideointelligenceV1beta2DetectedAttribute
    buildGoogleCloudVideointelligenceV1beta2DetectedAttribute() {
  final o = api.GoogleCloudVideointelligenceV1beta2DetectedAttribute();
  buildCounterGoogleCloudVideointelligenceV1beta2DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2DetectedAttribute < 3) {
    o.confidence = 42.0;
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2DetectedAttribute--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2DetectedAttribute(
    api.GoogleCloudVideointelligenceV1beta2DetectedAttribute o) {
  buildCounterGoogleCloudVideointelligenceV1beta2DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2DetectedAttribute < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2DetectedAttribute--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2DetectedLandmark = 0;
api.GoogleCloudVideointelligenceV1beta2DetectedLandmark
    buildGoogleCloudVideointelligenceV1beta2DetectedLandmark() {
  final o = api.GoogleCloudVideointelligenceV1beta2DetectedLandmark();
  buildCounterGoogleCloudVideointelligenceV1beta2DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2DetectedLandmark < 3) {
    o.confidence = 42.0;
    o.name = 'foo';
    o.point = buildGoogleCloudVideointelligenceV1beta2NormalizedVertex();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2DetectedLandmark--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2DetectedLandmark(
    api.GoogleCloudVideointelligenceV1beta2DetectedLandmark o) {
  buildCounterGoogleCloudVideointelligenceV1beta2DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2DetectedLandmark < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVideointelligenceV1beta2NormalizedVertex(o.point!);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2DetectedLandmark--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2Entity = 0;
api.GoogleCloudVideointelligenceV1beta2Entity
    buildGoogleCloudVideointelligenceV1beta2Entity() {
  final o = api.GoogleCloudVideointelligenceV1beta2Entity();
  buildCounterGoogleCloudVideointelligenceV1beta2Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2Entity < 3) {
    o.description = 'foo';
    o.entityId = 'foo';
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2Entity--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2Entity(
    api.GoogleCloudVideointelligenceV1beta2Entity o) {
  buildCounterGoogleCloudVideointelligenceV1beta2Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2Entity < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2Entity--;
}

core.List<api.GoogleCloudVideointelligenceV1beta2ExplicitContentFrame>
    buildUnnamed6991() => [
          buildGoogleCloudVideointelligenceV1beta2ExplicitContentFrame(),
          buildGoogleCloudVideointelligenceV1beta2ExplicitContentFrame(),
        ];

void checkUnnamed6991(
    core.List<api.GoogleCloudVideointelligenceV1beta2ExplicitContentFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2ExplicitContentFrame(o[0]);
  checkGoogleCloudVideointelligenceV1beta2ExplicitContentFrame(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation =
    0;
api.GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation
    buildGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation();
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation <
      3) {
    o.frames = buildUnnamed6991();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation(
    api.GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation <
      3) {
    checkUnnamed6991(o.frames!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentFrame =
    0;
api.GoogleCloudVideointelligenceV1beta2ExplicitContentFrame
    buildGoogleCloudVideointelligenceV1beta2ExplicitContentFrame() {
  final o = api.GoogleCloudVideointelligenceV1beta2ExplicitContentFrame();
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentFrame < 3) {
    o.pornographyLikelihood = 'foo';
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2ExplicitContentFrame(
    api.GoogleCloudVideointelligenceV1beta2ExplicitContentFrame o) {
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentFrame < 3) {
    unittest.expect(
      o.pornographyLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentFrame--;
}

core.List<api.GoogleCloudVideointelligenceV1beta2FaceFrame>
    buildUnnamed6992() => [
          buildGoogleCloudVideointelligenceV1beta2FaceFrame(),
          buildGoogleCloudVideointelligenceV1beta2FaceFrame(),
        ];

void checkUnnamed6992(
    core.List<api.GoogleCloudVideointelligenceV1beta2FaceFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2FaceFrame(o[0]);
  checkGoogleCloudVideointelligenceV1beta2FaceFrame(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1beta2FaceSegment>
    buildUnnamed6993() => [
          buildGoogleCloudVideointelligenceV1beta2FaceSegment(),
          buildGoogleCloudVideointelligenceV1beta2FaceSegment(),
        ];

void checkUnnamed6993(
    core.List<api.GoogleCloudVideointelligenceV1beta2FaceSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2FaceSegment(o[0]);
  checkGoogleCloudVideointelligenceV1beta2FaceSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2FaceAnnotation = 0;
api.GoogleCloudVideointelligenceV1beta2FaceAnnotation
    buildGoogleCloudVideointelligenceV1beta2FaceAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1beta2FaceAnnotation();
  buildCounterGoogleCloudVideointelligenceV1beta2FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2FaceAnnotation < 3) {
    o.frames = buildUnnamed6992();
    o.segments = buildUnnamed6993();
    o.thumbnail = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2FaceAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2FaceAnnotation(
    api.GoogleCloudVideointelligenceV1beta2FaceAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta2FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2FaceAnnotation < 3) {
    checkUnnamed6992(o.frames!);
    checkUnnamed6993(o.segments!);
    unittest.expect(
      o.thumbnail!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2FaceAnnotation--;
}

core.List<api.GoogleCloudVideointelligenceV1beta2Track> buildUnnamed6994() => [
      buildGoogleCloudVideointelligenceV1beta2Track(),
      buildGoogleCloudVideointelligenceV1beta2Track(),
    ];

void checkUnnamed6994(
    core.List<api.GoogleCloudVideointelligenceV1beta2Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2Track(o[0]);
  checkGoogleCloudVideointelligenceV1beta2Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation = 0;
api.GoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation
    buildGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation <
      3) {
    o.thumbnail = 'foo';
    o.tracks = buildUnnamed6994();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation <
      3) {
    unittest.expect(
      o.thumbnail!,
      unittest.equals('foo'),
    );
    checkUnnamed6994(o.tracks!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation--;
}

core.List<api.GoogleCloudVideointelligenceV1beta2NormalizedBoundingBox>
    buildUnnamed6995() => [
          buildGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox(),
          buildGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox(),
        ];

void checkUnnamed6995(
    core.List<api.GoogleCloudVideointelligenceV1beta2NormalizedBoundingBox> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox(o[0]);
  checkGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2FaceFrame = 0;
api.GoogleCloudVideointelligenceV1beta2FaceFrame
    buildGoogleCloudVideointelligenceV1beta2FaceFrame() {
  final o = api.GoogleCloudVideointelligenceV1beta2FaceFrame();
  buildCounterGoogleCloudVideointelligenceV1beta2FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2FaceFrame < 3) {
    o.normalizedBoundingBoxes = buildUnnamed6995();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2FaceFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2FaceFrame(
    api.GoogleCloudVideointelligenceV1beta2FaceFrame o) {
  buildCounterGoogleCloudVideointelligenceV1beta2FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2FaceFrame < 3) {
    checkUnnamed6995(o.normalizedBoundingBoxes!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2FaceFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2FaceSegment = 0;
api.GoogleCloudVideointelligenceV1beta2FaceSegment
    buildGoogleCloudVideointelligenceV1beta2FaceSegment() {
  final o = api.GoogleCloudVideointelligenceV1beta2FaceSegment();
  buildCounterGoogleCloudVideointelligenceV1beta2FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2FaceSegment < 3) {
    o.segment = buildGoogleCloudVideointelligenceV1beta2VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2FaceSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2FaceSegment(
    api.GoogleCloudVideointelligenceV1beta2FaceSegment o) {
  buildCounterGoogleCloudVideointelligenceV1beta2FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2FaceSegment < 3) {
    checkGoogleCloudVideointelligenceV1beta2VideoSegment(o.segment!);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2FaceSegment--;
}

core.List<api.GoogleCloudVideointelligenceV1beta2Entity> buildUnnamed6996() => [
      buildGoogleCloudVideointelligenceV1beta2Entity(),
      buildGoogleCloudVideointelligenceV1beta2Entity(),
    ];

void checkUnnamed6996(
    core.List<api.GoogleCloudVideointelligenceV1beta2Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2Entity(o[0]);
  checkGoogleCloudVideointelligenceV1beta2Entity(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1beta2LabelFrame>
    buildUnnamed6997() => [
          buildGoogleCloudVideointelligenceV1beta2LabelFrame(),
          buildGoogleCloudVideointelligenceV1beta2LabelFrame(),
        ];

void checkUnnamed6997(
    core.List<api.GoogleCloudVideointelligenceV1beta2LabelFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LabelFrame(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LabelFrame(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1beta2LabelSegment>
    buildUnnamed6998() => [
          buildGoogleCloudVideointelligenceV1beta2LabelSegment(),
          buildGoogleCloudVideointelligenceV1beta2LabelSegment(),
        ];

void checkUnnamed6998(
    core.List<api.GoogleCloudVideointelligenceV1beta2LabelSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LabelSegment(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LabelSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2LabelAnnotation = 0;
api.GoogleCloudVideointelligenceV1beta2LabelAnnotation
    buildGoogleCloudVideointelligenceV1beta2LabelAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1beta2LabelAnnotation();
  buildCounterGoogleCloudVideointelligenceV1beta2LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2LabelAnnotation < 3) {
    o.categoryEntities = buildUnnamed6996();
    o.entity = buildGoogleCloudVideointelligenceV1beta2Entity();
    o.frames = buildUnnamed6997();
    o.segments = buildUnnamed6998();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2LabelAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(
    api.GoogleCloudVideointelligenceV1beta2LabelAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta2LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2LabelAnnotation < 3) {
    checkUnnamed6996(o.categoryEntities!);
    checkGoogleCloudVideointelligenceV1beta2Entity(o.entity!);
    checkUnnamed6997(o.frames!);
    checkUnnamed6998(o.segments!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2LabelAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2LabelFrame = 0;
api.GoogleCloudVideointelligenceV1beta2LabelFrame
    buildGoogleCloudVideointelligenceV1beta2LabelFrame() {
  final o = api.GoogleCloudVideointelligenceV1beta2LabelFrame();
  buildCounterGoogleCloudVideointelligenceV1beta2LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2LabelFrame < 3) {
    o.confidence = 42.0;
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2LabelFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2LabelFrame(
    api.GoogleCloudVideointelligenceV1beta2LabelFrame o) {
  buildCounterGoogleCloudVideointelligenceV1beta2LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2LabelFrame < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2LabelFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2LabelSegment = 0;
api.GoogleCloudVideointelligenceV1beta2LabelSegment
    buildGoogleCloudVideointelligenceV1beta2LabelSegment() {
  final o = api.GoogleCloudVideointelligenceV1beta2LabelSegment();
  buildCounterGoogleCloudVideointelligenceV1beta2LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2LabelSegment < 3) {
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1beta2VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2LabelSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2LabelSegment(
    api.GoogleCloudVideointelligenceV1beta2LabelSegment o) {
  buildCounterGoogleCloudVideointelligenceV1beta2LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2LabelSegment < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVideointelligenceV1beta2VideoSegment(o.segment!);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2LabelSegment--;
}

core.List<api.GoogleCloudVideointelligenceV1beta2VideoSegment>
    buildUnnamed6999() => [
          buildGoogleCloudVideointelligenceV1beta2VideoSegment(),
          buildGoogleCloudVideointelligenceV1beta2VideoSegment(),
        ];

void checkUnnamed6999(
    core.List<api.GoogleCloudVideointelligenceV1beta2VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1beta2VideoSegment(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1beta2Track> buildUnnamed7000() => [
      buildGoogleCloudVideointelligenceV1beta2Track(),
      buildGoogleCloudVideointelligenceV1beta2Track(),
    ];

void checkUnnamed7000(
    core.List<api.GoogleCloudVideointelligenceV1beta2Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2Track(o[0]);
  checkGoogleCloudVideointelligenceV1beta2Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation =
    0;
api.GoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation
    buildGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation <
      3) {
    o.entity = buildGoogleCloudVideointelligenceV1beta2Entity();
    o.segments = buildUnnamed6999();
    o.tracks = buildUnnamed7000();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation(
    api.GoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation <
      3) {
    checkGoogleCloudVideointelligenceV1beta2Entity(o.entity!);
    checkUnnamed6999(o.segments!);
    checkUnnamed7000(o.tracks!);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox =
    0;
api.GoogleCloudVideointelligenceV1beta2NormalizedBoundingBox
    buildGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox() {
  final o = api.GoogleCloudVideointelligenceV1beta2NormalizedBoundingBox();
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox <
      3) {
    o.bottom = 42.0;
    o.left = 42.0;
    o.right = 42.0;
    o.top = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox(
    api.GoogleCloudVideointelligenceV1beta2NormalizedBoundingBox o) {
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox <
      3) {
    unittest.expect(
      o.bottom!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.left!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.right!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.top!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox--;
}

core.List<api.GoogleCloudVideointelligenceV1beta2NormalizedVertex>
    buildUnnamed7001() => [
          buildGoogleCloudVideointelligenceV1beta2NormalizedVertex(),
          buildGoogleCloudVideointelligenceV1beta2NormalizedVertex(),
        ];

void checkUnnamed7001(
    core.List<api.GoogleCloudVideointelligenceV1beta2NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2NormalizedVertex(o[0]);
  checkGoogleCloudVideointelligenceV1beta2NormalizedVertex(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly =
    0;
api.GoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly
    buildGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly() {
  final o = api.GoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly();
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly <
      3) {
    o.vertices = buildUnnamed7001();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly(
    api.GoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly o) {
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly <
      3) {
    checkUnnamed7001(o.vertices!);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2NormalizedVertex = 0;
api.GoogleCloudVideointelligenceV1beta2NormalizedVertex
    buildGoogleCloudVideointelligenceV1beta2NormalizedVertex() {
  final o = api.GoogleCloudVideointelligenceV1beta2NormalizedVertex();
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedVertex--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2NormalizedVertex(
    api.GoogleCloudVideointelligenceV1beta2NormalizedVertex o) {
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2NormalizedVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedVertex--;
}

core.List<api.GoogleCloudVideointelligenceV1beta2ObjectTrackingFrame>
    buildUnnamed7002() => [
          buildGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame(),
          buildGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame(),
        ];

void checkUnnamed7002(
    core.List<api.GoogleCloudVideointelligenceV1beta2ObjectTrackingFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame(o[0]);
  checkGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation = 0;
api.GoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation
    buildGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation();
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation <
      3) {
    o.confidence = 42.0;
    o.entity = buildGoogleCloudVideointelligenceV1beta2Entity();
    o.frames = buildUnnamed7002();
    o.segment = buildGoogleCloudVideointelligenceV1beta2VideoSegment();
    o.trackId = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation(
    api.GoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVideointelligenceV1beta2Entity(o.entity!);
    checkUnnamed7002(o.frames!);
    checkGoogleCloudVideointelligenceV1beta2VideoSegment(o.segment!);
    unittest.expect(
      o.trackId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame = 0;
api.GoogleCloudVideointelligenceV1beta2ObjectTrackingFrame
    buildGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame() {
  final o = api.GoogleCloudVideointelligenceV1beta2ObjectTrackingFrame();
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame < 3) {
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame(
    api.GoogleCloudVideointelligenceV1beta2ObjectTrackingFrame o) {
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame < 3) {
    checkGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox(
        o.normalizedBoundingBox!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame--;
}

core.List<api.GoogleCloudVideointelligenceV1beta2Track> buildUnnamed7003() => [
      buildGoogleCloudVideointelligenceV1beta2Track(),
      buildGoogleCloudVideointelligenceV1beta2Track(),
    ];

void checkUnnamed7003(
    core.List<api.GoogleCloudVideointelligenceV1beta2Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2Track(o[0]);
  checkGoogleCloudVideointelligenceV1beta2Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation =
    0;
api.GoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation
    buildGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation <
      3) {
    o.tracks = buildUnnamed7003();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation <
      3) {
    checkUnnamed7003(o.tracks!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation--;
}

core.List<api.GoogleCloudVideointelligenceV1beta2WordInfo> buildUnnamed7004() =>
    [
      buildGoogleCloudVideointelligenceV1beta2WordInfo(),
      buildGoogleCloudVideointelligenceV1beta2WordInfo(),
    ];

void checkUnnamed7004(
    core.List<api.GoogleCloudVideointelligenceV1beta2WordInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2WordInfo(o[0]);
  checkGoogleCloudVideointelligenceV1beta2WordInfo(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative =
    0;
api.GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative
    buildGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative() {
  final o =
      api.GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative();
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative <
      3) {
    o.confidence = 42.0;
    o.transcript = 'foo';
    o.words = buildUnnamed7004();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative(
    api.GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative o) {
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.transcript!,
      unittest.equals('foo'),
    );
    checkUnnamed7004(o.words!);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative--;
}

core.List<api.GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative>
    buildUnnamed7005() => [
          buildGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative(),
          buildGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative(),
        ];

void checkUnnamed7005(
    core.List<
            api.GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative(o[0]);
  checkGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscription = 0;
api.GoogleCloudVideointelligenceV1beta2SpeechTranscription
    buildGoogleCloudVideointelligenceV1beta2SpeechTranscription() {
  final o = api.GoogleCloudVideointelligenceV1beta2SpeechTranscription();
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscription < 3) {
    o.alternatives = buildUnnamed7005();
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscription--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2SpeechTranscription(
    api.GoogleCloudVideointelligenceV1beta2SpeechTranscription o) {
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscription < 3) {
    checkUnnamed7005(o.alternatives!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscription--;
}

core.List<api.GoogleCloudVideointelligenceV1beta2TextSegment>
    buildUnnamed7006() => [
          buildGoogleCloudVideointelligenceV1beta2TextSegment(),
          buildGoogleCloudVideointelligenceV1beta2TextSegment(),
        ];

void checkUnnamed7006(
    core.List<api.GoogleCloudVideointelligenceV1beta2TextSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2TextSegment(o[0]);
  checkGoogleCloudVideointelligenceV1beta2TextSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2TextAnnotation = 0;
api.GoogleCloudVideointelligenceV1beta2TextAnnotation
    buildGoogleCloudVideointelligenceV1beta2TextAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1beta2TextAnnotation();
  buildCounterGoogleCloudVideointelligenceV1beta2TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2TextAnnotation < 3) {
    o.segments = buildUnnamed7006();
    o.text = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TextAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2TextAnnotation(
    api.GoogleCloudVideointelligenceV1beta2TextAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta2TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2TextAnnotation < 3) {
    checkUnnamed7006(o.segments!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TextAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2TextFrame = 0;
api.GoogleCloudVideointelligenceV1beta2TextFrame
    buildGoogleCloudVideointelligenceV1beta2TextFrame() {
  final o = api.GoogleCloudVideointelligenceV1beta2TextFrame();
  buildCounterGoogleCloudVideointelligenceV1beta2TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2TextFrame < 3) {
    o.rotatedBoundingBox =
        buildGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TextFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2TextFrame(
    api.GoogleCloudVideointelligenceV1beta2TextFrame o) {
  buildCounterGoogleCloudVideointelligenceV1beta2TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2TextFrame < 3) {
    checkGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly(
        o.rotatedBoundingBox!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TextFrame--;
}

core.List<api.GoogleCloudVideointelligenceV1beta2TextFrame>
    buildUnnamed7007() => [
          buildGoogleCloudVideointelligenceV1beta2TextFrame(),
          buildGoogleCloudVideointelligenceV1beta2TextFrame(),
        ];

void checkUnnamed7007(
    core.List<api.GoogleCloudVideointelligenceV1beta2TextFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2TextFrame(o[0]);
  checkGoogleCloudVideointelligenceV1beta2TextFrame(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2TextSegment = 0;
api.GoogleCloudVideointelligenceV1beta2TextSegment
    buildGoogleCloudVideointelligenceV1beta2TextSegment() {
  final o = api.GoogleCloudVideointelligenceV1beta2TextSegment();
  buildCounterGoogleCloudVideointelligenceV1beta2TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2TextSegment < 3) {
    o.confidence = 42.0;
    o.frames = buildUnnamed7007();
    o.segment = buildGoogleCloudVideointelligenceV1beta2VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TextSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2TextSegment(
    api.GoogleCloudVideointelligenceV1beta2TextSegment o) {
  buildCounterGoogleCloudVideointelligenceV1beta2TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2TextSegment < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkUnnamed7007(o.frames!);
    checkGoogleCloudVideointelligenceV1beta2VideoSegment(o.segment!);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TextSegment--;
}

core.List<api.GoogleCloudVideointelligenceV1beta2DetectedAttribute>
    buildUnnamed7008() => [
          buildGoogleCloudVideointelligenceV1beta2DetectedAttribute(),
          buildGoogleCloudVideointelligenceV1beta2DetectedAttribute(),
        ];

void checkUnnamed7008(
    core.List<api.GoogleCloudVideointelligenceV1beta2DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1beta2DetectedAttribute(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1beta2DetectedLandmark>
    buildUnnamed7009() => [
          buildGoogleCloudVideointelligenceV1beta2DetectedLandmark(),
          buildGoogleCloudVideointelligenceV1beta2DetectedLandmark(),
        ];

void checkUnnamed7009(
    core.List<api.GoogleCloudVideointelligenceV1beta2DetectedLandmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2DetectedLandmark(o[0]);
  checkGoogleCloudVideointelligenceV1beta2DetectedLandmark(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2TimestampedObject = 0;
api.GoogleCloudVideointelligenceV1beta2TimestampedObject
    buildGoogleCloudVideointelligenceV1beta2TimestampedObject() {
  final o = api.GoogleCloudVideointelligenceV1beta2TimestampedObject();
  buildCounterGoogleCloudVideointelligenceV1beta2TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2TimestampedObject < 3) {
    o.attributes = buildUnnamed7008();
    o.landmarks = buildUnnamed7009();
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TimestampedObject--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2TimestampedObject(
    api.GoogleCloudVideointelligenceV1beta2TimestampedObject o) {
  buildCounterGoogleCloudVideointelligenceV1beta2TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2TimestampedObject < 3) {
    checkUnnamed7008(o.attributes!);
    checkUnnamed7009(o.landmarks!);
    checkGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox(
        o.normalizedBoundingBox!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TimestampedObject--;
}

core.List<api.GoogleCloudVideointelligenceV1beta2DetectedAttribute>
    buildUnnamed7010() => [
          buildGoogleCloudVideointelligenceV1beta2DetectedAttribute(),
          buildGoogleCloudVideointelligenceV1beta2DetectedAttribute(),
        ];

void checkUnnamed7010(
    core.List<api.GoogleCloudVideointelligenceV1beta2DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1beta2DetectedAttribute(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1beta2TimestampedObject>
    buildUnnamed7011() => [
          buildGoogleCloudVideointelligenceV1beta2TimestampedObject(),
          buildGoogleCloudVideointelligenceV1beta2TimestampedObject(),
        ];

void checkUnnamed7011(
    core.List<api.GoogleCloudVideointelligenceV1beta2TimestampedObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2TimestampedObject(o[0]);
  checkGoogleCloudVideointelligenceV1beta2TimestampedObject(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2Track = 0;
api.GoogleCloudVideointelligenceV1beta2Track
    buildGoogleCloudVideointelligenceV1beta2Track() {
  final o = api.GoogleCloudVideointelligenceV1beta2Track();
  buildCounterGoogleCloudVideointelligenceV1beta2Track++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2Track < 3) {
    o.attributes = buildUnnamed7010();
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1beta2VideoSegment();
    o.timestampedObjects = buildUnnamed7011();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2Track--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2Track(
    api.GoogleCloudVideointelligenceV1beta2Track o) {
  buildCounterGoogleCloudVideointelligenceV1beta2Track++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2Track < 3) {
    checkUnnamed7010(o.attributes!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVideointelligenceV1beta2VideoSegment(o.segment!);
    checkUnnamed7011(o.timestampedObjects!);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2Track--;
}

core.int
    buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress = 0;
api.GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress
    buildGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress() {
  final o = api.GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress();
  buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress <
      3) {
    o.feature = 'foo';
    o.inputUri = 'foo';
    o.progressPercent = 42;
    o.segment = buildGoogleCloudVideointelligenceV1beta2VideoSegment();
    o.startTime = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress(
    api.GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress o) {
  buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress <
      3) {
    unittest.expect(
      o.feature!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.progressPercent!,
      unittest.equals(42),
    );
    checkGoogleCloudVideointelligenceV1beta2VideoSegment(o.segment!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress--;
}

core.List<api.GoogleCloudVideointelligenceV1beta2FaceAnnotation>
    buildUnnamed7012() => [
          buildGoogleCloudVideointelligenceV1beta2FaceAnnotation(),
          buildGoogleCloudVideointelligenceV1beta2FaceAnnotation(),
        ];

void checkUnnamed7012(
    core.List<api.GoogleCloudVideointelligenceV1beta2FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2FaceAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2FaceAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation>
    buildUnnamed7013() => [
          buildGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation(),
          buildGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation(),
        ];

void checkUnnamed7013(
    core.List<api.GoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation>
    buildUnnamed7014() => [
          buildGoogleCloudVideointelligenceV1beta2LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1beta2LabelAnnotation(),
        ];

void checkUnnamed7014(
    core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation>
    buildUnnamed7015() => [
          buildGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation(),
          buildGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation(),
        ];

void checkUnnamed7015(
    core.List<api.GoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation>
    buildUnnamed7016() => [
          buildGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation(),
          buildGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation(),
        ];

void checkUnnamed7016(
    core.List<api.GoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation>
    buildUnnamed7017() => [
          buildGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation(),
          buildGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation(),
        ];

void checkUnnamed7017(
    core.List<api.GoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation>
    buildUnnamed7018() => [
          buildGoogleCloudVideointelligenceV1beta2LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1beta2LabelAnnotation(),
        ];

void checkUnnamed7018(
    core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation>
    buildUnnamed7019() => [
          buildGoogleCloudVideointelligenceV1beta2LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1beta2LabelAnnotation(),
        ];

void checkUnnamed7019(
    core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1beta2VideoSegment>
    buildUnnamed7020() => [
          buildGoogleCloudVideointelligenceV1beta2VideoSegment(),
          buildGoogleCloudVideointelligenceV1beta2VideoSegment(),
        ];

void checkUnnamed7020(
    core.List<api.GoogleCloudVideointelligenceV1beta2VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1beta2VideoSegment(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation>
    buildUnnamed7021() => [
          buildGoogleCloudVideointelligenceV1beta2LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1beta2LabelAnnotation(),
        ];

void checkUnnamed7021(
    core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation>
    buildUnnamed7022() => [
          buildGoogleCloudVideointelligenceV1beta2LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1beta2LabelAnnotation(),
        ];

void checkUnnamed7022(
    core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1beta2SpeechTranscription>
    buildUnnamed7023() => [
          buildGoogleCloudVideointelligenceV1beta2SpeechTranscription(),
          buildGoogleCloudVideointelligenceV1beta2SpeechTranscription(),
        ];

void checkUnnamed7023(
    core.List<api.GoogleCloudVideointelligenceV1beta2SpeechTranscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2SpeechTranscription(o[0]);
  checkGoogleCloudVideointelligenceV1beta2SpeechTranscription(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1beta2TextAnnotation>
    buildUnnamed7024() => [
          buildGoogleCloudVideointelligenceV1beta2TextAnnotation(),
          buildGoogleCloudVideointelligenceV1beta2TextAnnotation(),
        ];

void checkUnnamed7024(
    core.List<api.GoogleCloudVideointelligenceV1beta2TextAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2TextAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2TextAnnotation(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationResults =
    0;
api.GoogleCloudVideointelligenceV1beta2VideoAnnotationResults
    buildGoogleCloudVideointelligenceV1beta2VideoAnnotationResults() {
  final o = api.GoogleCloudVideointelligenceV1beta2VideoAnnotationResults();
  buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationResults <
      3) {
    o.error = buildGoogleRpcStatus();
    o.explicitAnnotation =
        buildGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation();
    o.faceAnnotations = buildUnnamed7012();
    o.faceDetectionAnnotations = buildUnnamed7013();
    o.frameLabelAnnotations = buildUnnamed7014();
    o.inputUri = 'foo';
    o.logoRecognitionAnnotations = buildUnnamed7015();
    o.objectAnnotations = buildUnnamed7016();
    o.personDetectionAnnotations = buildUnnamed7017();
    o.segment = buildGoogleCloudVideointelligenceV1beta2VideoSegment();
    o.segmentLabelAnnotations = buildUnnamed7018();
    o.segmentPresenceLabelAnnotations = buildUnnamed7019();
    o.shotAnnotations = buildUnnamed7020();
    o.shotLabelAnnotations = buildUnnamed7021();
    o.shotPresenceLabelAnnotations = buildUnnamed7022();
    o.speechTranscriptions = buildUnnamed7023();
    o.textAnnotations = buildUnnamed7024();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationResults--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2VideoAnnotationResults(
    api.GoogleCloudVideointelligenceV1beta2VideoAnnotationResults o) {
  buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationResults <
      3) {
    checkGoogleRpcStatus(o.error!);
    checkGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation(
        o.explicitAnnotation!);
    checkUnnamed7012(o.faceAnnotations!);
    checkUnnamed7013(o.faceDetectionAnnotations!);
    checkUnnamed7014(o.frameLabelAnnotations!);
    unittest.expect(
      o.inputUri!,
      unittest.equals('foo'),
    );
    checkUnnamed7015(o.logoRecognitionAnnotations!);
    checkUnnamed7016(o.objectAnnotations!);
    checkUnnamed7017(o.personDetectionAnnotations!);
    checkGoogleCloudVideointelligenceV1beta2VideoSegment(o.segment!);
    checkUnnamed7018(o.segmentLabelAnnotations!);
    checkUnnamed7019(o.segmentPresenceLabelAnnotations!);
    checkUnnamed7020(o.shotAnnotations!);
    checkUnnamed7021(o.shotLabelAnnotations!);
    checkUnnamed7022(o.shotPresenceLabelAnnotations!);
    checkUnnamed7023(o.speechTranscriptions!);
    checkUnnamed7024(o.textAnnotations!);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationResults--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2VideoSegment = 0;
api.GoogleCloudVideointelligenceV1beta2VideoSegment
    buildGoogleCloudVideointelligenceV1beta2VideoSegment() {
  final o = api.GoogleCloudVideointelligenceV1beta2VideoSegment();
  buildCounterGoogleCloudVideointelligenceV1beta2VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2VideoSegment < 3) {
    o.endTimeOffset = 'foo';
    o.startTimeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2VideoSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2VideoSegment(
    api.GoogleCloudVideointelligenceV1beta2VideoSegment o) {
  buildCounterGoogleCloudVideointelligenceV1beta2VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2VideoSegment < 3) {
    unittest.expect(
      o.endTimeOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTimeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2VideoSegment--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2WordInfo = 0;
api.GoogleCloudVideointelligenceV1beta2WordInfo
    buildGoogleCloudVideointelligenceV1beta2WordInfo() {
  final o = api.GoogleCloudVideointelligenceV1beta2WordInfo();
  buildCounterGoogleCloudVideointelligenceV1beta2WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2WordInfo < 3) {
    o.confidence = 42.0;
    o.endTime = 'foo';
    o.speakerTag = 42;
    o.startTime = 'foo';
    o.word = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2WordInfo--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2WordInfo(
    api.GoogleCloudVideointelligenceV1beta2WordInfo o) {
  buildCounterGoogleCloudVideointelligenceV1beta2WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2WordInfo < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.speakerTag!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.word!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2WordInfo--;
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress>
    buildUnnamed7025() => [
          buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress(),
          buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress(),
        ];

void checkUnnamed7025(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress = 0;
api.GoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress
    buildGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress();
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress <
      3) {
    o.annotationProgress = buildUnnamed7025();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress(
    api.GoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress <
      3) {
    checkUnnamed7025(o.annotationProgress!);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress--;
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults>
    buildUnnamed7026() => [
          buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults(),
          buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults(),
        ];

void checkUnnamed7026(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse = 0;
api.GoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse
    buildGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse();
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse <
      3) {
    o.annotationResults = buildUnnamed7026();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse(
    api.GoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse <
      3) {
    checkUnnamed7026(o.annotationResults!);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedAttribute = 0;
api.GoogleCloudVideointelligenceV1p1beta1DetectedAttribute
    buildGoogleCloudVideointelligenceV1p1beta1DetectedAttribute() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1DetectedAttribute();
  buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedAttribute < 3) {
    o.confidence = 42.0;
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedAttribute--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1DetectedAttribute(
    api.GoogleCloudVideointelligenceV1p1beta1DetectedAttribute o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedAttribute < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedAttribute--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedLandmark = 0;
api.GoogleCloudVideointelligenceV1p1beta1DetectedLandmark
    buildGoogleCloudVideointelligenceV1p1beta1DetectedLandmark() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1DetectedLandmark();
  buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedLandmark < 3) {
    o.confidence = 42.0;
    o.name = 'foo';
    o.point = buildGoogleCloudVideointelligenceV1p1beta1NormalizedVertex();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedLandmark--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1DetectedLandmark(
    api.GoogleCloudVideointelligenceV1p1beta1DetectedLandmark o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedLandmark < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVideointelligenceV1p1beta1NormalizedVertex(o.point!);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedLandmark--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1Entity = 0;
api.GoogleCloudVideointelligenceV1p1beta1Entity
    buildGoogleCloudVideointelligenceV1p1beta1Entity() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1Entity();
  buildCounterGoogleCloudVideointelligenceV1p1beta1Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1Entity < 3) {
    o.description = 'foo';
    o.entityId = 'foo';
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1Entity--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1Entity(
    api.GoogleCloudVideointelligenceV1p1beta1Entity o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1Entity < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1Entity--;
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame>
    buildUnnamed7027() => [
          buildGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame(),
          buildGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame(),
        ];

void checkUnnamed7027(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation =
    0;
api.GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation
    buildGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation() {
  final o =
      api.GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation <
      3) {
    o.frames = buildUnnamed7027();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation(
    api.GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation <
      3) {
    checkUnnamed7027(o.frames!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame =
    0;
api.GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame
    buildGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame();
  buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame <
      3) {
    o.pornographyLikelihood = 'foo';
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame(
    api.GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame <
      3) {
    unittest.expect(
      o.pornographyLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame--;
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1FaceFrame>
    buildUnnamed7028() => [
          buildGoogleCloudVideointelligenceV1p1beta1FaceFrame(),
          buildGoogleCloudVideointelligenceV1p1beta1FaceFrame(),
        ];

void checkUnnamed7028(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1FaceFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1FaceFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1FaceFrame(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1FaceSegment>
    buildUnnamed7029() => [
          buildGoogleCloudVideointelligenceV1p1beta1FaceSegment(),
          buildGoogleCloudVideointelligenceV1p1beta1FaceSegment(),
        ];

void checkUnnamed7029(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1FaceSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1FaceSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1FaceSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1FaceAnnotation = 0;
api.GoogleCloudVideointelligenceV1p1beta1FaceAnnotation
    buildGoogleCloudVideointelligenceV1p1beta1FaceAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1FaceAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1FaceAnnotation < 3) {
    o.frames = buildUnnamed7028();
    o.segments = buildUnnamed7029();
    o.thumbnail = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1FaceAnnotation(
    api.GoogleCloudVideointelligenceV1p1beta1FaceAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1FaceAnnotation < 3) {
    checkUnnamed7028(o.frames!);
    checkUnnamed7029(o.segments!);
    unittest.expect(
      o.thumbnail!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceAnnotation--;
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1Track> buildUnnamed7030() =>
    [
      buildGoogleCloudVideointelligenceV1p1beta1Track(),
      buildGoogleCloudVideointelligenceV1p1beta1Track(),
    ];

void checkUnnamed7030(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1Track(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation =
    0;
api.GoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation
    buildGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation <
      3) {
    o.thumbnail = 'foo';
    o.tracks = buildUnnamed7030();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation <
      3) {
    unittest.expect(
      o.thumbnail!,
      unittest.equals('foo'),
    );
    checkUnnamed7030(o.tracks!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation--;
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox>
    buildUnnamed7031() => [
          buildGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox(),
          buildGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox(),
        ];

void checkUnnamed7031(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1FaceFrame = 0;
api.GoogleCloudVideointelligenceV1p1beta1FaceFrame
    buildGoogleCloudVideointelligenceV1p1beta1FaceFrame() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1FaceFrame();
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1FaceFrame < 3) {
    o.normalizedBoundingBoxes = buildUnnamed7031();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1FaceFrame(
    api.GoogleCloudVideointelligenceV1p1beta1FaceFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1FaceFrame < 3) {
    checkUnnamed7031(o.normalizedBoundingBoxes!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1FaceSegment = 0;
api.GoogleCloudVideointelligenceV1p1beta1FaceSegment
    buildGoogleCloudVideointelligenceV1p1beta1FaceSegment() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1FaceSegment();
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1FaceSegment < 3) {
    o.segment = buildGoogleCloudVideointelligenceV1p1beta1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1FaceSegment(
    api.GoogleCloudVideointelligenceV1p1beta1FaceSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1FaceSegment < 3) {
    checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o.segment!);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceSegment--;
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1Entity> buildUnnamed7032() =>
    [
      buildGoogleCloudVideointelligenceV1p1beta1Entity(),
      buildGoogleCloudVideointelligenceV1p1beta1Entity(),
    ];

void checkUnnamed7032(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1Entity(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1Entity(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelFrame>
    buildUnnamed7033() => [
          buildGoogleCloudVideointelligenceV1p1beta1LabelFrame(),
          buildGoogleCloudVideointelligenceV1p1beta1LabelFrame(),
        ];

void checkUnnamed7033(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LabelFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LabelFrame(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelSegment>
    buildUnnamed7034() => [
          buildGoogleCloudVideointelligenceV1p1beta1LabelSegment(),
          buildGoogleCloudVideointelligenceV1p1beta1LabelSegment(),
        ];

void checkUnnamed7034(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LabelSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LabelSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1LabelAnnotation = 0;
api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation
    buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1LabelAnnotation < 3) {
    o.categoryEntities = buildUnnamed7032();
    o.entity = buildGoogleCloudVideointelligenceV1p1beta1Entity();
    o.frames = buildUnnamed7033();
    o.segments = buildUnnamed7034();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(
    api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1LabelAnnotation < 3) {
    checkUnnamed7032(o.categoryEntities!);
    checkGoogleCloudVideointelligenceV1p1beta1Entity(o.entity!);
    checkUnnamed7033(o.frames!);
    checkUnnamed7034(o.segments!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1LabelFrame = 0;
api.GoogleCloudVideointelligenceV1p1beta1LabelFrame
    buildGoogleCloudVideointelligenceV1p1beta1LabelFrame() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1LabelFrame();
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1LabelFrame < 3) {
    o.confidence = 42.0;
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1LabelFrame(
    api.GoogleCloudVideointelligenceV1p1beta1LabelFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1LabelFrame < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1LabelSegment = 0;
api.GoogleCloudVideointelligenceV1p1beta1LabelSegment
    buildGoogleCloudVideointelligenceV1p1beta1LabelSegment() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1LabelSegment();
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1LabelSegment < 3) {
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1p1beta1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1LabelSegment(
    api.GoogleCloudVideointelligenceV1p1beta1LabelSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1LabelSegment < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o.segment!);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelSegment--;
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1VideoSegment>
    buildUnnamed7035() => [
          buildGoogleCloudVideointelligenceV1p1beta1VideoSegment(),
          buildGoogleCloudVideointelligenceV1p1beta1VideoSegment(),
        ];

void checkUnnamed7035(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1Track> buildUnnamed7036() =>
    [
      buildGoogleCloudVideointelligenceV1p1beta1Track(),
      buildGoogleCloudVideointelligenceV1p1beta1Track(),
    ];

void checkUnnamed7036(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1Track(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation =
    0;
api.GoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation
    buildGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation() {
  final o =
      api.GoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation <
      3) {
    o.entity = buildGoogleCloudVideointelligenceV1p1beta1Entity();
    o.segments = buildUnnamed7035();
    o.tracks = buildUnnamed7036();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation(
    api.GoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation <
      3) {
    checkGoogleCloudVideointelligenceV1p1beta1Entity(o.entity!);
    checkUnnamed7035(o.segments!);
    checkUnnamed7036(o.tracks!);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation--;
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox = 0;
api.GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox
    buildGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox();
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox <
      3) {
    o.bottom = 42.0;
    o.left = 42.0;
    o.right = 42.0;
    o.top = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox(
    api.GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox <
      3) {
    unittest.expect(
      o.bottom!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.left!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.right!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.top!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox--;
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1NormalizedVertex>
    buildUnnamed7037() => [
          buildGoogleCloudVideointelligenceV1p1beta1NormalizedVertex(),
          buildGoogleCloudVideointelligenceV1p1beta1NormalizedVertex(),
        ];

void checkUnnamed7037(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1NormalizedVertex(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1NormalizedVertex(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly = 0;
api.GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly
    buildGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly();
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly <
      3) {
    o.vertices = buildUnnamed7037();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly(
    api.GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly <
      3) {
    checkUnnamed7037(o.vertices!);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedVertex = 0;
api.GoogleCloudVideointelligenceV1p1beta1NormalizedVertex
    buildGoogleCloudVideointelligenceV1p1beta1NormalizedVertex() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1NormalizedVertex();
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedVertex--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1NormalizedVertex(
    api.GoogleCloudVideointelligenceV1p1beta1NormalizedVertex o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedVertex--;
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame>
    buildUnnamed7038() => [
          buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame(),
          buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame(),
        ];

void checkUnnamed7038(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation =
    0;
api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation
    buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation <
      3) {
    o.confidence = 42.0;
    o.entity = buildGoogleCloudVideointelligenceV1p1beta1Entity();
    o.frames = buildUnnamed7038();
    o.segment = buildGoogleCloudVideointelligenceV1p1beta1VideoSegment();
    o.trackId = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation(
    api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVideointelligenceV1p1beta1Entity(o.entity!);
    checkUnnamed7038(o.frames!);
    checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o.segment!);
    unittest.expect(
      o.trackId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame =
    0;
api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame
    buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame();
  buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame <
      3) {
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame(
    api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame <
      3) {
    checkGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox(
        o.normalizedBoundingBox!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame--;
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1Track> buildUnnamed7039() =>
    [
      buildGoogleCloudVideointelligenceV1p1beta1Track(),
      buildGoogleCloudVideointelligenceV1p1beta1Track(),
    ];

void checkUnnamed7039(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1Track(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation =
    0;
api.GoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation
    buildGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation() {
  final o =
      api.GoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation <
      3) {
    o.tracks = buildUnnamed7039();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation <
      3) {
    checkUnnamed7039(o.tracks!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation--;
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1WordInfo>
    buildUnnamed7040() => [
          buildGoogleCloudVideointelligenceV1p1beta1WordInfo(),
          buildGoogleCloudVideointelligenceV1p1beta1WordInfo(),
        ];

void checkUnnamed7040(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1WordInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1WordInfo(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1WordInfo(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative =
    0;
api.GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative
    buildGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative() {
  final o =
      api.GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative();
  buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative <
      3) {
    o.confidence = 42.0;
    o.transcript = 'foo';
    o.words = buildUnnamed7040();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative(
    api.GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.transcript!,
      unittest.equals('foo'),
    );
    checkUnnamed7040(o.words!);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative--;
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative>
    buildUnnamed7041() => [
          buildGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative(),
          buildGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative(),
        ];

void checkUnnamed7041(
    core.List<
            api.GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechTranscription =
    0;
api.GoogleCloudVideointelligenceV1p1beta1SpeechTranscription
    buildGoogleCloudVideointelligenceV1p1beta1SpeechTranscription() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1SpeechTranscription();
  buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechTranscription <
      3) {
    o.alternatives = buildUnnamed7041();
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechTranscription--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1SpeechTranscription(
    api.GoogleCloudVideointelligenceV1p1beta1SpeechTranscription o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechTranscription <
      3) {
    checkUnnamed7041(o.alternatives!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechTranscription--;
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1TextSegment>
    buildUnnamed7042() => [
          buildGoogleCloudVideointelligenceV1p1beta1TextSegment(),
          buildGoogleCloudVideointelligenceV1p1beta1TextSegment(),
        ];

void checkUnnamed7042(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1TextSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1TextSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1TextSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1TextAnnotation = 0;
api.GoogleCloudVideointelligenceV1p1beta1TextAnnotation
    buildGoogleCloudVideointelligenceV1p1beta1TextAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1TextAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1TextAnnotation < 3) {
    o.segments = buildUnnamed7042();
    o.text = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1TextAnnotation(
    api.GoogleCloudVideointelligenceV1p1beta1TextAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1TextAnnotation < 3) {
    checkUnnamed7042(o.segments!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1TextFrame = 0;
api.GoogleCloudVideointelligenceV1p1beta1TextFrame
    buildGoogleCloudVideointelligenceV1p1beta1TextFrame() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1TextFrame();
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1TextFrame < 3) {
    o.rotatedBoundingBox =
        buildGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1TextFrame(
    api.GoogleCloudVideointelligenceV1p1beta1TextFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1TextFrame < 3) {
    checkGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly(
        o.rotatedBoundingBox!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextFrame--;
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1TextFrame>
    buildUnnamed7043() => [
          buildGoogleCloudVideointelligenceV1p1beta1TextFrame(),
          buildGoogleCloudVideointelligenceV1p1beta1TextFrame(),
        ];

void checkUnnamed7043(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1TextFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1TextFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1TextFrame(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1TextSegment = 0;
api.GoogleCloudVideointelligenceV1p1beta1TextSegment
    buildGoogleCloudVideointelligenceV1p1beta1TextSegment() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1TextSegment();
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1TextSegment < 3) {
    o.confidence = 42.0;
    o.frames = buildUnnamed7043();
    o.segment = buildGoogleCloudVideointelligenceV1p1beta1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1TextSegment(
    api.GoogleCloudVideointelligenceV1p1beta1TextSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1TextSegment < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkUnnamed7043(o.frames!);
    checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o.segment!);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextSegment--;
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1DetectedAttribute>
    buildUnnamed7044() => [
          buildGoogleCloudVideointelligenceV1p1beta1DetectedAttribute(),
          buildGoogleCloudVideointelligenceV1p1beta1DetectedAttribute(),
        ];

void checkUnnamed7044(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1DetectedAttribute(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1DetectedLandmark>
    buildUnnamed7045() => [
          buildGoogleCloudVideointelligenceV1p1beta1DetectedLandmark(),
          buildGoogleCloudVideointelligenceV1p1beta1DetectedLandmark(),
        ];

void checkUnnamed7045(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1DetectedLandmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1DetectedLandmark(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1DetectedLandmark(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1TimestampedObject = 0;
api.GoogleCloudVideointelligenceV1p1beta1TimestampedObject
    buildGoogleCloudVideointelligenceV1p1beta1TimestampedObject() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1TimestampedObject();
  buildCounterGoogleCloudVideointelligenceV1p1beta1TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1TimestampedObject < 3) {
    o.attributes = buildUnnamed7044();
    o.landmarks = buildUnnamed7045();
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1TimestampedObject--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1TimestampedObject(
    api.GoogleCloudVideointelligenceV1p1beta1TimestampedObject o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1TimestampedObject < 3) {
    checkUnnamed7044(o.attributes!);
    checkUnnamed7045(o.landmarks!);
    checkGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox(
        o.normalizedBoundingBox!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1TimestampedObject--;
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1DetectedAttribute>
    buildUnnamed7046() => [
          buildGoogleCloudVideointelligenceV1p1beta1DetectedAttribute(),
          buildGoogleCloudVideointelligenceV1p1beta1DetectedAttribute(),
        ];

void checkUnnamed7046(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1DetectedAttribute(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1TimestampedObject>
    buildUnnamed7047() => [
          buildGoogleCloudVideointelligenceV1p1beta1TimestampedObject(),
          buildGoogleCloudVideointelligenceV1p1beta1TimestampedObject(),
        ];

void checkUnnamed7047(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1TimestampedObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1TimestampedObject(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1TimestampedObject(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1Track = 0;
api.GoogleCloudVideointelligenceV1p1beta1Track
    buildGoogleCloudVideointelligenceV1p1beta1Track() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1Track();
  buildCounterGoogleCloudVideointelligenceV1p1beta1Track++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1Track < 3) {
    o.attributes = buildUnnamed7046();
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1p1beta1VideoSegment();
    o.timestampedObjects = buildUnnamed7047();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1Track--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1Track(
    api.GoogleCloudVideointelligenceV1p1beta1Track o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1Track++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1Track < 3) {
    checkUnnamed7046(o.attributes!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o.segment!);
    checkUnnamed7047(o.timestampedObjects!);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1Track--;
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress =
    0;
api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress
    buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress();
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress <
      3) {
    o.feature = 'foo';
    o.inputUri = 'foo';
    o.progressPercent = 42;
    o.segment = buildGoogleCloudVideointelligenceV1p1beta1VideoSegment();
    o.startTime = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress(
    api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress <
      3) {
    unittest.expect(
      o.feature!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.progressPercent!,
      unittest.equals(42),
    );
    checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o.segment!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress--;
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1FaceAnnotation>
    buildUnnamed7048() => [
          buildGoogleCloudVideointelligenceV1p1beta1FaceAnnotation(),
          buildGoogleCloudVideointelligenceV1p1beta1FaceAnnotation(),
        ];

void checkUnnamed7048(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1FaceAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1FaceAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation>
    buildUnnamed7049() => [
          buildGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation(),
          buildGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation(),
        ];

void checkUnnamed7049(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation>
    buildUnnamed7050() => [
          buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(),
        ];

void checkUnnamed7050(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation>
    buildUnnamed7051() => [
          buildGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation(),
          buildGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation(),
        ];

void checkUnnamed7051(
    core.List<
            api.GoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation>
    buildUnnamed7052() => [
          buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation(),
          buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation(),
        ];

void checkUnnamed7052(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation>
    buildUnnamed7053() => [
          buildGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation(),
          buildGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation(),
        ];

void checkUnnamed7053(
    core.List<
            api.GoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation>
    buildUnnamed7054() => [
          buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(),
        ];

void checkUnnamed7054(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation>
    buildUnnamed7055() => [
          buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(),
        ];

void checkUnnamed7055(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1VideoSegment>
    buildUnnamed7056() => [
          buildGoogleCloudVideointelligenceV1p1beta1VideoSegment(),
          buildGoogleCloudVideointelligenceV1p1beta1VideoSegment(),
        ];

void checkUnnamed7056(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation>
    buildUnnamed7057() => [
          buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(),
        ];

void checkUnnamed7057(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation>
    buildUnnamed7058() => [
          buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(),
        ];

void checkUnnamed7058(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1SpeechTranscription>
    buildUnnamed7059() => [
          buildGoogleCloudVideointelligenceV1p1beta1SpeechTranscription(),
          buildGoogleCloudVideointelligenceV1p1beta1SpeechTranscription(),
        ];

void checkUnnamed7059(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1SpeechTranscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1SpeechTranscription(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1SpeechTranscription(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p1beta1TextAnnotation>
    buildUnnamed7060() => [
          buildGoogleCloudVideointelligenceV1p1beta1TextAnnotation(),
          buildGoogleCloudVideointelligenceV1p1beta1TextAnnotation(),
        ];

void checkUnnamed7060(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1TextAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1TextAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1TextAnnotation(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults = 0;
api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults
    buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults();
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults <
      3) {
    o.error = buildGoogleRpcStatus();
    o.explicitAnnotation =
        buildGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation();
    o.faceAnnotations = buildUnnamed7048();
    o.faceDetectionAnnotations = buildUnnamed7049();
    o.frameLabelAnnotations = buildUnnamed7050();
    o.inputUri = 'foo';
    o.logoRecognitionAnnotations = buildUnnamed7051();
    o.objectAnnotations = buildUnnamed7052();
    o.personDetectionAnnotations = buildUnnamed7053();
    o.segment = buildGoogleCloudVideointelligenceV1p1beta1VideoSegment();
    o.segmentLabelAnnotations = buildUnnamed7054();
    o.segmentPresenceLabelAnnotations = buildUnnamed7055();
    o.shotAnnotations = buildUnnamed7056();
    o.shotLabelAnnotations = buildUnnamed7057();
    o.shotPresenceLabelAnnotations = buildUnnamed7058();
    o.speechTranscriptions = buildUnnamed7059();
    o.textAnnotations = buildUnnamed7060();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults(
    api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults <
      3) {
    checkGoogleRpcStatus(o.error!);
    checkGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation(
        o.explicitAnnotation!);
    checkUnnamed7048(o.faceAnnotations!);
    checkUnnamed7049(o.faceDetectionAnnotations!);
    checkUnnamed7050(o.frameLabelAnnotations!);
    unittest.expect(
      o.inputUri!,
      unittest.equals('foo'),
    );
    checkUnnamed7051(o.logoRecognitionAnnotations!);
    checkUnnamed7052(o.objectAnnotations!);
    checkUnnamed7053(o.personDetectionAnnotations!);
    checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o.segment!);
    checkUnnamed7054(o.segmentLabelAnnotations!);
    checkUnnamed7055(o.segmentPresenceLabelAnnotations!);
    checkUnnamed7056(o.shotAnnotations!);
    checkUnnamed7057(o.shotLabelAnnotations!);
    checkUnnamed7058(o.shotPresenceLabelAnnotations!);
    checkUnnamed7059(o.speechTranscriptions!);
    checkUnnamed7060(o.textAnnotations!);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1VideoSegment = 0;
api.GoogleCloudVideointelligenceV1p1beta1VideoSegment
    buildGoogleCloudVideointelligenceV1p1beta1VideoSegment() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1VideoSegment();
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1VideoSegment < 3) {
    o.endTimeOffset = 'foo';
    o.startTimeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(
    api.GoogleCloudVideointelligenceV1p1beta1VideoSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1VideoSegment < 3) {
    unittest.expect(
      o.endTimeOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTimeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoSegment--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1WordInfo = 0;
api.GoogleCloudVideointelligenceV1p1beta1WordInfo
    buildGoogleCloudVideointelligenceV1p1beta1WordInfo() {
  final o = api.GoogleCloudVideointelligenceV1p1beta1WordInfo();
  buildCounterGoogleCloudVideointelligenceV1p1beta1WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1WordInfo < 3) {
    o.confidence = 42.0;
    o.endTime = 'foo';
    o.speakerTag = 42;
    o.startTime = 'foo';
    o.word = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1WordInfo--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p1beta1WordInfo(
    api.GoogleCloudVideointelligenceV1p1beta1WordInfo o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1WordInfo < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.speakerTag!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.word!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1WordInfo--;
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress>
    buildUnnamed7061() => [
          buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress(),
          buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress(),
        ];

void checkUnnamed7061(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress = 0;
api.GoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress
    buildGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress();
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress <
      3) {
    o.annotationProgress = buildUnnamed7061();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress(
    api.GoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress <
      3) {
    checkUnnamed7061(o.annotationProgress!);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress--;
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults>
    buildUnnamed7062() => [
          buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults(),
          buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults(),
        ];

void checkUnnamed7062(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse = 0;
api.GoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse
    buildGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse();
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse <
      3) {
    o.annotationResults = buildUnnamed7062();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse(
    api.GoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse <
      3) {
    checkUnnamed7062(o.annotationResults!);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedAttribute = 0;
api.GoogleCloudVideointelligenceV1p2beta1DetectedAttribute
    buildGoogleCloudVideointelligenceV1p2beta1DetectedAttribute() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1DetectedAttribute();
  buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedAttribute < 3) {
    o.confidence = 42.0;
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedAttribute--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1DetectedAttribute(
    api.GoogleCloudVideointelligenceV1p2beta1DetectedAttribute o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedAttribute < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedAttribute--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedLandmark = 0;
api.GoogleCloudVideointelligenceV1p2beta1DetectedLandmark
    buildGoogleCloudVideointelligenceV1p2beta1DetectedLandmark() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1DetectedLandmark();
  buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedLandmark < 3) {
    o.confidence = 42.0;
    o.name = 'foo';
    o.point = buildGoogleCloudVideointelligenceV1p2beta1NormalizedVertex();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedLandmark--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1DetectedLandmark(
    api.GoogleCloudVideointelligenceV1p2beta1DetectedLandmark o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedLandmark < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVideointelligenceV1p2beta1NormalizedVertex(o.point!);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedLandmark--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1Entity = 0;
api.GoogleCloudVideointelligenceV1p2beta1Entity
    buildGoogleCloudVideointelligenceV1p2beta1Entity() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1Entity();
  buildCounterGoogleCloudVideointelligenceV1p2beta1Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1Entity < 3) {
    o.description = 'foo';
    o.entityId = 'foo';
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1Entity--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1Entity(
    api.GoogleCloudVideointelligenceV1p2beta1Entity o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1Entity < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1Entity--;
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame>
    buildUnnamed7063() => [
          buildGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame(),
          buildGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame(),
        ];

void checkUnnamed7063(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation =
    0;
api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation
    buildGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation() {
  final o =
      api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation <
      3) {
    o.frames = buildUnnamed7063();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation(
    api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation <
      3) {
    checkUnnamed7063(o.frames!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame =
    0;
api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame
    buildGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame();
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame <
      3) {
    o.pornographyLikelihood = 'foo';
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame(
    api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame <
      3) {
    unittest.expect(
      o.pornographyLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame--;
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1FaceFrame>
    buildUnnamed7064() => [
          buildGoogleCloudVideointelligenceV1p2beta1FaceFrame(),
          buildGoogleCloudVideointelligenceV1p2beta1FaceFrame(),
        ];

void checkUnnamed7064(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1FaceFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1FaceFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1FaceFrame(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1FaceSegment>
    buildUnnamed7065() => [
          buildGoogleCloudVideointelligenceV1p2beta1FaceSegment(),
          buildGoogleCloudVideointelligenceV1p2beta1FaceSegment(),
        ];

void checkUnnamed7065(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1FaceSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1FaceSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1FaceSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1FaceAnnotation = 0;
api.GoogleCloudVideointelligenceV1p2beta1FaceAnnotation
    buildGoogleCloudVideointelligenceV1p2beta1FaceAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1FaceAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1FaceAnnotation < 3) {
    o.frames = buildUnnamed7064();
    o.segments = buildUnnamed7065();
    o.thumbnail = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1FaceAnnotation(
    api.GoogleCloudVideointelligenceV1p2beta1FaceAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1FaceAnnotation < 3) {
    checkUnnamed7064(o.frames!);
    checkUnnamed7065(o.segments!);
    unittest.expect(
      o.thumbnail!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceAnnotation--;
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1Track> buildUnnamed7066() =>
    [
      buildGoogleCloudVideointelligenceV1p2beta1Track(),
      buildGoogleCloudVideointelligenceV1p2beta1Track(),
    ];

void checkUnnamed7066(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1Track(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation =
    0;
api.GoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation
    buildGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation <
      3) {
    o.thumbnail = 'foo';
    o.tracks = buildUnnamed7066();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation <
      3) {
    unittest.expect(
      o.thumbnail!,
      unittest.equals('foo'),
    );
    checkUnnamed7066(o.tracks!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation--;
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox>
    buildUnnamed7067() => [
          buildGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox(),
          buildGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox(),
        ];

void checkUnnamed7067(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1FaceFrame = 0;
api.GoogleCloudVideointelligenceV1p2beta1FaceFrame
    buildGoogleCloudVideointelligenceV1p2beta1FaceFrame() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1FaceFrame();
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1FaceFrame < 3) {
    o.normalizedBoundingBoxes = buildUnnamed7067();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1FaceFrame(
    api.GoogleCloudVideointelligenceV1p2beta1FaceFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1FaceFrame < 3) {
    checkUnnamed7067(o.normalizedBoundingBoxes!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1FaceSegment = 0;
api.GoogleCloudVideointelligenceV1p2beta1FaceSegment
    buildGoogleCloudVideointelligenceV1p2beta1FaceSegment() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1FaceSegment();
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1FaceSegment < 3) {
    o.segment = buildGoogleCloudVideointelligenceV1p2beta1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1FaceSegment(
    api.GoogleCloudVideointelligenceV1p2beta1FaceSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1FaceSegment < 3) {
    checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o.segment!);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceSegment--;
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1Entity> buildUnnamed7068() =>
    [
      buildGoogleCloudVideointelligenceV1p2beta1Entity(),
      buildGoogleCloudVideointelligenceV1p2beta1Entity(),
    ];

void checkUnnamed7068(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1Entity(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1Entity(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelFrame>
    buildUnnamed7069() => [
          buildGoogleCloudVideointelligenceV1p2beta1LabelFrame(),
          buildGoogleCloudVideointelligenceV1p2beta1LabelFrame(),
        ];

void checkUnnamed7069(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LabelFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LabelFrame(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelSegment>
    buildUnnamed7070() => [
          buildGoogleCloudVideointelligenceV1p2beta1LabelSegment(),
          buildGoogleCloudVideointelligenceV1p2beta1LabelSegment(),
        ];

void checkUnnamed7070(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LabelSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LabelSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1LabelAnnotation = 0;
api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation
    buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1LabelAnnotation < 3) {
    o.categoryEntities = buildUnnamed7068();
    o.entity = buildGoogleCloudVideointelligenceV1p2beta1Entity();
    o.frames = buildUnnamed7069();
    o.segments = buildUnnamed7070();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(
    api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1LabelAnnotation < 3) {
    checkUnnamed7068(o.categoryEntities!);
    checkGoogleCloudVideointelligenceV1p2beta1Entity(o.entity!);
    checkUnnamed7069(o.frames!);
    checkUnnamed7070(o.segments!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1LabelFrame = 0;
api.GoogleCloudVideointelligenceV1p2beta1LabelFrame
    buildGoogleCloudVideointelligenceV1p2beta1LabelFrame() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1LabelFrame();
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1LabelFrame < 3) {
    o.confidence = 42.0;
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1LabelFrame(
    api.GoogleCloudVideointelligenceV1p2beta1LabelFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1LabelFrame < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1LabelSegment = 0;
api.GoogleCloudVideointelligenceV1p2beta1LabelSegment
    buildGoogleCloudVideointelligenceV1p2beta1LabelSegment() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1LabelSegment();
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1LabelSegment < 3) {
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1p2beta1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1LabelSegment(
    api.GoogleCloudVideointelligenceV1p2beta1LabelSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1LabelSegment < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o.segment!);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelSegment--;
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1VideoSegment>
    buildUnnamed7071() => [
          buildGoogleCloudVideointelligenceV1p2beta1VideoSegment(),
          buildGoogleCloudVideointelligenceV1p2beta1VideoSegment(),
        ];

void checkUnnamed7071(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1Track> buildUnnamed7072() =>
    [
      buildGoogleCloudVideointelligenceV1p2beta1Track(),
      buildGoogleCloudVideointelligenceV1p2beta1Track(),
    ];

void checkUnnamed7072(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1Track(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation =
    0;
api.GoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation
    buildGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation() {
  final o =
      api.GoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation <
      3) {
    o.entity = buildGoogleCloudVideointelligenceV1p2beta1Entity();
    o.segments = buildUnnamed7071();
    o.tracks = buildUnnamed7072();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation(
    api.GoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation <
      3) {
    checkGoogleCloudVideointelligenceV1p2beta1Entity(o.entity!);
    checkUnnamed7071(o.segments!);
    checkUnnamed7072(o.tracks!);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation--;
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox = 0;
api.GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox
    buildGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox();
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox <
      3) {
    o.bottom = 42.0;
    o.left = 42.0;
    o.right = 42.0;
    o.top = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox(
    api.GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox <
      3) {
    unittest.expect(
      o.bottom!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.left!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.right!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.top!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox--;
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1NormalizedVertex>
    buildUnnamed7073() => [
          buildGoogleCloudVideointelligenceV1p2beta1NormalizedVertex(),
          buildGoogleCloudVideointelligenceV1p2beta1NormalizedVertex(),
        ];

void checkUnnamed7073(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1NormalizedVertex(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1NormalizedVertex(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly = 0;
api.GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly
    buildGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly();
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly <
      3) {
    o.vertices = buildUnnamed7073();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly(
    api.GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly <
      3) {
    checkUnnamed7073(o.vertices!);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedVertex = 0;
api.GoogleCloudVideointelligenceV1p2beta1NormalizedVertex
    buildGoogleCloudVideointelligenceV1p2beta1NormalizedVertex() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1NormalizedVertex();
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedVertex--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1NormalizedVertex(
    api.GoogleCloudVideointelligenceV1p2beta1NormalizedVertex o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedVertex--;
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame>
    buildUnnamed7074() => [
          buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame(),
          buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame(),
        ];

void checkUnnamed7074(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation =
    0;
api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation
    buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation <
      3) {
    o.confidence = 42.0;
    o.entity = buildGoogleCloudVideointelligenceV1p2beta1Entity();
    o.frames = buildUnnamed7074();
    o.segment = buildGoogleCloudVideointelligenceV1p2beta1VideoSegment();
    o.trackId = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation(
    api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVideointelligenceV1p2beta1Entity(o.entity!);
    checkUnnamed7074(o.frames!);
    checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o.segment!);
    unittest.expect(
      o.trackId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame =
    0;
api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame
    buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame();
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame <
      3) {
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame(
    api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame <
      3) {
    checkGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox(
        o.normalizedBoundingBox!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame--;
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1Track> buildUnnamed7075() =>
    [
      buildGoogleCloudVideointelligenceV1p2beta1Track(),
      buildGoogleCloudVideointelligenceV1p2beta1Track(),
    ];

void checkUnnamed7075(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1Track(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation =
    0;
api.GoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation
    buildGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation() {
  final o =
      api.GoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation <
      3) {
    o.tracks = buildUnnamed7075();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation <
      3) {
    checkUnnamed7075(o.tracks!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation--;
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1WordInfo>
    buildUnnamed7076() => [
          buildGoogleCloudVideointelligenceV1p2beta1WordInfo(),
          buildGoogleCloudVideointelligenceV1p2beta1WordInfo(),
        ];

void checkUnnamed7076(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1WordInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1WordInfo(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1WordInfo(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative =
    0;
api.GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative
    buildGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative() {
  final o =
      api.GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative();
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative <
      3) {
    o.confidence = 42.0;
    o.transcript = 'foo';
    o.words = buildUnnamed7076();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative(
    api.GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.transcript!,
      unittest.equals('foo'),
    );
    checkUnnamed7076(o.words!);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative--;
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative>
    buildUnnamed7077() => [
          buildGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative(),
          buildGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative(),
        ];

void checkUnnamed7077(
    core.List<
            api.GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscription =
    0;
api.GoogleCloudVideointelligenceV1p2beta1SpeechTranscription
    buildGoogleCloudVideointelligenceV1p2beta1SpeechTranscription() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1SpeechTranscription();
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscription <
      3) {
    o.alternatives = buildUnnamed7077();
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscription--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1SpeechTranscription(
    api.GoogleCloudVideointelligenceV1p2beta1SpeechTranscription o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscription <
      3) {
    checkUnnamed7077(o.alternatives!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscription--;
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1TextSegment>
    buildUnnamed7078() => [
          buildGoogleCloudVideointelligenceV1p2beta1TextSegment(),
          buildGoogleCloudVideointelligenceV1p2beta1TextSegment(),
        ];

void checkUnnamed7078(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1TextSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1TextSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1TextSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1TextAnnotation = 0;
api.GoogleCloudVideointelligenceV1p2beta1TextAnnotation
    buildGoogleCloudVideointelligenceV1p2beta1TextAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1TextAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1TextAnnotation < 3) {
    o.segments = buildUnnamed7078();
    o.text = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1TextAnnotation(
    api.GoogleCloudVideointelligenceV1p2beta1TextAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1TextAnnotation < 3) {
    checkUnnamed7078(o.segments!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1TextFrame = 0;
api.GoogleCloudVideointelligenceV1p2beta1TextFrame
    buildGoogleCloudVideointelligenceV1p2beta1TextFrame() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1TextFrame();
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1TextFrame < 3) {
    o.rotatedBoundingBox =
        buildGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1TextFrame(
    api.GoogleCloudVideointelligenceV1p2beta1TextFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1TextFrame < 3) {
    checkGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly(
        o.rotatedBoundingBox!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextFrame--;
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1TextFrame>
    buildUnnamed7079() => [
          buildGoogleCloudVideointelligenceV1p2beta1TextFrame(),
          buildGoogleCloudVideointelligenceV1p2beta1TextFrame(),
        ];

void checkUnnamed7079(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1TextFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1TextFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1TextFrame(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1TextSegment = 0;
api.GoogleCloudVideointelligenceV1p2beta1TextSegment
    buildGoogleCloudVideointelligenceV1p2beta1TextSegment() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1TextSegment();
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1TextSegment < 3) {
    o.confidence = 42.0;
    o.frames = buildUnnamed7079();
    o.segment = buildGoogleCloudVideointelligenceV1p2beta1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1TextSegment(
    api.GoogleCloudVideointelligenceV1p2beta1TextSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1TextSegment < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkUnnamed7079(o.frames!);
    checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o.segment!);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextSegment--;
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1DetectedAttribute>
    buildUnnamed7080() => [
          buildGoogleCloudVideointelligenceV1p2beta1DetectedAttribute(),
          buildGoogleCloudVideointelligenceV1p2beta1DetectedAttribute(),
        ];

void checkUnnamed7080(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1DetectedAttribute(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1DetectedLandmark>
    buildUnnamed7081() => [
          buildGoogleCloudVideointelligenceV1p2beta1DetectedLandmark(),
          buildGoogleCloudVideointelligenceV1p2beta1DetectedLandmark(),
        ];

void checkUnnamed7081(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1DetectedLandmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1DetectedLandmark(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1DetectedLandmark(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1TimestampedObject = 0;
api.GoogleCloudVideointelligenceV1p2beta1TimestampedObject
    buildGoogleCloudVideointelligenceV1p2beta1TimestampedObject() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1TimestampedObject();
  buildCounterGoogleCloudVideointelligenceV1p2beta1TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1TimestampedObject < 3) {
    o.attributes = buildUnnamed7080();
    o.landmarks = buildUnnamed7081();
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TimestampedObject--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1TimestampedObject(
    api.GoogleCloudVideointelligenceV1p2beta1TimestampedObject o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1TimestampedObject < 3) {
    checkUnnamed7080(o.attributes!);
    checkUnnamed7081(o.landmarks!);
    checkGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox(
        o.normalizedBoundingBox!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TimestampedObject--;
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1DetectedAttribute>
    buildUnnamed7082() => [
          buildGoogleCloudVideointelligenceV1p2beta1DetectedAttribute(),
          buildGoogleCloudVideointelligenceV1p2beta1DetectedAttribute(),
        ];

void checkUnnamed7082(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1DetectedAttribute(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1TimestampedObject>
    buildUnnamed7083() => [
          buildGoogleCloudVideointelligenceV1p2beta1TimestampedObject(),
          buildGoogleCloudVideointelligenceV1p2beta1TimestampedObject(),
        ];

void checkUnnamed7083(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1TimestampedObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1TimestampedObject(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1TimestampedObject(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1Track = 0;
api.GoogleCloudVideointelligenceV1p2beta1Track
    buildGoogleCloudVideointelligenceV1p2beta1Track() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1Track();
  buildCounterGoogleCloudVideointelligenceV1p2beta1Track++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1Track < 3) {
    o.attributes = buildUnnamed7082();
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1p2beta1VideoSegment();
    o.timestampedObjects = buildUnnamed7083();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1Track--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1Track(
    api.GoogleCloudVideointelligenceV1p2beta1Track o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1Track++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1Track < 3) {
    checkUnnamed7082(o.attributes!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o.segment!);
    checkUnnamed7083(o.timestampedObjects!);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1Track--;
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress =
    0;
api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress
    buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress();
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress <
      3) {
    o.feature = 'foo';
    o.inputUri = 'foo';
    o.progressPercent = 42;
    o.segment = buildGoogleCloudVideointelligenceV1p2beta1VideoSegment();
    o.startTime = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress(
    api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress <
      3) {
    unittest.expect(
      o.feature!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.progressPercent!,
      unittest.equals(42),
    );
    checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o.segment!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress--;
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1FaceAnnotation>
    buildUnnamed7084() => [
          buildGoogleCloudVideointelligenceV1p2beta1FaceAnnotation(),
          buildGoogleCloudVideointelligenceV1p2beta1FaceAnnotation(),
        ];

void checkUnnamed7084(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1FaceAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1FaceAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation>
    buildUnnamed7085() => [
          buildGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation(),
          buildGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation(),
        ];

void checkUnnamed7085(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation>
    buildUnnamed7086() => [
          buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(),
        ];

void checkUnnamed7086(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation>
    buildUnnamed7087() => [
          buildGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation(),
          buildGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation(),
        ];

void checkUnnamed7087(
    core.List<
            api.GoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation>
    buildUnnamed7088() => [
          buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation(),
          buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation(),
        ];

void checkUnnamed7088(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation>
    buildUnnamed7089() => [
          buildGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation(),
          buildGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation(),
        ];

void checkUnnamed7089(
    core.List<
            api.GoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation>
    buildUnnamed7090() => [
          buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(),
        ];

void checkUnnamed7090(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation>
    buildUnnamed7091() => [
          buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(),
        ];

void checkUnnamed7091(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1VideoSegment>
    buildUnnamed7092() => [
          buildGoogleCloudVideointelligenceV1p2beta1VideoSegment(),
          buildGoogleCloudVideointelligenceV1p2beta1VideoSegment(),
        ];

void checkUnnamed7092(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation>
    buildUnnamed7093() => [
          buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(),
        ];

void checkUnnamed7093(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation>
    buildUnnamed7094() => [
          buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(),
        ];

void checkUnnamed7094(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1SpeechTranscription>
    buildUnnamed7095() => [
          buildGoogleCloudVideointelligenceV1p2beta1SpeechTranscription(),
          buildGoogleCloudVideointelligenceV1p2beta1SpeechTranscription(),
        ];

void checkUnnamed7095(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1SpeechTranscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1SpeechTranscription(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1SpeechTranscription(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1TextAnnotation>
    buildUnnamed7096() => [
          buildGoogleCloudVideointelligenceV1p2beta1TextAnnotation(),
          buildGoogleCloudVideointelligenceV1p2beta1TextAnnotation(),
        ];

void checkUnnamed7096(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1TextAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1TextAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1TextAnnotation(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults = 0;
api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults
    buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults();
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults <
      3) {
    o.error = buildGoogleRpcStatus();
    o.explicitAnnotation =
        buildGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation();
    o.faceAnnotations = buildUnnamed7084();
    o.faceDetectionAnnotations = buildUnnamed7085();
    o.frameLabelAnnotations = buildUnnamed7086();
    o.inputUri = 'foo';
    o.logoRecognitionAnnotations = buildUnnamed7087();
    o.objectAnnotations = buildUnnamed7088();
    o.personDetectionAnnotations = buildUnnamed7089();
    o.segment = buildGoogleCloudVideointelligenceV1p2beta1VideoSegment();
    o.segmentLabelAnnotations = buildUnnamed7090();
    o.segmentPresenceLabelAnnotations = buildUnnamed7091();
    o.shotAnnotations = buildUnnamed7092();
    o.shotLabelAnnotations = buildUnnamed7093();
    o.shotPresenceLabelAnnotations = buildUnnamed7094();
    o.speechTranscriptions = buildUnnamed7095();
    o.textAnnotations = buildUnnamed7096();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults(
    api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults <
      3) {
    checkGoogleRpcStatus(o.error!);
    checkGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation(
        o.explicitAnnotation!);
    checkUnnamed7084(o.faceAnnotations!);
    checkUnnamed7085(o.faceDetectionAnnotations!);
    checkUnnamed7086(o.frameLabelAnnotations!);
    unittest.expect(
      o.inputUri!,
      unittest.equals('foo'),
    );
    checkUnnamed7087(o.logoRecognitionAnnotations!);
    checkUnnamed7088(o.objectAnnotations!);
    checkUnnamed7089(o.personDetectionAnnotations!);
    checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o.segment!);
    checkUnnamed7090(o.segmentLabelAnnotations!);
    checkUnnamed7091(o.segmentPresenceLabelAnnotations!);
    checkUnnamed7092(o.shotAnnotations!);
    checkUnnamed7093(o.shotLabelAnnotations!);
    checkUnnamed7094(o.shotPresenceLabelAnnotations!);
    checkUnnamed7095(o.speechTranscriptions!);
    checkUnnamed7096(o.textAnnotations!);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1VideoSegment = 0;
api.GoogleCloudVideointelligenceV1p2beta1VideoSegment
    buildGoogleCloudVideointelligenceV1p2beta1VideoSegment() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1VideoSegment();
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1VideoSegment < 3) {
    o.endTimeOffset = 'foo';
    o.startTimeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(
    api.GoogleCloudVideointelligenceV1p2beta1VideoSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1VideoSegment < 3) {
    unittest.expect(
      o.endTimeOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTimeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoSegment--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1WordInfo = 0;
api.GoogleCloudVideointelligenceV1p2beta1WordInfo
    buildGoogleCloudVideointelligenceV1p2beta1WordInfo() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1WordInfo();
  buildCounterGoogleCloudVideointelligenceV1p2beta1WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1WordInfo < 3) {
    o.confidence = 42.0;
    o.endTime = 'foo';
    o.speakerTag = 42;
    o.startTime = 'foo';
    o.word = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1WordInfo--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1WordInfo(
    api.GoogleCloudVideointelligenceV1p2beta1WordInfo o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1WordInfo < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.speakerTag!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.word!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1WordInfo--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress>
    buildUnnamed7097() => [
          buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress(),
          buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress(),
        ];

void checkUnnamed7097(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress = 0;
api.GoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress
    buildGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress();
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress <
      3) {
    o.annotationProgress = buildUnnamed7097();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress(
    api.GoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress <
      3) {
    checkUnnamed7097(o.annotationProgress!);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults>
    buildUnnamed7098() => [
          buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults(),
          buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults(),
        ];

void checkUnnamed7098(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse = 0;
api.GoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse
    buildGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse();
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse <
      3) {
    o.annotationResults = buildUnnamed7098();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse(
    api.GoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse <
      3) {
    checkUnnamed7098(o.annotationResults!);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1Celebrity = 0;
api.GoogleCloudVideointelligenceV1p3beta1Celebrity
    buildGoogleCloudVideointelligenceV1p3beta1Celebrity() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1Celebrity();
  buildCounterGoogleCloudVideointelligenceV1p3beta1Celebrity++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1Celebrity < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1Celebrity--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1Celebrity(
    api.GoogleCloudVideointelligenceV1p3beta1Celebrity o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1Celebrity++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1Celebrity < 3) {
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
  buildCounterGoogleCloudVideointelligenceV1p3beta1Celebrity--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1CelebrityTrack>
    buildUnnamed7099() => [
          buildGoogleCloudVideointelligenceV1p3beta1CelebrityTrack(),
          buildGoogleCloudVideointelligenceV1p3beta1CelebrityTrack(),
        ];

void checkUnnamed7099(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1CelebrityTrack> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1CelebrityTrack(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1CelebrityTrack(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation =
    0;
api.GoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation
    buildGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation() {
  final o =
      api.GoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation <
      3) {
    o.celebrityTracks = buildUnnamed7099();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation <
      3) {
    checkUnnamed7099(o.celebrityTracks!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity>
    buildUnnamed7100() => [
          buildGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity(),
          buildGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity(),
        ];

void checkUnnamed7100(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityTrack = 0;
api.GoogleCloudVideointelligenceV1p3beta1CelebrityTrack
    buildGoogleCloudVideointelligenceV1p3beta1CelebrityTrack() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1CelebrityTrack();
  buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityTrack++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityTrack < 3) {
    o.celebrities = buildUnnamed7100();
    o.faceTrack = buildGoogleCloudVideointelligenceV1p3beta1Track();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityTrack--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1CelebrityTrack(
    api.GoogleCloudVideointelligenceV1p3beta1CelebrityTrack o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityTrack++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityTrack < 3) {
    checkUnnamed7100(o.celebrities!);
    checkGoogleCloudVideointelligenceV1p3beta1Track(o.faceTrack!);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityTrack--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedAttribute = 0;
api.GoogleCloudVideointelligenceV1p3beta1DetectedAttribute
    buildGoogleCloudVideointelligenceV1p3beta1DetectedAttribute() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1DetectedAttribute();
  buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedAttribute < 3) {
    o.confidence = 42.0;
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedAttribute--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(
    api.GoogleCloudVideointelligenceV1p3beta1DetectedAttribute o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedAttribute < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedAttribute--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedLandmark = 0;
api.GoogleCloudVideointelligenceV1p3beta1DetectedLandmark
    buildGoogleCloudVideointelligenceV1p3beta1DetectedLandmark() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1DetectedLandmark();
  buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedLandmark < 3) {
    o.confidence = 42.0;
    o.name = 'foo';
    o.point = buildGoogleCloudVideointelligenceV1p3beta1NormalizedVertex();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedLandmark--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1DetectedLandmark(
    api.GoogleCloudVideointelligenceV1p3beta1DetectedLandmark o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedLandmark < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVideointelligenceV1p3beta1NormalizedVertex(o.point!);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedLandmark--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1Entity = 0;
api.GoogleCloudVideointelligenceV1p3beta1Entity
    buildGoogleCloudVideointelligenceV1p3beta1Entity() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1Entity();
  buildCounterGoogleCloudVideointelligenceV1p3beta1Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1Entity < 3) {
    o.description = 'foo';
    o.entityId = 'foo';
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1Entity--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1Entity(
    api.GoogleCloudVideointelligenceV1p3beta1Entity o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1Entity < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1Entity--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame>
    buildUnnamed7101() => [
          buildGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame(),
          buildGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame(),
        ];

void checkUnnamed7101(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation =
    0;
api.GoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation
    buildGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation() {
  final o =
      api.GoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation <
      3) {
    o.frames = buildUnnamed7101();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation <
      3) {
    checkUnnamed7101(o.frames!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame =
    0;
api.GoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame
    buildGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame();
  buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame <
      3) {
    o.pornographyLikelihood = 'foo';
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame(
    api.GoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame <
      3) {
    unittest.expect(
      o.pornographyLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1FaceFrame>
    buildUnnamed7102() => [
          buildGoogleCloudVideointelligenceV1p3beta1FaceFrame(),
          buildGoogleCloudVideointelligenceV1p3beta1FaceFrame(),
        ];

void checkUnnamed7102(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1FaceFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1FaceFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1FaceFrame(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1FaceSegment>
    buildUnnamed7103() => [
          buildGoogleCloudVideointelligenceV1p3beta1FaceSegment(),
          buildGoogleCloudVideointelligenceV1p3beta1FaceSegment(),
        ];

void checkUnnamed7103(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1FaceSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1FaceSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1FaceSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1FaceAnnotation = 0;
api.GoogleCloudVideointelligenceV1p3beta1FaceAnnotation
    buildGoogleCloudVideointelligenceV1p3beta1FaceAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1FaceAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1FaceAnnotation < 3) {
    o.frames = buildUnnamed7102();
    o.segments = buildUnnamed7103();
    o.thumbnail = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1FaceAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1FaceAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1FaceAnnotation < 3) {
    checkUnnamed7102(o.frames!);
    checkUnnamed7103(o.segments!);
    unittest.expect(
      o.thumbnail!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceAnnotation--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1Track> buildUnnamed7104() =>
    [
      buildGoogleCloudVideointelligenceV1p3beta1Track(),
      buildGoogleCloudVideointelligenceV1p3beta1Track(),
    ];

void checkUnnamed7104(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1Track(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation =
    0;
api.GoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation
    buildGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation <
      3) {
    o.thumbnail = 'foo';
    o.tracks = buildUnnamed7104();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation <
      3) {
    unittest.expect(
      o.thumbnail!,
      unittest.equals('foo'),
    );
    checkUnnamed7104(o.tracks!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox>
    buildUnnamed7105() => [
          buildGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox(),
          buildGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox(),
        ];

void checkUnnamed7105(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1FaceFrame = 0;
api.GoogleCloudVideointelligenceV1p3beta1FaceFrame
    buildGoogleCloudVideointelligenceV1p3beta1FaceFrame() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1FaceFrame();
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1FaceFrame < 3) {
    o.normalizedBoundingBoxes = buildUnnamed7105();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1FaceFrame(
    api.GoogleCloudVideointelligenceV1p3beta1FaceFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1FaceFrame < 3) {
    checkUnnamed7105(o.normalizedBoundingBoxes!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1FaceSegment = 0;
api.GoogleCloudVideointelligenceV1p3beta1FaceSegment
    buildGoogleCloudVideointelligenceV1p3beta1FaceSegment() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1FaceSegment();
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1FaceSegment < 3) {
    o.segment = buildGoogleCloudVideointelligenceV1p3beta1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1FaceSegment(
    api.GoogleCloudVideointelligenceV1p3beta1FaceSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1FaceSegment < 3) {
    checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o.segment!);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceSegment--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1Entity> buildUnnamed7106() =>
    [
      buildGoogleCloudVideointelligenceV1p3beta1Entity(),
      buildGoogleCloudVideointelligenceV1p3beta1Entity(),
    ];

void checkUnnamed7106(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1Entity(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1Entity(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelFrame>
    buildUnnamed7107() => [
          buildGoogleCloudVideointelligenceV1p3beta1LabelFrame(),
          buildGoogleCloudVideointelligenceV1p3beta1LabelFrame(),
        ];

void checkUnnamed7107(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelFrame(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelSegment>
    buildUnnamed7108() => [
          buildGoogleCloudVideointelligenceV1p3beta1LabelSegment(),
          buildGoogleCloudVideointelligenceV1p3beta1LabelSegment(),
        ];

void checkUnnamed7108(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1LabelAnnotation = 0;
api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation
    buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1LabelAnnotation < 3) {
    o.categoryEntities = buildUnnamed7106();
    o.entity = buildGoogleCloudVideointelligenceV1p3beta1Entity();
    o.frames = buildUnnamed7107();
    o.segments = buildUnnamed7108();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1LabelAnnotation < 3) {
    checkUnnamed7106(o.categoryEntities!);
    checkGoogleCloudVideointelligenceV1p3beta1Entity(o.entity!);
    checkUnnamed7107(o.frames!);
    checkUnnamed7108(o.segments!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1LabelFrame = 0;
api.GoogleCloudVideointelligenceV1p3beta1LabelFrame
    buildGoogleCloudVideointelligenceV1p3beta1LabelFrame() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1LabelFrame();
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1LabelFrame < 3) {
    o.confidence = 42.0;
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1LabelFrame(
    api.GoogleCloudVideointelligenceV1p3beta1LabelFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1LabelFrame < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1LabelSegment = 0;
api.GoogleCloudVideointelligenceV1p3beta1LabelSegment
    buildGoogleCloudVideointelligenceV1p3beta1LabelSegment() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1LabelSegment();
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1LabelSegment < 3) {
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1p3beta1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1LabelSegment(
    api.GoogleCloudVideointelligenceV1p3beta1LabelSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1LabelSegment < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o.segment!);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelSegment--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoSegment>
    buildUnnamed7109() => [
          buildGoogleCloudVideointelligenceV1p3beta1VideoSegment(),
          buildGoogleCloudVideointelligenceV1p3beta1VideoSegment(),
        ];

void checkUnnamed7109(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1Track> buildUnnamed7110() =>
    [
      buildGoogleCloudVideointelligenceV1p3beta1Track(),
      buildGoogleCloudVideointelligenceV1p3beta1Track(),
    ];

void checkUnnamed7110(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1Track(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation =
    0;
api.GoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation
    buildGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation() {
  final o =
      api.GoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation <
      3) {
    o.entity = buildGoogleCloudVideointelligenceV1p3beta1Entity();
    o.segments = buildUnnamed7109();
    o.tracks = buildUnnamed7110();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation <
      3) {
    checkGoogleCloudVideointelligenceV1p3beta1Entity(o.entity!);
    checkUnnamed7109(o.segments!);
    checkUnnamed7110(o.tracks!);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation--;
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox = 0;
api.GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox
    buildGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox();
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox <
      3) {
    o.bottom = 42.0;
    o.left = 42.0;
    o.right = 42.0;
    o.top = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox(
    api.GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox <
      3) {
    unittest.expect(
      o.bottom!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.left!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.right!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.top!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1NormalizedVertex>
    buildUnnamed7111() => [
          buildGoogleCloudVideointelligenceV1p3beta1NormalizedVertex(),
          buildGoogleCloudVideointelligenceV1p3beta1NormalizedVertex(),
        ];

void checkUnnamed7111(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1NormalizedVertex(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1NormalizedVertex(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly = 0;
api.GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly
    buildGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly();
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly <
      3) {
    o.vertices = buildUnnamed7111();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly(
    api.GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly <
      3) {
    checkUnnamed7111(o.vertices!);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedVertex = 0;
api.GoogleCloudVideointelligenceV1p3beta1NormalizedVertex
    buildGoogleCloudVideointelligenceV1p3beta1NormalizedVertex() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1NormalizedVertex();
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedVertex--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1NormalizedVertex(
    api.GoogleCloudVideointelligenceV1p3beta1NormalizedVertex o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedVertex--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame>
    buildUnnamed7112() => [
          buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame(),
          buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame(),
        ];

void checkUnnamed7112(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation =
    0;
api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation
    buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation <
      3) {
    o.confidence = 42.0;
    o.entity = buildGoogleCloudVideointelligenceV1p3beta1Entity();
    o.frames = buildUnnamed7112();
    o.segment = buildGoogleCloudVideointelligenceV1p3beta1VideoSegment();
    o.trackId = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVideointelligenceV1p3beta1Entity(o.entity!);
    checkUnnamed7112(o.frames!);
    checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o.segment!);
    unittest.expect(
      o.trackId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame =
    0;
api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame
    buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame();
  buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame <
      3) {
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame(
    api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame <
      3) {
    checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox(
        o.normalizedBoundingBox!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1Track> buildUnnamed7113() =>
    [
      buildGoogleCloudVideointelligenceV1p3beta1Track(),
      buildGoogleCloudVideointelligenceV1p3beta1Track(),
    ];

void checkUnnamed7113(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1Track(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation =
    0;
api.GoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation
    buildGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation() {
  final o =
      api.GoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation <
      3) {
    o.tracks = buildUnnamed7113();
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation <
      3) {
    checkUnnamed7113(o.tracks!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity =
    0;
api.GoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity
    buildGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity();
  buildCounterGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity <
      3) {
    o.celebrity = buildGoogleCloudVideointelligenceV1p3beta1Celebrity();
    o.confidence = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity(
    api.GoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity <
      3) {
    checkGoogleCloudVideointelligenceV1p3beta1Celebrity(o.celebrity!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1WordInfo>
    buildUnnamed7114() => [
          buildGoogleCloudVideointelligenceV1p3beta1WordInfo(),
          buildGoogleCloudVideointelligenceV1p3beta1WordInfo(),
        ];

void checkUnnamed7114(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1WordInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1WordInfo(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1WordInfo(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative =
    0;
api.GoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative
    buildGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative() {
  final o =
      api.GoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative();
  buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative <
      3) {
    o.confidence = 42.0;
    o.transcript = 'foo';
    o.words = buildUnnamed7114();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative(
    api.GoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.transcript!,
      unittest.equals('foo'),
    );
    checkUnnamed7114(o.words!);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative>
    buildUnnamed7115() => [
          buildGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative(),
          buildGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative(),
        ];

void checkUnnamed7115(
    core.List<
            api.GoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechTranscription =
    0;
api.GoogleCloudVideointelligenceV1p3beta1SpeechTranscription
    buildGoogleCloudVideointelligenceV1p3beta1SpeechTranscription() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1SpeechTranscription();
  buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechTranscription <
      3) {
    o.alternatives = buildUnnamed7115();
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechTranscription--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1SpeechTranscription(
    api.GoogleCloudVideointelligenceV1p3beta1SpeechTranscription o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechTranscription <
      3) {
    checkUnnamed7115(o.alternatives!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechTranscription--;
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse =
    0;
api.GoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse
    buildGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse() {
  final o =
      api.GoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse();
  buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse <
      3) {
    o.annotationResults =
        buildGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults();
    o.annotationResultsUri = 'foo';
    o.error = buildGoogleRpcStatus();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse(
    api.GoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse <
      3) {
    checkGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults(
        o.annotationResults!);
    unittest.expect(
      o.annotationResultsUri!,
      unittest.equals('foo'),
    );
    checkGoogleRpcStatus(o.error!);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation>
    buildUnnamed7116() => [
          buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(),
        ];

void checkUnnamed7116(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation>
    buildUnnamed7117() => [
          buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(),
          buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(),
        ];

void checkUnnamed7117(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoSegment>
    buildUnnamed7118() => [
          buildGoogleCloudVideointelligenceV1p3beta1VideoSegment(),
          buildGoogleCloudVideointelligenceV1p3beta1VideoSegment(),
        ];

void checkUnnamed7118(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults =
    0;
api.GoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults
    buildGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults() {
  final o = api
      .GoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults();
  buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults <
      3) {
    o.explicitAnnotation =
        buildGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation();
    o.frameTimestamp = 'foo';
    o.labelAnnotations = buildUnnamed7116();
    o.objectAnnotations = buildUnnamed7117();
    o.shotAnnotations = buildUnnamed7118();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults(
    api.GoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults
        o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults <
      3) {
    checkGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation(
        o.explicitAnnotation!);
    unittest.expect(
      o.frameTimestamp!,
      unittest.equals('foo'),
    );
    checkUnnamed7116(o.labelAnnotations!);
    checkUnnamed7117(o.objectAnnotations!);
    checkUnnamed7118(o.shotAnnotations!);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1TextSegment>
    buildUnnamed7119() => [
          buildGoogleCloudVideointelligenceV1p3beta1TextSegment(),
          buildGoogleCloudVideointelligenceV1p3beta1TextSegment(),
        ];

void checkUnnamed7119(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1TextSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1TextSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1TextSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1TextAnnotation = 0;
api.GoogleCloudVideointelligenceV1p3beta1TextAnnotation
    buildGoogleCloudVideointelligenceV1p3beta1TextAnnotation() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1TextAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1TextAnnotation < 3) {
    o.segments = buildUnnamed7119();
    o.text = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextAnnotation--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1TextAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1TextAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1TextAnnotation < 3) {
    checkUnnamed7119(o.segments!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1TextFrame = 0;
api.GoogleCloudVideointelligenceV1p3beta1TextFrame
    buildGoogleCloudVideointelligenceV1p3beta1TextFrame() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1TextFrame();
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1TextFrame < 3) {
    o.rotatedBoundingBox =
        buildGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextFrame--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1TextFrame(
    api.GoogleCloudVideointelligenceV1p3beta1TextFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1TextFrame < 3) {
    checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly(
        o.rotatedBoundingBox!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextFrame--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1TextFrame>
    buildUnnamed7120() => [
          buildGoogleCloudVideointelligenceV1p3beta1TextFrame(),
          buildGoogleCloudVideointelligenceV1p3beta1TextFrame(),
        ];

void checkUnnamed7120(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1TextFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1TextFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1TextFrame(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1TextSegment = 0;
api.GoogleCloudVideointelligenceV1p3beta1TextSegment
    buildGoogleCloudVideointelligenceV1p3beta1TextSegment() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1TextSegment();
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1TextSegment < 3) {
    o.confidence = 42.0;
    o.frames = buildUnnamed7120();
    o.segment = buildGoogleCloudVideointelligenceV1p3beta1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1TextSegment(
    api.GoogleCloudVideointelligenceV1p3beta1TextSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1TextSegment < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkUnnamed7120(o.frames!);
    checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o.segment!);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextSegment--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1DetectedAttribute>
    buildUnnamed7121() => [
          buildGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(),
          buildGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(),
        ];

void checkUnnamed7121(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1DetectedLandmark>
    buildUnnamed7122() => [
          buildGoogleCloudVideointelligenceV1p3beta1DetectedLandmark(),
          buildGoogleCloudVideointelligenceV1p3beta1DetectedLandmark(),
        ];

void checkUnnamed7122(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1DetectedLandmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1DetectedLandmark(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1DetectedLandmark(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1TimestampedObject = 0;
api.GoogleCloudVideointelligenceV1p3beta1TimestampedObject
    buildGoogleCloudVideointelligenceV1p3beta1TimestampedObject() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1TimestampedObject();
  buildCounterGoogleCloudVideointelligenceV1p3beta1TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1TimestampedObject < 3) {
    o.attributes = buildUnnamed7121();
    o.landmarks = buildUnnamed7122();
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox();
    o.timeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1TimestampedObject--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1TimestampedObject(
    api.GoogleCloudVideointelligenceV1p3beta1TimestampedObject o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1TimestampedObject < 3) {
    checkUnnamed7121(o.attributes!);
    checkUnnamed7122(o.landmarks!);
    checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox(
        o.normalizedBoundingBox!);
    unittest.expect(
      o.timeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1TimestampedObject--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1DetectedAttribute>
    buildUnnamed7123() => [
          buildGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(),
          buildGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(),
        ];

void checkUnnamed7123(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1TimestampedObject>
    buildUnnamed7124() => [
          buildGoogleCloudVideointelligenceV1p3beta1TimestampedObject(),
          buildGoogleCloudVideointelligenceV1p3beta1TimestampedObject(),
        ];

void checkUnnamed7124(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1TimestampedObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1TimestampedObject(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1TimestampedObject(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1Track = 0;
api.GoogleCloudVideointelligenceV1p3beta1Track
    buildGoogleCloudVideointelligenceV1p3beta1Track() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1Track();
  buildCounterGoogleCloudVideointelligenceV1p3beta1Track++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1Track < 3) {
    o.attributes = buildUnnamed7123();
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1p3beta1VideoSegment();
    o.timestampedObjects = buildUnnamed7124();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1Track--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1Track(
    api.GoogleCloudVideointelligenceV1p3beta1Track o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1Track++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1Track < 3) {
    checkUnnamed7123(o.attributes!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o.segment!);
    checkUnnamed7124(o.timestampedObjects!);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1Track--;
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress =
    0;
api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress
    buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress();
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress <
      3) {
    o.feature = 'foo';
    o.inputUri = 'foo';
    o.progressPercent = 42;
    o.segment = buildGoogleCloudVideointelligenceV1p3beta1VideoSegment();
    o.startTime = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress(
    api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress <
      3) {
    unittest.expect(
      o.feature!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.progressPercent!,
      unittest.equals(42),
    );
    checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o.segment!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress--;
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1FaceAnnotation>
    buildUnnamed7125() => [
          buildGoogleCloudVideointelligenceV1p3beta1FaceAnnotation(),
          buildGoogleCloudVideointelligenceV1p3beta1FaceAnnotation(),
        ];

void checkUnnamed7125(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1FaceAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1FaceAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation>
    buildUnnamed7126() => [
          buildGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation(),
          buildGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation(),
        ];

void checkUnnamed7126(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation>
    buildUnnamed7127() => [
          buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(),
        ];

void checkUnnamed7127(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation>
    buildUnnamed7128() => [
          buildGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation(),
          buildGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation(),
        ];

void checkUnnamed7128(
    core.List<
            api.GoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation>
    buildUnnamed7129() => [
          buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(),
          buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(),
        ];

void checkUnnamed7129(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation>
    buildUnnamed7130() => [
          buildGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation(),
          buildGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation(),
        ];

void checkUnnamed7130(
    core.List<
            api.GoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation>
    buildUnnamed7131() => [
          buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(),
        ];

void checkUnnamed7131(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation>
    buildUnnamed7132() => [
          buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(),
        ];

void checkUnnamed7132(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoSegment>
    buildUnnamed7133() => [
          buildGoogleCloudVideointelligenceV1p3beta1VideoSegment(),
          buildGoogleCloudVideointelligenceV1p3beta1VideoSegment(),
        ];

void checkUnnamed7133(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation>
    buildUnnamed7134() => [
          buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(),
        ];

void checkUnnamed7134(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation>
    buildUnnamed7135() => [
          buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(),
          buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(),
        ];

void checkUnnamed7135(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1SpeechTranscription>
    buildUnnamed7136() => [
          buildGoogleCloudVideointelligenceV1p3beta1SpeechTranscription(),
          buildGoogleCloudVideointelligenceV1p3beta1SpeechTranscription(),
        ];

void checkUnnamed7136(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1SpeechTranscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1SpeechTranscription(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1SpeechTranscription(o[1]);
}

core.List<api.GoogleCloudVideointelligenceV1p3beta1TextAnnotation>
    buildUnnamed7137() => [
          buildGoogleCloudVideointelligenceV1p3beta1TextAnnotation(),
          buildGoogleCloudVideointelligenceV1p3beta1TextAnnotation(),
        ];

void checkUnnamed7137(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1TextAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1TextAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1TextAnnotation(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults = 0;
api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults
    buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults();
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults <
      3) {
    o.celebrityRecognitionAnnotations =
        buildGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation();
    o.error = buildGoogleRpcStatus();
    o.explicitAnnotation =
        buildGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation();
    o.faceAnnotations = buildUnnamed7125();
    o.faceDetectionAnnotations = buildUnnamed7126();
    o.frameLabelAnnotations = buildUnnamed7127();
    o.inputUri = 'foo';
    o.logoRecognitionAnnotations = buildUnnamed7128();
    o.objectAnnotations = buildUnnamed7129();
    o.personDetectionAnnotations = buildUnnamed7130();
    o.segment = buildGoogleCloudVideointelligenceV1p3beta1VideoSegment();
    o.segmentLabelAnnotations = buildUnnamed7131();
    o.segmentPresenceLabelAnnotations = buildUnnamed7132();
    o.shotAnnotations = buildUnnamed7133();
    o.shotLabelAnnotations = buildUnnamed7134();
    o.shotPresenceLabelAnnotations = buildUnnamed7135();
    o.speechTranscriptions = buildUnnamed7136();
    o.textAnnotations = buildUnnamed7137();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults(
    api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults <
      3) {
    checkGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation(
        o.celebrityRecognitionAnnotations!);
    checkGoogleRpcStatus(o.error!);
    checkGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation(
        o.explicitAnnotation!);
    checkUnnamed7125(o.faceAnnotations!);
    checkUnnamed7126(o.faceDetectionAnnotations!);
    checkUnnamed7127(o.frameLabelAnnotations!);
    unittest.expect(
      o.inputUri!,
      unittest.equals('foo'),
    );
    checkUnnamed7128(o.logoRecognitionAnnotations!);
    checkUnnamed7129(o.objectAnnotations!);
    checkUnnamed7130(o.personDetectionAnnotations!);
    checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o.segment!);
    checkUnnamed7131(o.segmentLabelAnnotations!);
    checkUnnamed7132(o.segmentPresenceLabelAnnotations!);
    checkUnnamed7133(o.shotAnnotations!);
    checkUnnamed7134(o.shotLabelAnnotations!);
    checkUnnamed7135(o.shotPresenceLabelAnnotations!);
    checkUnnamed7136(o.speechTranscriptions!);
    checkUnnamed7137(o.textAnnotations!);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1VideoSegment = 0;
api.GoogleCloudVideointelligenceV1p3beta1VideoSegment
    buildGoogleCloudVideointelligenceV1p3beta1VideoSegment() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1VideoSegment();
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1VideoSegment < 3) {
    o.endTimeOffset = 'foo';
    o.startTimeOffset = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoSegment--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(
    api.GoogleCloudVideointelligenceV1p3beta1VideoSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1VideoSegment < 3) {
    unittest.expect(
      o.endTimeOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTimeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoSegment--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1WordInfo = 0;
api.GoogleCloudVideointelligenceV1p3beta1WordInfo
    buildGoogleCloudVideointelligenceV1p3beta1WordInfo() {
  final o = api.GoogleCloudVideointelligenceV1p3beta1WordInfo();
  buildCounterGoogleCloudVideointelligenceV1p3beta1WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1WordInfo < 3) {
    o.confidence = 42.0;
    o.endTime = 'foo';
    o.speakerTag = 42;
    o.startTime = 'foo';
    o.word = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1WordInfo--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p3beta1WordInfo(
    api.GoogleCloudVideointelligenceV1p3beta1WordInfo o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1WordInfo < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.speakerTag!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.word!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1WordInfo--;
}

core.int buildCounterGoogleLongrunningCancelOperationRequest = 0;
api.GoogleLongrunningCancelOperationRequest
    buildGoogleLongrunningCancelOperationRequest() {
  final o = api.GoogleLongrunningCancelOperationRequest();
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
  return o;
}

void checkGoogleLongrunningCancelOperationRequest(
    api.GoogleLongrunningCancelOperationRequest o) {
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed7138() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed7138(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed7138();
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
    checkUnnamed7138(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed7139() => {
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

void checkUnnamed7139(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed7140() => {
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

void checkUnnamed7140(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed7139();
    o.name = 'foo';
    o.response = buildUnnamed7140();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed7139(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7140(o.response!);
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

core.Map<core.String, core.Object> buildUnnamed7141() => {
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

void checkUnnamed7141(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed7142() => [
      buildUnnamed7141(),
      buildUnnamed7141(),
    ];

void checkUnnamed7142(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7141(o[0]);
  checkUnnamed7141(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed7142();
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
    checkUnnamed7142(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

void main() {
  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1AnnotateVideoProgress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1AnnotateVideoProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1AnnotateVideoProgress.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1AnnotateVideoProgress(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1AnnotateVideoRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1AnnotateVideoRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1AnnotateVideoRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1AnnotateVideoRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1AnnotateVideoResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1AnnotateVideoResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1AnnotateVideoResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1AnnotateVideoResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1DetectedAttribute',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1DetectedAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1DetectedAttribute.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1DetectedAttribute(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1DetectedLandmark',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1DetectedLandmark();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1DetectedLandmark.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1DetectedLandmark(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1Entity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1Entity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1Entity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1Entity(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1ExplicitContentAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1ExplicitContentAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1ExplicitContentAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1ExplicitContentAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1ExplicitContentFrame', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1ExplicitContentFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1ExplicitContentFrame.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1ExplicitContentFrame(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1FaceAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1FaceAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1FaceAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1FaceAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1FaceDetectionAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1FaceDetectionAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1FaceDetectionAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1FaceDetectionAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1FaceDetectionConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1FaceDetectionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1FaceDetectionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1FaceDetectionConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1FaceFrame', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1FaceFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1FaceFrame.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1FaceFrame(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1FaceSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1FaceSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1FaceSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1FaceSegment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1LabelAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1LabelAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1LabelAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1LabelAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1LabelDetectionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1LabelDetectionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1LabelDetectionConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1LabelDetectionConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1LabelFrame', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1LabelFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1LabelFrame.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1LabelFrame(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1LabelSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1LabelSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1LabelSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1LabelSegment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1LogoRecognitionAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1LogoRecognitionAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1LogoRecognitionAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1LogoRecognitionAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1NormalizedBoundingBox', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1NormalizedBoundingBox();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1NormalizedBoundingBox.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1NormalizedBoundingBox(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1NormalizedBoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1NormalizedBoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1NormalizedBoundingPoly.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1NormalizedBoundingPoly(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1NormalizedVertex',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1NormalizedVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1NormalizedVertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1NormalizedVertex(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1ObjectTrackingAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1ObjectTrackingAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1ObjectTrackingAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1ObjectTrackingAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1ObjectTrackingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1ObjectTrackingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1ObjectTrackingConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1ObjectTrackingConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1ObjectTrackingFrame',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1ObjectTrackingFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1ObjectTrackingFrame.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1ObjectTrackingFrame(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1PersonDetectionAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1PersonDetectionAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1PersonDetectionAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1PersonDetectionAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1PersonDetectionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1PersonDetectionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1PersonDetectionConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1PersonDetectionConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1ShotChangeDetectionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1ShotChangeDetectionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1ShotChangeDetectionConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1ShotChangeDetectionConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1SpeechContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1SpeechContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1SpeechContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1SpeechContext(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1SpeechRecognitionAlternative',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1SpeechRecognitionAlternative();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1SpeechRecognitionAlternative
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1SpeechRecognitionAlternative(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1SpeechTranscription',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1SpeechTranscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1SpeechTranscription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1SpeechTranscription(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1SpeechTranscriptionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1SpeechTranscriptionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1SpeechTranscriptionConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1SpeechTranscriptionConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1TextAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1TextAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1TextAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1TextAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1TextDetectionConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1TextDetectionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1TextDetectionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1TextDetectionConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1TextFrame', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1TextFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1TextFrame.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1TextFrame(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1TextSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1TextSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1TextSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1TextSegment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1TimestampedObject',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1TimestampedObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1TimestampedObject.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1TimestampedObject(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1Track', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1Track();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1Track.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1Track(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1VideoAnnotationProgress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1VideoAnnotationProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1VideoAnnotationProgress.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1VideoAnnotationProgress(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1VideoAnnotationResults', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1VideoAnnotationResults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1VideoAnnotationResults.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1VideoAnnotationResults(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1VideoContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1VideoContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1VideoContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1VideoContext(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1VideoSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1VideoSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1VideoSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1VideoSegment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1WordInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1WordInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1WordInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1WordInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2AnnotateVideoProgress',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1beta2AnnotateVideoProgress.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2AnnotateVideoResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1beta2AnnotateVideoResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2DetectedAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2DetectedAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1beta2DetectedAttribute.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2DetectedAttribute(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2DetectedLandmark', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2DetectedLandmark();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1beta2DetectedLandmark.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2DetectedLandmark(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1beta2Entity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2Entity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1beta2Entity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2Entity(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2ExplicitContentFrame', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2ExplicitContentFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1beta2ExplicitContentFrame.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2ExplicitContentFrame(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1beta2FaceAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2FaceAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1beta2FaceAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2FaceAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1beta2FaceFrame', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2FaceFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1beta2FaceFrame.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2FaceFrame(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1beta2FaceSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2FaceSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1beta2FaceSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2FaceSegment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2LabelAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2LabelAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1beta2LabelAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1beta2LabelFrame',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2LabelFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1beta2LabelFrame.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2LabelFrame(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1beta2LabelSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2LabelSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1beta2LabelSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2LabelSegment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2NormalizedBoundingBox',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1beta2NormalizedBoundingBox.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2NormalizedVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1beta2NormalizedVertex.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2NormalizedVertex(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2ObjectTrackingFrame', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1beta2ObjectTrackingFrame.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2SpeechTranscription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2SpeechTranscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1beta2SpeechTranscription.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2SpeechTranscription(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1beta2TextAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2TextAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1beta2TextAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2TextAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1beta2TextFrame', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2TextFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1beta2TextFrame.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2TextFrame(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1beta2TextSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2TextSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1beta2TextSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2TextSegment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2TimestampedObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2TimestampedObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1beta2TimestampedObject.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2TimestampedObject(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1beta2Track', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2Track();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1beta2Track.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2Track(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1beta2VideoAnnotationResults',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1beta2VideoAnnotationResults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1beta2VideoAnnotationResults
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2VideoAnnotationResults(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1beta2VideoSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2VideoSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1beta2VideoSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2VideoSegment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1beta2WordInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1beta2WordInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1beta2WordInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1beta2WordInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1DetectedAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p1beta1DetectedAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p1beta1DetectedAttribute.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1DetectedAttribute(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1DetectedLandmark', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p1beta1DetectedLandmark();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p1beta1DetectedLandmark.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1DetectedLandmark(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p1beta1Entity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p1beta1Entity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p1beta1Entity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1Entity(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1FaceAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p1beta1FaceAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p1beta1FaceAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1FaceAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p1beta1FaceFrame',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p1beta1FaceFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p1beta1FaceFrame.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1FaceFrame(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p1beta1FaceSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p1beta1FaceSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p1beta1FaceSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1FaceSegment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1LabelAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p1beta1LabelFrame',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p1beta1LabelFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p1beta1LabelFrame.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1LabelFrame(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p1beta1LabelSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p1beta1LabelSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p1beta1LabelSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1LabelSegment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p1beta1NormalizedVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p1beta1NormalizedVertex.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1NormalizedVertex(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1SpeechTranscription',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p1beta1SpeechTranscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p1beta1SpeechTranscription.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1SpeechTranscription(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1TextAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p1beta1TextAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p1beta1TextAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1TextAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p1beta1TextFrame',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p1beta1TextFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p1beta1TextFrame.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1TextFrame(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p1beta1TextSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p1beta1TextSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p1beta1TextSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1TextSegment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1TimestampedObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p1beta1TimestampedObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p1beta1TimestampedObject.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1TimestampedObject(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p1beta1Track', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p1beta1Track();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p1beta1Track.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1Track(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p1beta1VideoSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p1beta1VideoSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p1beta1VideoSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p1beta1WordInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p1beta1WordInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p1beta1WordInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p1beta1WordInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1DetectedAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p2beta1DetectedAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p2beta1DetectedAttribute.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1DetectedAttribute(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1DetectedLandmark', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p2beta1DetectedLandmark();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p2beta1DetectedLandmark.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1DetectedLandmark(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p2beta1Entity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p2beta1Entity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p2beta1Entity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1Entity(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1FaceAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p2beta1FaceAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p2beta1FaceAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1FaceAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p2beta1FaceFrame',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p2beta1FaceFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p2beta1FaceFrame.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1FaceFrame(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p2beta1FaceSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p2beta1FaceSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p2beta1FaceSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1FaceSegment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1LabelAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p2beta1LabelFrame',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p2beta1LabelFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p2beta1LabelFrame.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1LabelFrame(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p2beta1LabelSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p2beta1LabelSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p2beta1LabelSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1LabelSegment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p2beta1NormalizedVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p2beta1NormalizedVertex.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1NormalizedVertex(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1SpeechTranscription',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p2beta1SpeechTranscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p2beta1SpeechTranscription.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1SpeechTranscription(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1TextAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p2beta1TextAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p2beta1TextAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1TextAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p2beta1TextFrame',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p2beta1TextFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p2beta1TextFrame.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1TextFrame(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p2beta1TextSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p2beta1TextSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p2beta1TextSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1TextSegment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1TimestampedObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p2beta1TimestampedObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p2beta1TimestampedObject.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1TimestampedObject(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p2beta1Track', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p2beta1Track();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p2beta1Track.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1Track(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p2beta1VideoSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p2beta1VideoSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p2beta1VideoSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p2beta1WordInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p2beta1WordInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p2beta1WordInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p2beta1WordInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p3beta1Celebrity',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1Celebrity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p3beta1Celebrity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1Celebrity(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1CelebrityTrack', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1CelebrityTrack();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1CelebrityTrack.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1CelebrityTrack(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1DetectedAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1DetectedAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1DetectedAttribute.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1DetectedLandmark', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1DetectedLandmark();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1DetectedLandmark.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1DetectedLandmark(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p3beta1Entity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1Entity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p3beta1Entity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1Entity(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1FaceAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1FaceAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1FaceAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1FaceAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p3beta1FaceFrame',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1FaceFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p3beta1FaceFrame.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1FaceFrame(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p3beta1FaceSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1FaceSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p3beta1FaceSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1FaceSegment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1LabelAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p3beta1LabelFrame',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1LabelFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p3beta1LabelFrame.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1LabelFrame(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p3beta1LabelSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1LabelSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p3beta1LabelSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1LabelSegment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1NormalizedVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1NormalizedVertex.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1NormalizedVertex(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1SpeechTranscription',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1SpeechTranscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1SpeechTranscription.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1SpeechTranscription(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1TextAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1TextAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1TextAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1TextAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p3beta1TextFrame',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1TextFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p3beta1TextFrame.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1TextFrame(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p3beta1TextSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1TextSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p3beta1TextSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1TextSegment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1TimestampedObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1TimestampedObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1TimestampedObject.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1TimestampedObject(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p3beta1Track', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1Track();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p3beta1Track.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1Track(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p3beta1VideoSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1VideoSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p3beta1VideoSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVideointelligenceV1p3beta1WordInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVideointelligenceV1p3beta1WordInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVideointelligenceV1p3beta1WordInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVideointelligenceV1p3beta1WordInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningCancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningCancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningCancelOperationRequest(od);
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

  unittest.group('resource-OperationsProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudVideoIntelligenceApi(mock)
          .operations
          .projects
          .locations
          .operations;
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1/operations/'),
        );
        pathOffset += 14;
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
      final res = api.CloudVideoIntelligenceApi(mock)
          .operations
          .projects
          .locations
          .operations;
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1/operations/'),
        );
        pathOffset += 14;
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
      final res = api.CloudVideoIntelligenceApi(mock)
          .operations
          .projects
          .locations
          .operations;
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1/operations/'),
        );
        pathOffset += 14;
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

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudVideoIntelligenceApi(mock).projects.locations.operations;
      final arg_request = buildGoogleLongrunningCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleLongrunningCancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleLongrunningCancelOperationRequest(obj);

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
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudVideoIntelligenceApi(mock).projects.locations.operations;
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

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudVideoIntelligenceApi(mock).projects.locations.operations;
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
      final res =
          api.CloudVideoIntelligenceApi(mock).projects.locations.operations;
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

  unittest.group('resource-VideosResource', () {
    unittest.test('method--annotate', () async {
      final mock = HttpServerMock();
      final res = api.CloudVideoIntelligenceApi(mock).videos;
      final arg_request =
          buildGoogleCloudVideointelligenceV1AnnotateVideoRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudVideointelligenceV1AnnotateVideoRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudVideointelligenceV1AnnotateVideoRequest(obj);

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
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('v1/videos:annotate'),
        );
        pathOffset += 18;

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
      final response = await res.annotate(arg_request, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });
}
