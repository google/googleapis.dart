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

buildUnnamed4383() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1VideoAnnotationProgress>();
  o.add(buildGoogleCloudVideointelligenceV1VideoAnnotationProgress());
  o.add(buildGoogleCloudVideointelligenceV1VideoAnnotationProgress());
  return o;
}

checkUnnamed4383(
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
    o.annotationProgress = buildUnnamed4383();
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1AnnotateVideoProgress(
    api.GoogleCloudVideointelligenceV1AnnotateVideoProgress o) {
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress < 3) {
    checkUnnamed4383(o.annotationProgress);
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress--;
}

buildUnnamed4384() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4384(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudVideointelligenceV1AnnotateVideoRequest = 0;
buildGoogleCloudVideointelligenceV1AnnotateVideoRequest() {
  var o = new api.GoogleCloudVideointelligenceV1AnnotateVideoRequest();
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoRequest++;
  if (buildCounterGoogleCloudVideointelligenceV1AnnotateVideoRequest < 3) {
    o.features = buildUnnamed4384();
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
    checkUnnamed4384(o.features);
    unittest.expect(o.inputContent, unittest.equals('foo'));
    unittest.expect(o.inputUri, unittest.equals('foo'));
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.outputUri, unittest.equals('foo'));
    checkGoogleCloudVideointelligenceV1VideoContext(o.videoContext);
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoRequest--;
}

buildUnnamed4385() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1VideoAnnotationResults>();
  o.add(buildGoogleCloudVideointelligenceV1VideoAnnotationResults());
  o.add(buildGoogleCloudVideointelligenceV1VideoAnnotationResults());
  return o;
}

checkUnnamed4385(
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
    o.annotationResults = buildUnnamed4385();
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse--;
  return o;
}

checkGoogleCloudVideointelligenceV1AnnotateVideoResponse(
    api.GoogleCloudVideointelligenceV1AnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse < 3) {
    checkUnnamed4385(o.annotationResults);
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse--;
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

buildUnnamed4386() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1ExplicitContentFrame>();
  o.add(buildGoogleCloudVideointelligenceV1ExplicitContentFrame());
  o.add(buildGoogleCloudVideointelligenceV1ExplicitContentFrame());
  return o;
}

checkUnnamed4386(
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
    o.frames = buildUnnamed4386();
  }
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1ExplicitContentAnnotation(
    api.GoogleCloudVideointelligenceV1ExplicitContentAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1ExplicitContentAnnotation < 3) {
    checkUnnamed4386(o.frames);
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

buildUnnamed4387() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1Entity>();
  o.add(buildGoogleCloudVideointelligenceV1Entity());
  o.add(buildGoogleCloudVideointelligenceV1Entity());
  return o;
}

checkUnnamed4387(core.List<api.GoogleCloudVideointelligenceV1Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1Entity(o[0]);
  checkGoogleCloudVideointelligenceV1Entity(o[1]);
}

buildUnnamed4388() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1LabelFrame>();
  o.add(buildGoogleCloudVideointelligenceV1LabelFrame());
  o.add(buildGoogleCloudVideointelligenceV1LabelFrame());
  return o;
}

checkUnnamed4388(core.List<api.GoogleCloudVideointelligenceV1LabelFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelFrame(o[0]);
  checkGoogleCloudVideointelligenceV1LabelFrame(o[1]);
}

buildUnnamed4389() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1LabelSegment>();
  o.add(buildGoogleCloudVideointelligenceV1LabelSegment());
  o.add(buildGoogleCloudVideointelligenceV1LabelSegment());
  return o;
}

checkUnnamed4389(core.List<api.GoogleCloudVideointelligenceV1LabelSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelSegment(o[0]);
  checkGoogleCloudVideointelligenceV1LabelSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1LabelAnnotation = 0;
buildGoogleCloudVideointelligenceV1LabelAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1LabelAnnotation();
  buildCounterGoogleCloudVideointelligenceV1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelAnnotation < 3) {
    o.categoryEntities = buildUnnamed4387();
    o.entity = buildGoogleCloudVideointelligenceV1Entity();
    o.frames = buildUnnamed4388();
    o.segments = buildUnnamed4389();
  }
  buildCounterGoogleCloudVideointelligenceV1LabelAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1LabelAnnotation(
    api.GoogleCloudVideointelligenceV1LabelAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelAnnotation < 3) {
    checkUnnamed4387(o.categoryEntities);
    checkGoogleCloudVideointelligenceV1Entity(o.entity);
    checkUnnamed4388(o.frames);
    checkUnnamed4389(o.segments);
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

buildUnnamed4390() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1NormalizedVertex>();
  o.add(buildGoogleCloudVideointelligenceV1NormalizedVertex());
  o.add(buildGoogleCloudVideointelligenceV1NormalizedVertex());
  return o;
}

checkUnnamed4390(
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
    o.vertices = buildUnnamed4390();
  }
  buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingPoly--;
  return o;
}

checkGoogleCloudVideointelligenceV1NormalizedBoundingPoly(
    api.GoogleCloudVideointelligenceV1NormalizedBoundingPoly o) {
  buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1NormalizedBoundingPoly < 3) {
    checkUnnamed4390(o.vertices);
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

buildUnnamed4391() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1ObjectTrackingFrame>();
  o.add(buildGoogleCloudVideointelligenceV1ObjectTrackingFrame());
  o.add(buildGoogleCloudVideointelligenceV1ObjectTrackingFrame());
  return o;
}

checkUnnamed4391(
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
    o.frames = buildUnnamed4391();
    o.segment = buildGoogleCloudVideointelligenceV1VideoSegment();
    o.trackId = "foo";
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
    checkUnnamed4391(o.frames);
    checkGoogleCloudVideointelligenceV1VideoSegment(o.segment);
    unittest.expect(o.trackId, unittest.equals('foo'));
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

buildUnnamed4392() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4392(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudVideointelligenceV1SpeechContext = 0;
buildGoogleCloudVideointelligenceV1SpeechContext() {
  var o = new api.GoogleCloudVideointelligenceV1SpeechContext();
  buildCounterGoogleCloudVideointelligenceV1SpeechContext++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechContext < 3) {
    o.phrases = buildUnnamed4392();
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechContext--;
  return o;
}

checkGoogleCloudVideointelligenceV1SpeechContext(
    api.GoogleCloudVideointelligenceV1SpeechContext o) {
  buildCounterGoogleCloudVideointelligenceV1SpeechContext++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechContext < 3) {
    checkUnnamed4392(o.phrases);
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechContext--;
}

buildUnnamed4393() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1WordInfo>();
  o.add(buildGoogleCloudVideointelligenceV1WordInfo());
  o.add(buildGoogleCloudVideointelligenceV1WordInfo());
  return o;
}

checkUnnamed4393(core.List<api.GoogleCloudVideointelligenceV1WordInfo> o) {
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
    o.words = buildUnnamed4393();
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
    checkUnnamed4393(o.words);
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechRecognitionAlternative--;
}

buildUnnamed4394() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1SpeechRecognitionAlternative>();
  o.add(buildGoogleCloudVideointelligenceV1SpeechRecognitionAlternative());
  o.add(buildGoogleCloudVideointelligenceV1SpeechRecognitionAlternative());
  return o;
}

checkUnnamed4394(
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
    o.alternatives = buildUnnamed4394();
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscription--;
  return o;
}

checkGoogleCloudVideointelligenceV1SpeechTranscription(
    api.GoogleCloudVideointelligenceV1SpeechTranscription o) {
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechTranscription < 3) {
    checkUnnamed4394(o.alternatives);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscription--;
}

buildUnnamed4395() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed4395(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed4396() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1SpeechContext>();
  o.add(buildGoogleCloudVideointelligenceV1SpeechContext());
  o.add(buildGoogleCloudVideointelligenceV1SpeechContext());
  return o;
}

checkUnnamed4396(core.List<api.GoogleCloudVideointelligenceV1SpeechContext> o) {
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
    o.audioTracks = buildUnnamed4395();
    o.diarizationSpeakerCount = 42;
    o.enableAutomaticPunctuation = true;
    o.enableSpeakerDiarization = true;
    o.enableWordConfidence = true;
    o.filterProfanity = true;
    o.languageCode = "foo";
    o.maxAlternatives = 42;
    o.speechContexts = buildUnnamed4396();
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscriptionConfig--;
  return o;
}

checkGoogleCloudVideointelligenceV1SpeechTranscriptionConfig(
    api.GoogleCloudVideointelligenceV1SpeechTranscriptionConfig o) {
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscriptionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1SpeechTranscriptionConfig < 3) {
    checkUnnamed4395(o.audioTracks);
    unittest.expect(o.diarizationSpeakerCount, unittest.equals(42));
    unittest.expect(o.enableAutomaticPunctuation, unittest.isTrue);
    unittest.expect(o.enableSpeakerDiarization, unittest.isTrue);
    unittest.expect(o.enableWordConfidence, unittest.isTrue);
    unittest.expect(o.filterProfanity, unittest.isTrue);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.maxAlternatives, unittest.equals(42));
    checkUnnamed4396(o.speechContexts);
  }
  buildCounterGoogleCloudVideointelligenceV1SpeechTranscriptionConfig--;
}

buildUnnamed4397() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1TextSegment>();
  o.add(buildGoogleCloudVideointelligenceV1TextSegment());
  o.add(buildGoogleCloudVideointelligenceV1TextSegment());
  return o;
}

checkUnnamed4397(core.List<api.GoogleCloudVideointelligenceV1TextSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1TextSegment(o[0]);
  checkGoogleCloudVideointelligenceV1TextSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1TextAnnotation = 0;
buildGoogleCloudVideointelligenceV1TextAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1TextAnnotation();
  buildCounterGoogleCloudVideointelligenceV1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1TextAnnotation < 3) {
    o.segments = buildUnnamed4397();
    o.text = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1TextAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1TextAnnotation(
    api.GoogleCloudVideointelligenceV1TextAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1TextAnnotation < 3) {
    checkUnnamed4397(o.segments);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1TextAnnotation--;
}

buildUnnamed4398() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4398(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig = 0;
buildGoogleCloudVideointelligenceV1TextDetectionConfig() {
  var o = new api.GoogleCloudVideointelligenceV1TextDetectionConfig();
  buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig < 3) {
    o.languageHints = buildUnnamed4398();
    o.model = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig--;
  return o;
}

checkGoogleCloudVideointelligenceV1TextDetectionConfig(
    api.GoogleCloudVideointelligenceV1TextDetectionConfig o) {
  buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig++;
  if (buildCounterGoogleCloudVideointelligenceV1TextDetectionConfig < 3) {
    checkUnnamed4398(o.languageHints);
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

buildUnnamed4399() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1TextFrame>();
  o.add(buildGoogleCloudVideointelligenceV1TextFrame());
  o.add(buildGoogleCloudVideointelligenceV1TextFrame());
  return o;
}

checkUnnamed4399(core.List<api.GoogleCloudVideointelligenceV1TextFrame> o) {
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
    o.frames = buildUnnamed4399();
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
    checkUnnamed4399(o.frames);
    checkGoogleCloudVideointelligenceV1VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1TextSegment--;
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

buildUnnamed4400() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1LabelAnnotation());
  return o;
}

checkUnnamed4400(
    core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[1]);
}

buildUnnamed4401() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1ObjectTrackingAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1ObjectTrackingAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1ObjectTrackingAnnotation());
  return o;
}

checkUnnamed4401(
    core.List<api.GoogleCloudVideointelligenceV1ObjectTrackingAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1ObjectTrackingAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1ObjectTrackingAnnotation(o[1]);
}

buildUnnamed4402() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1LabelAnnotation());
  return o;
}

checkUnnamed4402(
    core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[1]);
}

buildUnnamed4403() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1VideoSegment());
  return o;
}

checkUnnamed4403(core.List<api.GoogleCloudVideointelligenceV1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1VideoSegment(o[1]);
}

buildUnnamed4404() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1LabelAnnotation());
  return o;
}

checkUnnamed4404(
    core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[1]);
}

buildUnnamed4405() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1SpeechTranscription>();
  o.add(buildGoogleCloudVideointelligenceV1SpeechTranscription());
  o.add(buildGoogleCloudVideointelligenceV1SpeechTranscription());
  return o;
}

checkUnnamed4405(
    core.List<api.GoogleCloudVideointelligenceV1SpeechTranscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1SpeechTranscription(o[0]);
  checkGoogleCloudVideointelligenceV1SpeechTranscription(o[1]);
}

buildUnnamed4406() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1TextAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1TextAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1TextAnnotation());
  return o;
}

checkUnnamed4406(
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
    o.frameLabelAnnotations = buildUnnamed4400();
    o.inputUri = "foo";
    o.objectAnnotations = buildUnnamed4401();
    o.segmentLabelAnnotations = buildUnnamed4402();
    o.shotAnnotations = buildUnnamed4403();
    o.shotLabelAnnotations = buildUnnamed4404();
    o.speechTranscriptions = buildUnnamed4405();
    o.textAnnotations = buildUnnamed4406();
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
    checkUnnamed4400(o.frameLabelAnnotations);
    unittest.expect(o.inputUri, unittest.equals('foo'));
    checkUnnamed4401(o.objectAnnotations);
    checkUnnamed4402(o.segmentLabelAnnotations);
    checkUnnamed4403(o.shotAnnotations);
    checkUnnamed4404(o.shotLabelAnnotations);
    checkUnnamed4405(o.speechTranscriptions);
    checkUnnamed4406(o.textAnnotations);
  }
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults--;
}

buildUnnamed4407() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1VideoSegment());
  return o;
}

checkUnnamed4407(core.List<api.GoogleCloudVideointelligenceV1VideoSegment> o) {
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
    o.labelDetectionConfig =
        buildGoogleCloudVideointelligenceV1LabelDetectionConfig();
    o.objectTrackingConfig =
        buildGoogleCloudVideointelligenceV1ObjectTrackingConfig();
    o.segments = buildUnnamed4407();
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
    checkGoogleCloudVideointelligenceV1LabelDetectionConfig(
        o.labelDetectionConfig);
    checkGoogleCloudVideointelligenceV1ObjectTrackingConfig(
        o.objectTrackingConfig);
    checkUnnamed4407(o.segments);
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

buildUnnamed4408() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress>();
  o.add(buildGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress());
  o.add(buildGoogleCloudVideointelligenceV1beta2VideoAnnotationProgress());
  return o;
}

checkUnnamed4408(
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
    o.annotationProgress = buildUnnamed4408();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress(
    api.GoogleCloudVideointelligenceV1beta2AnnotateVideoProgress o) {
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress <
      3) {
    checkUnnamed4408(o.annotationProgress);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoProgress--;
}

buildUnnamed4409() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1beta2VideoAnnotationResults>();
  o.add(buildGoogleCloudVideointelligenceV1beta2VideoAnnotationResults());
  o.add(buildGoogleCloudVideointelligenceV1beta2VideoAnnotationResults());
  return o;
}

checkUnnamed4409(
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
    o.annotationResults = buildUnnamed4409();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse(
    api.GoogleCloudVideointelligenceV1beta2AnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse <
      3) {
    checkUnnamed4409(o.annotationResults);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2AnnotateVideoResponse--;
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

buildUnnamed4410() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1beta2ExplicitContentFrame>();
  o.add(buildGoogleCloudVideointelligenceV1beta2ExplicitContentFrame());
  o.add(buildGoogleCloudVideointelligenceV1beta2ExplicitContentFrame());
  return o;
}

checkUnnamed4410(
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
    o.frames = buildUnnamed4410();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation(
    api.GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation <
      3) {
    checkUnnamed4410(o.frames);
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

buildUnnamed4411() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2Entity>();
  o.add(buildGoogleCloudVideointelligenceV1beta2Entity());
  o.add(buildGoogleCloudVideointelligenceV1beta2Entity());
  return o;
}

checkUnnamed4411(core.List<api.GoogleCloudVideointelligenceV1beta2Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2Entity(o[0]);
  checkGoogleCloudVideointelligenceV1beta2Entity(o[1]);
}

buildUnnamed4412() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2LabelFrame>();
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelFrame());
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelFrame());
  return o;
}

checkUnnamed4412(
    core.List<api.GoogleCloudVideointelligenceV1beta2LabelFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LabelFrame(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LabelFrame(o[1]);
}

buildUnnamed4413() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2LabelSegment>();
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelSegment());
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelSegment());
  return o;
}

checkUnnamed4413(
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
    o.categoryEntities = buildUnnamed4411();
    o.entity = buildGoogleCloudVideointelligenceV1beta2Entity();
    o.frames = buildUnnamed4412();
    o.segments = buildUnnamed4413();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2LabelAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(
    api.GoogleCloudVideointelligenceV1beta2LabelAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta2LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2LabelAnnotation < 3) {
    checkUnnamed4411(o.categoryEntities);
    checkGoogleCloudVideointelligenceV1beta2Entity(o.entity);
    checkUnnamed4412(o.frames);
    checkUnnamed4413(o.segments);
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

buildUnnamed4414() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1beta2NormalizedVertex>();
  o.add(buildGoogleCloudVideointelligenceV1beta2NormalizedVertex());
  o.add(buildGoogleCloudVideointelligenceV1beta2NormalizedVertex());
  return o;
}

checkUnnamed4414(
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
    o.vertices = buildUnnamed4414();
  }
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly(
    api.GoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly o) {
  buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2NormalizedBoundingPoly <
      3) {
    checkUnnamed4414(o.vertices);
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

buildUnnamed4415() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1beta2ObjectTrackingFrame>();
  o.add(buildGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame());
  o.add(buildGoogleCloudVideointelligenceV1beta2ObjectTrackingFrame());
  return o;
}

checkUnnamed4415(
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
    o.frames = buildUnnamed4415();
    o.segment = buildGoogleCloudVideointelligenceV1beta2VideoSegment();
    o.trackId = "foo";
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
    checkUnnamed4415(o.frames);
    checkGoogleCloudVideointelligenceV1beta2VideoSegment(o.segment);
    unittest.expect(o.trackId, unittest.equals('foo'));
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

buildUnnamed4416() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2WordInfo>();
  o.add(buildGoogleCloudVideointelligenceV1beta2WordInfo());
  o.add(buildGoogleCloudVideointelligenceV1beta2WordInfo());
  return o;
}

checkUnnamed4416(core.List<api.GoogleCloudVideointelligenceV1beta2WordInfo> o) {
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
    o.words = buildUnnamed4416();
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
    checkUnnamed4416(o.words);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative--;
}

buildUnnamed4417() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative>();
  o.add(buildGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative());
  o.add(buildGoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative());
  return o;
}

checkUnnamed4417(
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
    o.alternatives = buildUnnamed4417();
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscription--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2SpeechTranscription(
    api.GoogleCloudVideointelligenceV1beta2SpeechTranscription o) {
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscription++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscription < 3) {
    checkUnnamed4417(o.alternatives);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta2SpeechTranscription--;
}

buildUnnamed4418() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2TextSegment>();
  o.add(buildGoogleCloudVideointelligenceV1beta2TextSegment());
  o.add(buildGoogleCloudVideointelligenceV1beta2TextSegment());
  return o;
}

checkUnnamed4418(
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
    o.segments = buildUnnamed4418();
    o.text = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TextAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta2TextAnnotation(
    api.GoogleCloudVideointelligenceV1beta2TextAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta2TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta2TextAnnotation < 3) {
    checkUnnamed4418(o.segments);
    unittest.expect(o.text, unittest.equals('foo'));
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

buildUnnamed4419() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2TextFrame>();
  o.add(buildGoogleCloudVideointelligenceV1beta2TextFrame());
  o.add(buildGoogleCloudVideointelligenceV1beta2TextFrame());
  return o;
}

checkUnnamed4419(
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
    o.frames = buildUnnamed4419();
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
    checkUnnamed4419(o.frames);
    checkGoogleCloudVideointelligenceV1beta2VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1beta2TextSegment--;
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

buildUnnamed4420() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelAnnotation());
  return o;
}

checkUnnamed4420(
    core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[1]);
}

buildUnnamed4421() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation());
  return o;
}

checkUnnamed4421(
    core.List<api.GoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2ObjectTrackingAnnotation(o[1]);
}

buildUnnamed4422() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelAnnotation());
  return o;
}

checkUnnamed4422(
    core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[1]);
}

buildUnnamed4423() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta2VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1beta2VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1beta2VideoSegment());
  return o;
}

checkUnnamed4423(
    core.List<api.GoogleCloudVideointelligenceV1beta2VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1beta2VideoSegment(o[1]);
}

buildUnnamed4424() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1beta2LabelAnnotation());
  return o;
}

checkUnnamed4424(
    core.List<api.GoogleCloudVideointelligenceV1beta2LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta2LabelAnnotation(o[1]);
}

buildUnnamed4425() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1beta2SpeechTranscription>();
  o.add(buildGoogleCloudVideointelligenceV1beta2SpeechTranscription());
  o.add(buildGoogleCloudVideointelligenceV1beta2SpeechTranscription());
  return o;
}

checkUnnamed4425(
    core.List<api.GoogleCloudVideointelligenceV1beta2SpeechTranscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta2SpeechTranscription(o[0]);
  checkGoogleCloudVideointelligenceV1beta2SpeechTranscription(o[1]);
}

buildUnnamed4426() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1beta2TextAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1beta2TextAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1beta2TextAnnotation());
  return o;
}

checkUnnamed4426(
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
    o.frameLabelAnnotations = buildUnnamed4420();
    o.inputUri = "foo";
    o.objectAnnotations = buildUnnamed4421();
    o.segmentLabelAnnotations = buildUnnamed4422();
    o.shotAnnotations = buildUnnamed4423();
    o.shotLabelAnnotations = buildUnnamed4424();
    o.speechTranscriptions = buildUnnamed4425();
    o.textAnnotations = buildUnnamed4426();
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
    checkUnnamed4420(o.frameLabelAnnotations);
    unittest.expect(o.inputUri, unittest.equals('foo'));
    checkUnnamed4421(o.objectAnnotations);
    checkUnnamed4422(o.segmentLabelAnnotations);
    checkUnnamed4423(o.shotAnnotations);
    checkUnnamed4424(o.shotLabelAnnotations);
    checkUnnamed4425(o.speechTranscriptions);
    checkUnnamed4426(o.textAnnotations);
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

buildUnnamed4427() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress());
  return o;
}

checkUnnamed4427(
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
    o.annotationProgress = buildUnnamed4427();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress(
    api.GoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress <
      3) {
    checkUnnamed4427(o.annotationProgress);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress--;
}

buildUnnamed4428() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults());
  return o;
}

checkUnnamed4428(
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
    o.annotationResults = buildUnnamed4428();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse(
    api.GoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse <
      3) {
    checkUnnamed4428(o.annotationResults);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse--;
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

buildUnnamed4429() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame());
  return o;
}

checkUnnamed4429(
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
    o.frames = buildUnnamed4429();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation(
    api.GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation <
      3) {
    checkUnnamed4429(o.frames);
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

buildUnnamed4430() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p1beta1Entity>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1Entity());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1Entity());
  return o;
}

checkUnnamed4430(core.List<api.GoogleCloudVideointelligenceV1p1beta1Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1Entity(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1Entity(o[1]);
}

buildUnnamed4431() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelFrame());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelFrame());
  return o;
}

checkUnnamed4431(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LabelFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LabelFrame(o[1]);
}

buildUnnamed4432() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelSegment());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelSegment());
  return o;
}

checkUnnamed4432(
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
    o.categoryEntities = buildUnnamed4430();
    o.entity = buildGoogleCloudVideointelligenceV1p1beta1Entity();
    o.frames = buildUnnamed4431();
    o.segments = buildUnnamed4432();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(
    api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1LabelAnnotation < 3) {
    checkUnnamed4430(o.categoryEntities);
    checkGoogleCloudVideointelligenceV1p1beta1Entity(o.entity);
    checkUnnamed4431(o.frames);
    checkUnnamed4432(o.segments);
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

buildUnnamed4433() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p1beta1NormalizedVertex>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1NormalizedVertex());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1NormalizedVertex());
  return o;
}

checkUnnamed4433(
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
    o.vertices = buildUnnamed4433();
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly(
    api.GoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1NormalizedBoundingPoly <
      3) {
    checkUnnamed4433(o.vertices);
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

buildUnnamed4434() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingFrame());
  return o;
}

checkUnnamed4434(
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
    o.frames = buildUnnamed4434();
    o.segment = buildGoogleCloudVideointelligenceV1p1beta1VideoSegment();
    o.trackId = "foo";
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
    checkUnnamed4434(o.frames);
    checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o.segment);
    unittest.expect(o.trackId, unittest.equals('foo'));
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

buildUnnamed4435() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p1beta1WordInfo>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1WordInfo());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1WordInfo());
  return o;
}

checkUnnamed4435(
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
    o.words = buildUnnamed4435();
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
    checkUnnamed4435(o.words);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative--;
}

buildUnnamed4436() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative>();
  o.add(
      buildGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative());
  o.add(
      buildGoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative());
  return o;
}

checkUnnamed4436(
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
    o.alternatives = buildUnnamed4436();
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
    checkUnnamed4436(o.alternatives);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1SpeechTranscription--;
}

buildUnnamed4437() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p1beta1TextSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1TextSegment());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1TextSegment());
  return o;
}

checkUnnamed4437(
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
    o.segments = buildUnnamed4437();
    o.text = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p1beta1TextAnnotation(
    api.GoogleCloudVideointelligenceV1p1beta1TextAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p1beta1TextAnnotation < 3) {
    checkUnnamed4437(o.segments);
    unittest.expect(o.text, unittest.equals('foo'));
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

buildUnnamed4438() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p1beta1TextFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1TextFrame());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1TextFrame());
  return o;
}

checkUnnamed4438(
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
    o.frames = buildUnnamed4438();
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
    checkUnnamed4438(o.frames);
    checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1p1beta1TextSegment--;
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

buildUnnamed4439() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation());
  return o;
}

checkUnnamed4439(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[1]);
}

buildUnnamed4440() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation());
  return o;
}

checkUnnamed4440(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1ObjectTrackingAnnotation(o[1]);
}

buildUnnamed4441() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation());
  return o;
}

checkUnnamed4441(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[1]);
}

buildUnnamed4442() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p1beta1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1VideoSegment());
  return o;
}

checkUnnamed4442(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1VideoSegment(o[1]);
}

buildUnnamed4443() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1LabelAnnotation());
  return o;
}

checkUnnamed4443(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1LabelAnnotation(o[1]);
}

buildUnnamed4444() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p1beta1SpeechTranscription>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1SpeechTranscription());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1SpeechTranscription());
  return o;
}

checkUnnamed4444(
    core.List<api.GoogleCloudVideointelligenceV1p1beta1SpeechTranscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p1beta1SpeechTranscription(o[0]);
  checkGoogleCloudVideointelligenceV1p1beta1SpeechTranscription(o[1]);
}

buildUnnamed4445() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p1beta1TextAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p1beta1TextAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p1beta1TextAnnotation());
  return o;
}

checkUnnamed4445(
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
    o.frameLabelAnnotations = buildUnnamed4439();
    o.inputUri = "foo";
    o.objectAnnotations = buildUnnamed4440();
    o.segmentLabelAnnotations = buildUnnamed4441();
    o.shotAnnotations = buildUnnamed4442();
    o.shotLabelAnnotations = buildUnnamed4443();
    o.speechTranscriptions = buildUnnamed4444();
    o.textAnnotations = buildUnnamed4445();
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
    checkUnnamed4439(o.frameLabelAnnotations);
    unittest.expect(o.inputUri, unittest.equals('foo'));
    checkUnnamed4440(o.objectAnnotations);
    checkUnnamed4441(o.segmentLabelAnnotations);
    checkUnnamed4442(o.shotAnnotations);
    checkUnnamed4443(o.shotLabelAnnotations);
    checkUnnamed4444(o.speechTranscriptions);
    checkUnnamed4445(o.textAnnotations);
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

buildUnnamed4446() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress());
  return o;
}

checkUnnamed4446(
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
    o.annotationProgress = buildUnnamed4446();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress(
    api.GoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress <
      3) {
    checkUnnamed4446(o.annotationProgress);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress--;
}

buildUnnamed4447() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults());
  return o;
}

checkUnnamed4447(
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
    o.annotationResults = buildUnnamed4447();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse(
    api.GoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse <
      3) {
    checkUnnamed4447(o.annotationResults);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse--;
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

buildUnnamed4448() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame());
  return o;
}

checkUnnamed4448(
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
    o.frames = buildUnnamed4448();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation(
    api.GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation <
      3) {
    checkUnnamed4448(o.frames);
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

buildUnnamed4449() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p2beta1Entity>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1Entity());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1Entity());
  return o;
}

checkUnnamed4449(core.List<api.GoogleCloudVideointelligenceV1p2beta1Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1Entity(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1Entity(o[1]);
}

buildUnnamed4450() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelFrame());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelFrame());
  return o;
}

checkUnnamed4450(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LabelFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LabelFrame(o[1]);
}

buildUnnamed4451() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelSegment());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelSegment());
  return o;
}

checkUnnamed4451(
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
    o.categoryEntities = buildUnnamed4449();
    o.entity = buildGoogleCloudVideointelligenceV1p2beta1Entity();
    o.frames = buildUnnamed4450();
    o.segments = buildUnnamed4451();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(
    api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1LabelAnnotation < 3) {
    checkUnnamed4449(o.categoryEntities);
    checkGoogleCloudVideointelligenceV1p2beta1Entity(o.entity);
    checkUnnamed4450(o.frames);
    checkUnnamed4451(o.segments);
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

buildUnnamed4452() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p2beta1NormalizedVertex>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1NormalizedVertex());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1NormalizedVertex());
  return o;
}

checkUnnamed4452(
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
    o.vertices = buildUnnamed4452();
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly(
    api.GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly <
      3) {
    checkUnnamed4452(o.vertices);
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

buildUnnamed4453() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame());
  return o;
}

checkUnnamed4453(
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
    o.frames = buildUnnamed4453();
    o.segment = buildGoogleCloudVideointelligenceV1p2beta1VideoSegment();
    o.trackId = "foo";
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
    checkUnnamed4453(o.frames);
    checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o.segment);
    unittest.expect(o.trackId, unittest.equals('foo'));
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

buildUnnamed4454() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p2beta1WordInfo>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1WordInfo());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1WordInfo());
  return o;
}

checkUnnamed4454(
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
    o.words = buildUnnamed4454();
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
    checkUnnamed4454(o.words);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative--;
}

buildUnnamed4455() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative>();
  o.add(
      buildGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative());
  o.add(
      buildGoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative());
  return o;
}

checkUnnamed4455(
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
    o.alternatives = buildUnnamed4455();
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
    checkUnnamed4455(o.alternatives);
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1SpeechTranscription--;
}

buildUnnamed4456() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p2beta1TextSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1TextSegment());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1TextSegment());
  return o;
}

checkUnnamed4456(
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
    o.segments = buildUnnamed4456();
    o.text = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p2beta1TextAnnotation(
    api.GoogleCloudVideointelligenceV1p2beta1TextAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p2beta1TextAnnotation < 3) {
    checkUnnamed4456(o.segments);
    unittest.expect(o.text, unittest.equals('foo'));
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

buildUnnamed4457() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p2beta1TextFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1TextFrame());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1TextFrame());
  return o;
}

checkUnnamed4457(
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
    o.frames = buildUnnamed4457();
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
    checkUnnamed4457(o.frames);
    checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1p2beta1TextSegment--;
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

buildUnnamed4458() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation());
  return o;
}

checkUnnamed4458(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[1]);
}

buildUnnamed4459() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation());
  return o;
}

checkUnnamed4459(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation(o[1]);
}

buildUnnamed4460() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation());
  return o;
}

checkUnnamed4460(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[1]);
}

buildUnnamed4461() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p2beta1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1VideoSegment());
  return o;
}

checkUnnamed4461(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1VideoSegment(o[1]);
}

buildUnnamed4462() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1LabelAnnotation());
  return o;
}

checkUnnamed4462(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1LabelAnnotation(o[1]);
}

buildUnnamed4463() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p2beta1SpeechTranscription>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1SpeechTranscription());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1SpeechTranscription());
  return o;
}

checkUnnamed4463(
    core.List<api.GoogleCloudVideointelligenceV1p2beta1SpeechTranscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p2beta1SpeechTranscription(o[0]);
  checkGoogleCloudVideointelligenceV1p2beta1SpeechTranscription(o[1]);
}

buildUnnamed4464() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p2beta1TextAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p2beta1TextAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p2beta1TextAnnotation());
  return o;
}

checkUnnamed4464(
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
    o.frameLabelAnnotations = buildUnnamed4458();
    o.inputUri = "foo";
    o.objectAnnotations = buildUnnamed4459();
    o.segmentLabelAnnotations = buildUnnamed4460();
    o.shotAnnotations = buildUnnamed4461();
    o.shotLabelAnnotations = buildUnnamed4462();
    o.speechTranscriptions = buildUnnamed4463();
    o.textAnnotations = buildUnnamed4464();
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
    checkUnnamed4458(o.frameLabelAnnotations);
    unittest.expect(o.inputUri, unittest.equals('foo'));
    checkUnnamed4459(o.objectAnnotations);
    checkUnnamed4460(o.segmentLabelAnnotations);
    checkUnnamed4461(o.shotAnnotations);
    checkUnnamed4462(o.shotLabelAnnotations);
    checkUnnamed4463(o.speechTranscriptions);
    checkUnnamed4464(o.textAnnotations);
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

buildUnnamed4465() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationProgress());
  return o;
}

checkUnnamed4465(
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
    o.annotationProgress = buildUnnamed4465();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress(
    api.GoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress <
      3) {
    checkUnnamed4465(o.annotationProgress);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoProgress--;
}

buildUnnamed4466() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults());
  return o;
}

checkUnnamed4466(
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
    o.annotationResults = buildUnnamed4466();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse(
    api.GoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse <
      3) {
    checkUnnamed4466(o.annotationResults);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1AnnotateVideoResponse--;
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

buildUnnamed4467() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame());
  return o;
}

checkUnnamed4467(
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
    o.frames = buildUnnamed4467();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation <
      3) {
    checkUnnamed4467(o.frames);
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

buildUnnamed4468() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p3beta1Entity>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1Entity());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1Entity());
  return o;
}

checkUnnamed4468(core.List<api.GoogleCloudVideointelligenceV1p3beta1Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1Entity(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1Entity(o[1]);
}

buildUnnamed4469() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelFrame());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelFrame());
  return o;
}

checkUnnamed4469(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelFrame(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelFrame(o[1]);
}

buildUnnamed4470() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelSegment());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelSegment());
  return o;
}

checkUnnamed4470(
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
    o.categoryEntities = buildUnnamed4468();
    o.entity = buildGoogleCloudVideointelligenceV1p3beta1Entity();
    o.frames = buildUnnamed4469();
    o.segments = buildUnnamed4470();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1LabelAnnotation < 3) {
    checkUnnamed4468(o.categoryEntities);
    checkGoogleCloudVideointelligenceV1p3beta1Entity(o.entity);
    checkUnnamed4469(o.frames);
    checkUnnamed4470(o.segments);
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

buildUnnamed4471() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoSegment());
  return o;
}

checkUnnamed4471(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o[1]);
}

buildUnnamed4472() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p3beta1Track>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1Track());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1Track());
  return o;
}

checkUnnamed4472(core.List<api.GoogleCloudVideointelligenceV1p3beta1Track> o) {
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
    o.segments = buildUnnamed4471();
    o.tracks = buildUnnamed4472();
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
    checkUnnamed4471(o.segments);
    checkUnnamed4472(o.tracks);
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

buildUnnamed4473() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1NormalizedVertex>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1NormalizedVertex());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1NormalizedVertex());
  return o;
}

checkUnnamed4473(
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
    o.vertices = buildUnnamed4473();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly(
    api.GoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingPoly <
      3) {
    checkUnnamed4473(o.vertices);
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

buildUnnamed4474() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingFrame());
  return o;
}

checkUnnamed4474(
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
    o.frames = buildUnnamed4474();
    o.segment = buildGoogleCloudVideointelligenceV1p3beta1VideoSegment();
    o.trackId = "foo";
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
    checkUnnamed4474(o.frames);
    checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o.segment);
    unittest.expect(o.trackId, unittest.equals('foo'));
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

buildUnnamed4475() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p3beta1WordInfo>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1WordInfo());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1WordInfo());
  return o;
}

checkUnnamed4475(
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
    o.words = buildUnnamed4475();
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
    checkUnnamed4475(o.words);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative--;
}

buildUnnamed4476() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative>();
  o.add(
      buildGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative());
  o.add(
      buildGoogleCloudVideointelligenceV1p3beta1SpeechRecognitionAlternative());
  return o;
}

checkUnnamed4476(
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
    o.alternatives = buildUnnamed4476();
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
    checkUnnamed4476(o.alternatives);
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

buildUnnamed4477() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  return o;
}

checkUnnamed4477(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[1]);
}

buildUnnamed4478() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation());
  return o;
}

checkUnnamed4478(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(o[1]);
}

buildUnnamed4479() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoSegment());
  return o;
}

checkUnnamed4479(
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
    o.labelAnnotations = buildUnnamed4477();
    o.objectAnnotations = buildUnnamed4478();
    o.shotAnnotations = buildUnnamed4479();
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
    checkUnnamed4477(o.labelAnnotations);
    checkUnnamed4478(o.objectAnnotations);
    checkUnnamed4479(o.shotAnnotations);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults--;
}

buildUnnamed4480() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p3beta1TextSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1TextSegment());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1TextSegment());
  return o;
}

checkUnnamed4480(
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
    o.segments = buildUnnamed4480();
    o.text = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1TextAnnotation(
    api.GoogleCloudVideointelligenceV1p3beta1TextAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1TextAnnotation < 3) {
    checkUnnamed4480(o.segments);
    unittest.expect(o.text, unittest.equals('foo'));
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

buildUnnamed4481() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1p3beta1TextFrame>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1TextFrame());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1TextFrame());
  return o;
}

checkUnnamed4481(
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
    o.frames = buildUnnamed4481();
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
    checkUnnamed4481(o.frames);
    checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1TextSegment--;
}

buildUnnamed4482() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1DetectedAttribute>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1DetectedAttribute());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1DetectedAttribute());
  return o;
}

checkUnnamed4482(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1p3beta1TimestampedObject = 0;
buildGoogleCloudVideointelligenceV1p3beta1TimestampedObject() {
  var o = new api.GoogleCloudVideointelligenceV1p3beta1TimestampedObject();
  buildCounterGoogleCloudVideointelligenceV1p3beta1TimestampedObject++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1TimestampedObject < 3) {
    o.attributes = buildUnnamed4482();
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
    checkUnnamed4482(o.attributes);
    checkGoogleCloudVideointelligenceV1p3beta1NormalizedBoundingBox(
        o.normalizedBoundingBox);
    unittest.expect(o.timeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1TimestampedObject--;
}

buildUnnamed4483() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1DetectedAttribute>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1DetectedAttribute());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1DetectedAttribute());
  return o;
}

checkUnnamed4483(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1DetectedAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1DetectedAttribute(o[1]);
}

buildUnnamed4484() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1TimestampedObject>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1TimestampedObject());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1TimestampedObject());
  return o;
}

checkUnnamed4484(
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
    o.attributes = buildUnnamed4483();
    o.confidence = 42.0;
    o.segment = buildGoogleCloudVideointelligenceV1p3beta1VideoSegment();
    o.timestampedObjects = buildUnnamed4484();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1Track--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1Track(
    api.GoogleCloudVideointelligenceV1p3beta1Track o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1Track++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1Track < 3) {
    checkUnnamed4483(o.attributes);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o.segment);
    checkUnnamed4484(o.timestampedObjects);
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

buildUnnamed4485() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  return o;
}

checkUnnamed4485(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[1]);
}

buildUnnamed4486() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation());
  return o;
}

checkUnnamed4486(
    core.List<
            api.GoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation(o[1]);
}

buildUnnamed4487() {
  var o = new core.List<
      api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation());
  return o;
}

checkUnnamed4487(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation(o[1]);
}

buildUnnamed4488() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  return o;
}

checkUnnamed4488(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[1]);
}

buildUnnamed4489() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1VideoSegment());
  return o;
}

checkUnnamed4489(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1VideoSegment(o[1]);
}

buildUnnamed4490() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1LabelAnnotation());
  return o;
}

checkUnnamed4490(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1LabelAnnotation(o[1]);
}

buildUnnamed4491() {
  var o = new core
      .List<api.GoogleCloudVideointelligenceV1p3beta1SpeechTranscription>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1SpeechTranscription());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1SpeechTranscription());
  return o;
}

checkUnnamed4491(
    core.List<api.GoogleCloudVideointelligenceV1p3beta1SpeechTranscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1p3beta1SpeechTranscription(o[0]);
  checkGoogleCloudVideointelligenceV1p3beta1SpeechTranscription(o[1]);
}

buildUnnamed4492() {
  var o =
      new core.List<api.GoogleCloudVideointelligenceV1p3beta1TextAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1p3beta1TextAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1p3beta1TextAnnotation());
  return o;
}

checkUnnamed4492(
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
    o.error = buildGoogleRpcStatus();
    o.explicitAnnotation =
        buildGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation();
    o.frameLabelAnnotations = buildUnnamed4485();
    o.inputUri = "foo";
    o.logoRecognitionAnnotations = buildUnnamed4486();
    o.objectAnnotations = buildUnnamed4487();
    o.segmentLabelAnnotations = buildUnnamed4488();
    o.shotAnnotations = buildUnnamed4489();
    o.shotLabelAnnotations = buildUnnamed4490();
    o.speechTranscriptions = buildUnnamed4491();
    o.textAnnotations = buildUnnamed4492();
  }
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults--;
  return o;
}

checkGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults(
    api.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults o) {
  buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults <
      3) {
    checkGoogleRpcStatus(o.error);
    checkGoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation(
        o.explicitAnnotation);
    checkUnnamed4485(o.frameLabelAnnotations);
    unittest.expect(o.inputUri, unittest.equals('foo'));
    checkUnnamed4486(o.logoRecognitionAnnotations);
    checkUnnamed4487(o.objectAnnotations);
    checkUnnamed4488(o.segmentLabelAnnotations);
    checkUnnamed4489(o.shotAnnotations);
    checkUnnamed4490(o.shotLabelAnnotations);
    checkUnnamed4491(o.speechTranscriptions);
    checkUnnamed4492(o.textAnnotations);
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

buildUnnamed4493() {
  var o = new core.List<api.GoogleLongrunningOperation>();
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

checkUnnamed4493(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed4493();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4493(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

buildUnnamed4494() {
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

checkUnnamed4494(core.Map<core.String, core.Object> o) {
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

buildUnnamed4495() {
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

checkUnnamed4495(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed4494();
    o.name = "foo";
    o.response = buildUnnamed4495();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error);
    checkUnnamed4494(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4495(o.response);
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

buildUnnamed4496() {
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

checkUnnamed4496(core.Map<core.String, core.Object> o) {
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

buildUnnamed4497() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed4496());
  o.add(buildUnnamed4496());
  return o;
}

checkUnnamed4497(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4496(o[0]);
  checkUnnamed4496(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
buildGoogleRpcStatus() {
  var o = new api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4497();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4497(o.details);
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

  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.VideointelligenceApi(mock).operations;
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
      api.OperationsResourceApi res =
          new api.VideointelligenceApi(mock).operations;
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
      api.OperationsResourceApi res =
          new api.VideointelligenceApi(mock).operations;
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
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
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
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
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
