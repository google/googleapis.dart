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

buildUnnamed3206() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta1VideoAnnotationProgress>();
  o.add(buildGoogleCloudVideointelligenceV1beta1VideoAnnotationProgress());
  o.add(buildGoogleCloudVideointelligenceV1beta1VideoAnnotationProgress());
  return o;
}

checkUnnamed3206(core.List<api.GoogleCloudVideointelligenceV1beta1VideoAnnotationProgress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta1VideoAnnotationProgress(o[0]);
  checkGoogleCloudVideointelligenceV1beta1VideoAnnotationProgress(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress = 0;
buildGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress() {
  var o = new api.GoogleCloudVideointelligenceV1beta1AnnotateVideoProgress();
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress < 3) {
    o.annotationProgress = buildUnnamed3206();
  }
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress(api.GoogleCloudVideointelligenceV1beta1AnnotateVideoProgress o) {
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress < 3) {
    checkUnnamed3206(o.annotationProgress);
  }
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoProgress--;
}

buildUnnamed3207() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3207(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoRequest = 0;
buildGoogleCloudVideointelligenceV1beta1AnnotateVideoRequest() {
  var o = new api.GoogleCloudVideointelligenceV1beta1AnnotateVideoRequest();
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoRequest++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoRequest < 3) {
    o.features = buildUnnamed3207();
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
    checkUnnamed3207(o.features);
    unittest.expect(o.inputContent, unittest.equals('foo'));
    unittest.expect(o.inputUri, unittest.equals('foo'));
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.outputUri, unittest.equals('foo'));
    checkGoogleCloudVideointelligenceV1beta1VideoContext(o.videoContext);
  }
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoRequest--;
}

buildUnnamed3208() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta1VideoAnnotationResults>();
  o.add(buildGoogleCloudVideointelligenceV1beta1VideoAnnotationResults());
  o.add(buildGoogleCloudVideointelligenceV1beta1VideoAnnotationResults());
  return o;
}

checkUnnamed3208(core.List<api.GoogleCloudVideointelligenceV1beta1VideoAnnotationResults> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta1VideoAnnotationResults(o[0]);
  checkGoogleCloudVideointelligenceV1beta1VideoAnnotationResults(o[1]);
}

core.int buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse = 0;
buildGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse() {
  var o = new api.GoogleCloudVideointelligenceV1beta1AnnotateVideoResponse();
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse < 3) {
    o.annotationResults = buildUnnamed3208();
  }
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse(api.GoogleCloudVideointelligenceV1beta1AnnotateVideoResponse o) {
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse < 3) {
    checkUnnamed3208(o.annotationResults);
  }
  buildCounterGoogleCloudVideointelligenceV1beta1AnnotateVideoResponse--;
}

buildUnnamed3209() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta1LabelLocation>();
  o.add(buildGoogleCloudVideointelligenceV1beta1LabelLocation());
  o.add(buildGoogleCloudVideointelligenceV1beta1LabelLocation());
  return o;
}

checkUnnamed3209(core.List<api.GoogleCloudVideointelligenceV1beta1LabelLocation> o) {
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
    o.locations = buildUnnamed3209();
  }
  buildCounterGoogleCloudVideointelligenceV1beta1LabelAnnotation--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta1LabelAnnotation(api.GoogleCloudVideointelligenceV1beta1LabelAnnotation o) {
  buildCounterGoogleCloudVideointelligenceV1beta1LabelAnnotation++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1LabelAnnotation < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    checkUnnamed3209(o.locations);
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

buildUnnamed3210() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta1LabelAnnotation>();
  o.add(buildGoogleCloudVideointelligenceV1beta1LabelAnnotation());
  o.add(buildGoogleCloudVideointelligenceV1beta1LabelAnnotation());
  return o;
}

checkUnnamed3210(core.List<api.GoogleCloudVideointelligenceV1beta1LabelAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVideointelligenceV1beta1LabelAnnotation(o[0]);
  checkGoogleCloudVideointelligenceV1beta1LabelAnnotation(o[1]);
}

buildUnnamed3211() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1beta1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1beta1VideoSegment());
  return o;
}

checkUnnamed3211(core.List<api.GoogleCloudVideointelligenceV1beta1VideoSegment> o) {
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
    o.labelAnnotations = buildUnnamed3210();
    o.shotAnnotations = buildUnnamed3211();
  }
  buildCounterGoogleCloudVideointelligenceV1beta1VideoAnnotationResults--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta1VideoAnnotationResults(api.GoogleCloudVideointelligenceV1beta1VideoAnnotationResults o) {
  buildCounterGoogleCloudVideointelligenceV1beta1VideoAnnotationResults++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1VideoAnnotationResults < 3) {
    checkGoogleRpcStatus(o.error);
    unittest.expect(o.inputUri, unittest.equals('foo'));
    checkUnnamed3210(o.labelAnnotations);
    checkUnnamed3211(o.shotAnnotations);
  }
  buildCounterGoogleCloudVideointelligenceV1beta1VideoAnnotationResults--;
}

buildUnnamed3212() {
  var o = new core.List<api.GoogleCloudVideointelligenceV1beta1VideoSegment>();
  o.add(buildGoogleCloudVideointelligenceV1beta1VideoSegment());
  o.add(buildGoogleCloudVideointelligenceV1beta1VideoSegment());
  return o;
}

checkUnnamed3212(core.List<api.GoogleCloudVideointelligenceV1beta1VideoSegment> o) {
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
    o.segments = buildUnnamed3212();
    o.shotChangeDetectionModel = "foo";
  }
  buildCounterGoogleCloudVideointelligenceV1beta1VideoContext--;
  return o;
}

checkGoogleCloudVideointelligenceV1beta1VideoContext(api.GoogleCloudVideointelligenceV1beta1VideoContext o) {
  buildCounterGoogleCloudVideointelligenceV1beta1VideoContext++;
  if (buildCounterGoogleCloudVideointelligenceV1beta1VideoContext < 3) {
    unittest.expect(o.labelDetectionMode, unittest.equals('foo'));
    unittest.expect(o.labelDetectionModel, unittest.equals('foo'));
    checkUnnamed3212(o.segments);
    unittest.expect(o.shotChangeDetectionModel, unittest.equals('foo'));
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

buildUnnamed3213() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3213(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o["y"]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

buildUnnamed3214() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3214(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed3213();
    o.name = "foo";
    o.response = buildUnnamed3214();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error);
    checkUnnamed3213(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3214(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

buildUnnamed3215() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3215(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map; unittest.expect(casted5, unittest.hasLength(3)); unittest.expect(casted5["list"], unittest.equals([1, 2, 3])); unittest.expect(casted5["bool"], unittest.equals(true)); unittest.expect(casted5["string"], unittest.equals('foo')); 
  var casted6 = (o["y"]) as core.Map; unittest.expect(casted6, unittest.hasLength(3)); unittest.expect(casted6["list"], unittest.equals([1, 2, 3])); unittest.expect(casted6["bool"], unittest.equals(true)); unittest.expect(casted6["string"], unittest.equals('foo')); 
}

buildUnnamed3216() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed3215());
  o.add(buildUnnamed3215());
  return o;
}

checkUnnamed3216(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3215(o[0]);
  checkUnnamed3215(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
buildGoogleRpcStatus() {
  var o = new api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3216();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3216(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}


main() {
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

