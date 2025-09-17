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

import 'package:googleapis/videointelligence/v1p2beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest =
    0;
api.GoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest
buildGoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest();
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest <
      3) {
    o.features = buildUnnamed0();
    o.inputContent = 'foo';
    o.inputUri = 'foo';
    o.locationId = 'foo';
    o.outputUri = 'foo';
    o.videoContext = buildGoogleCloudVideointelligenceV1p2beta1VideoContext();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest(
  api.GoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest o,
) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest <
      3) {
    checkUnnamed0(o.features!);
    unittest.expect(o.inputContent!, unittest.equals('foo'));
    unittest.expect(o.inputUri!, unittest.equals('foo'));
    unittest.expect(o.locationId!, unittest.equals('foo'));
    unittest.expect(o.outputUri!, unittest.equals('foo'));
    checkGoogleCloudVideointelligenceV1p2beta1VideoContext(o.videoContext!);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest--;
}

core.int
buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentDetectionConfig =
    0;
api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentDetectionConfig
buildGoogleCloudVideointelligenceV1p2beta1ExplicitContentDetectionConfig() {
  final o =
      api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentDetectionConfig <
      3) {
    o.model = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentDetectionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1ExplicitContentDetectionConfig(
  api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentDetectionConfig o,
) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentDetectionConfig <
      3) {
    unittest.expect(o.model!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentDetectionConfig--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionConfig =
    0;
api.GoogleCloudVideointelligenceV1p2beta1FaceDetectionConfig
buildGoogleCloudVideointelligenceV1p2beta1FaceDetectionConfig() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1FaceDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionConfig <
      3) {
    o.includeAttributes = true;
    o.includeBoundingBoxes = true;
    o.model = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1FaceDetectionConfig(
  api.GoogleCloudVideointelligenceV1p2beta1FaceDetectionConfig o,
) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionConfig <
      3) {
    unittest.expect(o.includeAttributes!, unittest.isTrue);
    unittest.expect(o.includeBoundingBoxes!, unittest.isTrue);
    unittest.expect(o.model!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionConfig--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1LabelDetectionConfig =
    0;
api.GoogleCloudVideointelligenceV1p2beta1LabelDetectionConfig
buildGoogleCloudVideointelligenceV1p2beta1LabelDetectionConfig() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1LabelDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1LabelDetectionConfig <
      3) {
    o.frameConfidenceThreshold = 42.0;
    o.labelDetectionMode = 'foo';
    o.model = 'foo';
    o.stationaryCamera = true;
    o.videoConfidenceThreshold = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelDetectionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1LabelDetectionConfig(
  api.GoogleCloudVideointelligenceV1p2beta1LabelDetectionConfig o,
) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1LabelDetectionConfig <
      3) {
    unittest.expect(o.frameConfidenceThreshold!, unittest.equals(42.0));
    unittest.expect(o.labelDetectionMode!, unittest.equals('foo'));
    unittest.expect(o.model!, unittest.equals('foo'));
    unittest.expect(o.stationaryCamera!, unittest.isTrue);
    unittest.expect(o.videoConfidenceThreshold!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelDetectionConfig--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingConfig =
    0;
api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingConfig
buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingConfig() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingConfig();
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingConfig <
      3) {
    o.model = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingConfig(
  api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingConfig o,
) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingConfig <
      3) {
    unittest.expect(o.model!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingConfig--;
}

core.int
buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionConfig = 0;
api.GoogleCloudVideointelligenceV1p2beta1PersonDetectionConfig
buildGoogleCloudVideointelligenceV1p2beta1PersonDetectionConfig() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1PersonDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionConfig <
      3) {
    o.includeAttributes = true;
    o.includeBoundingBoxes = true;
    o.includePoseLandmarks = true;
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1PersonDetectionConfig(
  api.GoogleCloudVideointelligenceV1p2beta1PersonDetectionConfig o,
) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionConfig <
      3) {
    unittest.expect(o.includeAttributes!, unittest.isTrue);
    unittest.expect(o.includeBoundingBoxes!, unittest.isTrue);
    unittest.expect(o.includePoseLandmarks!, unittest.isTrue);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionConfig--;
}

core.int
buildCounterGoogleCloudVideointelligenceV1p2beta1ShotChangeDetectionConfig = 0;
api.GoogleCloudVideointelligenceV1p2beta1ShotChangeDetectionConfig
buildGoogleCloudVideointelligenceV1p2beta1ShotChangeDetectionConfig() {
  final o =
      api.GoogleCloudVideointelligenceV1p2beta1ShotChangeDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1p2beta1ShotChangeDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ShotChangeDetectionConfig <
      3) {
    o.model = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ShotChangeDetectionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1ShotChangeDetectionConfig(
  api.GoogleCloudVideointelligenceV1p2beta1ShotChangeDetectionConfig o,
) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1ShotChangeDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ShotChangeDetectionConfig <
      3) {
    unittest.expect(o.model!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ShotChangeDetectionConfig--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechContext = 0;
api.GoogleCloudVideointelligenceV1p2beta1SpeechContext
buildGoogleCloudVideointelligenceV1p2beta1SpeechContext() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1SpeechContext();
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechContext++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechContext < 3) {
    o.phrases = buildUnnamed1();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechContext--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1SpeechContext(
  api.GoogleCloudVideointelligenceV1p2beta1SpeechContext o,
) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechContext++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechContext < 3) {
    checkUnnamed1(o.phrases!);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechContext--;
}

core.List<core.int> buildUnnamed2() => [42, 42];

void checkUnnamed2(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1SpeechContext>
buildUnnamed3() => [
  buildGoogleCloudVideointelligenceV1p2beta1SpeechContext(),
  buildGoogleCloudVideointelligenceV1p2beta1SpeechContext(),
];

void checkUnnamed3(
  core.List<api.GoogleCloudVideointelligenceV1p2beta1SpeechContext> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1SpeechContext(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1SpeechContext(o[1]);
}

core.int
buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscriptionConfig = 0;
api.GoogleCloudVideointelligenceV1p2beta1SpeechTranscriptionConfig
buildGoogleCloudVideointelligenceV1p2beta1SpeechTranscriptionConfig() {
  final o =
      api.GoogleCloudVideointelligenceV1p2beta1SpeechTranscriptionConfig();
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscriptionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscriptionConfig <
      3) {
    o.audioTracks = buildUnnamed2();
    o.diarizationSpeakerCount = 42;
    o.enableAutomaticPunctuation = true;
    o.enableSpeakerDiarization = true;
    o.enableWordConfidence = true;
    o.filterProfanity = true;
    o.languageCode = 'foo';
    o.maxAlternatives = 42;
    o.speechContexts = buildUnnamed3();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscriptionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1SpeechTranscriptionConfig(
  api.GoogleCloudVideointelligenceV1p2beta1SpeechTranscriptionConfig o,
) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscriptionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscriptionConfig <
      3) {
    checkUnnamed2(o.audioTracks!);
    unittest.expect(o.diarizationSpeakerCount!, unittest.equals(42));
    unittest.expect(o.enableAutomaticPunctuation!, unittest.isTrue);
    unittest.expect(o.enableSpeakerDiarization!, unittest.isTrue);
    unittest.expect(o.enableWordConfidence!, unittest.isTrue);
    unittest.expect(o.filterProfanity!, unittest.isTrue);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.maxAlternatives!, unittest.equals(42));
    checkUnnamed3(o.speechContexts!);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscriptionConfig--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1TextDetectionConfig =
    0;
api.GoogleCloudVideointelligenceV1p2beta1TextDetectionConfig
buildGoogleCloudVideointelligenceV1p2beta1TextDetectionConfig() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1TextDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1TextDetectionConfig <
      3) {
    o.languageHints = buildUnnamed4();
    o.model = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextDetectionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1TextDetectionConfig(
  api.GoogleCloudVideointelligenceV1p2beta1TextDetectionConfig o,
) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1TextDetectionConfig <
      3) {
    checkUnnamed4(o.languageHints!);
    unittest.expect(o.model!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextDetectionConfig--;
}

core.List<api.GoogleCloudVideointelligenceV1p2beta1VideoSegment>
buildUnnamed5() => [
  buildGoogleCloudVideointelligenceV1p2beta1VideoSegment(),
  buildGoogleCloudVideointelligenceV1p2beta1VideoSegment(),
];

void checkUnnamed5(
  core.List<api.GoogleCloudVideointelligenceV1p2beta1VideoSegment> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1VideoContext = 0;
api.GoogleCloudVideointelligenceV1p2beta1VideoContext
buildGoogleCloudVideointelligenceV1p2beta1VideoContext() {
  final o = api.GoogleCloudVideointelligenceV1p2beta1VideoContext();
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoContext++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1VideoContext < 3) {
    o.explicitContentDetectionConfig =
        buildGoogleCloudVideointelligenceV1p2beta1ExplicitContentDetectionConfig();
    o.faceDetectionConfig =
        buildGoogleCloudVideointelligenceV1p2beta1FaceDetectionConfig();
    o.labelDetectionConfig =
        buildGoogleCloudVideointelligenceV1p2beta1LabelDetectionConfig();
    o.objectTrackingConfig =
        buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingConfig();
    o.personDetectionConfig =
        buildGoogleCloudVideointelligenceV1p2beta1PersonDetectionConfig();
    o.segments = buildUnnamed5();
    o.shotChangeDetectionConfig =
        buildGoogleCloudVideointelligenceV1p2beta1ShotChangeDetectionConfig();
    o.speechTranscriptionConfig =
        buildGoogleCloudVideointelligenceV1p2beta1SpeechTranscriptionConfig();
    o.textDetectionConfig =
        buildGoogleCloudVideointelligenceV1p2beta1TextDetectionConfig();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoContext--;
  return o;
}

void checkGoogleCloudVideointelligenceV1p2beta1VideoContext(
  api.GoogleCloudVideointelligenceV1p2beta1VideoContext o,
) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoContext++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1VideoContext < 3) {
    checkGoogleCloudVideointelligenceV1p2beta1ExplicitContentDetectionConfig(
      o.explicitContentDetectionConfig!,
    );
    checkGoogleCloudVideointelligenceV1p2beta1FaceDetectionConfig(
      o.faceDetectionConfig!,
    );
    checkGoogleCloudVideointelligenceV1p2beta1LabelDetectionConfig(
      o.labelDetectionConfig!,
    );
    checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingConfig(
      o.objectTrackingConfig!,
    );
    checkGoogleCloudVideointelligenceV1p2beta1PersonDetectionConfig(
      o.personDetectionConfig!,
    );
    checkUnnamed5(o.segments!);
    checkGoogleCloudVideointelligenceV1p2beta1ShotChangeDetectionConfig(
      o.shotChangeDetectionConfig!,
    );
    checkGoogleCloudVideointelligenceV1p2beta1SpeechTranscriptionConfig(
      o.speechTranscriptionConfig!,
    );
    checkGoogleCloudVideointelligenceV1p2beta1TextDetectionConfig(
      o.textDetectionConfig!,
    );
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoContext--;
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
  api.GoogleCloudVideointelligenceV1p2beta1VideoSegment o,
) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1VideoSegment < 3) {
    unittest.expect(o.endTimeOffset!, unittest.equals('foo'));
    unittest.expect(o.startTimeOffset!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoSegment--;
}

core.Map<core.String, core.Object?> buildUnnamed6() => {
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

void checkUnnamed6(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed7() => {
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

void checkUnnamed7(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed6();
    o.name = 'foo';
    o.response = buildUnnamed7();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed6(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed7(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed8() => {
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

void checkUnnamed8(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed9() => [
  buildUnnamed8(),
  buildUnnamed8(),
];

void checkUnnamed9(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8(o[0]);
  checkUnnamed8(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed9();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed9(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

void main() {
  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1p2beta1ExplicitContentDetectionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVideointelligenceV1p2beta1ExplicitContentDetectionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1p2beta1ExplicitContentDetectionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1p2beta1ExplicitContentDetectionConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1p2beta1FaceDetectionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVideointelligenceV1p2beta1FaceDetectionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1p2beta1FaceDetectionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1p2beta1FaceDetectionConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1p2beta1LabelDetectionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVideointelligenceV1p2beta1LabelDetectionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1p2beta1LabelDetectionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1p2beta1LabelDetectionConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1p2beta1ObjectTrackingConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1p2beta1ObjectTrackingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1p2beta1PersonDetectionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVideointelligenceV1p2beta1PersonDetectionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1p2beta1PersonDetectionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1p2beta1PersonDetectionConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1p2beta1ShotChangeDetectionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVideointelligenceV1p2beta1ShotChangeDetectionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1p2beta1ShotChangeDetectionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1p2beta1ShotChangeDetectionConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1p2beta1SpeechContext',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVideointelligenceV1p2beta1SpeechContext();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1p2beta1SpeechContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1p2beta1SpeechContext(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1p2beta1SpeechTranscriptionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVideointelligenceV1p2beta1SpeechTranscriptionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1p2beta1SpeechTranscriptionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1p2beta1SpeechTranscriptionConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1p2beta1TextDetectionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVideointelligenceV1p2beta1TextDetectionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1p2beta1TextDetectionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1p2beta1TextDetectionConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1p2beta1VideoContext',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVideointelligenceV1p2beta1VideoContext();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1p2beta1VideoContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1p2beta1VideoContext(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1p2beta1VideoSegment',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVideointelligenceV1p2beta1VideoSegment();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1p2beta1VideoSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(od);
      });
    },
  );

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

  unittest.group('resource-VideosResource', () {
    unittest.test('method--annotate', () async {
      final mock = HttpServerMock();
      final res = api.CloudVideoIntelligenceApi(mock).videos;
      final arg_request =
          buildGoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudVideointelligenceV1p2beta1AnnotateVideoRequest(obj);

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
            unittest.equals('v1p2beta1/videos:annotate'),
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.annotate(arg_request, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });
}
