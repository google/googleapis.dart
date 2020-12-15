library googleapis.videointelligence.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/videointelligence/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed1936() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1VideoAnnotationProgress>();
  o.add(buildGoogleCloudVideointelligenceV1VideoAnnotationProgress());
  o.add(buildGoogleCloudVideointelligenceV1VideoAnnotationProgress());
  return o;
}

checkUnnamed1936(
    core.List<api.GoogleCloudVideointelligenceV1VideoAnnotationProgress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1VideoAnnotationProgress(o[0]);
  checkGoogleCloudVideointelligenceV1VideoAnnotationProgress(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress = 0;
buildGoogleCloudVideointelligenceV1AnnotateVideoProgress() {
  var o = new api.GoogleCloudVideointelligenceV1AnnotateVideoProgress();
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress < 3) {
    o.annotationProgress = buildUnnamed1936();
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1AnnotateVideoProgress(
    api.GoogleCloudVideointelligenceV1AnnotateVideoProgress o) {
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress < 3) {
    checkUnnamed1936(o.annotationProgress);
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress--;
}

buildUnnamed1937() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1937(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudVideointelligenceV1AnnotateVideoRequest = 0;
buildGoogleCloudVideointelligenceV1AnnotateVideoRequest() {
  var o = new api.GoogleCloudVideointelligenceV1AnnotateVideoRequest();
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoRequest++;
  if (buildCounterGoogleCloudVideointelligenceV1AnnotateVideoRequest < 3) {
    o.features = buildUnnamed1937();
    o.inputContent = "foo";
    o.inputUri = "foo";
    o.locationId = "foo";
    o.outputUri = "foo";
    o.videoContext = buildGoogleCloudVideointelligenceV1VideoContext();
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoRequest--;
  return o;
}

checkGoogleCloudVideointelligenceV1AnnotateVideoRequest(
    api.GoogleCloudVideointelligenceV1AnnotateVideoRequest o) {
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoRequest++;
  if (buildCounterGoogleCloudVideointelligenceV1AnnotateVideoRequest < 3) {
    checkUnnamed1937(o.features);
    unittest.expect(o.inputContent, unittest.equals('foo'));
    unittest.expect(o.inputUri, unittest.equals('foo'));
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.outputUri, unittest.equals('foo'));
    checkGoogleCloudVideointelligenceV1VideoContext(o.videoContext);
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoRequest--;
}

buildUnnamed1938() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1VideoAnnotationResults>();
  o.add(buildGoogleCloudVideointelligenceV1VideoAnnotationResults());
  o.add(buildGoogleCloudVideointelligenceV1VideoAnnotationResults());
  return o;
}

checkUnnamed1938(
    core.List<api.GoogleCloudVideointelligenceV1VideoAnnotationResults> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1VideoAnnotationResults(o[0]);
  checkGoogleCloudVideointelligenceV1VideoAnnotationResults(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse = 0;
buildGoogleCloudVideointelligenceV1AnnotateVideoResponse() {
  var o = new api.GoogleCloudVideointelligenceV1AnnotateVideoResponse();
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse < 3) {
    o.annotationResults = buildUnnamed1938();
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse--;
  return o;
}

checkGoogleCloudVideointelligenceV1AnnotateVideoResponse(
    api.GoogleCloudVideointelligenceV1AnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse < 3) {
    checkUnnamed1938(o.annotationResults);
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse--;
}

core.int buildCounterGoogleCloudVideointelligenceV1DetectedAttribute = 0;
buildGoogleCloudVideointelligenceV1DetectedAttribute() {
  var o = new api.GoogleCloudVideointelligenceV1DetectedAttribute();
  buildCounterGoogleCloudVideointelligenceV1DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1DetectedAttribute < 3) {
    o.confidence = 42.0;
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1DetectedAttribute--;
  return o;
}

checkGoogleCloudVideointelligenceV1DetectedAttribute(
    api.GoogleCloudVideointelligenceV1DetectedAttribute o) {
  buildCounterGoogleCloudVideointelligenceV1DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1DetectedAttribute < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1DetectedAttribute--;
}

core.int buildCounterGoogleCloudVideointelligenceV1DetectedLandmark = 0;
buildGoogleCloudVideointelligenceV1DetectedLandmark() {
  var o = new api.GoogleCloudVideointelligenceV1DetectedLandmark();
  buildCounterGoogleCloudVideointelligenceV1DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1DetectedLandmark < 3) {
    o.confidence = 42.0;
    o.name = "foo";
    o.point = buildGoogleCloudVideointelligenceV1NormalizedVertex();
  }
  buildCounterGoogleCloudVideointelligenceV1DetectedLandmark--;
  return o;
}

checkGoogleCloudVideointelligenceV1DetectedLandmark(
    api.GoogleCloudVideointelligenceV1DetectedLandmark o) {
  buildCounterGoogleCloudVideointelligenceV1DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1DetectedLandmark < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudVideointelligenceV1NormalizedVertex(o.point);
  }
  buildCounterGoogleCloudVideointelligenceV1DetectedLandmark--;
}

core.int buildCounterGoogleCloudVideointelligenceV1Entity = 0;
buildGoogleCloudVideointelligenceV1Entity() {
  var o = new api.GoogleCloudVideointelligenceV1Entity();
  buildCounterGoogleCloudVideointelligenceV1Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1Entity < 3) {
    o.description = "foo";
    o.entityId = "foo";
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1Entity--;
  return o;
}

checkGoogleCloudVideointelligenceV1Entity(
    api.GoogleCloudVideointelligenceV1Entity o) {
  buildCounterGoogleCloudVideointelligenceV1Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1Entity < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.entityId, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1Entity--;
}

buildUnnamed1939() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1ExplicitContentFrame>();
  o.add(buildGoogleCloudVideointelligenceV1ExplicitContentFrame());
  o.add(buildGoogleCloudVideointelligenceV1ExplicitContentFrame());
  return o;
}

checkUnnamed1939(
    core.List<api.GoogleCloudVideointelligenceV1ExplicitContentFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1ExplicitContentFrame(o[0]);
  checkGoogleCloudVideointelligenceV1ExplicitContentFrame(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1ExplicitContentAnnotation =
    0;
buildGoogleCloudVideointelligenceV1ExplicitContentAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1ExplicitContentAnnotation();
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1ExplicitContentAnnotation < 3) {
    o.frames = buildUnnamed1939();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1ExplicitContentAnnotation(
    api.GoogleCloudVideointelligenceV1ExplicitContentAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1ExplicitContentAnnotation < 3) {
    checkUnnamed1939(o.frames);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentAnnotation--;
}

core.int
    buildCounterGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig =
    0;
buildGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig() {
  var o =
      new api.GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig <
      3) {
    o.model = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig--;
  return o;
}

checkGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig(
    api.GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig o) {
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig <
      3) {
    unittest.expect(o.model, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig--;
}

core.int buildCounterGoogleCloudVideointelligenceV1ExplicitContentFrame = 0;
buildGoogleCloudVideointelligenceV1ExplicitContentFrame() {
  var o = new api.GoogleCloudVideointelligenceV1ExplicitContentFrame();
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1ExplicitContentFrame < 3) {
    o.pornographyLikelihood = "foo";
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1ExplicitContentFrame(
    api.GoogleCloudVideointelligenceV1ExplicitContentFrame o) {
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1ExplicitContentFrame < 3) {
    unittest.expect(o.pornographyLikelihood, unittest.equals('foo'));
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentFrame--;
}

buildUnnamed1940() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1FaceFrame>();
  o.add(buildGoogleCloudVideointelligenceV1FaceFrame());
  o.add(buildGoogleCloudVideointelligenceV1FaceFrame());
  return o;
}

checkUnnamed1940(core.List<api.GoogleCloudVideointelligenceV1FaceFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1FaceFrame(o[0]);
  checkGoogleCloudVideointelligenceV1FaceFrame(o[1]);
}

buildUnnamed1941() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1FaceSegment>();
  o.add(buildGoogleCloudVideointelligenceV1FaceSegment());
  o.add(buildGoogleCloudVideointelligenceV1FaceSegment());
  return o;
}

checkUnnamed1941(core.List<api.GoogleCloudVideointelligenceV1FaceSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1FaceSegment(o[0]);
  checkGoogleCloudVideointelligenceV1FaceSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1FaceAnnotation = 0;
buildGoogleCloudVideointelligenceV1FaceAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1FaceAnnotation();
  buildCounterGoogleCloudVideointelligenceV1FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceAnnotation < 3) {
    o.frames = buildUnnamed1940();
    o.segments = buildUnnamed1941();
    o.thumbnail = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1FaceAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1FaceAnnotation(
    api.GoogleCloudVideointelligenceV1FaceAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceAnnotation < 3) {
    checkUnnamed1940(o.frames);
    checkUnnamed1941(o.segments);
    unittest.expect(o.thumbnail, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1FaceAnnotation--;
}

buildUnnamed1942() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1Track>();
  o.add(buildGoogleCloudVideointelligenceV1Track());
  o.add(buildGoogleCloudVideointelligenceV1Track());
  return o;
}

checkUnnamed1942(core.List<api.GoogleCloudVideointelligenceV1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1Track(o[0]);
  checkGoogleCloudVideointelligenceV1Track(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1FaceDetectionAnnotation = 0;
buildGoogleCloudVideointelligenceV1FaceDetectionAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1FaceDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceDetectionAnnotation < 3) {
    o.thumbnail = "foo";
    o.tracks = buildUnnamed1942();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1FaceDetectionAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1FaceDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1FaceDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceDetectionAnnotation < 3) {
    unittest.expect(o.thumbnail, unittest.equals('foo'));
    checkUnnamed1942(o.tracks);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1FaceDetectionAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1FaceDetectionConfig = 0;
buildGoogleCloudVideointelligenceV1FaceDetectionConfig() {
  var o = new api.GoogleCloudVideointelligenceV1FaceDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1FaceDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceDetectionConfig < 3) {
    o.includeAttributes = true;
    o.includeBoundingBoxes = true;
    o.model = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1FaceDetectionConfig--;
  return o;
}

checkGoogleCloudVideointelligenceV1FaceDetectionConfig(
    api.GoogleCloudVideointelligenceV1FaceDetectionConfig o) {
  buildCounterGoogleCloudVideointelligenceV1FaceDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceDetectionConfig < 3) {
    unittest.expect(o.includeAttributes, unittest.isTrue);
    unittest.expect(o.includeBoundingBoxes, unittest.isTrue);
    unittest.expect(o.model, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1FaceDetectionConfig--;
}

buildUnnamed1943() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1NormalizedBoundingBox>();
  o.add(buildGoogleCloudVideointelligenceV1NormalizedBoundingBox());
  o.add(buildGoogleCloudVideointelligenceV1NormalizedBoundingBox());
  return o;
}

checkUnnamed1943(
    core.List<api.GoogleCloudVideointelligenceV1NormalizedBoundingBox> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1NormalizedBoundingBox(o[0]);
  checkGoogleCloudVideointelligenceV1NormalizedBoundingBox(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1FaceFrame = 0;
buildGoogleCloudVideointelligenceV1FaceFrame() {
  var o = new api.GoogleCloudVideointelligenceV1FaceFrame();
  buildCounterGoogleCloudVideointelligenceV1FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceFrame < 3) {
    o.normalizedBoundingBoxes = buildUnnamed1943();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1FaceFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1FaceFrame(
    api.GoogleCloudVideointelligenceV1FaceFrame o) {
  buildCounterGoogleCloudVideointelligenceV1FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceFrame < 3) {
    checkUnnamed1943(o.normalizedBoundingBoxes);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1FaceFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1FaceSegment = 0;
buildGoogleCloudVideointelligenceV1FaceSegment() {
  var o = new api.GoogleCloudVideointelligenceV1FaceSegment();
  buildCounterGoogleCloudVideointelligenceV1FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceSegment < 3) {
    o.segment = buildGoogleCloudVideointelligenceV1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1FaceSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1FaceSegment(
    api.GoogleCloudVideointelligenceV1FaceSegment o) {
  buildCounterGoogleCloudVideointelligenceV1FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1FaceSegment < 3) {
    checkGoogleCloudVideointelligenceV1VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1FaceSegment--;
}

buildUnnamed1944() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1Entity>();
  o.add(buildGoogleCloudVideointelligenceV1Entity());
  o.add(buildGoogleCloudVideointelligenceV1Entity());
  return o;
}

checkUnnamed1944(core.List<api.GoogleCloudVideointelligenceV1Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1Entity(o[0]);
  checkGoogleCloudVideointelligenceV1Entity(o[1]);
}

buildUnnamed1945() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1LabelFrame>();
  o.add(buildGoogleCloudVideointelligenceV1LabelFrame());
  o.add(buildGoogleCloudVideointelligenceV1LabelFrame());
  return o;
}

checkUnnamed1945(core.List<api.GoogleCloudVideointelligenceV1LabelFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelFrame(o[0]);
  checkGoogleCloudVideointelligenceV1LabelFrame(o[1]);
}

buildUnnamed1946() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1LabelSegment>();
  o.add(buildGoogleCloudVideointelligenceV1LabelSegment());
  o.add(buildGoogleCloudVideointelligenceV1LabelSegment());
  return o;
}

checkUnnamed1946(core.List<api.GoogleCloudVideointelligenceV1LabelSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelSegment(o[0]);
  checkGoogleCloudVideointelligenceV1LabelSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1LabelAnnotation = 0;
buildGoogleCloudVideointelligenceV1LabelAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1LabelAnnotation();
  buildCounterGoogleCloudVideointelligenceV1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelAnnotation < 3) {
    o.categoryEntities = buildUnnamed1944();
    o.entity = buildGoogleCloudVideointelligenceV1Entity();
    o.frames = buildUnnamed1945();
    o.segments = buildUnnamed1946();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1LabelAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1LabelAnnotation(
    api.GoogleCloudVideointelligenceV1LabelAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelAnnotation < 3) {
    checkUnnamed1944(o.categoryEntities);
    checkGoogleCloudVideointelligenceV1Entity(o.entity);
    checkUnnamed1945(o.frames);
    checkUnnamed1946(o.segments);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1LabelAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1LabelDetectionConfig = 0;
buildGoogleCloudVideointelligenceV1LabelDetectionConfig() {
  var o = new api.GoogleCloudVideointelligenceV1LabelDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1LabelDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelDetectionConfig < 3) {
    o.frameConfidenceThreshold = 42.0;
    o.labelDetectionMode = "foo";
    o.model = "foo";
    o.stationaryCamera = true;
    o.videoConfidenceThreshold = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1LabelDetectionConfig--;
  return o;
}

checkGoogleCloudVideointelligenceV1LabelDetectionConfig(
    api.GoogleCloudVideointelligenceV1LabelDetectionConfig o) {
  buildCounterGoogleCloudVideointelligenceV1LabelDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelDetectionConfig < 3) {
    unittest.expect(o.frameConfidenceThreshold, unittest.equals(42.0));
    unittest.expect(o.labelDetectionMode, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.stationaryCamera, unittest.isTrue);
    unittest.expect(o.videoConfidenceThreshold, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVideointelligenceV1LabelDetectionConfig--;
}

core.int buildCounterGoogleCloudVideointelligenceV1LabelFrame = 0;
buildGoogleCloudVideointelligenceV1LabelFrame() {
  var o = new api.GoogleCloudVideointelligenceV1LabelFrame();
  buildCounterGoogleCloudVideointelligenceV1LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelFrame < 3) {
    o.confidence = 42.0;
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1LabelFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1LabelFrame(
    api.GoogleCloudVideointelligenceV1LabelFrame o) {
  buildCounterGoogleCloudVideointelligenceV1LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelFrame < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1LabelFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1LabelSegment = 0;
buildGoogleCloudVideointelligenceV1LabelSegment() {
  var o = new api.GoogleCloudVideointelligenceV1LabelSegment();
  buildCounterGoogleCloudVideointelligenceV1LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelSegment < 3) {
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1LabelSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1LabelSegment(
    api.GoogleCloudVideointelligenceV1LabelSegment o) {
  buildCounterGoogleCloudVideointelligenceV1LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelSegment < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVideointelligenceV1VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1LabelSegment--;
}

buildUnnamed1947() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1VideoSegment());
  return o;
}

checkUnnamed1947(core.List<api.GoogleCloudVideointelligenceV1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1VideoSegment(o[1]);
}

buildUnnamed1948() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1Track>();
  o.add(buildGoogleCloudVideointelligenceV1Track());
  o.add(buildGoogleCloudVideointelligenceV1Track());
  return o;
}

checkUnnamed1948(core.List<api.GoogleCloudVideointelligenceV1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1Track(o[0]);
  checkGoogleCloudVideointelligenceV1Track(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1LogoRecognitionAnnotation =
    0;
buildGoogleCloudVideointelligenceV1LogoRecognitionAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1LogoRecognitionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1LogoRecognitionAnnotation < 3) {
    o.entity = buildGoogleCloudVideointelligenceV1Entity();
    o.segments = buildUnnamed1947();
    o.tracks = buildUnnamed1948();
  }
  buildCounterGoogleCloudVideointelligenceV1LogoRecognitionAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1LogoRecognitionAnnotation(
    api.GoogleCloudVideointelligenceV1LogoRecognitionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1LogoRecognitionAnnotation < 3) {
    checkGoogleCloudVideointelligenceV1Entity(o.entity);
    checkUnnamed1947(o.segments);
    checkUnnamed1948(o.tracks);
  }
  buildCounterGoogleCloudVideointelligenceV1LogoRecognitionAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingBox = 0;
buildGoogleCloudVideointelligenceV1NormalizedBoundingBox() {
  var o = new api.GoogleCloudVideointelligenceV1NormalizedBoundingBox();
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

checkGoogleCloudVideointelligenceV1NormalizedBoundingBox(
    api.GoogleCloudVideointelligenceV1NormalizedBoundingBox o) {
  buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingBox++;
  if (buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingBox < 3) {
    unittest.expect(o.bottom, unittest.equals(42.0));
    unittest.expect(o.left, unittest.equals(42.0));
    unittest.expect(o.right, unittest.equals(42.0));
    unittest.expect(o.top, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingBox--;
}

buildUnnamed1949() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1NormalizedVertex>();
  o.add(buildGoogleCloudVideointelligenceV1NormalizedVertex());
  o.add(buildGoogleCloudVideointelligenceV1NormalizedVertex());
  return o;
}

checkUnnamed1949(
    core.List<api.GoogleCloudVideointelligenceV1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1NormalizedVertex(o[0]);
  checkGoogleCloudVideointelligenceV1NormalizedVertex(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingPoly = 0;
buildGoogleCloudVideointelligenceV1NormalizedBoundingPoly() {
  var o = new api.GoogleCloudVideointelligenceV1NormalizedBoundingPoly();
  buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingPoly < 3) {
    o.vertices = buildUnnamed1949();
  }
  buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingPoly--;
  return o;
}

checkGoogleCloudVideointelligenceV1NormalizedBoundingPoly(
    api.GoogleCloudVideointelligenceV1NormalizedBoundingPoly o) {
  buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingPoly < 3) {
    checkUnnamed1949(o.vertices);
  }
  buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingPoly--;
}

core.int buildCounterGoogleCloudVideointelligenceV1NormalizedVertex = 0;
buildGoogleCloudVideointelligenceV1NormalizedVertex() {
  var o = new api.GoogleCloudVideointelligenceV1NormalizedVertex();
  buildCounterGoogleCloudVideointelligenceV1NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1NormalizedVertex--;
  return o;
}

checkGoogleCloudVideointelligenceV1NormalizedVertex(
    api.GoogleCloudVideointelligenceV1NormalizedVertex o) {
  buildCounterGoogleCloudVideointelligenceV1NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1NormalizedVertex < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVideointelligenceV1NormalizedVertex--;
}

buildUnnamed1950() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1ObjectTrackingFrame>();
  o.add(buildGoogleCloudVideointelligenceV1ObjectTrackingFrame());
  o.add(buildGoogleCloudVideointelligenceV1ObjectTrackingFrame());
  return o;
}

checkUnnamed1950(
    core.List<api.GoogleCloudVideointelligenceV1ObjectTrackingFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1ObjectTrackingFrame(o[0]);
  checkGoogleCloudVideointelligenceV1ObjectTrackingFrame(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1ObjectTrackingAnnotation = 0;
buildGoogleCloudVideointelligenceV1ObjectTrackingAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1ObjectTrackingAnnotation();
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1ObjectTrackingAnnotation < 3) {
    o.confidence = 42.0;
    o.entity = buildGoogleCloudVideointelligenceV1Entity();
    o.frames = buildUnnamed1950();
    o.segment = buildGoogleCloudVideointelligenceV1VideoSegment();
    o.trackId = "foo";
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1ObjectTrackingAnnotation(
    api.GoogleCloudVideointelligenceV1ObjectTrackingAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1ObjectTrackingAnnotation < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVideointelligenceV1Entity(o.entity);
    checkUnnamed1950(o.frames);
    checkGoogleCloudVideointelligenceV1VideoSegment(o.segment);
    unittest.expect(o.trackId, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1ObjectTrackingConfig = 0;
buildGoogleCloudVideointelligenceV1ObjectTrackingConfig() {
  var o = new api.GoogleCloudVideointelligenceV1ObjectTrackingConfig();
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1ObjectTrackingConfig < 3) {
    o.model = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingConfig--;
  return o;
}

checkGoogleCloudVideointelligenceV1ObjectTrackingConfig(
    api.GoogleCloudVideointelligenceV1ObjectTrackingConfig o) {
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1ObjectTrackingConfig < 3) {
    unittest.expect(o.model, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingConfig--;
}

core.int buildCounterGoogleCloudVideointelligenceV1ObjectTrackingFrame = 0;
buildGoogleCloudVideointelligenceV1ObjectTrackingFrame() {
  var o = new api.GoogleCloudVideointelligenceV1ObjectTrackingFrame();
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1ObjectTrackingFrame < 3) {
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1NormalizedBoundingBox();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1ObjectTrackingFrame(
    api.GoogleCloudVideointelligenceV1ObjectTrackingFrame o) {
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1ObjectTrackingFrame < 3) {
    checkGoogleCloudVideointelligenceV1NormalizedBoundingBox(
        o.normalizedBoundingBox);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1ObjectTrackingFrame--;
}

buildUnnamed1951() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1Track>();
  o.add(buildGoogleCloudVideointelligenceV1Track());
  o.add(buildGoogleCloudVideointelligenceV1Track());
  return o;
}

checkUnnamed1951(core.List<api.GoogleCloudVideointelligenceV1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1Track(o[0]);
  checkGoogleCloudVideointelligenceV1Track(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1PersonDetectionAnnotation =
    0;
buildGoogleCloudVideointelligenceV1PersonDetectionAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1PersonDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1PersonDetectionAnnotation < 3) {
    o.tracks = buildUnnamed1951();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1PersonDetectionAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1PersonDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1PersonDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1PersonDetectionAnnotation < 3) {
    checkUnnamed1951(o.tracks);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1PersonDetectionAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1PersonDetectionConfig = 0;
buildGoogleCloudVideointelligenceV1PersonDetectionConfig() {
  var o = new api.GoogleCloudVideointelligenceV1PersonDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1PersonDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1PersonDetectionConfig < 3) {
    o.includeAttributes = true;
    o.includeBoundingBoxes = true;
    o.includePoseLandmarks = true;
  }
  buildCounterGoogleCloudVideointelligenceV1PersonDetectionConfig--;
  return o;
}

checkGoogleCloudVideointelligenceV1PersonDetectionConfig(
    api.GoogleCloudVideointelligenceV1PersonDetectionConfig o) {
  buildCounterGoogleCloudVideointelligenceV1PersonDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1PersonDetectionConfig < 3) {
    unittest.expect(o.includeAttributes, unittest.isTrue);
    unittest.expect(o.includeBoundingBoxes, unittest.isTrue);
    unittest.expect(o.includePoseLandmarks, unittest.isTrue);
  }
  buildCounterGoogleCloudVideointelligenceV1PersonDetectionConfig--;
}

core.int buildCounterGoogleCloudVideointelligenceV1ShotChangeDetectionConfig =
    0;
buildGoogleCloudVideointelligenceV1ShotChangeDetectionConfig() {
  var o = new api.GoogleCloudVideointelligenceV1ShotChangeDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1ShotChangeDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1ShotChangeDetectionConfig < 3) {
    o.model = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1ShotChangeDetectionConfig--;
  return o;
}

checkGoogleCloudVideointelligenceV1ShotChangeDetectionConfig(
    api.GoogleCloudVideointelligenceV1ShotChangeDetectionConfig o) {
  buildCounterGoogleCloudVideointelligenceV1ShotChangeDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1ShotChangeDetectionConfig < 3) {
    unittest.expect(o.model, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1ShotChangeDetectionConfig--;
}

buildUnnamed1952() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1952(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudVideointelligenceV1SpeechContext = 0;
buildGoogleCloudVideointelligenceV1SpeechContext() {
  var o = new api.GoogleCloudVideointelligenceV1SpeechContext();
  buildCounterGoogleCloudVideointelligenceV1SpeechContext++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechContext < 3) {
    o.phrases = buildUnnamed1952();
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechContext--;
  return o;
}

checkGoogleCloudVideointelligenceV1SpeechContext(
    api.GoogleCloudVideointelligenceV1SpeechContext o) {
  buildCounterGoogleCloudVideointelligenceV1SpeechContext++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechContext < 3) {
    checkUnnamed1952(o.phrases);
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechContext--;
}

buildUnnamed1953() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1WordInfo>();
  o.add(buildGoogleCloudVideointelligenceV1WordInfo());
  o.add(buildGoogleCloudVideointelligenceV1WordInfo());
  return o;
}

checkUnnamed1953(core.List<api.GoogleCloudVideointelligenceV1WordInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1WordInfo(o[0]);
  checkGoogleCloudVideointelligenceV1WordInfo(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1SpeechRecognitionAlternative = 0;
buildGoogleCloudVideointelligenceV1SpeechRecognitionAlternative() {
  var o = new api.GoogleCloudVideointelligenceV1SpeechRecognitionAlternative();
  buildCounterGoogleCloudVideointelligenceV1SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechRecognitionAlternative <
      3) {
    o.confidence = 42.0;
    o.transcript = "foo";
    o.words = buildUnnamed1953();
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechRecognitionAlternative--;
  return o;
}

checkGoogleCloudVideointelligenceV1SpeechRecognitionAlternative(
    api.GoogleCloudVideointelligenceV1SpeechRecognitionAlternative o) {
  buildCounterGoogleCloudVideointelligenceV1SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechRecognitionAlternative <
      3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.transcript, unittest.equals('foo'));
    checkUnnamed1953(o.words);
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechRecognitionAlternative--;
}

buildUnnamed1954() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1SpeechRecognitionAlternative>();
  o.add(buildGoogleCloudVideointelligenceV1SpeechRecognitionAlternative());
  o.add(buildGoogleCloudVideointelligenceV1SpeechRecognitionAlternative());
  return o;
}

checkUnnamed1954(
    core.List<api.GoogleCloudVideointelligenceV1SpeechRecognitionAlternative>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1SpeechRecognitionAlternative(o[0]);
  checkGoogleCloudVideointelligenceV1SpeechRecognitionAlternative(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1SpeechTranscription = 0;
buildGoogleCloudVideointelligenceV1SpeechTranscription() {
  var o = new api.GoogleCloudVideointelligenceV1SpeechTranscription();
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechTranscription < 3) {
    o.alternatives = buildUnnamed1954();
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscription--;
  return o;
}

checkGoogleCloudVideointelligenceV1SpeechTranscription(
    api.GoogleCloudVideointelligenceV1SpeechTranscription o) {
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechTranscription < 3) {
    checkUnnamed1954(o.alternatives);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscription--;
}

buildUnnamed1955() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1955(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1956() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1SpeechContext>();
  o.add(buildGoogleCloudVideointelligenceV1SpeechContext());
  o.add(buildGoogleCloudVideointelligenceV1SpeechContext());
  return o;
}

checkUnnamed1956(core.List<api.GoogleCloudVideointelligenceV1SpeechContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1SpeechContext(o[0]);
  checkGoogleCloudVideointelligenceV1SpeechContext(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1SpeechTranscriptionConfig =
    0;
buildGoogleCloudVideointelligenceV1SpeechTranscriptionConfig() {
  var o = new api.GoogleCloudVideointelligenceV1SpeechTranscriptionConfig();
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscriptionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechTranscriptionConfig < 3) {
    o.audioTracks = buildUnnamed1955();
    o.diarizationSpeakerCount = 42;
    o.enableAutomaticPunctuation = true;
    o.enableSpeakerDiarization = true;
    o.enableWordConfidence = true;
    o.filterProfanity = true;
    o.languageCode = "foo";
    o.maxAlternatives = 42;
    o.speechContexts = buildUnnamed1956();
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscriptionConfig--;
  return o;
}

checkGoogleCloudVideointelligenceV1SpeechTranscriptionConfig(
    api.GoogleCloudVideointelligenceV1SpeechTranscriptionConfig o) {
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscriptionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechTranscriptionConfig < 3) {
    checkUnnamed1955(o.audioTracks);
    unittest.expect(o.diarizationSpeakerCount, unittest.equals(42));
    unittest.expect(o.enableAutomaticPunctuation, unittest.isTrue);
    unittest.expect(o.enableSpeakerDiarization, unittest.isTrue);
    unittest.expect(o.enableWordConfidence, unittest.isTrue);
    unittest.expect(o.filterProfanity, unittest.isTrue);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.maxAlternatives, unittest.equals(42));
    checkUnnamed1956(o.speechContexts);
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscriptionConfig--;
}

buildUnnamed1957() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1TextSegment>();
  o.add(buildGoogleCloudVideointelligenceV1TextSegment());
  o.add(buildGoogleCloudVideointelligenceV1TextSegment());
  return o;
}

checkUnnamed1957(core.List<api.GoogleCloudVideointelligenceV1TextSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1TextSegment(o[0]);
  checkGoogleCloudVideointelligenceV1TextSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1TextAnnotation = 0;
buildGoogleCloudVideointelligenceV1TextAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1TextAnnotation();
  buildCounterGoogleCloudVideointelligenceV1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1TextAnnotation < 3) {
    o.segments = buildUnnamed1957();
    o.text = "foo";
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1TextAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1TextAnnotation(
    api.GoogleCloudVideointelligenceV1TextAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1TextAnnotation < 3) {
    checkUnnamed1957(o.segments);
    unittest.expect(o.text, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1TextAnnotation--;
}

buildUnnamed1958() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1958(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig = 0;
buildGoogleCloudVideointelligenceV1TextDetectionConfig() {
  var o = new api.GoogleCloudVideointelligenceV1TextDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig < 3) {
    o.languageHints = buildUnnamed1958();
    o.model = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig--;
  return o;
}

checkGoogleCloudVideointelligenceV1TextDetectionConfig(
    api.GoogleCloudVideointelligenceV1TextDetectionConfig o) {
  buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig < 3) {
    checkUnnamed1958(o.languageHints);
    unittest.expect(o.model, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig--;
}

core.int buildCounterGoogleCloudVideointelligenceV1TextFrame = 0;
buildGoogleCloudVideointelligenceV1TextFrame() {
  var o = new api.GoogleCloudVideointelligenceV1TextFrame();
  buildCounterGoogleCloudVideointelligenceV1TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1TextFrame < 3) {
    o.rotatedBoundingBox =
        buildGoogleCloudVideointelligenceV1NormalizedBoundingPoly();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1TextFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1TextFrame(
    api.GoogleCloudVideointelligenceV1TextFrame o) {
  buildCounterGoogleCloudVideointelligenceV1TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1TextFrame < 3) {
    checkGoogleCloudVideointelligenceV1NormalizedBoundingPoly(
        o.rotatedBoundingBox);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1TextFrame--;
}

buildUnnamed1959() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1TextFrame>();
  o.add(buildGoogleCloudVideointelligenceV1TextFrame());
  o.add(buildGoogleCloudVideointelligenceV1TextFrame());
  return o;
}

checkUnnamed1959(core.List<api.GoogleCloudVideointelligenceV1TextFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1TextFrame(o[0]);
  checkGoogleCloudVideointelligenceV1TextFrame(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1TextSegment = 0;
buildGoogleCloudVideointelligenceV1TextSegment() {
  var o = new api.GoogleCloudVideointelligenceV1TextSegment();
  buildCounterGoogleCloudVideointelligenceV1TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1TextSegment < 3) {
    o.confidence = 42.0;
    o.frames = buildUnnamed1959();
    o.segment = buildGoogleCloudVideointelligenceV1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1TextSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1TextSegment(
    api.GoogleCloudVideointelligenceV1TextSegment o) {
  buildCounterGoogleCloudVideointelligenceV1TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1TextSegment < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkUnnamed1959(o.frames);
    checkGoogleCloudVideointelligenceV1VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1TextSegment--;
}

buildUnnamed1960() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1DetectedAttribute>();
  o.add(buildGoogleCloudVideointelligenceV1DetectedAttribute());
  o.add(buildGoogleCloudVideointelligenceV1DetectedAttribute());
  return o;
}

checkUnnamed1960(
    core.List<api.GoogleCloudVideointelligenceV1DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1DetectedAttribute(o[1]);
}

buildUnnamed1961() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1DetectedLandmark>();
  o.add(buildGoogleCloudVideointelligenceV1DetectedLandmark());
  o.add(buildGoogleCloudVideointelligenceV1DetectedLandmark());
  return o;
}

checkUnnamed1961(
    core.List<api.GoogleCloudVideointelligenceV1DetectedLandmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1DetectedLandmark(o[0]);
  checkGoogleCloudVideointelligenceV1DetectedLandmark(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1TimestampedObject = 0;
buildGoogleCloudVideointelligenceV1TimestampedObject() {
  var o = new api.GoogleCloudVideointelligenceV1TimestampedObject();
  buildCounterGoogleCloudVideointelligenceV1TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1TimestampedObject < 3) {
    o.attributes = buildUnnamed1960();
    o.landmarks = buildUnnamed1961();
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1NormalizedBoundingBox();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1TimestampedObject--;
  return o;
}

checkGoogleCloudVideointelligenceV1TimestampedObject(
    api.GoogleCloudVideointelligenceV1TimestampedObject o) {
  buildCounterGoogleCloudVideointelligenceV1TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1TimestampedObject < 3) {
    checkUnnamed1960(o.attributes);
    checkUnnamed1961(o.landmarks);
    checkGoogleCloudVideointelligenceV1NormalizedBoundingBox(
        o.normalizedBoundingBox);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1TimestampedObject--;
}

buildUnnamed1962() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1DetectedAttribute>();
  o.add(buildGoogleCloudVideointelligenceV1DetectedAttribute());
  o.add(buildGoogleCloudVideointelligenceV1DetectedAttribute());
  return o;
}

checkUnnamed1962(
    core.List<api.GoogleCloudVideointelligenceV1DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1DetectedAttribute(o[1]);
}

buildUnnamed1963() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1TimestampedObject>();
  o.add(buildGoogleCloudVideointelligenceV1TimestampedObject());
  o.add(buildGoogleCloudVideointelligenceV1TimestampedObject());
  return o;
}

checkUnnamed1963(
    core.List<api.GoogleCloudVideointelligenceV1TimestampedObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1TimestampedObject(o[0]);
  checkGoogleCloudVideointelligenceV1TimestampedObject(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1Track = 0;
buildGoogleCloudVideointelligenceV1Track() {
  var o = new api.GoogleCloudVideointelligenceV1Track();
  buildCounterGoogleCloudVideointelligenceV1Track++;
  if (buildCounterGoogleCloudVideointelligenceV1Track < 3) {
    o.attributes = buildUnnamed1962();
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1VideoSegment();
    o.timestampedObjects = buildUnnamed1963();
  }
  buildCounterGoogleCloudVideointelligenceV1Track--;
  return o;
}

checkGoogleCloudVideointelligenceV1Track(
    api.GoogleCloudVideointelligenceV1Track o) {
  buildCounterGoogleCloudVideointelligenceV1Track++;
  if (buildCounterGoogleCloudVideointelligenceV1Track < 3) {
    checkUnnamed1962(o.attributes);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVideointelligenceV1VideoSegment(o.segment);
    checkUnnamed1963(o.timestampedObjects);
  }
  buildCounterGoogleCloudVideointelligenceV1Track--;
}

core.int buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress = 0;
buildGoogleCloudVideointelligenceV1VideoAnnotationProgress() {
  var o = new api.GoogleCloudVideointelligenceV1VideoAnnotationProgress();
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress < 3) {
    o.feature = "foo";
    o.inputUri = "foo";
    o.progressPercent = 42;
    o.segment = buildGoogleCloudVideointelligenceV1VideoSegment();
    o.startTime = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1VideoAnnotationProgress(
    api.GoogleCloudVideointelligenceV1VideoAnnotationProgress o) {
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress < 3) {
    unittest.expect(o.feature, unittest.equals('foo'));
    unittest.expect(o.inputUri, unittest.equals('foo'));
    unittest.expect(o.progressPercent, unittest.equals(42));
    checkGoogleCloudVideointelligenceV1VideoSegment(o.segment);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress--;
}

buildUnnamed1964() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1FaceAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1FaceAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1FaceAnnotation());
  return o;
}

checkUnnamed1964(
    core.List<api.GoogleCloudVideointelligenceV1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1FaceAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1FaceAnnotation(o[1]);
}

buildUnnamed1965() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1FaceDetectionAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1FaceDetectionAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1FaceDetectionAnnotation());
  return o;
}

checkUnnamed1965(
    core.List<api.GoogleCloudVideointelligenceV1FaceDetectionAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1FaceDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1FaceDetectionAnnotation(o[1]);
}

buildUnnamed1966() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1LabelAnnotation());
  return o;
}

checkUnnamed1966(
    core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[1]);
}

buildUnnamed1967() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1LogoRecognitionAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1LogoRecognitionAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1LogoRecognitionAnnotation());
  return o;
}

checkUnnamed1967(
    core.List<api.GoogleCloudVideointelligenceV1LogoRecognitionAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LogoRecognitionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1LogoRecognitionAnnotation(o[1]);
}

buildUnnamed1968() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1ObjectTrackingAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1ObjectTrackingAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1ObjectTrackingAnnotation());
  return o;
}

checkUnnamed1968(
    core.List<api.GoogleCloudVideointelligenceV1ObjectTrackingAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1ObjectTrackingAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1ObjectTrackingAnnotation(o[1]);
}

buildUnnamed1969() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1PersonDetectionAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1PersonDetectionAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1PersonDetectionAnnotation());
  return o;
}

checkUnnamed1969(
    core.List<api.GoogleCloudVideointelligenceV1PersonDetectionAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1PersonDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1PersonDetectionAnnotation(o[1]);
}

buildUnnamed1970() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1LabelAnnotation());
  return o;
}

checkUnnamed1970(
    core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[1]);
}

buildUnnamed1971() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1LabelAnnotation());
  return o;
}

checkUnnamed1971(
    core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[1]);
}

buildUnnamed1972() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1VideoSegment());
  return o;
}

checkUnnamed1972(core.List<api.GoogleCloudVideointelligenceV1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1VideoSegment(o[1]);
}

buildUnnamed1973() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1LabelAnnotation());
  return o;
}

checkUnnamed1973(
    core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[1]);
}

buildUnnamed1974() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1LabelAnnotation());
  return o;
}

checkUnnamed1974(
    core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[1]);
}

buildUnnamed1975() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1SpeechTranscription>();
  o.add(buildGoogleCloudVideointelligenceV1SpeechTranscription());
  o.add(buildGoogleCloudVideointelligenceV1SpeechTranscription());
  return o;
}

checkUnnamed1975(
    core.List<api.GoogleCloudVideointelligenceV1SpeechTranscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1SpeechTranscription(o[0]);
  checkGoogleCloudVideointelligenceV1SpeechTranscription(o[1]);
}

buildUnnamed1976() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1TextAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1TextAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1TextAnnotation());
  return o;
}

checkUnnamed1976(
    core.List<api.GoogleCloudVideointelligenceV1TextAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1TextAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1TextAnnotation(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults = 0;
buildGoogleCloudVideointelligenceV1VideoAnnotationResults() {
  var o = new api.GoogleCloudVideointelligenceV1VideoAnnotationResults();
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults < 3) {
    o.error = buildGoogleRpcStatus();
    o.explicitAnnotation =
        buildGoogleCloudVideointelligenceV1ExplicitContentAnnotation();
    o.faceAnnotations = buildUnnamed1964();
    o.faceDetectionAnnotations = buildUnnamed1965();
    o.frameLabelAnnotations = buildUnnamed1966();
    o.inputUri = "foo";
    o.logoRecognitionAnnotations = buildUnnamed1967();
    o.objectAnnotations = buildUnnamed1968();
    o.personDetectionAnnotations = buildUnnamed1969();
    o.segment = buildGoogleCloudVideointelligenceV1VideoSegment();
    o.segmentLabelAnnotations = buildUnnamed1970();
    o.segmentPresenceLabelAnnotations = buildUnnamed1971();
    o.shotAnnotations = buildUnnamed1972();
    o.shotLabelAnnotations = buildUnnamed1973();
    o.shotPresenceLabelAnnotations = buildUnnamed1974();
    o.speechTranscriptions = buildUnnamed1975();
    o.textAnnotations = buildUnnamed1976();
  }
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults--;
  return o;
}

checkGoogleCloudVideointelligenceV1VideoAnnotationResults(
    api.GoogleCloudVideointelligenceV1VideoAnnotationResults o) {
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults < 3) {
    checkGoogleRpcStatus(o.error);
    checkGoogleCloudVideointelligenceV1ExplicitContentAnnotation(
        o.explicitAnnotation);
    checkUnnamed1964(o.faceAnnotations);
    checkUnnamed1965(o.faceDetectionAnnotations);
    checkUnnamed1966(o.frameLabelAnnotations);
    unittest.expect(o.inputUri, unittest.equals('foo'));
    checkUnnamed1967(o.logoRecognitionAnnotations);
    checkUnnamed1968(o.objectAnnotations);
    checkUnnamed1969(o.personDetectionAnnotations);
    checkGoogleCloudVideointelligenceV1VideoSegment(o.segment);
    checkUnnamed1970(o.segmentLabelAnnotations);
    checkUnnamed1971(o.segmentPresenceLabelAnnotations);
    checkUnnamed1972(o.shotAnnotations);
    checkUnnamed1973(o.shotLabelAnnotations);
    checkUnnamed1974(o.shotPresenceLabelAnnotations);
    checkUnnamed1975(o.speechTranscriptions);
    checkUnnamed1976(o.textAnnotations);
  }
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults--;
}

buildUnnamed1977() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1VideoSegment());
  return o;
}

checkUnnamed1977(core.List<api.GoogleCloudVideointelligenceV1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1VideoSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1VideoContext = 0;
buildGoogleCloudVideointelligenceV1VideoContext() {
  var o = new api.GoogleCloudVideointelligenceV1VideoContext();
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
    o.segments = buildUnnamed1977();
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

checkGoogleCloudVideointelligenceV1VideoContext(
    api.GoogleCloudVideointelligenceV1VideoContext o) {
  buildCounterGoogleCloudVideointelligenceV1VideoContext++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoContext < 3) {
    checkGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig(
        o.explicitContentDetectionConfig);
    checkGoogleCloudVideointelligenceV1FaceDetectionConfig(
        o.faceDetectionConfig);
    checkGoogleCloudVideointelligenceV1LabelDetectionConfig(
        o.labelDetectionConfig);
    checkGoogleCloudVideointelligenceV1ObjectTrackingConfig(
        o.objectTrackingConfig);
    checkGoogleCloudVideointelligenceV1PersonDetectionConfig(
        o.personDetectionConfig);
    checkUnnamed1977(o.segments);
    checkGoogleCloudVideointelligenceV1ShotChangeDetectionConfig(
        o.shotChangeDetectionConfig);
    checkGoogleCloudVideointelligenceV1SpeechTranscriptionConfig(
        o.speechTranscriptionConfig);
    checkGoogleCloudVideointelligenceV1TextDetectionConfig(
        o.textDetectionConfig);
  }
  buildCounterGoogleCloudVideointelligenceV1VideoContext--;
}

core.int buildCounterGoogleCloudVideointelligenceV1VideoSegment = 0;
buildGoogleCloudVideointelligenceV1VideoSegment() {
  var o = new api.GoogleCloudVideointelligenceV1VideoSegment();
  buildCounterGoogleCloudVideointelligenceV1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoSegment < 3) {
    o.endTimeOffset = "foo";
    o.startTimeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1VideoSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1VideoSegment(
    api.GoogleCloudVideointelligenceV1VideoSegment o) {
  buildCounterGoogleCloudVideointelligenceV1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoSegment < 3) {
    unittest.expect(o.endTimeOffset, unittest.equals('foo'));
    unittest.expect(o.startTimeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1VideoSegment--;
}

core.int buildCounterGoogleCloudVideointelligenceV1WordInfo = 0;
buildGoogleCloudVideointelligenceV1WordInfo() {
  var o = new api.GoogleCloudVideointelligenceV1WordInfo();
  buildCounterGoogleCloudVideointelligenceV1WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1WordInfo < 3) {
    o.confidence = 42.0;
    o.endTime = "foo";
    o.speakerTag = 42;
    o.startTime = "foo";
    o.word = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1WordInfo--;
  return o;
}

checkGoogleCloudVideointelligenceV1WordInfo(
    api.GoogleCloudVideointelligenceV1WordInfo o) {
  buildCounterGoogleCloudVideointelligenceV1WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1WordInfo < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.speakerTag, unittest.equals(42));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.word, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1WordInfo--;
}

buildUnnamed1978() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress>();
  o.add(buildGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress());
  o.add(buildGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress());
  return o;
}

checkUnnamed1978(
    core.List<api.GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress(o[0]);
  checkGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress =
    0;
buildGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress() {
  var o = new api.GoogleCloudVideointelligenceV1beta2AnnotateVideoProgress();
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress <
      3) {
    o.annotationProgress = buildUnnamed1978();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress(
    api.GoogleCloudVideointelligenceV1beta2AnnotateVideoProgress o) {
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress <
      3) {
    checkUnnamed1978(o.annotationProgress);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress--;
}

buildUnnamed1979() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1beta2VideoAnnotationResults>();
  o.add(buildGoogleCloudVideointelligenceV1beta2VideoAnnotationResults());
  o.add(buildGoogleCloudVideointelligenceV1beta2VideoAnnotationResults());
  return o;
}

checkUnnamed1979(
    core.List<api.GoogleCloudVideointelligenceV1beta2VideoAnnotationResults>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2VideoAnnotationResults(o[0]);
  checkGoogleCloudVideointelligenceV1beta2VideoAnnotationResults(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse =
    0;
buildGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse() {
  var o = new api.GoogleCloudVideointelligenceV1beta2AnnotateVideoResponse();
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse <
      3) {
    o.annotationResults = buildUnnamed1979();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse(
    api.GoogleCloudVideointelligenceV1beta2AnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse <
      3) {
    checkUnnamed1979(o.annotationResults);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2DetectedAttribute = 0;
buildGoogleCloudVideointelligenceV1beta2DetectedAttribute() {
  var o = new api.GoogleCloudVideointelligenceV1beta2DetectedAttribute();
  buildCounterGoogleCloudVideointelligenceV1beta2DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2DetectedAttribute < 3) {
    o.confidence = 42.0;
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2DetectedAttribute--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2DetectedAttribute(
    api.GoogleCloudVideointelligenceV1beta2DetectedAttribute o) {
  buildCounterGoogleCloudVideointelligenceV1beta2DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2DetectedAttribute < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2DetectedAttribute--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2DetectedLandmark = 0;
buildGoogleCloudVideointelligenceV1beta2DetectedLandmark() {
  var o = new api.GoogleCloudVideointelligenceV1beta2DetectedLandmark();
  buildCounterGoogleCloudVideointelligenceV1beta2DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2DetectedLandmark < 3) {
    o.confidence = 42.0;
    o.name = "foo";
    o.point = buildGoogleCloudVideointelligenceV1beta2NormalizedVertex();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2DetectedLandmark--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2DetectedLandmark(
    api.GoogleCloudVideointelligenceV1beta2DetectedLandmark o) {
  buildCounterGoogleCloudVideointelligenceV1beta2DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2DetectedLandmark < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudVideointelligenceV1beta2NormalizedVertex(o.point);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2DetectedLandmark--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2Entity = 0;
buildGoogleCloudVideointelligenceV1beta2Entity() {
  var o = new api.GoogleCloudVideointelligenceV1beta2Entity();
  buildCounterGoogleCloudVideointelligenceV1beta2Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2Entity < 3) {
    o.description = "foo";
    o.entityId = "foo";
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2Entity--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2Entity(
    api.GoogleCloudVideointelligenceV1beta2Entity o) {
  buildCounterGoogleCloudVideointelligenceV1beta2Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2Entity < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.entityId, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2Entity--;
}

buildUnnamed1980() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1beta2ExplicitContentFrame>();
  o.add(buildGoogleCloudVideointelligenceV1beta2ExplicitContentFrame());
  o.add(buildGoogleCloudVideointelligenceV1beta2ExplicitContentFrame());
  return o;
}

checkUnnamed1980(
    core.List<api.GoogleCloudVideointelligenceV1beta2ExplicitContentFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2ExplicitContentFrame(o[0]);
  checkGoogleCloudVideointelligenceV1beta2ExplicitContentFrame(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation =
    0;
buildGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation() {
  var o =
      new api.GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation();
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation <
      3) {
    o.frames = buildUnnamed1980();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation(
    api.GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation <
      3) {
    checkUnnamed1980(o.frames);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentFrame =
    0;
buildGoogleCloudVideointelligenceV1beta2ExplicitContentFrame() {
  var o = new api.GoogleCloudVideointelligenceV1beta2ExplicitContentFrame();
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentFrame < 3) {
    o.pornographyLikelihood = "foo";
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2ExplicitContentFrame(
    api.GoogleCloudVideointelligenceV1beta2ExplicitContentFrame o) {
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentFrame < 3) {
    unittest.expect(o.pornographyLikelihood, unittest.equals('foo'));
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentFrame--;
}

buildUnnamed1981() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2FaceFrame>();
  o.add(buildGoogleCloudVideointelligenceV1beta2FaceFrame());
  o.add(buildGoogleCloudVideointelligenceV1beta2FaceFrame());
  return o;
}

checkUnnamed1981(
    core.List<api.GoogleCloudVideointelligenceV1beta2FaceFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2FaceFrame(o[0]);
  checkGoogleCloudVideointelligenceV1beta2FaceFrame(o[1]);
}

buildUnnamed1982() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2FaceSegment>();
  o.add(buildGoogleCloudVideointelligenceV1beta2FaceSegment());
  o.add(buildGoogleCloudVideointelligenceV1beta2FaceSegment());
  return o;
}

checkUnnamed1982(
    core.List<api.GoogleCloudVideointelligenceV1beta2FaceSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2FaceSegment(o[0]);
  checkGoogleCloudVideointelligenceV1beta2FaceSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2FaceAnnotation = 0;
buildGoogleCloudVideointelligenceV1beta2FaceAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1beta2FaceAnnotation();
  buildCounterGoogleCloudVideointelligenceV1beta2FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2FaceAnnotation < 3) {
    o.frames = buildUnnamed1981();
    o.segments = buildUnnamed1982();
    o.thumbnail = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2FaceAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2FaceAnnotation(
    api.GoogleCloudVideointelligenceV1beta2FaceAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta2FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2FaceAnnotation < 3) {
    checkUnnamed1981(o.frames);
    checkUnnamed1982(o.segments);
    unittest.expect(o.thumbnail, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2FaceAnnotation--;
}

buildUnnamed1983() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2Track>();
  o.add(buildGoogleCloudVideointelligenceV1beta2Track());
  o.add(buildGoogleCloudVideointelligenceV1beta2Track());
  return o;
}

checkUnnamed1983(core.List<api.GoogleCloudVideointelligenceV1beta2Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2Track(o[0]);
  checkGoogleCloudVideointelligenceV1beta2Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation = 0;
buildGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation <
      3) {
    o.thumbnail = "foo";
    o.tracks = buildUnnamed1983();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation <
      3) {
    unittest.expect(o.thumbnail, unittest.equals('foo'));
    checkUnnamed1983(o.tracks);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation--;
}

buildUnnamed1984() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1beta2NormalizedBoundingBox>();
  o.add(buildGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox());
  o.add(buildGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox());
  return o;
}

checkUnnamed1984(
    core.List<api.GoogleCloudVideointelligenceV1beta2NormalizedBoundingBox> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox(o[0]);
  checkGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2FaceFrame = 0;
buildGoogleCloudVideointelligenceV1beta2FaceFrame() {
  var o = new api.GoogleCloudVideointelligenceV1beta2FaceFrame();
  buildCounterGoogleCloudVideointelligenceV1beta2FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2FaceFrame < 3) {
    o.normalizedBoundingBoxes = buildUnnamed1984();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2FaceFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2FaceFrame(
    api.GoogleCloudVideointelligenceV1beta2FaceFrame o) {
  buildCounterGoogleCloudVideointelligenceV1beta2FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2FaceFrame < 3) {
    checkUnnamed1984(o.normalizedBoundingBoxes);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2FaceFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2FaceSegment = 0;
buildGoogleCloudVideointelligenceV1beta2FaceSegment() {
  var o = new api.GoogleCloudVideointelligenceV1beta2FaceSegment();
  buildCounterGoogleCloudVideointelligenceV1beta2FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2FaceSegment < 3) {
    o.segment = buildGoogleCloudVideointelligenceV1beta2VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2FaceSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2FaceSegment(
    api.GoogleCloudVideointelligenceV1beta2FaceSegment o) {
  buildCounterGoogleCloudVideointelligenceV1beta2FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2FaceSegment < 3) {
    checkGoogleCloudVideointelligenceV1beta2VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2FaceSegment--;
}

buildUnnamed1985() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2Entity>();
  o.add(buildGoogleCloudVideointelligenceV1beta2Entity());
  o.add(buildGoogleCloudVideointelligenceV1beta2Entity());
  return o;
}

checkUnnamed1985(core.List<api.GoogleCloudVideointelligenceV1beta2Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2Entity(o[0]);
  checkGoogleCloudVideointelligenceV1beta2Entity(o[1]);
}

buildUnnamed1986() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2LabelFrame>();
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelFrame());
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelFrame());
  return o;
}

checkUnnamed1986(
    core.List<api.GoogleCloudVideointelligenceV1beta2LabelFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LabelFrame(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LabelFrame(o[1]);
}

buildUnnamed1987() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2LabelSegment>();
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelSegment());
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelSegment());
  return o;
}

checkUnnamed1987(
    core.List<api.GoogleCloudVideointelligenceV1beta2LabelSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LabelSegment(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LabelSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2LabelAnnotation = 0;
buildGoogleCloudVideointelligenceV1beta2LabelAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1beta2LabelAnnotation();
  buildCounterGoogleCloudVideointelligenceV1beta2LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2LabelAnnotation < 3) {
    o.categoryEntities = buildUnnamed1985();
    o.entity = buildGoogleCloudVideointelligenceV1beta2Entity();
    o.frames = buildUnnamed1986();
    o.segments = buildUnnamed1987();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2LabelAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(
    api.GoogleCloudVideointelligenceV1beta2LabelAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta2LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2LabelAnnotation < 3) {
    checkUnnamed1985(o.categoryEntities);
    checkGoogleCloudVideointelligenceV1beta2Entity(o.entity);
    checkUnnamed1986(o.frames);
    checkUnnamed1987(o.segments);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2LabelAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2LabelFrame = 0;
buildGoogleCloudVideointelligenceV1beta2LabelFrame() {
  var o = new api.GoogleCloudVideointelligenceV1beta2LabelFrame();
  buildCounterGoogleCloudVideointelligenceV1beta2LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2LabelFrame < 3) {
    o.confidence = 42.0;
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2LabelFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2LabelFrame(
    api.GoogleCloudVideointelligenceV1beta2LabelFrame o) {
  buildCounterGoogleCloudVideointelligenceV1beta2LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2LabelFrame < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2LabelFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2LabelSegment = 0;
buildGoogleCloudVideointelligenceV1beta2LabelSegment() {
  var o = new api.GoogleCloudVideointelligenceV1beta2LabelSegment();
  buildCounterGoogleCloudVideointelligenceV1beta2LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2LabelSegment < 3) {
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1beta2VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2LabelSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2LabelSegment(
    api.GoogleCloudVideointelligenceV1beta2LabelSegment o) {
  buildCounterGoogleCloudVideointelligenceV1beta2LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2LabelSegment < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVideointelligenceV1beta2VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2LabelSegment--;
}

buildUnnamed1988() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1beta2VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1beta2VideoSegment());
  return o;
}

checkUnnamed1988(
    core.List<api.GoogleCloudVideointelligenceV1beta2VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1beta2VideoSegment(o[1]);
}

buildUnnamed1989() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2Track>();
  o.add(buildGoogleCloudVideointelligenceV1beta2Track());
  o.add(buildGoogleCloudVideointelligenceV1beta2Track());
  return o;
}

checkUnnamed1989(core.List<api.GoogleCloudVideointelligenceV1beta2Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2Track(o[0]);
  checkGoogleCloudVideointelligenceV1beta2Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation =
    0;
buildGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation() {
  var o =
      new api.GoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation <
      3) {
    o.entity = buildGoogleCloudVideointelligenceV1beta2Entity();
    o.segments = buildUnnamed1988();
    o.tracks = buildUnnamed1989();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation(
    api.GoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation <
      3) {
    checkGoogleCloudVideointelligenceV1beta2Entity(o.entity);
    checkUnnamed1988(o.segments);
    checkUnnamed1989(o.tracks);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox =
    0;
buildGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox() {
  var o = new api.GoogleCloudVideointelligenceV1beta2NormalizedBoundingBox();
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

checkGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox(
    api.GoogleCloudVideointelligenceV1beta2NormalizedBoundingBox o) {
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox <
      3) {
    unittest.expect(o.bottom, unittest.equals(42.0));
    unittest.expect(o.left, unittest.equals(42.0));
    unittest.expect(o.right, unittest.equals(42.0));
    unittest.expect(o.top, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox--;
}

buildUnnamed1990() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1beta2NormalizedVertex>();
  o.add(buildGoogleCloudVideointelligenceV1beta2NormalizedVertex());
  o.add(buildGoogleCloudVideointelligenceV1beta2NormalizedVertex());
  return o;
}

checkUnnamed1990(
    core.List<api.GoogleCloudVideointelligenceV1beta2NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2NormalizedVertex(o[0]);
  checkGoogleCloudVideointelligenceV1beta2NormalizedVertex(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly =
    0;
buildGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly() {
  var o = new api.GoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly();
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly <
      3) {
    o.vertices = buildUnnamed1990();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly(
    api.GoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly o) {
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly <
      3) {
    checkUnnamed1990(o.vertices);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2NormalizedVertex = 0;
buildGoogleCloudVideointelligenceV1beta2NormalizedVertex() {
  var o = new api.GoogleCloudVideointelligenceV1beta2NormalizedVertex();
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedVertex--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2NormalizedVertex(
    api.GoogleCloudVideointelligenceV1beta2NormalizedVertex o) {
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2NormalizedVertex < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedVertex--;
}

buildUnnamed1991() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1beta2ObjectTrackingFrame>();
  o.add(buildGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame());
  o.add(buildGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame());
  return o;
}

checkUnnamed1991(
    core.List<api.GoogleCloudVideointelligenceV1beta2ObjectTrackingFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame(o[0]);
  checkGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation = 0;
buildGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation();
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation <
      3) {
    o.confidence = 42.0;
    o.entity = buildGoogleCloudVideointelligenceV1beta2Entity();
    o.frames = buildUnnamed1991();
    o.segment = buildGoogleCloudVideointelligenceV1beta2VideoSegment();
    o.trackId = "foo";
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation(
    api.GoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation <
      3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVideointelligenceV1beta2Entity(o.entity);
    checkUnnamed1991(o.frames);
    checkGoogleCloudVideointelligenceV1beta2VideoSegment(o.segment);
    unittest.expect(o.trackId, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame = 0;
buildGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame() {
  var o = new api.GoogleCloudVideointelligenceV1beta2ObjectTrackingFrame();
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame < 3) {
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame(
    api.GoogleCloudVideointelligenceV1beta2ObjectTrackingFrame o) {
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame < 3) {
    checkGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox(
        o.normalizedBoundingBox);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame--;
}

buildUnnamed1992() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2Track>();
  o.add(buildGoogleCloudVideointelligenceV1beta2Track());
  o.add(buildGoogleCloudVideointelligenceV1beta2Track());
  return o;
}

checkUnnamed1992(core.List<api.GoogleCloudVideointelligenceV1beta2Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2Track(o[0]);
  checkGoogleCloudVideointelligenceV1beta2Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation =
    0;
buildGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation() {
  var o =
      new api.GoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation <
      3) {
    o.tracks = buildUnnamed1992();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation <
      3) {
    checkUnnamed1992(o.tracks);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation--;
}

buildUnnamed1993() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2WordInfo>();
  o.add(buildGoogleCloudVideointelligenceV1beta2WordInfo());
  o.add(buildGoogleCloudVideointelligenceV1beta2WordInfo());
  return o;
}

checkUnnamed1993(core.List<api.GoogleCloudVideointelligenceV1beta2WordInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2WordInfo(o[0]);
  checkGoogleCloudVideointelligenceV1beta2WordInfo(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative =
    0;
buildGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative() {
  var o =
      new api.GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative();
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative <
      3) {
    o.confidence = 42.0;
    o.transcript = "foo";
    o.words = buildUnnamed1993();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative(
    api.GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative o) {
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative <
      3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.transcript, unittest.equals('foo'));
    checkUnnamed1993(o.words);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative--;
}

buildUnnamed1994() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative>();
  o.add(buildGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative());
  o.add(buildGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative());
  return o;
}

checkUnnamed1994(
    core.List<
            api.GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative(o[0]);
  checkGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscription = 0;
buildGoogleCloudVideointelligenceV1beta2SpeechTranscription() {
  var o = new api.GoogleCloudVideointelligenceV1beta2SpeechTranscription();
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscription < 3) {
    o.alternatives = buildUnnamed1994();
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscription--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2SpeechTranscription(
    api.GoogleCloudVideointelligenceV1beta2SpeechTranscription o) {
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscription < 3) {
    checkUnnamed1994(o.alternatives);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscription--;
}

buildUnnamed1995() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2TextSegment>();
  o.add(buildGoogleCloudVideointelligenceV1beta2TextSegment());
  o.add(buildGoogleCloudVideointelligenceV1beta2TextSegment());
  return o;
}

checkUnnamed1995(
    core.List<api.GoogleCloudVideointelligenceV1beta2TextSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2TextSegment(o[0]);
  checkGoogleCloudVideointelligenceV1beta2TextSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2TextAnnotation = 0;
buildGoogleCloudVideointelligenceV1beta2TextAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1beta2TextAnnotation();
  buildCounterGoogleCloudVideointelligenceV1beta2TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2TextAnnotation < 3) {
    o.segments = buildUnnamed1995();
    o.text = "foo";
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TextAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2TextAnnotation(
    api.GoogleCloudVideointelligenceV1beta2TextAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta2TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2TextAnnotation < 3) {
    checkUnnamed1995(o.segments);
    unittest.expect(o.text, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TextAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2TextFrame = 0;
buildGoogleCloudVideointelligenceV1beta2TextFrame() {
  var o = new api.GoogleCloudVideointelligenceV1beta2TextFrame();
  buildCounterGoogleCloudVideointelligenceV1beta2TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2TextFrame < 3) {
    o.rotatedBoundingBox =
        buildGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TextFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2TextFrame(
    api.GoogleCloudVideointelligenceV1beta2TextFrame o) {
  buildCounterGoogleCloudVideointelligenceV1beta2TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2TextFrame < 3) {
    checkGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly(
        o.rotatedBoundingBox);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TextFrame--;
}

buildUnnamed1996() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2TextFrame>();
  o.add(buildGoogleCloudVideointelligenceV1beta2TextFrame());
  o.add(buildGoogleCloudVideointelligenceV1beta2TextFrame());
  return o;
}

checkUnnamed1996(
    core.List<api.GoogleCloudVideointelligenceV1beta2TextFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2TextFrame(o[0]);
  checkGoogleCloudVideointelligenceV1beta2TextFrame(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2TextSegment = 0;
buildGoogleCloudVideointelligenceV1beta2TextSegment() {
  var o = new api.GoogleCloudVideointelligenceV1beta2TextSegment();
  buildCounterGoogleCloudVideointelligenceV1beta2TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2TextSegment < 3) {
    o.confidence = 42.0;
    o.frames = buildUnnamed1996();
    o.segment = buildGoogleCloudVideointelligenceV1beta2VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TextSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2TextSegment(
    api.GoogleCloudVideointelligenceV1beta2TextSegment o) {
  buildCounterGoogleCloudVideointelligenceV1beta2TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2TextSegment < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkUnnamed1996(o.frames);
    checkGoogleCloudVideointelligenceV1beta2VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TextSegment--;
}

buildUnnamed1997() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1beta2DetectedAttribute>();
  o.add(buildGoogleCloudVideointelligenceV1beta2DetectedAttribute());
  o.add(buildGoogleCloudVideointelligenceV1beta2DetectedAttribute());
  return o;
}

checkUnnamed1997(
    core.List<api.GoogleCloudVideointelligenceV1beta2DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1beta2DetectedAttribute(o[1]);
}

buildUnnamed1998() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1beta2DetectedLandmark>();
  o.add(buildGoogleCloudVideointelligenceV1beta2DetectedLandmark());
  o.add(buildGoogleCloudVideointelligenceV1beta2DetectedLandmark());
  return o;
}

checkUnnamed1998(
    core.List<api.GoogleCloudVideointelligenceV1beta2DetectedLandmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2DetectedLandmark(o[0]);
  checkGoogleCloudVideointelligenceV1beta2DetectedLandmark(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2TimestampedObject = 0;
buildGoogleCloudVideointelligenceV1beta2TimestampedObject() {
  var o = new api.GoogleCloudVideointelligenceV1beta2TimestampedObject();
  buildCounterGoogleCloudVideointelligenceV1beta2TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2TimestampedObject < 3) {
    o.attributes = buildUnnamed1997();
    o.landmarks = buildUnnamed1998();
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TimestampedObject--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2TimestampedObject(
    api.GoogleCloudVideointelligenceV1beta2TimestampedObject o) {
  buildCounterGoogleCloudVideointelligenceV1beta2TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2TimestampedObject < 3) {
    checkUnnamed1997(o.attributes);
    checkUnnamed1998(o.landmarks);
    checkGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox(
        o.normalizedBoundingBox);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TimestampedObject--;
}

buildUnnamed1999() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1beta2DetectedAttribute>();
  o.add(buildGoogleCloudVideointelligenceV1beta2DetectedAttribute());
  o.add(buildGoogleCloudVideointelligenceV1beta2DetectedAttribute());
  return o;
}

checkUnnamed1999(
    core.List<api.GoogleCloudVideointelligenceV1beta2DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1beta2DetectedAttribute(o[1]);
}

buildUnnamed2000() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1beta2TimestampedObject>();
  o.add(buildGoogleCloudVideointelligenceV1beta2TimestampedObject());
  o.add(buildGoogleCloudVideointelligenceV1beta2TimestampedObject());
  return o;
}

checkUnnamed2000(
    core.List<api.GoogleCloudVideointelligenceV1beta2TimestampedObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2TimestampedObject(o[0]);
  checkGoogleCloudVideointelligenceV1beta2TimestampedObject(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2Track = 0;
buildGoogleCloudVideointelligenceV1beta2Track() {
  var o = new api.GoogleCloudVideointelligenceV1beta2Track();
  buildCounterGoogleCloudVideointelligenceV1beta2Track++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2Track < 3) {
    o.attributes = buildUnnamed1999();
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1beta2VideoSegment();
    o.timestampedObjects = buildUnnamed2000();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2Track--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2Track(
    api.GoogleCloudVideointelligenceV1beta2Track o) {
  buildCounterGoogleCloudVideointelligenceV1beta2Track++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2Track < 3) {
    checkUnnamed1999(o.attributes);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVideointelligenceV1beta2VideoSegment(o.segment);
    checkUnnamed2000(o.timestampedObjects);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2Track--;
}

core.int
    buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress = 0;
buildGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress() {
  var o = new api.GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress();
  buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress <
      3) {
    o.feature = "foo";
    o.inputUri = "foo";
    o.progressPercent = 42;
    o.segment = buildGoogleCloudVideointelligenceV1beta2VideoSegment();
    o.startTime = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress(
    api.GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress o) {
  buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress <
      3) {
    unittest.expect(o.feature, unittest.equals('foo'));
    unittest.expect(o.inputUri, unittest.equals('foo'));
    unittest.expect(o.progressPercent, unittest.equals(42));
    checkGoogleCloudVideointelligenceV1beta2VideoSegment(o.segment);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress--;
}

buildUnnamed2001() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1beta2FaceAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1beta2FaceAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1beta2FaceAnnotation());
  return o;
}

checkUnnamed2001(
    core.List<api.GoogleCloudVideointelligenceV1beta2FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2FaceAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2FaceAnnotation(o[1]);
}

buildUnnamed2002() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation());
  return o;
}

checkUnnamed2002(
    core.List<api.GoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation(o[1]);
}

buildUnnamed2003() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelAnnotation());
  return o;
}

checkUnnamed2003(
    core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[1]);
}

buildUnnamed2004() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation());
  return o;
}

checkUnnamed2004(
    core.List<api.GoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation(o[1]);
}

buildUnnamed2005() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation());
  return o;
}

checkUnnamed2005(
    core.List<api.GoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation(o[1]);
}

buildUnnamed2006() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation());
  return o;
}

checkUnnamed2006(
    core.List<api.GoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation(o[1]);
}

buildUnnamed2007() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelAnnotation());
  return o;
}

checkUnnamed2007(
    core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[1]);
}

buildUnnamed2008() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelAnnotation());
  return o;
}

checkUnnamed2008(
    core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[1]);
}

buildUnnamed2009() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1beta2VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1beta2VideoSegment());
  return o;
}

checkUnnamed2009(
    core.List<api.GoogleCloudVideointelligenceV1beta2VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1beta2VideoSegment(o[1]);
}

buildUnnamed2010() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelAnnotation());
  return o;
}

checkUnnamed2010(
    core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[1]);
}

buildUnnamed2011() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelAnnotation());
  return o;
}

checkUnnamed2011(
    core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[1]);
}

buildUnnamed2012() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1beta2SpeechTranscription>();
  o.add(buildGoogleCloudVideointelligenceV1beta2SpeechTranscription());
  o.add(buildGoogleCloudVideointelligenceV1beta2SpeechTranscription());
  return o;
}

checkUnnamed2012(
    core.List<api.GoogleCloudVideointelligenceV1beta2SpeechTranscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2SpeechTranscription(o[0]);
  checkGoogleCloudVideointelligenceV1beta2SpeechTranscription(o[1]);
}

buildUnnamed2013() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1beta2TextAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1beta2TextAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1beta2TextAnnotation());
  return o;
}

checkUnnamed2013(
    core.List<api.GoogleCloudVideointelligenceV1beta2TextAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2TextAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2TextAnnotation(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationResults =
    0;
buildGoogleCloudVideointelligenceV1beta2VideoAnnotationResults() {
  var o = new api.GoogleCloudVideointelligenceV1beta2VideoAnnotationResults();
  buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationResults <
      3) {
    o.error = buildGoogleRpcStatus();
    o.explicitAnnotation =
        buildGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation();
    o.faceAnnotations = buildUnnamed2001();
    o.faceDetectionAnnotations = buildUnnamed2002();
    o.frameLabelAnnotations = buildUnnamed2003();
    o.inputUri = "foo";
    o.logoRecognitionAnnotations = buildUnnamed2004();
    o.objectAnnotations = buildUnnamed2005();
    o.personDetectionAnnotations = buildUnnamed2006();
    o.segment = buildGoogleCloudVideointelligenceV1beta2VideoSegment();
    o.segmentLabelAnnotations = buildUnnamed2007();
    o.segmentPresenceLabelAnnotations = buildUnnamed2008();
    o.shotAnnotations = buildUnnamed2009();
    o.shotLabelAnnotations = buildUnnamed2010();
    o.shotPresenceLabelAnnotations = buildUnnamed2011();
    o.speechTranscriptions = buildUnnamed2012();
    o.textAnnotations = buildUnnamed2013();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationResults--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2VideoAnnotationResults(
    api.GoogleCloudVideointelligenceV1beta2VideoAnnotationResults o) {
  buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationResults <
      3) {
    checkGoogleRpcStatus(o.error);
    checkGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation(
        o.explicitAnnotation);
    checkUnnamed2001(o.faceAnnotations);
    checkUnnamed2002(o.faceDetectionAnnotations);
    checkUnnamed2003(o.frameLabelAnnotations);
    unittest.expect(o.inputUri, unittest.equals('foo'));
    checkUnnamed2004(o.logoRecognitionAnnotations);
    checkUnnamed2005(o.objectAnnotations);
    checkUnnamed2006(o.personDetectionAnnotations);
    checkGoogleCloudVideointelligenceV1beta2VideoSegment(o.segment);
    checkUnnamed2007(o.segmentLabelAnnotations);
    checkUnnamed2008(o.segmentPresenceLabelAnnotations);
    checkUnnamed2009(o.shotAnnotations);
    checkUnnamed2010(o.shotLabelAnnotations);
    checkUnnamed2011(o.shotPresenceLabelAnnotations);
    checkUnnamed2012(o.speechTranscriptions);
    checkUnnamed2013(o.textAnnotations);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2VideoAnnotationResults--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2VideoSegment = 0;
buildGoogleCloudVideointelligenceV1beta2VideoSegment() {
  var o = new api.GoogleCloudVideointelligenceV1beta2VideoSegment();
  buildCounterGoogleCloudVideointelligenceV1beta2VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2VideoSegment < 3) {
    o.endTimeOffset = "foo";
    o.startTimeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2VideoSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2VideoSegment(
    api.GoogleCloudVideointelligenceV1beta2VideoSegment o) {
  buildCounterGoogleCloudVideointelligenceV1beta2VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2VideoSegment < 3) {
    unittest.expect(o.endTimeOffset, unittest.equals('foo'));
    unittest.expect(o.startTimeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2VideoSegment--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta2WordInfo = 0;
buildGoogleCloudVideointelligenceV1beta2WordInfo() {
  var o = new api.GoogleCloudVideointelligenceV1beta2WordInfo();
  buildCounterGoogleCloudVideointelligenceV1beta2WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2WordInfo < 3) {
    o.confidence = 42.0;
    o.endTime = "foo";
    o.speakerTag = 42;
    o.startTime = "foo";
    o.word = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2WordInfo--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2WordInfo(
    api.GoogleCloudVideointelligenceV1beta2WordInfo o) {
  buildCounterGoogleCloudVideointelligenceV1beta2WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2WordInfo < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.speakerTag, unittest.equals(42));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.word, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2WordInfo--;
}

buildUnnamed2014() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress());
  return o;
}

checkUnnamed2014(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress = 0;
buildGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress();
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress <
      3) {
    o.annotationProgress = buildUnnamed2014();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress(
    api.GoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress <
      3) {
    checkUnnamed2014(o.annotationProgress);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress--;
}

buildUnnamed2015() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults());
  return o;
}

checkUnnamed2015(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse = 0;
buildGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse();
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse <
      3) {
    o.annotationResults = buildUnnamed2015();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse(
    api.GoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse <
      3) {
    checkUnnamed2015(o.annotationResults);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedAttribute = 0;
buildGoogleCloudVideointelligenceV1p1beta1DetectedAttribute() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1DetectedAttribute();
  buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedAttribute < 3) {
    o.confidence = 42.0;
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedAttribute--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1DetectedAttribute(
    api.GoogleCloudVideointelligenceV1p1beta1DetectedAttribute o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedAttribute < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedAttribute--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedLandmark = 0;
buildGoogleCloudVideointelligenceV1p1beta1DetectedLandmark() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1DetectedLandmark();
  buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedLandmark < 3) {
    o.confidence = 42.0;
    o.name = "foo";
    o.point = buildGoogleCloudVideointelligenceV1p1beta1NormalizedVertex();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedLandmark--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1DetectedLandmark(
    api.GoogleCloudVideointelligenceV1p1beta1DetectedLandmark o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedLandmark < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudVideointelligenceV1p1beta1NormalizedVertex(o.point);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1DetectedLandmark--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1Entity = 0;
buildGoogleCloudVideointelligenceV1p1beta1Entity() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1Entity();
  buildCounterGoogleCloudVideointelligenceV1p1beta1Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1Entity < 3) {
    o.description = "foo";
    o.entityId = "foo";
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1Entity--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1Entity(
    api.GoogleCloudVideointelligenceV1p1beta1Entity o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1Entity < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.entityId, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1Entity--;
}

buildUnnamed2016() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame());
  return o;
}

checkUnnamed2016(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation =
    0;
buildGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation() {
  var o =
      new api.GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation <
      3) {
    o.frames = buildUnnamed2016();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation(
    api.GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation <
      3) {
    checkUnnamed2016(o.frames);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame =
    0;
buildGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame();
  buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame <
      3) {
    o.pornographyLikelihood = "foo";
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame(
    api.GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame <
      3) {
    unittest.expect(o.pornographyLikelihood, unittest.equals('foo'));
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame--;
}

buildUnnamed2017() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p1beta1FaceFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1FaceFrame());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1FaceFrame());
  return o;
}

checkUnnamed2017(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1FaceFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1FaceFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1FaceFrame(o[1]);
}

buildUnnamed2018() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p1beta1FaceSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1FaceSegment());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1FaceSegment());
  return o;
}

checkUnnamed2018(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1FaceSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1FaceSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1FaceSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1FaceAnnotation = 0;
buildGoogleCloudVideointelligenceV1p1beta1FaceAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1FaceAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1FaceAnnotation < 3) {
    o.frames = buildUnnamed2017();
    o.segments = buildUnnamed2018();
    o.thumbnail = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1FaceAnnotation(
    api.GoogleCloudVideointelligenceV1p1beta1FaceAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1FaceAnnotation < 3) {
    checkUnnamed2017(o.frames);
    checkUnnamed2018(o.segments);
    unittest.expect(o.thumbnail, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceAnnotation--;
}

buildUnnamed2019() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p1beta1Track>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1Track());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1Track());
  return o;
}

checkUnnamed2019(core.List<api.GoogleCloudVideointelligenceV1p1beta1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1Track(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation =
    0;
buildGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation() {
  var o =
      new api.GoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation <
      3) {
    o.thumbnail = "foo";
    o.tracks = buildUnnamed2019();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation <
      3) {
    unittest.expect(o.thumbnail, unittest.equals('foo'));
    checkUnnamed2019(o.tracks);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation--;
}

buildUnnamed2020() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox());
  return o;
}

checkUnnamed2020(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1FaceFrame = 0;
buildGoogleCloudVideointelligenceV1p1beta1FaceFrame() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1FaceFrame();
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1FaceFrame < 3) {
    o.normalizedBoundingBoxes = buildUnnamed2020();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1FaceFrame(
    api.GoogleCloudVideointelligenceV1p1beta1FaceFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1FaceFrame < 3) {
    checkUnnamed2020(o.normalizedBoundingBoxes);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1FaceSegment = 0;
buildGoogleCloudVideointelligenceV1p1beta1FaceSegment() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1FaceSegment();
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1FaceSegment < 3) {
    o.segment = buildGoogleCloudVideointelligenceV1p1beta1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1FaceSegment(
    api.GoogleCloudVideointelligenceV1p1beta1FaceSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1FaceSegment < 3) {
    checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1FaceSegment--;
}

buildUnnamed2021() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p1beta1Entity>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1Entity());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1Entity());
  return o;
}

checkUnnamed2021(core.List<api.GoogleCloudVideointelligenceV1p1beta1Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1Entity(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1Entity(o[1]);
}

buildUnnamed2022() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelFrame());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelFrame());
  return o;
}

checkUnnamed2022(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LabelFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LabelFrame(o[1]);
}

buildUnnamed2023() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelSegment());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelSegment());
  return o;
}

checkUnnamed2023(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LabelSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LabelSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1LabelAnnotation = 0;
buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1LabelAnnotation < 3) {
    o.categoryEntities = buildUnnamed2021();
    o.entity = buildGoogleCloudVideointelligenceV1p1beta1Entity();
    o.frames = buildUnnamed2022();
    o.segments = buildUnnamed2023();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(
    api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1LabelAnnotation < 3) {
    checkUnnamed2021(o.categoryEntities);
    checkGoogleCloudVideointelligenceV1p1beta1Entity(o.entity);
    checkUnnamed2022(o.frames);
    checkUnnamed2023(o.segments);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1LabelFrame = 0;
buildGoogleCloudVideointelligenceV1p1beta1LabelFrame() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1LabelFrame();
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1LabelFrame < 3) {
    o.confidence = 42.0;
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1LabelFrame(
    api.GoogleCloudVideointelligenceV1p1beta1LabelFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1LabelFrame < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1LabelSegment = 0;
buildGoogleCloudVideointelligenceV1p1beta1LabelSegment() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1LabelSegment();
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1LabelSegment < 3) {
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1p1beta1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1LabelSegment(
    api.GoogleCloudVideointelligenceV1p1beta1LabelSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1LabelSegment < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelSegment--;
}

buildUnnamed2024() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p1beta1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1VideoSegment());
  return o;
}

checkUnnamed2024(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o[1]);
}

buildUnnamed2025() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p1beta1Track>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1Track());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1Track());
  return o;
}

checkUnnamed2025(core.List<api.GoogleCloudVideointelligenceV1p1beta1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1Track(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation =
    0;
buildGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation() {
  var o =
      new api.GoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation <
      3) {
    o.entity = buildGoogleCloudVideointelligenceV1p1beta1Entity();
    o.segments = buildUnnamed2024();
    o.tracks = buildUnnamed2025();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation(
    api.GoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation <
      3) {
    checkGoogleCloudVideointelligenceV1p1beta1Entity(o.entity);
    checkUnnamed2024(o.segments);
    checkUnnamed2025(o.tracks);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation--;
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox = 0;
buildGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox();
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

checkGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox(
    api.GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox <
      3) {
    unittest.expect(o.bottom, unittest.equals(42.0));
    unittest.expect(o.left, unittest.equals(42.0));
    unittest.expect(o.right, unittest.equals(42.0));
    unittest.expect(o.top, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox--;
}

buildUnnamed2026() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p1beta1NormalizedVertex>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1NormalizedVertex());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1NormalizedVertex());
  return o;
}

checkUnnamed2026(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1NormalizedVertex(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1NormalizedVertex(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly = 0;
buildGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly();
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly <
      3) {
    o.vertices = buildUnnamed2026();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly(
    api.GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly <
      3) {
    checkUnnamed2026(o.vertices);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedVertex = 0;
buildGoogleCloudVideointelligenceV1p1beta1NormalizedVertex() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1NormalizedVertex();
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedVertex--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1NormalizedVertex(
    api.GoogleCloudVideointelligenceV1p1beta1NormalizedVertex o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedVertex < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedVertex--;
}

buildUnnamed2027() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame());
  return o;
}

checkUnnamed2027(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation =
    0;
buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation() {
  var o =
      new api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation <
      3) {
    o.confidence = 42.0;
    o.entity = buildGoogleCloudVideointelligenceV1p1beta1Entity();
    o.frames = buildUnnamed2027();
    o.segment = buildGoogleCloudVideointelligenceV1p1beta1VideoSegment();
    o.trackId = "foo";
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation(
    api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation <
      3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVideointelligenceV1p1beta1Entity(o.entity);
    checkUnnamed2027(o.frames);
    checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o.segment);
    unittest.expect(o.trackId, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame =
    0;
buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame();
  buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame <
      3) {
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame(
    api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame <
      3) {
    checkGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox(
        o.normalizedBoundingBox);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame--;
}

buildUnnamed2028() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p1beta1Track>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1Track());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1Track());
  return o;
}

checkUnnamed2028(core.List<api.GoogleCloudVideointelligenceV1p1beta1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1Track(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation =
    0;
buildGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation() {
  var o =
      new api.GoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation <
      3) {
    o.tracks = buildUnnamed2028();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation <
      3) {
    checkUnnamed2028(o.tracks);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation--;
}

buildUnnamed2029() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p1beta1WordInfo>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1WordInfo());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1WordInfo());
  return o;
}

checkUnnamed2029(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1WordInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1WordInfo(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1WordInfo(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative =
    0;
buildGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative() {
  var o = new api
      .GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative();
  buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative <
      3) {
    o.confidence = 42.0;
    o.transcript = "foo";
    o.words = buildUnnamed2029();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative(
    api.GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative <
      3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.transcript, unittest.equals('foo'));
    checkUnnamed2029(o.words);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative--;
}

buildUnnamed2030() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative>();
  o.add(
      buildGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative());
  o.add(
      buildGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative());
  return o;
}

checkUnnamed2030(
    core.List<
            api.GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechTranscription =
    0;
buildGoogleCloudVideointelligenceV1p1beta1SpeechTranscription() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1SpeechTranscription();
  buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechTranscription <
      3) {
    o.alternatives = buildUnnamed2030();
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechTranscription--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1SpeechTranscription(
    api.GoogleCloudVideointelligenceV1p1beta1SpeechTranscription o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechTranscription <
      3) {
    checkUnnamed2030(o.alternatives);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechTranscription--;
}

buildUnnamed2031() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p1beta1TextSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1TextSegment());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1TextSegment());
  return o;
}

checkUnnamed2031(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1TextSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1TextSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1TextSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1TextAnnotation = 0;
buildGoogleCloudVideointelligenceV1p1beta1TextAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1TextAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1TextAnnotation < 3) {
    o.segments = buildUnnamed2031();
    o.text = "foo";
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1TextAnnotation(
    api.GoogleCloudVideointelligenceV1p1beta1TextAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1TextAnnotation < 3) {
    checkUnnamed2031(o.segments);
    unittest.expect(o.text, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1TextFrame = 0;
buildGoogleCloudVideointelligenceV1p1beta1TextFrame() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1TextFrame();
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1TextFrame < 3) {
    o.rotatedBoundingBox =
        buildGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1TextFrame(
    api.GoogleCloudVideointelligenceV1p1beta1TextFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1TextFrame < 3) {
    checkGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly(
        o.rotatedBoundingBox);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextFrame--;
}

buildUnnamed2032() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p1beta1TextFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1TextFrame());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1TextFrame());
  return o;
}

checkUnnamed2032(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1TextFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1TextFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1TextFrame(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1TextSegment = 0;
buildGoogleCloudVideointelligenceV1p1beta1TextSegment() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1TextSegment();
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1TextSegment < 3) {
    o.confidence = 42.0;
    o.frames = buildUnnamed2032();
    o.segment = buildGoogleCloudVideointelligenceV1p1beta1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1TextSegment(
    api.GoogleCloudVideointelligenceV1p1beta1TextSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1TextSegment < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkUnnamed2032(o.frames);
    checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextSegment--;
}

buildUnnamed2033() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p1beta1DetectedAttribute>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1DetectedAttribute());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1DetectedAttribute());
  return o;
}

checkUnnamed2033(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1DetectedAttribute(o[1]);
}

buildUnnamed2034() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p1beta1DetectedLandmark>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1DetectedLandmark());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1DetectedLandmark());
  return o;
}

checkUnnamed2034(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1DetectedLandmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1DetectedLandmark(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1DetectedLandmark(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1TimestampedObject = 0;
buildGoogleCloudVideointelligenceV1p1beta1TimestampedObject() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1TimestampedObject();
  buildCounterGoogleCloudVideointelligenceV1p1beta1TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1TimestampedObject < 3) {
    o.attributes = buildUnnamed2033();
    o.landmarks = buildUnnamed2034();
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1TimestampedObject--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1TimestampedObject(
    api.GoogleCloudVideointelligenceV1p1beta1TimestampedObject o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1TimestampedObject < 3) {
    checkUnnamed2033(o.attributes);
    checkUnnamed2034(o.landmarks);
    checkGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox(
        o.normalizedBoundingBox);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1TimestampedObject--;
}

buildUnnamed2035() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p1beta1DetectedAttribute>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1DetectedAttribute());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1DetectedAttribute());
  return o;
}

checkUnnamed2035(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1DetectedAttribute(o[1]);
}

buildUnnamed2036() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p1beta1TimestampedObject>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1TimestampedObject());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1TimestampedObject());
  return o;
}

checkUnnamed2036(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1TimestampedObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1TimestampedObject(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1TimestampedObject(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1Track = 0;
buildGoogleCloudVideointelligenceV1p1beta1Track() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1Track();
  buildCounterGoogleCloudVideointelligenceV1p1beta1Track++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1Track < 3) {
    o.attributes = buildUnnamed2035();
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1p1beta1VideoSegment();
    o.timestampedObjects = buildUnnamed2036();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1Track--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1Track(
    api.GoogleCloudVideointelligenceV1p1beta1Track o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1Track++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1Track < 3) {
    checkUnnamed2035(o.attributes);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o.segment);
    checkUnnamed2036(o.timestampedObjects);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1Track--;
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress =
    0;
buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress() {
  var o =
      new api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress();
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress <
      3) {
    o.feature = "foo";
    o.inputUri = "foo";
    o.progressPercent = 42;
    o.segment = buildGoogleCloudVideointelligenceV1p1beta1VideoSegment();
    o.startTime = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress(
    api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress <
      3) {
    unittest.expect(o.feature, unittest.equals('foo'));
    unittest.expect(o.inputUri, unittest.equals('foo'));
    unittest.expect(o.progressPercent, unittest.equals(42));
    checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o.segment);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress--;
}

buildUnnamed2037() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p1beta1FaceAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1FaceAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1FaceAnnotation());
  return o;
}

checkUnnamed2037(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1FaceAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1FaceAnnotation(o[1]);
}

buildUnnamed2038() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation());
  return o;
}

checkUnnamed2038(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation(o[1]);
}

buildUnnamed2039() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation());
  return o;
}

checkUnnamed2039(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[1]);
}

buildUnnamed2040() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation());
  return o;
}

checkUnnamed2040(
    core.List<
            api.GoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation(o[1]);
}

buildUnnamed2041() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation());
  return o;
}

checkUnnamed2041(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation(o[1]);
}

buildUnnamed2042() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation());
  return o;
}

checkUnnamed2042(
    core.List<
            api.GoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation(o[1]);
}

buildUnnamed2043() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation());
  return o;
}

checkUnnamed2043(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[1]);
}

buildUnnamed2044() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation());
  return o;
}

checkUnnamed2044(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[1]);
}

buildUnnamed2045() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p1beta1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1VideoSegment());
  return o;
}

checkUnnamed2045(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o[1]);
}

buildUnnamed2046() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation());
  return o;
}

checkUnnamed2046(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[1]);
}

buildUnnamed2047() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation());
  return o;
}

checkUnnamed2047(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[1]);
}

buildUnnamed2048() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p1beta1SpeechTranscription>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1SpeechTranscription());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1SpeechTranscription());
  return o;
}

checkUnnamed2048(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1SpeechTranscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1SpeechTranscription(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1SpeechTranscription(o[1]);
}

buildUnnamed2049() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p1beta1TextAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1TextAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1TextAnnotation());
  return o;
}

checkUnnamed2049(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1TextAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1TextAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1TextAnnotation(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults = 0;
buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults();
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults <
      3) {
    o.error = buildGoogleRpcStatus();
    o.explicitAnnotation =
        buildGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation();
    o.faceAnnotations = buildUnnamed2037();
    o.faceDetectionAnnotations = buildUnnamed2038();
    o.frameLabelAnnotations = buildUnnamed2039();
    o.inputUri = "foo";
    o.logoRecognitionAnnotations = buildUnnamed2040();
    o.objectAnnotations = buildUnnamed2041();
    o.personDetectionAnnotations = buildUnnamed2042();
    o.segment = buildGoogleCloudVideointelligenceV1p1beta1VideoSegment();
    o.segmentLabelAnnotations = buildUnnamed2043();
    o.segmentPresenceLabelAnnotations = buildUnnamed2044();
    o.shotAnnotations = buildUnnamed2045();
    o.shotLabelAnnotations = buildUnnamed2046();
    o.shotPresenceLabelAnnotations = buildUnnamed2047();
    o.speechTranscriptions = buildUnnamed2048();
    o.textAnnotations = buildUnnamed2049();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults(
    api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults <
      3) {
    checkGoogleRpcStatus(o.error);
    checkGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation(
        o.explicitAnnotation);
    checkUnnamed2037(o.faceAnnotations);
    checkUnnamed2038(o.faceDetectionAnnotations);
    checkUnnamed2039(o.frameLabelAnnotations);
    unittest.expect(o.inputUri, unittest.equals('foo'));
    checkUnnamed2040(o.logoRecognitionAnnotations);
    checkUnnamed2041(o.objectAnnotations);
    checkUnnamed2042(o.personDetectionAnnotations);
    checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o.segment);
    checkUnnamed2043(o.segmentLabelAnnotations);
    checkUnnamed2044(o.segmentPresenceLabelAnnotations);
    checkUnnamed2045(o.shotAnnotations);
    checkUnnamed2046(o.shotLabelAnnotations);
    checkUnnamed2047(o.shotPresenceLabelAnnotations);
    checkUnnamed2048(o.speechTranscriptions);
    checkUnnamed2049(o.textAnnotations);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1VideoSegment = 0;
buildGoogleCloudVideointelligenceV1p1beta1VideoSegment() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1VideoSegment();
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1VideoSegment < 3) {
    o.endTimeOffset = "foo";
    o.startTimeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(
    api.GoogleCloudVideointelligenceV1p1beta1VideoSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1VideoSegment < 3) {
    unittest.expect(o.endTimeOffset, unittest.equals('foo'));
    unittest.expect(o.startTimeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1VideoSegment--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p1beta1WordInfo = 0;
buildGoogleCloudVideointelligenceV1p1beta1WordInfo() {
  var o = new api.GoogleCloudVideointelligenceV1p1beta1WordInfo();
  buildCounterGoogleCloudVideointelligenceV1p1beta1WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1WordInfo < 3) {
    o.confidence = 42.0;
    o.endTime = "foo";
    o.speakerTag = 42;
    o.startTime = "foo";
    o.word = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1WordInfo--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1WordInfo(
    api.GoogleCloudVideointelligenceV1p1beta1WordInfo o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1WordInfo < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.speakerTag, unittest.equals(42));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.word, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1WordInfo--;
}

buildUnnamed2050() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress());
  return o;
}

checkUnnamed2050(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress = 0;
buildGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress();
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress <
      3) {
    o.annotationProgress = buildUnnamed2050();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress(
    api.GoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress <
      3) {
    checkUnnamed2050(o.annotationProgress);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress--;
}

buildUnnamed2051() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults());
  return o;
}

checkUnnamed2051(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse = 0;
buildGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse();
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse <
      3) {
    o.annotationResults = buildUnnamed2051();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse(
    api.GoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse <
      3) {
    checkUnnamed2051(o.annotationResults);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedAttribute = 0;
buildGoogleCloudVideointelligenceV1p2beta1DetectedAttribute() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1DetectedAttribute();
  buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedAttribute < 3) {
    o.confidence = 42.0;
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedAttribute--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1DetectedAttribute(
    api.GoogleCloudVideointelligenceV1p2beta1DetectedAttribute o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedAttribute < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedAttribute--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedLandmark = 0;
buildGoogleCloudVideointelligenceV1p2beta1DetectedLandmark() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1DetectedLandmark();
  buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedLandmark < 3) {
    o.confidence = 42.0;
    o.name = "foo";
    o.point = buildGoogleCloudVideointelligenceV1p2beta1NormalizedVertex();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedLandmark--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1DetectedLandmark(
    api.GoogleCloudVideointelligenceV1p2beta1DetectedLandmark o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedLandmark < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudVideointelligenceV1p2beta1NormalizedVertex(o.point);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1DetectedLandmark--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1Entity = 0;
buildGoogleCloudVideointelligenceV1p2beta1Entity() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1Entity();
  buildCounterGoogleCloudVideointelligenceV1p2beta1Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1Entity < 3) {
    o.description = "foo";
    o.entityId = "foo";
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1Entity--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1Entity(
    api.GoogleCloudVideointelligenceV1p2beta1Entity o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1Entity < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.entityId, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1Entity--;
}

buildUnnamed2052() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame());
  return o;
}

checkUnnamed2052(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation =
    0;
buildGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation() {
  var o =
      new api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation <
      3) {
    o.frames = buildUnnamed2052();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation(
    api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation <
      3) {
    checkUnnamed2052(o.frames);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame =
    0;
buildGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame();
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame <
      3) {
    o.pornographyLikelihood = "foo";
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame(
    api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame <
      3) {
    unittest.expect(o.pornographyLikelihood, unittest.equals('foo'));
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame--;
}

buildUnnamed2053() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p2beta1FaceFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1FaceFrame());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1FaceFrame());
  return o;
}

checkUnnamed2053(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1FaceFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1FaceFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1FaceFrame(o[1]);
}

buildUnnamed2054() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p2beta1FaceSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1FaceSegment());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1FaceSegment());
  return o;
}

checkUnnamed2054(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1FaceSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1FaceSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1FaceSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1FaceAnnotation = 0;
buildGoogleCloudVideointelligenceV1p2beta1FaceAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1FaceAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1FaceAnnotation < 3) {
    o.frames = buildUnnamed2053();
    o.segments = buildUnnamed2054();
    o.thumbnail = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1FaceAnnotation(
    api.GoogleCloudVideointelligenceV1p2beta1FaceAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1FaceAnnotation < 3) {
    checkUnnamed2053(o.frames);
    checkUnnamed2054(o.segments);
    unittest.expect(o.thumbnail, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceAnnotation--;
}

buildUnnamed2055() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p2beta1Track>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1Track());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1Track());
  return o;
}

checkUnnamed2055(core.List<api.GoogleCloudVideointelligenceV1p2beta1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1Track(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation =
    0;
buildGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation() {
  var o =
      new api.GoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation <
      3) {
    o.thumbnail = "foo";
    o.tracks = buildUnnamed2055();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation <
      3) {
    unittest.expect(o.thumbnail, unittest.equals('foo'));
    checkUnnamed2055(o.tracks);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation--;
}

buildUnnamed2056() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox());
  return o;
}

checkUnnamed2056(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1FaceFrame = 0;
buildGoogleCloudVideointelligenceV1p2beta1FaceFrame() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1FaceFrame();
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1FaceFrame < 3) {
    o.normalizedBoundingBoxes = buildUnnamed2056();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1FaceFrame(
    api.GoogleCloudVideointelligenceV1p2beta1FaceFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1FaceFrame < 3) {
    checkUnnamed2056(o.normalizedBoundingBoxes);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1FaceSegment = 0;
buildGoogleCloudVideointelligenceV1p2beta1FaceSegment() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1FaceSegment();
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1FaceSegment < 3) {
    o.segment = buildGoogleCloudVideointelligenceV1p2beta1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1FaceSegment(
    api.GoogleCloudVideointelligenceV1p2beta1FaceSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1FaceSegment < 3) {
    checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1FaceSegment--;
}

buildUnnamed2057() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p2beta1Entity>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1Entity());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1Entity());
  return o;
}

checkUnnamed2057(core.List<api.GoogleCloudVideointelligenceV1p2beta1Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1Entity(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1Entity(o[1]);
}

buildUnnamed2058() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelFrame());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelFrame());
  return o;
}

checkUnnamed2058(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LabelFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LabelFrame(o[1]);
}

buildUnnamed2059() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelSegment());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelSegment());
  return o;
}

checkUnnamed2059(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LabelSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LabelSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1LabelAnnotation = 0;
buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1LabelAnnotation < 3) {
    o.categoryEntities = buildUnnamed2057();
    o.entity = buildGoogleCloudVideointelligenceV1p2beta1Entity();
    o.frames = buildUnnamed2058();
    o.segments = buildUnnamed2059();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(
    api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1LabelAnnotation < 3) {
    checkUnnamed2057(o.categoryEntities);
    checkGoogleCloudVideointelligenceV1p2beta1Entity(o.entity);
    checkUnnamed2058(o.frames);
    checkUnnamed2059(o.segments);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1LabelFrame = 0;
buildGoogleCloudVideointelligenceV1p2beta1LabelFrame() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1LabelFrame();
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1LabelFrame < 3) {
    o.confidence = 42.0;
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1LabelFrame(
    api.GoogleCloudVideointelligenceV1p2beta1LabelFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1LabelFrame < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1LabelSegment = 0;
buildGoogleCloudVideointelligenceV1p2beta1LabelSegment() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1LabelSegment();
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1LabelSegment < 3) {
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1p2beta1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1LabelSegment(
    api.GoogleCloudVideointelligenceV1p2beta1LabelSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1LabelSegment < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelSegment--;
}

buildUnnamed2060() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p2beta1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1VideoSegment());
  return o;
}

checkUnnamed2060(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o[1]);
}

buildUnnamed2061() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p2beta1Track>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1Track());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1Track());
  return o;
}

checkUnnamed2061(core.List<api.GoogleCloudVideointelligenceV1p2beta1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1Track(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation =
    0;
buildGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation() {
  var o =
      new api.GoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation <
      3) {
    o.entity = buildGoogleCloudVideointelligenceV1p2beta1Entity();
    o.segments = buildUnnamed2060();
    o.tracks = buildUnnamed2061();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation(
    api.GoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation <
      3) {
    checkGoogleCloudVideointelligenceV1p2beta1Entity(o.entity);
    checkUnnamed2060(o.segments);
    checkUnnamed2061(o.tracks);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation--;
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox = 0;
buildGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox();
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

checkGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox(
    api.GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox <
      3) {
    unittest.expect(o.bottom, unittest.equals(42.0));
    unittest.expect(o.left, unittest.equals(42.0));
    unittest.expect(o.right, unittest.equals(42.0));
    unittest.expect(o.top, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox--;
}

buildUnnamed2062() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p2beta1NormalizedVertex>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1NormalizedVertex());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1NormalizedVertex());
  return o;
}

checkUnnamed2062(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1NormalizedVertex(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1NormalizedVertex(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly = 0;
buildGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly();
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly <
      3) {
    o.vertices = buildUnnamed2062();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly(
    api.GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly <
      3) {
    checkUnnamed2062(o.vertices);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedVertex = 0;
buildGoogleCloudVideointelligenceV1p2beta1NormalizedVertex() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1NormalizedVertex();
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedVertex--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1NormalizedVertex(
    api.GoogleCloudVideointelligenceV1p2beta1NormalizedVertex o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedVertex < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedVertex--;
}

buildUnnamed2063() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame());
  return o;
}

checkUnnamed2063(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation =
    0;
buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation() {
  var o =
      new api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation <
      3) {
    o.confidence = 42.0;
    o.entity = buildGoogleCloudVideointelligenceV1p2beta1Entity();
    o.frames = buildUnnamed2063();
    o.segment = buildGoogleCloudVideointelligenceV1p2beta1VideoSegment();
    o.trackId = "foo";
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation(
    api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation <
      3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVideointelligenceV1p2beta1Entity(o.entity);
    checkUnnamed2063(o.frames);
    checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o.segment);
    unittest.expect(o.trackId, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame =
    0;
buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame();
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame <
      3) {
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame(
    api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame <
      3) {
    checkGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox(
        o.normalizedBoundingBox);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame--;
}

buildUnnamed2064() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p2beta1Track>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1Track());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1Track());
  return o;
}

checkUnnamed2064(core.List<api.GoogleCloudVideointelligenceV1p2beta1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1Track(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation =
    0;
buildGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation() {
  var o =
      new api.GoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation <
      3) {
    o.tracks = buildUnnamed2064();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation <
      3) {
    checkUnnamed2064(o.tracks);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation--;
}

buildUnnamed2065() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p2beta1WordInfo>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1WordInfo());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1WordInfo());
  return o;
}

checkUnnamed2065(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1WordInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1WordInfo(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1WordInfo(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative =
    0;
buildGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative() {
  var o = new api
      .GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative();
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative <
      3) {
    o.confidence = 42.0;
    o.transcript = "foo";
    o.words = buildUnnamed2065();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative(
    api.GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative <
      3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.transcript, unittest.equals('foo'));
    checkUnnamed2065(o.words);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative--;
}

buildUnnamed2066() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative>();
  o.add(
      buildGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative());
  o.add(
      buildGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative());
  return o;
}

checkUnnamed2066(
    core.List<
            api.GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscription =
    0;
buildGoogleCloudVideointelligenceV1p2beta1SpeechTranscription() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1SpeechTranscription();
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscription <
      3) {
    o.alternatives = buildUnnamed2066();
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscription--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1SpeechTranscription(
    api.GoogleCloudVideointelligenceV1p2beta1SpeechTranscription o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscription <
      3) {
    checkUnnamed2066(o.alternatives);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscription--;
}

buildUnnamed2067() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p2beta1TextSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1TextSegment());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1TextSegment());
  return o;
}

checkUnnamed2067(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1TextSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1TextSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1TextSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1TextAnnotation = 0;
buildGoogleCloudVideointelligenceV1p2beta1TextAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1TextAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1TextAnnotation < 3) {
    o.segments = buildUnnamed2067();
    o.text = "foo";
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1TextAnnotation(
    api.GoogleCloudVideointelligenceV1p2beta1TextAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1TextAnnotation < 3) {
    checkUnnamed2067(o.segments);
    unittest.expect(o.text, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1TextFrame = 0;
buildGoogleCloudVideointelligenceV1p2beta1TextFrame() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1TextFrame();
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1TextFrame < 3) {
    o.rotatedBoundingBox =
        buildGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1TextFrame(
    api.GoogleCloudVideointelligenceV1p2beta1TextFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1TextFrame < 3) {
    checkGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly(
        o.rotatedBoundingBox);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextFrame--;
}

buildUnnamed2068() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p2beta1TextFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1TextFrame());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1TextFrame());
  return o;
}

checkUnnamed2068(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1TextFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1TextFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1TextFrame(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1TextSegment = 0;
buildGoogleCloudVideointelligenceV1p2beta1TextSegment() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1TextSegment();
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1TextSegment < 3) {
    o.confidence = 42.0;
    o.frames = buildUnnamed2068();
    o.segment = buildGoogleCloudVideointelligenceV1p2beta1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1TextSegment(
    api.GoogleCloudVideointelligenceV1p2beta1TextSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1TextSegment < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkUnnamed2068(o.frames);
    checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextSegment--;
}

buildUnnamed2069() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p2beta1DetectedAttribute>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1DetectedAttribute());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1DetectedAttribute());
  return o;
}

checkUnnamed2069(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1DetectedAttribute(o[1]);
}

buildUnnamed2070() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p2beta1DetectedLandmark>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1DetectedLandmark());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1DetectedLandmark());
  return o;
}

checkUnnamed2070(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1DetectedLandmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1DetectedLandmark(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1DetectedLandmark(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1TimestampedObject = 0;
buildGoogleCloudVideointelligenceV1p2beta1TimestampedObject() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1TimestampedObject();
  buildCounterGoogleCloudVideointelligenceV1p2beta1TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1TimestampedObject < 3) {
    o.attributes = buildUnnamed2069();
    o.landmarks = buildUnnamed2070();
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TimestampedObject--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1TimestampedObject(
    api.GoogleCloudVideointelligenceV1p2beta1TimestampedObject o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1TimestampedObject < 3) {
    checkUnnamed2069(o.attributes);
    checkUnnamed2070(o.landmarks);
    checkGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox(
        o.normalizedBoundingBox);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TimestampedObject--;
}

buildUnnamed2071() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p2beta1DetectedAttribute>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1DetectedAttribute());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1DetectedAttribute());
  return o;
}

checkUnnamed2071(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1DetectedAttribute(o[1]);
}

buildUnnamed2072() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p2beta1TimestampedObject>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1TimestampedObject());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1TimestampedObject());
  return o;
}

checkUnnamed2072(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1TimestampedObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1TimestampedObject(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1TimestampedObject(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1Track = 0;
buildGoogleCloudVideointelligenceV1p2beta1Track() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1Track();
  buildCounterGoogleCloudVideointelligenceV1p2beta1Track++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1Track < 3) {
    o.attributes = buildUnnamed2071();
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1p2beta1VideoSegment();
    o.timestampedObjects = buildUnnamed2072();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1Track--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1Track(
    api.GoogleCloudVideointelligenceV1p2beta1Track o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1Track++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1Track < 3) {
    checkUnnamed2071(o.attributes);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o.segment);
    checkUnnamed2072(o.timestampedObjects);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1Track--;
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress =
    0;
buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress() {
  var o =
      new api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress();
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress <
      3) {
    o.feature = "foo";
    o.inputUri = "foo";
    o.progressPercent = 42;
    o.segment = buildGoogleCloudVideointelligenceV1p2beta1VideoSegment();
    o.startTime = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress(
    api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress <
      3) {
    unittest.expect(o.feature, unittest.equals('foo'));
    unittest.expect(o.inputUri, unittest.equals('foo'));
    unittest.expect(o.progressPercent, unittest.equals(42));
    checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o.segment);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress--;
}

buildUnnamed2073() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p2beta1FaceAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1FaceAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1FaceAnnotation());
  return o;
}

checkUnnamed2073(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1FaceAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1FaceAnnotation(o[1]);
}

buildUnnamed2074() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation());
  return o;
}

checkUnnamed2074(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation(o[1]);
}

buildUnnamed2075() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation());
  return o;
}

checkUnnamed2075(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[1]);
}

buildUnnamed2076() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation());
  return o;
}

checkUnnamed2076(
    core.List<
            api.GoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation(o[1]);
}

buildUnnamed2077() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation());
  return o;
}

checkUnnamed2077(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation(o[1]);
}

buildUnnamed2078() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation());
  return o;
}

checkUnnamed2078(
    core.List<
            api.GoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation(o[1]);
}

buildUnnamed2079() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation());
  return o;
}

checkUnnamed2079(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[1]);
}

buildUnnamed2080() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation());
  return o;
}

checkUnnamed2080(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[1]);
}

buildUnnamed2081() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p2beta1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1VideoSegment());
  return o;
}

checkUnnamed2081(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o[1]);
}

buildUnnamed2082() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation());
  return o;
}

checkUnnamed2082(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[1]);
}

buildUnnamed2083() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation());
  return o;
}

checkUnnamed2083(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[1]);
}

buildUnnamed2084() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p2beta1SpeechTranscription>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1SpeechTranscription());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1SpeechTranscription());
  return o;
}

checkUnnamed2084(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1SpeechTranscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1SpeechTranscription(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1SpeechTranscription(o[1]);
}

buildUnnamed2085() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p2beta1TextAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1TextAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1TextAnnotation());
  return o;
}

checkUnnamed2085(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1TextAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1TextAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1TextAnnotation(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults = 0;
buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults();
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults <
      3) {
    o.error = buildGoogleRpcStatus();
    o.explicitAnnotation =
        buildGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation();
    o.faceAnnotations = buildUnnamed2073();
    o.faceDetectionAnnotations = buildUnnamed2074();
    o.frameLabelAnnotations = buildUnnamed2075();
    o.inputUri = "foo";
    o.logoRecognitionAnnotations = buildUnnamed2076();
    o.objectAnnotations = buildUnnamed2077();
    o.personDetectionAnnotations = buildUnnamed2078();
    o.segment = buildGoogleCloudVideointelligenceV1p2beta1VideoSegment();
    o.segmentLabelAnnotations = buildUnnamed2079();
    o.segmentPresenceLabelAnnotations = buildUnnamed2080();
    o.shotAnnotations = buildUnnamed2081();
    o.shotLabelAnnotations = buildUnnamed2082();
    o.shotPresenceLabelAnnotations = buildUnnamed2083();
    o.speechTranscriptions = buildUnnamed2084();
    o.textAnnotations = buildUnnamed2085();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults(
    api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults <
      3) {
    checkGoogleRpcStatus(o.error);
    checkGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation(
        o.explicitAnnotation);
    checkUnnamed2073(o.faceAnnotations);
    checkUnnamed2074(o.faceDetectionAnnotations);
    checkUnnamed2075(o.frameLabelAnnotations);
    unittest.expect(o.inputUri, unittest.equals('foo'));
    checkUnnamed2076(o.logoRecognitionAnnotations);
    checkUnnamed2077(o.objectAnnotations);
    checkUnnamed2078(o.personDetectionAnnotations);
    checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o.segment);
    checkUnnamed2079(o.segmentLabelAnnotations);
    checkUnnamed2080(o.segmentPresenceLabelAnnotations);
    checkUnnamed2081(o.shotAnnotations);
    checkUnnamed2082(o.shotLabelAnnotations);
    checkUnnamed2083(o.shotPresenceLabelAnnotations);
    checkUnnamed2084(o.speechTranscriptions);
    checkUnnamed2085(o.textAnnotations);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1VideoSegment = 0;
buildGoogleCloudVideointelligenceV1p2beta1VideoSegment() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1VideoSegment();
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1VideoSegment < 3) {
    o.endTimeOffset = "foo";
    o.startTimeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(
    api.GoogleCloudVideointelligenceV1p2beta1VideoSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1VideoSegment < 3) {
    unittest.expect(o.endTimeOffset, unittest.equals('foo'));
    unittest.expect(o.startTimeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1VideoSegment--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p2beta1WordInfo = 0;
buildGoogleCloudVideointelligenceV1p2beta1WordInfo() {
  var o = new api.GoogleCloudVideointelligenceV1p2beta1WordInfo();
  buildCounterGoogleCloudVideointelligenceV1p2beta1WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1WordInfo < 3) {
    o.confidence = 42.0;
    o.endTime = "foo";
    o.speakerTag = 42;
    o.startTime = "foo";
    o.word = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1WordInfo--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1WordInfo(
    api.GoogleCloudVideointelligenceV1p2beta1WordInfo o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1WordInfo < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.speakerTag, unittest.equals(42));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.word, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1WordInfo--;
}

buildUnnamed2086() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress());
  return o;
}

checkUnnamed2086(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress = 0;
buildGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress();
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress <
      3) {
    o.annotationProgress = buildUnnamed2086();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress(
    api.GoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress <
      3) {
    checkUnnamed2086(o.annotationProgress);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress--;
}

buildUnnamed2087() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults());
  return o;
}

checkUnnamed2087(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse = 0;
buildGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse();
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse <
      3) {
    o.annotationResults = buildUnnamed2087();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse(
    api.GoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse <
      3) {
    checkUnnamed2087(o.annotationResults);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1Celebrity = 0;
buildGoogleCloudVideointelligenceV1p3beta1Celebrity() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1Celebrity();
  buildCounterGoogleCloudVideointelligenceV1p3beta1Celebrity++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1Celebrity < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.name = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1Celebrity--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1Celebrity(
    api.GoogleCloudVideointelligenceV1p3beta1Celebrity o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1Celebrity++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1Celebrity < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1Celebrity--;
}

buildUnnamed2088() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1CelebrityTrack>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1CelebrityTrack());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1CelebrityTrack());
  return o;
}

checkUnnamed2088(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1CelebrityTrack> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1CelebrityTrack(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1CelebrityTrack(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation =
    0;
buildGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation() {
  var o = new api
      .GoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation <
      3) {
    o.celebrityTracks = buildUnnamed2088();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation <
      3) {
    checkUnnamed2088(o.celebrityTracks);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation--;
}

buildUnnamed2089() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity());
  return o;
}

checkUnnamed2089(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityTrack = 0;
buildGoogleCloudVideointelligenceV1p3beta1CelebrityTrack() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1CelebrityTrack();
  buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityTrack++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityTrack < 3) {
    o.celebrities = buildUnnamed2089();
    o.faceTrack = buildGoogleCloudVideointelligenceV1p3beta1Track();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityTrack--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1CelebrityTrack(
    api.GoogleCloudVideointelligenceV1p3beta1CelebrityTrack o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityTrack++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityTrack < 3) {
    checkUnnamed2089(o.celebrities);
    checkGoogleCloudVideointelligenceV1p3beta1Track(o.faceTrack);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1CelebrityTrack--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedAttribute = 0;
buildGoogleCloudVideointelligenceV1p3beta1DetectedAttribute() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1DetectedAttribute();
  buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedAttribute < 3) {
    o.confidence = 42.0;
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedAttribute--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(
    api.GoogleCloudVideointelligenceV1p3beta1DetectedAttribute o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedAttribute++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedAttribute < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedAttribute--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedLandmark = 0;
buildGoogleCloudVideointelligenceV1p3beta1DetectedLandmark() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1DetectedLandmark();
  buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedLandmark < 3) {
    o.confidence = 42.0;
    o.name = "foo";
    o.point = buildGoogleCloudVideointelligenceV1p3beta1NormalizedVertex();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedLandmark--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1DetectedLandmark(
    api.GoogleCloudVideointelligenceV1p3beta1DetectedLandmark o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedLandmark++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedLandmark < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGoogleCloudVideointelligenceV1p3beta1NormalizedVertex(o.point);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1DetectedLandmark--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1Entity = 0;
buildGoogleCloudVideointelligenceV1p3beta1Entity() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1Entity();
  buildCounterGoogleCloudVideointelligenceV1p3beta1Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1Entity < 3) {
    o.description = "foo";
    o.entityId = "foo";
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1Entity--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1Entity(
    api.GoogleCloudVideointelligenceV1p3beta1Entity o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1Entity++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1Entity < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.entityId, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1Entity--;
}

buildUnnamed2090() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame());
  return o;
}

checkUnnamed2090(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation =
    0;
buildGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation() {
  var o =
      new api.GoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation <
      3) {
    o.frames = buildUnnamed2090();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation <
      3) {
    checkUnnamed2090(o.frames);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame =
    0;
buildGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame();
  buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame <
      3) {
    o.pornographyLikelihood = "foo";
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame(
    api.GoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame <
      3) {
    unittest.expect(o.pornographyLikelihood, unittest.equals('foo'));
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame--;
}

buildUnnamed2091() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p3beta1FaceFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1FaceFrame());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1FaceFrame());
  return o;
}

checkUnnamed2091(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1FaceFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1FaceFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1FaceFrame(o[1]);
}

buildUnnamed2092() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p3beta1FaceSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1FaceSegment());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1FaceSegment());
  return o;
}

checkUnnamed2092(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1FaceSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1FaceSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1FaceSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1FaceAnnotation = 0;
buildGoogleCloudVideointelligenceV1p3beta1FaceAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1FaceAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1FaceAnnotation < 3) {
    o.frames = buildUnnamed2091();
    o.segments = buildUnnamed2092();
    o.thumbnail = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1FaceAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1FaceAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1FaceAnnotation < 3) {
    checkUnnamed2091(o.frames);
    checkUnnamed2092(o.segments);
    unittest.expect(o.thumbnail, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceAnnotation--;
}

buildUnnamed2093() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p3beta1Track>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1Track());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1Track());
  return o;
}

checkUnnamed2093(core.List<api.GoogleCloudVideointelligenceV1p3beta1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1Track(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation =
    0;
buildGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation() {
  var o =
      new api.GoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation <
      3) {
    o.thumbnail = "foo";
    o.tracks = buildUnnamed2093();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation <
      3) {
    unittest.expect(o.thumbnail, unittest.equals('foo'));
    checkUnnamed2093(o.tracks);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation--;
}

buildUnnamed2094() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox());
  return o;
}

checkUnnamed2094(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1FaceFrame = 0;
buildGoogleCloudVideointelligenceV1p3beta1FaceFrame() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1FaceFrame();
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1FaceFrame < 3) {
    o.normalizedBoundingBoxes = buildUnnamed2094();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1FaceFrame(
    api.GoogleCloudVideointelligenceV1p3beta1FaceFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1FaceFrame < 3) {
    checkUnnamed2094(o.normalizedBoundingBoxes);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1FaceSegment = 0;
buildGoogleCloudVideointelligenceV1p3beta1FaceSegment() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1FaceSegment();
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1FaceSegment < 3) {
    o.segment = buildGoogleCloudVideointelligenceV1p3beta1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1FaceSegment(
    api.GoogleCloudVideointelligenceV1p3beta1FaceSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1FaceSegment < 3) {
    checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1FaceSegment--;
}

buildUnnamed2095() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p3beta1Entity>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1Entity());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1Entity());
  return o;
}

checkUnnamed2095(core.List<api.GoogleCloudVideointelligenceV1p3beta1Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1Entity(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1Entity(o[1]);
}

buildUnnamed2096() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelFrame());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelFrame());
  return o;
}

checkUnnamed2096(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelFrame(o[1]);
}

buildUnnamed2097() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelSegment());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelSegment());
  return o;
}

checkUnnamed2097(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1LabelAnnotation = 0;
buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1LabelAnnotation < 3) {
    o.categoryEntities = buildUnnamed2095();
    o.entity = buildGoogleCloudVideointelligenceV1p3beta1Entity();
    o.frames = buildUnnamed2096();
    o.segments = buildUnnamed2097();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1LabelAnnotation < 3) {
    checkUnnamed2095(o.categoryEntities);
    checkGoogleCloudVideointelligenceV1p3beta1Entity(o.entity);
    checkUnnamed2096(o.frames);
    checkUnnamed2097(o.segments);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1LabelFrame = 0;
buildGoogleCloudVideointelligenceV1p3beta1LabelFrame() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1LabelFrame();
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1LabelFrame < 3) {
    o.confidence = 42.0;
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1LabelFrame(
    api.GoogleCloudVideointelligenceV1p3beta1LabelFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1LabelFrame < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelFrame--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1LabelSegment = 0;
buildGoogleCloudVideointelligenceV1p3beta1LabelSegment() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1LabelSegment();
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1LabelSegment < 3) {
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1p3beta1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1LabelSegment(
    api.GoogleCloudVideointelligenceV1p3beta1LabelSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1LabelSegment < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelSegment--;
}

buildUnnamed2098() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoSegment());
  return o;
}

checkUnnamed2098(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o[1]);
}

buildUnnamed2099() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p3beta1Track>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1Track());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1Track());
  return o;
}

checkUnnamed2099(core.List<api.GoogleCloudVideointelligenceV1p3beta1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1Track(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation =
    0;
buildGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation() {
  var o =
      new api.GoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation <
      3) {
    o.entity = buildGoogleCloudVideointelligenceV1p3beta1Entity();
    o.segments = buildUnnamed2098();
    o.tracks = buildUnnamed2099();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation <
      3) {
    checkGoogleCloudVideointelligenceV1p3beta1Entity(o.entity);
    checkUnnamed2098(o.segments);
    checkUnnamed2099(o.tracks);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation--;
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox = 0;
buildGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox();
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

checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox(
    api.GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox <
      3) {
    unittest.expect(o.bottom, unittest.equals(42.0));
    unittest.expect(o.left, unittest.equals(42.0));
    unittest.expect(o.right, unittest.equals(42.0));
    unittest.expect(o.top, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox--;
}

buildUnnamed2100() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1NormalizedVertex>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1NormalizedVertex());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1NormalizedVertex());
  return o;
}

checkUnnamed2100(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1NormalizedVertex(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1NormalizedVertex(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly = 0;
buildGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly();
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly <
      3) {
    o.vertices = buildUnnamed2100();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly(
    api.GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly <
      3) {
    checkUnnamed2100(o.vertices);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedVertex = 0;
buildGoogleCloudVideointelligenceV1p3beta1NormalizedVertex() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1NormalizedVertex();
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedVertex--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1NormalizedVertex(
    api.GoogleCloudVideointelligenceV1p3beta1NormalizedVertex o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedVertex < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedVertex--;
}

buildUnnamed2101() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame());
  return o;
}

checkUnnamed2101(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation =
    0;
buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation() {
  var o =
      new api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation <
      3) {
    o.confidence = 42.0;
    o.entity = buildGoogleCloudVideointelligenceV1p3beta1Entity();
    o.frames = buildUnnamed2101();
    o.segment = buildGoogleCloudVideointelligenceV1p3beta1VideoSegment();
    o.trackId = "foo";
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation <
      3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVideointelligenceV1p3beta1Entity(o.entity);
    checkUnnamed2101(o.frames);
    checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o.segment);
    unittest.expect(o.trackId, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame =
    0;
buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame();
  buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame <
      3) {
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame(
    api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame <
      3) {
    checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox(
        o.normalizedBoundingBox);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame--;
}

buildUnnamed2102() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p3beta1Track>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1Track());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1Track());
  return o;
}

checkUnnamed2102(core.List<api.GoogleCloudVideointelligenceV1p3beta1Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1Track(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1Track(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation =
    0;
buildGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation() {
  var o =
      new api.GoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation <
      3) {
    o.tracks = buildUnnamed2102();
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation <
      3) {
    checkUnnamed2102(o.tracks);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity =
    0;
buildGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity();
  buildCounterGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity <
      3) {
    o.celebrity = buildGoogleCloudVideointelligenceV1p3beta1Celebrity();
    o.confidence = 42.0;
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity(
    api.GoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity <
      3) {
    checkGoogleCloudVideointelligenceV1p3beta1Celebrity(o.celebrity);
    unittest.expect(o.confidence, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity--;
}

buildUnnamed2103() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p3beta1WordInfo>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1WordInfo());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1WordInfo());
  return o;
}

checkUnnamed2103(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1WordInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1WordInfo(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1WordInfo(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative =
    0;
buildGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative() {
  var o = new api
      .GoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative();
  buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative <
      3) {
    o.confidence = 42.0;
    o.transcript = "foo";
    o.words = buildUnnamed2103();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative(
    api.GoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative <
      3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.transcript, unittest.equals('foo'));
    checkUnnamed2103(o.words);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative--;
}

buildUnnamed2104() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative>();
  o.add(
      buildGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative());
  o.add(
      buildGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative());
  return o;
}

checkUnnamed2104(
    core.List<
            api.GoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechTranscription =
    0;
buildGoogleCloudVideointelligenceV1p3beta1SpeechTranscription() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1SpeechTranscription();
  buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechTranscription <
      3) {
    o.alternatives = buildUnnamed2104();
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechTranscription--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1SpeechTranscription(
    api.GoogleCloudVideointelligenceV1p3beta1SpeechTranscription o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechTranscription <
      3) {
    checkUnnamed2104(o.alternatives);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechTranscription--;
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse =
    0;
buildGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse() {
  var o = new api
      .GoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse();
  buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse <
      3) {
    o.annotationResults =
        buildGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults();
    o.annotationResultsUri = "foo";
    o.error = buildGoogleRpcStatus();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse(
    api.GoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse <
      3) {
    checkGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults(
        o.annotationResults);
    unittest.expect(o.annotationResultsUri, unittest.equals('foo'));
    checkGoogleRpcStatus(o.error);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse--;
}

buildUnnamed2105() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  return o;
}

checkUnnamed2105(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[1]);
}

buildUnnamed2106() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation());
  return o;
}

checkUnnamed2106(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(o[1]);
}

buildUnnamed2107() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoSegment());
  return o;
}

checkUnnamed2107(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults =
    0;
buildGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults() {
  var o = new api
      .GoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults();
  buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults <
      3) {
    o.explicitAnnotation =
        buildGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation();
    o.frameTimestamp = "foo";
    o.labelAnnotations = buildUnnamed2105();
    o.objectAnnotations = buildUnnamed2106();
    o.shotAnnotations = buildUnnamed2107();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults(
    api.GoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults
        o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults <
      3) {
    checkGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation(
        o.explicitAnnotation);
    unittest.expect(o.frameTimestamp, unittest.equals('foo'));
    checkUnnamed2105(o.labelAnnotations);
    checkUnnamed2106(o.objectAnnotations);
    checkUnnamed2107(o.shotAnnotations);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults--;
}

buildUnnamed2108() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p3beta1TextSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1TextSegment());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1TextSegment());
  return o;
}

checkUnnamed2108(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1TextSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1TextSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1TextSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1TextAnnotation = 0;
buildGoogleCloudVideointelligenceV1p3beta1TextAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1TextAnnotation();
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1TextAnnotation < 3) {
    o.segments = buildUnnamed2108();
    o.text = "foo";
    o.version = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1TextAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1TextAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1TextAnnotation < 3) {
    checkUnnamed2108(o.segments);
    unittest.expect(o.text, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1TextFrame = 0;
buildGoogleCloudVideointelligenceV1p3beta1TextFrame() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1TextFrame();
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1TextFrame < 3) {
    o.rotatedBoundingBox =
        buildGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextFrame--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1TextFrame(
    api.GoogleCloudVideointelligenceV1p3beta1TextFrame o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextFrame++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1TextFrame < 3) {
    checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly(
        o.rotatedBoundingBox);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextFrame--;
}

buildUnnamed2109() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p3beta1TextFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1TextFrame());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1TextFrame());
  return o;
}

checkUnnamed2109(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1TextFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1TextFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1TextFrame(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1TextSegment = 0;
buildGoogleCloudVideointelligenceV1p3beta1TextSegment() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1TextSegment();
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1TextSegment < 3) {
    o.confidence = 42.0;
    o.frames = buildUnnamed2109();
    o.segment = buildGoogleCloudVideointelligenceV1p3beta1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1TextSegment(
    api.GoogleCloudVideointelligenceV1p3beta1TextSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1TextSegment < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkUnnamed2109(o.frames);
    checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextSegment--;
}

buildUnnamed2110() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1DetectedAttribute>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1DetectedAttribute());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1DetectedAttribute());
  return o;
}

checkUnnamed2110(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(o[1]);
}

buildUnnamed2111() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1DetectedLandmark>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1DetectedLandmark());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1DetectedLandmark());
  return o;
}

checkUnnamed2111(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1DetectedLandmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1DetectedLandmark(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1DetectedLandmark(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1TimestampedObject = 0;
buildGoogleCloudVideointelligenceV1p3beta1TimestampedObject() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1TimestampedObject();
  buildCounterGoogleCloudVideointelligenceV1p3beta1TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1TimestampedObject < 3) {
    o.attributes = buildUnnamed2110();
    o.landmarks = buildUnnamed2111();
    o.normalizedBoundingBox =
        buildGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox();
    o.timeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1TimestampedObject--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1TimestampedObject(
    api.GoogleCloudVideointelligenceV1p3beta1TimestampedObject o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1TimestampedObject < 3) {
    checkUnnamed2110(o.attributes);
    checkUnnamed2111(o.landmarks);
    checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox(
        o.normalizedBoundingBox);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1TimestampedObject--;
}

buildUnnamed2112() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1DetectedAttribute>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1DetectedAttribute());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1DetectedAttribute());
  return o;
}

checkUnnamed2112(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(o[1]);
}

buildUnnamed2113() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1TimestampedObject>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1TimestampedObject());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1TimestampedObject());
  return o;
}

checkUnnamed2113(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1TimestampedObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1TimestampedObject(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1TimestampedObject(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1Track = 0;
buildGoogleCloudVideointelligenceV1p3beta1Track() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1Track();
  buildCounterGoogleCloudVideointelligenceV1p3beta1Track++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1Track < 3) {
    o.attributes = buildUnnamed2112();
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1p3beta1VideoSegment();
    o.timestampedObjects = buildUnnamed2113();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1Track--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1Track(
    api.GoogleCloudVideointelligenceV1p3beta1Track o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1Track++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1Track < 3) {
    checkUnnamed2112(o.attributes);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o.segment);
    checkUnnamed2113(o.timestampedObjects);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1Track--;
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress =
    0;
buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress() {
  var o =
      new api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress();
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress <
      3) {
    o.feature = "foo";
    o.inputUri = "foo";
    o.progressPercent = 42;
    o.segment = buildGoogleCloudVideointelligenceV1p3beta1VideoSegment();
    o.startTime = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress(
    api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress <
      3) {
    unittest.expect(o.feature, unittest.equals('foo'));
    unittest.expect(o.inputUri, unittest.equals('foo'));
    unittest.expect(o.progressPercent, unittest.equals(42));
    checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o.segment);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress--;
}

buildUnnamed2114() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1FaceAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1FaceAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1FaceAnnotation());
  return o;
}

checkUnnamed2114(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1FaceAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1FaceAnnotation(o[1]);
}

buildUnnamed2115() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation());
  return o;
}

checkUnnamed2115(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation(o[1]);
}

buildUnnamed2116() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  return o;
}

checkUnnamed2116(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[1]);
}

buildUnnamed2117() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation());
  return o;
}

checkUnnamed2117(
    core.List<
            api.GoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation(o[1]);
}

buildUnnamed2118() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation());
  return o;
}

checkUnnamed2118(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(o[1]);
}

buildUnnamed2119() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation());
  return o;
}

checkUnnamed2119(
    core.List<
            api.GoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation(o[1]);
}

buildUnnamed2120() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  return o;
}

checkUnnamed2120(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[1]);
}

buildUnnamed2121() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  return o;
}

checkUnnamed2121(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[1]);
}

buildUnnamed2122() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoSegment());
  return o;
}

checkUnnamed2122(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o[1]);
}

buildUnnamed2123() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  return o;
}

checkUnnamed2123(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[1]);
}

buildUnnamed2124() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  return o;
}

checkUnnamed2124(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[1]);
}

buildUnnamed2125() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1SpeechTranscription>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1SpeechTranscription());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1SpeechTranscription());
  return o;
}

checkUnnamed2125(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1SpeechTranscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1SpeechTranscription(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1SpeechTranscription(o[1]);
}

buildUnnamed2126() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1TextAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1TextAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1TextAnnotation());
  return o;
}

checkUnnamed2126(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1TextAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1TextAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1TextAnnotation(o[1]);
}

core.int
    buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults = 0;
buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults();
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults <
      3) {
    o.celebrityRecognitionAnnotations =
        buildGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation();
    o.error = buildGoogleRpcStatus();
    o.explicitAnnotation =
        buildGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation();
    o.faceAnnotations = buildUnnamed2114();
    o.faceDetectionAnnotations = buildUnnamed2115();
    o.frameLabelAnnotations = buildUnnamed2116();
    o.inputUri = "foo";
    o.logoRecognitionAnnotations = buildUnnamed2117();
    o.objectAnnotations = buildUnnamed2118();
    o.personDetectionAnnotations = buildUnnamed2119();
    o.segment = buildGoogleCloudVideointelligenceV1p3beta1VideoSegment();
    o.segmentLabelAnnotations = buildUnnamed2120();
    o.segmentPresenceLabelAnnotations = buildUnnamed2121();
    o.shotAnnotations = buildUnnamed2122();
    o.shotLabelAnnotations = buildUnnamed2123();
    o.shotPresenceLabelAnnotations = buildUnnamed2124();
    o.speechTranscriptions = buildUnnamed2125();
    o.textAnnotations = buildUnnamed2126();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults(
    api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults <
      3) {
    checkGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation(
        o.celebrityRecognitionAnnotations);
    checkGoogleRpcStatus(o.error);
    checkGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation(
        o.explicitAnnotation);
    checkUnnamed2114(o.faceAnnotations);
    checkUnnamed2115(o.faceDetectionAnnotations);
    checkUnnamed2116(o.frameLabelAnnotations);
    unittest.expect(o.inputUri, unittest.equals('foo'));
    checkUnnamed2117(o.logoRecognitionAnnotations);
    checkUnnamed2118(o.objectAnnotations);
    checkUnnamed2119(o.personDetectionAnnotations);
    checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o.segment);
    checkUnnamed2120(o.segmentLabelAnnotations);
    checkUnnamed2121(o.segmentPresenceLabelAnnotations);
    checkUnnamed2122(o.shotAnnotations);
    checkUnnamed2123(o.shotLabelAnnotations);
    checkUnnamed2124(o.shotPresenceLabelAnnotations);
    checkUnnamed2125(o.speechTranscriptions);
    checkUnnamed2126(o.textAnnotations);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1VideoSegment = 0;
buildGoogleCloudVideointelligenceV1p3beta1VideoSegment() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1VideoSegment();
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1VideoSegment < 3) {
    o.endTimeOffset = "foo";
    o.startTimeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(
    api.GoogleCloudVideointelligenceV1p3beta1VideoSegment o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1VideoSegment < 3) {
    unittest.expect(o.endTimeOffset, unittest.equals('foo'));
    unittest.expect(o.startTimeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoSegment--;
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1WordInfo = 0;
buildGoogleCloudVideointelligenceV1p3beta1WordInfo() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1WordInfo();
  buildCounterGoogleCloudVideointelligenceV1p3beta1WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1WordInfo < 3) {
    o.confidence = 42.0;
    o.endTime = "foo";
    o.speakerTag = 42;
    o.startTime = "foo";
    o.word = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1WordInfo--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1WordInfo(
    api.GoogleCloudVideointelligenceV1p3beta1WordInfo o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1WordInfo++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1WordInfo < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.speakerTag, unittest.equals(42));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.word, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1WordInfo--;
}

core.int buildCounterGoogleLongrunningCancelOperationRequest = 0;
buildGoogleLongrunningCancelOperationRequest() {
  var o = new api.GoogleLongrunningCancelOperationRequest();
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
  return o;
}

checkGoogleLongrunningCancelOperationRequest(
    api.GoogleLongrunningCancelOperationRequest o) {
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
}

buildUnnamed2127() {
  var o = new core.List<api.GoogleLongrunningOperation>();
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

checkUnnamed2127(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
buildGoogleLongrunningListOperationsResponse() {
  var o = new api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed2127();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2127(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

buildUnnamed2128() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed2128(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed2129() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed2129(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
buildGoogleLongrunningOperation() {
  var o = new api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed2128();
    o.name = "foo";
    o.response = buildUnnamed2129();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error);
    checkUnnamed2128(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2129(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
buildGoogleProtobufEmpty() {
  var o = new api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

buildUnnamed2130() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed2130(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

buildUnnamed2131() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed2130());
  o.add(buildUnnamed2130());
  return o;
}

checkUnnamed2131(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2130(o[0]);
  checkUnnamed2130(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
buildGoogleRpcStatus() {
  var o = new api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2131();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2131(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

main() {
  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1AnnotateVideoProgress", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1AnnotateVideoProgress();
      var od =
          new api.GoogleCloudVideointelligenceV1AnnotateVideoProgress.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1AnnotateVideoProgress(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1AnnotateVideoRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1AnnotateVideoRequest();
      var od =
          new api.GoogleCloudVideointelligenceV1AnnotateVideoRequest.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1AnnotateVideoRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1AnnotateVideoResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1AnnotateVideoResponse();
      var od =
          new api.GoogleCloudVideointelligenceV1AnnotateVideoResponse.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1AnnotateVideoResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1DetectedAttribute",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1DetectedAttribute();
      var od = new api.GoogleCloudVideointelligenceV1DetectedAttribute.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1DetectedAttribute(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1DetectedLandmark",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1DetectedLandmark();
      var od = new api.GoogleCloudVideointelligenceV1DetectedLandmark.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1DetectedLandmark(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1Entity", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1Entity();
      var od =
          new api.GoogleCloudVideointelligenceV1Entity.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1Entity(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1ExplicitContentAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1ExplicitContentAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1ExplicitContentAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1ExplicitContentAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig();
      var od = new api
              .GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1ExplicitContentDetectionConfig(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1ExplicitContentFrame", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1ExplicitContentFrame();
      var od =
          new api.GoogleCloudVideointelligenceV1ExplicitContentFrame.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1ExplicitContentFrame(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1FaceAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1FaceAnnotation();
      var od = new api.GoogleCloudVideointelligenceV1FaceAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1FaceAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1FaceDetectionAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1FaceDetectionAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1FaceDetectionAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1FaceDetectionAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1FaceDetectionConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1FaceDetectionConfig();
      var od =
          new api.GoogleCloudVideointelligenceV1FaceDetectionConfig.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1FaceDetectionConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1FaceFrame", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1FaceFrame();
      var od =
          new api.GoogleCloudVideointelligenceV1FaceFrame.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1FaceFrame(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1FaceSegment", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1FaceSegment();
      var od = new api.GoogleCloudVideointelligenceV1FaceSegment.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1FaceSegment(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1LabelAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1LabelAnnotation();
      var od = new api.GoogleCloudVideointelligenceV1LabelAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1LabelAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1LabelDetectionConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1LabelDetectionConfig();
      var od =
          new api.GoogleCloudVideointelligenceV1LabelDetectionConfig.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1LabelDetectionConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1LabelFrame", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1LabelFrame();
      var od =
          new api.GoogleCloudVideointelligenceV1LabelFrame.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1LabelFrame(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1LabelSegment", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1LabelSegment();
      var od = new api.GoogleCloudVideointelligenceV1LabelSegment.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1LabelSegment(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1LogoRecognitionAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1LogoRecognitionAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1LogoRecognitionAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1LogoRecognitionAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1NormalizedBoundingBox", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1NormalizedBoundingBox();
      var od =
          new api.GoogleCloudVideointelligenceV1NormalizedBoundingBox.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1NormalizedBoundingBox(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1NormalizedBoundingPoly", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1NormalizedBoundingPoly();
      var od =
          new api.GoogleCloudVideointelligenceV1NormalizedBoundingPoly.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1NormalizedBoundingPoly(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1NormalizedVertex",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1NormalizedVertex();
      var od = new api.GoogleCloudVideointelligenceV1NormalizedVertex.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1NormalizedVertex(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1ObjectTrackingAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1ObjectTrackingAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1ObjectTrackingAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1ObjectTrackingAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1ObjectTrackingConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1ObjectTrackingConfig();
      var od =
          new api.GoogleCloudVideointelligenceV1ObjectTrackingConfig.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1ObjectTrackingConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1ObjectTrackingFrame",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1ObjectTrackingFrame();
      var od =
          new api.GoogleCloudVideointelligenceV1ObjectTrackingFrame.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1ObjectTrackingFrame(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1PersonDetectionAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1PersonDetectionAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1PersonDetectionAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1PersonDetectionAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1PersonDetectionConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1PersonDetectionConfig();
      var od =
          new api.GoogleCloudVideointelligenceV1PersonDetectionConfig.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1PersonDetectionConfig(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1ShotChangeDetectionConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1ShotChangeDetectionConfig();
      var od = new api
              .GoogleCloudVideointelligenceV1ShotChangeDetectionConfig.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1ShotChangeDetectionConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1SpeechContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1SpeechContext();
      var od = new api.GoogleCloudVideointelligenceV1SpeechContext.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1SpeechContext(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1SpeechRecognitionAlternative",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1SpeechRecognitionAlternative();
      var od = new api
              .GoogleCloudVideointelligenceV1SpeechRecognitionAlternative.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1SpeechRecognitionAlternative(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1SpeechTranscription",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1SpeechTranscription();
      var od =
          new api.GoogleCloudVideointelligenceV1SpeechTranscription.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1SpeechTranscription(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1SpeechTranscriptionConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1SpeechTranscriptionConfig();
      var od = new api
              .GoogleCloudVideointelligenceV1SpeechTranscriptionConfig.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1SpeechTranscriptionConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1TextAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1TextAnnotation();
      var od = new api.GoogleCloudVideointelligenceV1TextAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1TextAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1TextDetectionConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1TextDetectionConfig();
      var od =
          new api.GoogleCloudVideointelligenceV1TextDetectionConfig.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1TextDetectionConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1TextFrame", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1TextFrame();
      var od =
          new api.GoogleCloudVideointelligenceV1TextFrame.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1TextFrame(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1TextSegment", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1TextSegment();
      var od = new api.GoogleCloudVideointelligenceV1TextSegment.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1TextSegment(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1TimestampedObject",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1TimestampedObject();
      var od = new api.GoogleCloudVideointelligenceV1TimestampedObject.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1TimestampedObject(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1Track", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1Track();
      var od = new api.GoogleCloudVideointelligenceV1Track.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1Track(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1VideoAnnotationProgress", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1VideoAnnotationProgress();
      var od = new api
              .GoogleCloudVideointelligenceV1VideoAnnotationProgress.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1VideoAnnotationProgress(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1VideoAnnotationResults", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1VideoAnnotationResults();
      var od =
          new api.GoogleCloudVideointelligenceV1VideoAnnotationResults.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1VideoAnnotationResults(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1VideoContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1VideoContext();
      var od = new api.GoogleCloudVideointelligenceV1VideoContext.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1VideoContext(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1VideoSegment", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1VideoSegment();
      var od = new api.GoogleCloudVideointelligenceV1VideoSegment.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1VideoSegment(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1WordInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1WordInfo();
      var od =
          new api.GoogleCloudVideointelligenceV1WordInfo.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1WordInfo(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2AnnotateVideoProgress",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress();
      var od = new api
              .GoogleCloudVideointelligenceV1beta2AnnotateVideoProgress.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2AnnotateVideoResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse();
      var od = new api
              .GoogleCloudVideointelligenceV1beta2AnnotateVideoResponse.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2DetectedAttribute", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2DetectedAttribute();
      var od =
          new api.GoogleCloudVideointelligenceV1beta2DetectedAttribute.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1beta2DetectedAttribute(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2DetectedLandmark", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2DetectedLandmark();
      var od =
          new api.GoogleCloudVideointelligenceV1beta2DetectedLandmark.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1beta2DetectedLandmark(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta2Entity", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2Entity();
      var od = new api.GoogleCloudVideointelligenceV1beta2Entity.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2Entity(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2ExplicitContentFrame", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2ExplicitContentFrame();
      var od = new api
              .GoogleCloudVideointelligenceV1beta2ExplicitContentFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2ExplicitContentFrame(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta2FaceAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2FaceAnnotation();
      var od =
          new api.GoogleCloudVideointelligenceV1beta2FaceAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1beta2FaceAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2FaceDetectionAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta2FaceFrame", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2FaceFrame();
      var od = new api.GoogleCloudVideointelligenceV1beta2FaceFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2FaceFrame(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta2FaceSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2FaceSegment();
      var od = new api.GoogleCloudVideointelligenceV1beta2FaceSegment.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2FaceSegment(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2LabelAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2LabelAnnotation();
      var od =
          new api.GoogleCloudVideointelligenceV1beta2LabelAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta2LabelFrame",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2LabelFrame();
      var od = new api.GoogleCloudVideointelligenceV1beta2LabelFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2LabelFrame(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta2LabelSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2LabelSegment();
      var od = new api.GoogleCloudVideointelligenceV1beta2LabelSegment.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2LabelSegment(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2LogoRecognitionAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2NormalizedBoundingBox",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox();
      var od = new api
              .GoogleCloudVideointelligenceV1beta2NormalizedBoundingBox.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2NormalizedBoundingBox(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly();
      var od = new api
              .GoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2NormalizedVertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2NormalizedVertex();
      var od =
          new api.GoogleCloudVideointelligenceV1beta2NormalizedVertex.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1beta2NormalizedVertex(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2ObjectTrackingFrame", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame();
      var od = new api
              .GoogleCloudVideointelligenceV1beta2ObjectTrackingFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2PersonDetectionAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative();
      var od = new api
              .GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2SpeechTranscription", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2SpeechTranscription();
      var od = new api
              .GoogleCloudVideointelligenceV1beta2SpeechTranscription.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2SpeechTranscription(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta2TextAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2TextAnnotation();
      var od =
          new api.GoogleCloudVideointelligenceV1beta2TextAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1beta2TextAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta2TextFrame", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2TextFrame();
      var od = new api.GoogleCloudVideointelligenceV1beta2TextFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2TextFrame(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta2TextSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2TextSegment();
      var od = new api.GoogleCloudVideointelligenceV1beta2TextSegment.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2TextSegment(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2TimestampedObject", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2TimestampedObject();
      var od =
          new api.GoogleCloudVideointelligenceV1beta2TimestampedObject.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1beta2TimestampedObject(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta2Track", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2Track();
      var od =
          new api.GoogleCloudVideointelligenceV1beta2Track.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1beta2Track(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress();
      var od = new api
              .GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1beta2VideoAnnotationResults",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2VideoAnnotationResults();
      var od = new api
              .GoogleCloudVideointelligenceV1beta2VideoAnnotationResults.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2VideoAnnotationResults(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta2VideoSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2VideoSegment();
      var od = new api.GoogleCloudVideointelligenceV1beta2VideoSegment.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2VideoSegment(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta2WordInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta2WordInfo();
      var od = new api.GoogleCloudVideointelligenceV1beta2WordInfo.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1beta2WordInfo(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress();
      var od = new api
              .GoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse();
      var od = new api
              .GoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1DetectedAttribute", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1DetectedAttribute();
      var od = new api
              .GoogleCloudVideointelligenceV1p1beta1DetectedAttribute.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1DetectedAttribute(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1DetectedLandmark", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1DetectedLandmark();
      var od = new api
              .GoogleCloudVideointelligenceV1p1beta1DetectedLandmark.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1DetectedLandmark(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p1beta1Entity", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1Entity();
      var od = new api.GoogleCloudVideointelligenceV1p1beta1Entity.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1Entity(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame();
      var od = new api
              .GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1FaceAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1FaceAnnotation();
      var od =
          new api.GoogleCloudVideointelligenceV1p1beta1FaceAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1FaceAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1FaceDetectionAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p1beta1FaceFrame",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1FaceFrame();
      var od = new api.GoogleCloudVideointelligenceV1p1beta1FaceFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1FaceFrame(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p1beta1FaceSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1FaceSegment();
      var od =
          new api.GoogleCloudVideointelligenceV1p1beta1FaceSegment.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1FaceSegment(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1LabelAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation();
      var od =
          new api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p1beta1LabelFrame",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1LabelFrame();
      var od = new api.GoogleCloudVideointelligenceV1p1beta1LabelFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1LabelFrame(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p1beta1LabelSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1LabelSegment();
      var od =
          new api.GoogleCloudVideointelligenceV1p1beta1LabelSegment.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1LabelSegment(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1LogoRecognitionAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox();
      var od = new api
              .GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingBox(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly();
      var od = new api
              .GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1NormalizedVertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1NormalizedVertex();
      var od = new api
              .GoogleCloudVideointelligenceV1p1beta1NormalizedVertex.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1NormalizedVertex(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame();
      var od = new api
              .GoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1PersonDetectionAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative();
      var od = new api
              .GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1SpeechTranscription",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1SpeechTranscription();
      var od = new api
              .GoogleCloudVideointelligenceV1p1beta1SpeechTranscription.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1SpeechTranscription(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1TextAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1TextAnnotation();
      var od =
          new api.GoogleCloudVideointelligenceV1p1beta1TextAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1TextAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p1beta1TextFrame",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1TextFrame();
      var od = new api.GoogleCloudVideointelligenceV1p1beta1TextFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1TextFrame(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p1beta1TextSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1TextSegment();
      var od =
          new api.GoogleCloudVideointelligenceV1p1beta1TextSegment.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1TextSegment(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1TimestampedObject", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1TimestampedObject();
      var od = new api
              .GoogleCloudVideointelligenceV1p1beta1TimestampedObject.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1TimestampedObject(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p1beta1Track", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1Track();
      var od = new api.GoogleCloudVideointelligenceV1p1beta1Track.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1Track(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress();
      var od = new api
              .GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults();
      var od = new api
              .GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p1beta1VideoSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1VideoSegment();
      var od =
          new api.GoogleCloudVideointelligenceV1p1beta1VideoSegment.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p1beta1WordInfo",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p1beta1WordInfo();
      var od = new api.GoogleCloudVideointelligenceV1p1beta1WordInfo.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p1beta1WordInfo(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress();
      var od = new api
              .GoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse();
      var od = new api
              .GoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1DetectedAttribute", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1DetectedAttribute();
      var od = new api
              .GoogleCloudVideointelligenceV1p2beta1DetectedAttribute.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1DetectedAttribute(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1DetectedLandmark", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1DetectedLandmark();
      var od = new api
              .GoogleCloudVideointelligenceV1p2beta1DetectedLandmark.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1DetectedLandmark(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p2beta1Entity", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1Entity();
      var od = new api.GoogleCloudVideointelligenceV1p2beta1Entity.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1Entity(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame();
      var od = new api
              .GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1FaceAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1FaceAnnotation();
      var od =
          new api.GoogleCloudVideointelligenceV1p2beta1FaceAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1FaceAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1FaceDetectionAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p2beta1FaceFrame",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1FaceFrame();
      var od = new api.GoogleCloudVideointelligenceV1p2beta1FaceFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1FaceFrame(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p2beta1FaceSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1FaceSegment();
      var od =
          new api.GoogleCloudVideointelligenceV1p2beta1FaceSegment.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1FaceSegment(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1LabelAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation();
      var od =
          new api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p2beta1LabelFrame",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1LabelFrame();
      var od = new api.GoogleCloudVideointelligenceV1p2beta1LabelFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1LabelFrame(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p2beta1LabelSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1LabelSegment();
      var od =
          new api.GoogleCloudVideointelligenceV1p2beta1LabelSegment.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1LabelSegment(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1LogoRecognitionAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox();
      var od = new api
              .GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly();
      var od = new api
              .GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1NormalizedVertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1NormalizedVertex();
      var od = new api
              .GoogleCloudVideointelligenceV1p2beta1NormalizedVertex.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1NormalizedVertex(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame();
      var od = new api
              .GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1PersonDetectionAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative();
      var od = new api
              .GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1SpeechTranscription",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1SpeechTranscription();
      var od = new api
              .GoogleCloudVideointelligenceV1p2beta1SpeechTranscription.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1SpeechTranscription(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1TextAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1TextAnnotation();
      var od =
          new api.GoogleCloudVideointelligenceV1p2beta1TextAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1TextAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p2beta1TextFrame",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1TextFrame();
      var od = new api.GoogleCloudVideointelligenceV1p2beta1TextFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1TextFrame(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p2beta1TextSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1TextSegment();
      var od =
          new api.GoogleCloudVideointelligenceV1p2beta1TextSegment.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1TextSegment(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1TimestampedObject", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1TimestampedObject();
      var od = new api
              .GoogleCloudVideointelligenceV1p2beta1TimestampedObject.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1TimestampedObject(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p2beta1Track", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1Track();
      var od = new api.GoogleCloudVideointelligenceV1p2beta1Track.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1Track(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress();
      var od = new api
              .GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults();
      var od = new api
              .GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p2beta1VideoSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1VideoSegment();
      var od =
          new api.GoogleCloudVideointelligenceV1p2beta1VideoSegment.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p2beta1WordInfo",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p2beta1WordInfo();
      var od = new api.GoogleCloudVideointelligenceV1p2beta1WordInfo.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p2beta1WordInfo(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p3beta1Celebrity",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1Celebrity();
      var od = new api.GoogleCloudVideointelligenceV1p3beta1Celebrity.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1Celebrity(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1CelebrityRecognitionAnnotation(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1CelebrityTrack", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1CelebrityTrack();
      var od =
          new api.GoogleCloudVideointelligenceV1p3beta1CelebrityTrack.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1CelebrityTrack(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1DetectedAttribute", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1DetectedAttribute();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1DetectedAttribute.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1DetectedLandmark", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1DetectedLandmark();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1DetectedLandmark.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1DetectedLandmark(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p3beta1Entity", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1Entity();
      var od = new api.GoogleCloudVideointelligenceV1p3beta1Entity.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1Entity(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1FaceAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1FaceAnnotation();
      var od =
          new api.GoogleCloudVideointelligenceV1p3beta1FaceAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1FaceAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1FaceDetectionAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p3beta1FaceFrame",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1FaceFrame();
      var od = new api.GoogleCloudVideointelligenceV1p3beta1FaceFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1FaceFrame(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p3beta1FaceSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1FaceSegment();
      var od =
          new api.GoogleCloudVideointelligenceV1p3beta1FaceSegment.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1FaceSegment(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1LabelAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation();
      var od =
          new api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p3beta1LabelFrame",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1LabelFrame();
      var od = new api.GoogleCloudVideointelligenceV1p3beta1LabelFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1LabelFrame(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p3beta1LabelSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1LabelSegment();
      var od =
          new api.GoogleCloudVideointelligenceV1p3beta1LabelSegment.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1LabelSegment(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1NormalizedVertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1NormalizedVertex();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1NormalizedVertex.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1NormalizedVertex(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1PersonDetectionAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1RecognizedCelebrity(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1SpeechTranscription",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1SpeechTranscription();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1SpeechTranscription.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1SpeechTranscription(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1TextAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1TextAnnotation();
      var od =
          new api.GoogleCloudVideointelligenceV1p3beta1TextAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1TextAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p3beta1TextFrame",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1TextFrame();
      var od = new api.GoogleCloudVideointelligenceV1p3beta1TextFrame.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1TextFrame(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p3beta1TextSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1TextSegment();
      var od =
          new api.GoogleCloudVideointelligenceV1p3beta1TextSegment.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1TextSegment(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1TimestampedObject", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1TimestampedObject();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1TimestampedObject.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1TimestampedObject(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p3beta1Track", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1Track();
      var od = new api.GoogleCloudVideointelligenceV1p3beta1Track.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1Track(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults();
      var od = new api
              .GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p3beta1VideoSegment",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1VideoSegment();
      var od =
          new api.GoogleCloudVideointelligenceV1p3beta1VideoSegment.fromJson(
              o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVideointelligenceV1p3beta1WordInfo",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1p3beta1WordInfo();
      var od = new api.GoogleCloudVideointelligenceV1p3beta1WordInfo.fromJson(
          o.toJson());
      checkGoogleCloudVideointelligenceV1p3beta1WordInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningCancelOperationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningCancelOperationRequest();
      var od =
          new api.GoogleLongrunningCancelOperationRequest.fromJson(o.toJson());
      checkGoogleLongrunningCancelOperationRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningListOperationsResponse();
      var od =
          new api.GoogleLongrunningListOperationsResponse.fromJson(o.toJson());
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningOperation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningOperation();
      var od = new api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group("obj-schema-GoogleProtobufEmpty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleProtobufEmpty();
      var od = new api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group("obj-schema-GoogleRpcStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleRpcStatus();
      var od = new api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group("resource-OperationsProjectsLocationsOperationsResourceApi",
      () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.OperationsProjectsLocationsOperationsResourceApi res =
          new api.VideointelligenceApi(mock)
              .operations
              .projects
              .locations
              .operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1/operations/"));
        pathOffset += 14;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OperationsProjectsLocationsOperationsResourceApi res =
          new api.VideointelligenceApi(mock)
              .operations
              .projects
              .locations
              .operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1/operations/"));
        pathOffset += 14;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OperationsProjectsLocationsOperationsResourceApi res =
          new api.VideointelligenceApi(mock)
              .operations
              .projects
              .locations
              .operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1/operations/"));
        pathOffset += 14;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.VideointelligenceApi(mock).projects.locations.operations;
      var arg_request = buildGoogleLongrunningCancelOperationRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleLongrunningCancelOperationRequest.fromJson(json);
        checkGoogleLongrunningCancelOperationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.VideointelligenceApi(mock).projects.locations.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.VideointelligenceApi(mock).projects.locations.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.VideointelligenceApi(mock).projects.locations.operations;
      var arg_name = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-VideosResourceApi", () {
    unittest.test("method--annotate", () {
      var mock = new HttpServerMock();
      api.VideosResourceApi res = new api.VideointelligenceApi(mock).videos;
      var arg_request =
          buildGoogleCloudVideointelligenceV1AnnotateVideoRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudVideointelligenceV1AnnotateVideoRequest.fromJson(
                json);
        checkGoogleCloudVideointelligenceV1AnnotateVideoRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1/videos:annotate"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .annotate(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });
  });
}
