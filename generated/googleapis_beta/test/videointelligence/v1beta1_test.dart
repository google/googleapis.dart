library googleapis_beta.videointelligence.v1beta1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/videointelligence/v1beta1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request.finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
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

http.StreamedResponse stringResponse(
    core.int status, core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed3354() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1VideoAnnotationProgress>();
  o.add(buildGoogleCloudVideointelligenceV1VideoAnnotationProgress());
  o.add(buildGoogleCloudVideointelligenceV1VideoAnnotationProgress());
  return o;
}

checkUnnamed3354(core.List<api.GoogleCloudVideointelligenceV1VideoAnnotationProgress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1VideoAnnotationProgress(o[0]);
  checkGoogleCloudVideointelligenceV1VideoAnnotationProgress(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress = 0;
buildGoogleCloudVideointelligenceV1AnnotateVideoProgress() {
  var o = new api.GoogleCloudVideointelligenceV1AnnotateVideoProgress();
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress < 3) {
    o.annotationProgress = buildUnnamed3354();
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1AnnotateVideoProgress(api.GoogleCloudVideointelligenceV1AnnotateVideoProgress o) {
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress < 3) {
    checkUnnamed3354(o.annotationProgress);
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoProgress--;
}

buildUnnamed3355() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1VideoAnnotationResults>();
  o.add(buildGoogleCloudVideointelligenceV1VideoAnnotationResults());
  o.add(buildGoogleCloudVideointelligenceV1VideoAnnotationResults());
  return o;
}

checkUnnamed3355(core.List<api.GoogleCloudVideointelligenceV1VideoAnnotationResults> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1VideoAnnotationResults(o[0]);
  checkGoogleCloudVideointelligenceV1VideoAnnotationResults(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse = 0;
buildGoogleCloudVideointelligenceV1AnnotateVideoResponse() {
  var o = new api.GoogleCloudVideointelligenceV1AnnotateVideoResponse();
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse < 3) {
    o.annotationResults = buildUnnamed3355();
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse--;
  return o;
}

checkGoogleCloudVideointelligenceV1AnnotateVideoResponse(api.GoogleCloudVideointelligenceV1AnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse < 3) {
    checkUnnamed3355(o.annotationResults);
  }
  buildCounterGoogleCloudVideointelligenceV1AnnotateVideoResponse--;
}

buildUnnamed3356() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1LabelLocation>();
  o.add(buildGoogleCloudVideointelligenceV1LabelLocation());
  o.add(buildGoogleCloudVideointelligenceV1LabelLocation());
  return o;
}

checkUnnamed3356(core.List<api.GoogleCloudVideointelligenceV1LabelLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelLocation(o[0]);
  checkGoogleCloudVideointelligenceV1LabelLocation(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1LabelAnnotation = 0;
buildGoogleCloudVideointelligenceV1LabelAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1LabelAnnotation();
  buildCounterGoogleCloudVideointelligenceV1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelAnnotation < 3) {
    o.description = "foo";
    o.languageCode = "foo";
    o.locations = buildUnnamed3356();
  }
  buildCounterGoogleCloudVideointelligenceV1LabelAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1LabelAnnotation(api.GoogleCloudVideointelligenceV1LabelAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelAnnotation < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed3356(o.locations);
  }
  buildCounterGoogleCloudVideointelligenceV1LabelAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1LabelLocation = 0;
buildGoogleCloudVideointelligenceV1LabelLocation() {
  var o = new api.GoogleCloudVideointelligenceV1LabelLocation();
  buildCounterGoogleCloudVideointelligenceV1LabelLocation++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelLocation < 3) {
    o.confidence = 42.0;
    o.level = "foo";
    o.segment = buildGoogleCloudVideointelligenceV1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1LabelLocation--;
  return o;
}

checkGoogleCloudVideointelligenceV1LabelLocation(api.GoogleCloudVideointelligenceV1LabelLocation o) {
  buildCounterGoogleCloudVideointelligenceV1LabelLocation++;
  if (buildCounterGoogleCloudVideointelligenceV1LabelLocation < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.level, unittest.equals('foo'));
    checkGoogleCloudVideointelligenceV1VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1LabelLocation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1SafeSearchAnnotation = 0;
buildGoogleCloudVideointelligenceV1SafeSearchAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1SafeSearchAnnotation();
  buildCounterGoogleCloudVideointelligenceV1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1SafeSearchAnnotation < 3) {
    o.adult = "foo";
    o.time = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1SafeSearchAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1SafeSearchAnnotation(api.GoogleCloudVideointelligenceV1SafeSearchAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1SafeSearchAnnotation < 3) {
    unittest.expect(o.adult, unittest.equals('foo'));
    unittest.expect(o.time, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1SafeSearchAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress = 0;
buildGoogleCloudVideointelligenceV1VideoAnnotationProgress() {
  var o = new api.GoogleCloudVideointelligenceV1VideoAnnotationProgress();
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress < 3) {
    o.inputUri = "foo";
    o.progressPercent = 42;
    o.startTime = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1VideoAnnotationProgress(api.GoogleCloudVideointelligenceV1VideoAnnotationProgress o) {
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress < 3) {
    unittest.expect(o.inputUri, unittest.equals('foo'));
    unittest.expect(o.progressPercent, unittest.equals(42));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationProgress--;
}

buildUnnamed3357() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1LabelAnnotation());
  return o;
}

checkUnnamed3357(core.List<api.GoogleCloudVideointelligenceV1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1LabelAnnotation(o[1]);
}

buildUnnamed3358() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1SafeSearchAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1SafeSearchAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1SafeSearchAnnotation());
  return o;
}

checkUnnamed3358(core.List<api.GoogleCloudVideointelligenceV1SafeSearchAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1SafeSearchAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1SafeSearchAnnotation(o[1]);
}

buildUnnamed3359() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1VideoSegment());
  return o;
}

checkUnnamed3359(core.List<api.GoogleCloudVideointelligenceV1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1VideoSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults = 0;
buildGoogleCloudVideointelligenceV1VideoAnnotationResults() {
  var o = new api.GoogleCloudVideointelligenceV1VideoAnnotationResults();
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults < 3) {
    o.error = buildGoogleRpcStatus();
    o.inputUri = "foo";
    o.labelAnnotations = buildUnnamed3357();
    o.safeSearchAnnotations = buildUnnamed3358();
    o.shotAnnotations = buildUnnamed3359();
  }
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults--;
  return o;
}

checkGoogleCloudVideointelligenceV1VideoAnnotationResults(api.GoogleCloudVideointelligenceV1VideoAnnotationResults o) {
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults < 3) {
    checkGoogleRpcStatus(o.error);
    unittest.expect(o.inputUri, unittest.equals('foo'));
    checkUnnamed3357(o.labelAnnotations);
    checkUnnamed3358(o.safeSearchAnnotations);
    checkUnnamed3359(o.shotAnnotations);
  }
  buildCounterGoogleCloudVideointelligenceV1VideoAnnotationResults--;
}

core.int buildCounterGoogleCloudVideointelligenceV1VideoSegment = 0;
buildGoogleCloudVideointelligenceV1VideoSegment() {
  var o = new api.GoogleCloudVideointelligenceV1VideoSegment();
  buildCounterGoogleCloudVideointelligenceV1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoSegment < 3) {
    o.endTime = "foo";
    o.startTime = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1VideoSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1VideoSegment(api.GoogleCloudVideointelligenceV1VideoSegment o) {
  buildCounterGoogleCloudVideointelligenceV1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1VideoSegment < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1VideoSegment--;
}

buildUnnamed3360() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta1VideoAnnotationProgress>();
  o.add(buildGoogleCloudVideointelligenceV1beta1VideoAnnotationProgress());
  o.add(buildGoogleCloudVideointelligenceV1beta1VideoAnnotationProgress());
  return o;
}

checkUnnamed3360(core.List<api.GoogleCloudVideointelligenceV1beta1VideoAnnotationProgress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta1VideoAnnotationProgress(o[0]);
  checkGoogleCloudVideointelligenceV1beta1VideoAnnotationProgress(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress = 0;
buildGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress() {
  var o = new api.GoogleCloudVideointelligenceV1beta1AnnotateVideoProgress();
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress < 3) {
    o.annotationProgress = buildUnnamed3360();
  }
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress(api.GoogleCloudVideointelligenceV1beta1AnnotateVideoProgress o) {
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress < 3) {
    checkUnnamed3360(o.annotationProgress);
  }
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress--;
}

buildUnnamed3361() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3361(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoRequest = 0;
buildGoogleCloudVideointelligenceV1beta1AnnotateVideoRequest() {
  var o = new api.GoogleCloudVideointelligenceV1beta1AnnotateVideoRequest();
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoRequest++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoRequest < 3) {
    o.features = buildUnnamed3361();
    o.inputContent = "foo";
    o.inputUri = "foo";
    o.locationId = "foo";
    o.outputUri = "foo";
    o.videoContext = buildGoogleCloudVideointelligenceV1beta1VideoContext();
  }
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoRequest--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta1AnnotateVideoRequest(api.GoogleCloudVideointelligenceV1beta1AnnotateVideoRequest o) {
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoRequest++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoRequest < 3) {
    checkUnnamed3361(o.features);
    unittest.expect(o.inputContent, unittest.equals('foo'));
    unittest.expect(o.inputUri, unittest.equals('foo'));
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.outputUri, unittest.equals('foo'));
    checkGoogleCloudVideointelligenceV1beta1VideoContext(o.videoContext);
  }
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoRequest--;
}

buildUnnamed3362() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta1VideoAnnotationResults>();
  o.add(buildGoogleCloudVideointelligenceV1beta1VideoAnnotationResults());
  o.add(buildGoogleCloudVideointelligenceV1beta1VideoAnnotationResults());
  return o;
}

checkUnnamed3362(core.List<api.GoogleCloudVideointelligenceV1beta1VideoAnnotationResults> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta1VideoAnnotationResults(o[0]);
  checkGoogleCloudVideointelligenceV1beta1VideoAnnotationResults(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse = 0;
buildGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse() {
  var o = new api.GoogleCloudVideointelligenceV1beta1AnnotateVideoResponse();
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse < 3) {
    o.annotationResults = buildUnnamed3362();
  }
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse(api.GoogleCloudVideointelligenceV1beta1AnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse < 3) {
    checkUnnamed3362(o.annotationResults);
  }
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse--;
}

buildUnnamed3363() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta1LabelLocation>();
  o.add(buildGoogleCloudVideointelligenceV1beta1LabelLocation());
  o.add(buildGoogleCloudVideointelligenceV1beta1LabelLocation());
  return o;
}

checkUnnamed3363(core.List<api.GoogleCloudVideointelligenceV1beta1LabelLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta1LabelLocation(o[0]);
  checkGoogleCloudVideointelligenceV1beta1LabelLocation(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta1LabelAnnotation = 0;
buildGoogleCloudVideointelligenceV1beta1LabelAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1beta1LabelAnnotation();
  buildCounterGoogleCloudVideointelligenceV1beta1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1LabelAnnotation < 3) {
    o.description = "foo";
    o.languageCode = "foo";
    o.locations = buildUnnamed3363();
  }
  buildCounterGoogleCloudVideointelligenceV1beta1LabelAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta1LabelAnnotation(api.GoogleCloudVideointelligenceV1beta1LabelAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1LabelAnnotation < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed3363(o.locations);
  }
  buildCounterGoogleCloudVideointelligenceV1beta1LabelAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta1LabelLocation = 0;
buildGoogleCloudVideointelligenceV1beta1LabelLocation() {
  var o = new api.GoogleCloudVideointelligenceV1beta1LabelLocation();
  buildCounterGoogleCloudVideointelligenceV1beta1LabelLocation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1LabelLocation < 3) {
    o.confidence = 42.0;
    o.level = "foo";
    o.segment = buildGoogleCloudVideointelligenceV1beta1VideoSegment();
  }
  buildCounterGoogleCloudVideointelligenceV1beta1LabelLocation--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta1LabelLocation(api.GoogleCloudVideointelligenceV1beta1LabelLocation o) {
  buildCounterGoogleCloudVideointelligenceV1beta1LabelLocation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1LabelLocation < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.level, unittest.equals('foo'));
    checkGoogleCloudVideointelligenceV1beta1VideoSegment(o.segment);
  }
  buildCounterGoogleCloudVideointelligenceV1beta1LabelLocation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta1SafeSearchAnnotation = 0;
buildGoogleCloudVideointelligenceV1beta1SafeSearchAnnotation() {
  var o = new api.GoogleCloudVideointelligenceV1beta1SafeSearchAnnotation();
  buildCounterGoogleCloudVideointelligenceV1beta1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1SafeSearchAnnotation < 3) {
    o.adult = "foo";
    o.medical = "foo";
    o.racy = "foo";
    o.spoof = "foo";
    o.timeOffset = "foo";
    o.violent = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta1SafeSearchAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta1SafeSearchAnnotation(api.GoogleCloudVideointelligenceV1beta1SafeSearchAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1SafeSearchAnnotation < 3) {
    unittest.expect(o.adult, unittest.equals('foo'));
    unittest.expect(o.medical, unittest.equals('foo'));
    unittest.expect(o.racy, unittest.equals('foo'));
    unittest.expect(o.spoof, unittest.equals('foo'));
    unittest.expect(o.timeOffset, unittest.equals('foo'));
    unittest.expect(o.violent, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta1SafeSearchAnnotation--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta1VideoAnnotationProgress = 0;
buildGoogleCloudVideointelligenceV1beta1VideoAnnotationProgress() {
  var o = new api.GoogleCloudVideointelligenceV1beta1VideoAnnotationProgress();
  buildCounterGoogleCloudVideointelligenceV1beta1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1VideoAnnotationProgress < 3) {
    o.inputUri = "foo";
    o.progressPercent = 42;
    o.startTime = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta1VideoAnnotationProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta1VideoAnnotationProgress(api.GoogleCloudVideointelligenceV1beta1VideoAnnotationProgress o) {
  buildCounterGoogleCloudVideointelligenceV1beta1VideoAnnotationProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1VideoAnnotationProgress < 3) {
    unittest.expect(o.inputUri, unittest.equals('foo'));
    unittest.expect(o.progressPercent, unittest.equals(42));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta1VideoAnnotationProgress--;
}

buildUnnamed3364() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1beta1LabelAnnotation());
  return o;
}

checkUnnamed3364(core.List<api.GoogleCloudVideointelligenceV1beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta1LabelAnnotation(o[1]);
}

buildUnnamed3365() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta1SafeSearchAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1beta1SafeSearchAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1beta1SafeSearchAnnotation());
  return o;
}

checkUnnamed3365(core.List<api.GoogleCloudVideointelligenceV1beta1SafeSearchAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta1SafeSearchAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta1SafeSearchAnnotation(o[1]);
}

buildUnnamed3366() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1beta1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1beta1VideoSegment());
  return o;
}

checkUnnamed3366(core.List<api.GoogleCloudVideointelligenceV1beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1beta1VideoSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta1VideoAnnotationResults = 0;
buildGoogleCloudVideointelligenceV1beta1VideoAnnotationResults() {
  var o = new api.GoogleCloudVideointelligenceV1beta1VideoAnnotationResults();
  buildCounterGoogleCloudVideointelligenceV1beta1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1VideoAnnotationResults < 3) {
    o.error = buildGoogleRpcStatus();
    o.inputUri = "foo";
    o.labelAnnotations = buildUnnamed3364();
    o.safeSearchAnnotations = buildUnnamed3365();
    o.shotAnnotations = buildUnnamed3366();
  }
  buildCounterGoogleCloudVideointelligenceV1beta1VideoAnnotationResults--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta1VideoAnnotationResults(api.GoogleCloudVideointelligenceV1beta1VideoAnnotationResults o) {
  buildCounterGoogleCloudVideointelligenceV1beta1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1VideoAnnotationResults < 3) {
    checkGoogleRpcStatus(o.error);
    unittest.expect(o.inputUri, unittest.equals('foo'));
    checkUnnamed3364(o.labelAnnotations);
    checkUnnamed3365(o.safeSearchAnnotations);
    checkUnnamed3366(o.shotAnnotations);
  }
  buildCounterGoogleCloudVideointelligenceV1beta1VideoAnnotationResults--;
}

buildUnnamed3367() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1beta1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1beta1VideoSegment());
  return o;
}

checkUnnamed3367(core.List<api.GoogleCloudVideointelligenceV1beta1VideoSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta1VideoSegment(o[0]);
  checkGoogleCloudVideointelligenceV1beta1VideoSegment(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta1VideoContext = 0;
buildGoogleCloudVideointelligenceV1beta1VideoContext() {
  var o = new api.GoogleCloudVideointelligenceV1beta1VideoContext();
  buildCounterGoogleCloudVideointelligenceV1beta1VideoContext++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1VideoContext < 3) {
    o.labelDetectionMode = "foo";
    o.labelDetectionModel = "foo";
    o.safeSearchDetectionModel = "foo";
    o.segments = buildUnnamed3367();
    o.shotChangeDetectionModel = "foo";
    o.stationaryCamera = true;
  }
  buildCounterGoogleCloudVideointelligenceV1beta1VideoContext--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta1VideoContext(api.GoogleCloudVideointelligenceV1beta1VideoContext o) {
  buildCounterGoogleCloudVideointelligenceV1beta1VideoContext++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1VideoContext < 3) {
    unittest.expect(o.labelDetectionMode, unittest.equals('foo'));
    unittest.expect(o.labelDetectionModel, unittest.equals('foo'));
    unittest.expect(o.safeSearchDetectionModel, unittest.equals('foo'));
    checkUnnamed3367(o.segments);
    unittest.expect(o.shotChangeDetectionModel, unittest.equals('foo'));
    unittest.expect(o.stationaryCamera, unittest.isTrue);
  }
  buildCounterGoogleCloudVideointelligenceV1beta1VideoContext--;
}

core.int buildCounterGoogleCloudVideointelligenceV1beta1VideoSegment = 0;
buildGoogleCloudVideointelligenceV1beta1VideoSegment() {
  var o = new api.GoogleCloudVideointelligenceV1beta1VideoSegment();
  buildCounterGoogleCloudVideointelligenceV1beta1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1VideoSegment < 3) {
    o.endTimeOffset = "foo";
    o.startTimeOffset = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta1VideoSegment--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta1VideoSegment(api.GoogleCloudVideointelligenceV1beta1VideoSegment o) {
  buildCounterGoogleCloudVideointelligenceV1beta1VideoSegment++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1VideoSegment < 3) {
    unittest.expect(o.endTimeOffset, unittest.equals('foo'));
    unittest.expect(o.startTimeOffset, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVideointelligenceV1beta1VideoSegment--;
}

buildUnnamed3368() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3368(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o["y"]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

buildUnnamed3369() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3369(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map; unittest.expect(casted3, unittest.hasLength(3)); unittest.expect(casted3["list"], unittest.equals([1, 2, 3])); unittest.expect(casted3["bool"], unittest.equals(true)); unittest.expect(casted3["string"], unittest.equals('foo')); 
  var casted4 = (o["y"]) as core.Map; unittest.expect(casted4, unittest.hasLength(3)); unittest.expect(casted4["list"], unittest.equals([1, 2, 3])); unittest.expect(casted4["bool"], unittest.equals(true)); unittest.expect(casted4["string"], unittest.equals('foo')); 
}

core.int buildCounterGoogleLongrunningOperation = 0;
buildGoogleLongrunningOperation() {
  var o = new api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed3368();
    o.name = "foo";
    o.response = buildUnnamed3369();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error);
    checkUnnamed3368(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3369(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

buildUnnamed3370() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3370(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map; unittest.expect(casted5, unittest.hasLength(3)); unittest.expect(casted5["list"], unittest.equals([1, 2, 3])); unittest.expect(casted5["bool"], unittest.equals(true)); unittest.expect(casted5["string"], unittest.equals('foo')); 
  var casted6 = (o["y"]) as core.Map; unittest.expect(casted6, unittest.hasLength(3)); unittest.expect(casted6["list"], unittest.equals([1, 2, 3])); unittest.expect(casted6["bool"], unittest.equals(true)); unittest.expect(casted6["string"], unittest.equals('foo')); 
}

buildUnnamed3371() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed3370());
  o.add(buildUnnamed3370());
  return o;
}

checkUnnamed3371(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3370(o[0]);
  checkUnnamed3370(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
buildGoogleRpcStatus() {
  var o = new api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3371();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3371(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}


main() {
  unittest.group("obj-schema-GoogleCloudVideointelligenceV1AnnotateVideoProgress", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1AnnotateVideoProgress();
      var od = new api.GoogleCloudVideointelligenceV1AnnotateVideoProgress.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1AnnotateVideoProgress(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudVideointelligenceV1AnnotateVideoResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1AnnotateVideoResponse();
      var od = new api.GoogleCloudVideointelligenceV1AnnotateVideoResponse.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1AnnotateVideoResponse(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudVideointelligenceV1LabelAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1LabelAnnotation();
      var od = new api.GoogleCloudVideointelligenceV1LabelAnnotation.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1LabelAnnotation(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudVideointelligenceV1LabelLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1LabelLocation();
      var od = new api.GoogleCloudVideointelligenceV1LabelLocation.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1LabelLocation(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudVideointelligenceV1SafeSearchAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1SafeSearchAnnotation();
      var od = new api.GoogleCloudVideointelligenceV1SafeSearchAnnotation.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1SafeSearchAnnotation(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudVideointelligenceV1VideoAnnotationProgress", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1VideoAnnotationProgress();
      var od = new api.GoogleCloudVideointelligenceV1VideoAnnotationProgress.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1VideoAnnotationProgress(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudVideointelligenceV1VideoAnnotationResults", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1VideoAnnotationResults();
      var od = new api.GoogleCloudVideointelligenceV1VideoAnnotationResults.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1VideoAnnotationResults(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudVideointelligenceV1VideoSegment", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1VideoSegment();
      var od = new api.GoogleCloudVideointelligenceV1VideoSegment.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1VideoSegment(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta1AnnotateVideoProgress", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress();
      var od = new api.GoogleCloudVideointelligenceV1beta1AnnotateVideoProgress.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta1AnnotateVideoRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta1AnnotateVideoRequest();
      var od = new api.GoogleCloudVideointelligenceV1beta1AnnotateVideoRequest.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1beta1AnnotateVideoRequest(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta1AnnotateVideoResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse();
      var od = new api.GoogleCloudVideointelligenceV1beta1AnnotateVideoResponse.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta1LabelAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta1LabelAnnotation();
      var od = new api.GoogleCloudVideointelligenceV1beta1LabelAnnotation.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1beta1LabelAnnotation(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta1LabelLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta1LabelLocation();
      var od = new api.GoogleCloudVideointelligenceV1beta1LabelLocation.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1beta1LabelLocation(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta1SafeSearchAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta1SafeSearchAnnotation();
      var od = new api.GoogleCloudVideointelligenceV1beta1SafeSearchAnnotation.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1beta1SafeSearchAnnotation(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta1VideoAnnotationProgress", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta1VideoAnnotationProgress();
      var od = new api.GoogleCloudVideointelligenceV1beta1VideoAnnotationProgress.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1beta1VideoAnnotationProgress(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta1VideoAnnotationResults", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta1VideoAnnotationResults();
      var od = new api.GoogleCloudVideointelligenceV1beta1VideoAnnotationResults.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1beta1VideoAnnotationResults(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta1VideoContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta1VideoContext();
      var od = new api.GoogleCloudVideointelligenceV1beta1VideoContext.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1beta1VideoContext(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudVideointelligenceV1beta1VideoSegment", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVideointelligenceV1beta1VideoSegment();
      var od = new api.GoogleCloudVideointelligenceV1beta1VideoSegment.fromJson(o.toJson());
      checkGoogleCloudVideointelligenceV1beta1VideoSegment(od);
    });
  });


  unittest.group("obj-schema-GoogleLongrunningOperation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningOperation();
      var od = new api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od);
    });
  });


  unittest.group("obj-schema-GoogleRpcStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleRpcStatus();
      var od = new api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od);
    });
  });


  unittest.group("resource-VideosResourceApi", () {
    unittest.test("method--annotate", () {

      var mock = new HttpServerMock();
      api.VideosResourceApi res = new api.VideointelligenceApi(mock).videos;
      var arg_request = buildGoogleCloudVideointelligenceV1beta1AnnotateVideoRequest();
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudVideointelligenceV1beta1AnnotateVideoRequest.fromJson(json);
        checkGoogleCloudVideointelligenceV1beta1AnnotateVideoRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 23), unittest.equals("v1beta1/videos:annotate"));
        pathOffset += 23;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.annotate(arg_request).then(unittest.expectAsync1(((api.GoogleLongrunningOperation response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

  });


}

