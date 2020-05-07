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

core.int buildCounterAddProductToProductSetRequest = 0;
buildAddProductToProductSetRequest() {
  var o = new api.AddProductToProductSetRequest();
  buildCounterAddProductToProductSetRequest++;
  if (buildCounterAddProductToProductSetRequest < 3) {
    o.product = "foo";
  }
  buildCounterAddProductToProductSetRequest--;
  return o;
}

checkAddProductToProductSetRequest(api.AddProductToProductSetRequest o) {
  buildCounterAddProductToProductSetRequest++;
  if (buildCounterAddProductToProductSetRequest < 3) {
    unittest.expect(o.product, unittest.equals('foo'));
  }
  buildCounterAddProductToProductSetRequest--;
}

buildUnnamed2760() {
  var o = new core.List<api.Feature>();
  o.add(buildFeature());
  o.add(buildFeature());
  return o;
}

checkUnnamed2760(core.List<api.Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeature(o[0]);
  checkFeature(o[1]);
}

buildUnnamed2761() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed2761(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterAnnotateFileRequest = 0;
buildAnnotateFileRequest() {
  var o = new api.AnnotateFileRequest();
  buildCounterAnnotateFileRequest++;
  if (buildCounterAnnotateFileRequest < 3) {
    o.features = buildUnnamed2760();
    o.imageContext = buildImageContext();
    o.inputConfig = buildInputConfig();
    o.pages = buildUnnamed2761();
  }
  buildCounterAnnotateFileRequest--;
  return o;
}

checkAnnotateFileRequest(api.AnnotateFileRequest o) {
  buildCounterAnnotateFileRequest++;
  if (buildCounterAnnotateFileRequest < 3) {
    checkUnnamed2760(o.features);
    checkImageContext(o.imageContext);
    checkInputConfig(o.inputConfig);
    checkUnnamed2761(o.pages);
  }
  buildCounterAnnotateFileRequest--;
}

buildUnnamed2762() {
  var o = new core.List<api.AnnotateImageResponse>();
  o.add(buildAnnotateImageResponse());
  o.add(buildAnnotateImageResponse());
  return o;
}

checkUnnamed2762(core.List<api.AnnotateImageResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotateImageResponse(o[0]);
  checkAnnotateImageResponse(o[1]);
}

core.int buildCounterAnnotateFileResponse = 0;
buildAnnotateFileResponse() {
  var o = new api.AnnotateFileResponse();
  buildCounterAnnotateFileResponse++;
  if (buildCounterAnnotateFileResponse < 3) {
    o.error = buildStatus();
    o.inputConfig = buildInputConfig();
    o.responses = buildUnnamed2762();
    o.totalPages = 42;
  }
  buildCounterAnnotateFileResponse--;
  return o;
}

checkAnnotateFileResponse(api.AnnotateFileResponse o) {
  buildCounterAnnotateFileResponse++;
  if (buildCounterAnnotateFileResponse < 3) {
    checkStatus(o.error);
    checkInputConfig(o.inputConfig);
    checkUnnamed2762(o.responses);
    unittest.expect(o.totalPages, unittest.equals(42));
  }
  buildCounterAnnotateFileResponse--;
}

buildUnnamed2763() {
  var o = new core.List<api.Feature>();
  o.add(buildFeature());
  o.add(buildFeature());
  return o;
}

checkUnnamed2763(core.List<api.Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeature(o[0]);
  checkFeature(o[1]);
}

core.int buildCounterAnnotateImageRequest = 0;
buildAnnotateImageRequest() {
  var o = new api.AnnotateImageRequest();
  buildCounterAnnotateImageRequest++;
  if (buildCounterAnnotateImageRequest < 3) {
    o.features = buildUnnamed2763();
    o.image = buildImage();
    o.imageContext = buildImageContext();
  }
  buildCounterAnnotateImageRequest--;
  return o;
}

checkAnnotateImageRequest(api.AnnotateImageRequest o) {
  buildCounterAnnotateImageRequest++;
  if (buildCounterAnnotateImageRequest < 3) {
    checkUnnamed2763(o.features);
    checkImage(o.image);
    checkImageContext(o.imageContext);
  }
  buildCounterAnnotateImageRequest--;
}

buildUnnamed2764() {
  var o = new core.List<api.FaceAnnotation>();
  o.add(buildFaceAnnotation());
  o.add(buildFaceAnnotation());
  return o;
}

checkUnnamed2764(core.List<api.FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFaceAnnotation(o[0]);
  checkFaceAnnotation(o[1]);
}

buildUnnamed2765() {
  var o = new core.List<api.EntityAnnotation>();
  o.add(buildEntityAnnotation());
  o.add(buildEntityAnnotation());
  return o;
}

checkUnnamed2765(core.List<api.EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityAnnotation(o[0]);
  checkEntityAnnotation(o[1]);
}

buildUnnamed2766() {
  var o = new core.List<api.EntityAnnotation>();
  o.add(buildEntityAnnotation());
  o.add(buildEntityAnnotation());
  return o;
}

checkUnnamed2766(core.List<api.EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityAnnotation(o[0]);
  checkEntityAnnotation(o[1]);
}

buildUnnamed2767() {
  var o = new core.List<api.LocalizedObjectAnnotation>();
  o.add(buildLocalizedObjectAnnotation());
  o.add(buildLocalizedObjectAnnotation());
  return o;
}

checkUnnamed2767(core.List<api.LocalizedObjectAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalizedObjectAnnotation(o[0]);
  checkLocalizedObjectAnnotation(o[1]);
}

buildUnnamed2768() {
  var o = new core.List<api.EntityAnnotation>();
  o.add(buildEntityAnnotation());
  o.add(buildEntityAnnotation());
  return o;
}

checkUnnamed2768(core.List<api.EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityAnnotation(o[0]);
  checkEntityAnnotation(o[1]);
}

buildUnnamed2769() {
  var o = new core.List<api.EntityAnnotation>();
  o.add(buildEntityAnnotation());
  o.add(buildEntityAnnotation());
  return o;
}

checkUnnamed2769(core.List<api.EntityAnnotation> o) {
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
    o.faceAnnotations = buildUnnamed2764();
    o.fullTextAnnotation = buildTextAnnotation();
    o.imagePropertiesAnnotation = buildImageProperties();
    o.labelAnnotations = buildUnnamed2765();
    o.landmarkAnnotations = buildUnnamed2766();
    o.localizedObjectAnnotations = buildUnnamed2767();
    o.logoAnnotations = buildUnnamed2768();
    o.productSearchResults = buildProductSearchResults();
    o.safeSearchAnnotation = buildSafeSearchAnnotation();
    o.textAnnotations = buildUnnamed2769();
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
    checkUnnamed2764(o.faceAnnotations);
    checkTextAnnotation(o.fullTextAnnotation);
    checkImageProperties(o.imagePropertiesAnnotation);
    checkUnnamed2765(o.labelAnnotations);
    checkUnnamed2766(o.landmarkAnnotations);
    checkUnnamed2767(o.localizedObjectAnnotations);
    checkUnnamed2768(o.logoAnnotations);
    checkProductSearchResults(o.productSearchResults);
    checkSafeSearchAnnotation(o.safeSearchAnnotation);
    checkUnnamed2769(o.textAnnotations);
    checkWebDetection(o.webDetection);
  }
  buildCounterAnnotateImageResponse--;
}

buildUnnamed2770() {
  var o = new core.List<api.Feature>();
  o.add(buildFeature());
  o.add(buildFeature());
  return o;
}

checkUnnamed2770(core.List<api.Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeature(o[0]);
  checkFeature(o[1]);
}

core.int buildCounterAsyncAnnotateFileRequest = 0;
buildAsyncAnnotateFileRequest() {
  var o = new api.AsyncAnnotateFileRequest();
  buildCounterAsyncAnnotateFileRequest++;
  if (buildCounterAsyncAnnotateFileRequest < 3) {
    o.features = buildUnnamed2770();
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
    checkUnnamed2770(o.features);
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

buildUnnamed2771() {
  var o = new core.List<api.AsyncAnnotateFileRequest>();
  o.add(buildAsyncAnnotateFileRequest());
  o.add(buildAsyncAnnotateFileRequest());
  return o;
}

checkUnnamed2771(core.List<api.AsyncAnnotateFileRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsyncAnnotateFileRequest(o[0]);
  checkAsyncAnnotateFileRequest(o[1]);
}

core.int buildCounterAsyncBatchAnnotateFilesRequest = 0;
buildAsyncBatchAnnotateFilesRequest() {
  var o = new api.AsyncBatchAnnotateFilesRequest();
  buildCounterAsyncBatchAnnotateFilesRequest++;
  if (buildCounterAsyncBatchAnnotateFilesRequest < 3) {
    o.parent = "foo";
    o.requests = buildUnnamed2771();
  }
  buildCounterAsyncBatchAnnotateFilesRequest--;
  return o;
}

checkAsyncBatchAnnotateFilesRequest(api.AsyncBatchAnnotateFilesRequest o) {
  buildCounterAsyncBatchAnnotateFilesRequest++;
  if (buildCounterAsyncBatchAnnotateFilesRequest < 3) {
    unittest.expect(o.parent, unittest.equals('foo'));
    checkUnnamed2771(o.requests);
  }
  buildCounterAsyncBatchAnnotateFilesRequest--;
}

buildUnnamed2772() {
  var o = new core.List<api.AsyncAnnotateFileResponse>();
  o.add(buildAsyncAnnotateFileResponse());
  o.add(buildAsyncAnnotateFileResponse());
  return o;
}

checkUnnamed2772(core.List<api.AsyncAnnotateFileResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsyncAnnotateFileResponse(o[0]);
  checkAsyncAnnotateFileResponse(o[1]);
}

core.int buildCounterAsyncBatchAnnotateFilesResponse = 0;
buildAsyncBatchAnnotateFilesResponse() {
  var o = new api.AsyncBatchAnnotateFilesResponse();
  buildCounterAsyncBatchAnnotateFilesResponse++;
  if (buildCounterAsyncBatchAnnotateFilesResponse < 3) {
    o.responses = buildUnnamed2772();
  }
  buildCounterAsyncBatchAnnotateFilesResponse--;
  return o;
}

checkAsyncBatchAnnotateFilesResponse(api.AsyncBatchAnnotateFilesResponse o) {
  buildCounterAsyncBatchAnnotateFilesResponse++;
  if (buildCounterAsyncBatchAnnotateFilesResponse < 3) {
    checkUnnamed2772(o.responses);
  }
  buildCounterAsyncBatchAnnotateFilesResponse--;
}

buildUnnamed2773() {
  var o = new core.List<api.AnnotateImageRequest>();
  o.add(buildAnnotateImageRequest());
  o.add(buildAnnotateImageRequest());
  return o;
}

checkUnnamed2773(core.List<api.AnnotateImageRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotateImageRequest(o[0]);
  checkAnnotateImageRequest(o[1]);
}

core.int buildCounterAsyncBatchAnnotateImagesRequest = 0;
buildAsyncBatchAnnotateImagesRequest() {
  var o = new api.AsyncBatchAnnotateImagesRequest();
  buildCounterAsyncBatchAnnotateImagesRequest++;
  if (buildCounterAsyncBatchAnnotateImagesRequest < 3) {
    o.outputConfig = buildOutputConfig();
    o.parent = "foo";
    o.requests = buildUnnamed2773();
  }
  buildCounterAsyncBatchAnnotateImagesRequest--;
  return o;
}

checkAsyncBatchAnnotateImagesRequest(api.AsyncBatchAnnotateImagesRequest o) {
  buildCounterAsyncBatchAnnotateImagesRequest++;
  if (buildCounterAsyncBatchAnnotateImagesRequest < 3) {
    checkOutputConfig(o.outputConfig);
    unittest.expect(o.parent, unittest.equals('foo'));
    checkUnnamed2773(o.requests);
  }
  buildCounterAsyncBatchAnnotateImagesRequest--;
}

core.int buildCounterAsyncBatchAnnotateImagesResponse = 0;
buildAsyncBatchAnnotateImagesResponse() {
  var o = new api.AsyncBatchAnnotateImagesResponse();
  buildCounterAsyncBatchAnnotateImagesResponse++;
  if (buildCounterAsyncBatchAnnotateImagesResponse < 3) {
    o.outputConfig = buildOutputConfig();
  }
  buildCounterAsyncBatchAnnotateImagesResponse--;
  return o;
}

checkAsyncBatchAnnotateImagesResponse(api.AsyncBatchAnnotateImagesResponse o) {
  buildCounterAsyncBatchAnnotateImagesResponse++;
  if (buildCounterAsyncBatchAnnotateImagesResponse < 3) {
    checkOutputConfig(o.outputConfig);
  }
  buildCounterAsyncBatchAnnotateImagesResponse--;
}

buildUnnamed2774() {
  var o = new core.List<api.AnnotateFileRequest>();
  o.add(buildAnnotateFileRequest());
  o.add(buildAnnotateFileRequest());
  return o;
}

checkUnnamed2774(core.List<api.AnnotateFileRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotateFileRequest(o[0]);
  checkAnnotateFileRequest(o[1]);
}

core.int buildCounterBatchAnnotateFilesRequest = 0;
buildBatchAnnotateFilesRequest() {
  var o = new api.BatchAnnotateFilesRequest();
  buildCounterBatchAnnotateFilesRequest++;
  if (buildCounterBatchAnnotateFilesRequest < 3) {
    o.parent = "foo";
    o.requests = buildUnnamed2774();
  }
  buildCounterBatchAnnotateFilesRequest--;
  return o;
}

checkBatchAnnotateFilesRequest(api.BatchAnnotateFilesRequest o) {
  buildCounterBatchAnnotateFilesRequest++;
  if (buildCounterBatchAnnotateFilesRequest < 3) {
    unittest.expect(o.parent, unittest.equals('foo'));
    checkUnnamed2774(o.requests);
  }
  buildCounterBatchAnnotateFilesRequest--;
}

buildUnnamed2775() {
  var o = new core.List<api.AnnotateFileResponse>();
  o.add(buildAnnotateFileResponse());
  o.add(buildAnnotateFileResponse());
  return o;
}

checkUnnamed2775(core.List<api.AnnotateFileResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotateFileResponse(o[0]);
  checkAnnotateFileResponse(o[1]);
}

core.int buildCounterBatchAnnotateFilesResponse = 0;
buildBatchAnnotateFilesResponse() {
  var o = new api.BatchAnnotateFilesResponse();
  buildCounterBatchAnnotateFilesResponse++;
  if (buildCounterBatchAnnotateFilesResponse < 3) {
    o.responses = buildUnnamed2775();
  }
  buildCounterBatchAnnotateFilesResponse--;
  return o;
}

checkBatchAnnotateFilesResponse(api.BatchAnnotateFilesResponse o) {
  buildCounterBatchAnnotateFilesResponse++;
  if (buildCounterBatchAnnotateFilesResponse < 3) {
    checkUnnamed2775(o.responses);
  }
  buildCounterBatchAnnotateFilesResponse--;
}

buildUnnamed2776() {
  var o = new core.List<api.AnnotateImageRequest>();
  o.add(buildAnnotateImageRequest());
  o.add(buildAnnotateImageRequest());
  return o;
}

checkUnnamed2776(core.List<api.AnnotateImageRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotateImageRequest(o[0]);
  checkAnnotateImageRequest(o[1]);
}

core.int buildCounterBatchAnnotateImagesRequest = 0;
buildBatchAnnotateImagesRequest() {
  var o = new api.BatchAnnotateImagesRequest();
  buildCounterBatchAnnotateImagesRequest++;
  if (buildCounterBatchAnnotateImagesRequest < 3) {
    o.parent = "foo";
    o.requests = buildUnnamed2776();
  }
  buildCounterBatchAnnotateImagesRequest--;
  return o;
}

checkBatchAnnotateImagesRequest(api.BatchAnnotateImagesRequest o) {
  buildCounterBatchAnnotateImagesRequest++;
  if (buildCounterBatchAnnotateImagesRequest < 3) {
    unittest.expect(o.parent, unittest.equals('foo'));
    checkUnnamed2776(o.requests);
  }
  buildCounterBatchAnnotateImagesRequest--;
}

buildUnnamed2777() {
  var o = new core.List<api.AnnotateImageResponse>();
  o.add(buildAnnotateImageResponse());
  o.add(buildAnnotateImageResponse());
  return o;
}

checkUnnamed2777(core.List<api.AnnotateImageResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotateImageResponse(o[0]);
  checkAnnotateImageResponse(o[1]);
}

core.int buildCounterBatchAnnotateImagesResponse = 0;
buildBatchAnnotateImagesResponse() {
  var o = new api.BatchAnnotateImagesResponse();
  buildCounterBatchAnnotateImagesResponse++;
  if (buildCounterBatchAnnotateImagesResponse < 3) {
    o.responses = buildUnnamed2777();
  }
  buildCounterBatchAnnotateImagesResponse--;
  return o;
}

checkBatchAnnotateImagesResponse(api.BatchAnnotateImagesResponse o) {
  buildCounterBatchAnnotateImagesResponse++;
  if (buildCounterBatchAnnotateImagesResponse < 3) {
    checkUnnamed2777(o.responses);
  }
  buildCounterBatchAnnotateImagesResponse--;
}

core.int buildCounterBatchOperationMetadata = 0;
buildBatchOperationMetadata() {
  var o = new api.BatchOperationMetadata();
  buildCounterBatchOperationMetadata++;
  if (buildCounterBatchOperationMetadata < 3) {
    o.endTime = "foo";
    o.state = "foo";
    o.submitTime = "foo";
  }
  buildCounterBatchOperationMetadata--;
  return o;
}

checkBatchOperationMetadata(api.BatchOperationMetadata o) {
  buildCounterBatchOperationMetadata++;
  if (buildCounterBatchOperationMetadata < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.submitTime, unittest.equals('foo'));
  }
  buildCounterBatchOperationMetadata--;
}

buildUnnamed2778() {
  var o = new core.List<api.Paragraph>();
  o.add(buildParagraph());
  o.add(buildParagraph());
  return o;
}

checkUnnamed2778(core.List<api.Paragraph> o) {
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
    o.paragraphs = buildUnnamed2778();
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
    checkUnnamed2778(o.paragraphs);
    checkTextProperty(o.property);
  }
  buildCounterBlock--;
}

buildUnnamed2779() {
  var o = new core.List<api.NormalizedVertex>();
  o.add(buildNormalizedVertex());
  o.add(buildNormalizedVertex());
  return o;
}

checkUnnamed2779(core.List<api.NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNormalizedVertex(o[0]);
  checkNormalizedVertex(o[1]);
}

buildUnnamed2780() {
  var o = new core.List<api.Vertex>();
  o.add(buildVertex());
  o.add(buildVertex());
  return o;
}

checkUnnamed2780(core.List<api.Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVertex(o[0]);
  checkVertex(o[1]);
}

core.int buildCounterBoundingPoly = 0;
buildBoundingPoly() {
  var o = new api.BoundingPoly();
  buildCounterBoundingPoly++;
  if (buildCounterBoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed2779();
    o.vertices = buildUnnamed2780();
  }
  buildCounterBoundingPoly--;
  return o;
}

checkBoundingPoly(api.BoundingPoly o) {
  buildCounterBoundingPoly++;
  if (buildCounterBoundingPoly < 3) {
    checkUnnamed2779(o.normalizedVertices);
    checkUnnamed2780(o.vertices);
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

buildUnnamed2781() {
  var o = new core.List<api.CropHint>();
  o.add(buildCropHint());
  o.add(buildCropHint());
  return o;
}

checkUnnamed2781(core.List<api.CropHint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCropHint(o[0]);
  checkCropHint(o[1]);
}

core.int buildCounterCropHintsAnnotation = 0;
buildCropHintsAnnotation() {
  var o = new api.CropHintsAnnotation();
  buildCounterCropHintsAnnotation++;
  if (buildCounterCropHintsAnnotation < 3) {
    o.cropHints = buildUnnamed2781();
  }
  buildCounterCropHintsAnnotation--;
  return o;
}

checkCropHintsAnnotation(api.CropHintsAnnotation o) {
  buildCounterCropHintsAnnotation++;
  if (buildCounterCropHintsAnnotation < 3) {
    checkUnnamed2781(o.cropHints);
  }
  buildCounterCropHintsAnnotation--;
}

buildUnnamed2782() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2782(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterCropHintsParams = 0;
buildCropHintsParams() {
  var o = new api.CropHintsParams();
  buildCounterCropHintsParams++;
  if (buildCounterCropHintsParams < 3) {
    o.aspectRatios = buildUnnamed2782();
  }
  buildCounterCropHintsParams--;
  return o;
}

checkCropHintsParams(api.CropHintsParams o) {
  buildCounterCropHintsParams++;
  if (buildCounterCropHintsParams < 3) {
    checkUnnamed2782(o.aspectRatios);
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

buildUnnamed2783() {
  var o = new core.List<api.ColorInfo>();
  o.add(buildColorInfo());
  o.add(buildColorInfo());
  return o;
}

checkUnnamed2783(core.List<api.ColorInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkColorInfo(o[0]);
  checkColorInfo(o[1]);
}

core.int buildCounterDominantColorsAnnotation = 0;
buildDominantColorsAnnotation() {
  var o = new api.DominantColorsAnnotation();
  buildCounterDominantColorsAnnotation++;
  if (buildCounterDominantColorsAnnotation < 3) {
    o.colors = buildUnnamed2783();
  }
  buildCounterDominantColorsAnnotation--;
  return o;
}

checkDominantColorsAnnotation(api.DominantColorsAnnotation o) {
  buildCounterDominantColorsAnnotation++;
  if (buildCounterDominantColorsAnnotation < 3) {
    checkUnnamed2783(o.colors);
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

buildUnnamed2784() {
  var o = new core.List<api.LocationInfo>();
  o.add(buildLocationInfo());
  o.add(buildLocationInfo());
  return o;
}

checkUnnamed2784(core.List<api.LocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationInfo(o[0]);
  checkLocationInfo(o[1]);
}

buildUnnamed2785() {
  var o = new core.List<api.Property>();
  o.add(buildProperty());
  o.add(buildProperty());
  return o;
}

checkUnnamed2785(core.List<api.Property> o) {
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
    o.locations = buildUnnamed2784();
    o.mid = "foo";
    o.properties = buildUnnamed2785();
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
    checkUnnamed2784(o.locations);
    unittest.expect(o.mid, unittest.equals('foo'));
    checkUnnamed2785(o.properties);
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.topicality, unittest.equals(42.0));
  }
  buildCounterEntityAnnotation--;
}

buildUnnamed2786() {
  var o = new core.List<api.Landmark>();
  o.add(buildLandmark());
  o.add(buildLandmark());
  return o;
}

checkUnnamed2786(core.List<api.Landmark> o) {
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
    o.landmarks = buildUnnamed2786();
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
    checkUnnamed2786(o.landmarks);
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

buildUnnamed2787() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1AnnotateImageResponse>();
  o.add(buildGoogleCloudVisionV1p1beta1AnnotateImageResponse());
  o.add(buildGoogleCloudVisionV1p1beta1AnnotateImageResponse());
  return o;
}

checkUnnamed2787(
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
    o.error = buildStatus();
    o.inputConfig = buildGoogleCloudVisionV1p1beta1InputConfig();
    o.responses = buildUnnamed2787();
    o.totalPages = 42;
  }
  buildCounterGoogleCloudVisionV1p1beta1AnnotateFileResponse--;
  return o;
}

checkGoogleCloudVisionV1p1beta1AnnotateFileResponse(
    api.GoogleCloudVisionV1p1beta1AnnotateFileResponse o) {
  buildCounterGoogleCloudVisionV1p1beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p1beta1AnnotateFileResponse < 3) {
    checkStatus(o.error);
    checkGoogleCloudVisionV1p1beta1InputConfig(o.inputConfig);
    checkUnnamed2787(o.responses);
    unittest.expect(o.totalPages, unittest.equals(42));
  }
  buildCounterGoogleCloudVisionV1p1beta1AnnotateFileResponse--;
}

buildUnnamed2788() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1FaceAnnotation>();
  o.add(buildGoogleCloudVisionV1p1beta1FaceAnnotation());
  o.add(buildGoogleCloudVisionV1p1beta1FaceAnnotation());
  return o;
}

checkUnnamed2788(core.List<api.GoogleCloudVisionV1p1beta1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1FaceAnnotation(o[0]);
  checkGoogleCloudVisionV1p1beta1FaceAnnotation(o[1]);
}

buildUnnamed2789() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p1beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p1beta1EntityAnnotation());
  return o;
}

checkUnnamed2789(core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[1]);
}

buildUnnamed2790() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p1beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p1beta1EntityAnnotation());
  return o;
}

checkUnnamed2790(core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[1]);
}

buildUnnamed2791() {
  var o =
      new core.List<api.GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation>();
  o.add(buildGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation());
  o.add(buildGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation());
  return o;
}

checkUnnamed2791(
    core.List<api.GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation(o[0]);
  checkGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation(o[1]);
}

buildUnnamed2792() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p1beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p1beta1EntityAnnotation());
  return o;
}

checkUnnamed2792(core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[1]);
}

buildUnnamed2793() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p1beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p1beta1EntityAnnotation());
  return o;
}

checkUnnamed2793(core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation> o) {
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
    o.faceAnnotations = buildUnnamed2788();
    o.fullTextAnnotation = buildGoogleCloudVisionV1p1beta1TextAnnotation();
    o.imagePropertiesAnnotation =
        buildGoogleCloudVisionV1p1beta1ImageProperties();
    o.labelAnnotations = buildUnnamed2789();
    o.landmarkAnnotations = buildUnnamed2790();
    o.localizedObjectAnnotations = buildUnnamed2791();
    o.logoAnnotations = buildUnnamed2792();
    o.productSearchResults =
        buildGoogleCloudVisionV1p1beta1ProductSearchResults();
    o.safeSearchAnnotation =
        buildGoogleCloudVisionV1p1beta1SafeSearchAnnotation();
    o.textAnnotations = buildUnnamed2793();
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
    checkUnnamed2788(o.faceAnnotations);
    checkGoogleCloudVisionV1p1beta1TextAnnotation(o.fullTextAnnotation);
    checkGoogleCloudVisionV1p1beta1ImageProperties(o.imagePropertiesAnnotation);
    checkUnnamed2789(o.labelAnnotations);
    checkUnnamed2790(o.landmarkAnnotations);
    checkUnnamed2791(o.localizedObjectAnnotations);
    checkUnnamed2792(o.logoAnnotations);
    checkGoogleCloudVisionV1p1beta1ProductSearchResults(o.productSearchResults);
    checkGoogleCloudVisionV1p1beta1SafeSearchAnnotation(o.safeSearchAnnotation);
    checkUnnamed2793(o.textAnnotations);
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

buildUnnamed2794() {
  var o =
      new core.List<api.GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse>();
  o.add(buildGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse());
  o.add(buildGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse());
  return o;
}

checkUnnamed2794(
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
    o.responses = buildUnnamed2794();
  }
  buildCounterGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse--;
  return o;
}

checkGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse(
    api.GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse o) {
  buildCounterGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse <
      3) {
    checkUnnamed2794(o.responses);
  }
  buildCounterGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse--;
}

buildUnnamed2795() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1Paragraph>();
  o.add(buildGoogleCloudVisionV1p1beta1Paragraph());
  o.add(buildGoogleCloudVisionV1p1beta1Paragraph());
  return o;
}

checkUnnamed2795(core.List<api.GoogleCloudVisionV1p1beta1Paragraph> o) {
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
    o.paragraphs = buildUnnamed2795();
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
    checkUnnamed2795(o.paragraphs);
    checkGoogleCloudVisionV1p1beta1TextAnnotationTextProperty(o.property);
  }
  buildCounterGoogleCloudVisionV1p1beta1Block--;
}

buildUnnamed2796() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1NormalizedVertex>();
  o.add(buildGoogleCloudVisionV1p1beta1NormalizedVertex());
  o.add(buildGoogleCloudVisionV1p1beta1NormalizedVertex());
  return o;
}

checkUnnamed2796(core.List<api.GoogleCloudVisionV1p1beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1NormalizedVertex(o[0]);
  checkGoogleCloudVisionV1p1beta1NormalizedVertex(o[1]);
}

buildUnnamed2797() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1Vertex>();
  o.add(buildGoogleCloudVisionV1p1beta1Vertex());
  o.add(buildGoogleCloudVisionV1p1beta1Vertex());
  return o;
}

checkUnnamed2797(core.List<api.GoogleCloudVisionV1p1beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1Vertex(o[0]);
  checkGoogleCloudVisionV1p1beta1Vertex(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1BoundingPoly = 0;
buildGoogleCloudVisionV1p1beta1BoundingPoly() {
  var o = new api.GoogleCloudVisionV1p1beta1BoundingPoly();
  buildCounterGoogleCloudVisionV1p1beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p1beta1BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed2796();
    o.vertices = buildUnnamed2797();
  }
  buildCounterGoogleCloudVisionV1p1beta1BoundingPoly--;
  return o;
}

checkGoogleCloudVisionV1p1beta1BoundingPoly(
    api.GoogleCloudVisionV1p1beta1BoundingPoly o) {
  buildCounterGoogleCloudVisionV1p1beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p1beta1BoundingPoly < 3) {
    checkUnnamed2796(o.normalizedVertices);
    checkUnnamed2797(o.vertices);
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

buildUnnamed2798() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1CropHint>();
  o.add(buildGoogleCloudVisionV1p1beta1CropHint());
  o.add(buildGoogleCloudVisionV1p1beta1CropHint());
  return o;
}

checkUnnamed2798(core.List<api.GoogleCloudVisionV1p1beta1CropHint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1CropHint(o[0]);
  checkGoogleCloudVisionV1p1beta1CropHint(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation = 0;
buildGoogleCloudVisionV1p1beta1CropHintsAnnotation() {
  var o = new api.GoogleCloudVisionV1p1beta1CropHintsAnnotation();
  buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation < 3) {
    o.cropHints = buildUnnamed2798();
  }
  buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p1beta1CropHintsAnnotation(
    api.GoogleCloudVisionV1p1beta1CropHintsAnnotation o) {
  buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation < 3) {
    checkUnnamed2798(o.cropHints);
  }
  buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation--;
}

buildUnnamed2799() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1ColorInfo>();
  o.add(buildGoogleCloudVisionV1p1beta1ColorInfo());
  o.add(buildGoogleCloudVisionV1p1beta1ColorInfo());
  return o;
}

checkUnnamed2799(core.List<api.GoogleCloudVisionV1p1beta1ColorInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1ColorInfo(o[0]);
  checkGoogleCloudVisionV1p1beta1ColorInfo(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation = 0;
buildGoogleCloudVisionV1p1beta1DominantColorsAnnotation() {
  var o = new api.GoogleCloudVisionV1p1beta1DominantColorsAnnotation();
  buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation < 3) {
    o.colors = buildUnnamed2799();
  }
  buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p1beta1DominantColorsAnnotation(
    api.GoogleCloudVisionV1p1beta1DominantColorsAnnotation o) {
  buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation < 3) {
    checkUnnamed2799(o.colors);
  }
  buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation--;
}

buildUnnamed2800() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1LocationInfo>();
  o.add(buildGoogleCloudVisionV1p1beta1LocationInfo());
  o.add(buildGoogleCloudVisionV1p1beta1LocationInfo());
  return o;
}

checkUnnamed2800(core.List<api.GoogleCloudVisionV1p1beta1LocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1LocationInfo(o[0]);
  checkGoogleCloudVisionV1p1beta1LocationInfo(o[1]);
}

buildUnnamed2801() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1Property>();
  o.add(buildGoogleCloudVisionV1p1beta1Property());
  o.add(buildGoogleCloudVisionV1p1beta1Property());
  return o;
}

checkUnnamed2801(core.List<api.GoogleCloudVisionV1p1beta1Property> o) {
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
    o.locations = buildUnnamed2800();
    o.mid = "foo";
    o.properties = buildUnnamed2801();
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
    checkUnnamed2800(o.locations);
    unittest.expect(o.mid, unittest.equals('foo'));
    checkUnnamed2801(o.properties);
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.topicality, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p1beta1EntityAnnotation--;
}

buildUnnamed2802() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1FaceAnnotationLandmark>();
  o.add(buildGoogleCloudVisionV1p1beta1FaceAnnotationLandmark());
  o.add(buildGoogleCloudVisionV1p1beta1FaceAnnotationLandmark());
  return o;
}

checkUnnamed2802(
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
    o.landmarks = buildUnnamed2802();
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
    checkUnnamed2802(o.landmarks);
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
    o.content = "foo";
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
    unittest.expect(o.content, unittest.equals('foo'));
    checkGoogleCloudVisionV1p1beta1GcsSource(o.gcsSource);
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p1beta1InputConfig--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation = 0;
buildGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation() {
  var o = new api.GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation();
  buildCounterGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.languageCode = "foo";
    o.mid = "foo";
    o.name = "foo";
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation(
    api.GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation o) {
  buildCounterGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation < 3) {
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.mid, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation--;
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

core.int buildCounterGoogleCloudVisionV1p1beta1NormalizedVertex = 0;
buildGoogleCloudVisionV1p1beta1NormalizedVertex() {
  var o = new api.GoogleCloudVisionV1p1beta1NormalizedVertex();
  buildCounterGoogleCloudVisionV1p1beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVisionV1p1beta1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudVisionV1p1beta1NormalizedVertex--;
  return o;
}

checkGoogleCloudVisionV1p1beta1NormalizedVertex(
    api.GoogleCloudVisionV1p1beta1NormalizedVertex o) {
  buildCounterGoogleCloudVisionV1p1beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVisionV1p1beta1NormalizedVertex < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p1beta1NormalizedVertex--;
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

buildUnnamed2803() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1Block>();
  o.add(buildGoogleCloudVisionV1p1beta1Block());
  o.add(buildGoogleCloudVisionV1p1beta1Block());
  return o;
}

checkUnnamed2803(core.List<api.GoogleCloudVisionV1p1beta1Block> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1Block(o[0]);
  checkGoogleCloudVisionV1p1beta1Block(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1Page = 0;
buildGoogleCloudVisionV1p1beta1Page() {
  var o = new api.GoogleCloudVisionV1p1beta1Page();
  buildCounterGoogleCloudVisionV1p1beta1Page++;
  if (buildCounterGoogleCloudVisionV1p1beta1Page < 3) {
    o.blocks = buildUnnamed2803();
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
    checkUnnamed2803(o.blocks);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.height, unittest.equals(42));
    checkGoogleCloudVisionV1p1beta1TextAnnotationTextProperty(o.property);
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterGoogleCloudVisionV1p1beta1Page--;
}

buildUnnamed2804() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1Word>();
  o.add(buildGoogleCloudVisionV1p1beta1Word());
  o.add(buildGoogleCloudVisionV1p1beta1Word());
  return o;
}

checkUnnamed2804(core.List<api.GoogleCloudVisionV1p1beta1Word> o) {
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
    o.words = buildUnnamed2804();
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
    checkUnnamed2804(o.words);
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

buildUnnamed2805() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1ProductKeyValue>();
  o.add(buildGoogleCloudVisionV1p1beta1ProductKeyValue());
  o.add(buildGoogleCloudVisionV1p1beta1ProductKeyValue());
  return o;
}

checkUnnamed2805(core.List<api.GoogleCloudVisionV1p1beta1ProductKeyValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1ProductKeyValue(o[0]);
  checkGoogleCloudVisionV1p1beta1ProductKeyValue(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1Product = 0;
buildGoogleCloudVisionV1p1beta1Product() {
  var o = new api.GoogleCloudVisionV1p1beta1Product();
  buildCounterGoogleCloudVisionV1p1beta1Product++;
  if (buildCounterGoogleCloudVisionV1p1beta1Product < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.name = "foo";
    o.productCategory = "foo";
    o.productLabels = buildUnnamed2805();
  }
  buildCounterGoogleCloudVisionV1p1beta1Product--;
  return o;
}

checkGoogleCloudVisionV1p1beta1Product(
    api.GoogleCloudVisionV1p1beta1Product o) {
  buildCounterGoogleCloudVisionV1p1beta1Product++;
  if (buildCounterGoogleCloudVisionV1p1beta1Product < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.productCategory, unittest.equals('foo'));
    checkUnnamed2805(o.productLabels);
  }
  buildCounterGoogleCloudVisionV1p1beta1Product--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1ProductKeyValue = 0;
buildGoogleCloudVisionV1p1beta1ProductKeyValue() {
  var o = new api.GoogleCloudVisionV1p1beta1ProductKeyValue();
  buildCounterGoogleCloudVisionV1p1beta1ProductKeyValue++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductKeyValue < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductKeyValue--;
  return o;
}

checkGoogleCloudVisionV1p1beta1ProductKeyValue(
    api.GoogleCloudVisionV1p1beta1ProductKeyValue o) {
  buildCounterGoogleCloudVisionV1p1beta1ProductKeyValue++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductKeyValue < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductKeyValue--;
}

buildUnnamed2806() {
  var o = new core
      .List<api.GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult>();
  o.add(buildGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult());
  o.add(buildGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult());
  return o;
}

checkUnnamed2806(
    core.List<api.GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult(o[0]);
  checkGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult(o[1]);
}

buildUnnamed2807() {
  var o =
      new core.List<api.GoogleCloudVisionV1p1beta1ProductSearchResultsResult>();
  o.add(buildGoogleCloudVisionV1p1beta1ProductSearchResultsResult());
  o.add(buildGoogleCloudVisionV1p1beta1ProductSearchResultsResult());
  return o;
}

checkUnnamed2807(
    core.List<api.GoogleCloudVisionV1p1beta1ProductSearchResultsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1ProductSearchResultsResult(o[0]);
  checkGoogleCloudVisionV1p1beta1ProductSearchResultsResult(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1ProductSearchResults = 0;
buildGoogleCloudVisionV1p1beta1ProductSearchResults() {
  var o = new api.GoogleCloudVisionV1p1beta1ProductSearchResults();
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResults++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductSearchResults < 3) {
    o.indexTime = "foo";
    o.productGroupedResults = buildUnnamed2806();
    o.results = buildUnnamed2807();
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResults--;
  return o;
}

checkGoogleCloudVisionV1p1beta1ProductSearchResults(
    api.GoogleCloudVisionV1p1beta1ProductSearchResults o) {
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResults++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductSearchResults < 3) {
    unittest.expect(o.indexTime, unittest.equals('foo'));
    checkUnnamed2806(o.productGroupedResults);
    checkUnnamed2807(o.results);
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResults--;
}

buildUnnamed2808() {
  var o = new core.List<
      api.GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation>();
  o.add(buildGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation());
  o.add(buildGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation());
  return o;
}

checkUnnamed2808(
    core.List<
            api.GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation(o[0]);
  checkGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation(o[1]);
}

buildUnnamed2809() {
  var o =
      new core.List<api.GoogleCloudVisionV1p1beta1ProductSearchResultsResult>();
  o.add(buildGoogleCloudVisionV1p1beta1ProductSearchResultsResult());
  o.add(buildGoogleCloudVisionV1p1beta1ProductSearchResultsResult());
  return o;
}

checkUnnamed2809(
    core.List<api.GoogleCloudVisionV1p1beta1ProductSearchResultsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1ProductSearchResultsResult(o[0]);
  checkGoogleCloudVisionV1p1beta1ProductSearchResultsResult(o[1]);
}

core.int
    buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult = 0;
buildGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult() {
  var o = new api.GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult();
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult <
      3) {
    o.boundingPoly = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.objectAnnotations = buildUnnamed2808();
    o.results = buildUnnamed2809();
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult--;
  return o;
}

checkGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult(
    api.GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult o) {
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult <
      3) {
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.boundingPoly);
    checkUnnamed2808(o.objectAnnotations);
    checkUnnamed2809(o.results);
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult--;
}

core.int
    buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation =
    0;
buildGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation() {
  var o =
      new api.GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation();
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation <
      3) {
    o.languageCode = "foo";
    o.mid = "foo";
    o.name = "foo";
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation(
    api.GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation o) {
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation <
      3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.mid, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsResult = 0;
buildGoogleCloudVisionV1p1beta1ProductSearchResultsResult() {
  var o = new api.GoogleCloudVisionV1p1beta1ProductSearchResultsResult();
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsResult++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsResult < 3) {
    o.image = "foo";
    o.product = buildGoogleCloudVisionV1p1beta1Product();
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsResult--;
  return o;
}

checkGoogleCloudVisionV1p1beta1ProductSearchResultsResult(
    api.GoogleCloudVisionV1p1beta1ProductSearchResultsResult o) {
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsResult++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsResult < 3) {
    unittest.expect(o.image, unittest.equals('foo'));
    checkGoogleCloudVisionV1p1beta1Product(o.product);
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsResult--;
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

buildUnnamed2810() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1Page>();
  o.add(buildGoogleCloudVisionV1p1beta1Page());
  o.add(buildGoogleCloudVisionV1p1beta1Page());
  return o;
}

checkUnnamed2810(core.List<api.GoogleCloudVisionV1p1beta1Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1Page(o[0]);
  checkGoogleCloudVisionV1p1beta1Page(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1TextAnnotation = 0;
buildGoogleCloudVisionV1p1beta1TextAnnotation() {
  var o = new api.GoogleCloudVisionV1p1beta1TextAnnotation();
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1TextAnnotation < 3) {
    o.pages = buildUnnamed2810();
    o.text = "foo";
  }
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p1beta1TextAnnotation(
    api.GoogleCloudVisionV1p1beta1TextAnnotation o) {
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1TextAnnotation < 3) {
    checkUnnamed2810(o.pages);
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

buildUnnamed2811() {
  var o = new core
      .List<api.GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage>();
  o.add(buildGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage());
  o.add(buildGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage());
  return o;
}

checkUnnamed2811(
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
    o.detectedLanguages = buildUnnamed2811();
  }
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationTextProperty--;
  return o;
}

checkGoogleCloudVisionV1p1beta1TextAnnotationTextProperty(
    api.GoogleCloudVisionV1p1beta1TextAnnotationTextProperty o) {
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p1beta1TextAnnotationTextProperty < 3) {
    checkGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak(o.detectedBreak);
    checkUnnamed2811(o.detectedLanguages);
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

buildUnnamed2812() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebLabel>();
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebLabel());
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebLabel());
  return o;
}

checkUnnamed2812(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebLabel(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebLabel(o[1]);
}

buildUnnamed2813() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2813(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[1]);
}

buildUnnamed2814() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebPage>();
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebPage());
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebPage());
  return o;
}

checkUnnamed2814(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebPage(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebPage(o[1]);
}

buildUnnamed2815() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2815(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[1]);
}

buildUnnamed2816() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2816(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[1]);
}

buildUnnamed2817() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebEntity>();
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebEntity());
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebEntity());
  return o;
}

checkUnnamed2817(
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
    o.bestGuessLabels = buildUnnamed2812();
    o.fullMatchingImages = buildUnnamed2813();
    o.pagesWithMatchingImages = buildUnnamed2814();
    o.partialMatchingImages = buildUnnamed2815();
    o.visuallySimilarImages = buildUnnamed2816();
    o.webEntities = buildUnnamed2817();
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetection--;
  return o;
}

checkGoogleCloudVisionV1p1beta1WebDetection(
    api.GoogleCloudVisionV1p1beta1WebDetection o) {
  buildCounterGoogleCloudVisionV1p1beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetection < 3) {
    checkUnnamed2812(o.bestGuessLabels);
    checkUnnamed2813(o.fullMatchingImages);
    checkUnnamed2814(o.pagesWithMatchingImages);
    checkUnnamed2815(o.partialMatchingImages);
    checkUnnamed2816(o.visuallySimilarImages);
    checkUnnamed2817(o.webEntities);
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

buildUnnamed2818() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2818(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[1]);
}

buildUnnamed2819() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p1beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2819(
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
    o.fullMatchingImages = buildUnnamed2818();
    o.pageTitle = "foo";
    o.partialMatchingImages = buildUnnamed2819();
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
    checkUnnamed2818(o.fullMatchingImages);
    unittest.expect(o.pageTitle, unittest.equals('foo'));
    checkUnnamed2819(o.partialMatchingImages);
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebPage--;
}

buildUnnamed2820() {
  var o = new core.List<api.GoogleCloudVisionV1p1beta1Symbol>();
  o.add(buildGoogleCloudVisionV1p1beta1Symbol());
  o.add(buildGoogleCloudVisionV1p1beta1Symbol());
  return o;
}

checkUnnamed2820(core.List<api.GoogleCloudVisionV1p1beta1Symbol> o) {
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
    o.symbols = buildUnnamed2820();
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
    checkUnnamed2820(o.symbols);
  }
  buildCounterGoogleCloudVisionV1p1beta1Word--;
}

buildUnnamed2821() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1AnnotateImageResponse>();
  o.add(buildGoogleCloudVisionV1p2beta1AnnotateImageResponse());
  o.add(buildGoogleCloudVisionV1p2beta1AnnotateImageResponse());
  return o;
}

checkUnnamed2821(
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
    o.error = buildStatus();
    o.inputConfig = buildGoogleCloudVisionV1p2beta1InputConfig();
    o.responses = buildUnnamed2821();
    o.totalPages = 42;
  }
  buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse--;
  return o;
}

checkGoogleCloudVisionV1p2beta1AnnotateFileResponse(
    api.GoogleCloudVisionV1p2beta1AnnotateFileResponse o) {
  buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse < 3) {
    checkStatus(o.error);
    checkGoogleCloudVisionV1p2beta1InputConfig(o.inputConfig);
    checkUnnamed2821(o.responses);
    unittest.expect(o.totalPages, unittest.equals(42));
  }
  buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse--;
}

buildUnnamed2822() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1FaceAnnotation>();
  o.add(buildGoogleCloudVisionV1p2beta1FaceAnnotation());
  o.add(buildGoogleCloudVisionV1p2beta1FaceAnnotation());
  return o;
}

checkUnnamed2822(core.List<api.GoogleCloudVisionV1p2beta1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1FaceAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1FaceAnnotation(o[1]);
}

buildUnnamed2823() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p2beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p2beta1EntityAnnotation());
  return o;
}

checkUnnamed2823(core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[1]);
}

buildUnnamed2824() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p2beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p2beta1EntityAnnotation());
  return o;
}

checkUnnamed2824(core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[1]);
}

buildUnnamed2825() {
  var o =
      new core.List<api.GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation>();
  o.add(buildGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation());
  o.add(buildGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation());
  return o;
}

checkUnnamed2825(
    core.List<api.GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation(o[1]);
}

buildUnnamed2826() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p2beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p2beta1EntityAnnotation());
  return o;
}

checkUnnamed2826(core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[1]);
}

buildUnnamed2827() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p2beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p2beta1EntityAnnotation());
  return o;
}

checkUnnamed2827(core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> o) {
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
    o.faceAnnotations = buildUnnamed2822();
    o.fullTextAnnotation = buildGoogleCloudVisionV1p2beta1TextAnnotation();
    o.imagePropertiesAnnotation =
        buildGoogleCloudVisionV1p2beta1ImageProperties();
    o.labelAnnotations = buildUnnamed2823();
    o.landmarkAnnotations = buildUnnamed2824();
    o.localizedObjectAnnotations = buildUnnamed2825();
    o.logoAnnotations = buildUnnamed2826();
    o.productSearchResults =
        buildGoogleCloudVisionV1p2beta1ProductSearchResults();
    o.safeSearchAnnotation =
        buildGoogleCloudVisionV1p2beta1SafeSearchAnnotation();
    o.textAnnotations = buildUnnamed2827();
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
    checkUnnamed2822(o.faceAnnotations);
    checkGoogleCloudVisionV1p2beta1TextAnnotation(o.fullTextAnnotation);
    checkGoogleCloudVisionV1p2beta1ImageProperties(o.imagePropertiesAnnotation);
    checkUnnamed2823(o.labelAnnotations);
    checkUnnamed2824(o.landmarkAnnotations);
    checkUnnamed2825(o.localizedObjectAnnotations);
    checkUnnamed2826(o.logoAnnotations);
    checkGoogleCloudVisionV1p2beta1ProductSearchResults(o.productSearchResults);
    checkGoogleCloudVisionV1p2beta1SafeSearchAnnotation(o.safeSearchAnnotation);
    checkUnnamed2827(o.textAnnotations);
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

buildUnnamed2828() {
  var o =
      new core.List<api.GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse>();
  o.add(buildGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse());
  o.add(buildGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse());
  return o;
}

checkUnnamed2828(
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
    o.responses = buildUnnamed2828();
  }
  buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse--;
  return o;
}

checkGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse(
    api.GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse o) {
  buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse <
      3) {
    checkUnnamed2828(o.responses);
  }
  buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse--;
}

buildUnnamed2829() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1Paragraph>();
  o.add(buildGoogleCloudVisionV1p2beta1Paragraph());
  o.add(buildGoogleCloudVisionV1p2beta1Paragraph());
  return o;
}

checkUnnamed2829(core.List<api.GoogleCloudVisionV1p2beta1Paragraph> o) {
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
    o.paragraphs = buildUnnamed2829();
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
    checkUnnamed2829(o.paragraphs);
    checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(o.property);
  }
  buildCounterGoogleCloudVisionV1p2beta1Block--;
}

buildUnnamed2830() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1NormalizedVertex>();
  o.add(buildGoogleCloudVisionV1p2beta1NormalizedVertex());
  o.add(buildGoogleCloudVisionV1p2beta1NormalizedVertex());
  return o;
}

checkUnnamed2830(core.List<api.GoogleCloudVisionV1p2beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1NormalizedVertex(o[0]);
  checkGoogleCloudVisionV1p2beta1NormalizedVertex(o[1]);
}

buildUnnamed2831() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1Vertex>();
  o.add(buildGoogleCloudVisionV1p2beta1Vertex());
  o.add(buildGoogleCloudVisionV1p2beta1Vertex());
  return o;
}

checkUnnamed2831(core.List<api.GoogleCloudVisionV1p2beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Vertex(o[0]);
  checkGoogleCloudVisionV1p2beta1Vertex(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1BoundingPoly = 0;
buildGoogleCloudVisionV1p2beta1BoundingPoly() {
  var o = new api.GoogleCloudVisionV1p2beta1BoundingPoly();
  buildCounterGoogleCloudVisionV1p2beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p2beta1BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed2830();
    o.vertices = buildUnnamed2831();
  }
  buildCounterGoogleCloudVisionV1p2beta1BoundingPoly--;
  return o;
}

checkGoogleCloudVisionV1p2beta1BoundingPoly(
    api.GoogleCloudVisionV1p2beta1BoundingPoly o) {
  buildCounterGoogleCloudVisionV1p2beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p2beta1BoundingPoly < 3) {
    checkUnnamed2830(o.normalizedVertices);
    checkUnnamed2831(o.vertices);
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

buildUnnamed2832() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1CropHint>();
  o.add(buildGoogleCloudVisionV1p2beta1CropHint());
  o.add(buildGoogleCloudVisionV1p2beta1CropHint());
  return o;
}

checkUnnamed2832(core.List<api.GoogleCloudVisionV1p2beta1CropHint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1CropHint(o[0]);
  checkGoogleCloudVisionV1p2beta1CropHint(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation = 0;
buildGoogleCloudVisionV1p2beta1CropHintsAnnotation() {
  var o = new api.GoogleCloudVisionV1p2beta1CropHintsAnnotation();
  buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation < 3) {
    o.cropHints = buildUnnamed2832();
  }
  buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p2beta1CropHintsAnnotation(
    api.GoogleCloudVisionV1p2beta1CropHintsAnnotation o) {
  buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation < 3) {
    checkUnnamed2832(o.cropHints);
  }
  buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation--;
}

buildUnnamed2833() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1ColorInfo>();
  o.add(buildGoogleCloudVisionV1p2beta1ColorInfo());
  o.add(buildGoogleCloudVisionV1p2beta1ColorInfo());
  return o;
}

checkUnnamed2833(core.List<api.GoogleCloudVisionV1p2beta1ColorInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1ColorInfo(o[0]);
  checkGoogleCloudVisionV1p2beta1ColorInfo(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation = 0;
buildGoogleCloudVisionV1p2beta1DominantColorsAnnotation() {
  var o = new api.GoogleCloudVisionV1p2beta1DominantColorsAnnotation();
  buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation < 3) {
    o.colors = buildUnnamed2833();
  }
  buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p2beta1DominantColorsAnnotation(
    api.GoogleCloudVisionV1p2beta1DominantColorsAnnotation o) {
  buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation < 3) {
    checkUnnamed2833(o.colors);
  }
  buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation--;
}

buildUnnamed2834() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1LocationInfo>();
  o.add(buildGoogleCloudVisionV1p2beta1LocationInfo());
  o.add(buildGoogleCloudVisionV1p2beta1LocationInfo());
  return o;
}

checkUnnamed2834(core.List<api.GoogleCloudVisionV1p2beta1LocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1LocationInfo(o[0]);
  checkGoogleCloudVisionV1p2beta1LocationInfo(o[1]);
}

buildUnnamed2835() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1Property>();
  o.add(buildGoogleCloudVisionV1p2beta1Property());
  o.add(buildGoogleCloudVisionV1p2beta1Property());
  return o;
}

checkUnnamed2835(core.List<api.GoogleCloudVisionV1p2beta1Property> o) {
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
    o.locations = buildUnnamed2834();
    o.mid = "foo";
    o.properties = buildUnnamed2835();
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
    checkUnnamed2834(o.locations);
    unittest.expect(o.mid, unittest.equals('foo'));
    checkUnnamed2835(o.properties);
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.topicality, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p2beta1EntityAnnotation--;
}

buildUnnamed2836() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1FaceAnnotationLandmark>();
  o.add(buildGoogleCloudVisionV1p2beta1FaceAnnotationLandmark());
  o.add(buildGoogleCloudVisionV1p2beta1FaceAnnotationLandmark());
  return o;
}

checkUnnamed2836(
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
    o.landmarks = buildUnnamed2836();
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
    checkUnnamed2836(o.landmarks);
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
    o.content = "foo";
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
    unittest.expect(o.content, unittest.equals('foo'));
    checkGoogleCloudVisionV1p2beta1GcsSource(o.gcsSource);
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1InputConfig--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation = 0;
buildGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation() {
  var o = new api.GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation();
  buildCounterGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.languageCode = "foo";
    o.mid = "foo";
    o.name = "foo";
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation(
    api.GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation o) {
  buildCounterGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation < 3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.mid, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation--;
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

buildUnnamed2837() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1Block>();
  o.add(buildGoogleCloudVisionV1p2beta1Block());
  o.add(buildGoogleCloudVisionV1p2beta1Block());
  return o;
}

checkUnnamed2837(core.List<api.GoogleCloudVisionV1p2beta1Block> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Block(o[0]);
  checkGoogleCloudVisionV1p2beta1Block(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1Page = 0;
buildGoogleCloudVisionV1p2beta1Page() {
  var o = new api.GoogleCloudVisionV1p2beta1Page();
  buildCounterGoogleCloudVisionV1p2beta1Page++;
  if (buildCounterGoogleCloudVisionV1p2beta1Page < 3) {
    o.blocks = buildUnnamed2837();
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
    checkUnnamed2837(o.blocks);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.height, unittest.equals(42));
    checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(o.property);
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterGoogleCloudVisionV1p2beta1Page--;
}

buildUnnamed2838() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1Word>();
  o.add(buildGoogleCloudVisionV1p2beta1Word());
  o.add(buildGoogleCloudVisionV1p2beta1Word());
  return o;
}

checkUnnamed2838(core.List<api.GoogleCloudVisionV1p2beta1Word> o) {
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
    o.words = buildUnnamed2838();
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
    checkUnnamed2838(o.words);
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

buildUnnamed2839() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1ProductKeyValue>();
  o.add(buildGoogleCloudVisionV1p2beta1ProductKeyValue());
  o.add(buildGoogleCloudVisionV1p2beta1ProductKeyValue());
  return o;
}

checkUnnamed2839(core.List<api.GoogleCloudVisionV1p2beta1ProductKeyValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1ProductKeyValue(o[0]);
  checkGoogleCloudVisionV1p2beta1ProductKeyValue(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1Product = 0;
buildGoogleCloudVisionV1p2beta1Product() {
  var o = new api.GoogleCloudVisionV1p2beta1Product();
  buildCounterGoogleCloudVisionV1p2beta1Product++;
  if (buildCounterGoogleCloudVisionV1p2beta1Product < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.name = "foo";
    o.productCategory = "foo";
    o.productLabels = buildUnnamed2839();
  }
  buildCounterGoogleCloudVisionV1p2beta1Product--;
  return o;
}

checkGoogleCloudVisionV1p2beta1Product(
    api.GoogleCloudVisionV1p2beta1Product o) {
  buildCounterGoogleCloudVisionV1p2beta1Product++;
  if (buildCounterGoogleCloudVisionV1p2beta1Product < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.productCategory, unittest.equals('foo'));
    checkUnnamed2839(o.productLabels);
  }
  buildCounterGoogleCloudVisionV1p2beta1Product--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1ProductKeyValue = 0;
buildGoogleCloudVisionV1p2beta1ProductKeyValue() {
  var o = new api.GoogleCloudVisionV1p2beta1ProductKeyValue();
  buildCounterGoogleCloudVisionV1p2beta1ProductKeyValue++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductKeyValue < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductKeyValue--;
  return o;
}

checkGoogleCloudVisionV1p2beta1ProductKeyValue(
    api.GoogleCloudVisionV1p2beta1ProductKeyValue o) {
  buildCounterGoogleCloudVisionV1p2beta1ProductKeyValue++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductKeyValue < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductKeyValue--;
}

buildUnnamed2840() {
  var o = new core
      .List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult>();
  o.add(buildGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult());
  o.add(buildGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult());
  return o;
}

checkUnnamed2840(
    core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult(o[0]);
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult(o[1]);
}

buildUnnamed2841() {
  var o =
      new core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult>();
  o.add(buildGoogleCloudVisionV1p2beta1ProductSearchResultsResult());
  o.add(buildGoogleCloudVisionV1p2beta1ProductSearchResultsResult());
  return o;
}

checkUnnamed2841(
    core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsResult(o[0]);
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsResult(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1ProductSearchResults = 0;
buildGoogleCloudVisionV1p2beta1ProductSearchResults() {
  var o = new api.GoogleCloudVisionV1p2beta1ProductSearchResults();
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResults++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResults < 3) {
    o.indexTime = "foo";
    o.productGroupedResults = buildUnnamed2840();
    o.results = buildUnnamed2841();
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResults--;
  return o;
}

checkGoogleCloudVisionV1p2beta1ProductSearchResults(
    api.GoogleCloudVisionV1p2beta1ProductSearchResults o) {
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResults++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResults < 3) {
    unittest.expect(o.indexTime, unittest.equals('foo'));
    checkUnnamed2840(o.productGroupedResults);
    checkUnnamed2841(o.results);
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResults--;
}

buildUnnamed2842() {
  var o = new core.List<
      api.GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation>();
  o.add(buildGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation());
  o.add(buildGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation());
  return o;
}

checkUnnamed2842(
    core.List<
            api.GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation(o[1]);
}

buildUnnamed2843() {
  var o =
      new core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult>();
  o.add(buildGoogleCloudVisionV1p2beta1ProductSearchResultsResult());
  o.add(buildGoogleCloudVisionV1p2beta1ProductSearchResultsResult());
  return o;
}

checkUnnamed2843(
    core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsResult(o[0]);
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsResult(o[1]);
}

core.int
    buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult = 0;
buildGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult() {
  var o = new api.GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult();
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult <
      3) {
    o.boundingPoly = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.objectAnnotations = buildUnnamed2842();
    o.results = buildUnnamed2843();
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult--;
  return o;
}

checkGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult(
    api.GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult o) {
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult <
      3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingPoly);
    checkUnnamed2842(o.objectAnnotations);
    checkUnnamed2843(o.results);
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult--;
}

core.int
    buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation =
    0;
buildGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation() {
  var o =
      new api.GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation();
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation <
      3) {
    o.languageCode = "foo";
    o.mid = "foo";
    o.name = "foo";
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation(
    api.GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation o) {
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation <
      3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.mid, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsResult = 0;
buildGoogleCloudVisionV1p2beta1ProductSearchResultsResult() {
  var o = new api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult();
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsResult++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsResult < 3) {
    o.image = "foo";
    o.product = buildGoogleCloudVisionV1p2beta1Product();
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsResult--;
  return o;
}

checkGoogleCloudVisionV1p2beta1ProductSearchResultsResult(
    api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult o) {
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsResult++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsResult < 3) {
    unittest.expect(o.image, unittest.equals('foo'));
    checkGoogleCloudVisionV1p2beta1Product(o.product);
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsResult--;
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

buildUnnamed2844() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1Page>();
  o.add(buildGoogleCloudVisionV1p2beta1Page());
  o.add(buildGoogleCloudVisionV1p2beta1Page());
  return o;
}

checkUnnamed2844(core.List<api.GoogleCloudVisionV1p2beta1Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Page(o[0]);
  checkGoogleCloudVisionV1p2beta1Page(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1TextAnnotation = 0;
buildGoogleCloudVisionV1p2beta1TextAnnotation() {
  var o = new api.GoogleCloudVisionV1p2beta1TextAnnotation();
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotation < 3) {
    o.pages = buildUnnamed2844();
    o.text = "foo";
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p2beta1TextAnnotation(
    api.GoogleCloudVisionV1p2beta1TextAnnotation o) {
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotation < 3) {
    checkUnnamed2844(o.pages);
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

buildUnnamed2845() {
  var o = new core
      .List<api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage>();
  o.add(buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage());
  o.add(buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage());
  return o;
}

checkUnnamed2845(
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
    o.detectedLanguages = buildUnnamed2845();
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty--;
  return o;
}

checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(
    api.GoogleCloudVisionV1p2beta1TextAnnotationTextProperty o) {
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty < 3) {
    checkGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak(o.detectedBreak);
    checkUnnamed2845(o.detectedLanguages);
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

buildUnnamed2846() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebLabel>();
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebLabel());
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebLabel());
  return o;
}

checkUnnamed2846(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebLabel(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebLabel(o[1]);
}

buildUnnamed2847() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2847(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[1]);
}

buildUnnamed2848() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebPage>();
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebPage());
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebPage());
  return o;
}

checkUnnamed2848(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebPage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebPage(o[1]);
}

buildUnnamed2849() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2849(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[1]);
}

buildUnnamed2850() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2850(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[1]);
}

buildUnnamed2851() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebEntity>();
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebEntity());
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebEntity());
  return o;
}

checkUnnamed2851(
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
    o.bestGuessLabels = buildUnnamed2846();
    o.fullMatchingImages = buildUnnamed2847();
    o.pagesWithMatchingImages = buildUnnamed2848();
    o.partialMatchingImages = buildUnnamed2849();
    o.visuallySimilarImages = buildUnnamed2850();
    o.webEntities = buildUnnamed2851();
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetection--;
  return o;
}

checkGoogleCloudVisionV1p2beta1WebDetection(
    api.GoogleCloudVisionV1p2beta1WebDetection o) {
  buildCounterGoogleCloudVisionV1p2beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetection < 3) {
    checkUnnamed2846(o.bestGuessLabels);
    checkUnnamed2847(o.fullMatchingImages);
    checkUnnamed2848(o.pagesWithMatchingImages);
    checkUnnamed2849(o.partialMatchingImages);
    checkUnnamed2850(o.visuallySimilarImages);
    checkUnnamed2851(o.webEntities);
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

buildUnnamed2852() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2852(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[1]);
}

buildUnnamed2853() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p2beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2853(
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
    o.fullMatchingImages = buildUnnamed2852();
    o.pageTitle = "foo";
    o.partialMatchingImages = buildUnnamed2853();
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
    checkUnnamed2852(o.fullMatchingImages);
    unittest.expect(o.pageTitle, unittest.equals('foo'));
    checkUnnamed2853(o.partialMatchingImages);
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebPage--;
}

buildUnnamed2854() {
  var o = new core.List<api.GoogleCloudVisionV1p2beta1Symbol>();
  o.add(buildGoogleCloudVisionV1p2beta1Symbol());
  o.add(buildGoogleCloudVisionV1p2beta1Symbol());
  return o;
}

checkUnnamed2854(core.List<api.GoogleCloudVisionV1p2beta1Symbol> o) {
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
    o.symbols = buildUnnamed2854();
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
    checkUnnamed2854(o.symbols);
  }
  buildCounterGoogleCloudVisionV1p2beta1Word--;
}

buildUnnamed2855() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1AnnotateImageResponse>();
  o.add(buildGoogleCloudVisionV1p3beta1AnnotateImageResponse());
  o.add(buildGoogleCloudVisionV1p3beta1AnnotateImageResponse());
  return o;
}

checkUnnamed2855(
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
    o.error = buildStatus();
    o.inputConfig = buildGoogleCloudVisionV1p3beta1InputConfig();
    o.responses = buildUnnamed2855();
    o.totalPages = 42;
  }
  buildCounterGoogleCloudVisionV1p3beta1AnnotateFileResponse--;
  return o;
}

checkGoogleCloudVisionV1p3beta1AnnotateFileResponse(
    api.GoogleCloudVisionV1p3beta1AnnotateFileResponse o) {
  buildCounterGoogleCloudVisionV1p3beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1AnnotateFileResponse < 3) {
    checkStatus(o.error);
    checkGoogleCloudVisionV1p3beta1InputConfig(o.inputConfig);
    checkUnnamed2855(o.responses);
    unittest.expect(o.totalPages, unittest.equals(42));
  }
  buildCounterGoogleCloudVisionV1p3beta1AnnotateFileResponse--;
}

buildUnnamed2856() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1FaceAnnotation>();
  o.add(buildGoogleCloudVisionV1p3beta1FaceAnnotation());
  o.add(buildGoogleCloudVisionV1p3beta1FaceAnnotation());
  return o;
}

checkUnnamed2856(core.List<api.GoogleCloudVisionV1p3beta1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1FaceAnnotation(o[0]);
  checkGoogleCloudVisionV1p3beta1FaceAnnotation(o[1]);
}

buildUnnamed2857() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p3beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p3beta1EntityAnnotation());
  return o;
}

checkUnnamed2857(core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[1]);
}

buildUnnamed2858() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p3beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p3beta1EntityAnnotation());
  return o;
}

checkUnnamed2858(core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[1]);
}

buildUnnamed2859() {
  var o =
      new core.List<api.GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation>();
  o.add(buildGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation());
  o.add(buildGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation());
  return o;
}

checkUnnamed2859(
    core.List<api.GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation(o[0]);
  checkGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation(o[1]);
}

buildUnnamed2860() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p3beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p3beta1EntityAnnotation());
  return o;
}

checkUnnamed2860(core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[1]);
}

buildUnnamed2861() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p3beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p3beta1EntityAnnotation());
  return o;
}

checkUnnamed2861(core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation> o) {
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
    o.faceAnnotations = buildUnnamed2856();
    o.fullTextAnnotation = buildGoogleCloudVisionV1p3beta1TextAnnotation();
    o.imagePropertiesAnnotation =
        buildGoogleCloudVisionV1p3beta1ImageProperties();
    o.labelAnnotations = buildUnnamed2857();
    o.landmarkAnnotations = buildUnnamed2858();
    o.localizedObjectAnnotations = buildUnnamed2859();
    o.logoAnnotations = buildUnnamed2860();
    o.productSearchResults =
        buildGoogleCloudVisionV1p3beta1ProductSearchResults();
    o.safeSearchAnnotation =
        buildGoogleCloudVisionV1p3beta1SafeSearchAnnotation();
    o.textAnnotations = buildUnnamed2861();
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
    checkUnnamed2856(o.faceAnnotations);
    checkGoogleCloudVisionV1p3beta1TextAnnotation(o.fullTextAnnotation);
    checkGoogleCloudVisionV1p3beta1ImageProperties(o.imagePropertiesAnnotation);
    checkUnnamed2857(o.labelAnnotations);
    checkUnnamed2858(o.landmarkAnnotations);
    checkUnnamed2859(o.localizedObjectAnnotations);
    checkUnnamed2860(o.logoAnnotations);
    checkGoogleCloudVisionV1p3beta1ProductSearchResults(o.productSearchResults);
    checkGoogleCloudVisionV1p3beta1SafeSearchAnnotation(o.safeSearchAnnotation);
    checkUnnamed2861(o.textAnnotations);
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

buildUnnamed2862() {
  var o =
      new core.List<api.GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse>();
  o.add(buildGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse());
  o.add(buildGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse());
  return o;
}

checkUnnamed2862(
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
    o.responses = buildUnnamed2862();
  }
  buildCounterGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse--;
  return o;
}

checkGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse(
    api.GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse o) {
  buildCounterGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse <
      3) {
    checkUnnamed2862(o.responses);
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

buildUnnamed2863() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1Paragraph>();
  o.add(buildGoogleCloudVisionV1p3beta1Paragraph());
  o.add(buildGoogleCloudVisionV1p3beta1Paragraph());
  return o;
}

checkUnnamed2863(core.List<api.GoogleCloudVisionV1p3beta1Paragraph> o) {
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
    o.paragraphs = buildUnnamed2863();
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
    checkUnnamed2863(o.paragraphs);
    checkGoogleCloudVisionV1p3beta1TextAnnotationTextProperty(o.property);
  }
  buildCounterGoogleCloudVisionV1p3beta1Block--;
}

buildUnnamed2864() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1NormalizedVertex>();
  o.add(buildGoogleCloudVisionV1p3beta1NormalizedVertex());
  o.add(buildGoogleCloudVisionV1p3beta1NormalizedVertex());
  return o;
}

checkUnnamed2864(core.List<api.GoogleCloudVisionV1p3beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1NormalizedVertex(o[0]);
  checkGoogleCloudVisionV1p3beta1NormalizedVertex(o[1]);
}

buildUnnamed2865() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1Vertex>();
  o.add(buildGoogleCloudVisionV1p3beta1Vertex());
  o.add(buildGoogleCloudVisionV1p3beta1Vertex());
  return o;
}

checkUnnamed2865(core.List<api.GoogleCloudVisionV1p3beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1Vertex(o[0]);
  checkGoogleCloudVisionV1p3beta1Vertex(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1BoundingPoly = 0;
buildGoogleCloudVisionV1p3beta1BoundingPoly() {
  var o = new api.GoogleCloudVisionV1p3beta1BoundingPoly();
  buildCounterGoogleCloudVisionV1p3beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p3beta1BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed2864();
    o.vertices = buildUnnamed2865();
  }
  buildCounterGoogleCloudVisionV1p3beta1BoundingPoly--;
  return o;
}

checkGoogleCloudVisionV1p3beta1BoundingPoly(
    api.GoogleCloudVisionV1p3beta1BoundingPoly o) {
  buildCounterGoogleCloudVisionV1p3beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p3beta1BoundingPoly < 3) {
    checkUnnamed2864(o.normalizedVertices);
    checkUnnamed2865(o.vertices);
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

buildUnnamed2866() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1CropHint>();
  o.add(buildGoogleCloudVisionV1p3beta1CropHint());
  o.add(buildGoogleCloudVisionV1p3beta1CropHint());
  return o;
}

checkUnnamed2866(core.List<api.GoogleCloudVisionV1p3beta1CropHint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1CropHint(o[0]);
  checkGoogleCloudVisionV1p3beta1CropHint(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation = 0;
buildGoogleCloudVisionV1p3beta1CropHintsAnnotation() {
  var o = new api.GoogleCloudVisionV1p3beta1CropHintsAnnotation();
  buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation < 3) {
    o.cropHints = buildUnnamed2866();
  }
  buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p3beta1CropHintsAnnotation(
    api.GoogleCloudVisionV1p3beta1CropHintsAnnotation o) {
  buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation < 3) {
    checkUnnamed2866(o.cropHints);
  }
  buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation--;
}

buildUnnamed2867() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1ColorInfo>();
  o.add(buildGoogleCloudVisionV1p3beta1ColorInfo());
  o.add(buildGoogleCloudVisionV1p3beta1ColorInfo());
  return o;
}

checkUnnamed2867(core.List<api.GoogleCloudVisionV1p3beta1ColorInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1ColorInfo(o[0]);
  checkGoogleCloudVisionV1p3beta1ColorInfo(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation = 0;
buildGoogleCloudVisionV1p3beta1DominantColorsAnnotation() {
  var o = new api.GoogleCloudVisionV1p3beta1DominantColorsAnnotation();
  buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation < 3) {
    o.colors = buildUnnamed2867();
  }
  buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p3beta1DominantColorsAnnotation(
    api.GoogleCloudVisionV1p3beta1DominantColorsAnnotation o) {
  buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation < 3) {
    checkUnnamed2867(o.colors);
  }
  buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation--;
}

buildUnnamed2868() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1LocationInfo>();
  o.add(buildGoogleCloudVisionV1p3beta1LocationInfo());
  o.add(buildGoogleCloudVisionV1p3beta1LocationInfo());
  return o;
}

checkUnnamed2868(core.List<api.GoogleCloudVisionV1p3beta1LocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1LocationInfo(o[0]);
  checkGoogleCloudVisionV1p3beta1LocationInfo(o[1]);
}

buildUnnamed2869() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1Property>();
  o.add(buildGoogleCloudVisionV1p3beta1Property());
  o.add(buildGoogleCloudVisionV1p3beta1Property());
  return o;
}

checkUnnamed2869(core.List<api.GoogleCloudVisionV1p3beta1Property> o) {
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
    o.locations = buildUnnamed2868();
    o.mid = "foo";
    o.properties = buildUnnamed2869();
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
    checkUnnamed2868(o.locations);
    unittest.expect(o.mid, unittest.equals('foo'));
    checkUnnamed2869(o.properties);
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.topicality, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p3beta1EntityAnnotation--;
}

buildUnnamed2870() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1FaceAnnotationLandmark>();
  o.add(buildGoogleCloudVisionV1p3beta1FaceAnnotationLandmark());
  o.add(buildGoogleCloudVisionV1p3beta1FaceAnnotationLandmark());
  return o;
}

checkUnnamed2870(
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
    o.landmarks = buildUnnamed2870();
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
    checkUnnamed2870(o.landmarks);
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

buildUnnamed2871() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1ReferenceImage>();
  o.add(buildGoogleCloudVisionV1p3beta1ReferenceImage());
  o.add(buildGoogleCloudVisionV1p3beta1ReferenceImage());
  return o;
}

checkUnnamed2871(core.List<api.GoogleCloudVisionV1p3beta1ReferenceImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1ReferenceImage(o[0]);
  checkGoogleCloudVisionV1p3beta1ReferenceImage(o[1]);
}

buildUnnamed2872() {
  var o = new core.List<api.Status>();
  o.add(buildStatus());
  o.add(buildStatus());
  return o;
}

checkUnnamed2872(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse = 0;
buildGoogleCloudVisionV1p3beta1ImportProductSetsResponse() {
  var o = new api.GoogleCloudVisionV1p3beta1ImportProductSetsResponse();
  buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse < 3) {
    o.referenceImages = buildUnnamed2871();
    o.statuses = buildUnnamed2872();
  }
  buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse--;
  return o;
}

checkGoogleCloudVisionV1p3beta1ImportProductSetsResponse(
    api.GoogleCloudVisionV1p3beta1ImportProductSetsResponse o) {
  buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse < 3) {
    checkUnnamed2871(o.referenceImages);
    checkUnnamed2872(o.statuses);
  }
  buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1InputConfig = 0;
buildGoogleCloudVisionV1p3beta1InputConfig() {
  var o = new api.GoogleCloudVisionV1p3beta1InputConfig();
  buildCounterGoogleCloudVisionV1p3beta1InputConfig++;
  if (buildCounterGoogleCloudVisionV1p3beta1InputConfig < 3) {
    o.content = "foo";
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
    unittest.expect(o.content, unittest.equals('foo'));
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

buildUnnamed2873() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1Block>();
  o.add(buildGoogleCloudVisionV1p3beta1Block());
  o.add(buildGoogleCloudVisionV1p3beta1Block());
  return o;
}

checkUnnamed2873(core.List<api.GoogleCloudVisionV1p3beta1Block> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1Block(o[0]);
  checkGoogleCloudVisionV1p3beta1Block(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1Page = 0;
buildGoogleCloudVisionV1p3beta1Page() {
  var o = new api.GoogleCloudVisionV1p3beta1Page();
  buildCounterGoogleCloudVisionV1p3beta1Page++;
  if (buildCounterGoogleCloudVisionV1p3beta1Page < 3) {
    o.blocks = buildUnnamed2873();
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
    checkUnnamed2873(o.blocks);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.height, unittest.equals(42));
    checkGoogleCloudVisionV1p3beta1TextAnnotationTextProperty(o.property);
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterGoogleCloudVisionV1p3beta1Page--;
}

buildUnnamed2874() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1Word>();
  o.add(buildGoogleCloudVisionV1p3beta1Word());
  o.add(buildGoogleCloudVisionV1p3beta1Word());
  return o;
}

checkUnnamed2874(core.List<api.GoogleCloudVisionV1p3beta1Word> o) {
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
    o.words = buildUnnamed2874();
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
    checkUnnamed2874(o.words);
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

buildUnnamed2875() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1ProductKeyValue>();
  o.add(buildGoogleCloudVisionV1p3beta1ProductKeyValue());
  o.add(buildGoogleCloudVisionV1p3beta1ProductKeyValue());
  return o;
}

checkUnnamed2875(core.List<api.GoogleCloudVisionV1p3beta1ProductKeyValue> o) {
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
    o.productLabels = buildUnnamed2875();
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
    checkUnnamed2875(o.productLabels);
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

buildUnnamed2876() {
  var o = new core
      .List<api.GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult>();
  o.add(buildGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult());
  o.add(buildGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult());
  return o;
}

checkUnnamed2876(
    core.List<api.GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult(o[0]);
  checkGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult(o[1]);
}

buildUnnamed2877() {
  var o =
      new core.List<api.GoogleCloudVisionV1p3beta1ProductSearchResultsResult>();
  o.add(buildGoogleCloudVisionV1p3beta1ProductSearchResultsResult());
  o.add(buildGoogleCloudVisionV1p3beta1ProductSearchResultsResult());
  return o;
}

checkUnnamed2877(
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
    o.productGroupedResults = buildUnnamed2876();
    o.results = buildUnnamed2877();
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResults--;
  return o;
}

checkGoogleCloudVisionV1p3beta1ProductSearchResults(
    api.GoogleCloudVisionV1p3beta1ProductSearchResults o) {
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResults++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductSearchResults < 3) {
    unittest.expect(o.indexTime, unittest.equals('foo'));
    checkUnnamed2876(o.productGroupedResults);
    checkUnnamed2877(o.results);
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResults--;
}

buildUnnamed2878() {
  var o = new core.List<
      api.GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation>();
  o.add(buildGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation());
  o.add(buildGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation());
  return o;
}

checkUnnamed2878(
    core.List<
            api.GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation(o[0]);
  checkGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation(o[1]);
}

buildUnnamed2879() {
  var o =
      new core.List<api.GoogleCloudVisionV1p3beta1ProductSearchResultsResult>();
  o.add(buildGoogleCloudVisionV1p3beta1ProductSearchResultsResult());
  o.add(buildGoogleCloudVisionV1p3beta1ProductSearchResultsResult());
  return o;
}

checkUnnamed2879(
    core.List<api.GoogleCloudVisionV1p3beta1ProductSearchResultsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1ProductSearchResultsResult(o[0]);
  checkGoogleCloudVisionV1p3beta1ProductSearchResultsResult(o[1]);
}

core.int
    buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult = 0;
buildGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult() {
  var o = new api.GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult();
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult <
      3) {
    o.boundingPoly = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.objectAnnotations = buildUnnamed2878();
    o.results = buildUnnamed2879();
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult--;
  return o;
}

checkGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult(
    api.GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult o) {
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult <
      3) {
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.boundingPoly);
    checkUnnamed2878(o.objectAnnotations);
    checkUnnamed2879(o.results);
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult--;
}

core.int
    buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation =
    0;
buildGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation() {
  var o =
      new api.GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation();
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation <
      3) {
    o.languageCode = "foo";
    o.mid = "foo";
    o.name = "foo";
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation(
    api.GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation o) {
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation <
      3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.mid, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation--;
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

buildUnnamed2880() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1BoundingPoly>();
  o.add(buildGoogleCloudVisionV1p3beta1BoundingPoly());
  o.add(buildGoogleCloudVisionV1p3beta1BoundingPoly());
  return o;
}

checkUnnamed2880(core.List<api.GoogleCloudVisionV1p3beta1BoundingPoly> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1BoundingPoly(o[0]);
  checkGoogleCloudVisionV1p3beta1BoundingPoly(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1ReferenceImage = 0;
buildGoogleCloudVisionV1p3beta1ReferenceImage() {
  var o = new api.GoogleCloudVisionV1p3beta1ReferenceImage();
  buildCounterGoogleCloudVisionV1p3beta1ReferenceImage++;
  if (buildCounterGoogleCloudVisionV1p3beta1ReferenceImage < 3) {
    o.boundingPolys = buildUnnamed2880();
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
    checkUnnamed2880(o.boundingPolys);
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

buildUnnamed2881() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1Page>();
  o.add(buildGoogleCloudVisionV1p3beta1Page());
  o.add(buildGoogleCloudVisionV1p3beta1Page());
  return o;
}

checkUnnamed2881(core.List<api.GoogleCloudVisionV1p3beta1Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1Page(o[0]);
  checkGoogleCloudVisionV1p3beta1Page(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1TextAnnotation = 0;
buildGoogleCloudVisionV1p3beta1TextAnnotation() {
  var o = new api.GoogleCloudVisionV1p3beta1TextAnnotation();
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1TextAnnotation < 3) {
    o.pages = buildUnnamed2881();
    o.text = "foo";
  }
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p3beta1TextAnnotation(
    api.GoogleCloudVisionV1p3beta1TextAnnotation o) {
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1TextAnnotation < 3) {
    checkUnnamed2881(o.pages);
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

buildUnnamed2882() {
  var o = new core
      .List<api.GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage>();
  o.add(buildGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage());
  o.add(buildGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage());
  return o;
}

checkUnnamed2882(
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
    o.detectedLanguages = buildUnnamed2882();
  }
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationTextProperty--;
  return o;
}

checkGoogleCloudVisionV1p3beta1TextAnnotationTextProperty(
    api.GoogleCloudVisionV1p3beta1TextAnnotationTextProperty o) {
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p3beta1TextAnnotationTextProperty < 3) {
    checkGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak(o.detectedBreak);
    checkUnnamed2882(o.detectedLanguages);
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

buildUnnamed2883() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebLabel>();
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebLabel());
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebLabel());
  return o;
}

checkUnnamed2883(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebLabel(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebLabel(o[1]);
}

buildUnnamed2884() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2884(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[1]);
}

buildUnnamed2885() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebPage>();
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebPage());
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebPage());
  return o;
}

checkUnnamed2885(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebPage(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebPage(o[1]);
}

buildUnnamed2886() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2886(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[1]);
}

buildUnnamed2887() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2887(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[1]);
}

buildUnnamed2888() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebEntity>();
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebEntity());
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebEntity());
  return o;
}

checkUnnamed2888(
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
    o.bestGuessLabels = buildUnnamed2883();
    o.fullMatchingImages = buildUnnamed2884();
    o.pagesWithMatchingImages = buildUnnamed2885();
    o.partialMatchingImages = buildUnnamed2886();
    o.visuallySimilarImages = buildUnnamed2887();
    o.webEntities = buildUnnamed2888();
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetection--;
  return o;
}

checkGoogleCloudVisionV1p3beta1WebDetection(
    api.GoogleCloudVisionV1p3beta1WebDetection o) {
  buildCounterGoogleCloudVisionV1p3beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetection < 3) {
    checkUnnamed2883(o.bestGuessLabels);
    checkUnnamed2884(o.fullMatchingImages);
    checkUnnamed2885(o.pagesWithMatchingImages);
    checkUnnamed2886(o.partialMatchingImages);
    checkUnnamed2887(o.visuallySimilarImages);
    checkUnnamed2888(o.webEntities);
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

buildUnnamed2889() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2889(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[1]);
}

buildUnnamed2890() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p3beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2890(
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
    o.fullMatchingImages = buildUnnamed2889();
    o.pageTitle = "foo";
    o.partialMatchingImages = buildUnnamed2890();
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
    checkUnnamed2889(o.fullMatchingImages);
    unittest.expect(o.pageTitle, unittest.equals('foo'));
    checkUnnamed2890(o.partialMatchingImages);
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebPage--;
}

buildUnnamed2891() {
  var o = new core.List<api.GoogleCloudVisionV1p3beta1Symbol>();
  o.add(buildGoogleCloudVisionV1p3beta1Symbol());
  o.add(buildGoogleCloudVisionV1p3beta1Symbol());
  return o;
}

checkUnnamed2891(core.List<api.GoogleCloudVisionV1p3beta1Symbol> o) {
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
    o.symbols = buildUnnamed2891();
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
    checkUnnamed2891(o.symbols);
  }
  buildCounterGoogleCloudVisionV1p3beta1Word--;
}

buildUnnamed2892() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1AnnotateImageResponse>();
  o.add(buildGoogleCloudVisionV1p4beta1AnnotateImageResponse());
  o.add(buildGoogleCloudVisionV1p4beta1AnnotateImageResponse());
  return o;
}

checkUnnamed2892(
    core.List<api.GoogleCloudVisionV1p4beta1AnnotateImageResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1AnnotateImageResponse(o[0]);
  checkGoogleCloudVisionV1p4beta1AnnotateImageResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1AnnotateFileResponse = 0;
buildGoogleCloudVisionV1p4beta1AnnotateFileResponse() {
  var o = new api.GoogleCloudVisionV1p4beta1AnnotateFileResponse();
  buildCounterGoogleCloudVisionV1p4beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AnnotateFileResponse < 3) {
    o.error = buildStatus();
    o.inputConfig = buildGoogleCloudVisionV1p4beta1InputConfig();
    o.responses = buildUnnamed2892();
    o.totalPages = 42;
  }
  buildCounterGoogleCloudVisionV1p4beta1AnnotateFileResponse--;
  return o;
}

checkGoogleCloudVisionV1p4beta1AnnotateFileResponse(
    api.GoogleCloudVisionV1p4beta1AnnotateFileResponse o) {
  buildCounterGoogleCloudVisionV1p4beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AnnotateFileResponse < 3) {
    checkStatus(o.error);
    checkGoogleCloudVisionV1p4beta1InputConfig(o.inputConfig);
    checkUnnamed2892(o.responses);
    unittest.expect(o.totalPages, unittest.equals(42));
  }
  buildCounterGoogleCloudVisionV1p4beta1AnnotateFileResponse--;
}

buildUnnamed2893() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1FaceAnnotation>();
  o.add(buildGoogleCloudVisionV1p4beta1FaceAnnotation());
  o.add(buildGoogleCloudVisionV1p4beta1FaceAnnotation());
  return o;
}

checkUnnamed2893(core.List<api.GoogleCloudVisionV1p4beta1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1FaceAnnotation(o[0]);
  checkGoogleCloudVisionV1p4beta1FaceAnnotation(o[1]);
}

buildUnnamed2894() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p4beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p4beta1EntityAnnotation());
  return o;
}

checkUnnamed2894(core.List<api.GoogleCloudVisionV1p4beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p4beta1EntityAnnotation(o[1]);
}

buildUnnamed2895() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p4beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p4beta1EntityAnnotation());
  return o;
}

checkUnnamed2895(core.List<api.GoogleCloudVisionV1p4beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p4beta1EntityAnnotation(o[1]);
}

buildUnnamed2896() {
  var o =
      new core.List<api.GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation>();
  o.add(buildGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation());
  o.add(buildGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation());
  return o;
}

checkUnnamed2896(
    core.List<api.GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation(o[0]);
  checkGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation(o[1]);
}

buildUnnamed2897() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p4beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p4beta1EntityAnnotation());
  return o;
}

checkUnnamed2897(core.List<api.GoogleCloudVisionV1p4beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p4beta1EntityAnnotation(o[1]);
}

buildUnnamed2898() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1EntityAnnotation>();
  o.add(buildGoogleCloudVisionV1p4beta1EntityAnnotation());
  o.add(buildGoogleCloudVisionV1p4beta1EntityAnnotation());
  return o;
}

checkUnnamed2898(core.List<api.GoogleCloudVisionV1p4beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p4beta1EntityAnnotation(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1AnnotateImageResponse = 0;
buildGoogleCloudVisionV1p4beta1AnnotateImageResponse() {
  var o = new api.GoogleCloudVisionV1p4beta1AnnotateImageResponse();
  buildCounterGoogleCloudVisionV1p4beta1AnnotateImageResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AnnotateImageResponse < 3) {
    o.context = buildGoogleCloudVisionV1p4beta1ImageAnnotationContext();
    o.cropHintsAnnotation =
        buildGoogleCloudVisionV1p4beta1CropHintsAnnotation();
    o.error = buildStatus();
    o.faceAnnotations = buildUnnamed2893();
    o.fullTextAnnotation = buildGoogleCloudVisionV1p4beta1TextAnnotation();
    o.imagePropertiesAnnotation =
        buildGoogleCloudVisionV1p4beta1ImageProperties();
    o.labelAnnotations = buildUnnamed2894();
    o.landmarkAnnotations = buildUnnamed2895();
    o.localizedObjectAnnotations = buildUnnamed2896();
    o.logoAnnotations = buildUnnamed2897();
    o.productSearchResults =
        buildGoogleCloudVisionV1p4beta1ProductSearchResults();
    o.safeSearchAnnotation =
        buildGoogleCloudVisionV1p4beta1SafeSearchAnnotation();
    o.textAnnotations = buildUnnamed2898();
    o.webDetection = buildGoogleCloudVisionV1p4beta1WebDetection();
  }
  buildCounterGoogleCloudVisionV1p4beta1AnnotateImageResponse--;
  return o;
}

checkGoogleCloudVisionV1p4beta1AnnotateImageResponse(
    api.GoogleCloudVisionV1p4beta1AnnotateImageResponse o) {
  buildCounterGoogleCloudVisionV1p4beta1AnnotateImageResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AnnotateImageResponse < 3) {
    checkGoogleCloudVisionV1p4beta1ImageAnnotationContext(o.context);
    checkGoogleCloudVisionV1p4beta1CropHintsAnnotation(o.cropHintsAnnotation);
    checkStatus(o.error);
    checkUnnamed2893(o.faceAnnotations);
    checkGoogleCloudVisionV1p4beta1TextAnnotation(o.fullTextAnnotation);
    checkGoogleCloudVisionV1p4beta1ImageProperties(o.imagePropertiesAnnotation);
    checkUnnamed2894(o.labelAnnotations);
    checkUnnamed2895(o.landmarkAnnotations);
    checkUnnamed2896(o.localizedObjectAnnotations);
    checkUnnamed2897(o.logoAnnotations);
    checkGoogleCloudVisionV1p4beta1ProductSearchResults(o.productSearchResults);
    checkGoogleCloudVisionV1p4beta1SafeSearchAnnotation(o.safeSearchAnnotation);
    checkUnnamed2898(o.textAnnotations);
    checkGoogleCloudVisionV1p4beta1WebDetection(o.webDetection);
  }
  buildCounterGoogleCloudVisionV1p4beta1AnnotateImageResponse--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse = 0;
buildGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse() {
  var o = new api.GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse();
  buildCounterGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse < 3) {
    o.outputConfig = buildGoogleCloudVisionV1p4beta1OutputConfig();
  }
  buildCounterGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse--;
  return o;
}

checkGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse(
    api.GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse o) {
  buildCounterGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse < 3) {
    checkGoogleCloudVisionV1p4beta1OutputConfig(o.outputConfig);
  }
  buildCounterGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse--;
}

buildUnnamed2899() {
  var o =
      new core.List<api.GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse>();
  o.add(buildGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse());
  o.add(buildGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse());
  return o;
}

checkUnnamed2899(
    core.List<api.GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse(o[0]);
  checkGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse =
    0;
buildGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse() {
  var o = new api.GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse();
  buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse <
      3) {
    o.responses = buildUnnamed2899();
  }
  buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse--;
  return o;
}

checkGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse(
    api.GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse o) {
  buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse <
      3) {
    checkUnnamed2899(o.responses);
  }
  buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse--;
}

core.int
    buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse = 0;
buildGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse() {
  var o = new api.GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse();
  buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse <
      3) {
    o.outputConfig = buildGoogleCloudVisionV1p4beta1OutputConfig();
  }
  buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse--;
  return o;
}

checkGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse(
    api.GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse o) {
  buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse <
      3) {
    checkGoogleCloudVisionV1p4beta1OutputConfig(o.outputConfig);
  }
  buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse--;
}

buildUnnamed2900() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1AnnotateFileResponse>();
  o.add(buildGoogleCloudVisionV1p4beta1AnnotateFileResponse());
  o.add(buildGoogleCloudVisionV1p4beta1AnnotateFileResponse());
  return o;
}

checkUnnamed2900(
    core.List<api.GoogleCloudVisionV1p4beta1AnnotateFileResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1AnnotateFileResponse(o[0]);
  checkGoogleCloudVisionV1p4beta1AnnotateFileResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse = 0;
buildGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse() {
  var o = new api.GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse();
  buildCounterGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse < 3) {
    o.responses = buildUnnamed2900();
  }
  buildCounterGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse--;
  return o;
}

checkGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse(
    api.GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse o) {
  buildCounterGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse < 3) {
    checkUnnamed2900(o.responses);
  }
  buildCounterGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1BatchOperationMetadata = 0;
buildGoogleCloudVisionV1p4beta1BatchOperationMetadata() {
  var o = new api.GoogleCloudVisionV1p4beta1BatchOperationMetadata();
  buildCounterGoogleCloudVisionV1p4beta1BatchOperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p4beta1BatchOperationMetadata < 3) {
    o.endTime = "foo";
    o.state = "foo";
    o.submitTime = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1BatchOperationMetadata--;
  return o;
}

checkGoogleCloudVisionV1p4beta1BatchOperationMetadata(
    api.GoogleCloudVisionV1p4beta1BatchOperationMetadata o) {
  buildCounterGoogleCloudVisionV1p4beta1BatchOperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p4beta1BatchOperationMetadata < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.submitTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1BatchOperationMetadata--;
}

buildUnnamed2901() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1Paragraph>();
  o.add(buildGoogleCloudVisionV1p4beta1Paragraph());
  o.add(buildGoogleCloudVisionV1p4beta1Paragraph());
  return o;
}

checkUnnamed2901(core.List<api.GoogleCloudVisionV1p4beta1Paragraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1Paragraph(o[0]);
  checkGoogleCloudVisionV1p4beta1Paragraph(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1Block = 0;
buildGoogleCloudVisionV1p4beta1Block() {
  var o = new api.GoogleCloudVisionV1p4beta1Block();
  buildCounterGoogleCloudVisionV1p4beta1Block++;
  if (buildCounterGoogleCloudVisionV1p4beta1Block < 3) {
    o.blockType = "foo";
    o.boundingBox = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.confidence = 42.0;
    o.paragraphs = buildUnnamed2901();
    o.property = buildGoogleCloudVisionV1p4beta1TextAnnotationTextProperty();
  }
  buildCounterGoogleCloudVisionV1p4beta1Block--;
  return o;
}

checkGoogleCloudVisionV1p4beta1Block(api.GoogleCloudVisionV1p4beta1Block o) {
  buildCounterGoogleCloudVisionV1p4beta1Block++;
  if (buildCounterGoogleCloudVisionV1p4beta1Block < 3) {
    unittest.expect(o.blockType, unittest.equals('foo'));
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkUnnamed2901(o.paragraphs);
    checkGoogleCloudVisionV1p4beta1TextAnnotationTextProperty(o.property);
  }
  buildCounterGoogleCloudVisionV1p4beta1Block--;
}

buildUnnamed2902() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1NormalizedVertex>();
  o.add(buildGoogleCloudVisionV1p4beta1NormalizedVertex());
  o.add(buildGoogleCloudVisionV1p4beta1NormalizedVertex());
  return o;
}

checkUnnamed2902(core.List<api.GoogleCloudVisionV1p4beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1NormalizedVertex(o[0]);
  checkGoogleCloudVisionV1p4beta1NormalizedVertex(o[1]);
}

buildUnnamed2903() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1Vertex>();
  o.add(buildGoogleCloudVisionV1p4beta1Vertex());
  o.add(buildGoogleCloudVisionV1p4beta1Vertex());
  return o;
}

checkUnnamed2903(core.List<api.GoogleCloudVisionV1p4beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1Vertex(o[0]);
  checkGoogleCloudVisionV1p4beta1Vertex(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1BoundingPoly = 0;
buildGoogleCloudVisionV1p4beta1BoundingPoly() {
  var o = new api.GoogleCloudVisionV1p4beta1BoundingPoly();
  buildCounterGoogleCloudVisionV1p4beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p4beta1BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed2902();
    o.vertices = buildUnnamed2903();
  }
  buildCounterGoogleCloudVisionV1p4beta1BoundingPoly--;
  return o;
}

checkGoogleCloudVisionV1p4beta1BoundingPoly(
    api.GoogleCloudVisionV1p4beta1BoundingPoly o) {
  buildCounterGoogleCloudVisionV1p4beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p4beta1BoundingPoly < 3) {
    checkUnnamed2902(o.normalizedVertices);
    checkUnnamed2903(o.vertices);
  }
  buildCounterGoogleCloudVisionV1p4beta1BoundingPoly--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1Celebrity = 0;
buildGoogleCloudVisionV1p4beta1Celebrity() {
  var o = new api.GoogleCloudVisionV1p4beta1Celebrity();
  buildCounterGoogleCloudVisionV1p4beta1Celebrity++;
  if (buildCounterGoogleCloudVisionV1p4beta1Celebrity < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.name = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1Celebrity--;
  return o;
}

checkGoogleCloudVisionV1p4beta1Celebrity(
    api.GoogleCloudVisionV1p4beta1Celebrity o) {
  buildCounterGoogleCloudVisionV1p4beta1Celebrity++;
  if (buildCounterGoogleCloudVisionV1p4beta1Celebrity < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1Celebrity--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1ColorInfo = 0;
buildGoogleCloudVisionV1p4beta1ColorInfo() {
  var o = new api.GoogleCloudVisionV1p4beta1ColorInfo();
  buildCounterGoogleCloudVisionV1p4beta1ColorInfo++;
  if (buildCounterGoogleCloudVisionV1p4beta1ColorInfo < 3) {
    o.color = buildColor();
    o.pixelFraction = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1ColorInfo--;
  return o;
}

checkGoogleCloudVisionV1p4beta1ColorInfo(
    api.GoogleCloudVisionV1p4beta1ColorInfo o) {
  buildCounterGoogleCloudVisionV1p4beta1ColorInfo++;
  if (buildCounterGoogleCloudVisionV1p4beta1ColorInfo < 3) {
    checkColor(o.color);
    unittest.expect(o.pixelFraction, unittest.equals(42.0));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p4beta1ColorInfo--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1CropHint = 0;
buildGoogleCloudVisionV1p4beta1CropHint() {
  var o = new api.GoogleCloudVisionV1p4beta1CropHint();
  buildCounterGoogleCloudVisionV1p4beta1CropHint++;
  if (buildCounterGoogleCloudVisionV1p4beta1CropHint < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.confidence = 42.0;
    o.importanceFraction = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1CropHint--;
  return o;
}

checkGoogleCloudVisionV1p4beta1CropHint(
    api.GoogleCloudVisionV1p4beta1CropHint o) {
  buildCounterGoogleCloudVisionV1p4beta1CropHint++;
  if (buildCounterGoogleCloudVisionV1p4beta1CropHint < 3) {
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.importanceFraction, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p4beta1CropHint--;
}

buildUnnamed2904() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1CropHint>();
  o.add(buildGoogleCloudVisionV1p4beta1CropHint());
  o.add(buildGoogleCloudVisionV1p4beta1CropHint());
  return o;
}

checkUnnamed2904(core.List<api.GoogleCloudVisionV1p4beta1CropHint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1CropHint(o[0]);
  checkGoogleCloudVisionV1p4beta1CropHint(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1CropHintsAnnotation = 0;
buildGoogleCloudVisionV1p4beta1CropHintsAnnotation() {
  var o = new api.GoogleCloudVisionV1p4beta1CropHintsAnnotation();
  buildCounterGoogleCloudVisionV1p4beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1CropHintsAnnotation < 3) {
    o.cropHints = buildUnnamed2904();
  }
  buildCounterGoogleCloudVisionV1p4beta1CropHintsAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p4beta1CropHintsAnnotation(
    api.GoogleCloudVisionV1p4beta1CropHintsAnnotation o) {
  buildCounterGoogleCloudVisionV1p4beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1CropHintsAnnotation < 3) {
    checkUnnamed2904(o.cropHints);
  }
  buildCounterGoogleCloudVisionV1p4beta1CropHintsAnnotation--;
}

buildUnnamed2905() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1ColorInfo>();
  o.add(buildGoogleCloudVisionV1p4beta1ColorInfo());
  o.add(buildGoogleCloudVisionV1p4beta1ColorInfo());
  return o;
}

checkUnnamed2905(core.List<api.GoogleCloudVisionV1p4beta1ColorInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1ColorInfo(o[0]);
  checkGoogleCloudVisionV1p4beta1ColorInfo(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1DominantColorsAnnotation = 0;
buildGoogleCloudVisionV1p4beta1DominantColorsAnnotation() {
  var o = new api.GoogleCloudVisionV1p4beta1DominantColorsAnnotation();
  buildCounterGoogleCloudVisionV1p4beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1DominantColorsAnnotation < 3) {
    o.colors = buildUnnamed2905();
  }
  buildCounterGoogleCloudVisionV1p4beta1DominantColorsAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p4beta1DominantColorsAnnotation(
    api.GoogleCloudVisionV1p4beta1DominantColorsAnnotation o) {
  buildCounterGoogleCloudVisionV1p4beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1DominantColorsAnnotation < 3) {
    checkUnnamed2905(o.colors);
  }
  buildCounterGoogleCloudVisionV1p4beta1DominantColorsAnnotation--;
}

buildUnnamed2906() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1LocationInfo>();
  o.add(buildGoogleCloudVisionV1p4beta1LocationInfo());
  o.add(buildGoogleCloudVisionV1p4beta1LocationInfo());
  return o;
}

checkUnnamed2906(core.List<api.GoogleCloudVisionV1p4beta1LocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1LocationInfo(o[0]);
  checkGoogleCloudVisionV1p4beta1LocationInfo(o[1]);
}

buildUnnamed2907() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1Property>();
  o.add(buildGoogleCloudVisionV1p4beta1Property());
  o.add(buildGoogleCloudVisionV1p4beta1Property());
  return o;
}

checkUnnamed2907(core.List<api.GoogleCloudVisionV1p4beta1Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1Property(o[0]);
  checkGoogleCloudVisionV1p4beta1Property(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1EntityAnnotation = 0;
buildGoogleCloudVisionV1p4beta1EntityAnnotation() {
  var o = new api.GoogleCloudVisionV1p4beta1EntityAnnotation();
  buildCounterGoogleCloudVisionV1p4beta1EntityAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1EntityAnnotation < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.confidence = 42.0;
    o.description = "foo";
    o.locale = "foo";
    o.locations = buildUnnamed2906();
    o.mid = "foo";
    o.properties = buildUnnamed2907();
    o.score = 42.0;
    o.topicality = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1EntityAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p4beta1EntityAnnotation(
    api.GoogleCloudVisionV1p4beta1EntityAnnotation o) {
  buildCounterGoogleCloudVisionV1p4beta1EntityAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1EntityAnnotation < 3) {
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.locale, unittest.equals('foo'));
    checkUnnamed2906(o.locations);
    unittest.expect(o.mid, unittest.equals('foo'));
    checkUnnamed2907(o.properties);
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.topicality, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p4beta1EntityAnnotation--;
}

buildUnnamed2908() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1FaceAnnotationLandmark>();
  o.add(buildGoogleCloudVisionV1p4beta1FaceAnnotationLandmark());
  o.add(buildGoogleCloudVisionV1p4beta1FaceAnnotationLandmark());
  return o;
}

checkUnnamed2908(
    core.List<api.GoogleCloudVisionV1p4beta1FaceAnnotationLandmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1FaceAnnotationLandmark(o[0]);
  checkGoogleCloudVisionV1p4beta1FaceAnnotationLandmark(o[1]);
}

buildUnnamed2909() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1FaceRecognitionResult>();
  o.add(buildGoogleCloudVisionV1p4beta1FaceRecognitionResult());
  o.add(buildGoogleCloudVisionV1p4beta1FaceRecognitionResult());
  return o;
}

checkUnnamed2909(
    core.List<api.GoogleCloudVisionV1p4beta1FaceRecognitionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1FaceRecognitionResult(o[0]);
  checkGoogleCloudVisionV1p4beta1FaceRecognitionResult(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1FaceAnnotation = 0;
buildGoogleCloudVisionV1p4beta1FaceAnnotation() {
  var o = new api.GoogleCloudVisionV1p4beta1FaceAnnotation();
  buildCounterGoogleCloudVisionV1p4beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1FaceAnnotation < 3) {
    o.angerLikelihood = "foo";
    o.blurredLikelihood = "foo";
    o.boundingPoly = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.detectionConfidence = 42.0;
    o.fdBoundingPoly = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.headwearLikelihood = "foo";
    o.joyLikelihood = "foo";
    o.landmarkingConfidence = 42.0;
    o.landmarks = buildUnnamed2908();
    o.panAngle = 42.0;
    o.recognitionResult = buildUnnamed2909();
    o.rollAngle = 42.0;
    o.sorrowLikelihood = "foo";
    o.surpriseLikelihood = "foo";
    o.tiltAngle = 42.0;
    o.underExposedLikelihood = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1FaceAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p4beta1FaceAnnotation(
    api.GoogleCloudVisionV1p4beta1FaceAnnotation o) {
  buildCounterGoogleCloudVisionV1p4beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1FaceAnnotation < 3) {
    unittest.expect(o.angerLikelihood, unittest.equals('foo'));
    unittest.expect(o.blurredLikelihood, unittest.equals('foo'));
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.detectionConfidence, unittest.equals(42.0));
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.fdBoundingPoly);
    unittest.expect(o.headwearLikelihood, unittest.equals('foo'));
    unittest.expect(o.joyLikelihood, unittest.equals('foo'));
    unittest.expect(o.landmarkingConfidence, unittest.equals(42.0));
    checkUnnamed2908(o.landmarks);
    unittest.expect(o.panAngle, unittest.equals(42.0));
    checkUnnamed2909(o.recognitionResult);
    unittest.expect(o.rollAngle, unittest.equals(42.0));
    unittest.expect(o.sorrowLikelihood, unittest.equals('foo'));
    unittest.expect(o.surpriseLikelihood, unittest.equals('foo'));
    unittest.expect(o.tiltAngle, unittest.equals(42.0));
    unittest.expect(o.underExposedLikelihood, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1FaceAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1FaceAnnotationLandmark = 0;
buildGoogleCloudVisionV1p4beta1FaceAnnotationLandmark() {
  var o = new api.GoogleCloudVisionV1p4beta1FaceAnnotationLandmark();
  buildCounterGoogleCloudVisionV1p4beta1FaceAnnotationLandmark++;
  if (buildCounterGoogleCloudVisionV1p4beta1FaceAnnotationLandmark < 3) {
    o.position = buildGoogleCloudVisionV1p4beta1Position();
    o.type = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1FaceAnnotationLandmark--;
  return o;
}

checkGoogleCloudVisionV1p4beta1FaceAnnotationLandmark(
    api.GoogleCloudVisionV1p4beta1FaceAnnotationLandmark o) {
  buildCounterGoogleCloudVisionV1p4beta1FaceAnnotationLandmark++;
  if (buildCounterGoogleCloudVisionV1p4beta1FaceAnnotationLandmark < 3) {
    checkGoogleCloudVisionV1p4beta1Position(o.position);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1FaceAnnotationLandmark--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1FaceRecognitionResult = 0;
buildGoogleCloudVisionV1p4beta1FaceRecognitionResult() {
  var o = new api.GoogleCloudVisionV1p4beta1FaceRecognitionResult();
  buildCounterGoogleCloudVisionV1p4beta1FaceRecognitionResult++;
  if (buildCounterGoogleCloudVisionV1p4beta1FaceRecognitionResult < 3) {
    o.celebrity = buildGoogleCloudVisionV1p4beta1Celebrity();
    o.confidence = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1FaceRecognitionResult--;
  return o;
}

checkGoogleCloudVisionV1p4beta1FaceRecognitionResult(
    api.GoogleCloudVisionV1p4beta1FaceRecognitionResult o) {
  buildCounterGoogleCloudVisionV1p4beta1FaceRecognitionResult++;
  if (buildCounterGoogleCloudVisionV1p4beta1FaceRecognitionResult < 3) {
    checkGoogleCloudVisionV1p4beta1Celebrity(o.celebrity);
    unittest.expect(o.confidence, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p4beta1FaceRecognitionResult--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1GcsDestination = 0;
buildGoogleCloudVisionV1p4beta1GcsDestination() {
  var o = new api.GoogleCloudVisionV1p4beta1GcsDestination();
  buildCounterGoogleCloudVisionV1p4beta1GcsDestination++;
  if (buildCounterGoogleCloudVisionV1p4beta1GcsDestination < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1GcsDestination--;
  return o;
}

checkGoogleCloudVisionV1p4beta1GcsDestination(
    api.GoogleCloudVisionV1p4beta1GcsDestination o) {
  buildCounterGoogleCloudVisionV1p4beta1GcsDestination++;
  if (buildCounterGoogleCloudVisionV1p4beta1GcsDestination < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1GcsDestination--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1GcsSource = 0;
buildGoogleCloudVisionV1p4beta1GcsSource() {
  var o = new api.GoogleCloudVisionV1p4beta1GcsSource();
  buildCounterGoogleCloudVisionV1p4beta1GcsSource++;
  if (buildCounterGoogleCloudVisionV1p4beta1GcsSource < 3) {
    o.uri = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1GcsSource--;
  return o;
}

checkGoogleCloudVisionV1p4beta1GcsSource(
    api.GoogleCloudVisionV1p4beta1GcsSource o) {
  buildCounterGoogleCloudVisionV1p4beta1GcsSource++;
  if (buildCounterGoogleCloudVisionV1p4beta1GcsSource < 3) {
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1GcsSource--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1ImageAnnotationContext = 0;
buildGoogleCloudVisionV1p4beta1ImageAnnotationContext() {
  var o = new api.GoogleCloudVisionV1p4beta1ImageAnnotationContext();
  buildCounterGoogleCloudVisionV1p4beta1ImageAnnotationContext++;
  if (buildCounterGoogleCloudVisionV1p4beta1ImageAnnotationContext < 3) {
    o.pageNumber = 42;
    o.uri = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1ImageAnnotationContext--;
  return o;
}

checkGoogleCloudVisionV1p4beta1ImageAnnotationContext(
    api.GoogleCloudVisionV1p4beta1ImageAnnotationContext o) {
  buildCounterGoogleCloudVisionV1p4beta1ImageAnnotationContext++;
  if (buildCounterGoogleCloudVisionV1p4beta1ImageAnnotationContext < 3) {
    unittest.expect(o.pageNumber, unittest.equals(42));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1ImageAnnotationContext--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1ImageProperties = 0;
buildGoogleCloudVisionV1p4beta1ImageProperties() {
  var o = new api.GoogleCloudVisionV1p4beta1ImageProperties();
  buildCounterGoogleCloudVisionV1p4beta1ImageProperties++;
  if (buildCounterGoogleCloudVisionV1p4beta1ImageProperties < 3) {
    o.dominantColors =
        buildGoogleCloudVisionV1p4beta1DominantColorsAnnotation();
  }
  buildCounterGoogleCloudVisionV1p4beta1ImageProperties--;
  return o;
}

checkGoogleCloudVisionV1p4beta1ImageProperties(
    api.GoogleCloudVisionV1p4beta1ImageProperties o) {
  buildCounterGoogleCloudVisionV1p4beta1ImageProperties++;
  if (buildCounterGoogleCloudVisionV1p4beta1ImageProperties < 3) {
    checkGoogleCloudVisionV1p4beta1DominantColorsAnnotation(o.dominantColors);
  }
  buildCounterGoogleCloudVisionV1p4beta1ImageProperties--;
}

buildUnnamed2910() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1ReferenceImage>();
  o.add(buildGoogleCloudVisionV1p4beta1ReferenceImage());
  o.add(buildGoogleCloudVisionV1p4beta1ReferenceImage());
  return o;
}

checkUnnamed2910(core.List<api.GoogleCloudVisionV1p4beta1ReferenceImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1ReferenceImage(o[0]);
  checkGoogleCloudVisionV1p4beta1ReferenceImage(o[1]);
}

buildUnnamed2911() {
  var o = new core.List<api.Status>();
  o.add(buildStatus());
  o.add(buildStatus());
  return o;
}

checkUnnamed2911(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1ImportProductSetsResponse = 0;
buildGoogleCloudVisionV1p4beta1ImportProductSetsResponse() {
  var o = new api.GoogleCloudVisionV1p4beta1ImportProductSetsResponse();
  buildCounterGoogleCloudVisionV1p4beta1ImportProductSetsResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1ImportProductSetsResponse < 3) {
    o.referenceImages = buildUnnamed2910();
    o.statuses = buildUnnamed2911();
  }
  buildCounterGoogleCloudVisionV1p4beta1ImportProductSetsResponse--;
  return o;
}

checkGoogleCloudVisionV1p4beta1ImportProductSetsResponse(
    api.GoogleCloudVisionV1p4beta1ImportProductSetsResponse o) {
  buildCounterGoogleCloudVisionV1p4beta1ImportProductSetsResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1ImportProductSetsResponse < 3) {
    checkUnnamed2910(o.referenceImages);
    checkUnnamed2911(o.statuses);
  }
  buildCounterGoogleCloudVisionV1p4beta1ImportProductSetsResponse--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1InputConfig = 0;
buildGoogleCloudVisionV1p4beta1InputConfig() {
  var o = new api.GoogleCloudVisionV1p4beta1InputConfig();
  buildCounterGoogleCloudVisionV1p4beta1InputConfig++;
  if (buildCounterGoogleCloudVisionV1p4beta1InputConfig < 3) {
    o.content = "foo";
    o.gcsSource = buildGoogleCloudVisionV1p4beta1GcsSource();
    o.mimeType = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1InputConfig--;
  return o;
}

checkGoogleCloudVisionV1p4beta1InputConfig(
    api.GoogleCloudVisionV1p4beta1InputConfig o) {
  buildCounterGoogleCloudVisionV1p4beta1InputConfig++;
  if (buildCounterGoogleCloudVisionV1p4beta1InputConfig < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    checkGoogleCloudVisionV1p4beta1GcsSource(o.gcsSource);
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1InputConfig--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation = 0;
buildGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation() {
  var o = new api.GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation();
  buildCounterGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.languageCode = "foo";
    o.mid = "foo";
    o.name = "foo";
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation(
    api.GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation o) {
  buildCounterGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation < 3) {
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.boundingPoly);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.mid, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1LocationInfo = 0;
buildGoogleCloudVisionV1p4beta1LocationInfo() {
  var o = new api.GoogleCloudVisionV1p4beta1LocationInfo();
  buildCounterGoogleCloudVisionV1p4beta1LocationInfo++;
  if (buildCounterGoogleCloudVisionV1p4beta1LocationInfo < 3) {
    o.latLng = buildLatLng();
  }
  buildCounterGoogleCloudVisionV1p4beta1LocationInfo--;
  return o;
}

checkGoogleCloudVisionV1p4beta1LocationInfo(
    api.GoogleCloudVisionV1p4beta1LocationInfo o) {
  buildCounterGoogleCloudVisionV1p4beta1LocationInfo++;
  if (buildCounterGoogleCloudVisionV1p4beta1LocationInfo < 3) {
    checkLatLng(o.latLng);
  }
  buildCounterGoogleCloudVisionV1p4beta1LocationInfo--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1NormalizedVertex = 0;
buildGoogleCloudVisionV1p4beta1NormalizedVertex() {
  var o = new api.GoogleCloudVisionV1p4beta1NormalizedVertex();
  buildCounterGoogleCloudVisionV1p4beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVisionV1p4beta1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1NormalizedVertex--;
  return o;
}

checkGoogleCloudVisionV1p4beta1NormalizedVertex(
    api.GoogleCloudVisionV1p4beta1NormalizedVertex o) {
  buildCounterGoogleCloudVisionV1p4beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVisionV1p4beta1NormalizedVertex < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p4beta1NormalizedVertex--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1OperationMetadata = 0;
buildGoogleCloudVisionV1p4beta1OperationMetadata() {
  var o = new api.GoogleCloudVisionV1p4beta1OperationMetadata();
  buildCounterGoogleCloudVisionV1p4beta1OperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p4beta1OperationMetadata < 3) {
    o.createTime = "foo";
    o.state = "foo";
    o.updateTime = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1OperationMetadata--;
  return o;
}

checkGoogleCloudVisionV1p4beta1OperationMetadata(
    api.GoogleCloudVisionV1p4beta1OperationMetadata o) {
  buildCounterGoogleCloudVisionV1p4beta1OperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p4beta1OperationMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1OperationMetadata--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1OutputConfig = 0;
buildGoogleCloudVisionV1p4beta1OutputConfig() {
  var o = new api.GoogleCloudVisionV1p4beta1OutputConfig();
  buildCounterGoogleCloudVisionV1p4beta1OutputConfig++;
  if (buildCounterGoogleCloudVisionV1p4beta1OutputConfig < 3) {
    o.batchSize = 42;
    o.gcsDestination = buildGoogleCloudVisionV1p4beta1GcsDestination();
  }
  buildCounterGoogleCloudVisionV1p4beta1OutputConfig--;
  return o;
}

checkGoogleCloudVisionV1p4beta1OutputConfig(
    api.GoogleCloudVisionV1p4beta1OutputConfig o) {
  buildCounterGoogleCloudVisionV1p4beta1OutputConfig++;
  if (buildCounterGoogleCloudVisionV1p4beta1OutputConfig < 3) {
    unittest.expect(o.batchSize, unittest.equals(42));
    checkGoogleCloudVisionV1p4beta1GcsDestination(o.gcsDestination);
  }
  buildCounterGoogleCloudVisionV1p4beta1OutputConfig--;
}

buildUnnamed2912() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1Block>();
  o.add(buildGoogleCloudVisionV1p4beta1Block());
  o.add(buildGoogleCloudVisionV1p4beta1Block());
  return o;
}

checkUnnamed2912(core.List<api.GoogleCloudVisionV1p4beta1Block> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1Block(o[0]);
  checkGoogleCloudVisionV1p4beta1Block(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1Page = 0;
buildGoogleCloudVisionV1p4beta1Page() {
  var o = new api.GoogleCloudVisionV1p4beta1Page();
  buildCounterGoogleCloudVisionV1p4beta1Page++;
  if (buildCounterGoogleCloudVisionV1p4beta1Page < 3) {
    o.blocks = buildUnnamed2912();
    o.confidence = 42.0;
    o.height = 42;
    o.property = buildGoogleCloudVisionV1p4beta1TextAnnotationTextProperty();
    o.width = 42;
  }
  buildCounterGoogleCloudVisionV1p4beta1Page--;
  return o;
}

checkGoogleCloudVisionV1p4beta1Page(api.GoogleCloudVisionV1p4beta1Page o) {
  buildCounterGoogleCloudVisionV1p4beta1Page++;
  if (buildCounterGoogleCloudVisionV1p4beta1Page < 3) {
    checkUnnamed2912(o.blocks);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.height, unittest.equals(42));
    checkGoogleCloudVisionV1p4beta1TextAnnotationTextProperty(o.property);
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterGoogleCloudVisionV1p4beta1Page--;
}

buildUnnamed2913() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1Word>();
  o.add(buildGoogleCloudVisionV1p4beta1Word());
  o.add(buildGoogleCloudVisionV1p4beta1Word());
  return o;
}

checkUnnamed2913(core.List<api.GoogleCloudVisionV1p4beta1Word> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1Word(o[0]);
  checkGoogleCloudVisionV1p4beta1Word(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1Paragraph = 0;
buildGoogleCloudVisionV1p4beta1Paragraph() {
  var o = new api.GoogleCloudVisionV1p4beta1Paragraph();
  buildCounterGoogleCloudVisionV1p4beta1Paragraph++;
  if (buildCounterGoogleCloudVisionV1p4beta1Paragraph < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p4beta1TextAnnotationTextProperty();
    o.words = buildUnnamed2913();
  }
  buildCounterGoogleCloudVisionV1p4beta1Paragraph--;
  return o;
}

checkGoogleCloudVisionV1p4beta1Paragraph(
    api.GoogleCloudVisionV1p4beta1Paragraph o) {
  buildCounterGoogleCloudVisionV1p4beta1Paragraph++;
  if (buildCounterGoogleCloudVisionV1p4beta1Paragraph < 3) {
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVisionV1p4beta1TextAnnotationTextProperty(o.property);
    checkUnnamed2913(o.words);
  }
  buildCounterGoogleCloudVisionV1p4beta1Paragraph--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1Position = 0;
buildGoogleCloudVisionV1p4beta1Position() {
  var o = new api.GoogleCloudVisionV1p4beta1Position();
  buildCounterGoogleCloudVisionV1p4beta1Position++;
  if (buildCounterGoogleCloudVisionV1p4beta1Position < 3) {
    o.x = 42.0;
    o.y = 42.0;
    o.z = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1Position--;
  return o;
}

checkGoogleCloudVisionV1p4beta1Position(
    api.GoogleCloudVisionV1p4beta1Position o) {
  buildCounterGoogleCloudVisionV1p4beta1Position++;
  if (buildCounterGoogleCloudVisionV1p4beta1Position < 3) {
    unittest.expect(o.x, unittest.equals(42.0));
    unittest.expect(o.y, unittest.equals(42.0));
    unittest.expect(o.z, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p4beta1Position--;
}

buildUnnamed2914() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1ProductKeyValue>();
  o.add(buildGoogleCloudVisionV1p4beta1ProductKeyValue());
  o.add(buildGoogleCloudVisionV1p4beta1ProductKeyValue());
  return o;
}

checkUnnamed2914(core.List<api.GoogleCloudVisionV1p4beta1ProductKeyValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1ProductKeyValue(o[0]);
  checkGoogleCloudVisionV1p4beta1ProductKeyValue(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1Product = 0;
buildGoogleCloudVisionV1p4beta1Product() {
  var o = new api.GoogleCloudVisionV1p4beta1Product();
  buildCounterGoogleCloudVisionV1p4beta1Product++;
  if (buildCounterGoogleCloudVisionV1p4beta1Product < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.name = "foo";
    o.productCategory = "foo";
    o.productLabels = buildUnnamed2914();
  }
  buildCounterGoogleCloudVisionV1p4beta1Product--;
  return o;
}

checkGoogleCloudVisionV1p4beta1Product(
    api.GoogleCloudVisionV1p4beta1Product o) {
  buildCounterGoogleCloudVisionV1p4beta1Product++;
  if (buildCounterGoogleCloudVisionV1p4beta1Product < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.productCategory, unittest.equals('foo'));
    checkUnnamed2914(o.productLabels);
  }
  buildCounterGoogleCloudVisionV1p4beta1Product--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1ProductKeyValue = 0;
buildGoogleCloudVisionV1p4beta1ProductKeyValue() {
  var o = new api.GoogleCloudVisionV1p4beta1ProductKeyValue();
  buildCounterGoogleCloudVisionV1p4beta1ProductKeyValue++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductKeyValue < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductKeyValue--;
  return o;
}

checkGoogleCloudVisionV1p4beta1ProductKeyValue(
    api.GoogleCloudVisionV1p4beta1ProductKeyValue o) {
  buildCounterGoogleCloudVisionV1p4beta1ProductKeyValue++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductKeyValue < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductKeyValue--;
}

buildUnnamed2915() {
  var o = new core
      .List<api.GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult>();
  o.add(buildGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult());
  o.add(buildGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult());
  return o;
}

checkUnnamed2915(
    core.List<api.GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult(o[0]);
  checkGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult(o[1]);
}

buildUnnamed2916() {
  var o =
      new core.List<api.GoogleCloudVisionV1p4beta1ProductSearchResultsResult>();
  o.add(buildGoogleCloudVisionV1p4beta1ProductSearchResultsResult());
  o.add(buildGoogleCloudVisionV1p4beta1ProductSearchResultsResult());
  return o;
}

checkUnnamed2916(
    core.List<api.GoogleCloudVisionV1p4beta1ProductSearchResultsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1ProductSearchResultsResult(o[0]);
  checkGoogleCloudVisionV1p4beta1ProductSearchResultsResult(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1ProductSearchResults = 0;
buildGoogleCloudVisionV1p4beta1ProductSearchResults() {
  var o = new api.GoogleCloudVisionV1p4beta1ProductSearchResults();
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResults++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductSearchResults < 3) {
    o.indexTime = "foo";
    o.productGroupedResults = buildUnnamed2915();
    o.results = buildUnnamed2916();
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResults--;
  return o;
}

checkGoogleCloudVisionV1p4beta1ProductSearchResults(
    api.GoogleCloudVisionV1p4beta1ProductSearchResults o) {
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResults++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductSearchResults < 3) {
    unittest.expect(o.indexTime, unittest.equals('foo'));
    checkUnnamed2915(o.productGroupedResults);
    checkUnnamed2916(o.results);
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResults--;
}

buildUnnamed2917() {
  var o = new core.List<
      api.GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation>();
  o.add(buildGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation());
  o.add(buildGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation());
  return o;
}

checkUnnamed2917(
    core.List<
            api.GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation(o[0]);
  checkGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation(o[1]);
}

buildUnnamed2918() {
  var o =
      new core.List<api.GoogleCloudVisionV1p4beta1ProductSearchResultsResult>();
  o.add(buildGoogleCloudVisionV1p4beta1ProductSearchResultsResult());
  o.add(buildGoogleCloudVisionV1p4beta1ProductSearchResultsResult());
  return o;
}

checkUnnamed2918(
    core.List<api.GoogleCloudVisionV1p4beta1ProductSearchResultsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1ProductSearchResultsResult(o[0]);
  checkGoogleCloudVisionV1p4beta1ProductSearchResultsResult(o[1]);
}

core.int
    buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult = 0;
buildGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult() {
  var o = new api.GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult();
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult <
      3) {
    o.boundingPoly = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.objectAnnotations = buildUnnamed2917();
    o.results = buildUnnamed2918();
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult--;
  return o;
}

checkGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult(
    api.GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult o) {
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult <
      3) {
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.boundingPoly);
    checkUnnamed2917(o.objectAnnotations);
    checkUnnamed2918(o.results);
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult--;
}

core.int
    buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation =
    0;
buildGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation() {
  var o =
      new api.GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation();
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation <
      3) {
    o.languageCode = "foo";
    o.mid = "foo";
    o.name = "foo";
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation(
    api.GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation o) {
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation <
      3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.mid, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsResult = 0;
buildGoogleCloudVisionV1p4beta1ProductSearchResultsResult() {
  var o = new api.GoogleCloudVisionV1p4beta1ProductSearchResultsResult();
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsResult++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsResult < 3) {
    o.image = "foo";
    o.product = buildGoogleCloudVisionV1p4beta1Product();
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsResult--;
  return o;
}

checkGoogleCloudVisionV1p4beta1ProductSearchResultsResult(
    api.GoogleCloudVisionV1p4beta1ProductSearchResultsResult o) {
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsResult++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsResult < 3) {
    unittest.expect(o.image, unittest.equals('foo'));
    checkGoogleCloudVisionV1p4beta1Product(o.product);
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsResult--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1Property = 0;
buildGoogleCloudVisionV1p4beta1Property() {
  var o = new api.GoogleCloudVisionV1p4beta1Property();
  buildCounterGoogleCloudVisionV1p4beta1Property++;
  if (buildCounterGoogleCloudVisionV1p4beta1Property < 3) {
    o.name = "foo";
    o.uint64Value = "foo";
    o.value = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1Property--;
  return o;
}

checkGoogleCloudVisionV1p4beta1Property(
    api.GoogleCloudVisionV1p4beta1Property o) {
  buildCounterGoogleCloudVisionV1p4beta1Property++;
  if (buildCounterGoogleCloudVisionV1p4beta1Property < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.uint64Value, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1Property--;
}

buildUnnamed2919() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1BoundingPoly>();
  o.add(buildGoogleCloudVisionV1p4beta1BoundingPoly());
  o.add(buildGoogleCloudVisionV1p4beta1BoundingPoly());
  return o;
}

checkUnnamed2919(core.List<api.GoogleCloudVisionV1p4beta1BoundingPoly> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1BoundingPoly(o[0]);
  checkGoogleCloudVisionV1p4beta1BoundingPoly(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1ReferenceImage = 0;
buildGoogleCloudVisionV1p4beta1ReferenceImage() {
  var o = new api.GoogleCloudVisionV1p4beta1ReferenceImage();
  buildCounterGoogleCloudVisionV1p4beta1ReferenceImage++;
  if (buildCounterGoogleCloudVisionV1p4beta1ReferenceImage < 3) {
    o.boundingPolys = buildUnnamed2919();
    o.name = "foo";
    o.uri = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1ReferenceImage--;
  return o;
}

checkGoogleCloudVisionV1p4beta1ReferenceImage(
    api.GoogleCloudVisionV1p4beta1ReferenceImage o) {
  buildCounterGoogleCloudVisionV1p4beta1ReferenceImage++;
  if (buildCounterGoogleCloudVisionV1p4beta1ReferenceImage < 3) {
    checkUnnamed2919(o.boundingPolys);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1ReferenceImage--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1SafeSearchAnnotation = 0;
buildGoogleCloudVisionV1p4beta1SafeSearchAnnotation() {
  var o = new api.GoogleCloudVisionV1p4beta1SafeSearchAnnotation();
  buildCounterGoogleCloudVisionV1p4beta1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1SafeSearchAnnotation < 3) {
    o.adult = "foo";
    o.medical = "foo";
    o.racy = "foo";
    o.spoof = "foo";
    o.violence = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1SafeSearchAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p4beta1SafeSearchAnnotation(
    api.GoogleCloudVisionV1p4beta1SafeSearchAnnotation o) {
  buildCounterGoogleCloudVisionV1p4beta1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1SafeSearchAnnotation < 3) {
    unittest.expect(o.adult, unittest.equals('foo'));
    unittest.expect(o.medical, unittest.equals('foo'));
    unittest.expect(o.racy, unittest.equals('foo'));
    unittest.expect(o.spoof, unittest.equals('foo'));
    unittest.expect(o.violence, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1SafeSearchAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1Symbol = 0;
buildGoogleCloudVisionV1p4beta1Symbol() {
  var o = new api.GoogleCloudVisionV1p4beta1Symbol();
  buildCounterGoogleCloudVisionV1p4beta1Symbol++;
  if (buildCounterGoogleCloudVisionV1p4beta1Symbol < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p4beta1TextAnnotationTextProperty();
    o.text = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1Symbol--;
  return o;
}

checkGoogleCloudVisionV1p4beta1Symbol(api.GoogleCloudVisionV1p4beta1Symbol o) {
  buildCounterGoogleCloudVisionV1p4beta1Symbol++;
  if (buildCounterGoogleCloudVisionV1p4beta1Symbol < 3) {
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVisionV1p4beta1TextAnnotationTextProperty(o.property);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1Symbol--;
}

buildUnnamed2920() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1Page>();
  o.add(buildGoogleCloudVisionV1p4beta1Page());
  o.add(buildGoogleCloudVisionV1p4beta1Page());
  return o;
}

checkUnnamed2920(core.List<api.GoogleCloudVisionV1p4beta1Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1Page(o[0]);
  checkGoogleCloudVisionV1p4beta1Page(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1TextAnnotation = 0;
buildGoogleCloudVisionV1p4beta1TextAnnotation() {
  var o = new api.GoogleCloudVisionV1p4beta1TextAnnotation();
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1TextAnnotation < 3) {
    o.pages = buildUnnamed2920();
    o.text = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotation--;
  return o;
}

checkGoogleCloudVisionV1p4beta1TextAnnotation(
    api.GoogleCloudVisionV1p4beta1TextAnnotation o) {
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1TextAnnotation < 3) {
    checkUnnamed2920(o.pages);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak = 0;
buildGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak() {
  var o = new api.GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak();
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak++;
  if (buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak < 3) {
    o.isPrefix = true;
    o.type = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak--;
  return o;
}

checkGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak(
    api.GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak o) {
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak++;
  if (buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak < 3) {
    unittest.expect(o.isPrefix, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage =
    0;
buildGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage() {
  var o = new api.GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage();
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage++;
  if (buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage <
      3) {
    o.confidence = 42.0;
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage--;
  return o;
}

checkGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage(
    api.GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage o) {
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage++;
  if (buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage <
      3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage--;
}

buildUnnamed2921() {
  var o = new core
      .List<api.GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage>();
  o.add(buildGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage());
  o.add(buildGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage());
  return o;
}

checkUnnamed2921(
    core.List<api.GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage(o[0]);
  checkGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1TextAnnotationTextProperty = 0;
buildGoogleCloudVisionV1p4beta1TextAnnotationTextProperty() {
  var o = new api.GoogleCloudVisionV1p4beta1TextAnnotationTextProperty();
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p4beta1TextAnnotationTextProperty < 3) {
    o.detectedBreak =
        buildGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak();
    o.detectedLanguages = buildUnnamed2921();
  }
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationTextProperty--;
  return o;
}

checkGoogleCloudVisionV1p4beta1TextAnnotationTextProperty(
    api.GoogleCloudVisionV1p4beta1TextAnnotationTextProperty o) {
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p4beta1TextAnnotationTextProperty < 3) {
    checkGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak(o.detectedBreak);
    checkUnnamed2921(o.detectedLanguages);
  }
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationTextProperty--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1Vertex = 0;
buildGoogleCloudVisionV1p4beta1Vertex() {
  var o = new api.GoogleCloudVisionV1p4beta1Vertex();
  buildCounterGoogleCloudVisionV1p4beta1Vertex++;
  if (buildCounterGoogleCloudVisionV1p4beta1Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudVisionV1p4beta1Vertex--;
  return o;
}

checkGoogleCloudVisionV1p4beta1Vertex(api.GoogleCloudVisionV1p4beta1Vertex o) {
  buildCounterGoogleCloudVisionV1p4beta1Vertex++;
  if (buildCounterGoogleCloudVisionV1p4beta1Vertex < 3) {
    unittest.expect(o.x, unittest.equals(42));
    unittest.expect(o.y, unittest.equals(42));
  }
  buildCounterGoogleCloudVisionV1p4beta1Vertex--;
}

buildUnnamed2922() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebLabel>();
  o.add(buildGoogleCloudVisionV1p4beta1WebDetectionWebLabel());
  o.add(buildGoogleCloudVisionV1p4beta1WebDetectionWebLabel());
  return o;
}

checkUnnamed2922(
    core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1WebDetectionWebLabel(o[0]);
  checkGoogleCloudVisionV1p4beta1WebDetectionWebLabel(o[1]);
}

buildUnnamed2923() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p4beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p4beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2923(
    core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[1]);
}

buildUnnamed2924() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebPage>();
  o.add(buildGoogleCloudVisionV1p4beta1WebDetectionWebPage());
  o.add(buildGoogleCloudVisionV1p4beta1WebDetectionWebPage());
  return o;
}

checkUnnamed2924(
    core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1WebDetectionWebPage(o[0]);
  checkGoogleCloudVisionV1p4beta1WebDetectionWebPage(o[1]);
}

buildUnnamed2925() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p4beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p4beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2925(
    core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[1]);
}

buildUnnamed2926() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p4beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p4beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2926(
    core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[1]);
}

buildUnnamed2927() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebEntity>();
  o.add(buildGoogleCloudVisionV1p4beta1WebDetectionWebEntity());
  o.add(buildGoogleCloudVisionV1p4beta1WebDetectionWebEntity());
  return o;
}

checkUnnamed2927(
    core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1WebDetectionWebEntity(o[0]);
  checkGoogleCloudVisionV1p4beta1WebDetectionWebEntity(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1WebDetection = 0;
buildGoogleCloudVisionV1p4beta1WebDetection() {
  var o = new api.GoogleCloudVisionV1p4beta1WebDetection();
  buildCounterGoogleCloudVisionV1p4beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetection < 3) {
    o.bestGuessLabels = buildUnnamed2922();
    o.fullMatchingImages = buildUnnamed2923();
    o.pagesWithMatchingImages = buildUnnamed2924();
    o.partialMatchingImages = buildUnnamed2925();
    o.visuallySimilarImages = buildUnnamed2926();
    o.webEntities = buildUnnamed2927();
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetection--;
  return o;
}

checkGoogleCloudVisionV1p4beta1WebDetection(
    api.GoogleCloudVisionV1p4beta1WebDetection o) {
  buildCounterGoogleCloudVisionV1p4beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetection < 3) {
    checkUnnamed2922(o.bestGuessLabels);
    checkUnnamed2923(o.fullMatchingImages);
    checkUnnamed2924(o.pagesWithMatchingImages);
    checkUnnamed2925(o.partialMatchingImages);
    checkUnnamed2926(o.visuallySimilarImages);
    checkUnnamed2927(o.webEntities);
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetection--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebEntity = 0;
buildGoogleCloudVisionV1p4beta1WebDetectionWebEntity() {
  var o = new api.GoogleCloudVisionV1p4beta1WebDetectionWebEntity();
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebEntity++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebEntity < 3) {
    o.description = "foo";
    o.entityId = "foo";
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebEntity--;
  return o;
}

checkGoogleCloudVisionV1p4beta1WebDetectionWebEntity(
    api.GoogleCloudVisionV1p4beta1WebDetectionWebEntity o) {
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebEntity++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebEntity < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.entityId, unittest.equals('foo'));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebEntity--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebImage = 0;
buildGoogleCloudVisionV1p4beta1WebDetectionWebImage() {
  var o = new api.GoogleCloudVisionV1p4beta1WebDetectionWebImage();
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebImage++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebImage < 3) {
    o.score = 42.0;
    o.url = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebImage--;
  return o;
}

checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(
    api.GoogleCloudVisionV1p4beta1WebDetectionWebImage o) {
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebImage++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebImage < 3) {
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebImage--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebLabel = 0;
buildGoogleCloudVisionV1p4beta1WebDetectionWebLabel() {
  var o = new api.GoogleCloudVisionV1p4beta1WebDetectionWebLabel();
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebLabel++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebLabel < 3) {
    o.label = "foo";
    o.languageCode = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebLabel--;
  return o;
}

checkGoogleCloudVisionV1p4beta1WebDetectionWebLabel(
    api.GoogleCloudVisionV1p4beta1WebDetectionWebLabel o) {
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebLabel++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebLabel < 3) {
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebLabel--;
}

buildUnnamed2928() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p4beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p4beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2928(
    core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[1]);
}

buildUnnamed2929() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage>();
  o.add(buildGoogleCloudVisionV1p4beta1WebDetectionWebImage());
  o.add(buildGoogleCloudVisionV1p4beta1WebDetectionWebImage());
  return o;
}

checkUnnamed2929(
    core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebPage = 0;
buildGoogleCloudVisionV1p4beta1WebDetectionWebPage() {
  var o = new api.GoogleCloudVisionV1p4beta1WebDetectionWebPage();
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebPage++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebPage < 3) {
    o.fullMatchingImages = buildUnnamed2928();
    o.pageTitle = "foo";
    o.partialMatchingImages = buildUnnamed2929();
    o.score = 42.0;
    o.url = "foo";
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebPage--;
  return o;
}

checkGoogleCloudVisionV1p4beta1WebDetectionWebPage(
    api.GoogleCloudVisionV1p4beta1WebDetectionWebPage o) {
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebPage++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebPage < 3) {
    checkUnnamed2928(o.fullMatchingImages);
    unittest.expect(o.pageTitle, unittest.equals('foo'));
    checkUnnamed2929(o.partialMatchingImages);
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebPage--;
}

buildUnnamed2930() {
  var o = new core.List<api.GoogleCloudVisionV1p4beta1Symbol>();
  o.add(buildGoogleCloudVisionV1p4beta1Symbol());
  o.add(buildGoogleCloudVisionV1p4beta1Symbol());
  return o;
}

checkUnnamed2930(core.List<api.GoogleCloudVisionV1p4beta1Symbol> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1Symbol(o[0]);
  checkGoogleCloudVisionV1p4beta1Symbol(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1Word = 0;
buildGoogleCloudVisionV1p4beta1Word() {
  var o = new api.GoogleCloudVisionV1p4beta1Word();
  buildCounterGoogleCloudVisionV1p4beta1Word++;
  if (buildCounterGoogleCloudVisionV1p4beta1Word < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p4beta1TextAnnotationTextProperty();
    o.symbols = buildUnnamed2930();
  }
  buildCounterGoogleCloudVisionV1p4beta1Word--;
  return o;
}

checkGoogleCloudVisionV1p4beta1Word(api.GoogleCloudVisionV1p4beta1Word o) {
  buildCounterGoogleCloudVisionV1p4beta1Word++;
  if (buildCounterGoogleCloudVisionV1p4beta1Word < 3) {
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.boundingBox);
    unittest.expect(o.confidence, unittest.equals(42.0));
    checkGoogleCloudVisionV1p4beta1TextAnnotationTextProperty(o.property);
    checkUnnamed2930(o.symbols);
  }
  buildCounterGoogleCloudVisionV1p4beta1Word--;
}

buildUnnamed2931() {
  var o = new core.List<api.ObjectAnnotation>();
  o.add(buildObjectAnnotation());
  o.add(buildObjectAnnotation());
  return o;
}

checkUnnamed2931(core.List<api.ObjectAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectAnnotation(o[0]);
  checkObjectAnnotation(o[1]);
}

buildUnnamed2932() {
  var o = new core.List<api.Result>();
  o.add(buildResult());
  o.add(buildResult());
  return o;
}

checkUnnamed2932(core.List<api.Result> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResult(o[0]);
  checkResult(o[1]);
}

core.int buildCounterGroupedResult = 0;
buildGroupedResult() {
  var o = new api.GroupedResult();
  buildCounterGroupedResult++;
  if (buildCounterGroupedResult < 3) {
    o.boundingPoly = buildBoundingPoly();
    o.objectAnnotations = buildUnnamed2931();
    o.results = buildUnnamed2932();
  }
  buildCounterGroupedResult--;
  return o;
}

checkGroupedResult(api.GroupedResult o) {
  buildCounterGroupedResult++;
  if (buildCounterGroupedResult < 3) {
    checkBoundingPoly(o.boundingPoly);
    checkUnnamed2931(o.objectAnnotations);
    checkUnnamed2932(o.results);
  }
  buildCounterGroupedResult--;
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

buildUnnamed2933() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2933(core.List<core.String> o) {
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
    o.languageHints = buildUnnamed2933();
    o.latLongRect = buildLatLongRect();
    o.productSearchParams = buildProductSearchParams();
    o.webDetectionParams = buildWebDetectionParams();
  }
  buildCounterImageContext--;
  return o;
}

checkImageContext(api.ImageContext o) {
  buildCounterImageContext++;
  if (buildCounterImageContext < 3) {
    checkCropHintsParams(o.cropHintsParams);
    checkUnnamed2933(o.languageHints);
    checkLatLongRect(o.latLongRect);
    checkProductSearchParams(o.productSearchParams);
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

core.int buildCounterImportProductSetsGcsSource = 0;
buildImportProductSetsGcsSource() {
  var o = new api.ImportProductSetsGcsSource();
  buildCounterImportProductSetsGcsSource++;
  if (buildCounterImportProductSetsGcsSource < 3) {
    o.csvFileUri = "foo";
  }
  buildCounterImportProductSetsGcsSource--;
  return o;
}

checkImportProductSetsGcsSource(api.ImportProductSetsGcsSource o) {
  buildCounterImportProductSetsGcsSource++;
  if (buildCounterImportProductSetsGcsSource < 3) {
    unittest.expect(o.csvFileUri, unittest.equals('foo'));
  }
  buildCounterImportProductSetsGcsSource--;
}

core.int buildCounterImportProductSetsInputConfig = 0;
buildImportProductSetsInputConfig() {
  var o = new api.ImportProductSetsInputConfig();
  buildCounterImportProductSetsInputConfig++;
  if (buildCounterImportProductSetsInputConfig < 3) {
    o.gcsSource = buildImportProductSetsGcsSource();
  }
  buildCounterImportProductSetsInputConfig--;
  return o;
}

checkImportProductSetsInputConfig(api.ImportProductSetsInputConfig o) {
  buildCounterImportProductSetsInputConfig++;
  if (buildCounterImportProductSetsInputConfig < 3) {
    checkImportProductSetsGcsSource(o.gcsSource);
  }
  buildCounterImportProductSetsInputConfig--;
}

core.int buildCounterImportProductSetsRequest = 0;
buildImportProductSetsRequest() {
  var o = new api.ImportProductSetsRequest();
  buildCounterImportProductSetsRequest++;
  if (buildCounterImportProductSetsRequest < 3) {
    o.inputConfig = buildImportProductSetsInputConfig();
  }
  buildCounterImportProductSetsRequest--;
  return o;
}

checkImportProductSetsRequest(api.ImportProductSetsRequest o) {
  buildCounterImportProductSetsRequest++;
  if (buildCounterImportProductSetsRequest < 3) {
    checkImportProductSetsInputConfig(o.inputConfig);
  }
  buildCounterImportProductSetsRequest--;
}

buildUnnamed2934() {
  var o = new core.List<api.ReferenceImage>();
  o.add(buildReferenceImage());
  o.add(buildReferenceImage());
  return o;
}

checkUnnamed2934(core.List<api.ReferenceImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReferenceImage(o[0]);
  checkReferenceImage(o[1]);
}

buildUnnamed2935() {
  var o = new core.List<api.Status>();
  o.add(buildStatus());
  o.add(buildStatus());
  return o;
}

checkUnnamed2935(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.int buildCounterImportProductSetsResponse = 0;
buildImportProductSetsResponse() {
  var o = new api.ImportProductSetsResponse();
  buildCounterImportProductSetsResponse++;
  if (buildCounterImportProductSetsResponse < 3) {
    o.referenceImages = buildUnnamed2934();
    o.statuses = buildUnnamed2935();
  }
  buildCounterImportProductSetsResponse--;
  return o;
}

checkImportProductSetsResponse(api.ImportProductSetsResponse o) {
  buildCounterImportProductSetsResponse++;
  if (buildCounterImportProductSetsResponse < 3) {
    checkUnnamed2934(o.referenceImages);
    checkUnnamed2935(o.statuses);
  }
  buildCounterImportProductSetsResponse--;
}

core.int buildCounterInputConfig = 0;
buildInputConfig() {
  var o = new api.InputConfig();
  buildCounterInputConfig++;
  if (buildCounterInputConfig < 3) {
    o.content = "foo";
    o.gcsSource = buildGcsSource();
    o.mimeType = "foo";
  }
  buildCounterInputConfig--;
  return o;
}

checkInputConfig(api.InputConfig o) {
  buildCounterInputConfig++;
  if (buildCounterInputConfig < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    checkGcsSource(o.gcsSource);
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterInputConfig--;
}

core.int buildCounterKeyValue = 0;
buildKeyValue() {
  var o = new api.KeyValue();
  buildCounterKeyValue++;
  if (buildCounterKeyValue < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterKeyValue--;
  return o;
}

checkKeyValue(api.KeyValue o) {
  buildCounterKeyValue++;
  if (buildCounterKeyValue < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterKeyValue--;
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

buildUnnamed2936() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed2936(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed2936();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2936(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed2937() {
  var o = new core.List<api.ProductSet>();
  o.add(buildProductSet());
  o.add(buildProductSet());
  return o;
}

checkUnnamed2937(core.List<api.ProductSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductSet(o[0]);
  checkProductSet(o[1]);
}

core.int buildCounterListProductSetsResponse = 0;
buildListProductSetsResponse() {
  var o = new api.ListProductSetsResponse();
  buildCounterListProductSetsResponse++;
  if (buildCounterListProductSetsResponse < 3) {
    o.nextPageToken = "foo";
    o.productSets = buildUnnamed2937();
  }
  buildCounterListProductSetsResponse--;
  return o;
}

checkListProductSetsResponse(api.ListProductSetsResponse o) {
  buildCounterListProductSetsResponse++;
  if (buildCounterListProductSetsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2937(o.productSets);
  }
  buildCounterListProductSetsResponse--;
}

buildUnnamed2938() {
  var o = new core.List<api.Product>();
  o.add(buildProduct());
  o.add(buildProduct());
  return o;
}

checkUnnamed2938(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0]);
  checkProduct(o[1]);
}

core.int buildCounterListProductsInProductSetResponse = 0;
buildListProductsInProductSetResponse() {
  var o = new api.ListProductsInProductSetResponse();
  buildCounterListProductsInProductSetResponse++;
  if (buildCounterListProductsInProductSetResponse < 3) {
    o.nextPageToken = "foo";
    o.products = buildUnnamed2938();
  }
  buildCounterListProductsInProductSetResponse--;
  return o;
}

checkListProductsInProductSetResponse(api.ListProductsInProductSetResponse o) {
  buildCounterListProductsInProductSetResponse++;
  if (buildCounterListProductsInProductSetResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2938(o.products);
  }
  buildCounterListProductsInProductSetResponse--;
}

buildUnnamed2939() {
  var o = new core.List<api.Product>();
  o.add(buildProduct());
  o.add(buildProduct());
  return o;
}

checkUnnamed2939(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0]);
  checkProduct(o[1]);
}

core.int buildCounterListProductsResponse = 0;
buildListProductsResponse() {
  var o = new api.ListProductsResponse();
  buildCounterListProductsResponse++;
  if (buildCounterListProductsResponse < 3) {
    o.nextPageToken = "foo";
    o.products = buildUnnamed2939();
  }
  buildCounterListProductsResponse--;
  return o;
}

checkListProductsResponse(api.ListProductsResponse o) {
  buildCounterListProductsResponse++;
  if (buildCounterListProductsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2939(o.products);
  }
  buildCounterListProductsResponse--;
}

buildUnnamed2940() {
  var o = new core.List<api.ReferenceImage>();
  o.add(buildReferenceImage());
  o.add(buildReferenceImage());
  return o;
}

checkUnnamed2940(core.List<api.ReferenceImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReferenceImage(o[0]);
  checkReferenceImage(o[1]);
}

core.int buildCounterListReferenceImagesResponse = 0;
buildListReferenceImagesResponse() {
  var o = new api.ListReferenceImagesResponse();
  buildCounterListReferenceImagesResponse++;
  if (buildCounterListReferenceImagesResponse < 3) {
    o.nextPageToken = "foo";
    o.pageSize = 42;
    o.referenceImages = buildUnnamed2940();
  }
  buildCounterListReferenceImagesResponse--;
  return o;
}

checkListReferenceImagesResponse(api.ListReferenceImagesResponse o) {
  buildCounterListReferenceImagesResponse++;
  if (buildCounterListReferenceImagesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.pageSize, unittest.equals(42));
    checkUnnamed2940(o.referenceImages);
  }
  buildCounterListReferenceImagesResponse--;
}

core.int buildCounterLocalizedObjectAnnotation = 0;
buildLocalizedObjectAnnotation() {
  var o = new api.LocalizedObjectAnnotation();
  buildCounterLocalizedObjectAnnotation++;
  if (buildCounterLocalizedObjectAnnotation < 3) {
    o.boundingPoly = buildBoundingPoly();
    o.languageCode = "foo";
    o.mid = "foo";
    o.name = "foo";
    o.score = 42.0;
  }
  buildCounterLocalizedObjectAnnotation--;
  return o;
}

checkLocalizedObjectAnnotation(api.LocalizedObjectAnnotation o) {
  buildCounterLocalizedObjectAnnotation++;
  if (buildCounterLocalizedObjectAnnotation < 3) {
    checkBoundingPoly(o.boundingPoly);
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.mid, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterLocalizedObjectAnnotation--;
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

core.int buildCounterObjectAnnotation = 0;
buildObjectAnnotation() {
  var o = new api.ObjectAnnotation();
  buildCounterObjectAnnotation++;
  if (buildCounterObjectAnnotation < 3) {
    o.languageCode = "foo";
    o.mid = "foo";
    o.name = "foo";
    o.score = 42.0;
  }
  buildCounterObjectAnnotation--;
  return o;
}

checkObjectAnnotation(api.ObjectAnnotation o) {
  buildCounterObjectAnnotation++;
  if (buildCounterObjectAnnotation < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.mid, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterObjectAnnotation--;
}

buildUnnamed2941() {
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

checkUnnamed2941(core.Map<core.String, core.Object> o) {
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

buildUnnamed2942() {
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

checkUnnamed2942(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed2941();
    o.name = "foo";
    o.response = buildUnnamed2942();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed2941(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2942(o.response);
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

buildUnnamed2943() {
  var o = new core.List<api.Block>();
  o.add(buildBlock());
  o.add(buildBlock());
  return o;
}

checkUnnamed2943(core.List<api.Block> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBlock(o[0]);
  checkBlock(o[1]);
}

core.int buildCounterPage = 0;
buildPage() {
  var o = new api.Page();
  buildCounterPage++;
  if (buildCounterPage < 3) {
    o.blocks = buildUnnamed2943();
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
    checkUnnamed2943(o.blocks);
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.height, unittest.equals(42));
    checkTextProperty(o.property);
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterPage--;
}

buildUnnamed2944() {
  var o = new core.List<api.Word>();
  o.add(buildWord());
  o.add(buildWord());
  return o;
}

checkUnnamed2944(core.List<api.Word> o) {
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
    o.words = buildUnnamed2944();
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
    checkUnnamed2944(o.words);
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

buildUnnamed2945() {
  var o = new core.List<api.KeyValue>();
  o.add(buildKeyValue());
  o.add(buildKeyValue());
  return o;
}

checkUnnamed2945(core.List<api.KeyValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyValue(o[0]);
  checkKeyValue(o[1]);
}

core.int buildCounterProduct = 0;
buildProduct() {
  var o = new api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.name = "foo";
    o.productCategory = "foo";
    o.productLabels = buildUnnamed2945();
  }
  buildCounterProduct--;
  return o;
}

checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.productCategory, unittest.equals('foo'));
    checkUnnamed2945(o.productLabels);
  }
  buildCounterProduct--;
}

buildUnnamed2946() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2946(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProductSearchParams = 0;
buildProductSearchParams() {
  var o = new api.ProductSearchParams();
  buildCounterProductSearchParams++;
  if (buildCounterProductSearchParams < 3) {
    o.boundingPoly = buildBoundingPoly();
    o.filter = "foo";
    o.productCategories = buildUnnamed2946();
    o.productSet = "foo";
  }
  buildCounterProductSearchParams--;
  return o;
}

checkProductSearchParams(api.ProductSearchParams o) {
  buildCounterProductSearchParams++;
  if (buildCounterProductSearchParams < 3) {
    checkBoundingPoly(o.boundingPoly);
    unittest.expect(o.filter, unittest.equals('foo'));
    checkUnnamed2946(o.productCategories);
    unittest.expect(o.productSet, unittest.equals('foo'));
  }
  buildCounterProductSearchParams--;
}

buildUnnamed2947() {
  var o = new core.List<api.GroupedResult>();
  o.add(buildGroupedResult());
  o.add(buildGroupedResult());
  return o;
}

checkUnnamed2947(core.List<api.GroupedResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupedResult(o[0]);
  checkGroupedResult(o[1]);
}

buildUnnamed2948() {
  var o = new core.List<api.Result>();
  o.add(buildResult());
  o.add(buildResult());
  return o;
}

checkUnnamed2948(core.List<api.Result> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResult(o[0]);
  checkResult(o[1]);
}

core.int buildCounterProductSearchResults = 0;
buildProductSearchResults() {
  var o = new api.ProductSearchResults();
  buildCounterProductSearchResults++;
  if (buildCounterProductSearchResults < 3) {
    o.indexTime = "foo";
    o.productGroupedResults = buildUnnamed2947();
    o.results = buildUnnamed2948();
  }
  buildCounterProductSearchResults--;
  return o;
}

checkProductSearchResults(api.ProductSearchResults o) {
  buildCounterProductSearchResults++;
  if (buildCounterProductSearchResults < 3) {
    unittest.expect(o.indexTime, unittest.equals('foo'));
    checkUnnamed2947(o.productGroupedResults);
    checkUnnamed2948(o.results);
  }
  buildCounterProductSearchResults--;
}

core.int buildCounterProductSet = 0;
buildProductSet() {
  var o = new api.ProductSet();
  buildCounterProductSet++;
  if (buildCounterProductSet < 3) {
    o.displayName = "foo";
    o.indexError = buildStatus();
    o.indexTime = "foo";
    o.name = "foo";
  }
  buildCounterProductSet--;
  return o;
}

checkProductSet(api.ProductSet o) {
  buildCounterProductSet++;
  if (buildCounterProductSet < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkStatus(o.indexError);
    unittest.expect(o.indexTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterProductSet--;
}

core.int buildCounterProductSetPurgeConfig = 0;
buildProductSetPurgeConfig() {
  var o = new api.ProductSetPurgeConfig();
  buildCounterProductSetPurgeConfig++;
  if (buildCounterProductSetPurgeConfig < 3) {
    o.productSetId = "foo";
  }
  buildCounterProductSetPurgeConfig--;
  return o;
}

checkProductSetPurgeConfig(api.ProductSetPurgeConfig o) {
  buildCounterProductSetPurgeConfig++;
  if (buildCounterProductSetPurgeConfig < 3) {
    unittest.expect(o.productSetId, unittest.equals('foo'));
  }
  buildCounterProductSetPurgeConfig--;
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

core.int buildCounterPurgeProductsRequest = 0;
buildPurgeProductsRequest() {
  var o = new api.PurgeProductsRequest();
  buildCounterPurgeProductsRequest++;
  if (buildCounterPurgeProductsRequest < 3) {
    o.deleteOrphanProducts = true;
    o.force = true;
    o.productSetPurgeConfig = buildProductSetPurgeConfig();
  }
  buildCounterPurgeProductsRequest--;
  return o;
}

checkPurgeProductsRequest(api.PurgeProductsRequest o) {
  buildCounterPurgeProductsRequest++;
  if (buildCounterPurgeProductsRequest < 3) {
    unittest.expect(o.deleteOrphanProducts, unittest.isTrue);
    unittest.expect(o.force, unittest.isTrue);
    checkProductSetPurgeConfig(o.productSetPurgeConfig);
  }
  buildCounterPurgeProductsRequest--;
}

buildUnnamed2949() {
  var o = new core.List<api.BoundingPoly>();
  o.add(buildBoundingPoly());
  o.add(buildBoundingPoly());
  return o;
}

checkUnnamed2949(core.List<api.BoundingPoly> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBoundingPoly(o[0]);
  checkBoundingPoly(o[1]);
}

core.int buildCounterReferenceImage = 0;
buildReferenceImage() {
  var o = new api.ReferenceImage();
  buildCounterReferenceImage++;
  if (buildCounterReferenceImage < 3) {
    o.boundingPolys = buildUnnamed2949();
    o.name = "foo";
    o.uri = "foo";
  }
  buildCounterReferenceImage--;
  return o;
}

checkReferenceImage(api.ReferenceImage o) {
  buildCounterReferenceImage++;
  if (buildCounterReferenceImage < 3) {
    checkUnnamed2949(o.boundingPolys);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterReferenceImage--;
}

core.int buildCounterRemoveProductFromProductSetRequest = 0;
buildRemoveProductFromProductSetRequest() {
  var o = new api.RemoveProductFromProductSetRequest();
  buildCounterRemoveProductFromProductSetRequest++;
  if (buildCounterRemoveProductFromProductSetRequest < 3) {
    o.product = "foo";
  }
  buildCounterRemoveProductFromProductSetRequest--;
  return o;
}

checkRemoveProductFromProductSetRequest(
    api.RemoveProductFromProductSetRequest o) {
  buildCounterRemoveProductFromProductSetRequest++;
  if (buildCounterRemoveProductFromProductSetRequest < 3) {
    unittest.expect(o.product, unittest.equals('foo'));
  }
  buildCounterRemoveProductFromProductSetRequest--;
}

core.int buildCounterResult = 0;
buildResult() {
  var o = new api.Result();
  buildCounterResult++;
  if (buildCounterResult < 3) {
    o.image = "foo";
    o.product = buildProduct();
    o.score = 42.0;
  }
  buildCounterResult--;
  return o;
}

checkResult(api.Result o) {
  buildCounterResult++;
  if (buildCounterResult < 3) {
    unittest.expect(o.image, unittest.equals('foo'));
    checkProduct(o.product);
    unittest.expect(o.score, unittest.equals(42.0));
  }
  buildCounterResult--;
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

buildUnnamed2950() {
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

checkUnnamed2950(core.Map<core.String, core.Object> o) {
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

buildUnnamed2951() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed2950());
  o.add(buildUnnamed2950());
  return o;
}

checkUnnamed2951(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2950(o[0]);
  checkUnnamed2950(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2951();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2951(o.details);
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

buildUnnamed2952() {
  var o = new core.List<api.Page>();
  o.add(buildPage());
  o.add(buildPage());
  return o;
}

checkUnnamed2952(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0]);
  checkPage(o[1]);
}

core.int buildCounterTextAnnotation = 0;
buildTextAnnotation() {
  var o = new api.TextAnnotation();
  buildCounterTextAnnotation++;
  if (buildCounterTextAnnotation < 3) {
    o.pages = buildUnnamed2952();
    o.text = "foo";
  }
  buildCounterTextAnnotation--;
  return o;
}

checkTextAnnotation(api.TextAnnotation o) {
  buildCounterTextAnnotation++;
  if (buildCounterTextAnnotation < 3) {
    checkUnnamed2952(o.pages);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterTextAnnotation--;
}

buildUnnamed2953() {
  var o = new core.List<api.DetectedLanguage>();
  o.add(buildDetectedLanguage());
  o.add(buildDetectedLanguage());
  return o;
}

checkUnnamed2953(core.List<api.DetectedLanguage> o) {
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
    o.detectedLanguages = buildUnnamed2953();
  }
  buildCounterTextProperty--;
  return o;
}

checkTextProperty(api.TextProperty o) {
  buildCounterTextProperty++;
  if (buildCounterTextProperty < 3) {
    checkDetectedBreak(o.detectedBreak);
    checkUnnamed2953(o.detectedLanguages);
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

buildUnnamed2954() {
  var o = new core.List<api.WebLabel>();
  o.add(buildWebLabel());
  o.add(buildWebLabel());
  return o;
}

checkUnnamed2954(core.List<api.WebLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebLabel(o[0]);
  checkWebLabel(o[1]);
}

buildUnnamed2955() {
  var o = new core.List<api.WebImage>();
  o.add(buildWebImage());
  o.add(buildWebImage());
  return o;
}

checkUnnamed2955(core.List<api.WebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebImage(o[0]);
  checkWebImage(o[1]);
}

buildUnnamed2956() {
  var o = new core.List<api.WebPage>();
  o.add(buildWebPage());
  o.add(buildWebPage());
  return o;
}

checkUnnamed2956(core.List<api.WebPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebPage(o[0]);
  checkWebPage(o[1]);
}

buildUnnamed2957() {
  var o = new core.List<api.WebImage>();
  o.add(buildWebImage());
  o.add(buildWebImage());
  return o;
}

checkUnnamed2957(core.List<api.WebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebImage(o[0]);
  checkWebImage(o[1]);
}

buildUnnamed2958() {
  var o = new core.List<api.WebImage>();
  o.add(buildWebImage());
  o.add(buildWebImage());
  return o;
}

checkUnnamed2958(core.List<api.WebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebImage(o[0]);
  checkWebImage(o[1]);
}

buildUnnamed2959() {
  var o = new core.List<api.WebEntity>();
  o.add(buildWebEntity());
  o.add(buildWebEntity());
  return o;
}

checkUnnamed2959(core.List<api.WebEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebEntity(o[0]);
  checkWebEntity(o[1]);
}

core.int buildCounterWebDetection = 0;
buildWebDetection() {
  var o = new api.WebDetection();
  buildCounterWebDetection++;
  if (buildCounterWebDetection < 3) {
    o.bestGuessLabels = buildUnnamed2954();
    o.fullMatchingImages = buildUnnamed2955();
    o.pagesWithMatchingImages = buildUnnamed2956();
    o.partialMatchingImages = buildUnnamed2957();
    o.visuallySimilarImages = buildUnnamed2958();
    o.webEntities = buildUnnamed2959();
  }
  buildCounterWebDetection--;
  return o;
}

checkWebDetection(api.WebDetection o) {
  buildCounterWebDetection++;
  if (buildCounterWebDetection < 3) {
    checkUnnamed2954(o.bestGuessLabels);
    checkUnnamed2955(o.fullMatchingImages);
    checkUnnamed2956(o.pagesWithMatchingImages);
    checkUnnamed2957(o.partialMatchingImages);
    checkUnnamed2958(o.visuallySimilarImages);
    checkUnnamed2959(o.webEntities);
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

buildUnnamed2960() {
  var o = new core.List<api.WebImage>();
  o.add(buildWebImage());
  o.add(buildWebImage());
  return o;
}

checkUnnamed2960(core.List<api.WebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebImage(o[0]);
  checkWebImage(o[1]);
}

buildUnnamed2961() {
  var o = new core.List<api.WebImage>();
  o.add(buildWebImage());
  o.add(buildWebImage());
  return o;
}

checkUnnamed2961(core.List<api.WebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebImage(o[0]);
  checkWebImage(o[1]);
}

core.int buildCounterWebPage = 0;
buildWebPage() {
  var o = new api.WebPage();
  buildCounterWebPage++;
  if (buildCounterWebPage < 3) {
    o.fullMatchingImages = buildUnnamed2960();
    o.pageTitle = "foo";
    o.partialMatchingImages = buildUnnamed2961();
    o.score = 42.0;
    o.url = "foo";
  }
  buildCounterWebPage--;
  return o;
}

checkWebPage(api.WebPage o) {
  buildCounterWebPage++;
  if (buildCounterWebPage < 3) {
    checkUnnamed2960(o.fullMatchingImages);
    unittest.expect(o.pageTitle, unittest.equals('foo'));
    checkUnnamed2961(o.partialMatchingImages);
    unittest.expect(o.score, unittest.equals(42.0));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterWebPage--;
}

buildUnnamed2962() {
  var o = new core.List<api.Symbol>();
  o.add(buildSymbol());
  o.add(buildSymbol());
  return o;
}

checkUnnamed2962(core.List<api.Symbol> o) {
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
    o.symbols = buildUnnamed2962();
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
    checkUnnamed2962(o.symbols);
  }
  buildCounterWord--;
}

main() {
  unittest.group("obj-schema-AddProductToProductSetRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddProductToProductSetRequest();
      var od = new api.AddProductToProductSetRequest.fromJson(o.toJson());
      checkAddProductToProductSetRequest(od);
    });
  });

  unittest.group("obj-schema-AnnotateFileRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnnotateFileRequest();
      var od = new api.AnnotateFileRequest.fromJson(o.toJson());
      checkAnnotateFileRequest(od);
    });
  });

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

  unittest.group("obj-schema-AsyncBatchAnnotateImagesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsyncBatchAnnotateImagesRequest();
      var od = new api.AsyncBatchAnnotateImagesRequest.fromJson(o.toJson());
      checkAsyncBatchAnnotateImagesRequest(od);
    });
  });

  unittest.group("obj-schema-AsyncBatchAnnotateImagesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsyncBatchAnnotateImagesResponse();
      var od = new api.AsyncBatchAnnotateImagesResponse.fromJson(o.toJson());
      checkAsyncBatchAnnotateImagesResponse(od);
    });
  });

  unittest.group("obj-schema-BatchAnnotateFilesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchAnnotateFilesRequest();
      var od = new api.BatchAnnotateFilesRequest.fromJson(o.toJson());
      checkBatchAnnotateFilesRequest(od);
    });
  });

  unittest.group("obj-schema-BatchAnnotateFilesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchAnnotateFilesResponse();
      var od = new api.BatchAnnotateFilesResponse.fromJson(o.toJson());
      checkBatchAnnotateFilesResponse(od);
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

  unittest.group("obj-schema-BatchOperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchOperationMetadata();
      var od = new api.BatchOperationMetadata.fromJson(o.toJson());
      checkBatchOperationMetadata(od);
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

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation();
      var od =
          new api.GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation(od);
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

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1NormalizedVertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1NormalizedVertex();
      var od = new api.GoogleCloudVisionV1p1beta1NormalizedVertex.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p1beta1NormalizedVertex(od);
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

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1Product", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1Product();
      var od = new api.GoogleCloudVisionV1p1beta1Product.fromJson(o.toJson());
      checkGoogleCloudVisionV1p1beta1Product(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1ProductKeyValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1ProductKeyValue();
      var od = new api.GoogleCloudVisionV1p1beta1ProductKeyValue.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p1beta1ProductKeyValue(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p1beta1ProductSearchResults",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1ProductSearchResults();
      var od = new api.GoogleCloudVisionV1p1beta1ProductSearchResults.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p1beta1ProductSearchResults(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult();
      var od = new api
              .GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation();
      var od = new api
              .GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p1beta1ProductSearchResultsResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p1beta1ProductSearchResultsResult();
      var od =
          new api.GoogleCloudVisionV1p1beta1ProductSearchResultsResult.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p1beta1ProductSearchResultsResult(od);
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

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation();
      var od =
          new api.GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation(od);
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

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1Product", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1Product();
      var od = new api.GoogleCloudVisionV1p2beta1Product.fromJson(o.toJson());
      checkGoogleCloudVisionV1p2beta1Product(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1ProductKeyValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1ProductKeyValue();
      var od = new api.GoogleCloudVisionV1p2beta1ProductKeyValue.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p2beta1ProductKeyValue(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p2beta1ProductSearchResults",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1ProductSearchResults();
      var od = new api.GoogleCloudVisionV1p2beta1ProductSearchResults.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p2beta1ProductSearchResults(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult();
      var od = new api
              .GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation();
      var od = new api
              .GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p2beta1ProductSearchResultsResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p2beta1ProductSearchResultsResult();
      var od =
          new api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p2beta1ProductSearchResultsResult(od);
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
      "obj-schema-GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult();
      var od = new api
              .GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation();
      var od = new api
              .GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation(od);
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

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1AnnotateFileResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1AnnotateFileResponse();
      var od = new api.GoogleCloudVisionV1p4beta1AnnotateFileResponse.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1AnnotateFileResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1AnnotateImageResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1AnnotateImageResponse();
      var od = new api.GoogleCloudVisionV1p4beta1AnnotateImageResponse.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1AnnotateImageResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse();
      var od =
          new api.GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse();
      var od = new api
              .GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse();
      var od = new api
              .GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse();
      var od =
          new api.GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1BatchOperationMetadata",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1BatchOperationMetadata();
      var od =
          new api.GoogleCloudVisionV1p4beta1BatchOperationMetadata.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p4beta1BatchOperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1Block", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1Block();
      var od = new api.GoogleCloudVisionV1p4beta1Block.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1Block(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1BoundingPoly", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1BoundingPoly();
      var od =
          new api.GoogleCloudVisionV1p4beta1BoundingPoly.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1BoundingPoly(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1Celebrity", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1Celebrity();
      var od = new api.GoogleCloudVisionV1p4beta1Celebrity.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1Celebrity(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1ColorInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1ColorInfo();
      var od = new api.GoogleCloudVisionV1p4beta1ColorInfo.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1ColorInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1CropHint", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1CropHint();
      var od = new api.GoogleCloudVisionV1p4beta1CropHint.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1CropHint(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1CropHintsAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1CropHintsAnnotation();
      var od = new api.GoogleCloudVisionV1p4beta1CropHintsAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1CropHintsAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p4beta1DominantColorsAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1DominantColorsAnnotation();
      var od =
          new api.GoogleCloudVisionV1p4beta1DominantColorsAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p4beta1DominantColorsAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1EntityAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1EntityAnnotation();
      var od = new api.GoogleCloudVisionV1p4beta1EntityAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1EntityAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1FaceAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1FaceAnnotation();
      var od =
          new api.GoogleCloudVisionV1p4beta1FaceAnnotation.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1FaceAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1FaceAnnotationLandmark",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1FaceAnnotationLandmark();
      var od =
          new api.GoogleCloudVisionV1p4beta1FaceAnnotationLandmark.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p4beta1FaceAnnotationLandmark(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1FaceRecognitionResult",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1FaceRecognitionResult();
      var od = new api.GoogleCloudVisionV1p4beta1FaceRecognitionResult.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1FaceRecognitionResult(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1GcsDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1GcsDestination();
      var od =
          new api.GoogleCloudVisionV1p4beta1GcsDestination.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1GcsDestination(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1GcsSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1GcsSource();
      var od = new api.GoogleCloudVisionV1p4beta1GcsSource.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1GcsSource(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1ImageAnnotationContext",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1ImageAnnotationContext();
      var od =
          new api.GoogleCloudVisionV1p4beta1ImageAnnotationContext.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p4beta1ImageAnnotationContext(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1ImageProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1ImageProperties();
      var od = new api.GoogleCloudVisionV1p4beta1ImageProperties.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1ImageProperties(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p4beta1ImportProductSetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1ImportProductSetsResponse();
      var od =
          new api.GoogleCloudVisionV1p4beta1ImportProductSetsResponse.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p4beta1ImportProductSetsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1InputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1InputConfig();
      var od =
          new api.GoogleCloudVisionV1p4beta1InputConfig.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1InputConfig(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation();
      var od =
          new api.GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1LocationInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1LocationInfo();
      var od =
          new api.GoogleCloudVisionV1p4beta1LocationInfo.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1LocationInfo(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1NormalizedVertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1NormalizedVertex();
      var od = new api.GoogleCloudVisionV1p4beta1NormalizedVertex.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1NormalizedVertex(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1OperationMetadata();
      var od = new api.GoogleCloudVisionV1p4beta1OperationMetadata.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1OperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1OutputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1OutputConfig();
      var od =
          new api.GoogleCloudVisionV1p4beta1OutputConfig.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1OutputConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1Page", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1Page();
      var od = new api.GoogleCloudVisionV1p4beta1Page.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1Page(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1Paragraph", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1Paragraph();
      var od = new api.GoogleCloudVisionV1p4beta1Paragraph.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1Paragraph(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1Position", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1Position();
      var od = new api.GoogleCloudVisionV1p4beta1Position.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1Position(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1Product", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1Product();
      var od = new api.GoogleCloudVisionV1p4beta1Product.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1Product(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1ProductKeyValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1ProductKeyValue();
      var od = new api.GoogleCloudVisionV1p4beta1ProductKeyValue.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1ProductKeyValue(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1ProductSearchResults",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1ProductSearchResults();
      var od = new api.GoogleCloudVisionV1p4beta1ProductSearchResults.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1ProductSearchResults(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult();
      var od = new api
              .GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation();
      var od = new api
              .GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p4beta1ProductSearchResultsResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1ProductSearchResultsResult();
      var od =
          new api.GoogleCloudVisionV1p4beta1ProductSearchResultsResult.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p4beta1ProductSearchResultsResult(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1Property", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1Property();
      var od = new api.GoogleCloudVisionV1p4beta1Property.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1Property(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1ReferenceImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1ReferenceImage();
      var od =
          new api.GoogleCloudVisionV1p4beta1ReferenceImage.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1ReferenceImage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1SafeSearchAnnotation",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1SafeSearchAnnotation();
      var od = new api.GoogleCloudVisionV1p4beta1SafeSearchAnnotation.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1SafeSearchAnnotation(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1Symbol", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1Symbol();
      var od = new api.GoogleCloudVisionV1p4beta1Symbol.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1Symbol(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1TextAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1TextAnnotation();
      var od =
          new api.GoogleCloudVisionV1p4beta1TextAnnotation.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1TextAnnotation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak();
      var od = new api
              .GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage();
      var od = new api
              .GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudVisionV1p4beta1TextAnnotationTextProperty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1TextAnnotationTextProperty();
      var od =
          new api.GoogleCloudVisionV1p4beta1TextAnnotationTextProperty.fromJson(
              o.toJson());
      checkGoogleCloudVisionV1p4beta1TextAnnotationTextProperty(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1Vertex", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1Vertex();
      var od = new api.GoogleCloudVisionV1p4beta1Vertex.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1Vertex(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1WebDetection", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1WebDetection();
      var od =
          new api.GoogleCloudVisionV1p4beta1WebDetection.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1WebDetection(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1WebDetectionWebEntity",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1WebDetectionWebEntity();
      var od = new api.GoogleCloudVisionV1p4beta1WebDetectionWebEntity.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1WebDetectionWebEntity(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1WebDetectionWebImage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1WebDetectionWebImage();
      var od = new api.GoogleCloudVisionV1p4beta1WebDetectionWebImage.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1WebDetectionWebLabel",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1WebDetectionWebLabel();
      var od = new api.GoogleCloudVisionV1p4beta1WebDetectionWebLabel.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1WebDetectionWebLabel(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1WebDetectionWebPage",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1WebDetectionWebPage();
      var od = new api.GoogleCloudVisionV1p4beta1WebDetectionWebPage.fromJson(
          o.toJson());
      checkGoogleCloudVisionV1p4beta1WebDetectionWebPage(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudVisionV1p4beta1Word", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudVisionV1p4beta1Word();
      var od = new api.GoogleCloudVisionV1p4beta1Word.fromJson(o.toJson());
      checkGoogleCloudVisionV1p4beta1Word(od);
    });
  });

  unittest.group("obj-schema-GroupedResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroupedResult();
      var od = new api.GroupedResult.fromJson(o.toJson());
      checkGroupedResult(od);
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

  unittest.group("obj-schema-ImportProductSetsGcsSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportProductSetsGcsSource();
      var od = new api.ImportProductSetsGcsSource.fromJson(o.toJson());
      checkImportProductSetsGcsSource(od);
    });
  });

  unittest.group("obj-schema-ImportProductSetsInputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportProductSetsInputConfig();
      var od = new api.ImportProductSetsInputConfig.fromJson(o.toJson());
      checkImportProductSetsInputConfig(od);
    });
  });

  unittest.group("obj-schema-ImportProductSetsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportProductSetsRequest();
      var od = new api.ImportProductSetsRequest.fromJson(o.toJson());
      checkImportProductSetsRequest(od);
    });
  });

  unittest.group("obj-schema-ImportProductSetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportProductSetsResponse();
      var od = new api.ImportProductSetsResponse.fromJson(o.toJson());
      checkImportProductSetsResponse(od);
    });
  });

  unittest.group("obj-schema-InputConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildInputConfig();
      var od = new api.InputConfig.fromJson(o.toJson());
      checkInputConfig(od);
    });
  });

  unittest.group("obj-schema-KeyValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildKeyValue();
      var od = new api.KeyValue.fromJson(o.toJson());
      checkKeyValue(od);
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

  unittest.group("obj-schema-ListProductSetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListProductSetsResponse();
      var od = new api.ListProductSetsResponse.fromJson(o.toJson());
      checkListProductSetsResponse(od);
    });
  });

  unittest.group("obj-schema-ListProductsInProductSetResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListProductsInProductSetResponse();
      var od = new api.ListProductsInProductSetResponse.fromJson(o.toJson());
      checkListProductsInProductSetResponse(od);
    });
  });

  unittest.group("obj-schema-ListProductsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListProductsResponse();
      var od = new api.ListProductsResponse.fromJson(o.toJson());
      checkListProductsResponse(od);
    });
  });

  unittest.group("obj-schema-ListReferenceImagesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListReferenceImagesResponse();
      var od = new api.ListReferenceImagesResponse.fromJson(o.toJson());
      checkListReferenceImagesResponse(od);
    });
  });

  unittest.group("obj-schema-LocalizedObjectAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocalizedObjectAnnotation();
      var od = new api.LocalizedObjectAnnotation.fromJson(o.toJson());
      checkLocalizedObjectAnnotation(od);
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

  unittest.group("obj-schema-ObjectAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildObjectAnnotation();
      var od = new api.ObjectAnnotation.fromJson(o.toJson());
      checkObjectAnnotation(od);
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

  unittest.group("obj-schema-Product", () {
    unittest.test("to-json--from-json", () {
      var o = buildProduct();
      var od = new api.Product.fromJson(o.toJson());
      checkProduct(od);
    });
  });

  unittest.group("obj-schema-ProductSearchParams", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductSearchParams();
      var od = new api.ProductSearchParams.fromJson(o.toJson());
      checkProductSearchParams(od);
    });
  });

  unittest.group("obj-schema-ProductSearchResults", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductSearchResults();
      var od = new api.ProductSearchResults.fromJson(o.toJson());
      checkProductSearchResults(od);
    });
  });

  unittest.group("obj-schema-ProductSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductSet();
      var od = new api.ProductSet.fromJson(o.toJson());
      checkProductSet(od);
    });
  });

  unittest.group("obj-schema-ProductSetPurgeConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductSetPurgeConfig();
      var od = new api.ProductSetPurgeConfig.fromJson(o.toJson());
      checkProductSetPurgeConfig(od);
    });
  });

  unittest.group("obj-schema-Property", () {
    unittest.test("to-json--from-json", () {
      var o = buildProperty();
      var od = new api.Property.fromJson(o.toJson());
      checkProperty(od);
    });
  });

  unittest.group("obj-schema-PurgeProductsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPurgeProductsRequest();
      var od = new api.PurgeProductsRequest.fromJson(o.toJson());
      checkPurgeProductsRequest(od);
    });
  });

  unittest.group("obj-schema-ReferenceImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildReferenceImage();
      var od = new api.ReferenceImage.fromJson(o.toJson());
      checkReferenceImage(od);
    });
  });

  unittest.group("obj-schema-RemoveProductFromProductSetRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRemoveProductFromProductSetRequest();
      var od = new api.RemoveProductFromProductSetRequest.fromJson(o.toJson());
      checkRemoveProductFromProductSetRequest(od);
    });
  });

  unittest.group("obj-schema-Result", () {
    unittest.test("to-json--from-json", () {
      var o = buildResult();
      var od = new api.Result.fromJson(o.toJson());
      checkResult(od);
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
    unittest.test("method--annotate", () {
      var mock = new HttpServerMock();
      api.FilesResourceApi res = new api.VisionApi(mock).files;
      var arg_request = buildBatchAnnotateFilesRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchAnnotateFilesRequest.fromJson(json);
        checkBatchAnnotateFilesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v1/files:annotate"));
        pathOffset += 17;

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
        var resp = convert.json.encode(buildBatchAnnotateFilesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .annotate(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchAnnotateFilesResponse(response);
      })));
    });

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

    unittest.test("method--asyncBatchAnnotate", () {
      var mock = new HttpServerMock();
      api.ImagesResourceApi res = new api.VisionApi(mock).images;
      var arg_request = buildAsyncBatchAnnotateImagesRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AsyncBatchAnnotateImagesRequest.fromJson(json);
        checkAsyncBatchAnnotateImagesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("v1/images:asyncBatchAnnotate"));
        pathOffset += 28;

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

  unittest.group("resource-ProjectsFilesResourceApi", () {
    unittest.test("method--annotate", () {
      var mock = new HttpServerMock();
      api.ProjectsFilesResourceApi res = new api.VisionApi(mock).projects.files;
      var arg_request = buildBatchAnnotateFilesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchAnnotateFilesRequest.fromJson(json);
        checkBatchAnnotateFilesRequest(obj);

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
        var resp = convert.json.encode(buildBatchAnnotateFilesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .annotate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchAnnotateFilesResponse(response);
      })));
    });

    unittest.test("method--asyncBatchAnnotate", () {
      var mock = new HttpServerMock();
      api.ProjectsFilesResourceApi res = new api.VisionApi(mock).projects.files;
      var arg_request = buildAsyncBatchAnnotateFilesRequest();
      var arg_parent = "foo";
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
          .asyncBatchAnnotate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsImagesResourceApi", () {
    unittest.test("method--annotate", () {
      var mock = new HttpServerMock();
      api.ProjectsImagesResourceApi res =
          new api.VisionApi(mock).projects.images;
      var arg_request = buildBatchAnnotateImagesRequest();
      var arg_parent = "foo";
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
        var resp = convert.json.encode(buildBatchAnnotateImagesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .annotate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchAnnotateImagesResponse(response);
      })));
    });

    unittest.test("method--asyncBatchAnnotate", () {
      var mock = new HttpServerMock();
      api.ProjectsImagesResourceApi res =
          new api.VisionApi(mock).projects.images;
      var arg_request = buildAsyncBatchAnnotateImagesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AsyncBatchAnnotateImagesRequest.fromJson(json);
        checkAsyncBatchAnnotateImagesRequest(obj);

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
          .asyncBatchAnnotate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsFilesResourceApi", () {
    unittest.test("method--annotate", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsFilesResourceApi res =
          new api.VisionApi(mock).projects.locations.files;
      var arg_request = buildBatchAnnotateFilesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchAnnotateFilesRequest.fromJson(json);
        checkBatchAnnotateFilesRequest(obj);

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
        var resp = convert.json.encode(buildBatchAnnotateFilesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .annotate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchAnnotateFilesResponse(response);
      })));
    });

    unittest.test("method--asyncBatchAnnotate", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsFilesResourceApi res =
          new api.VisionApi(mock).projects.locations.files;
      var arg_request = buildAsyncBatchAnnotateFilesRequest();
      var arg_parent = "foo";
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
          .asyncBatchAnnotate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsImagesResourceApi", () {
    unittest.test("method--annotate", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsImagesResourceApi res =
          new api.VisionApi(mock).projects.locations.images;
      var arg_request = buildBatchAnnotateImagesRequest();
      var arg_parent = "foo";
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
        var resp = convert.json.encode(buildBatchAnnotateImagesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .annotate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchAnnotateImagesResponse(response);
      })));
    });

    unittest.test("method--asyncBatchAnnotate", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsImagesResourceApi res =
          new api.VisionApi(mock).projects.locations.images;
      var arg_request = buildAsyncBatchAnnotateImagesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AsyncBatchAnnotateImagesRequest.fromJson(json);
        checkAsyncBatchAnnotateImagesRequest(obj);

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
          .asyncBatchAnnotate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsOperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.VisionApi(mock).projects.locations.operations;
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

  unittest.group("resource-ProjectsLocationsProductSetsResourceApi", () {
    unittest.test("method--addProduct", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsProductSetsResourceApi res =
          new api.VisionApi(mock).projects.locations.productSets;
      var arg_request = buildAddProductToProductSetRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AddProductToProductSetRequest.fromJson(json);
        checkAddProductToProductSetRequest(obj);

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
          .addProduct(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsProductSetsResourceApi res =
          new api.VisionApi(mock).projects.locations.productSets;
      var arg_request = buildProductSet();
      var arg_parent = "foo";
      var arg_productSetId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ProductSet.fromJson(json);
        checkProductSet(obj);

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
        unittest.expect(
            queryMap["productSetId"].first, unittest.equals(arg_productSetId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProductSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              productSetId: arg_productSetId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductSet(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsProductSetsResourceApi res =
          new api.VisionApi(mock).projects.locations.productSets;
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
      api.ProjectsLocationsProductSetsResourceApi res =
          new api.VisionApi(mock).projects.locations.productSets;
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
        var resp = convert.json.encode(buildProductSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductSet(response);
      })));
    });

    unittest.test("method--import", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsProductSetsResourceApi res =
          new api.VisionApi(mock).projects.locations.productSets;
      var arg_request = buildImportProductSetsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ImportProductSetsRequest.fromJson(json);
        checkImportProductSetsRequest(obj);

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
          .import(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsProductSetsResourceApi res =
          new api.VisionApi(mock).projects.locations.productSets;
      var arg_parent = "foo";
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListProductSetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListProductSetsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsProductSetsResourceApi res =
          new api.VisionApi(mock).projects.locations.productSets;
      var arg_request = buildProductSet();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ProductSet.fromJson(json);
        checkProductSet(obj);

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
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProductSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductSet(response);
      })));
    });

    unittest.test("method--removeProduct", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsProductSetsResourceApi res =
          new api.VisionApi(mock).projects.locations.productSets;
      var arg_request = buildRemoveProductFromProductSetRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RemoveProductFromProductSetRequest.fromJson(json);
        checkRemoveProductFromProductSetRequest(obj);

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
          .removeProduct(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsProductSetsProductsResourceApi",
      () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsProductSetsProductsResourceApi res =
          new api.VisionApi(mock).projects.locations.productSets.products;
      var arg_name = "foo";
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListProductsInProductSetResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListProductsInProductSetResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsProductsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsProductsResourceApi res =
          new api.VisionApi(mock).projects.locations.products;
      var arg_request = buildProduct();
      var arg_parent = "foo";
      var arg_productId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Product.fromJson(json);
        checkProduct(obj);

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
        unittest.expect(
            queryMap["productId"].first, unittest.equals(arg_productId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              productId: arg_productId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProduct(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsProductsResourceApi res =
          new api.VisionApi(mock).projects.locations.products;
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
      api.ProjectsLocationsProductsResourceApi res =
          new api.VisionApi(mock).projects.locations.products;
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
        var resp = convert.json.encode(buildProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProduct(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsProductsResourceApi res =
          new api.VisionApi(mock).projects.locations.products;
      var arg_parent = "foo";
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListProductsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListProductsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsProductsResourceApi res =
          new api.VisionApi(mock).projects.locations.products;
      var arg_request = buildProduct();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Product.fromJson(json);
        checkProduct(obj);

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
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProduct(response);
      })));
    });

    unittest.test("method--purge", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsProductsResourceApi res =
          new api.VisionApi(mock).projects.locations.products;
      var arg_request = buildPurgeProductsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PurgeProductsRequest.fromJson(json);
        checkPurgeProductsRequest(obj);

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
          .purge(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsProductsReferenceImagesResourceApi",
      () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsProductsReferenceImagesResourceApi res =
          new api.VisionApi(mock).projects.locations.products.referenceImages;
      var arg_request = buildReferenceImage();
      var arg_parent = "foo";
      var arg_referenceImageId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReferenceImage.fromJson(json);
        checkReferenceImage(obj);

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
        unittest.expect(queryMap["referenceImageId"].first,
            unittest.equals(arg_referenceImageId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildReferenceImage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              referenceImageId: arg_referenceImageId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReferenceImage(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsProductsReferenceImagesResourceApi res =
          new api.VisionApi(mock).projects.locations.products.referenceImages;
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
      api.ProjectsLocationsProductsReferenceImagesResourceApi res =
          new api.VisionApi(mock).projects.locations.products.referenceImages;
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
        var resp = convert.json.encode(buildReferenceImage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReferenceImage(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsProductsReferenceImagesResourceApi res =
          new api.VisionApi(mock).projects.locations.products.referenceImages;
      var arg_parent = "foo";
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListReferenceImagesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListReferenceImagesResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsOperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          new api.VisionApi(mock).projects.operations;
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
}
