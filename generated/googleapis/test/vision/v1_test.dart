library googleapis.vision.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/vision/v1.dart' as api;

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

buildUnnamed4637() {
  var o = new core.List<api.AnnotateImageResponse>();
  o.add(buildAnnotateImageResponse());
  o.add(buildAnnotateImageResponse());
  return o;
}

checkUnnamed4637(core.List<api.AnnotateImageResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotateImageResponse(o[0]);
  checkAnnotateImageResponse(o[1]);
}

core.int buildCounterAnnotateFileResponse = 0;
buildAnnotateFileResponse() {
  var o = new api.AnnotateFileResponse();
  buildCounterAnnotateFileResponse++;
  if (buildCounterAnnotateFileResponse < 3) {
    o.inputConfig = buildInputConfig();
    o.responses = buildUnnamed4637();
  }
  buildCounterAnnotateFileResponse--;
  return o;
}

checkAnnotateFileResponse(api.AnnotateFileResponse o) {
  buildCounterAnnotateFileResponse++;
  if (buildCounterAnnotateFileResponse < 3) {
    checkInputConfig(o.inputConfig);
    checkUnnamed4637(o.responses);
  }
  buildCounterAnnotateFileResponse--;
}

buildUnnamed4638() {
  var o = new core.List<api.Feature>();
  o.add(buildFeature());
  o.add(buildFeature());
  return o;
}

checkUnnamed4638(core.List<api.Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeature(o[0]);
  checkFeature(o[1]);
}

core.int buildCounterAnnotateImageRequest = 0;
buildAnnotateImageRequest() {
  var o = new api.AnnotateImageRequest();
  buildCounterAnnotateImageRequest++;
  if (buildCounterAnnotateImageRequest < 3) {
    o.features = buildUnnamed4638();
    o.image = buildImage();
    o.imageContext = buildImageContext();
  }
  buildCounterAnnotateImageRequest--;
  return o;
}

checkAnnotateImageRequest(api.AnnotateImageRequest o) {
  buildCounterAnnotateImageRequest++;
  if (buildCounterAnnotateImageRequest < 3) {
    checkUnnamed4638(o.features);
    checkImage(o.image);
    checkImageContext(o.imageContext);
  }
  buildCounterAnnotateImageRequest--;
}

buildUnnamed4639() {
  var o = new core.List<api.FaceAnnotation>();
  o.add(buildFaceAnnotation());
  o.add(buildFaceAnnotation());
  return o;
}

checkUnnamed4639(core.List<api.FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFaceAnnotation(o[0]);
  checkFaceAnnotation(o[1]);
}

buildUnnamed4640() {
  var o = new core.List<api.EntityAnnotation>();
  o.add(buildEntityAnnotation());
  o.add(buildEntityAnnotation());
  return o;
}

checkUnnamed4640(core.List<api.EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityAnnotation(o[0]);
  checkEntityAnnotation(o[1]);
}

buildUnnamed4641() {
  var o = new core.List<api.EntityAnnotation>();
  o.add(buildEntityAnnotation());
  o.add(buildEntityAnnotation());
  return o;
}

checkUnnamed4641(core.List<api.EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityAnnotation(o[0]);
  checkEntityAnnotation(o[1]);
}

buildUnnamed4642() {
  var o = new core.List<api.EntityAnnotation>();
  o.add(buildEntityAnnotation());
  o.add(buildEntityAnnotation());
  return o;
}

checkUnnamed4642(core.List<api.EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityAnnotation(o[0]);
  checkEntityAnnotation(o[1]);
}

buildUnnamed4643() {
  var o = new core.List<api.EntityAnnotation>();
  o.add(buildEntityAnnotation());
  o.add(buildEntityAnnotation());
  return o;
}

checkUnnamed4643(core.List<api.EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityAnnotation(o[0]);
  checkEntityAnnotation(o[1]);
}

core.int buildCounterAnnotateImageResponse = 0;
buildAnnotateImageResponse() {
  var o = new api.AnnotateImageResponse();
  buildCounterAnnotateImageResponse++;
  if (buildCounterAnnotateImageResponse < 3) {
    o.context = buildImageAnnotationContext();
    o.cropHintsAnnotation = buildCropHintsAnnotation();
    o.error = buildStatus();
    o.faceAnnotations = buildUnnamed4639();
    o.fullTextAnnotation = buildTextAnnotation();
    o.imagePropertiesAnnotation = buildImageProperties();
    o.labelAnnotations = buildUnnamed4640();
    o.landmarkAnnotations = buildUnnamed4641();
    o.logoAnnotations = buildUnnamed4642();
    o.safeSearchAnnotation = buildSafeSearchAnnotation();
    o.textAnnotations = buildUnnamed4643();
    o.webDetection = buildWebDetection();
  }
  buildCounterAnnotateImageResponse--;
  return o;
}

checkAnnotateImageResponse(api.AnnotateImageResponse o) {
  buildCounterAnnotateImageResponse++;
  if (buildCounterAnnotateImageResponse < 3) {
    checkImageAnnotationContext(o.context);
    checkCropHintsAnnotation(o.cropHintsAnnotation);
    checkStatus(o.error);
    checkUnnamed4639(o.faceAnnotations);
    checkTextAnnotation(o.fullTextAnnotation);
    checkImageProperties(o.imagePropertiesAnnotation);
    checkUnnamed4640(o.labelAnnotations);
    checkUnnamed4641(o.landmarkAnnotations);
    checkUnnamed4642(o.logoAnnotations);
    checkSafeSearchAnnotation(o.safeSearchAnnotation);
    checkUnnamed4643(o.textAnnotations);
    checkWebDetection(o.webDetection);
  }
  buildCounterAnnotateImageResponse--;
}

buildUnnamed4644() {
  var o = new core.List<api.Feature>();
  o.add(buildFeature());
  o.add(buildFeature());
  return o;
}

checkUnnamed4644(core.List<api.Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeature(o[0]);
  checkFeature(o[1]);
}

core.int buildCounterAsyncAnnotateFileRequest = 0;
buildAsyncAnnotateFileRequest() {
  var o = new api.AsyncAnnotateFileRequest();
  buildCounterAsyncAnnotateFileRequest++;
  if (buildCounterAsyncAnnotateFileRequest < 3) {
    o.features = buildUnnamed4644();
    o.imageContext = buildImageContext();
    o.inputConfig = buildInputConfig();
    o.outputConfig = buildOutputConfig();
  }
  buildCounterAsyncAnnotateFileRequest--;
  return o;
}

checkAsyncAnnotateFileRequest(api.AsyncAnnotateFileRequest o) {
  buildCounterAsyncAnnotateFileRequest++;
  if (buildCounterAsyncAnnotateFileRequest < 3) {
    checkUnnamed4644(o.features);
    checkImageContext(o.imageContext);
    checkInputConfig(o.inputConfig);
    checkOutputConfig(o.outputConfig);
  }
  buildCounterAsyncAnnotateFileRequest--;
}

core.int buildCounterAsyncAnnotateFileResponse = 0;
buildAsyncAnnotateFileResponse() {
  var o = new api.AsyncAnnotateFileResponse();
  buildCounterAsyncAnnotateFileResponse++;
  if (buildCounterAsyncAnnotateFileResponse < 3) {
    o.outputConfig = buildOutputConfig();
  }
  buildCounterAsyncAnnotateFileResponse--;
  return o;
}

checkAsyncAnnotateFileResponse(api.AsyncAnnotateFileResponse o) {
  buildCounterAsyncAnnotateFileResponse++;
  if (buildCounterAsyncAnnotateFileResponse < 3) {
    checkOutputConfig(o.outputConfig);
  }
  buildCounterAsyncAnnotateFileResponse--;
}

buildUnnamed4645() {
  var o = new core.List<api.AsyncAnnotateFileRequest>();
  o.add(buildAsyncAnnotateFileRequest());
  o.add(buildAsyncAnnotateFileRequest());
  return o;
}

checkUnnamed4645(core.List<api.AsyncAnnotateFileRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsyncAnnotateFileRequest(o[0]);
  checkAsyncAnnotateFileRequest(o[1]);
}

core.int buildCounterAsyncBatchAnnotateFilesRequest = 0;
buildAsyncBatchAnnotateFilesRequest() {
  var o = new api.AsyncBatchAnnotateFilesRequest();
  buildCounterAsyncBatchAnnotateFilesRequest++;
  if (buildCounterAsyncBatchAnnotateFilesRequest < 3) {
    o.requests = buildUnnamed4645();
  }
  buildCounterAsyncBatchAnnotateFilesRequest--;
  return o;
}

checkAsyncBatchAnnotateFilesRequest(api.AsyncBatchAnnotateFilesRequest o) {
  buildCounterAsyncBatchAnnotateFilesRequest++;
  if (buildCounterAsyncBatchAnnotateFilesRequest < 3) {
    checkUnnamed4645(o.requests);
  }
  buildCounterAsyncBatchAnnotateFilesRequest--;
}

buildUnnamed4646() {
  var o = new core.List<api.AsyncAnnotateFileResponse>();
  o.add(buildAsyncAnnotateFileResponse());
  o.add(buildAsyncAnnotateFileResponse());
  return o;
}

checkUnnamed4646(core.List<api.AsyncAnnotateFileResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsyncAnnotateFileResponse(o[0]);
  checkAsyncAnnotateFileResponse(o[1]);
}

core.int buildCounterAsyncBatchAnnotateFilesResponse = 0;
buildAsyncBatchAnnotateFilesResponse() {
  var o = new api.AsyncBatchAnnotateFilesResponse();
  buildCounterAsyncBatchAnnotateFilesResponse++;
  if (buildCounterAsyncBatchAnnotateFilesResponse < 3) {
    o.responses = buildUnnamed4646();
  }
  buildCounterAsyncBatchAnnotateFilesResponse--;
  return o;
}

checkAsyncBatchAnnotateFilesResponse(api.AsyncBatchAnnotateFilesResponse o) {
  buildCounterAsyncBatchAnnotateFilesResponse++;
  if (buildCounterAsyncBatchAnnotateFilesResponse < 3) {
    checkUnnamed4646(o.responses);
  }
  buildCounterAsyncBatchAnnotateFilesResponse--;
}

buildUnnamed4647() {
  var o = new core.List<api.AnnotateImageRequest>();
  o.add(buildAnnotateImageRequest());
  o.add(buildAnnotateImageRequest());
  return o;
}

checkUnnamed4647(core.List<api.AnnotateImageRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotateImageRequest(o[0]);
  checkAnnotateImageRequest(o[1]);
}

core.int buildCounterBatchAnnotateImagesRequest = 0;
buildBatchAnnotateImagesRequest() {
  var o = new api.BatchAnnotateImagesRequest();
  buildCounterBatchAnnotateImagesRequest++;
  if (buildCounterBatchAnnotateImagesRequest < 3) {
    o.requests = buildUnnamed4647();
  }
  buildCounterBatchAnnotateImagesRequest--;
  return o;
}

checkBatchAnnotateImagesRequest(api.BatchAnnotateImagesRequest o) {
  buildCounterBatchAnnotateImagesRequest++;
  if (buildCounterBatchAnnotateImagesRequest < 3) {
    checkUnnamed4647(o.requests);
  }
  buildCounterBatchAnnotateImagesRequest--;
}

buildUnnamed4648() {
  var o = new core.List<api.AnnotateImageResponse>();
  o.add(buildAnnotateImageResponse());
  o.add(buildAnnotateImageResponse());
  return o;
}

checkUnnamed4648(core.List<api.AnnotateImageResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotateImageResponse(o[0]);
  checkAnnotateImageResponse(o[1]);
}

core.int buildCounterBatchAnnotateImagesResponse = 0;
buildBatchAnnotateImagesResponse() {
  var o = new api.BatchAnnotateImagesResponse();
  buildCounterBatchAnnotateImagesResponse++;
  if (buildCounterBatchAnnotateImagesResponse < 3) {
    o.responses = buildUnnamed4648();
  }
  buildCounterBatchAnnotateImagesResponse--;
  return o;
}

checkBatchAnnotateImagesResponse(api.BatchAnnotateImagesResponse o) {
  buildCounterBatchAnnotateImagesResponse++;
  if (buildCounterBatchAnnotateImagesResponse < 3) {
    checkUnnamed4648(o.responses);
  }
  buildCounterBatchAnnotateImagesResponse--;
}

buildUnnamed4649() {
  var o = new core.List<api.Paragraph>();
  o.add(buildParagraph());
  o.add(buildParagraph());
  return o;
}

checkUnnamed4649(core.List<api.Paragraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParagraph(o[0]);
  checkParagraph(o[1]);
}

core.int buildCounterBlock = 0;
buildBlock() {
  var o = new api.Block();
  buildCounterBlock++;
  if (buildCounterBlock < 3) {
    o.blockType = "foo";
    o.boundingBox = buildBoundingPoly();
    o.confidence = 42.0;
    o.paragraphs = buildUnnamed4649();
    o.property = buildTextProperty();
  }
  buildCounterBlock--;
  return o;
}

checkBlock(api.Block o) {
  buildCounterBlock++;
  if (buildCounterBlock < 3) {
    unittest.expect(o.blockType, unittest.equals('foo'));
    checkBoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkUnnamed4649(o.paragraphs);
    checkTextProperty(o.property);
  }
  buildCounterBlock--;
}

buildUnnamed4650() {
  var o = new core.List<api.NormalizedVertex>();
  o.add(buildNormalizedVertex());
  o.add(buildNormalizedVertex());
  return o;
}

checkUnnamed4650(core.List<api.NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNormalizedVertex(o[0]);
  checkNormalizedVertex(o[1]);
}

buildUnnamed4651() {
  var o = new core.List<api.Vertex>();
  o.add(buildVertex());
  o.add(buildVertex());
  return o;
}

checkUnnamed4651(core.List<api.Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVertex(o[0]);
  checkVertex(o[1]);
}

core.int buildCounterBoundingPoly = 0;
buildBoundingPoly() {
  var o = new api.BoundingPoly();
  buildCounterBoundingPoly++;
  if (buildCounterBoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed4650();
    o.vertices = buildUnnamed4651();
  }
  buildCounterBoundingPoly--;
  return o;
}

checkBoundingPoly(api.BoundingPoly o) {
  buildCounterBoundingPoly++;
  if (buildCounterBoundingPoly < 3) {
    checkUnnamed4650(o.normalizedVertices);
    checkUnnamed4651(o.vertices);
  }
  buildCounterBoundingPoly--;
}

core.int buildCounterCancelOperationRequest = 0;
buildCancelOperationRequest() {
  var o = new api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.int buildCounterColor = 0;
buildColor() {
  var o = new api.Color();
  buildCounterColor++;
  if (buildCounterColor < 3) {
    o.alpha = 42.0;
    o.blue = 42.0;
    o.green = 42.0;
    o.red = 42.0;
  }
  buildCounterColor--;
  return o;
}

checkColor(api.Color o) {
  buildCounterColor++;
  if (buildCounterColor < 3) {
    unittest.expect(o.alpha, unittest.equals(42.0));
    unittest.expect(o.blue, unittest.equals(42.0));
    unittest.expect(o.green, unittest.equals(42.0));
    unittest.expect(o.red, unittest.equals(42.0));
  }
  buildCounterColor--;
}

core.int buildCounterColorInfo = 0;
buildColorInfo() {
  var o = new api.ColorInfo();
  buildCounterColorInfo++;
  if (buildCounterColorInfo < 3) {
    o.color = buildColor();
    o.pixelFraction = 42.0;
    o.score = 42.0;
  }
  buildCounterColorInfo--;
  return o;
}

checkColorInfo(api.ColorInfo o) {
  buildCounterColorInfo++;
  if (buildCounterColorInfo < 3) {
    checkColor(o.color);
    unittest.expect(o.pixelFraction, unittest.equals(42.0));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterColorInfo--;
}

core.int buildCounterCropHint = 0;
buildCropHint() {
  var o = new api.CropHint();
  buildCounterCropHint++;
  if (buildCounterCropHint < 3) {
    o.boundingPoly = buildBoundingPoly();
    o.confidence = 42.0;
    o.importanceFraction = 42.0;
  }
  buildCounterCropHint--;
  return o;
}

checkCropHint(api.CropHint o) {
  buildCounterCropHint++;
  if (buildCounterCropHint < 3) {
    checkBoundingPoly(o.boundingPoly);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.importanceFraction, unittest.equals(42.0));
  }
  buildCounterCropHint--;
}

buildUnnamed4652() {
  var o = new core.List<api.CropHint>();
  o.add(buildCropHint());
  o.add(buildCropHint());
  return o;
}

checkUnnamed4652(core.List<api.CropHint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCropHint(o[0]);
  checkCropHint(o[1]);
}

core.int buildCounterCropHintsAnnotation = 0;
buildCropHintsAnnotation() {
  var o = new api.CropHintsAnnotation();
  buildCounterCropHintsAnnotation++;
  if (buildCounterCropHintsAnnotation < 3) {
    o.cropHints = buildUnnamed4652();
  }
  buildCounterCropHintsAnnotation--;
  return o;
}

checkCropHintsAnnotation(api.CropHintsAnnotation o) {
  buildCounterCropHintsAnnotation++;
  if (buildCounterCropHintsAnnotation < 3) {
    checkUnnamed4652(o.cropHints);
  }
  buildCounterCropHintsAnnotation--;
}

buildUnnamed4653() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed4653(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterCropHintsParams = 0;
buildCropHintsParams() {
  var o = new api.CropHintsParams();
  buildCounterCropHintsParams++;
  if (buildCounterCropHintsParams < 3) {
    o.aspectRatios = buildUnnamed4653();
  }
  buildCounterCropHintsParams--;
  return o;
}

checkCropHintsParams(api.CropHintsParams o) {
  buildCounterCropHintsParams++;
  if (buildCounterCropHintsParams < 3) {
    checkUnnamed4653(o.aspectRatios);
  }
  buildCounterCropHintsParams--;
}

core.int buildCounterDetectedBreak = 0;
buildDetectedBreak() {
  var o = new api.DetectedBreak();
  buildCounterDetectedBreak++;
  if (buildCounterDetectedBreak < 3) {
    o.isPrefix = true;
    o.type = "foo";
  }
  buildCounterDetectedBreak--;
  return o;
}

checkDetectedBreak(api.DetectedBreak o) {
  buildCounterDetectedBreak++;
  if (buildCounterDetectedBreak < 3) {
    unittest.expect(o.isPrefix, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterDetectedBreak--;
}

core.int buildCounterDetectedLanguage = 0;
buildDetectedLanguage() {
  var o = new api.DetectedLanguage();
  buildCounterDetectedLanguage++;
  if (buildCounterDetectedLanguage < 3) {
    o.confidence = 42.0;
    o.languageCode = "foo";
  }
  buildCounterDetectedLanguage--;
  return o;
}

checkDetectedLanguage(api.DetectedLanguage o) {
  buildCounterDetectedLanguage++;
  if (buildCounterDetectedLanguage < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterDetectedLanguage--;
}

buildUnnamed4654() {
  var o = new core.List<api.ColorInfo>();
  o.add(buildColorInfo());
  o.add(buildColorInfo());
  return o;
}

checkUnnamed4654(core.List<api.ColorInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkColorInfo(o[0]);
  checkColorInfo(o[1]);
}

core.int buildCounterDominantColorsAnnotation = 0;
buildDominantColorsAnnotation() {
  var o = new api.DominantColorsAnnotation();
  buildCounterDominantColorsAnnotation++;
  if (buildCounterDominantColorsAnnotation < 3) {
    o.colors = buildUnnamed4654();
  }
  buildCounterDominantColorsAnnotation--;
  return o;
}

checkDominantColorsAnnotation(api.DominantColorsAnnotation o) {
  buildCounterDominantColorsAnnotation++;
  if (buildCounterDominantColorsAnnotation < 3) {
    checkUnnamed4654(o.colors);
  }
  buildCounterDominantColorsAnnotation--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

buildUnnamed4655() {
  var o = new core.List<api.LocationInfo>();
  o.add(buildLocationInfo());
  o.add(buildLocationInfo());
  return o;
}

checkUnnamed4655(core.List<api.LocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationInfo(o[0]);
  checkLocationInfo(o[1]);
}

buildUnnamed4656() {
  var o = new core.List<api.Property>();
  o.add(buildProperty());
  o.add(buildProperty());
  return o;
}

checkUnnamed4656(core.List<api.Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProperty(o[0]);
  checkProperty(o[1]);
}

core.int buildCounterEntityAnnotation = 0;
buildEntityAnnotation() {
  var o = new api.EntityAnnotation();
  buildCounterEntityAnnotation++;
  if (buildCounterEntityAnnotation < 3) {
    o.boundingPoly = buildBoundingPoly();
    o.confidence = 42.0;
    o.description = "foo";
    o.locale = "foo";
    o.locations = buildUnnamed4655();
    o.mid = "foo";
    o.properties = buildUnnamed4656();
    o.score = 42.0;
    o.topicality = 42.0;
  }
  buildCounterEntityAnnotation--;
  return o;
}

checkEntityAnnotation(api.EntityAnnotation o) {
  buildCounterEntityAnnotation++;
  if (buildCounterEntityAnnotation < 3) {
    checkBoundingPoly(o.boundingPoly);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.locale, unittest.equals('foo'));
    checkUnnamed4655(o.locations);
    unittest.expect(o.mid, unittest.equals('foo'));
    checkUnnamed4656(o.properties);
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.topicality, unittest.equals(42.0));
  }
  buildCounterEntityAnnotation--;
}

buildUnnamed4657() {
  var o = new core.List<api.Landmark>();
  o.add(buildLandmark());
  o.add(buildLandmark());
  return o;
}

checkUnnamed4657(core.List<api.Landmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLandmark(o[0]);
  checkLandmark(o[1]);
}

core.int buildCounterFaceAnnotation = 0;
buildFaceAnnotation() {
  var o = new api.FaceAnnotation();
  buildCounterFaceAnnotation++;
  if (buildCounterFaceAnnotation < 3) {
    o.angerLikelihood = "foo";
    o.blurredLikelihood = "foo";
    o.boundingPoly = buildBoundingPoly();
    o.detectionConfidence = 42.0;
    o.fdBoundingPoly = buildBoundingPoly();
    o.headwearLikelihood = "foo";
    o.joyLikelihood = "foo";
    o.landmarkingConfidence = 42.0;
    o.landmarks = buildUnnamed4657();
    o.panAngle = 42.0;
    o.rollAngle = 42.0;
    o.sorrowLikelihood = "foo";
    o.surpriseLikelihood = "foo";
    o.tiltAngle = 42.0;
    o.underExposedLikelihood = "foo";
  }
  buildCounterFaceAnnotation--;
  return o;
}

checkFaceAnnotation(api.FaceAnnotation o) {
  buildCounterFaceAnnotation++;
  if (buildCounterFaceAnnotation < 3) {
    unittest.expect(o.angerLikelihood, unittest.equals('foo'));
    unittest.expect(o.blurredLikelihood, unittest.equals('foo'));
    checkBoundingPoly(o.boundingPoly);
    unittest.expect(o.detectionConfidence, unittest.equals(42.0));
    checkBoundingPoly(o.fdBoundingPoly);
    unittest.expect(o.headwearLikelihood, unittest.equals('foo'));
    unittest.expect(o.joyLikelihood, unittest.equals('foo'));
    unittest.expect(o.landmarkingConfidence, unittest.equals(42.0));
    checkUnnamed4657(o.landmarks);
    unittest.expect(o.panAngle, unittest.equals(42.0));
    unittest.expect(o.rollAngle, unittest.equals(42.0));
    unittest.expect(o.sorrowLikelihood, unittest.equals('foo'));
    unittest.expect(o.surpriseLikelihood, unittest.equals('foo'));
    unittest.expect(o.tiltAngle, unittest.equals(42.0));
    unittest.expect(o.underExposedLikelihood, unittest.equals('foo'));
  }
  buildCounterFaceAnnotation--;
}

core.int buildCounterFeature = 0;
buildFeature() {
  var o = new api.Feature();
  buildCounterFeature++;
  if (buildCounterFeature < 3) {
    o.maxResults = 42;
    o.model = "foo";
    o.type = "foo";
  }
  buildCounterFeature--;
  return o;
}

checkFeature(api.Feature o) {
  buildCounterFeature++;
  if (buildCounterFeature < 3) {
    unittest.expect(o.maxResults, unittest.equals(42));
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterFeature--;
}

core.int buildCounterGcsDestination = 0;
buildGcsDestination() {
  var o = new api.GcsDestination();
  buildCounterGcsDestination++;
  if (buildCounterGcsDestination < 3) {
    o.uri = "foo";
  }
  buildCounterGcsDestination--;
  return o;
}

checkGcsDestination(api.GcsDestination o) {
  buildCounterGcsDestination++;
  if (buildCounterGcsDestination < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGcsDestination--;
}

core.int buildCounterGcsSource = 0;
buildGcsSource() {
  var o = new api.GcsSource();
  buildCounterGcsSource++;
  if (buildCounterGcsSource < 3) {
    o.uri = "foo";
  }
  buildCounterGcsSource--;
  return o;
}

checkGcsSource(api.GcsSource o) {
  buildCounterGcsSource++;
  if (buildCounterGcsSource < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGcsSource--;
}

buildUnnamed4658() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1AnnotateImageResponse>();
  o.add(buildGoogleCloudVisionV1p1beta1AnnotateImageResponse());
  o.add(buildGoogleCloudVisionV1p1beta1AnnotateImageResponse());
  return o;
}

checkUnnamed4658(
    core.List<api.GoogleCloudVisionV1p1beta1AnnotateImageResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1AnnotateImageResponse(o[0]);
  checkGoogleCloudVisionV1p1beta1AnnotateImageResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1AnnotateFileResponse = 0;
buildGoogleCloudVisionV1p1beta1AnnotateFileResponse() {
  var o = new api.GoogleCloudVisionV1p1beta1AnnotateFileResponse();
  buildCounterGoogleCloudVisionV1p1beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p1beta1AnnotateFileResponse < 3) {
    o.inputConfig = buildGoogleCloudVisionV1p1beta1InputConfig();
    o.responses = buildUnnamed4658();
  }
  buildCounterGoogleCloudVisionV1p1beta1AnnotateFileResponse--;
  return o;
}

checkGoogleCloudVisionV1p1beta1AnnotateFileResponse(
    api.GoogleCloudVisionV1p1beta1AnnotateFileResponse o) {
  buildCounterGoogleCloudVisionV1p1beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p1beta1AnnotateFileResponse < 3) {
    checkGoogleCloudVisionV1p1beta1InputConfig(o.inputConfig);
    checkUnnamed4658(o.responses);
  }
  buildCounterGoogleCloudVisionV1p1beta1AnnotateFileResponse--;
}

buildUnnamed4659() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1FaceAnnotation>();
  o.add(buildGoogleCloudVisionV1p1beta1FaceAnnotation());
  o.add(buildGoogleCloudVisionV1p1beta1FaceAnnotation());
  return o;
}

checkUnnamed4659(core.List<api.GoogleCloudVisionV1p1beta1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1FaceAnnotation(o[0]);
  checkGoogleCloudVisionV1p1beta1FaceAnnotation(o[1]);
}

buildUnnamed4660() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p1beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p1beta1EntityAnnotation());
  return o;
}

checkUnnamed4660(core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[1]);
}

buildUnnamed4661() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p1beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p1beta1EntityAnnotation());
  return o;
}

checkUnnamed4661(core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[1]);
}

buildUnnamed4662() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p1beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p1beta1EntityAnnotation());
  return o;
}

checkUnnamed4662(core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[1]);
}

buildUnnamed4663() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p1beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p1beta1EntityAnnotation());
  return o;
}

checkUnnamed4663(core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1AnnotateImageResponse = 0;
buildGoogleCloudVisionV1p1beta1AnnotateImageResponse() {
  var o = new api.GoogleCloudVisionV1p1beta1AnnotateImageResponse();
  buildCounterGoogleCloudVisionV1p1beta1AnnotateImageResponse++;
  if (buildCounterGoogleCloudVisionV1p1beta1AnnotateImageResponse < 3) {
    o.context = buildGoogleCloudVisionV1p1beta1ImageAnnotationContext();
    o.cropHintsAnnotation =
        buildGoogleCloudVisionV1p1beta1CropHintsAnnotation();
    o.error = buildStatus();
    o.faceAnnotations = buildUnnamed4659();
    o.fullTextAnnotation = buildGoogleCloudVisionV1p1beta1TextAnnotation();
    o.imagePropertiesAnnotation =
        buildGoogleCloudVisionV1p1beta1ImageProperties();
    o.labelAnnotations = buildUnnamed4660();
    o.landmarkAnnotations = buildUnnamed4661();
    o.logoAnnotations = buildUnnamed4662();
    o.safeSearchAnnotation =
        buildGoogleCloudVisionV1p1beta1SafeSearchAnnotation();
    o.textAnnotations = buildUnnamed4663();
    o.webDetection = buildGoogleCloudVisionV1p1beta1WebDetection();
  }
  buildCounterGoogleCloudVisionV1p1beta1AnnotateImageResponse--;
  return o;
}

checkGoogleCloudVisionV1p1beta1AnnotateImageResponse(
    api.GoogleCloudVisionV1p1beta1AnnotateImageResponse o) {
  buildCounterGoogleCloudVisionV1p1beta1AnnotateImageResponse++;
  if (buildCounterGoogleCloudVisionV1p1beta1AnnotateImageResponse < 3) {
    checkGoogleCloudVisionV1p1beta1ImageAnnotationContext(o.context);
    checkGoogleCloudVisionV1p1beta1CropHintsAnnotation(o.cropHintsAnnotation);
    checkStatus(o.error);
    checkUnnamed4659(o.faceAnnotations);
    checkGoogleCloudVisionV1p1beta1TextAnnotation(o.fullTextAnnotation);
    checkGoogleCloudVisionV1p1beta1ImageProperties(o.imagePropertiesAnnotation);
    checkUnnamed4660(o.labelAnnotations);
    checkUnnamed4661(o.landmarkAnnotations);
    checkUnnamed4662(o.logoAnnotations);
    checkGoogleCloudVisionV1p1beta1SafeSearchAnnotation(o.safeSearchAnnotation);
    checkUnnamed4663(o.textAnnotations);
    checkGoogleCloudVisionV1p1beta1WebDetection(o.webDetection);
  }
  buildCounterGoogleCloudVisionV1p1beta1AnnotateImageResponse--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse = 0;
buildGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse() {
  var o = new api.GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse();
  buildCounterGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse < 3) {
    o.outputConfig = buildGoogleCloudVisionV1p1beta1OutputConfig();
  }
  buildCounterGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse--;
  return o;
}

checkGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse(
    api.GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse o) {
  buildCounterGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse < 3) {
    checkGoogleCloudVisionV1p1beta1OutputConfig(o.outputConfig);
  }
  buildCounterGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse--;
}

buildUnnamed4664() {
  var o =
      new core.List<api.GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse>();
  o.add(buildGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse());
  o.add(buildGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse());
  return o;
}

checkUnnamed4664(
    core.List<api.GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse(o[0]);
  checkGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse =
    0;
buildGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse() {
  var o = new api.GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse();
  buildCounterGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse <
      3) {
    o.responses = buildUnnamed4664();
  }
  buildCounterGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse--;
  return o;
}

checkGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse(
    api.GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse o) {
  buildCounterGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse <
      3) {
    checkUnnamed4664(o.responses);
  }
  buildCounterGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse--;
}

buildUnnamed4665() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1Paragraph>();
  o.add(buildGoogleCloudVisionV1p1beta1Paragraph());
  o.add(buildGoogleCloudVisionV1p1beta1Paragraph());
  return o;
}

checkUnnamed4665(core.List<api.GoogleCloudVisionV1p1beta1Paragraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1Paragraph(o[0]);
  checkGoogleCloudVisionV1p1beta1Paragraph(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1Block = 0;
buildGoogleCloudVisionV1p1beta1Block() {
  var o = new api.GoogleCloudVisionV1p1beta1Block();
  buildCounterGoogleCloudVisionV1p1beta1Block++;
  if (buildCounterGoogleCloudVisionV1p1beta1Block < 3) {
    o.blockType = "foo";
    o.boundingBox = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.confidence = 42.0;
    o.paragraphs = buildUnnamed4665();
    o.property = buildGoogleCloudVisionV1p1beta1TextAnnotationTextProperty();
  }
  buildCounterGoogleCloudVisionV1p1beta1Block--;
  return o;
}

checkGoogleCloudVisionV1p1beta1Block(api.GoogleCloudVisionV1p1beta1Block o) {
  buildCounterGoogleCloudVisionV1p1beta1Block++;
  if (buildCounterGoogleCloudVisionV1p1beta1Block < 3) {
    unittest.expect(o.blockType, unittest.equals('foo'));
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkUnnamed4665(o.paragraphs);
    checkGoogleCloudVisionV1p1beta1TextAnnotationTextProperty(o.property);
  }
  buildCounterGoogleCloudVisionV1p1beta1Block--;
}

buildUnnamed4666() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1Vertex>();
  o.add(buildGoogleCloudVisionV1p1beta1Vertex());
  o.add(buildGoogleCloudVisionV1p1beta1Vertex());
  return o;
}

checkUnnamed4666(core.List<api.GoogleCloudVisionV1p1beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1Vertex(o[0]);
  checkGoogleCloudVisionV1p1beta1Vertex(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1BoundingPoly = 0;
buildGoogleCloudVisionV1p1beta1BoundingPoly() {
  var o = new api.GoogleCloudVisionV1p1beta1BoundingPoly();
  buildCounterGoogleCloudVisionV1p1beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p1beta1BoundingPoly < 3) {
    o.vertices = buildUnnamed4666();
  }
  buildCounterGoogleCloudVisionV1p1beta1BoundingPoly--;
  return o;
}

checkGoogleCloudVisionV1p1beta1BoundingPoly(
    api.GoogleCloudVisionV1p1beta1BoundingPoly o) {
  buildCounterGoogleCloudVisionV1p1beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p1beta1BoundingPoly < 3) {
    checkUnnamed4666(o.vertices);
  }
  buildCounterGoogleCloudVisionV1p1beta1BoundingPoly--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1ColorInfo = 0;
buildGoogleCloudVisionV1p1beta1ColorInfo() {
  var o = new api.GoogleCloudVisionV1p1beta1ColorInfo();
  buildCounterGoogleCloudVisionV1p1beta1ColorInfo++;
  if (buildCounterGoogleCloudVisionV1p1beta1ColorInfo < 3) {
    o.color = buildColor();
    o.pixelFraction = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p1beta1ColorInfo--;
  return o;
}

checkGoogleCloudVisionV1p1beta1ColorInfo(
    api.GoogleCloudVisionV1p1beta1ColorInfo o) {
  buildCounterGoogleCloudVisionV1p1beta1ColorInfo++;
  if (buildCounterGoogleCloudVisionV1p1beta1ColorInfo < 3) {
    checkColor(o.color);
    unittest.expect(o.pixelFraction, unittest.equals(42.0));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p1beta1ColorInfo--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1CropHint = 0;
buildGoogleCloudVisionV1p1beta1CropHint() {
  var o = new api.GoogleCloudVisionV1p1beta1CropHint();
  buildCounterGoogleCloudVisionV1p1beta1CropHint++;
  if (buildCounterGoogleCloudVisionV1p1beta1CropHint < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.confidence = 42.0;
    o.importanceFraction = 42.0;
  }
  buildCounterGoogleCloudVisionV1p1beta1CropHint--;
  return o;
}

checkGoogleCloudVisionV1p1beta1CropHint(
    api.GoogleCloudVisionV1p1beta1CropHint o) {
  buildCounterGoogleCloudVisionV1p1beta1CropHint++;
  if (buildCounterGoogleCloudVisionV1p1beta1CropHint < 3) {
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.importanceFraction, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p1beta1CropHint--;
}

buildUnnamed4667() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1CropHint>();
  o.add(buildGoogleCloudVisionV1p1beta1CropHint());
  o.add(buildGoogleCloudVisionV1p1beta1CropHint());
  return o;
}

checkUnnamed4667(core.List<api.GoogleCloudVisionV1p1beta1CropHint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1CropHint(o[0]);
  checkGoogleCloudVisionV1p1beta1CropHint(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation = 0;
buildGoogleCloudVisionV1p1beta1CropHintsAnnotation() {
  var o = new api.GoogleCloudVisionV1p1beta1CropHintsAnnotation();
  buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation < 3) {
    o.cropHints = buildUnnamed4667();
  }
  buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p1beta1CropHintsAnnotation(
    api.GoogleCloudVisionV1p1beta1CropHintsAnnotation o) {
  buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation < 3) {
    checkUnnamed4667(o.cropHints);
  }
  buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation--;
}

buildUnnamed4668() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1ColorInfo>();
  o.add(buildGoogleCloudVisionV1p1beta1ColorInfo());
  o.add(buildGoogleCloudVisionV1p1beta1ColorInfo());
  return o;
}

checkUnnamed4668(core.List<api.GoogleCloudVisionV1p1beta1ColorInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1ColorInfo(o[0]);
  checkGoogleCloudVisionV1p1beta1ColorInfo(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation = 0;
buildGoogleCloudVisionV1p1beta1DominantColorsAnnotation() {
  var o = new api.GoogleCloudVisionV1p1beta1DominantColorsAnnotation();
  buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation < 3) {
    o.colors = buildUnnamed4668();
  }
  buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p1beta1DominantColorsAnnotation(
    api.GoogleCloudVisionV1p1beta1DominantColorsAnnotation o) {
  buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation < 3) {
    checkUnnamed4668(o.colors);
  }
  buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation--;
}

buildUnnamed4669() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1LocationInfo>();
  o.add(buildGoogleCloudVisionV1p1beta1LocationInfo());
  o.add(buildGoogleCloudVisionV1p1beta1LocationInfo());
  return o;
}

checkUnnamed4669(core.List<api.GoogleCloudVisionV1p1beta1LocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1LocationInfo(o[0]);
  checkGoogleCloudVisionV1p1beta1LocationInfo(o[1]);
}

buildUnnamed4670() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1Property>();
  o.add(buildGoogleCloudVisionV1p1beta1Property());
  o.add(buildGoogleCloudVisionV1p1beta1Property());
  return o;
}

checkUnnamed4670(core.List<api.GoogleCloudVisionV1p1beta1Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1Property(o[0]);
  checkGoogleCloudVisionV1p1beta1Property(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1EntityAnnotation = 0;
buildGoogleCloudVisionV1p1beta1EntityAnnotation() {
  var o = new api.GoogleCloudVisionV1p1beta1EntityAnnotation();
  buildCounterGoogleCloudVisionV1p1beta1EntityAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1EntityAnnotation < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.confidence = 42.0;
    o.description = "foo";
    o.locale = "foo";
    o.locations = buildUnnamed4669();
    o.mid = "foo";
    o.properties = buildUnnamed4670();
    o.score = 42.0;
    o.topicality = 42.0;
  }
  buildCounterGoogleCloudVisionV1p1beta1EntityAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p1beta1EntityAnnotation(
    api.GoogleCloudVisionV1p1beta1EntityAnnotation o) {
  buildCounterGoogleCloudVisionV1p1beta1EntityAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1EntityAnnotation < 3) {
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.locale, unittest.equals('foo'));
    checkUnnamed4669(o.locations);
    unittest.expect(o.mid, unittest.equals('foo'));
    checkUnnamed4670(o.properties);
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.topicality, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p1beta1EntityAnnotation--;
}

buildUnnamed4671() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1FaceAnnotationLandmark>();
  o.add(buildGoogleCloudVisionV1p1beta1FaceAnnotationLandmark());
  o.add(buildGoogleCloudVisionV1p1beta1FaceAnnotationLandmark());
  return o;
}

checkUnnamed4671(
    core.List<api.GoogleCloudVisionV1p1beta1FaceAnnotationLandmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1FaceAnnotationLandmark(o[0]);
  checkGoogleCloudVisionV1p1beta1FaceAnnotationLandmark(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1FaceAnnotation = 0;
buildGoogleCloudVisionV1p1beta1FaceAnnotation() {
  var o = new api.GoogleCloudVisionV1p1beta1FaceAnnotation();
  buildCounterGoogleCloudVisionV1p1beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1FaceAnnotation < 3) {
    o.angerLikelihood = "foo";
    o.blurredLikelihood = "foo";
    o.boundingPoly = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.detectionConfidence = 42.0;
    o.fdBoundingPoly = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.headwearLikelihood = "foo";
    o.joyLikelihood = "foo";
    o.landmarkingConfidence = 42.0;
    o.landmarks = buildUnnamed4671();
    o.panAngle = 42.0;
    o.rollAngle = 42.0;
    o.sorrowLikelihood = "foo";
    o.surpriseLikelihood = "foo";
    o.tiltAngle = 42.0;
    o.underExposedLikelihood = "foo";
  }
  buildCounterGoogleCloudVisionV1p1beta1FaceAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p1beta1FaceAnnotation(
    api.GoogleCloudVisionV1p1beta1FaceAnnotation o) {
  buildCounterGoogleCloudVisionV1p1beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1FaceAnnotation < 3) {
    unittest.expect(o.angerLikelihood, unittest.equals('foo'));
    unittest.expect(o.blurredLikelihood, unittest.equals('foo'));
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.detectionConfidence, unittest.equals(42.0));
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.fdBoundingPoly);
    unittest.expect(o.headwearLikelihood, unittest.equals('foo'));
    unittest.expect(o.joyLikelihood, unittest.equals('foo'));
    unittest.expect(o.landmarkingConfidence, unittest.equals(42.0));
    checkUnnamed4671(o.landmarks);
    unittest.expect(o.panAngle, unittest.equals(42.0));
    unittest.expect(o.rollAngle, unittest.equals(42.0));
    unittest.expect(o.sorrowLikelihood, unittest.equals('foo'));
    unittest.expect(o.surpriseLikelihood, unittest.equals('foo'));
    unittest.expect(o.tiltAngle, unittest.equals(42.0));
    unittest.expect(o.underExposedLikelihood, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p1beta1FaceAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1FaceAnnotationLandmark = 0;
buildGoogleCloudVisionV1p1beta1FaceAnnotationLandmark() {
  var o = new api.GoogleCloudVisionV1p1beta1FaceAnnotationLandmark();
  buildCounterGoogleCloudVisionV1p1beta1FaceAnnotationLandmark++;
  if (buildCounterGoogleCloudVisionV1p1beta1FaceAnnotationLandmark < 3) {
    o.position = buildGoogleCloudVisionV1p1beta1Position();
    o.type = "foo";
  }
  buildCounterGoogleCloudVisionV1p1beta1FaceAnnotationLandmark--;
  return o;
}

checkGoogleCloudVisionV1p1beta1FaceAnnotationLandmark(
    api.GoogleCloudVisionV1p1beta1FaceAnnotationLandmark o) {
  buildCounterGoogleCloudVisionV1p1beta1FaceAnnotationLandmark++;
  if (buildCounterGoogleCloudVisionV1p1beta1FaceAnnotationLandmark < 3) {
    checkGoogleCloudVisionV1p1beta1Position(o.position);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p1beta1FaceAnnotationLandmark--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1GcsDestination = 0;
buildGoogleCloudVisionV1p1beta1GcsDestination() {
  var o = new api.GoogleCloudVisionV1p1beta1GcsDestination();
  buildCounterGoogleCloudVisionV1p1beta1GcsDestination++;
  if (buildCounterGoogleCloudVisionV1p1beta1GcsDestination < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudVisionV1p1beta1GcsDestination--;
  return o;
}

checkGoogleCloudVisionV1p1beta1GcsDestination(
    api.GoogleCloudVisionV1p1beta1GcsDestination o) {
  buildCounterGoogleCloudVisionV1p1beta1GcsDestination++;
  if (buildCounterGoogleCloudVisionV1p1beta1GcsDestination < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p1beta1GcsDestination--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1GcsSource = 0;
buildGoogleCloudVisionV1p1beta1GcsSource() {
  var o = new api.GoogleCloudVisionV1p1beta1GcsSource();
  buildCounterGoogleCloudVisionV1p1beta1GcsSource++;
  if (buildCounterGoogleCloudVisionV1p1beta1GcsSource < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudVisionV1p1beta1GcsSource--;
  return o;
}

checkGoogleCloudVisionV1p1beta1GcsSource(
    api.GoogleCloudVisionV1p1beta1GcsSource o) {
  buildCounterGoogleCloudVisionV1p1beta1GcsSource++;
  if (buildCounterGoogleCloudVisionV1p1beta1GcsSource < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p1beta1GcsSource--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1ImageAnnotationContext = 0;
buildGoogleCloudVisionV1p1beta1ImageAnnotationContext() {
  var o = new api.GoogleCloudVisionV1p1beta1ImageAnnotationContext();
  buildCounterGoogleCloudVisionV1p1beta1ImageAnnotationContext++;
  if (buildCounterGoogleCloudVisionV1p1beta1ImageAnnotationContext < 3) {
    o.pageNumber = 42;
    o.uri = "foo";
  }
  buildCounterGoogleCloudVisionV1p1beta1ImageAnnotationContext--;
  return o;
}

checkGoogleCloudVisionV1p1beta1ImageAnnotationContext(
    api.GoogleCloudVisionV1p1beta1ImageAnnotationContext o) {
  buildCounterGoogleCloudVisionV1p1beta1ImageAnnotationContext++;
  if (buildCounterGoogleCloudVisionV1p1beta1ImageAnnotationContext < 3) {
    unittest.expect(o.pageNumber, unittest.equals(42));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p1beta1ImageAnnotationContext--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1ImageProperties = 0;
buildGoogleCloudVisionV1p1beta1ImageProperties() {
  var o = new api.GoogleCloudVisionV1p1beta1ImageProperties();
  buildCounterGoogleCloudVisionV1p1beta1ImageProperties++;
  if (buildCounterGoogleCloudVisionV1p1beta1ImageProperties < 3) {
    o.dominantColors =
        buildGoogleCloudVisionV1p1beta1DominantColorsAnnotation();
  }
  buildCounterGoogleCloudVisionV1p1beta1ImageProperties--;
  return o;
}

checkGoogleCloudVisionV1p1beta1ImageProperties(
    api.GoogleCloudVisionV1p1beta1ImageProperties o) {
  buildCounterGoogleCloudVisionV1p1beta1ImageProperties++;
  if (buildCounterGoogleCloudVisionV1p1beta1ImageProperties < 3) {
    checkGoogleCloudVisionV1p1beta1DominantColorsAnnotation(o.dominantColors);
  }
  buildCounterGoogleCloudVisionV1p1beta1ImageProperties--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1InputConfig = 0;
buildGoogleCloudVisionV1p1beta1InputConfig() {
  var o = new api.GoogleCloudVisionV1p1beta1InputConfig();
  buildCounterGoogleCloudVisionV1p1beta1InputConfig++;
  if (buildCounterGoogleCloudVisionV1p1beta1InputConfig < 3) {
    o.gcsSource = buildGoogleCloudVisionV1p1beta1GcsSource();
    o.mimeType = "foo";
  }
  buildCounterGoogleCloudVisionV1p1beta1InputConfig--;
  return o;
}

checkGoogleCloudVisionV1p1beta1InputConfig(
    api.GoogleCloudVisionV1p1beta1InputConfig o) {
  buildCounterGoogleCloudVisionV1p1beta1InputConfig++;
  if (buildCounterGoogleCloudVisionV1p1beta1InputConfig < 3) {
    checkGoogleCloudVisionV1p1beta1GcsSource(o.gcsSource);
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p1beta1InputConfig--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1LocationInfo = 0;
buildGoogleCloudVisionV1p1beta1LocationInfo() {
  var o = new api.GoogleCloudVisionV1p1beta1LocationInfo();
  buildCounterGoogleCloudVisionV1p1beta1LocationInfo++;
  if (buildCounterGoogleCloudVisionV1p1beta1LocationInfo < 3) {
    o.latLng = buildLatLng();
  }
  buildCounterGoogleCloudVisionV1p1beta1LocationInfo--;
  return o;
}

checkGoogleCloudVisionV1p1beta1LocationInfo(
    api.GoogleCloudVisionV1p1beta1LocationInfo o) {
  buildCounterGoogleCloudVisionV1p1beta1LocationInfo++;
  if (buildCounterGoogleCloudVisionV1p1beta1LocationInfo < 3) {
    checkLatLng(o.latLng);
  }
  buildCounterGoogleCloudVisionV1p1beta1LocationInfo--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1OperationMetadata = 0;
buildGoogleCloudVisionV1p1beta1OperationMetadata() {
  var o = new api.GoogleCloudVisionV1p1beta1OperationMetadata();
  buildCounterGoogleCloudVisionV1p1beta1OperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p1beta1OperationMetadata < 3) {
    o.createTime = "foo";
    o.state = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudVisionV1p1beta1OperationMetadata--;
  return o;
}

checkGoogleCloudVisionV1p1beta1OperationMetadata(
    api.GoogleCloudVisionV1p1beta1OperationMetadata o) {
  buildCounterGoogleCloudVisionV1p1beta1OperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p1beta1OperationMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p1beta1OperationMetadata--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1OutputConfig = 0;
buildGoogleCloudVisionV1p1beta1OutputConfig() {
  var o = new api.GoogleCloudVisionV1p1beta1OutputConfig();
  buildCounterGoogleCloudVisionV1p1beta1OutputConfig++;
  if (buildCounterGoogleCloudVisionV1p1beta1OutputConfig < 3) {
    o.batchSize = 42;
    o.gcsDestination = buildGoogleCloudVisionV1p1beta1GcsDestination();
  }
  buildCounterGoogleCloudVisionV1p1beta1OutputConfig--;
  return o;
}

checkGoogleCloudVisionV1p1beta1OutputConfig(
    api.GoogleCloudVisionV1p1beta1OutputConfig o) {
  buildCounterGoogleCloudVisionV1p1beta1OutputConfig++;
  if (buildCounterGoogleCloudVisionV1p1beta1OutputConfig < 3) {
    unittest.expect(o.batchSize, unittest.equals(42));
    checkGoogleCloudVisionV1p1beta1GcsDestination(o.gcsDestination);
  }
  buildCounterGoogleCloudVisionV1p1beta1OutputConfig--;
}

buildUnnamed4672() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1Block>();
  o.add(buildGoogleCloudVisionV1p1beta1Block());
  o.add(buildGoogleCloudVisionV1p1beta1Block());
  return o;
}

checkUnnamed4672(core.List<api.GoogleCloudVisionV1p1beta1Block> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1Block(o[0]);
  checkGoogleCloudVisionV1p1beta1Block(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1Page = 0;
buildGoogleCloudVisionV1p1beta1Page() {
  var o = new api.GoogleCloudVisionV1p1beta1Page();
  buildCounterGoogleCloudVisionV1p1beta1Page++;
  if (buildCounterGoogleCloudVisionV1p1beta1Page < 3) {
    o.blocks = buildUnnamed4672();
    o.confidence = 42.0;
    o.height = 42;
    o.property = buildGoogleCloudVisionV1p1beta1TextAnnotationTextProperty();
    o.width = 42;
  }
  buildCounterGoogleCloudVisionV1p1beta1Page--;
  return o;
}

checkGoogleCloudVisionV1p1beta1Page(api.GoogleCloudVisionV1p1beta1Page o) {
  buildCounterGoogleCloudVisionV1p1beta1Page++;
  if (buildCounterGoogleCloudVisionV1p1beta1Page < 3) {
    checkUnnamed4672(o.blocks);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.height, unittest.equals(42));
    checkGoogleCloudVisionV1p1beta1TextAnnotationTextProperty(o.property);
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterGoogleCloudVisionV1p1beta1Page--;
}

buildUnnamed4673() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1Word>();
  o.add(buildGoogleCloudVisionV1p1beta1Word());
  o.add(buildGoogleCloudVisionV1p1beta1Word());
  return o;
}

checkUnnamed4673(core.List<api.GoogleCloudVisionV1p1beta1Word> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1Word(o[0]);
  checkGoogleCloudVisionV1p1beta1Word(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1Paragraph = 0;
buildGoogleCloudVisionV1p1beta1Paragraph() {
  var o = new api.GoogleCloudVisionV1p1beta1Paragraph();
  buildCounterGoogleCloudVisionV1p1beta1Paragraph++;
  if (buildCounterGoogleCloudVisionV1p1beta1Paragraph < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p1beta1TextAnnotationTextProperty();
    o.words = buildUnnamed4673();
  }
  buildCounterGoogleCloudVisionV1p1beta1Paragraph--;
  return o;
}

checkGoogleCloudVisionV1p1beta1Paragraph(
    api.GoogleCloudVisionV1p1beta1Paragraph o) {
  buildCounterGoogleCloudVisionV1p1beta1Paragraph++;
  if (buildCounterGoogleCloudVisionV1p1beta1Paragraph < 3) {
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVisionV1p1beta1TextAnnotationTextProperty(o.property);
    checkUnnamed4673(o.words);
  }
  buildCounterGoogleCloudVisionV1p1beta1Paragraph--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1Position = 0;
buildGoogleCloudVisionV1p1beta1Position() {
  var o = new api.GoogleCloudVisionV1p1beta1Position();
  buildCounterGoogleCloudVisionV1p1beta1Position++;
  if (buildCounterGoogleCloudVisionV1p1beta1Position < 3) {
    o.x = 42.0;
    o.y = 42.0;
    o.z = 42.0;
  }
  buildCounterGoogleCloudVisionV1p1beta1Position--;
  return o;
}

checkGoogleCloudVisionV1p1beta1Position(
    api.GoogleCloudVisionV1p1beta1Position o) {
  buildCounterGoogleCloudVisionV1p1beta1Position++;
  if (buildCounterGoogleCloudVisionV1p1beta1Position < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
    unittest.expect(o.z, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p1beta1Position--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1Property = 0;
buildGoogleCloudVisionV1p1beta1Property() {
  var o = new api.GoogleCloudVisionV1p1beta1Property();
  buildCounterGoogleCloudVisionV1p1beta1Property++;
  if (buildCounterGoogleCloudVisionV1p1beta1Property < 3) {
    o.name = "foo";
    o.uint64Value = "foo";
    o.value = "foo";
  }
  buildCounterGoogleCloudVisionV1p1beta1Property--;
  return o;
}

checkGoogleCloudVisionV1p1beta1Property(
    api.GoogleCloudVisionV1p1beta1Property o) {
  buildCounterGoogleCloudVisionV1p1beta1Property++;
  if (buildCounterGoogleCloudVisionV1p1beta1Property < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.uint64Value, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p1beta1Property--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1SafeSearchAnnotation = 0;
buildGoogleCloudVisionV1p1beta1SafeSearchAnnotation() {
  var o = new api.GoogleCloudVisionV1p1beta1SafeSearchAnnotation();
  buildCounterGoogleCloudVisionV1p1beta1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1SafeSearchAnnotation < 3) {
    o.adult = "foo";
    o.medical = "foo";
    o.racy = "foo";
    o.spoof = "foo";
    o.violence = "foo";
  }
  buildCounterGoogleCloudVisionV1p1beta1SafeSearchAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p1beta1SafeSearchAnnotation(
    api.GoogleCloudVisionV1p1beta1SafeSearchAnnotation o) {
  buildCounterGoogleCloudVisionV1p1beta1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1SafeSearchAnnotation < 3) {
    unittest.expect(o.adult, unittest.equals('foo'));
    unittest.expect(o.medical, unittest.equals('foo'));
    unittest.expect(o.racy, unittest.equals('foo'));
    unittest.expect(o.spoof, unittest.equals('foo'));
    unittest.expect(o.violence, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p1beta1SafeSearchAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1Symbol = 0;
buildGoogleCloudVisionV1p1beta1Symbol() {
  var o = new api.GoogleCloudVisionV1p1beta1Symbol();
  buildCounterGoogleCloudVisionV1p1beta1Symbol++;
  if (buildCounterGoogleCloudVisionV1p1beta1Symbol < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p1beta1TextAnnotationTextProperty();
    o.text = "foo";
  }
  buildCounterGoogleCloudVisionV1p1beta1Symbol--;
  return o;
}

checkGoogleCloudVisionV1p1beta1Symbol(api.GoogleCloudVisionV1p1beta1Symbol o) {
  buildCounterGoogleCloudVisionV1p1beta1Symbol++;
  if (buildCounterGoogleCloudVisionV1p1beta1Symbol < 3) {
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVisionV1p1beta1TextAnnotationTextProperty(o.property);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p1beta1Symbol--;
}

buildUnnamed4674() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1Page>();
  o.add(buildGoogleCloudVisionV1p1beta1Page());
  o.add(buildGoogleCloudVisionV1p1beta1Page());
  return o;
}

checkUnnamed4674(core.List<api.GoogleCloudVisionV1p1beta1Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1Page(o[0]);
  checkGoogleCloudVisionV1p1beta1Page(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1TextAnnotation = 0;
buildGoogleCloudVisionV1p1beta1TextAnnotation() {
  var o = new api.GoogleCloudVisionV1p1beta1TextAnnotation();
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1TextAnnotation < 3) {
    o.pages = buildUnnamed4674();
    o.text = "foo";
  }
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p1beta1TextAnnotation(
    api.GoogleCloudVisionV1p1beta1TextAnnotation o) {
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1TextAnnotation < 3) {
    checkUnnamed4674(o.pages);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak = 0;
buildGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak() {
  var o = new api.GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak();
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak++;
  if (buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak < 3) {
    o.isPrefix = true;
    o.type = "foo";
  }
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak--;
  return o;
}

checkGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak(
    api.GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak o) {
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak++;
  if (buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak < 3) {
    unittest.expect(o.isPrefix, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage =
    0;
buildGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage() {
  var o = new api.GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage();
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage++;
  if (buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage <
      3) {
    o.confidence = 42.0;
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage--;
  return o;
}

checkGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage(
    api.GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage o) {
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage++;
  if (buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage <
      3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage--;
}

buildUnnamed4675() {
  var o = new core
      .List<api.GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage>();
  o.add(buildGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage());
  o.add(buildGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage());
  return o;
}

checkUnnamed4675(
    core.List<api.GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage(o[0]);
  checkGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1TextAnnotationTextProperty = 0;
buildGoogleCloudVisionV1p1beta1TextAnnotationTextProperty() {
  var o = new api.GoogleCloudVisionV1p1beta1TextAnnotationTextProperty();
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p1beta1TextAnnotationTextProperty < 3) {
    o.detectedBreak =
        buildGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak();
    o.detectedLanguages = buildUnnamed4675();
  }
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationTextProperty--;
  return o;
}

checkGoogleCloudVisionV1p1beta1TextAnnotationTextProperty(
    api.GoogleCloudVisionV1p1beta1TextAnnotationTextProperty o) {
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p1beta1TextAnnotationTextProperty < 3) {
    checkGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak(o.detectedBreak);
    checkUnnamed4675(o.detectedLanguages);
  }
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationTextProperty--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1Vertex = 0;
buildGoogleCloudVisionV1p1beta1Vertex() {
  var o = new api.GoogleCloudVisionV1p1beta1Vertex();
  buildCounterGoogleCloudVisionV1p1beta1Vertex++;
  if (buildCounterGoogleCloudVisionV1p1beta1Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudVisionV1p1beta1Vertex--;
  return o;
}

checkGoogleCloudVisionV1p1beta1Vertex(api.GoogleCloudVisionV1p1beta1Vertex o) {
  buildCounterGoogleCloudVisionV1p1beta1Vertex++;
  if (buildCounterGoogleCloudVisionV1p1beta1Vertex < 3) {
    unittest.expect(o.x, unittest.equals(42));
    unittest.expect(o.y, unittest.equals(42));
  }
  buildCounterGoogleCloudVisionV1p1beta1Vertex--;
}

buildUnnamed4676() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebLabel>();
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebLabel());
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebLabel());
  return o;
}

checkUnnamed4676(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebLabel(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebLabel(o[1]);
}

buildUnnamed4677() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  return o;
}

checkUnnamed4677(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[1]);
}

buildUnnamed4678() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebPage>();
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebPage());
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebPage());
  return o;
}

checkUnnamed4678(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebPage(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebPage(o[1]);
}

buildUnnamed4679() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  return o;
}

checkUnnamed4679(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[1]);
}

buildUnnamed4680() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  return o;
}

checkUnnamed4680(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[1]);
}

buildUnnamed4681() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebEntity>();
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebEntity());
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebEntity());
  return o;
}

checkUnnamed4681(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebEntity(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebEntity(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1WebDetection = 0;
buildGoogleCloudVisionV1p1beta1WebDetection() {
  var o = new api.GoogleCloudVisionV1p1beta1WebDetection();
  buildCounterGoogleCloudVisionV1p1beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetection < 3) {
    o.bestGuessLabels = buildUnnamed4676();
    o.fullMatchingImages = buildUnnamed4677();
    o.pagesWithMatchingImages = buildUnnamed4678();
    o.partialMatchingImages = buildUnnamed4679();
    o.visuallySimilarImages = buildUnnamed4680();
    o.webEntities = buildUnnamed4681();
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetection--;
  return o;
}

checkGoogleCloudVisionV1p1beta1WebDetection(
    api.GoogleCloudVisionV1p1beta1WebDetection o) {
  buildCounterGoogleCloudVisionV1p1beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetection < 3) {
    checkUnnamed4676(o.bestGuessLabels);
    checkUnnamed4677(o.fullMatchingImages);
    checkUnnamed4678(o.pagesWithMatchingImages);
    checkUnnamed4679(o.partialMatchingImages);
    checkUnnamed4680(o.visuallySimilarImages);
    checkUnnamed4681(o.webEntities);
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetection--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebEntity = 0;
buildGoogleCloudVisionV1p1beta1WebDetectionWebEntity() {
  var o = new api.GoogleCloudVisionV1p1beta1WebDetectionWebEntity();
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebEntity++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebEntity < 3) {
    o.description = "foo";
    o.entityId = "foo";
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebEntity--;
  return o;
}

checkGoogleCloudVisionV1p1beta1WebDetectionWebEntity(
    api.GoogleCloudVisionV1p1beta1WebDetectionWebEntity o) {
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebEntity++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebEntity < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.entityId, unittest.equals('foo'));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebEntity--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebImage = 0;
buildGoogleCloudVisionV1p1beta1WebDetectionWebImage() {
  var o = new api.GoogleCloudVisionV1p1beta1WebDetectionWebImage();
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebImage++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebImage < 3) {
    o.score = 42.0;
    o.url = "foo";
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebImage--;
  return o;
}

checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(
    api.GoogleCloudVisionV1p1beta1WebDetectionWebImage o) {
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebImage++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebImage < 3) {
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebImage--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebLabel = 0;
buildGoogleCloudVisionV1p1beta1WebDetectionWebLabel() {
  var o = new api.GoogleCloudVisionV1p1beta1WebDetectionWebLabel();
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebLabel++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebLabel < 3) {
    o.label = "foo";
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebLabel--;
  return o;
}

checkGoogleCloudVisionV1p1beta1WebDetectionWebLabel(
    api.GoogleCloudVisionV1p1beta1WebDetectionWebLabel o) {
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebLabel++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebLabel < 3) {
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebLabel--;
}

buildUnnamed4682() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  return o;
}

checkUnnamed4682(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[1]);
}

buildUnnamed4683() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  return o;
}

checkUnnamed4683(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebPage = 0;
buildGoogleCloudVisionV1p1beta1WebDetectionWebPage() {
  var o = new api.GoogleCloudVisionV1p1beta1WebDetectionWebPage();
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebPage++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebPage < 3) {
    o.fullMatchingImages = buildUnnamed4682();
    o.pageTitle = "foo";
    o.partialMatchingImages = buildUnnamed4683();
    o.score = 42.0;
    o.url = "foo";
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebPage--;
  return o;
}

checkGoogleCloudVisionV1p1beta1WebDetectionWebPage(
    api.GoogleCloudVisionV1p1beta1WebDetectionWebPage o) {
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebPage++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebPage < 3) {
    checkUnnamed4682(o.fullMatchingImages);
    unittest.expect(o.pageTitle, unittest.equals('foo'));
    checkUnnamed4683(o.partialMatchingImages);
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebPage--;
}

buildUnnamed4684() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1Symbol>();
  o.add(buildGoogleCloudVisionV1p1beta1Symbol());
  o.add(buildGoogleCloudVisionV1p1beta1Symbol());
  return o;
}

checkUnnamed4684(core.List<api.GoogleCloudVisionV1p1beta1Symbol> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1Symbol(o[0]);
  checkGoogleCloudVisionV1p1beta1Symbol(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1Word = 0;
buildGoogleCloudVisionV1p1beta1Word() {
  var o = new api.GoogleCloudVisionV1p1beta1Word();
  buildCounterGoogleCloudVisionV1p1beta1Word++;
  if (buildCounterGoogleCloudVisionV1p1beta1Word < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p1beta1TextAnnotationTextProperty();
    o.symbols = buildUnnamed4684();
  }
  buildCounterGoogleCloudVisionV1p1beta1Word--;
  return o;
}

checkGoogleCloudVisionV1p1beta1Word(api.GoogleCloudVisionV1p1beta1Word o) {
  buildCounterGoogleCloudVisionV1p1beta1Word++;
  if (buildCounterGoogleCloudVisionV1p1beta1Word < 3) {
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVisionV1p1beta1TextAnnotationTextProperty(o.property);
    checkUnnamed4684(o.symbols);
  }
  buildCounterGoogleCloudVisionV1p1beta1Word--;
}

buildUnnamed4685() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1AnnotateImageResponse>();
  o.add(buildGoogleCloudVisionV1p2beta1AnnotateImageResponse());
  o.add(buildGoogleCloudVisionV1p2beta1AnnotateImageResponse());
  return o;
}

checkUnnamed4685(
    core.List<api.GoogleCloudVisionV1p2beta1AnnotateImageResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1AnnotateImageResponse(o[0]);
  checkGoogleCloudVisionV1p2beta1AnnotateImageResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse = 0;
buildGoogleCloudVisionV1p2beta1AnnotateFileResponse() {
  var o = new api.GoogleCloudVisionV1p2beta1AnnotateFileResponse();
  buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse < 3) {
    o.inputConfig = buildGoogleCloudVisionV1p2beta1InputConfig();
    o.responses = buildUnnamed4685();
  }
  buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse--;
  return o;
}

checkGoogleCloudVisionV1p2beta1AnnotateFileResponse(
    api.GoogleCloudVisionV1p2beta1AnnotateFileResponse o) {
  buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse < 3) {
    checkGoogleCloudVisionV1p2beta1InputConfig(o.inputConfig);
    checkUnnamed4685(o.responses);
  }
  buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse--;
}

buildUnnamed4686() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1FaceAnnotation>();
  o.add(buildGoogleCloudVisionV1p2beta1FaceAnnotation());
  o.add(buildGoogleCloudVisionV1p2beta1FaceAnnotation());
  return o;
}

checkUnnamed4686(core.List<api.GoogleCloudVisionV1p2beta1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1FaceAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1FaceAnnotation(o[1]);
}

buildUnnamed4687() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p2beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p2beta1EntityAnnotation());
  return o;
}

checkUnnamed4687(core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[1]);
}

buildUnnamed4688() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p2beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p2beta1EntityAnnotation());
  return o;
}

checkUnnamed4688(core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[1]);
}

buildUnnamed4689() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p2beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p2beta1EntityAnnotation());
  return o;
}

checkUnnamed4689(core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[1]);
}

buildUnnamed4690() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p2beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p2beta1EntityAnnotation());
  return o;
}

checkUnnamed4690(core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1AnnotateImageResponse = 0;
buildGoogleCloudVisionV1p2beta1AnnotateImageResponse() {
  var o = new api.GoogleCloudVisionV1p2beta1AnnotateImageResponse();
  buildCounterGoogleCloudVisionV1p2beta1AnnotateImageResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AnnotateImageResponse < 3) {
    o.context = buildGoogleCloudVisionV1p2beta1ImageAnnotationContext();
    o.cropHintsAnnotation =
        buildGoogleCloudVisionV1p2beta1CropHintsAnnotation();
    o.error = buildStatus();
    o.faceAnnotations = buildUnnamed4686();
    o.fullTextAnnotation = buildGoogleCloudVisionV1p2beta1TextAnnotation();
    o.imagePropertiesAnnotation =
        buildGoogleCloudVisionV1p2beta1ImageProperties();
    o.labelAnnotations = buildUnnamed4687();
    o.landmarkAnnotations = buildUnnamed4688();
    o.logoAnnotations = buildUnnamed4689();
    o.safeSearchAnnotation =
        buildGoogleCloudVisionV1p2beta1SafeSearchAnnotation();
    o.textAnnotations = buildUnnamed4690();
    o.webDetection = buildGoogleCloudVisionV1p2beta1WebDetection();
  }
  buildCounterGoogleCloudVisionV1p2beta1AnnotateImageResponse--;
  return o;
}

checkGoogleCloudVisionV1p2beta1AnnotateImageResponse(
    api.GoogleCloudVisionV1p2beta1AnnotateImageResponse o) {
  buildCounterGoogleCloudVisionV1p2beta1AnnotateImageResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AnnotateImageResponse < 3) {
    checkGoogleCloudVisionV1p2beta1ImageAnnotationContext(o.context);
    checkGoogleCloudVisionV1p2beta1CropHintsAnnotation(o.cropHintsAnnotation);
    checkStatus(o.error);
    checkUnnamed4686(o.faceAnnotations);
    checkGoogleCloudVisionV1p2beta1TextAnnotation(o.fullTextAnnotation);
    checkGoogleCloudVisionV1p2beta1ImageProperties(o.imagePropertiesAnnotation);
    checkUnnamed4687(o.labelAnnotations);
    checkUnnamed4688(o.landmarkAnnotations);
    checkUnnamed4689(o.logoAnnotations);
    checkGoogleCloudVisionV1p2beta1SafeSearchAnnotation(o.safeSearchAnnotation);
    checkUnnamed4690(o.textAnnotations);
    checkGoogleCloudVisionV1p2beta1WebDetection(o.webDetection);
  }
  buildCounterGoogleCloudVisionV1p2beta1AnnotateImageResponse--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse = 0;
buildGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse() {
  var o = new api.GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse();
  buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse < 3) {
    o.outputConfig = buildGoogleCloudVisionV1p2beta1OutputConfig();
  }
  buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse--;
  return o;
}

checkGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse(
    api.GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse o) {
  buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse < 3) {
    checkGoogleCloudVisionV1p2beta1OutputConfig(o.outputConfig);
  }
  buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse--;
}

buildUnnamed4691() {
  var o =
      new core.List<api.GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse>();
  o.add(buildGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse());
  o.add(buildGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse());
  return o;
}

checkUnnamed4691(
    core.List<api.GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse(o[0]);
  checkGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse =
    0;
buildGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse() {
  var o = new api.GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse();
  buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse <
      3) {
    o.responses = buildUnnamed4691();
  }
  buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse--;
  return o;
}

checkGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse(
    api.GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse o) {
  buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse <
      3) {
    checkUnnamed4691(o.responses);
  }
  buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse--;
}

buildUnnamed4692() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1Paragraph>();
  o.add(buildGoogleCloudVisionV1p2beta1Paragraph());
  o.add(buildGoogleCloudVisionV1p2beta1Paragraph());
  return o;
}

checkUnnamed4692(core.List<api.GoogleCloudVisionV1p2beta1Paragraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Paragraph(o[0]);
  checkGoogleCloudVisionV1p2beta1Paragraph(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1Block = 0;
buildGoogleCloudVisionV1p2beta1Block() {
  var o = new api.GoogleCloudVisionV1p2beta1Block();
  buildCounterGoogleCloudVisionV1p2beta1Block++;
  if (buildCounterGoogleCloudVisionV1p2beta1Block < 3) {
    o.blockType = "foo";
    o.boundingBox = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.confidence = 42.0;
    o.paragraphs = buildUnnamed4692();
    o.property = buildGoogleCloudVisionV1p2beta1TextAnnotationTextProperty();
  }
  buildCounterGoogleCloudVisionV1p2beta1Block--;
  return o;
}

checkGoogleCloudVisionV1p2beta1Block(api.GoogleCloudVisionV1p2beta1Block o) {
  buildCounterGoogleCloudVisionV1p2beta1Block++;
  if (buildCounterGoogleCloudVisionV1p2beta1Block < 3) {
    unittest.expect(o.blockType, unittest.equals('foo'));
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkUnnamed4692(o.paragraphs);
    checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(o.property);
  }
  buildCounterGoogleCloudVisionV1p2beta1Block--;
}

buildUnnamed4693() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1NormalizedVertex>();
  o.add(buildGoogleCloudVisionV1p2beta1NormalizedVertex());
  o.add(buildGoogleCloudVisionV1p2beta1NormalizedVertex());
  return o;
}

checkUnnamed4693(core.List<api.GoogleCloudVisionV1p2beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1NormalizedVertex(o[0]);
  checkGoogleCloudVisionV1p2beta1NormalizedVertex(o[1]);
}

buildUnnamed4694() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1Vertex>();
  o.add(buildGoogleCloudVisionV1p2beta1Vertex());
  o.add(buildGoogleCloudVisionV1p2beta1Vertex());
  return o;
}

checkUnnamed4694(core.List<api.GoogleCloudVisionV1p2beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Vertex(o[0]);
  checkGoogleCloudVisionV1p2beta1Vertex(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1BoundingPoly = 0;
buildGoogleCloudVisionV1p2beta1BoundingPoly() {
  var o = new api.GoogleCloudVisionV1p2beta1BoundingPoly();
  buildCounterGoogleCloudVisionV1p2beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p2beta1BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed4693();
    o.vertices = buildUnnamed4694();
  }
  buildCounterGoogleCloudVisionV1p2beta1BoundingPoly--;
  return o;
}

checkGoogleCloudVisionV1p2beta1BoundingPoly(
    api.GoogleCloudVisionV1p2beta1BoundingPoly o) {
  buildCounterGoogleCloudVisionV1p2beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p2beta1BoundingPoly < 3) {
    checkUnnamed4693(o.normalizedVertices);
    checkUnnamed4694(o.vertices);
  }
  buildCounterGoogleCloudVisionV1p2beta1BoundingPoly--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1ColorInfo = 0;
buildGoogleCloudVisionV1p2beta1ColorInfo() {
  var o = new api.GoogleCloudVisionV1p2beta1ColorInfo();
  buildCounterGoogleCloudVisionV1p2beta1ColorInfo++;
  if (buildCounterGoogleCloudVisionV1p2beta1ColorInfo < 3) {
    o.color = buildColor();
    o.pixelFraction = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p2beta1ColorInfo--;
  return o;
}

checkGoogleCloudVisionV1p2beta1ColorInfo(
    api.GoogleCloudVisionV1p2beta1ColorInfo o) {
  buildCounterGoogleCloudVisionV1p2beta1ColorInfo++;
  if (buildCounterGoogleCloudVisionV1p2beta1ColorInfo < 3) {
    checkColor(o.color);
    unittest.expect(o.pixelFraction, unittest.equals(42.0));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p2beta1ColorInfo--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1CropHint = 0;
buildGoogleCloudVisionV1p2beta1CropHint() {
  var o = new api.GoogleCloudVisionV1p2beta1CropHint();
  buildCounterGoogleCloudVisionV1p2beta1CropHint++;
  if (buildCounterGoogleCloudVisionV1p2beta1CropHint < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.confidence = 42.0;
    o.importanceFraction = 42.0;
  }
  buildCounterGoogleCloudVisionV1p2beta1CropHint--;
  return o;
}

checkGoogleCloudVisionV1p2beta1CropHint(
    api.GoogleCloudVisionV1p2beta1CropHint o) {
  buildCounterGoogleCloudVisionV1p2beta1CropHint++;
  if (buildCounterGoogleCloudVisionV1p2beta1CropHint < 3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.importanceFraction, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p2beta1CropHint--;
}

buildUnnamed4695() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1CropHint>();
  o.add(buildGoogleCloudVisionV1p2beta1CropHint());
  o.add(buildGoogleCloudVisionV1p2beta1CropHint());
  return o;
}

checkUnnamed4695(core.List<api.GoogleCloudVisionV1p2beta1CropHint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1CropHint(o[0]);
  checkGoogleCloudVisionV1p2beta1CropHint(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation = 0;
buildGoogleCloudVisionV1p2beta1CropHintsAnnotation() {
  var o = new api.GoogleCloudVisionV1p2beta1CropHintsAnnotation();
  buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation < 3) {
    o.cropHints = buildUnnamed4695();
  }
  buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p2beta1CropHintsAnnotation(
    api.GoogleCloudVisionV1p2beta1CropHintsAnnotation o) {
  buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation < 3) {
    checkUnnamed4695(o.cropHints);
  }
  buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation--;
}

buildUnnamed4696() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1ColorInfo>();
  o.add(buildGoogleCloudVisionV1p2beta1ColorInfo());
  o.add(buildGoogleCloudVisionV1p2beta1ColorInfo());
  return o;
}

checkUnnamed4696(core.List<api.GoogleCloudVisionV1p2beta1ColorInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1ColorInfo(o[0]);
  checkGoogleCloudVisionV1p2beta1ColorInfo(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation = 0;
buildGoogleCloudVisionV1p2beta1DominantColorsAnnotation() {
  var o = new api.GoogleCloudVisionV1p2beta1DominantColorsAnnotation();
  buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation < 3) {
    o.colors = buildUnnamed4696();
  }
  buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p2beta1DominantColorsAnnotation(
    api.GoogleCloudVisionV1p2beta1DominantColorsAnnotation o) {
  buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation < 3) {
    checkUnnamed4696(o.colors);
  }
  buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation--;
}

buildUnnamed4697() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1LocationInfo>();
  o.add(buildGoogleCloudVisionV1p2beta1LocationInfo());
  o.add(buildGoogleCloudVisionV1p2beta1LocationInfo());
  return o;
}

checkUnnamed4697(core.List<api.GoogleCloudVisionV1p2beta1LocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1LocationInfo(o[0]);
  checkGoogleCloudVisionV1p2beta1LocationInfo(o[1]);
}

buildUnnamed4698() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1Property>();
  o.add(buildGoogleCloudVisionV1p2beta1Property());
  o.add(buildGoogleCloudVisionV1p2beta1Property());
  return o;
}

checkUnnamed4698(core.List<api.GoogleCloudVisionV1p2beta1Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Property(o[0]);
  checkGoogleCloudVisionV1p2beta1Property(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1EntityAnnotation = 0;
buildGoogleCloudVisionV1p2beta1EntityAnnotation() {
  var o = new api.GoogleCloudVisionV1p2beta1EntityAnnotation();
  buildCounterGoogleCloudVisionV1p2beta1EntityAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1EntityAnnotation < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.confidence = 42.0;
    o.description = "foo";
    o.locale = "foo";
    o.locations = buildUnnamed4697();
    o.mid = "foo";
    o.properties = buildUnnamed4698();
    o.score = 42.0;
    o.topicality = 42.0;
  }
  buildCounterGoogleCloudVisionV1p2beta1EntityAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p2beta1EntityAnnotation(
    api.GoogleCloudVisionV1p2beta1EntityAnnotation o) {
  buildCounterGoogleCloudVisionV1p2beta1EntityAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1EntityAnnotation < 3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.locale, unittest.equals('foo'));
    checkUnnamed4697(o.locations);
    unittest.expect(o.mid, unittest.equals('foo'));
    checkUnnamed4698(o.properties);
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.topicality, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p2beta1EntityAnnotation--;
}

buildUnnamed4699() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1FaceAnnotationLandmark>();
  o.add(buildGoogleCloudVisionV1p2beta1FaceAnnotationLandmark());
  o.add(buildGoogleCloudVisionV1p2beta1FaceAnnotationLandmark());
  return o;
}

checkUnnamed4699(
    core.List<api.GoogleCloudVisionV1p2beta1FaceAnnotationLandmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1FaceAnnotationLandmark(o[0]);
  checkGoogleCloudVisionV1p2beta1FaceAnnotationLandmark(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1FaceAnnotation = 0;
buildGoogleCloudVisionV1p2beta1FaceAnnotation() {
  var o = new api.GoogleCloudVisionV1p2beta1FaceAnnotation();
  buildCounterGoogleCloudVisionV1p2beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1FaceAnnotation < 3) {
    o.angerLikelihood = "foo";
    o.blurredLikelihood = "foo";
    o.boundingPoly = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.detectionConfidence = 42.0;
    o.fdBoundingPoly = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.headwearLikelihood = "foo";
    o.joyLikelihood = "foo";
    o.landmarkingConfidence = 42.0;
    o.landmarks = buildUnnamed4699();
    o.panAngle = 42.0;
    o.rollAngle = 42.0;
    o.sorrowLikelihood = "foo";
    o.surpriseLikelihood = "foo";
    o.tiltAngle = 42.0;
    o.underExposedLikelihood = "foo";
  }
  buildCounterGoogleCloudVisionV1p2beta1FaceAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p2beta1FaceAnnotation(
    api.GoogleCloudVisionV1p2beta1FaceAnnotation o) {
  buildCounterGoogleCloudVisionV1p2beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1FaceAnnotation < 3) {
    unittest.expect(o.angerLikelihood, unittest.equals('foo'));
    unittest.expect(o.blurredLikelihood, unittest.equals('foo'));
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.detectionConfidence, unittest.equals(42.0));
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.fdBoundingPoly);
    unittest.expect(o.headwearLikelihood, unittest.equals('foo'));
    unittest.expect(o.joyLikelihood, unittest.equals('foo'));
    unittest.expect(o.landmarkingConfidence, unittest.equals(42.0));
    checkUnnamed4699(o.landmarks);
    unittest.expect(o.panAngle, unittest.equals(42.0));
    unittest.expect(o.rollAngle, unittest.equals(42.0));
    unittest.expect(o.sorrowLikelihood, unittest.equals('foo'));
    unittest.expect(o.surpriseLikelihood, unittest.equals('foo'));
    unittest.expect(o.tiltAngle, unittest.equals(42.0));
    unittest.expect(o.underExposedLikelihood, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1FaceAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1FaceAnnotationLandmark = 0;
buildGoogleCloudVisionV1p2beta1FaceAnnotationLandmark() {
  var o = new api.GoogleCloudVisionV1p2beta1FaceAnnotationLandmark();
  buildCounterGoogleCloudVisionV1p2beta1FaceAnnotationLandmark++;
  if (buildCounterGoogleCloudVisionV1p2beta1FaceAnnotationLandmark < 3) {
    o.position = buildGoogleCloudVisionV1p2beta1Position();
    o.type = "foo";
  }
  buildCounterGoogleCloudVisionV1p2beta1FaceAnnotationLandmark--;
  return o;
}

checkGoogleCloudVisionV1p2beta1FaceAnnotationLandmark(
    api.GoogleCloudVisionV1p2beta1FaceAnnotationLandmark o) {
  buildCounterGoogleCloudVisionV1p2beta1FaceAnnotationLandmark++;
  if (buildCounterGoogleCloudVisionV1p2beta1FaceAnnotationLandmark < 3) {
    checkGoogleCloudVisionV1p2beta1Position(o.position);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1FaceAnnotationLandmark--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1GcsDestination = 0;
buildGoogleCloudVisionV1p2beta1GcsDestination() {
  var o = new api.GoogleCloudVisionV1p2beta1GcsDestination();
  buildCounterGoogleCloudVisionV1p2beta1GcsDestination++;
  if (buildCounterGoogleCloudVisionV1p2beta1GcsDestination < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudVisionV1p2beta1GcsDestination--;
  return o;
}

checkGoogleCloudVisionV1p2beta1GcsDestination(
    api.GoogleCloudVisionV1p2beta1GcsDestination o) {
  buildCounterGoogleCloudVisionV1p2beta1GcsDestination++;
  if (buildCounterGoogleCloudVisionV1p2beta1GcsDestination < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1GcsDestination--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1GcsSource = 0;
buildGoogleCloudVisionV1p2beta1GcsSource() {
  var o = new api.GoogleCloudVisionV1p2beta1GcsSource();
  buildCounterGoogleCloudVisionV1p2beta1GcsSource++;
  if (buildCounterGoogleCloudVisionV1p2beta1GcsSource < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudVisionV1p2beta1GcsSource--;
  return o;
}

checkGoogleCloudVisionV1p2beta1GcsSource(
    api.GoogleCloudVisionV1p2beta1GcsSource o) {
  buildCounterGoogleCloudVisionV1p2beta1GcsSource++;
  if (buildCounterGoogleCloudVisionV1p2beta1GcsSource < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1GcsSource--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1ImageAnnotationContext = 0;
buildGoogleCloudVisionV1p2beta1ImageAnnotationContext() {
  var o = new api.GoogleCloudVisionV1p2beta1ImageAnnotationContext();
  buildCounterGoogleCloudVisionV1p2beta1ImageAnnotationContext++;
  if (buildCounterGoogleCloudVisionV1p2beta1ImageAnnotationContext < 3) {
    o.pageNumber = 42;
    o.uri = "foo";
  }
  buildCounterGoogleCloudVisionV1p2beta1ImageAnnotationContext--;
  return o;
}

checkGoogleCloudVisionV1p2beta1ImageAnnotationContext(
    api.GoogleCloudVisionV1p2beta1ImageAnnotationContext o) {
  buildCounterGoogleCloudVisionV1p2beta1ImageAnnotationContext++;
  if (buildCounterGoogleCloudVisionV1p2beta1ImageAnnotationContext < 3) {
    unittest.expect(o.pageNumber, unittest.equals(42));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1ImageAnnotationContext--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1ImageProperties = 0;
buildGoogleCloudVisionV1p2beta1ImageProperties() {
  var o = new api.GoogleCloudVisionV1p2beta1ImageProperties();
  buildCounterGoogleCloudVisionV1p2beta1ImageProperties++;
  if (buildCounterGoogleCloudVisionV1p2beta1ImageProperties < 3) {
    o.dominantColors =
        buildGoogleCloudVisionV1p2beta1DominantColorsAnnotation();
  }
  buildCounterGoogleCloudVisionV1p2beta1ImageProperties--;
  return o;
}

checkGoogleCloudVisionV1p2beta1ImageProperties(
    api.GoogleCloudVisionV1p2beta1ImageProperties o) {
  buildCounterGoogleCloudVisionV1p2beta1ImageProperties++;
  if (buildCounterGoogleCloudVisionV1p2beta1ImageProperties < 3) {
    checkGoogleCloudVisionV1p2beta1DominantColorsAnnotation(o.dominantColors);
  }
  buildCounterGoogleCloudVisionV1p2beta1ImageProperties--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1InputConfig = 0;
buildGoogleCloudVisionV1p2beta1InputConfig() {
  var o = new api.GoogleCloudVisionV1p2beta1InputConfig();
  buildCounterGoogleCloudVisionV1p2beta1InputConfig++;
  if (buildCounterGoogleCloudVisionV1p2beta1InputConfig < 3) {
    o.gcsSource = buildGoogleCloudVisionV1p2beta1GcsSource();
    o.mimeType = "foo";
  }
  buildCounterGoogleCloudVisionV1p2beta1InputConfig--;
  return o;
}

checkGoogleCloudVisionV1p2beta1InputConfig(
    api.GoogleCloudVisionV1p2beta1InputConfig o) {
  buildCounterGoogleCloudVisionV1p2beta1InputConfig++;
  if (buildCounterGoogleCloudVisionV1p2beta1InputConfig < 3) {
    checkGoogleCloudVisionV1p2beta1GcsSource(o.gcsSource);
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1InputConfig--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1LocationInfo = 0;
buildGoogleCloudVisionV1p2beta1LocationInfo() {
  var o = new api.GoogleCloudVisionV1p2beta1LocationInfo();
  buildCounterGoogleCloudVisionV1p2beta1LocationInfo++;
  if (buildCounterGoogleCloudVisionV1p2beta1LocationInfo < 3) {
    o.latLng = buildLatLng();
  }
  buildCounterGoogleCloudVisionV1p2beta1LocationInfo--;
  return o;
}

checkGoogleCloudVisionV1p2beta1LocationInfo(
    api.GoogleCloudVisionV1p2beta1LocationInfo o) {
  buildCounterGoogleCloudVisionV1p2beta1LocationInfo++;
  if (buildCounterGoogleCloudVisionV1p2beta1LocationInfo < 3) {
    checkLatLng(o.latLng);
  }
  buildCounterGoogleCloudVisionV1p2beta1LocationInfo--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1NormalizedVertex = 0;
buildGoogleCloudVisionV1p2beta1NormalizedVertex() {
  var o = new api.GoogleCloudVisionV1p2beta1NormalizedVertex();
  buildCounterGoogleCloudVisionV1p2beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVisionV1p2beta1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudVisionV1p2beta1NormalizedVertex--;
  return o;
}

checkGoogleCloudVisionV1p2beta1NormalizedVertex(
    api.GoogleCloudVisionV1p2beta1NormalizedVertex o) {
  buildCounterGoogleCloudVisionV1p2beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVisionV1p2beta1NormalizedVertex < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p2beta1NormalizedVertex--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1OperationMetadata = 0;
buildGoogleCloudVisionV1p2beta1OperationMetadata() {
  var o = new api.GoogleCloudVisionV1p2beta1OperationMetadata();
  buildCounterGoogleCloudVisionV1p2beta1OperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p2beta1OperationMetadata < 3) {
    o.createTime = "foo";
    o.state = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudVisionV1p2beta1OperationMetadata--;
  return o;
}

checkGoogleCloudVisionV1p2beta1OperationMetadata(
    api.GoogleCloudVisionV1p2beta1OperationMetadata o) {
  buildCounterGoogleCloudVisionV1p2beta1OperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p2beta1OperationMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1OperationMetadata--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1OutputConfig = 0;
buildGoogleCloudVisionV1p2beta1OutputConfig() {
  var o = new api.GoogleCloudVisionV1p2beta1OutputConfig();
  buildCounterGoogleCloudVisionV1p2beta1OutputConfig++;
  if (buildCounterGoogleCloudVisionV1p2beta1OutputConfig < 3) {
    o.batchSize = 42;
    o.gcsDestination = buildGoogleCloudVisionV1p2beta1GcsDestination();
  }
  buildCounterGoogleCloudVisionV1p2beta1OutputConfig--;
  return o;
}

checkGoogleCloudVisionV1p2beta1OutputConfig(
    api.GoogleCloudVisionV1p2beta1OutputConfig o) {
  buildCounterGoogleCloudVisionV1p2beta1OutputConfig++;
  if (buildCounterGoogleCloudVisionV1p2beta1OutputConfig < 3) {
    unittest.expect(o.batchSize, unittest.equals(42));
    checkGoogleCloudVisionV1p2beta1GcsDestination(o.gcsDestination);
  }
  buildCounterGoogleCloudVisionV1p2beta1OutputConfig--;
}

buildUnnamed4700() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1Block>();
  o.add(buildGoogleCloudVisionV1p2beta1Block());
  o.add(buildGoogleCloudVisionV1p2beta1Block());
  return o;
}

checkUnnamed4700(core.List<api.GoogleCloudVisionV1p2beta1Block> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Block(o[0]);
  checkGoogleCloudVisionV1p2beta1Block(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1Page = 0;
buildGoogleCloudVisionV1p2beta1Page() {
  var o = new api.GoogleCloudVisionV1p2beta1Page();
  buildCounterGoogleCloudVisionV1p2beta1Page++;
  if (buildCounterGoogleCloudVisionV1p2beta1Page < 3) {
    o.blocks = buildUnnamed4700();
    o.confidence = 42.0;
    o.height = 42;
    o.property = buildGoogleCloudVisionV1p2beta1TextAnnotationTextProperty();
    o.width = 42;
  }
  buildCounterGoogleCloudVisionV1p2beta1Page--;
  return o;
}

checkGoogleCloudVisionV1p2beta1Page(api.GoogleCloudVisionV1p2beta1Page o) {
  buildCounterGoogleCloudVisionV1p2beta1Page++;
  if (buildCounterGoogleCloudVisionV1p2beta1Page < 3) {
    checkUnnamed4700(o.blocks);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.height, unittest.equals(42));
    checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(o.property);
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterGoogleCloudVisionV1p2beta1Page--;
}

buildUnnamed4701() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1Word>();
  o.add(buildGoogleCloudVisionV1p2beta1Word());
  o.add(buildGoogleCloudVisionV1p2beta1Word());
  return o;
}

checkUnnamed4701(core.List<api.GoogleCloudVisionV1p2beta1Word> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Word(o[0]);
  checkGoogleCloudVisionV1p2beta1Word(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1Paragraph = 0;
buildGoogleCloudVisionV1p2beta1Paragraph() {
  var o = new api.GoogleCloudVisionV1p2beta1Paragraph();
  buildCounterGoogleCloudVisionV1p2beta1Paragraph++;
  if (buildCounterGoogleCloudVisionV1p2beta1Paragraph < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p2beta1TextAnnotationTextProperty();
    o.words = buildUnnamed4701();
  }
  buildCounterGoogleCloudVisionV1p2beta1Paragraph--;
  return o;
}

checkGoogleCloudVisionV1p2beta1Paragraph(
    api.GoogleCloudVisionV1p2beta1Paragraph o) {
  buildCounterGoogleCloudVisionV1p2beta1Paragraph++;
  if (buildCounterGoogleCloudVisionV1p2beta1Paragraph < 3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(o.property);
    checkUnnamed4701(o.words);
  }
  buildCounterGoogleCloudVisionV1p2beta1Paragraph--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1Position = 0;
buildGoogleCloudVisionV1p2beta1Position() {
  var o = new api.GoogleCloudVisionV1p2beta1Position();
  buildCounterGoogleCloudVisionV1p2beta1Position++;
  if (buildCounterGoogleCloudVisionV1p2beta1Position < 3) {
    o.x = 42.0;
    o.y = 42.0;
    o.z = 42.0;
  }
  buildCounterGoogleCloudVisionV1p2beta1Position--;
  return o;
}

checkGoogleCloudVisionV1p2beta1Position(
    api.GoogleCloudVisionV1p2beta1Position o) {
  buildCounterGoogleCloudVisionV1p2beta1Position++;
  if (buildCounterGoogleCloudVisionV1p2beta1Position < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
    unittest.expect(o.z, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p2beta1Position--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1Property = 0;
buildGoogleCloudVisionV1p2beta1Property() {
  var o = new api.GoogleCloudVisionV1p2beta1Property();
  buildCounterGoogleCloudVisionV1p2beta1Property++;
  if (buildCounterGoogleCloudVisionV1p2beta1Property < 3) {
    o.name = "foo";
    o.uint64Value = "foo";
    o.value = "foo";
  }
  buildCounterGoogleCloudVisionV1p2beta1Property--;
  return o;
}

checkGoogleCloudVisionV1p2beta1Property(
    api.GoogleCloudVisionV1p2beta1Property o) {
  buildCounterGoogleCloudVisionV1p2beta1Property++;
  if (buildCounterGoogleCloudVisionV1p2beta1Property < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.uint64Value, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1Property--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1SafeSearchAnnotation = 0;
buildGoogleCloudVisionV1p2beta1SafeSearchAnnotation() {
  var o = new api.GoogleCloudVisionV1p2beta1SafeSearchAnnotation();
  buildCounterGoogleCloudVisionV1p2beta1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1SafeSearchAnnotation < 3) {
    o.adult = "foo";
    o.medical = "foo";
    o.racy = "foo";
    o.spoof = "foo";
    o.violence = "foo";
  }
  buildCounterGoogleCloudVisionV1p2beta1SafeSearchAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p2beta1SafeSearchAnnotation(
    api.GoogleCloudVisionV1p2beta1SafeSearchAnnotation o) {
  buildCounterGoogleCloudVisionV1p2beta1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1SafeSearchAnnotation < 3) {
    unittest.expect(o.adult, unittest.equals('foo'));
    unittest.expect(o.medical, unittest.equals('foo'));
    unittest.expect(o.racy, unittest.equals('foo'));
    unittest.expect(o.spoof, unittest.equals('foo'));
    unittest.expect(o.violence, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1SafeSearchAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1Symbol = 0;
buildGoogleCloudVisionV1p2beta1Symbol() {
  var o = new api.GoogleCloudVisionV1p2beta1Symbol();
  buildCounterGoogleCloudVisionV1p2beta1Symbol++;
  if (buildCounterGoogleCloudVisionV1p2beta1Symbol < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p2beta1TextAnnotationTextProperty();
    o.text = "foo";
  }
  buildCounterGoogleCloudVisionV1p2beta1Symbol--;
  return o;
}

checkGoogleCloudVisionV1p2beta1Symbol(api.GoogleCloudVisionV1p2beta1Symbol o) {
  buildCounterGoogleCloudVisionV1p2beta1Symbol++;
  if (buildCounterGoogleCloudVisionV1p2beta1Symbol < 3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(o.property);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1Symbol--;
}

buildUnnamed4702() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1Page>();
  o.add(buildGoogleCloudVisionV1p2beta1Page());
  o.add(buildGoogleCloudVisionV1p2beta1Page());
  return o;
}

checkUnnamed4702(core.List<api.GoogleCloudVisionV1p2beta1Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Page(o[0]);
  checkGoogleCloudVisionV1p2beta1Page(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1TextAnnotation = 0;
buildGoogleCloudVisionV1p2beta1TextAnnotation() {
  var o = new api.GoogleCloudVisionV1p2beta1TextAnnotation();
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotation < 3) {
    o.pages = buildUnnamed4702();
    o.text = "foo";
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p2beta1TextAnnotation(
    api.GoogleCloudVisionV1p2beta1TextAnnotation o) {
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotation < 3) {
    checkUnnamed4702(o.pages);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak = 0;
buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak() {
  var o = new api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak();
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak < 3) {
    o.isPrefix = true;
    o.type = "foo";
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak--;
  return o;
}

checkGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak(
    api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak o) {
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak < 3) {
    unittest.expect(o.isPrefix, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage =
    0;
buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage() {
  var o = new api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage();
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage <
      3) {
    o.confidence = 42.0;
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage--;
  return o;
}

checkGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage(
    api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage o) {
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage <
      3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage--;
}

buildUnnamed4703() {
  var o = new core
      .List<api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage>();
  o.add(buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage());
  o.add(buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage());
  return o;
}

checkUnnamed4703(
    core.List<api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage(o[0]);
  checkGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty = 0;
buildGoogleCloudVisionV1p2beta1TextAnnotationTextProperty() {
  var o = new api.GoogleCloudVisionV1p2beta1TextAnnotationTextProperty();
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty < 3) {
    o.detectedBreak =
        buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak();
    o.detectedLanguages = buildUnnamed4703();
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty--;
  return o;
}

checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(
    api.GoogleCloudVisionV1p2beta1TextAnnotationTextProperty o) {
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty < 3) {
    checkGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak(o.detectedBreak);
    checkUnnamed4703(o.detectedLanguages);
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1Vertex = 0;
buildGoogleCloudVisionV1p2beta1Vertex() {
  var o = new api.GoogleCloudVisionV1p2beta1Vertex();
  buildCounterGoogleCloudVisionV1p2beta1Vertex++;
  if (buildCounterGoogleCloudVisionV1p2beta1Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudVisionV1p2beta1Vertex--;
  return o;
}

checkGoogleCloudVisionV1p2beta1Vertex(api.GoogleCloudVisionV1p2beta1Vertex o) {
  buildCounterGoogleCloudVisionV1p2beta1Vertex++;
  if (buildCounterGoogleCloudVisionV1p2beta1Vertex < 3) {
    unittest.expect(o.x, unittest.equals(42));
    unittest.expect(o.y, unittest.equals(42));
  }
  buildCounterGoogleCloudVisionV1p2beta1Vertex--;
}

buildUnnamed4704() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebLabel>();
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebLabel());
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebLabel());
  return o;
}

checkUnnamed4704(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebLabel(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebLabel(o[1]);
}

buildUnnamed4705() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  return o;
}

checkUnnamed4705(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[1]);
}

buildUnnamed4706() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebPage>();
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebPage());
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebPage());
  return o;
}

checkUnnamed4706(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebPage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebPage(o[1]);
}

buildUnnamed4707() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  return o;
}

checkUnnamed4707(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[1]);
}

buildUnnamed4708() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  return o;
}

checkUnnamed4708(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[1]);
}

buildUnnamed4709() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebEntity>();
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebEntity());
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebEntity());
  return o;
}

checkUnnamed4709(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebEntity(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebEntity(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1WebDetection = 0;
buildGoogleCloudVisionV1p2beta1WebDetection() {
  var o = new api.GoogleCloudVisionV1p2beta1WebDetection();
  buildCounterGoogleCloudVisionV1p2beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetection < 3) {
    o.bestGuessLabels = buildUnnamed4704();
    o.fullMatchingImages = buildUnnamed4705();
    o.pagesWithMatchingImages = buildUnnamed4706();
    o.partialMatchingImages = buildUnnamed4707();
    o.visuallySimilarImages = buildUnnamed4708();
    o.webEntities = buildUnnamed4709();
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetection--;
  return o;
}

checkGoogleCloudVisionV1p2beta1WebDetection(
    api.GoogleCloudVisionV1p2beta1WebDetection o) {
  buildCounterGoogleCloudVisionV1p2beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetection < 3) {
    checkUnnamed4704(o.bestGuessLabels);
    checkUnnamed4705(o.fullMatchingImages);
    checkUnnamed4706(o.pagesWithMatchingImages);
    checkUnnamed4707(o.partialMatchingImages);
    checkUnnamed4708(o.visuallySimilarImages);
    checkUnnamed4709(o.webEntities);
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetection--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebEntity = 0;
buildGoogleCloudVisionV1p2beta1WebDetectionWebEntity() {
  var o = new api.GoogleCloudVisionV1p2beta1WebDetectionWebEntity();
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebEntity++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebEntity < 3) {
    o.description = "foo";
    o.entityId = "foo";
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebEntity--;
  return o;
}

checkGoogleCloudVisionV1p2beta1WebDetectionWebEntity(
    api.GoogleCloudVisionV1p2beta1WebDetectionWebEntity o) {
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebEntity++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebEntity < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.entityId, unittest.equals('foo'));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebEntity--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebImage = 0;
buildGoogleCloudVisionV1p2beta1WebDetectionWebImage() {
  var o = new api.GoogleCloudVisionV1p2beta1WebDetectionWebImage();
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebImage++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebImage < 3) {
    o.score = 42.0;
    o.url = "foo";
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebImage--;
  return o;
}

checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(
    api.GoogleCloudVisionV1p2beta1WebDetectionWebImage o) {
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebImage++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebImage < 3) {
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebImage--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebLabel = 0;
buildGoogleCloudVisionV1p2beta1WebDetectionWebLabel() {
  var o = new api.GoogleCloudVisionV1p2beta1WebDetectionWebLabel();
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebLabel++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebLabel < 3) {
    o.label = "foo";
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebLabel--;
  return o;
}

checkGoogleCloudVisionV1p2beta1WebDetectionWebLabel(
    api.GoogleCloudVisionV1p2beta1WebDetectionWebLabel o) {
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebLabel++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebLabel < 3) {
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebLabel--;
}

buildUnnamed4710() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  return o;
}

checkUnnamed4710(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[1]);
}

buildUnnamed4711() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  return o;
}

checkUnnamed4711(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebPage = 0;
buildGoogleCloudVisionV1p2beta1WebDetectionWebPage() {
  var o = new api.GoogleCloudVisionV1p2beta1WebDetectionWebPage();
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebPage++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebPage < 3) {
    o.fullMatchingImages = buildUnnamed4710();
    o.pageTitle = "foo";
    o.partialMatchingImages = buildUnnamed4711();
    o.score = 42.0;
    o.url = "foo";
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebPage--;
  return o;
}

checkGoogleCloudVisionV1p2beta1WebDetectionWebPage(
    api.GoogleCloudVisionV1p2beta1WebDetectionWebPage o) {
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebPage++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebPage < 3) {
    checkUnnamed4710(o.fullMatchingImages);
    unittest.expect(o.pageTitle, unittest.equals('foo'));
    checkUnnamed4711(o.partialMatchingImages);
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebPage--;
}

buildUnnamed4712() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1Symbol>();
  o.add(buildGoogleCloudVisionV1p2beta1Symbol());
  o.add(buildGoogleCloudVisionV1p2beta1Symbol());
  return o;
}

checkUnnamed4712(core.List<api.GoogleCloudVisionV1p2beta1Symbol> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Symbol(o[0]);
  checkGoogleCloudVisionV1p2beta1Symbol(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1Word = 0;
buildGoogleCloudVisionV1p2beta1Word() {
  var o = new api.GoogleCloudVisionV1p2beta1Word();
  buildCounterGoogleCloudVisionV1p2beta1Word++;
  if (buildCounterGoogleCloudVisionV1p2beta1Word < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p2beta1TextAnnotationTextProperty();
    o.symbols = buildUnnamed4712();
  }
  buildCounterGoogleCloudVisionV1p2beta1Word--;
  return o;
}

checkGoogleCloudVisionV1p2beta1Word(api.GoogleCloudVisionV1p2beta1Word o) {
  buildCounterGoogleCloudVisionV1p2beta1Word++;
  if (buildCounterGoogleCloudVisionV1p2beta1Word < 3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(o.property);
    checkUnnamed4712(o.symbols);
  }
  buildCounterGoogleCloudVisionV1p2beta1Word--;
}

buildUnnamed4713() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1AnnotateImageResponse>();
  o.add(buildGoogleCloudVisionV1p3beta1AnnotateImageResponse());
  o.add(buildGoogleCloudVisionV1p3beta1AnnotateImageResponse());
  return o;
}

checkUnnamed4713(
    core.List<api.GoogleCloudVisionV1p3beta1AnnotateImageResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1AnnotateImageResponse(o[0]);
  checkGoogleCloudVisionV1p3beta1AnnotateImageResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1AnnotateFileResponse = 0;
buildGoogleCloudVisionV1p3beta1AnnotateFileResponse() {
  var o = new api.GoogleCloudVisionV1p3beta1AnnotateFileResponse();
  buildCounterGoogleCloudVisionV1p3beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1AnnotateFileResponse < 3) {
    o.inputConfig = buildGoogleCloudVisionV1p3beta1InputConfig();
    o.responses = buildUnnamed4713();
  }
  buildCounterGoogleCloudVisionV1p3beta1AnnotateFileResponse--;
  return o;
}

checkGoogleCloudVisionV1p3beta1AnnotateFileResponse(
    api.GoogleCloudVisionV1p3beta1AnnotateFileResponse o) {
  buildCounterGoogleCloudVisionV1p3beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1AnnotateFileResponse < 3) {
    checkGoogleCloudVisionV1p3beta1InputConfig(o.inputConfig);
    checkUnnamed4713(o.responses);
  }
  buildCounterGoogleCloudVisionV1p3beta1AnnotateFileResponse--;
}

buildUnnamed4714() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1FaceAnnotation>();
  o.add(buildGoogleCloudVisionV1p3beta1FaceAnnotation());
  o.add(buildGoogleCloudVisionV1p3beta1FaceAnnotation());
  return o;
}

checkUnnamed4714(core.List<api.GoogleCloudVisionV1p3beta1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1FaceAnnotation(o[0]);
  checkGoogleCloudVisionV1p3beta1FaceAnnotation(o[1]);
}

buildUnnamed4715() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p3beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p3beta1EntityAnnotation());
  return o;
}

checkUnnamed4715(core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[1]);
}

buildUnnamed4716() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p3beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p3beta1EntityAnnotation());
  return o;
}

checkUnnamed4716(core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[1]);
}

buildUnnamed4717() {
  var o =
      new core.List<api.GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation>();
  o.add(buildGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation());
  o.add(buildGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation());
  return o;
}

checkUnnamed4717(
    core.List<api.GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation(o[0]);
  checkGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation(o[1]);
}

buildUnnamed4718() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p3beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p3beta1EntityAnnotation());
  return o;
}

checkUnnamed4718(core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[1]);
}

buildUnnamed4719() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p3beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p3beta1EntityAnnotation());
  return o;
}

checkUnnamed4719(core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1AnnotateImageResponse = 0;
buildGoogleCloudVisionV1p3beta1AnnotateImageResponse() {
  var o = new api.GoogleCloudVisionV1p3beta1AnnotateImageResponse();
  buildCounterGoogleCloudVisionV1p3beta1AnnotateImageResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1AnnotateImageResponse < 3) {
    o.context = buildGoogleCloudVisionV1p3beta1ImageAnnotationContext();
    o.cropHintsAnnotation =
        buildGoogleCloudVisionV1p3beta1CropHintsAnnotation();
    o.error = buildStatus();
    o.faceAnnotations = buildUnnamed4714();
    o.fullTextAnnotation = buildGoogleCloudVisionV1p3beta1TextAnnotation();
    o.imagePropertiesAnnotation =
        buildGoogleCloudVisionV1p3beta1ImageProperties();
    o.labelAnnotations = buildUnnamed4715();
    o.landmarkAnnotations = buildUnnamed4716();
    o.localizedObjectAnnotations = buildUnnamed4717();
    o.logoAnnotations = buildUnnamed4718();
    o.productSearchResults =
        buildGoogleCloudVisionV1p3beta1ProductSearchResults();
    o.safeSearchAnnotation =
        buildGoogleCloudVisionV1p3beta1SafeSearchAnnotation();
    o.textAnnotations = buildUnnamed4719();
    o.webDetection = buildGoogleCloudVisionV1p3beta1WebDetection();
  }
  buildCounterGoogleCloudVisionV1p3beta1AnnotateImageResponse--;
  return o;
}

checkGoogleCloudVisionV1p3beta1AnnotateImageResponse(
    api.GoogleCloudVisionV1p3beta1AnnotateImageResponse o) {
  buildCounterGoogleCloudVisionV1p3beta1AnnotateImageResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1AnnotateImageResponse < 3) {
    checkGoogleCloudVisionV1p3beta1ImageAnnotationContext(o.context);
    checkGoogleCloudVisionV1p3beta1CropHintsAnnotation(o.cropHintsAnnotation);
    checkStatus(o.error);
    checkUnnamed4714(o.faceAnnotations);
    checkGoogleCloudVisionV1p3beta1TextAnnotation(o.fullTextAnnotation);
    checkGoogleCloudVisionV1p3beta1ImageProperties(o.imagePropertiesAnnotation);
    checkUnnamed4715(o.labelAnnotations);
    checkUnnamed4716(o.landmarkAnnotations);
    checkUnnamed4717(o.localizedObjectAnnotations);
    checkUnnamed4718(o.logoAnnotations);
    checkGoogleCloudVisionV1p3beta1ProductSearchResults(o.productSearchResults);
    checkGoogleCloudVisionV1p3beta1SafeSearchAnnotation(o.safeSearchAnnotation);
    checkUnnamed4719(o.textAnnotations);
    checkGoogleCloudVisionV1p3beta1WebDetection(o.webDetection);
  }
  buildCounterGoogleCloudVisionV1p3beta1AnnotateImageResponse--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse = 0;
buildGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse() {
  var o = new api.GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse();
  buildCounterGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse < 3) {
    o.outputConfig = buildGoogleCloudVisionV1p3beta1OutputConfig();
  }
  buildCounterGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse--;
  return o;
}

checkGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse(
    api.GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse o) {
  buildCounterGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse < 3) {
    checkGoogleCloudVisionV1p3beta1OutputConfig(o.outputConfig);
  }
  buildCounterGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse--;
}

buildUnnamed4720() {
  var o =
      new core.List<api.GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse>();
  o.add(buildGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse());
  o.add(buildGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse());
  return o;
}

checkUnnamed4720(
    core.List<api.GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse(o[0]);
  checkGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse =
    0;
buildGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse() {
  var o = new api.GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse();
  buildCounterGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse <
      3) {
    o.responses = buildUnnamed4720();
  }
  buildCounterGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse--;
  return o;
}

checkGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse(
    api.GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse o) {
  buildCounterGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse <
      3) {
    checkUnnamed4720(o.responses);
  }
  buildCounterGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1BatchOperationMetadata = 0;
buildGoogleCloudVisionV1p3beta1BatchOperationMetadata() {
  var o = new api.GoogleCloudVisionV1p3beta1BatchOperationMetadata();
  buildCounterGoogleCloudVisionV1p3beta1BatchOperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p3beta1BatchOperationMetadata < 3) {
    o.endTime = "foo";
    o.state = "foo";
    o.submitTime = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1BatchOperationMetadata--;
  return o;
}

checkGoogleCloudVisionV1p3beta1BatchOperationMetadata(
    api.GoogleCloudVisionV1p3beta1BatchOperationMetadata o) {
  buildCounterGoogleCloudVisionV1p3beta1BatchOperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p3beta1BatchOperationMetadata < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.submitTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1BatchOperationMetadata--;
}

buildUnnamed4721() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1Paragraph>();
  o.add(buildGoogleCloudVisionV1p3beta1Paragraph());
  o.add(buildGoogleCloudVisionV1p3beta1Paragraph());
  return o;
}

checkUnnamed4721(core.List<api.GoogleCloudVisionV1p3beta1Paragraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1Paragraph(o[0]);
  checkGoogleCloudVisionV1p3beta1Paragraph(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1Block = 0;
buildGoogleCloudVisionV1p3beta1Block() {
  var o = new api.GoogleCloudVisionV1p3beta1Block();
  buildCounterGoogleCloudVisionV1p3beta1Block++;
  if (buildCounterGoogleCloudVisionV1p3beta1Block < 3) {
    o.blockType = "foo";
    o.boundingBox = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.confidence = 42.0;
    o.paragraphs = buildUnnamed4721();
    o.property = buildGoogleCloudVisionV1p3beta1TextAnnotationTextProperty();
  }
  buildCounterGoogleCloudVisionV1p3beta1Block--;
  return o;
}

checkGoogleCloudVisionV1p3beta1Block(api.GoogleCloudVisionV1p3beta1Block o) {
  buildCounterGoogleCloudVisionV1p3beta1Block++;
  if (buildCounterGoogleCloudVisionV1p3beta1Block < 3) {
    unittest.expect(o.blockType, unittest.equals('foo'));
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkUnnamed4721(o.paragraphs);
    checkGoogleCloudVisionV1p3beta1TextAnnotationTextProperty(o.property);
  }
  buildCounterGoogleCloudVisionV1p3beta1Block--;
}

buildUnnamed4722() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1NormalizedVertex>();
  o.add(buildGoogleCloudVisionV1p3beta1NormalizedVertex());
  o.add(buildGoogleCloudVisionV1p3beta1NormalizedVertex());
  return o;
}

checkUnnamed4722(core.List<api.GoogleCloudVisionV1p3beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1NormalizedVertex(o[0]);
  checkGoogleCloudVisionV1p3beta1NormalizedVertex(o[1]);
}

buildUnnamed4723() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1Vertex>();
  o.add(buildGoogleCloudVisionV1p3beta1Vertex());
  o.add(buildGoogleCloudVisionV1p3beta1Vertex());
  return o;
}

checkUnnamed4723(core.List<api.GoogleCloudVisionV1p3beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1Vertex(o[0]);
  checkGoogleCloudVisionV1p3beta1Vertex(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1BoundingPoly = 0;
buildGoogleCloudVisionV1p3beta1BoundingPoly() {
  var o = new api.GoogleCloudVisionV1p3beta1BoundingPoly();
  buildCounterGoogleCloudVisionV1p3beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p3beta1BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed4722();
    o.vertices = buildUnnamed4723();
  }
  buildCounterGoogleCloudVisionV1p3beta1BoundingPoly--;
  return o;
}

checkGoogleCloudVisionV1p3beta1BoundingPoly(
    api.GoogleCloudVisionV1p3beta1BoundingPoly o) {
  buildCounterGoogleCloudVisionV1p3beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p3beta1BoundingPoly < 3) {
    checkUnnamed4722(o.normalizedVertices);
    checkUnnamed4723(o.vertices);
  }
  buildCounterGoogleCloudVisionV1p3beta1BoundingPoly--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1ColorInfo = 0;
buildGoogleCloudVisionV1p3beta1ColorInfo() {
  var o = new api.GoogleCloudVisionV1p3beta1ColorInfo();
  buildCounterGoogleCloudVisionV1p3beta1ColorInfo++;
  if (buildCounterGoogleCloudVisionV1p3beta1ColorInfo < 3) {
    o.color = buildColor();
    o.pixelFraction = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p3beta1ColorInfo--;
  return o;
}

checkGoogleCloudVisionV1p3beta1ColorInfo(
    api.GoogleCloudVisionV1p3beta1ColorInfo o) {
  buildCounterGoogleCloudVisionV1p3beta1ColorInfo++;
  if (buildCounterGoogleCloudVisionV1p3beta1ColorInfo < 3) {
    checkColor(o.color);
    unittest.expect(o.pixelFraction, unittest.equals(42.0));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p3beta1ColorInfo--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1CropHint = 0;
buildGoogleCloudVisionV1p3beta1CropHint() {
  var o = new api.GoogleCloudVisionV1p3beta1CropHint();
  buildCounterGoogleCloudVisionV1p3beta1CropHint++;
  if (buildCounterGoogleCloudVisionV1p3beta1CropHint < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.confidence = 42.0;
    o.importanceFraction = 42.0;
  }
  buildCounterGoogleCloudVisionV1p3beta1CropHint--;
  return o;
}

checkGoogleCloudVisionV1p3beta1CropHint(
    api.GoogleCloudVisionV1p3beta1CropHint o) {
  buildCounterGoogleCloudVisionV1p3beta1CropHint++;
  if (buildCounterGoogleCloudVisionV1p3beta1CropHint < 3) {
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.importanceFraction, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p3beta1CropHint--;
}

buildUnnamed4724() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1CropHint>();
  o.add(buildGoogleCloudVisionV1p3beta1CropHint());
  o.add(buildGoogleCloudVisionV1p3beta1CropHint());
  return o;
}

checkUnnamed4724(core.List<api.GoogleCloudVisionV1p3beta1CropHint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1CropHint(o[0]);
  checkGoogleCloudVisionV1p3beta1CropHint(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation = 0;
buildGoogleCloudVisionV1p3beta1CropHintsAnnotation() {
  var o = new api.GoogleCloudVisionV1p3beta1CropHintsAnnotation();
  buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation < 3) {
    o.cropHints = buildUnnamed4724();
  }
  buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p3beta1CropHintsAnnotation(
    api.GoogleCloudVisionV1p3beta1CropHintsAnnotation o) {
  buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation < 3) {
    checkUnnamed4724(o.cropHints);
  }
  buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation--;
}

buildUnnamed4725() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1ColorInfo>();
  o.add(buildGoogleCloudVisionV1p3beta1ColorInfo());
  o.add(buildGoogleCloudVisionV1p3beta1ColorInfo());
  return o;
}

checkUnnamed4725(core.List<api.GoogleCloudVisionV1p3beta1ColorInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1ColorInfo(o[0]);
  checkGoogleCloudVisionV1p3beta1ColorInfo(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation = 0;
buildGoogleCloudVisionV1p3beta1DominantColorsAnnotation() {
  var o = new api.GoogleCloudVisionV1p3beta1DominantColorsAnnotation();
  buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation < 3) {
    o.colors = buildUnnamed4725();
  }
  buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p3beta1DominantColorsAnnotation(
    api.GoogleCloudVisionV1p3beta1DominantColorsAnnotation o) {
  buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation < 3) {
    checkUnnamed4725(o.colors);
  }
  buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation--;
}

buildUnnamed4726() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1LocationInfo>();
  o.add(buildGoogleCloudVisionV1p3beta1LocationInfo());
  o.add(buildGoogleCloudVisionV1p3beta1LocationInfo());
  return o;
}

checkUnnamed4726(core.List<api.GoogleCloudVisionV1p3beta1LocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1LocationInfo(o[0]);
  checkGoogleCloudVisionV1p3beta1LocationInfo(o[1]);
}

buildUnnamed4727() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1Property>();
  o.add(buildGoogleCloudVisionV1p3beta1Property());
  o.add(buildGoogleCloudVisionV1p3beta1Property());
  return o;
}

checkUnnamed4727(core.List<api.GoogleCloudVisionV1p3beta1Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1Property(o[0]);
  checkGoogleCloudVisionV1p3beta1Property(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1EntityAnnotation = 0;
buildGoogleCloudVisionV1p3beta1EntityAnnotation() {
  var o = new api.GoogleCloudVisionV1p3beta1EntityAnnotation();
  buildCounterGoogleCloudVisionV1p3beta1EntityAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1EntityAnnotation < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.confidence = 42.0;
    o.description = "foo";
    o.locale = "foo";
    o.locations = buildUnnamed4726();
    o.mid = "foo";
    o.properties = buildUnnamed4727();
    o.score = 42.0;
    o.topicality = 42.0;
  }
  buildCounterGoogleCloudVisionV1p3beta1EntityAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p3beta1EntityAnnotation(
    api.GoogleCloudVisionV1p3beta1EntityAnnotation o) {
  buildCounterGoogleCloudVisionV1p3beta1EntityAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1EntityAnnotation < 3) {
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.locale, unittest.equals('foo'));
    checkUnnamed4726(o.locations);
    unittest.expect(o.mid, unittest.equals('foo'));
    checkUnnamed4727(o.properties);
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.topicality, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p3beta1EntityAnnotation--;
}

buildUnnamed4728() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1FaceAnnotationLandmark>();
  o.add(buildGoogleCloudVisionV1p3beta1FaceAnnotationLandmark());
  o.add(buildGoogleCloudVisionV1p3beta1FaceAnnotationLandmark());
  return o;
}

checkUnnamed4728(
    core.List<api.GoogleCloudVisionV1p3beta1FaceAnnotationLandmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1FaceAnnotationLandmark(o[0]);
  checkGoogleCloudVisionV1p3beta1FaceAnnotationLandmark(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1FaceAnnotation = 0;
buildGoogleCloudVisionV1p3beta1FaceAnnotation() {
  var o = new api.GoogleCloudVisionV1p3beta1FaceAnnotation();
  buildCounterGoogleCloudVisionV1p3beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1FaceAnnotation < 3) {
    o.angerLikelihood = "foo";
    o.blurredLikelihood = "foo";
    o.boundingPoly = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.detectionConfidence = 42.0;
    o.fdBoundingPoly = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.headwearLikelihood = "foo";
    o.joyLikelihood = "foo";
    o.landmarkingConfidence = 42.0;
    o.landmarks = buildUnnamed4728();
    o.panAngle = 42.0;
    o.rollAngle = 42.0;
    o.sorrowLikelihood = "foo";
    o.surpriseLikelihood = "foo";
    o.tiltAngle = 42.0;
    o.underExposedLikelihood = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1FaceAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p3beta1FaceAnnotation(
    api.GoogleCloudVisionV1p3beta1FaceAnnotation o) {
  buildCounterGoogleCloudVisionV1p3beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1FaceAnnotation < 3) {
    unittest.expect(o.angerLikelihood, unittest.equals('foo'));
    unittest.expect(o.blurredLikelihood, unittest.equals('foo'));
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.detectionConfidence, unittest.equals(42.0));
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.fdBoundingPoly);
    unittest.expect(o.headwearLikelihood, unittest.equals('foo'));
    unittest.expect(o.joyLikelihood, unittest.equals('foo'));
    unittest.expect(o.landmarkingConfidence, unittest.equals(42.0));
    checkUnnamed4728(o.landmarks);
    unittest.expect(o.panAngle, unittest.equals(42.0));
    unittest.expect(o.rollAngle, unittest.equals(42.0));
    unittest.expect(o.sorrowLikelihood, unittest.equals('foo'));
    unittest.expect(o.surpriseLikelihood, unittest.equals('foo'));
    unittest.expect(o.tiltAngle, unittest.equals(42.0));
    unittest.expect(o.underExposedLikelihood, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1FaceAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1FaceAnnotationLandmark = 0;
buildGoogleCloudVisionV1p3beta1FaceAnnotationLandmark() {
  var o = new api.GoogleCloudVisionV1p3beta1FaceAnnotationLandmark();
  buildCounterGoogleCloudVisionV1p3beta1FaceAnnotationLandmark++;
  if (buildCounterGoogleCloudVisionV1p3beta1FaceAnnotationLandmark < 3) {
    o.position = buildGoogleCloudVisionV1p3beta1Position();
    o.type = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1FaceAnnotationLandmark--;
  return o;
}

checkGoogleCloudVisionV1p3beta1FaceAnnotationLandmark(
    api.GoogleCloudVisionV1p3beta1FaceAnnotationLandmark o) {
  buildCounterGoogleCloudVisionV1p3beta1FaceAnnotationLandmark++;
  if (buildCounterGoogleCloudVisionV1p3beta1FaceAnnotationLandmark < 3) {
    checkGoogleCloudVisionV1p3beta1Position(o.position);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1FaceAnnotationLandmark--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1GcsDestination = 0;
buildGoogleCloudVisionV1p3beta1GcsDestination() {
  var o = new api.GoogleCloudVisionV1p3beta1GcsDestination();
  buildCounterGoogleCloudVisionV1p3beta1GcsDestination++;
  if (buildCounterGoogleCloudVisionV1p3beta1GcsDestination < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1GcsDestination--;
  return o;
}

checkGoogleCloudVisionV1p3beta1GcsDestination(
    api.GoogleCloudVisionV1p3beta1GcsDestination o) {
  buildCounterGoogleCloudVisionV1p3beta1GcsDestination++;
  if (buildCounterGoogleCloudVisionV1p3beta1GcsDestination < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1GcsDestination--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1GcsSource = 0;
buildGoogleCloudVisionV1p3beta1GcsSource() {
  var o = new api.GoogleCloudVisionV1p3beta1GcsSource();
  buildCounterGoogleCloudVisionV1p3beta1GcsSource++;
  if (buildCounterGoogleCloudVisionV1p3beta1GcsSource < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1GcsSource--;
  return o;
}

checkGoogleCloudVisionV1p3beta1GcsSource(
    api.GoogleCloudVisionV1p3beta1GcsSource o) {
  buildCounterGoogleCloudVisionV1p3beta1GcsSource++;
  if (buildCounterGoogleCloudVisionV1p3beta1GcsSource < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1GcsSource--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1ImageAnnotationContext = 0;
buildGoogleCloudVisionV1p3beta1ImageAnnotationContext() {
  var o = new api.GoogleCloudVisionV1p3beta1ImageAnnotationContext();
  buildCounterGoogleCloudVisionV1p3beta1ImageAnnotationContext++;
  if (buildCounterGoogleCloudVisionV1p3beta1ImageAnnotationContext < 3) {
    o.pageNumber = 42;
    o.uri = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1ImageAnnotationContext--;
  return o;
}

checkGoogleCloudVisionV1p3beta1ImageAnnotationContext(
    api.GoogleCloudVisionV1p3beta1ImageAnnotationContext o) {
  buildCounterGoogleCloudVisionV1p3beta1ImageAnnotationContext++;
  if (buildCounterGoogleCloudVisionV1p3beta1ImageAnnotationContext < 3) {
    unittest.expect(o.pageNumber, unittest.equals(42));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1ImageAnnotationContext--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1ImageProperties = 0;
buildGoogleCloudVisionV1p3beta1ImageProperties() {
  var o = new api.GoogleCloudVisionV1p3beta1ImageProperties();
  buildCounterGoogleCloudVisionV1p3beta1ImageProperties++;
  if (buildCounterGoogleCloudVisionV1p3beta1ImageProperties < 3) {
    o.dominantColors =
        buildGoogleCloudVisionV1p3beta1DominantColorsAnnotation();
  }
  buildCounterGoogleCloudVisionV1p3beta1ImageProperties--;
  return o;
}

checkGoogleCloudVisionV1p3beta1ImageProperties(
    api.GoogleCloudVisionV1p3beta1ImageProperties o) {
  buildCounterGoogleCloudVisionV1p3beta1ImageProperties++;
  if (buildCounterGoogleCloudVisionV1p3beta1ImageProperties < 3) {
    checkGoogleCloudVisionV1p3beta1DominantColorsAnnotation(o.dominantColors);
  }
  buildCounterGoogleCloudVisionV1p3beta1ImageProperties--;
}

buildUnnamed4729() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1ReferenceImage>();
  o.add(buildGoogleCloudVisionV1p3beta1ReferenceImage());
  o.add(buildGoogleCloudVisionV1p3beta1ReferenceImage());
  return o;
}

checkUnnamed4729(core.List<api.GoogleCloudVisionV1p3beta1ReferenceImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1ReferenceImage(o[0]);
  checkGoogleCloudVisionV1p3beta1ReferenceImage(o[1]);
}

buildUnnamed4730() {
  var o = new core.List<api.Status>();
  o.add(buildStatus());
  o.add(buildStatus());
  return o;
}

checkUnnamed4730(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse = 0;
buildGoogleCloudVisionV1p3beta1ImportProductSetsResponse() {
  var o = new api.GoogleCloudVisionV1p3beta1ImportProductSetsResponse();
  buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse < 3) {
    o.referenceImages = buildUnnamed4729();
    o.statuses = buildUnnamed4730();
  }
  buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse--;
  return o;
}

checkGoogleCloudVisionV1p3beta1ImportProductSetsResponse(
    api.GoogleCloudVisionV1p3beta1ImportProductSetsResponse o) {
  buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse < 3) {
    checkUnnamed4729(o.referenceImages);
    checkUnnamed4730(o.statuses);
  }
  buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1InputConfig = 0;
buildGoogleCloudVisionV1p3beta1InputConfig() {
  var o = new api.GoogleCloudVisionV1p3beta1InputConfig();
  buildCounterGoogleCloudVisionV1p3beta1InputConfig++;
  if (buildCounterGoogleCloudVisionV1p3beta1InputConfig < 3) {
    o.gcsSource = buildGoogleCloudVisionV1p3beta1GcsSource();
    o.mimeType = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1InputConfig--;
  return o;
}

checkGoogleCloudVisionV1p3beta1InputConfig(
    api.GoogleCloudVisionV1p3beta1InputConfig o) {
  buildCounterGoogleCloudVisionV1p3beta1InputConfig++;
  if (buildCounterGoogleCloudVisionV1p3beta1InputConfig < 3) {
    checkGoogleCloudVisionV1p3beta1GcsSource(o.gcsSource);
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1InputConfig--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation = 0;
buildGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation() {
  var o = new api.GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation();
  buildCounterGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.languageCode = "foo";
    o.mid = "foo";
    o.name = "foo";
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation(
    api.GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation o) {
  buildCounterGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation < 3) {
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.mid, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1LocationInfo = 0;
buildGoogleCloudVisionV1p3beta1LocationInfo() {
  var o = new api.GoogleCloudVisionV1p3beta1LocationInfo();
  buildCounterGoogleCloudVisionV1p3beta1LocationInfo++;
  if (buildCounterGoogleCloudVisionV1p3beta1LocationInfo < 3) {
    o.latLng = buildLatLng();
  }
  buildCounterGoogleCloudVisionV1p3beta1LocationInfo--;
  return o;
}

checkGoogleCloudVisionV1p3beta1LocationInfo(
    api.GoogleCloudVisionV1p3beta1LocationInfo o) {
  buildCounterGoogleCloudVisionV1p3beta1LocationInfo++;
  if (buildCounterGoogleCloudVisionV1p3beta1LocationInfo < 3) {
    checkLatLng(o.latLng);
  }
  buildCounterGoogleCloudVisionV1p3beta1LocationInfo--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1NormalizedVertex = 0;
buildGoogleCloudVisionV1p3beta1NormalizedVertex() {
  var o = new api.GoogleCloudVisionV1p3beta1NormalizedVertex();
  buildCounterGoogleCloudVisionV1p3beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVisionV1p3beta1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudVisionV1p3beta1NormalizedVertex--;
  return o;
}

checkGoogleCloudVisionV1p3beta1NormalizedVertex(
    api.GoogleCloudVisionV1p3beta1NormalizedVertex o) {
  buildCounterGoogleCloudVisionV1p3beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVisionV1p3beta1NormalizedVertex < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p3beta1NormalizedVertex--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1OperationMetadata = 0;
buildGoogleCloudVisionV1p3beta1OperationMetadata() {
  var o = new api.GoogleCloudVisionV1p3beta1OperationMetadata();
  buildCounterGoogleCloudVisionV1p3beta1OperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p3beta1OperationMetadata < 3) {
    o.createTime = "foo";
    o.state = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1OperationMetadata--;
  return o;
}

checkGoogleCloudVisionV1p3beta1OperationMetadata(
    api.GoogleCloudVisionV1p3beta1OperationMetadata o) {
  buildCounterGoogleCloudVisionV1p3beta1OperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p3beta1OperationMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1OperationMetadata--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1OutputConfig = 0;
buildGoogleCloudVisionV1p3beta1OutputConfig() {
  var o = new api.GoogleCloudVisionV1p3beta1OutputConfig();
  buildCounterGoogleCloudVisionV1p3beta1OutputConfig++;
  if (buildCounterGoogleCloudVisionV1p3beta1OutputConfig < 3) {
    o.batchSize = 42;
    o.gcsDestination = buildGoogleCloudVisionV1p3beta1GcsDestination();
  }
  buildCounterGoogleCloudVisionV1p3beta1OutputConfig--;
  return o;
}

checkGoogleCloudVisionV1p3beta1OutputConfig(
    api.GoogleCloudVisionV1p3beta1OutputConfig o) {
  buildCounterGoogleCloudVisionV1p3beta1OutputConfig++;
  if (buildCounterGoogleCloudVisionV1p3beta1OutputConfig < 3) {
    unittest.expect(o.batchSize, unittest.equals(42));
    checkGoogleCloudVisionV1p3beta1GcsDestination(o.gcsDestination);
  }
  buildCounterGoogleCloudVisionV1p3beta1OutputConfig--;
}

buildUnnamed4731() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1Block>();
  o.add(buildGoogleCloudVisionV1p3beta1Block());
  o.add(buildGoogleCloudVisionV1p3beta1Block());
  return o;
}

checkUnnamed4731(core.List<api.GoogleCloudVisionV1p3beta1Block> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1Block(o[0]);
  checkGoogleCloudVisionV1p3beta1Block(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1Page = 0;
buildGoogleCloudVisionV1p3beta1Page() {
  var o = new api.GoogleCloudVisionV1p3beta1Page();
  buildCounterGoogleCloudVisionV1p3beta1Page++;
  if (buildCounterGoogleCloudVisionV1p3beta1Page < 3) {
    o.blocks = buildUnnamed4731();
    o.confidence = 42.0;
    o.height = 42;
    o.property = buildGoogleCloudVisionV1p3beta1TextAnnotationTextProperty();
    o.width = 42;
  }
  buildCounterGoogleCloudVisionV1p3beta1Page--;
  return o;
}

checkGoogleCloudVisionV1p3beta1Page(api.GoogleCloudVisionV1p3beta1Page o) {
  buildCounterGoogleCloudVisionV1p3beta1Page++;
  if (buildCounterGoogleCloudVisionV1p3beta1Page < 3) {
    checkUnnamed4731(o.blocks);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.height, unittest.equals(42));
    checkGoogleCloudVisionV1p3beta1TextAnnotationTextProperty(o.property);
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterGoogleCloudVisionV1p3beta1Page--;
}

buildUnnamed4732() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1Word>();
  o.add(buildGoogleCloudVisionV1p3beta1Word());
  o.add(buildGoogleCloudVisionV1p3beta1Word());
  return o;
}

checkUnnamed4732(core.List<api.GoogleCloudVisionV1p3beta1Word> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1Word(o[0]);
  checkGoogleCloudVisionV1p3beta1Word(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1Paragraph = 0;
buildGoogleCloudVisionV1p3beta1Paragraph() {
  var o = new api.GoogleCloudVisionV1p3beta1Paragraph();
  buildCounterGoogleCloudVisionV1p3beta1Paragraph++;
  if (buildCounterGoogleCloudVisionV1p3beta1Paragraph < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p3beta1TextAnnotationTextProperty();
    o.words = buildUnnamed4732();
  }
  buildCounterGoogleCloudVisionV1p3beta1Paragraph--;
  return o;
}

checkGoogleCloudVisionV1p3beta1Paragraph(
    api.GoogleCloudVisionV1p3beta1Paragraph o) {
  buildCounterGoogleCloudVisionV1p3beta1Paragraph++;
  if (buildCounterGoogleCloudVisionV1p3beta1Paragraph < 3) {
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVisionV1p3beta1TextAnnotationTextProperty(o.property);
    checkUnnamed4732(o.words);
  }
  buildCounterGoogleCloudVisionV1p3beta1Paragraph--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1Position = 0;
buildGoogleCloudVisionV1p3beta1Position() {
  var o = new api.GoogleCloudVisionV1p3beta1Position();
  buildCounterGoogleCloudVisionV1p3beta1Position++;
  if (buildCounterGoogleCloudVisionV1p3beta1Position < 3) {
    o.x = 42.0;
    o.y = 42.0;
    o.z = 42.0;
  }
  buildCounterGoogleCloudVisionV1p3beta1Position--;
  return o;
}

checkGoogleCloudVisionV1p3beta1Position(
    api.GoogleCloudVisionV1p3beta1Position o) {
  buildCounterGoogleCloudVisionV1p3beta1Position++;
  if (buildCounterGoogleCloudVisionV1p3beta1Position < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
    unittest.expect(o.z, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p3beta1Position--;
}

buildUnnamed4733() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1ProductKeyValue>();
  o.add(buildGoogleCloudVisionV1p3beta1ProductKeyValue());
  o.add(buildGoogleCloudVisionV1p3beta1ProductKeyValue());
  return o;
}

checkUnnamed4733(core.List<api.GoogleCloudVisionV1p3beta1ProductKeyValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1ProductKeyValue(o[0]);
  checkGoogleCloudVisionV1p3beta1ProductKeyValue(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1Product = 0;
buildGoogleCloudVisionV1p3beta1Product() {
  var o = new api.GoogleCloudVisionV1p3beta1Product();
  buildCounterGoogleCloudVisionV1p3beta1Product++;
  if (buildCounterGoogleCloudVisionV1p3beta1Product < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.name = "foo";
    o.productCategory = "foo";
    o.productLabels = buildUnnamed4733();
  }
  buildCounterGoogleCloudVisionV1p3beta1Product--;
  return o;
}

checkGoogleCloudVisionV1p3beta1Product(
    api.GoogleCloudVisionV1p3beta1Product o) {
  buildCounterGoogleCloudVisionV1p3beta1Product++;
  if (buildCounterGoogleCloudVisionV1p3beta1Product < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.productCategory, unittest.equals('foo'));
    checkUnnamed4733(o.productLabels);
  }
  buildCounterGoogleCloudVisionV1p3beta1Product--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1ProductKeyValue = 0;
buildGoogleCloudVisionV1p3beta1ProductKeyValue() {
  var o = new api.GoogleCloudVisionV1p3beta1ProductKeyValue();
  buildCounterGoogleCloudVisionV1p3beta1ProductKeyValue++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductKeyValue < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductKeyValue--;
  return o;
}

checkGoogleCloudVisionV1p3beta1ProductKeyValue(
    api.GoogleCloudVisionV1p3beta1ProductKeyValue o) {
  buildCounterGoogleCloudVisionV1p3beta1ProductKeyValue++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductKeyValue < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductKeyValue--;
}

buildUnnamed4734() {
  var o =
      new core.List<api.GoogleCloudVisionV1p3beta1ProductSearchResultsResult>();
  o.add(buildGoogleCloudVisionV1p3beta1ProductSearchResultsResult());
  o.add(buildGoogleCloudVisionV1p3beta1ProductSearchResultsResult());
  return o;
}

checkUnnamed4734(
    core.List<api.GoogleCloudVisionV1p3beta1ProductSearchResultsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1ProductSearchResultsResult(o[0]);
  checkGoogleCloudVisionV1p3beta1ProductSearchResultsResult(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1ProductSearchResults = 0;
buildGoogleCloudVisionV1p3beta1ProductSearchResults() {
  var o = new api.GoogleCloudVisionV1p3beta1ProductSearchResults();
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResults++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductSearchResults < 3) {
    o.indexTime = "foo";
    o.results = buildUnnamed4734();
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResults--;
  return o;
}

checkGoogleCloudVisionV1p3beta1ProductSearchResults(
    api.GoogleCloudVisionV1p3beta1ProductSearchResults o) {
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResults++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductSearchResults < 3) {
    unittest.expect(o.indexTime, unittest.equals('foo'));
    checkUnnamed4734(o.results);
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResults--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsResult = 0;
buildGoogleCloudVisionV1p3beta1ProductSearchResultsResult() {
  var o = new api.GoogleCloudVisionV1p3beta1ProductSearchResultsResult();
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsResult++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsResult < 3) {
    o.image = "foo";
    o.product = buildGoogleCloudVisionV1p3beta1Product();
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsResult--;
  return o;
}

checkGoogleCloudVisionV1p3beta1ProductSearchResultsResult(
    api.GoogleCloudVisionV1p3beta1ProductSearchResultsResult o) {
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsResult++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsResult < 3) {
    unittest.expect(o.image, unittest.equals('foo'));
    checkGoogleCloudVisionV1p3beta1Product(o.product);
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsResult--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1Property = 0;
buildGoogleCloudVisionV1p3beta1Property() {
  var o = new api.GoogleCloudVisionV1p3beta1Property();
  buildCounterGoogleCloudVisionV1p3beta1Property++;
  if (buildCounterGoogleCloudVisionV1p3beta1Property < 3) {
    o.name = "foo";
    o.uint64Value = "foo";
    o.value = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1Property--;
  return o;
}

checkGoogleCloudVisionV1p3beta1Property(
    api.GoogleCloudVisionV1p3beta1Property o) {
  buildCounterGoogleCloudVisionV1p3beta1Property++;
  if (buildCounterGoogleCloudVisionV1p3beta1Property < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.uint64Value, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1Property--;
}

buildUnnamed4735() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1BoundingPoly>();
  o.add(buildGoogleCloudVisionV1p3beta1BoundingPoly());
  o.add(buildGoogleCloudVisionV1p3beta1BoundingPoly());
  return o;
}

checkUnnamed4735(core.List<api.GoogleCloudVisionV1p3beta1BoundingPoly> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1BoundingPoly(o[0]);
  checkGoogleCloudVisionV1p3beta1BoundingPoly(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1ReferenceImage = 0;
buildGoogleCloudVisionV1p3beta1ReferenceImage() {
  var o = new api.GoogleCloudVisionV1p3beta1ReferenceImage();
  buildCounterGoogleCloudVisionV1p3beta1ReferenceImage++;
  if (buildCounterGoogleCloudVisionV1p3beta1ReferenceImage < 3) {
    o.boundingPolys = buildUnnamed4735();
    o.name = "foo";
    o.uri = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1ReferenceImage--;
  return o;
}

checkGoogleCloudVisionV1p3beta1ReferenceImage(
    api.GoogleCloudVisionV1p3beta1ReferenceImage o) {
  buildCounterGoogleCloudVisionV1p3beta1ReferenceImage++;
  if (buildCounterGoogleCloudVisionV1p3beta1ReferenceImage < 3) {
    checkUnnamed4735(o.boundingPolys);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1ReferenceImage--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1SafeSearchAnnotation = 0;
buildGoogleCloudVisionV1p3beta1SafeSearchAnnotation() {
  var o = new api.GoogleCloudVisionV1p3beta1SafeSearchAnnotation();
  buildCounterGoogleCloudVisionV1p3beta1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1SafeSearchAnnotation < 3) {
    o.adult = "foo";
    o.medical = "foo";
    o.racy = "foo";
    o.spoof = "foo";
    o.violence = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1SafeSearchAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p3beta1SafeSearchAnnotation(
    api.GoogleCloudVisionV1p3beta1SafeSearchAnnotation o) {
  buildCounterGoogleCloudVisionV1p3beta1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1SafeSearchAnnotation < 3) {
    unittest.expect(o.adult, unittest.equals('foo'));
    unittest.expect(o.medical, unittest.equals('foo'));
    unittest.expect(o.racy, unittest.equals('foo'));
    unittest.expect(o.spoof, unittest.equals('foo'));
    unittest.expect(o.violence, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1SafeSearchAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1Symbol = 0;
buildGoogleCloudVisionV1p3beta1Symbol() {
  var o = new api.GoogleCloudVisionV1p3beta1Symbol();
  buildCounterGoogleCloudVisionV1p3beta1Symbol++;
  if (buildCounterGoogleCloudVisionV1p3beta1Symbol < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p3beta1TextAnnotationTextProperty();
    o.text = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1Symbol--;
  return o;
}

checkGoogleCloudVisionV1p3beta1Symbol(api.GoogleCloudVisionV1p3beta1Symbol o) {
  buildCounterGoogleCloudVisionV1p3beta1Symbol++;
  if (buildCounterGoogleCloudVisionV1p3beta1Symbol < 3) {
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVisionV1p3beta1TextAnnotationTextProperty(o.property);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1Symbol--;
}

buildUnnamed4736() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1Page>();
  o.add(buildGoogleCloudVisionV1p3beta1Page());
  o.add(buildGoogleCloudVisionV1p3beta1Page());
  return o;
}

checkUnnamed4736(core.List<api.GoogleCloudVisionV1p3beta1Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1Page(o[0]);
  checkGoogleCloudVisionV1p3beta1Page(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1TextAnnotation = 0;
buildGoogleCloudVisionV1p3beta1TextAnnotation() {
  var o = new api.GoogleCloudVisionV1p3beta1TextAnnotation();
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1TextAnnotation < 3) {
    o.pages = buildUnnamed4736();
    o.text = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p3beta1TextAnnotation(
    api.GoogleCloudVisionV1p3beta1TextAnnotation o) {
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1TextAnnotation < 3) {
    checkUnnamed4736(o.pages);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak = 0;
buildGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak() {
  var o = new api.GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak();
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak++;
  if (buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak < 3) {
    o.isPrefix = true;
    o.type = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak--;
  return o;
}

checkGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak(
    api.GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak o) {
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak++;
  if (buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak < 3) {
    unittest.expect(o.isPrefix, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage =
    0;
buildGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage() {
  var o = new api.GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage();
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage++;
  if (buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage <
      3) {
    o.confidence = 42.0;
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage--;
  return o;
}

checkGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage(
    api.GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage o) {
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage++;
  if (buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage <
      3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage--;
}

buildUnnamed4737() {
  var o = new core
      .List<api.GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage>();
  o.add(buildGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage());
  o.add(buildGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage());
  return o;
}

checkUnnamed4737(
    core.List<api.GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage(o[0]);
  checkGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1TextAnnotationTextProperty = 0;
buildGoogleCloudVisionV1p3beta1TextAnnotationTextProperty() {
  var o = new api.GoogleCloudVisionV1p3beta1TextAnnotationTextProperty();
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p3beta1TextAnnotationTextProperty < 3) {
    o.detectedBreak =
        buildGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak();
    o.detectedLanguages = buildUnnamed4737();
  }
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationTextProperty--;
  return o;
}

checkGoogleCloudVisionV1p3beta1TextAnnotationTextProperty(
    api.GoogleCloudVisionV1p3beta1TextAnnotationTextProperty o) {
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p3beta1TextAnnotationTextProperty < 3) {
    checkGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak(o.detectedBreak);
    checkUnnamed4737(o.detectedLanguages);
  }
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationTextProperty--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1Vertex = 0;
buildGoogleCloudVisionV1p3beta1Vertex() {
  var o = new api.GoogleCloudVisionV1p3beta1Vertex();
  buildCounterGoogleCloudVisionV1p3beta1Vertex++;
  if (buildCounterGoogleCloudVisionV1p3beta1Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudVisionV1p3beta1Vertex--;
  return o;
}

checkGoogleCloudVisionV1p3beta1Vertex(api.GoogleCloudVisionV1p3beta1Vertex o) {
  buildCounterGoogleCloudVisionV1p3beta1Vertex++;
  if (buildCounterGoogleCloudVisionV1p3beta1Vertex < 3) {
    unittest.expect(o.x, unittest.equals(42));
    unittest.expect(o.y, unittest.equals(42));
  }
  buildCounterGoogleCloudVisionV1p3beta1Vertex--;
}

buildUnnamed4738() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebLabel>();
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebLabel());
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebLabel());
  return o;
}

checkUnnamed4738(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebLabel(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebLabel(o[1]);
}

buildUnnamed4739() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  return o;
}

checkUnnamed4739(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[1]);
}

buildUnnamed4740() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebPage>();
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebPage());
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebPage());
  return o;
}

checkUnnamed4740(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebPage(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebPage(o[1]);
}

buildUnnamed4741() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  return o;
}

checkUnnamed4741(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[1]);
}

buildUnnamed4742() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  return o;
}

checkUnnamed4742(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[1]);
}

buildUnnamed4743() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebEntity>();
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebEntity());
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebEntity());
  return o;
}

checkUnnamed4743(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebEntity(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebEntity(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1WebDetection = 0;
buildGoogleCloudVisionV1p3beta1WebDetection() {
  var o = new api.GoogleCloudVisionV1p3beta1WebDetection();
  buildCounterGoogleCloudVisionV1p3beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetection < 3) {
    o.bestGuessLabels = buildUnnamed4738();
    o.fullMatchingImages = buildUnnamed4739();
    o.pagesWithMatchingImages = buildUnnamed4740();
    o.partialMatchingImages = buildUnnamed4741();
    o.visuallySimilarImages = buildUnnamed4742();
    o.webEntities = buildUnnamed4743();
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetection--;
  return o;
}

checkGoogleCloudVisionV1p3beta1WebDetection(
    api.GoogleCloudVisionV1p3beta1WebDetection o) {
  buildCounterGoogleCloudVisionV1p3beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetection < 3) {
    checkUnnamed4738(o.bestGuessLabels);
    checkUnnamed4739(o.fullMatchingImages);
    checkUnnamed4740(o.pagesWithMatchingImages);
    checkUnnamed4741(o.partialMatchingImages);
    checkUnnamed4742(o.visuallySimilarImages);
    checkUnnamed4743(o.webEntities);
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetection--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebEntity = 0;
buildGoogleCloudVisionV1p3beta1WebDetectionWebEntity() {
  var o = new api.GoogleCloudVisionV1p3beta1WebDetectionWebEntity();
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebEntity++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebEntity < 3) {
    o.description = "foo";
    o.entityId = "foo";
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebEntity--;
  return o;
}

checkGoogleCloudVisionV1p3beta1WebDetectionWebEntity(
    api.GoogleCloudVisionV1p3beta1WebDetectionWebEntity o) {
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebEntity++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebEntity < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.entityId, unittest.equals('foo'));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebEntity--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebImage = 0;
buildGoogleCloudVisionV1p3beta1WebDetectionWebImage() {
  var o = new api.GoogleCloudVisionV1p3beta1WebDetectionWebImage();
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebImage++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebImage < 3) {
    o.score = 42.0;
    o.url = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebImage--;
  return o;
}

checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(
    api.GoogleCloudVisionV1p3beta1WebDetectionWebImage o) {
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebImage++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebImage < 3) {
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebImage--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebLabel = 0;
buildGoogleCloudVisionV1p3beta1WebDetectionWebLabel() {
  var o = new api.GoogleCloudVisionV1p3beta1WebDetectionWebLabel();
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebLabel++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebLabel < 3) {
    o.label = "foo";
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebLabel--;
  return o;
}

checkGoogleCloudVisionV1p3beta1WebDetectionWebLabel(
    api.GoogleCloudVisionV1p3beta1WebDetectionWebLabel o) {
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebLabel++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebLabel < 3) {
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebLabel--;
}

buildUnnamed4744() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  return o;
}

checkUnnamed4744(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[1]);
}

buildUnnamed4745() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  return o;
}

checkUnnamed4745(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebPage = 0;
buildGoogleCloudVisionV1p3beta1WebDetectionWebPage() {
  var o = new api.GoogleCloudVisionV1p3beta1WebDetectionWebPage();
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebPage++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebPage < 3) {
    o.fullMatchingImages = buildUnnamed4744();
    o.pageTitle = "foo";
    o.partialMatchingImages = buildUnnamed4745();
    o.score = 42.0;
    o.url = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebPage--;
  return o;
}

checkGoogleCloudVisionV1p3beta1WebDetectionWebPage(
    api.GoogleCloudVisionV1p3beta1WebDetectionWebPage o) {
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebPage++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebPage < 3) {
    checkUnnamed4744(o.fullMatchingImages);
    unittest.expect(o.pageTitle, unittest.equals('foo'));
    checkUnnamed4745(o.partialMatchingImages);
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebPage--;
}

buildUnnamed4746() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1Symbol>();
  o.add(buildGoogleCloudVisionV1p3beta1Symbol());
  o.add(buildGoogleCloudVisionV1p3beta1Symbol());
  return o;
}

checkUnnamed4746(core.List<api.GoogleCloudVisionV1p3beta1Symbol> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1Symbol(o[0]);
  checkGoogleCloudVisionV1p3beta1Symbol(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1Word = 0;
buildGoogleCloudVisionV1p3beta1Word() {
  var o = new api.GoogleCloudVisionV1p3beta1Word();
  buildCounterGoogleCloudVisionV1p3beta1Word++;
  if (buildCounterGoogleCloudVisionV1p3beta1Word < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p3beta1TextAnnotationTextProperty();
    o.symbols = buildUnnamed4746();
  }
  buildCounterGoogleCloudVisionV1p3beta1Word--;
  return o;
}

checkGoogleCloudVisionV1p3beta1Word(api.GoogleCloudVisionV1p3beta1Word o) {
  buildCounterGoogleCloudVisionV1p3beta1Word++;
  if (buildCounterGoogleCloudVisionV1p3beta1Word < 3) {
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVisionV1p3beta1TextAnnotationTextProperty(o.property);
    checkUnnamed4746(o.symbols);
  }
  buildCounterGoogleCloudVisionV1p3beta1Word--;
}

core.int buildCounterImage = 0;
buildImage() {
  var o = new api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.content = "foo";
    o.source = buildImageSource();
  }
  buildCounterImage--;
  return o;
}

checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    checkImageSource(o.source);
  }
  buildCounterImage--;
}

core.int buildCounterImageAnnotationContext = 0;
buildImageAnnotationContext() {
  var o = new api.ImageAnnotationContext();
  buildCounterImageAnnotationContext++;
  if (buildCounterImageAnnotationContext < 3) {
    o.pageNumber = 42;
    o.uri = "foo";
  }
  buildCounterImageAnnotationContext--;
  return o;
}

checkImageAnnotationContext(api.ImageAnnotationContext o) {
  buildCounterImageAnnotationContext++;
  if (buildCounterImageAnnotationContext < 3) {
    unittest.expect(o.pageNumber, unittest.equals(42));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterImageAnnotationContext--;
}

buildUnnamed4747() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4747(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterImageContext = 0;
buildImageContext() {
  var o = new api.ImageContext();
  buildCounterImageContext++;
  if (buildCounterImageContext < 3) {
    o.cropHintsParams = buildCropHintsParams();
    o.languageHints = buildUnnamed4747();
    o.latLongRect = buildLatLongRect();
    o.webDetectionParams = buildWebDetectionParams();
  }
  buildCounterImageContext--;
  return o;
}

checkImageContext(api.ImageContext o) {
  buildCounterImageContext++;
  if (buildCounterImageContext < 3) {
    checkCropHintsParams(o.cropHintsParams);
    checkUnnamed4747(o.languageHints);
    checkLatLongRect(o.latLongRect);
    checkWebDetectionParams(o.webDetectionParams);
  }
  buildCounterImageContext--;
}

core.int buildCounterImageProperties = 0;
buildImageProperties() {
  var o = new api.ImageProperties();
  buildCounterImageProperties++;
  if (buildCounterImageProperties < 3) {
    o.dominantColors = buildDominantColorsAnnotation();
  }
  buildCounterImageProperties--;
  return o;
}

checkImageProperties(api.ImageProperties o) {
  buildCounterImageProperties++;
  if (buildCounterImageProperties < 3) {
    checkDominantColorsAnnotation(o.dominantColors);
  }
  buildCounterImageProperties--;
}

core.int buildCounterImageSource = 0;
buildImageSource() {
  var o = new api.ImageSource();
  buildCounterImageSource++;
  if (buildCounterImageSource < 3) {
    o.gcsImageUri = "foo";
    o.imageUri = "foo";
  }
  buildCounterImageSource--;
  return o;
}

checkImageSource(api.ImageSource o) {
  buildCounterImageSource++;
  if (buildCounterImageSource < 3) {
    unittest.expect(o.gcsImageUri, unittest.equals('foo'));
    unittest.expect(o.imageUri, unittest.equals('foo'));
  }
  buildCounterImageSource--;
}

core.int buildCounterInputConfig = 0;
buildInputConfig() {
  var o = new api.InputConfig();
  buildCounterInputConfig++;
  if (buildCounterInputConfig < 3) {
    o.gcsSource = buildGcsSource();
    o.mimeType = "foo";
  }
  buildCounterInputConfig--;
  return o;
}

checkInputConfig(api.InputConfig o) {
  buildCounterInputConfig++;
  if (buildCounterInputConfig < 3) {
    checkGcsSource(o.gcsSource);
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterInputConfig--;
}

core.int buildCounterLandmark = 0;
buildLandmark() {
  var o = new api.Landmark();
  buildCounterLandmark++;
  if (buildCounterLandmark < 3) {
    o.position = buildPosition();
    o.type = "foo";
  }
  buildCounterLandmark--;
  return o;
}

checkLandmark(api.Landmark o) {
  buildCounterLandmark++;
  if (buildCounterLandmark < 3) {
    checkPosition(o.position);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterLandmark--;
}

core.int buildCounterLatLng = 0;
buildLatLng() {
  var o = new api.LatLng();
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterLatLng--;
  return o;
}

checkLatLng(api.LatLng o) {
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterLatLng--;
}

core.int buildCounterLatLongRect = 0;
buildLatLongRect() {
  var o = new api.LatLongRect();
  buildCounterLatLongRect++;
  if (buildCounterLatLongRect < 3) {
    o.maxLatLng = buildLatLng();
    o.minLatLng = buildLatLng();
  }
  buildCounterLatLongRect--;
  return o;
}

checkLatLongRect(api.LatLongRect o) {
  buildCounterLatLongRect++;
  if (buildCounterLatLongRect < 3) {
    checkLatLng(o.maxLatLng);
    checkLatLng(o.minLatLng);
  }
  buildCounterLatLongRect--;
}

buildUnnamed4748() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed4748(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
buildListOperationsResponse() {
  var o = new api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed4748();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4748(o.operations);
  }
  buildCounterListOperationsResponse--;
}

core.int buildCounterLocationInfo = 0;
buildLocationInfo() {
  var o = new api.LocationInfo();
  buildCounterLocationInfo++;
  if (buildCounterLocationInfo < 3) {
    o.latLng = buildLatLng();
  }
  buildCounterLocationInfo--;
  return o;
}

checkLocationInfo(api.LocationInfo o) {
  buildCounterLocationInfo++;
  if (buildCounterLocationInfo < 3) {
    checkLatLng(o.latLng);
  }
  buildCounterLocationInfo--;
}

core.int buildCounterNormalizedVertex = 0;
buildNormalizedVertex() {
  var o = new api.NormalizedVertex();
  buildCounterNormalizedVertex++;
  if (buildCounterNormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterNormalizedVertex--;
  return o;
}

checkNormalizedVertex(api.NormalizedVertex o) {
  buildCounterNormalizedVertex++;
  if (buildCounterNormalizedVertex < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
  }
  buildCounterNormalizedVertex--;
}

buildUnnamed4749() {
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

checkUnnamed4749(core.Map<core.String, core.Object> o) {
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

buildUnnamed4750() {
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

checkUnnamed4750(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed4749();
    o.name = "foo";
    o.response = buildUnnamed4750();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed4749(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4750(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationMetadata = 0;
buildOperationMetadata() {
  var o = new api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.createTime = "foo";
    o.state = "foo";
    o.updateTime = "foo";
  }
  buildCounterOperationMetadata--;
  return o;
}

checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterOperationMetadata--;
}

core.int buildCounterOutputConfig = 0;
buildOutputConfig() {
  var o = new api.OutputConfig();
  buildCounterOutputConfig++;
  if (buildCounterOutputConfig < 3) {
    o.batchSize = 42;
    o.gcsDestination = buildGcsDestination();
  }
  buildCounterOutputConfig--;
  return o;
}

checkOutputConfig(api.OutputConfig o) {
  buildCounterOutputConfig++;
  if (buildCounterOutputConfig < 3) {
    unittest.expect(o.batchSize, unittest.equals(42));
    checkGcsDestination(o.gcsDestination);
  }
  buildCounterOutputConfig--;
}

buildUnnamed4751() {
  var o = new core.List<api.Block>();
  o.add(buildBlock());
  o.add(buildBlock());
  return o;
}

checkUnnamed4751(core.List<api.Block> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBlock(o[0]);
  checkBlock(o[1]);
}

core.int buildCounterPage = 0;
buildPage() {
  var o = new api.Page();
  buildCounterPage++;
  if (buildCounterPage < 3) {
    o.blocks = buildUnnamed4751();
    o.confidence = 42.0;
    o.height = 42;
    o.property = buildTextProperty();
    o.width = 42;
  }
  buildCounterPage--;
  return o;
}

checkPage(api.Page o) {
  buildCounterPage++;
  if (buildCounterPage < 3) {
    checkUnnamed4751(o.blocks);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.height, unittest.equals(42));
    checkTextProperty(o.property);
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterPage--;
}

buildUnnamed4752() {
  var o = new core.List<api.Word>();
  o.add(buildWord());
  o.add(buildWord());
  return o;
}

checkUnnamed4752(core.List<api.Word> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWord(o[0]);
  checkWord(o[1]);
}

core.int buildCounterParagraph = 0;
buildParagraph() {
  var o = new api.Paragraph();
  buildCounterParagraph++;
  if (buildCounterParagraph < 3) {
    o.boundingBox = buildBoundingPoly();
    o.confidence = 42.0;
    o.property = buildTextProperty();
    o.words = buildUnnamed4752();
  }
  buildCounterParagraph--;
  return o;
}

checkParagraph(api.Paragraph o) {
  buildCounterParagraph++;
  if (buildCounterParagraph < 3) {
    checkBoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkTextProperty(o.property);
    checkUnnamed4752(o.words);
  }
  buildCounterParagraph--;
}

core.int buildCounterPosition = 0;
buildPosition() {
  var o = new api.Position();
  buildCounterPosition++;
  if (buildCounterPosition < 3) {
    o.x = 42.0;
    o.y = 42.0;
    o.z = 42.0;
  }
  buildCounterPosition--;
  return o;
}

checkPosition(api.Position o) {
  buildCounterPosition++;
  if (buildCounterPosition < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
    unittest.expect(o.z, unittest.equals(42.0));
  }
  buildCounterPosition--;
}

core.int buildCounterProperty = 0;
buildProperty() {
  var o = new api.Property();
  buildCounterProperty++;
  if (buildCounterProperty < 3) {
    o.name = "foo";
    o.uint64Value = "foo";
    o.value = "foo";
  }
  buildCounterProperty--;
  return o;
}

checkProperty(api.Property o) {
  buildCounterProperty++;
  if (buildCounterProperty < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.uint64Value, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterProperty--;
}

core.int buildCounterSafeSearchAnnotation = 0;
buildSafeSearchAnnotation() {
  var o = new api.SafeSearchAnnotation();
  buildCounterSafeSearchAnnotation++;
  if (buildCounterSafeSearchAnnotation < 3) {
    o.adult = "foo";
    o.medical = "foo";
    o.racy = "foo";
    o.spoof = "foo";
    o.violence = "foo";
  }
  buildCounterSafeSearchAnnotation--;
  return o;
}

checkSafeSearchAnnotation(api.SafeSearchAnnotation o) {
  buildCounterSafeSearchAnnotation++;
  if (buildCounterSafeSearchAnnotation < 3) {
    unittest.expect(o.adult, unittest.equals('foo'));
    unittest.expect(o.medical, unittest.equals('foo'));
    unittest.expect(o.racy, unittest.equals('foo'));
    unittest.expect(o.spoof, unittest.equals('foo'));
    unittest.expect(o.violence, unittest.equals('foo'));
  }
  buildCounterSafeSearchAnnotation--;
}

buildUnnamed4753() {
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

checkUnnamed4753(core.Map<core.String, core.Object> o) {
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

buildUnnamed4754() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed4753());
  o.add(buildUnnamed4753());
  return o;
}

checkUnnamed4754(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4753(o[0]);
  checkUnnamed4753(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4754();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed4754(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterSymbol = 0;
buildSymbol() {
  var o = new api.Symbol();
  buildCounterSymbol++;
  if (buildCounterSymbol < 3) {
    o.boundingBox = buildBoundingPoly();
    o.confidence = 42.0;
    o.property = buildTextProperty();
    o.text = "foo";
  }
  buildCounterSymbol--;
  return o;
}

checkSymbol(api.Symbol o) {
  buildCounterSymbol++;
  if (buildCounterSymbol < 3) {
    checkBoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkTextProperty(o.property);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterSymbol--;
}

buildUnnamed4755() {
  var o = new core.List<api.Page>();
  o.add(buildPage());
  o.add(buildPage());
  return o;
}

checkUnnamed4755(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0]);
  checkPage(o[1]);
}

core.int buildCounterTextAnnotation = 0;
buildTextAnnotation() {
  var o = new api.TextAnnotation();
  buildCounterTextAnnotation++;
  if (buildCounterTextAnnotation < 3) {
    o.pages = buildUnnamed4755();
    o.text = "foo";
  }
  buildCounterTextAnnotation--;
  return o;
}

checkTextAnnotation(api.TextAnnotation o) {
  buildCounterTextAnnotation++;
  if (buildCounterTextAnnotation < 3) {
    checkUnnamed4755(o.pages);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterTextAnnotation--;
}

buildUnnamed4756() {
  var o = new core.List<api.DetectedLanguage>();
  o.add(buildDetectedLanguage());
  o.add(buildDetectedLanguage());
  return o;
}

checkUnnamed4756(core.List<api.DetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetectedLanguage(o[0]);
  checkDetectedLanguage(o[1]);
}

core.int buildCounterTextProperty = 0;
buildTextProperty() {
  var o = new api.TextProperty();
  buildCounterTextProperty++;
  if (buildCounterTextProperty < 3) {
    o.detectedBreak = buildDetectedBreak();
    o.detectedLanguages = buildUnnamed4756();
  }
  buildCounterTextProperty--;
  return o;
}

checkTextProperty(api.TextProperty o) {
  buildCounterTextProperty++;
  if (buildCounterTextProperty < 3) {
    checkDetectedBreak(o.detectedBreak);
    checkUnnamed4756(o.detectedLanguages);
  }
  buildCounterTextProperty--;
}

core.int buildCounterVertex = 0;
buildVertex() {
  var o = new api.Vertex();
  buildCounterVertex++;
  if (buildCounterVertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterVertex--;
  return o;
}

checkVertex(api.Vertex o) {
  buildCounterVertex++;
  if (buildCounterVertex < 3) {
    unittest.expect(o.x, unittest.equals(42));
    unittest.expect(o.y, unittest.equals(42));
  }
  buildCounterVertex--;
}

buildUnnamed4757() {
  var o = new core.List<api.WebLabel>();
  o.add(buildWebLabel());
  o.add(buildWebLabel());
  return o;
}

checkUnnamed4757(core.List<api.WebLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebLabel(o[0]);
  checkWebLabel(o[1]);
}

buildUnnamed4758() {
  var o = new core.List<api.WebImage>();
  o.add(buildWebImage());
  o.add(buildWebImage());
  return o;
}

checkUnnamed4758(core.List<api.WebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebImage(o[0]);
  checkWebImage(o[1]);
}

buildUnnamed4759() {
  var o = new core.List<api.WebPage>();
  o.add(buildWebPage());
  o.add(buildWebPage());
  return o;
}

checkUnnamed4759(core.List<api.WebPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebPage(o[0]);
  checkWebPage(o[1]);
}

buildUnnamed4760() {
  var o = new core.List<api.WebImage>();
  o.add(buildWebImage());
  o.add(buildWebImage());
  return o;
}

checkUnnamed4760(core.List<api.WebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebImage(o[0]);
  checkWebImage(o[1]);
}

buildUnnamed4761() {
  var o = new core.List<api.WebImage>();
  o.add(buildWebImage());
  o.add(buildWebImage());
  return o;
}

checkUnnamed4761(core.List<api.WebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebImage(o[0]);
  checkWebImage(o[1]);
}

buildUnnamed4762() {
  var o = new core.List<api.WebEntity>();
  o.add(buildWebEntity());
  o.add(buildWebEntity());
  return o;
}

checkUnnamed4762(core.List<api.WebEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebEntity(o[0]);
  checkWebEntity(o[1]);
}

core.int buildCounterWebDetection = 0;
buildWebDetection() {
  var o = new api.WebDetection();
  buildCounterWebDetection++;
  if (buildCounterWebDetection < 3) {
    o.bestGuessLabels = buildUnnamed4757();
    o.fullMatchingImages = buildUnnamed4758();
    o.pagesWithMatchingImages = buildUnnamed4759();
    o.partialMatchingImages = buildUnnamed4760();
    o.visuallySimilarImages = buildUnnamed4761();
    o.webEntities = buildUnnamed4762();
  }
  buildCounterWebDetection--;
  return o;
}

checkWebDetection(api.WebDetection o) {
  buildCounterWebDetection++;
  if (buildCounterWebDetection < 3) {
    checkUnnamed4757(o.bestGuessLabels);
    checkUnnamed4758(o.fullMatchingImages);
    checkUnnamed4759(o.pagesWithMatchingImages);
    checkUnnamed4760(o.partialMatchingImages);
    checkUnnamed4761(o.visuallySimilarImages);
    checkUnnamed4762(o.webEntities);
  }
  buildCounterWebDetection--;
}

core.int buildCounterWebDetectionParams = 0;
buildWebDetectionParams() {
  var o = new api.WebDetectionParams();
  buildCounterWebDetectionParams++;
  if (buildCounterWebDetectionParams < 3) {
    o.includeGeoResults = true;
  }
  buildCounterWebDetectionParams--;
  return o;
}

checkWebDetectionParams(api.WebDetectionParams o) {
  buildCounterWebDetectionParams++;
  if (buildCounterWebDetectionParams < 3) {
    unittest.expect(o.includeGeoResults, unittest.isTrue);
  }
  buildCounterWebDetectionParams--;
}

core.int buildCounterWebEntity = 0;
buildWebEntity() {
  var o = new api.WebEntity();
  buildCounterWebEntity++;
  if (buildCounterWebEntity < 3) {
    o.description = "foo";
    o.entityId = "foo";
    o.score = 42.0;
  }
  buildCounterWebEntity--;
  return o;
}

checkWebEntity(api.WebEntity o) {
  buildCounterWebEntity++;
  if (buildCounterWebEntity < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.entityId, unittest.equals('foo'));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterWebEntity--;
}

core.int buildCounterWebImage = 0;
buildWebImage() {
  var o = new api.WebImage();
  buildCounterWebImage++;
  if (buildCounterWebImage < 3) {
    o.score = 42.0;
    o.url = "foo";
  }
  buildCounterWebImage--;
  return o;
}

checkWebImage(api.WebImage o) {
  buildCounterWebImage++;
  if (buildCounterWebImage < 3) {
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterWebImage--;
}

core.int buildCounterWebLabel = 0;
buildWebLabel() {
  var o = new api.WebLabel();
  buildCounterWebLabel++;
  if (buildCounterWebLabel < 3) {
    o.label = "foo";
    o.languageCode = "foo";
  }
  buildCounterWebLabel--;
  return o;
}

checkWebLabel(api.WebLabel o) {
  buildCounterWebLabel++;
  if (buildCounterWebLabel < 3) {
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterWebLabel--;
}

buildUnnamed4763() {
  var o = new core.List<api.WebImage>();
  o.add(buildWebImage());
  o.add(buildWebImage());
  return o;
}

checkUnnamed4763(core.List<api.WebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebImage(o[0]);
  checkWebImage(o[1]);
}

buildUnnamed4764() {
  var o = new core.List<api.WebImage>();
  o.add(buildWebImage());
  o.add(buildWebImage());
  return o;
}

checkUnnamed4764(core.List<api.WebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebImage(o[0]);
  checkWebImage(o[1]);
}

core.int buildCounterWebPage = 0;
buildWebPage() {
  var o = new api.WebPage();
  buildCounterWebPage++;
  if (buildCounterWebPage < 3) {
    o.fullMatchingImages = buildUnnamed4763();
    o.pageTitle = "foo";
    o.partialMatchingImages = buildUnnamed4764();
    o.score = 42.0;
    o.url = "foo";
  }
  buildCounterWebPage--;
  return o;
}

checkWebPage(api.WebPage o) {
  buildCounterWebPage++;
  if (buildCounterWebPage < 3) {
    checkUnnamed4763(o.fullMatchingImages);
    unittest.expect(o.pageTitle, unittest.equals('foo'));
    checkUnnamed4764(o.partialMatchingImages);
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterWebPage--;
}

buildUnnamed4765() {
  var o = new core.List<api.Symbol>();
  o.add(buildSymbol());
  o.add(buildSymbol());
  return o;
}

checkUnnamed4765(core.List<api.Symbol> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSymbol(o[0]);
  checkSymbol(o[1]);
}

core.int buildCounterWord = 0;
buildWord() {
  var o = new api.Word();
  buildCounterWord++;
  if (buildCounterWord < 3) {
    o.boundingBox = buildBoundingPoly();
    o.confidence = 42.0;
    o.property = buildTextProperty();
    o.symbols = buildUnnamed4765();
  }
  buildCounterWord--;
  return o;
}

checkWord(api.Word o) {
  buildCounterWord++;
  if (buildCounterWord < 3) {
    checkBoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkTextProperty(o.property);
    checkUnnamed4765(o.symbols);
  }
  buildCounterWord--;
}

main() {
  unittest.group("obj-schema-AnnotateFileResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnnotateFileResponse();
      var od = new api.AnnotateFileResponse.fromJson(o.toJson());
      checkAnnotateFileResponse(od);
    });
  });

  unittest.group("obj-schema-AnnotateImageRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnnotateImageRequest();
      var od = new api.AnnotateImageRequest.fromJson(o.toJson());
      checkAnnotateImageRequest(od);
    });
  });

  unittest.group("obj-schema-AnnotateImageResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnnotateImageResponse();
      var od = new api.AnnotateImageResponse.fromJson(o.toJson());
      checkAnnotateImageResponse(od);
    });
  });

  unittest.group("obj-schema-AsyncAnnotateFileRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsyncAnnotateFileRequest();
      var od = new api.AsyncAnnotateFileRequest.fromJson(o.toJson());
      checkAsyncAnnotateFileRequest(od);
    });
  });

  unittest.group("obj-schema-AsyncAnnotateFileResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsyncAnnotateFileResponse();
      var od = new api.AsyncAnnotateFileResponse.fromJson(o.toJson());
      checkAsyncAnnotateFileResponse(od);
    });
  });

  unittest.group("obj-schema-AsyncBatchAnnotateFilesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsyncBatchAnnotateFilesRequest();
      var od = new api.AsyncBatchAnnotateFilesRequest.fromJson(o.toJson());
      checkAsyncBatchAnnotateFilesRequest(od);
    });
  });

  unittest.group("obj-schema-AsyncBatchAnnotateFilesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsyncBatchAnnotateFilesResponse();
      var od = new api.AsyncBatchAnnotateFilesResponse.fromJson(o.toJson());
      checkAsyncBatchAnnotateFilesResponse(od);
    });
  });

  unittest.group("obj-schema-BatchAnnotateImagesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchAnnotateImagesRequest();
      var od = new api.BatchAnnotateImagesRequest.fromJson(o.toJson());
      checkBatchAnnotateImagesRequest(od);
    });
  });

  unittest.group("obj-schema-BatchAnnotateImagesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchAnnotateImagesResponse();
      var od = new api.BatchAnnotateImagesResponse.fromJson(o.toJson());
      checkBatchAnnotateImagesResponse(od);
    });
  });

  unittest.group("obj-schema-Block", () {
    unittest.test("to-json--from-json", () {
      var o = buildBlock();
      var od = new api.Block.fromJson(o.toJson());
      checkBlock(od);
    });
  });

  unittest.group("obj-schema-BoundingPoly", () {
    unittest.test("to-json--from-json", () {
      var o = buildBoundingPoly();
      var od = new api.BoundingPoly.fromJson(o.toJson());
      checkBoundingPoly(od);
    });
  });

  unittest.group("obj-schema-CancelOperationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCancelOperationRequest();
      var od = new api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od);
    });
  });

  unittest.group("obj-schema-Color", () {
    unittest.test("to-json--from-json", () {
      var o = buildColor();
      var od = new api.Color.fromJson(o.toJson());
      checkColor(od);
    });
  });

  unittest.group("obj-schema-ColorInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildColorInfo();
      var od = new api.ColorInfo.fromJson(o.toJson());
      checkColorInfo(od);
    });
  });

  unittest.group("obj-schema-CropHint", () {
    unittest.test("to-json--from-json", () {
      var o = buildCropHint();
      var od = new api.CropHint.fromJson(o.toJson());
      checkCropHint(od);
    });
  });

  unittest.group("obj-schema-CropHintsAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildCropHintsAnnotation();
      var od = new api.CropHintsAnnotation.fromJson(o.toJson());
      checkCropHintsAnnotation(od);
    });
  });

  unittest.group("obj-schema-CropHintsParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildCropHintsParams();
      var od = new api.CropHintsParams.fromJson(o.toJson());
      checkCropHintsParams(od);
    });
  });

  unittest.group("obj-schema-DetectedBreak", () {
    unittest.test("to-json--from-json", () {
      var o = buildDetectedBreak();
      var od = new api.DetectedBreak.fromJson(o.toJson());
      checkDetectedBreak(od);
    });
  });

  unittest.group("obj-schema-DetectedLanguage", () {
    unittest.test("to-json--from-json", () {
      var o = buildDetectedLanguage();
      var od = new api.DetectedLanguage.fromJson(o.toJson());
      checkDetectedLanguage(od);
    });
  });

  unittest.group("obj-schema-DominantColorsAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildDominantColorsAnnotation();
      var od = new api.DominantColorsAnnotation.fromJson(o.toJson());
      checkDominantColorsAnnotation(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-EntityAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildEntityAnnotation();
      var od = new api.EntityAnnotation.fromJson(o.toJson());
      checkEntityAnnotation(od);
    });
  });

  unittest.group("obj-schema-FaceAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildFaceAnnotation();
      var od = new api.FaceAnnotation.fromJson(o.toJson());
      checkFaceAnnotation(od);
    });
  });

  unittest.group("obj-schema-Feature", () {
    unittest.test("to-json--from-json", () {
      var o = buildFeature();
      var od = new api.Feature.fromJson(o.toJson());
      checkFeature(od);
    });
  });

  unittest.group("obj-schema-GcsDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildGcsDestination();
      var od = new api.GcsDestination.fromJson(o.toJson());
      checkGcsDestination(od);
    });
  });

  unittest.group("obj-schema-GcsSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGcsSource();
      var od = new api.GcsSource.fromJson(o.toJson());
      checkGcsSource(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1AnnotateFileResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1AnnotateFileResponse();
      var od = new api.GoogleCloudVisionV1p1beta1AnnotateFileResponse.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p1beta1AnnotateFileResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1AnnotateImageResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1AnnotateImageResponse();
      var od = new api.GoogleCloudVisionV1p1beta1AnnotateImageResponse.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p1beta1AnnotateImageResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse();
      var od =
          new api.GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse();
      var od = new api
              .GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1Block", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1Block();
      var od = new api.GoogleCloudVisionV1p1beta1Block.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1Block(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1BoundingPoly", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1BoundingPoly();
      var od =
          new api.GoogleCloudVisionV1p1beta1BoundingPoly.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1BoundingPoly(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1ColorInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1ColorInfo();
      var od = new api.GoogleCloudVisionV1p1beta1ColorInfo.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1ColorInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1CropHint", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1CropHint();
      var od = new api.GoogleCloudVisionV1p1beta1CropHint.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1CropHint(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1CropHintsAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1CropHintsAnnotation();
      var od = new api.GoogleCloudVisionV1p1beta1CropHintsAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p1beta1CropHintsAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p1beta1DominantColorsAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1DominantColorsAnnotation();
      var od =
          new api.GoogleCloudVisionV1p1beta1DominantColorsAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p1beta1DominantColorsAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1EntityAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1EntityAnnotation();
      var od = new api.GoogleCloudVisionV1p1beta1EntityAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p1beta1EntityAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1FaceAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1FaceAnnotation();
      var od =
          new api.GoogleCloudVisionV1p1beta1FaceAnnotation.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1FaceAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1FaceAnnotationLandmark",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1FaceAnnotationLandmark();
      var od =
          new api.GoogleCloudVisionV1p1beta1FaceAnnotationLandmark.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p1beta1FaceAnnotationLandmark(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1GcsDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1GcsDestination();
      var od =
          new api.GoogleCloudVisionV1p1beta1GcsDestination.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1GcsDestination(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1GcsSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1GcsSource();
      var od = new api.GoogleCloudVisionV1p1beta1GcsSource.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1GcsSource(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1ImageAnnotationContext",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1ImageAnnotationContext();
      var od =
          new api.GoogleCloudVisionV1p1beta1ImageAnnotationContext.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p1beta1ImageAnnotationContext(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1ImageProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1ImageProperties();
      var od = new api.GoogleCloudVisionV1p1beta1ImageProperties.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p1beta1ImageProperties(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1InputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1InputConfig();
      var od =
          new api.GoogleCloudVisionV1p1beta1InputConfig.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1InputConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1LocationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1LocationInfo();
      var od =
          new api.GoogleCloudVisionV1p1beta1LocationInfo.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1LocationInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1OperationMetadata();
      var od = new api.GoogleCloudVisionV1p1beta1OperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p1beta1OperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1OutputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1OutputConfig();
      var od =
          new api.GoogleCloudVisionV1p1beta1OutputConfig.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1OutputConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1Page", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1Page();
      var od = new api.GoogleCloudVisionV1p1beta1Page.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1Page(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1Paragraph", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1Paragraph();
      var od = new api.GoogleCloudVisionV1p1beta1Paragraph.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1Paragraph(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1Position", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1Position();
      var od = new api.GoogleCloudVisionV1p1beta1Position.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1Position(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1Property", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1Property();
      var od = new api.GoogleCloudVisionV1p1beta1Property.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1Property(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1SafeSearchAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1SafeSearchAnnotation();
      var od = new api.GoogleCloudVisionV1p1beta1SafeSearchAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p1beta1SafeSearchAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1Symbol", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1Symbol();
      var od = new api.GoogleCloudVisionV1p1beta1Symbol.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1Symbol(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1TextAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1TextAnnotation();
      var od =
          new api.GoogleCloudVisionV1p1beta1TextAnnotation.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1TextAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak();
      var od = new api
              .GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage();
      var od = new api
              .GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p1beta1TextAnnotationTextProperty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1TextAnnotationTextProperty();
      var od =
          new api.GoogleCloudVisionV1p1beta1TextAnnotationTextProperty.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p1beta1TextAnnotationTextProperty(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1Vertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1Vertex();
      var od = new api.GoogleCloudVisionV1p1beta1Vertex.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1Vertex(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1WebDetection", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1WebDetection();
      var od =
          new api.GoogleCloudVisionV1p1beta1WebDetection.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1WebDetection(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1WebDetectionWebEntity",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1WebDetectionWebEntity();
      var od = new api.GoogleCloudVisionV1p1beta1WebDetectionWebEntity.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p1beta1WebDetectionWebEntity(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1WebDetectionWebImage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1WebDetectionWebImage();
      var od = new api.GoogleCloudVisionV1p1beta1WebDetectionWebImage.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1WebDetectionWebLabel",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1WebDetectionWebLabel();
      var od = new api.GoogleCloudVisionV1p1beta1WebDetectionWebLabel.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p1beta1WebDetectionWebLabel(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1WebDetectionWebPage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1WebDetectionWebPage();
      var od = new api.GoogleCloudVisionV1p1beta1WebDetectionWebPage.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p1beta1WebDetectionWebPage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1Word", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1Word();
      var od = new api.GoogleCloudVisionV1p1beta1Word.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1Word(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1AnnotateFileResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1AnnotateFileResponse();
      var od = new api.GoogleCloudVisionV1p2beta1AnnotateFileResponse.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p2beta1AnnotateFileResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1AnnotateImageResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1AnnotateImageResponse();
      var od = new api.GoogleCloudVisionV1p2beta1AnnotateImageResponse.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p2beta1AnnotateImageResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse();
      var od =
          new api.GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse();
      var od = new api
              .GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1Block", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1Block();
      var od = new api.GoogleCloudVisionV1p2beta1Block.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1Block(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1BoundingPoly", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1BoundingPoly();
      var od =
          new api.GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1BoundingPoly(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1ColorInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1ColorInfo();
      var od = new api.GoogleCloudVisionV1p2beta1ColorInfo.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1ColorInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1CropHint", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1CropHint();
      var od = new api.GoogleCloudVisionV1p2beta1CropHint.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1CropHint(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1CropHintsAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1CropHintsAnnotation();
      var od = new api.GoogleCloudVisionV1p2beta1CropHintsAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p2beta1CropHintsAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p2beta1DominantColorsAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1DominantColorsAnnotation();
      var od =
          new api.GoogleCloudVisionV1p2beta1DominantColorsAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p2beta1DominantColorsAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1EntityAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1EntityAnnotation();
      var od = new api.GoogleCloudVisionV1p2beta1EntityAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p2beta1EntityAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1FaceAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1FaceAnnotation();
      var od =
          new api.GoogleCloudVisionV1p2beta1FaceAnnotation.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1FaceAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1FaceAnnotationLandmark",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1FaceAnnotationLandmark();
      var od =
          new api.GoogleCloudVisionV1p2beta1FaceAnnotationLandmark.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p2beta1FaceAnnotationLandmark(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1GcsDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1GcsDestination();
      var od =
          new api.GoogleCloudVisionV1p2beta1GcsDestination.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1GcsDestination(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1GcsSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1GcsSource();
      var od = new api.GoogleCloudVisionV1p2beta1GcsSource.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1GcsSource(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1ImageAnnotationContext",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1ImageAnnotationContext();
      var od =
          new api.GoogleCloudVisionV1p2beta1ImageAnnotationContext.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p2beta1ImageAnnotationContext(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1ImageProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1ImageProperties();
      var od = new api.GoogleCloudVisionV1p2beta1ImageProperties.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p2beta1ImageProperties(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1InputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1InputConfig();
      var od =
          new api.GoogleCloudVisionV1p2beta1InputConfig.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1InputConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1LocationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1LocationInfo();
      var od =
          new api.GoogleCloudVisionV1p2beta1LocationInfo.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1LocationInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1NormalizedVertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1NormalizedVertex();
      var od = new api.GoogleCloudVisionV1p2beta1NormalizedVertex.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p2beta1NormalizedVertex(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1OperationMetadata();
      var od = new api.GoogleCloudVisionV1p2beta1OperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p2beta1OperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1OutputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1OutputConfig();
      var od =
          new api.GoogleCloudVisionV1p2beta1OutputConfig.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1OutputConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1Page", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1Page();
      var od = new api.GoogleCloudVisionV1p2beta1Page.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1Page(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1Paragraph", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1Paragraph();
      var od = new api.GoogleCloudVisionV1p2beta1Paragraph.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1Paragraph(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1Position", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1Position();
      var od = new api.GoogleCloudVisionV1p2beta1Position.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1Position(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1Property", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1Property();
      var od = new api.GoogleCloudVisionV1p2beta1Property.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1Property(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1SafeSearchAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1SafeSearchAnnotation();
      var od = new api.GoogleCloudVisionV1p2beta1SafeSearchAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p2beta1SafeSearchAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1Symbol", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1Symbol();
      var od = new api.GoogleCloudVisionV1p2beta1Symbol.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1Symbol(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1TextAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1TextAnnotation();
      var od =
          new api.GoogleCloudVisionV1p2beta1TextAnnotation.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1TextAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak();
      var od = new api
              .GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage();
      var od = new api
              .GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p2beta1TextAnnotationTextProperty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1TextAnnotationTextProperty();
      var od =
          new api.GoogleCloudVisionV1p2beta1TextAnnotationTextProperty.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1Vertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1Vertex();
      var od = new api.GoogleCloudVisionV1p2beta1Vertex.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1Vertex(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1WebDetection", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1WebDetection();
      var od =
          new api.GoogleCloudVisionV1p2beta1WebDetection.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1WebDetection(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1WebDetectionWebEntity",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1WebDetectionWebEntity();
      var od = new api.GoogleCloudVisionV1p2beta1WebDetectionWebEntity.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p2beta1WebDetectionWebEntity(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1WebDetectionWebImage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1WebDetectionWebImage();
      var od = new api.GoogleCloudVisionV1p2beta1WebDetectionWebImage.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1WebDetectionWebLabel",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1WebDetectionWebLabel();
      var od = new api.GoogleCloudVisionV1p2beta1WebDetectionWebLabel.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p2beta1WebDetectionWebLabel(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1WebDetectionWebPage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1WebDetectionWebPage();
      var od = new api.GoogleCloudVisionV1p2beta1WebDetectionWebPage.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p2beta1WebDetectionWebPage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1Word", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1Word();
      var od = new api.GoogleCloudVisionV1p2beta1Word.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1Word(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1AnnotateFileResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1AnnotateFileResponse();
      var od = new api.GoogleCloudVisionV1p3beta1AnnotateFileResponse.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p3beta1AnnotateFileResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1AnnotateImageResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1AnnotateImageResponse();
      var od = new api.GoogleCloudVisionV1p3beta1AnnotateImageResponse.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p3beta1AnnotateImageResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse();
      var od =
          new api.GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse();
      var od = new api
              .GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1BatchOperationMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1BatchOperationMetadata();
      var od =
          new api.GoogleCloudVisionV1p3beta1BatchOperationMetadata.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p3beta1BatchOperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1Block", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1Block();
      var od = new api.GoogleCloudVisionV1p3beta1Block.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1Block(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1BoundingPoly", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1BoundingPoly();
      var od =
          new api.GoogleCloudVisionV1p3beta1BoundingPoly.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1BoundingPoly(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1ColorInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1ColorInfo();
      var od = new api.GoogleCloudVisionV1p3beta1ColorInfo.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1ColorInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1CropHint", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1CropHint();
      var od = new api.GoogleCloudVisionV1p3beta1CropHint.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1CropHint(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1CropHintsAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1CropHintsAnnotation();
      var od = new api.GoogleCloudVisionV1p3beta1CropHintsAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p3beta1CropHintsAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p3beta1DominantColorsAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1DominantColorsAnnotation();
      var od =
          new api.GoogleCloudVisionV1p3beta1DominantColorsAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p3beta1DominantColorsAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1EntityAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1EntityAnnotation();
      var od = new api.GoogleCloudVisionV1p3beta1EntityAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p3beta1EntityAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1FaceAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1FaceAnnotation();
      var od =
          new api.GoogleCloudVisionV1p3beta1FaceAnnotation.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1FaceAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1FaceAnnotationLandmark",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1FaceAnnotationLandmark();
      var od =
          new api.GoogleCloudVisionV1p3beta1FaceAnnotationLandmark.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p3beta1FaceAnnotationLandmark(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1GcsDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1GcsDestination();
      var od =
          new api.GoogleCloudVisionV1p3beta1GcsDestination.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1GcsDestination(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1GcsSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1GcsSource();
      var od = new api.GoogleCloudVisionV1p3beta1GcsSource.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1GcsSource(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1ImageAnnotationContext",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1ImageAnnotationContext();
      var od =
          new api.GoogleCloudVisionV1p3beta1ImageAnnotationContext.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p3beta1ImageAnnotationContext(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1ImageProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1ImageProperties();
      var od = new api.GoogleCloudVisionV1p3beta1ImageProperties.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p3beta1ImageProperties(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p3beta1ImportProductSetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1ImportProductSetsResponse();
      var od =
          new api.GoogleCloudVisionV1p3beta1ImportProductSetsResponse.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p3beta1ImportProductSetsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1InputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1InputConfig();
      var od =
          new api.GoogleCloudVisionV1p3beta1InputConfig.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1InputConfig(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation();
      var od =
          new api.GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1LocationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1LocationInfo();
      var od =
          new api.GoogleCloudVisionV1p3beta1LocationInfo.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1LocationInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1NormalizedVertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1NormalizedVertex();
      var od = new api.GoogleCloudVisionV1p3beta1NormalizedVertex.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p3beta1NormalizedVertex(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1OperationMetadata();
      var od = new api.GoogleCloudVisionV1p3beta1OperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p3beta1OperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1OutputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1OutputConfig();
      var od =
          new api.GoogleCloudVisionV1p3beta1OutputConfig.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1OutputConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1Page", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1Page();
      var od = new api.GoogleCloudVisionV1p3beta1Page.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1Page(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1Paragraph", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1Paragraph();
      var od = new api.GoogleCloudVisionV1p3beta1Paragraph.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1Paragraph(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1Position", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1Position();
      var od = new api.GoogleCloudVisionV1p3beta1Position.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1Position(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1Product", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1Product();
      var od = new api.GoogleCloudVisionV1p3beta1Product.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1Product(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1ProductKeyValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1ProductKeyValue();
      var od = new api.GoogleCloudVisionV1p3beta1ProductKeyValue.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p3beta1ProductKeyValue(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1ProductSearchResults",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1ProductSearchResults();
      var od = new api.GoogleCloudVisionV1p3beta1ProductSearchResults.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p3beta1ProductSearchResults(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p3beta1ProductSearchResultsResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1ProductSearchResultsResult();
      var od =
          new api.GoogleCloudVisionV1p3beta1ProductSearchResultsResult.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p3beta1ProductSearchResultsResult(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1Property", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1Property();
      var od = new api.GoogleCloudVisionV1p3beta1Property.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1Property(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1ReferenceImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1ReferenceImage();
      var od =
          new api.GoogleCloudVisionV1p3beta1ReferenceImage.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1ReferenceImage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1SafeSearchAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1SafeSearchAnnotation();
      var od = new api.GoogleCloudVisionV1p3beta1SafeSearchAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p3beta1SafeSearchAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1Symbol", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1Symbol();
      var od = new api.GoogleCloudVisionV1p3beta1Symbol.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1Symbol(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1TextAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1TextAnnotation();
      var od =
          new api.GoogleCloudVisionV1p3beta1TextAnnotation.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1TextAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak();
      var od = new api
              .GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage();
      var od = new api
              .GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p3beta1TextAnnotationTextProperty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1TextAnnotationTextProperty();
      var od =
          new api.GoogleCloudVisionV1p3beta1TextAnnotationTextProperty.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p3beta1TextAnnotationTextProperty(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1Vertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1Vertex();
      var od = new api.GoogleCloudVisionV1p3beta1Vertex.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1Vertex(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1WebDetection", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1WebDetection();
      var od =
          new api.GoogleCloudVisionV1p3beta1WebDetection.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1WebDetection(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1WebDetectionWebEntity",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1WebDetectionWebEntity();
      var od = new api.GoogleCloudVisionV1p3beta1WebDetectionWebEntity.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p3beta1WebDetectionWebEntity(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1WebDetectionWebImage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1WebDetectionWebImage();
      var od = new api.GoogleCloudVisionV1p3beta1WebDetectionWebImage.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1WebDetectionWebLabel",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1WebDetectionWebLabel();
      var od = new api.GoogleCloudVisionV1p3beta1WebDetectionWebLabel.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p3beta1WebDetectionWebLabel(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1WebDetectionWebPage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1WebDetectionWebPage();
      var od = new api.GoogleCloudVisionV1p3beta1WebDetectionWebPage.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p3beta1WebDetectionWebPage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p3beta1Word", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p3beta1Word();
      var od = new api.GoogleCloudVisionV1p3beta1Word.fromJson(o.toJson());
      checkGoogleCloudVisionV1p3beta1Word(od);
    });
  });

  unittest.group("obj-schema-Image", () {
    unittest.test("to-json--from-json", () {
      var o = buildImage();
      var od = new api.Image.fromJson(o.toJson());
      checkImage(od);
    });
  });

  unittest.group("obj-schema-ImageAnnotationContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildImageAnnotationContext();
      var od = new api.ImageAnnotationContext.fromJson(o.toJson());
      checkImageAnnotationContext(od);
    });
  });

  unittest.group("obj-schema-ImageContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildImageContext();
      var od = new api.ImageContext.fromJson(o.toJson());
      checkImageContext(od);
    });
  });

  unittest.group("obj-schema-ImageProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildImageProperties();
      var od = new api.ImageProperties.fromJson(o.toJson());
      checkImageProperties(od);
    });
  });

  unittest.group("obj-schema-ImageSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildImageSource();
      var od = new api.ImageSource.fromJson(o.toJson());
      checkImageSource(od);
    });
  });

  unittest.group("obj-schema-InputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildInputConfig();
      var od = new api.InputConfig.fromJson(o.toJson());
      checkInputConfig(od);
    });
  });

  unittest.group("obj-schema-Landmark", () {
    unittest.test("to-json--from-json", () {
      var o = buildLandmark();
      var od = new api.Landmark.fromJson(o.toJson());
      checkLandmark(od);
    });
  });

  unittest.group("obj-schema-LatLng", () {
    unittest.test("to-json--from-json", () {
      var o = buildLatLng();
      var od = new api.LatLng.fromJson(o.toJson());
      checkLatLng(od);
    });
  });

  unittest.group("obj-schema-LatLongRect", () {
    unittest.test("to-json--from-json", () {
      var o = buildLatLongRect();
      var od = new api.LatLongRect.fromJson(o.toJson());
      checkLatLongRect(od);
    });
  });

  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-LocationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocationInfo();
      var od = new api.LocationInfo.fromJson(o.toJson());
      checkLocationInfo(od);
    });
  });

  unittest.group("obj-schema-NormalizedVertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildNormalizedVertex();
      var od = new api.NormalizedVertex.fromJson(o.toJson());
      checkNormalizedVertex(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadata();
      var od = new api.OperationMetadata.fromJson(o.toJson());
      checkOperationMetadata(od);
    });
  });

  unittest.group("obj-schema-OutputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildOutputConfig();
      var od = new api.OutputConfig.fromJson(o.toJson());
      checkOutputConfig(od);
    });
  });

  unittest.group("obj-schema-Page", () {
    unittest.test("to-json--from-json", () {
      var o = buildPage();
      var od = new api.Page.fromJson(o.toJson());
      checkPage(od);
    });
  });

  unittest.group("obj-schema-Paragraph", () {
    unittest.test("to-json--from-json", () {
      var o = buildParagraph();
      var od = new api.Paragraph.fromJson(o.toJson());
      checkParagraph(od);
    });
  });

  unittest.group("obj-schema-Position", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosition();
      var od = new api.Position.fromJson(o.toJson());
      checkPosition(od);
    });
  });

  unittest.group("obj-schema-Property", () {
    unittest.test("to-json--from-json", () {
      var o = buildProperty();
      var od = new api.Property.fromJson(o.toJson());
      checkProperty(od);
    });
  });

  unittest.group("obj-schema-SafeSearchAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildSafeSearchAnnotation();
      var od = new api.SafeSearchAnnotation.fromJson(o.toJson());
      checkSafeSearchAnnotation(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-Symbol", () {
    unittest.test("to-json--from-json", () {
      var o = buildSymbol();
      var od = new api.Symbol.fromJson(o.toJson());
      checkSymbol(od);
    });
  });

  unittest.group("obj-schema-TextAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildTextAnnotation();
      var od = new api.TextAnnotation.fromJson(o.toJson());
      checkTextAnnotation(od);
    });
  });

  unittest.group("obj-schema-TextProperty", () {
    unittest.test("to-json--from-json", () {
      var o = buildTextProperty();
      var od = new api.TextProperty.fromJson(o.toJson());
      checkTextProperty(od);
    });
  });

  unittest.group("obj-schema-Vertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildVertex();
      var od = new api.Vertex.fromJson(o.toJson());
      checkVertex(od);
    });
  });

  unittest.group("obj-schema-WebDetection", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebDetection();
      var od = new api.WebDetection.fromJson(o.toJson());
      checkWebDetection(od);
    });
  });

  unittest.group("obj-schema-WebDetectionParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebDetectionParams();
      var od = new api.WebDetectionParams.fromJson(o.toJson());
      checkWebDetectionParams(od);
    });
  });

  unittest.group("obj-schema-WebEntity", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebEntity();
      var od = new api.WebEntity.fromJson(o.toJson());
      checkWebEntity(od);
    });
  });

  unittest.group("obj-schema-WebImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebImage();
      var od = new api.WebImage.fromJson(o.toJson());
      checkWebImage(od);
    });
  });

  unittest.group("obj-schema-WebLabel", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebLabel();
      var od = new api.WebLabel.fromJson(o.toJson());
      checkWebLabel(od);
    });
  });

  unittest.group("obj-schema-WebPage", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebPage();
      var od = new api.WebPage.fromJson(o.toJson());
      checkWebPage(od);
    });
  });

  unittest.group("obj-schema-Word", () {
    unittest.test("to-json--from-json", () {
      var o = buildWord();
      var od = new api.Word.fromJson(o.toJson());
      checkWord(od);
    });
  });

  unittest.group("resource-FilesResourceApi", () {
    unittest.test("method--asyncBatchAnnotate", () {
      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.VisionApi(mock).files;
      var arg_request = buildAsyncBatchAnnotateFilesRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AsyncBatchAnnotateFilesRequest.fromJson(json);
        checkAsyncBatchAnnotateFilesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 27),
            unittest.equals("v1/files:asyncBatchAnnotate"));
        pathOffset += 27;

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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .asyncBatchAnnotate(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ImagesResourceApi", () {
    unittest.test("method--annotate", () {
      var mock = new HttpServerMock();
      api.ImagesResourceApi res = new api.VisionApi(mock).images;
      var arg_request = buildBatchAnnotateImagesRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchAnnotateImagesRequest.fromJson(json);
        checkBatchAnnotateImagesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1/images:annotate"));
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
        var resp = convert.json.encode(buildBatchAnnotateImagesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .annotate(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchAnnotateImagesResponse(response);
      })));
    });
  });

  unittest.group("resource-LocationsOperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.LocationsOperationsResourceApi res =
          new api.VisionApi(mock).locations.operations;
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.VisionApi(mock).operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CancelOperationRequest.fromJson(json);
        checkCancelOperationRequest(obj);

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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.VisionApi(mock).operations;
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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.VisionApi(mock).operations;
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.VisionApi(mock).operations;
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
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });
}
