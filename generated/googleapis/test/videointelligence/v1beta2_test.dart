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

import 'package:googleapis/videointelligence/v1beta2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoRequest =
    0;
api.GoogleCloudVideointelligenceV1beta2AnnotateVideoRequest
buildGoogleCloudVideointelligenceV1beta2AnnotateVideoRequest() {
  final o = api.GoogleCloudVideointelligenceV1beta2AnnotateVideoRequest();
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoRequest++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoRequest < 3) {
    o.features = buildUnnamed0();
    o.inputContent = 'foo';
    o.inputUri = 'foo';
    o.locationId = 'foo';
    o.outputUri = 'foo';
    o.videoContext = buildGoogleCloudVideointelligenceV1beta2VideoContext();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoRequest--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2AnnotateVideoRequest(
  api.GoogleCloudVideointelligenceV1beta2AnnotateVideoRequest o,
) {
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoRequest++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoRequest < 3) {
    checkUnnamed0(o.features!);
    unittest.expect(o.inputContent!, unittest.equals('foo'));
    unittest.expect(o.inputUri!, unittest.equals('foo'));
    unittest.expect(o.locationId!, unittest.equals('foo'));
    unittest.expect(o.outputUri!, unittest.equals('foo'));
    checkGoogleCloudVideointelligenceV1beta2VideoContext(o.videoContext!);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoRequest--;
}

core.int
buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig =
    0;
api.GoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig
buildGoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig() {
  final o =
      api.GoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig <
      3) {
    o.model = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig(
  api.GoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig o,
) {
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig <
      3) {
    unittest.expect(o.model!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionConfig = 0;
api.GoogleCloudVideointelligenceV1beta2FaceDetectionConfig
buildGoogleCloudVideointelligenceV1beta2FaceDetectionConfig() {
  final o = api.GoogleCloudVideointelligenceV1beta2FaceDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionConfig < 3) {
    o.includeAttributes = true;
    o.includeBoundingBoxes = true;
    o.model = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2FaceDetectionConfig(
  api.GoogleCloudVideointelligenceV1beta2FaceDetectionConfig o,
) {
  buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionConfig < 3) {
    unittest.expect(o.includeAttributes!, unittest.isTrue);
    unittest.expect(o.includeBoundingBoxes!, unittest.isTrue);
    unittest.expect(o.model!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionConfig--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2LabelDetectionConfig =
    0;
api.GoogleCloudVideointelligenceV1beta2LabelDetectionConfig
buildGoogleCloudVideointelligenceV1beta2LabelDetectionConfig() {
  final o = api.GoogleCloudVideointelligenceV1beta2LabelDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1beta2LabelDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2LabelDetectionConfig < 3) {
    o.frameConfidenceThreshold = 42.0;
    o.labelDetectionMode = 'foo';
    o.model = 'foo';
    o.stationaryCamera = true;
    o.videoConfidenceThreshold = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1beta2LabelDetectionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2LabelDetectionConfig(
  api.GoogleCloudVideointelligenceV1beta2LabelDetectionConfig o,
) {
  buildCounterGoogleCloudVideointelligenceV1beta2LabelDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2LabelDetectionConfig < 3) {
    unittest.expect(o.frameConfidenceThreshold!, unittest.equals(42.0));
    unittest.expect(o.labelDetectionMode!, unittest.equals('foo'));
    unittest.expect(o.model!, unittest.equals('foo'));
    unittest.expect(o.stationaryCamera!, unittest.isTrue);
    unittest.expect(o.videoConfidenceThreshold!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2LabelDetectionConfig--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingConfig =
    0;
api.GoogleCloudVideointelligenceV1beta2ObjectTrackingConfig
buildGoogleCloudVideointelligenceV1beta2ObjectTrackingConfig() {
  final o = api.GoogleCloudVideointelligenceV1beta2ObjectTrackingConfig();
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingConfig < 3) {
    o.model = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2ObjectTrackingConfig(
  api.GoogleCloudVideointelligenceV1beta2ObjectTrackingConfig o,
) {
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingConfig < 3) {
    unittest.expect(o.model!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingConfig--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionConfig =
    0;
api.GoogleCloudVideointelligenceV1beta2PersonDetectionConfig
buildGoogleCloudVideointelligenceV1beta2PersonDetectionConfig() {
  final o = api.GoogleCloudVideointelligenceV1beta2PersonDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionConfig <
      3) {
    o.includeAttributes = true;
    o.includeBoundingBoxes = true;
    o.includePoseLandmarks = true;
  }
  buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2PersonDetectionConfig(
  api.GoogleCloudVideointelligenceV1beta2PersonDetectionConfig o,
) {
  buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionConfig <
      3) {
    unittest.expect(o.includeAttributes!, unittest.isTrue);
    unittest.expect(o.includeBoundingBoxes!, unittest.isTrue);
    unittest.expect(o.includePoseLandmarks!, unittest.isTrue);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionConfig--;
}

core.int
buildCounterGoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig = 0;
api.GoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig
buildGoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig() {
  final o = api.GoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig <
      3) {
    o.model = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig(
  api.GoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig o,
) {
  buildCounterGoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig <
      3) {
    unittest.expect(o.model!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2SpeechContext = 0;
api.GoogleCloudVideointelligenceV1beta2SpeechContext
buildGoogleCloudVideointelligenceV1beta2SpeechContext() {
  final o = api.GoogleCloudVideointelligenceV1beta2SpeechContext();
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechContext++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2SpeechContext < 3) {
    o.phrases = buildUnnamed1();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechContext--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2SpeechContext(
  api.GoogleCloudVideointelligenceV1beta2SpeechContext o,
) {
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechContext++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2SpeechContext < 3) {
    checkUnnamed1(o.phrases!);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechContext--;
}

core.List<core.int> buildUnnamed2() => [42, 42];

void checkUnnamed2(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.List<api.GoogleCloudVideointelligenceV1beta2SpeechContext>
buildUnnamed3() => [
  buildGoogleCloudVideointelligenceV1beta2SpeechContext(),
  buildGoogleCloudVideointelligenceV1beta2SpeechContext(),
];

void checkUnnamed3(
  core.List<api.GoogleCloudVideointelligenceV1beta2SpeechContext> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2SpeechContext(o[0]);
  checkGoogleCloudVideointelligenceV1beta2SpeechContext(o[1]);
}

core.int
buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig = 0;
api.GoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig
buildGoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig() {
  final o = api.GoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig();
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig <
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
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig(
  api.GoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig o,
) {
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig <
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
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2TextDetectionConfig = 0;
api.GoogleCloudVideointelligenceV1beta2TextDetectionConfig
buildGoogleCloudVideointelligenceV1beta2TextDetectionConfig() {
  final o = api.GoogleCloudVideointelligenceV1beta2TextDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1beta2TextDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2TextDetectionConfig < 3) {
    o.languageHints = buildUnnamed4();
    o.model = 'foo';
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TextDetectionConfig--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2TextDetectionConfig(
  api.GoogleCloudVideointelligenceV1beta2TextDetectionConfig o,
) {
  buildCounterGoogleCloudVideointelligenceV1beta2TextDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2TextDetectionConfig < 3) {
    checkUnnamed4(o.languageHints!);
    unittest.expect(o.model!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TextDetectionConfig--;
}

core.List<api.GoogleCloudVideointelligenceV1beta2VideoSegment>
buildUnnamed5() => [
  buildGoogleCloudVideointelligenceV1beta2VideoSegment(),
  buildGoogleCloudVideointelligenceV1beta2VideoSegment(),
];

void checkUnnamed5(
  core.List<api.GoogleCloudVideointelligenceV1beta2VideoSegment> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1beta2VideoSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2VideoContext = 0;
api.GoogleCloudVideointelligenceV1beta2VideoContext
buildGoogleCloudVideointelligenceV1beta2VideoContext() {
  final o = api.GoogleCloudVideointelligenceV1beta2VideoContext();
  buildCounterGoogleCloudVideointelligenceV1beta2VideoContext++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2VideoContext < 3) {
    o.explicitContentDetectionConfig =
        buildGoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig();
    o.faceDetectionConfig =
        buildGoogleCloudVideointelligenceV1beta2FaceDetectionConfig();
    o.labelDetectionConfig =
        buildGoogleCloudVideointelligenceV1beta2LabelDetectionConfig();
    o.objectTrackingConfig =
        buildGoogleCloudVideointelligenceV1beta2ObjectTrackingConfig();
    o.personDetectionConfig =
        buildGoogleCloudVideointelligenceV1beta2PersonDetectionConfig();
    o.segments = buildUnnamed5();
    o.shotChangeDetectionConfig =
        buildGoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig();
    o.speechTranscriptionConfig =
        buildGoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig();
    o.textDetectionConfig =
        buildGoogleCloudVideointelligenceV1beta2TextDetectionConfig();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2VideoContext--;
  return o;
}

void checkGoogleCloudVideointelligenceV1beta2VideoContext(
  api.GoogleCloudVideointelligenceV1beta2VideoContext o,
) {
  buildCounterGoogleCloudVideointelligenceV1beta2VideoContext++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2VideoContext < 3) {
    checkGoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig(
      o.explicitContentDetectionConfig!,
    );
    checkGoogleCloudVideointelligenceV1beta2FaceDetectionConfig(
      o.faceDetectionConfig!,
    );
    checkGoogleCloudVideointelligenceV1beta2LabelDetectionConfig(
      o.labelDetectionConfig!,
    );
    checkGoogleCloudVideointelligenceV1beta2ObjectTrackingConfig(
      o.objectTrackingConfig!,
    );
    checkGoogleCloudVideointelligenceV1beta2PersonDetectionConfig(
      o.personDetectionConfig!,
    );
    checkUnnamed5(o.segments!);
    checkGoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig(
      o.shotChangeDetectionConfig!,
    );
    checkGoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig(
      o.speechTranscriptionConfig!,
    );
    checkGoogleCloudVideointelligenceV1beta2TextDetectionConfig(
      o.textDetectionConfig!,
    );
  }
  buildCounterGoogleCloudVideointelligenceV1beta2VideoContext--;
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
  api.GoogleCloudVideointelligenceV1beta2VideoSegment o,
) {
  buildCounterGoogleCloudVideointelligenceV1beta2VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2VideoSegment < 3) {
    unittest.expect(o.endTimeOffset!, unittest.equals('foo'));
    unittest.expect(o.startTimeOffset!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2VideoSegment--;
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
    'obj-schema-GoogleCloudVideointelligenceV1beta2AnnotateVideoRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVideointelligenceV1beta2AnnotateVideoRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1beta2AnnotateVideoRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1beta2AnnotateVideoRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1beta2FaceDetectionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVideointelligenceV1beta2FaceDetectionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1beta2FaceDetectionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1beta2FaceDetectionConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1beta2LabelDetectionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVideointelligenceV1beta2LabelDetectionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1beta2LabelDetectionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1beta2LabelDetectionConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1beta2ObjectTrackingConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVideointelligenceV1beta2ObjectTrackingConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1beta2ObjectTrackingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1beta2ObjectTrackingConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1beta2PersonDetectionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVideointelligenceV1beta2PersonDetectionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1beta2PersonDetectionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1beta2PersonDetectionConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1beta2SpeechContext',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVideointelligenceV1beta2SpeechContext();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1beta2SpeechContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1beta2SpeechContext(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1beta2TextDetectionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVideointelligenceV1beta2TextDetectionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVideointelligenceV1beta2TextDetectionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1beta2TextDetectionConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1beta2VideoContext',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVideointelligenceV1beta2VideoContext();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudVideointelligenceV1beta2VideoContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1beta2VideoContext(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVideointelligenceV1beta2VideoSegment',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVideointelligenceV1beta2VideoSegment();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudVideointelligenceV1beta2VideoSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVideointelligenceV1beta2VideoSegment(od);
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
          buildGoogleCloudVideointelligenceV1beta2AnnotateVideoRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudVideointelligenceV1beta2AnnotateVideoRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudVideointelligenceV1beta2AnnotateVideoRequest(obj);

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
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('v1beta2/videos:annotate'),
          );
          pathOffset += 23;

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
