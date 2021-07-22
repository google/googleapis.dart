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

import 'package:googleapis/vision/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddProductToProductSetRequest = 0;
api.AddProductToProductSetRequest buildAddProductToProductSetRequest() {
  final o = api.AddProductToProductSetRequest();
  buildCounterAddProductToProductSetRequest++;
  if (buildCounterAddProductToProductSetRequest < 3) {
    o.product = 'foo';
  }
  buildCounterAddProductToProductSetRequest--;
  return o;
}

void checkAddProductToProductSetRequest(api.AddProductToProductSetRequest o) {
  buildCounterAddProductToProductSetRequest++;
  if (buildCounterAddProductToProductSetRequest < 3) {
    unittest.expect(
      o.product!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddProductToProductSetRequest--;
}

core.List<api.Feature> buildUnnamed4210() => [
      buildFeature(),
      buildFeature(),
    ];

void checkUnnamed4210(core.List<api.Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeature(o[0]);
  checkFeature(o[1]);
}

core.List<core.int> buildUnnamed4211() => [
      42,
      42,
    ];

void checkUnnamed4211(core.List<core.int> o) {
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

core.int buildCounterAnnotateFileRequest = 0;
api.AnnotateFileRequest buildAnnotateFileRequest() {
  final o = api.AnnotateFileRequest();
  buildCounterAnnotateFileRequest++;
  if (buildCounterAnnotateFileRequest < 3) {
    o.features = buildUnnamed4210();
    o.imageContext = buildImageContext();
    o.inputConfig = buildInputConfig();
    o.pages = buildUnnamed4211();
  }
  buildCounterAnnotateFileRequest--;
  return o;
}

void checkAnnotateFileRequest(api.AnnotateFileRequest o) {
  buildCounterAnnotateFileRequest++;
  if (buildCounterAnnotateFileRequest < 3) {
    checkUnnamed4210(o.features!);
    checkImageContext(o.imageContext!);
    checkInputConfig(o.inputConfig!);
    checkUnnamed4211(o.pages!);
  }
  buildCounterAnnotateFileRequest--;
}

core.List<api.AnnotateImageResponse> buildUnnamed4212() => [
      buildAnnotateImageResponse(),
      buildAnnotateImageResponse(),
    ];

void checkUnnamed4212(core.List<api.AnnotateImageResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotateImageResponse(o[0]);
  checkAnnotateImageResponse(o[1]);
}

core.int buildCounterAnnotateFileResponse = 0;
api.AnnotateFileResponse buildAnnotateFileResponse() {
  final o = api.AnnotateFileResponse();
  buildCounterAnnotateFileResponse++;
  if (buildCounterAnnotateFileResponse < 3) {
    o.error = buildStatus();
    o.inputConfig = buildInputConfig();
    o.responses = buildUnnamed4212();
    o.totalPages = 42;
  }
  buildCounterAnnotateFileResponse--;
  return o;
}

void checkAnnotateFileResponse(api.AnnotateFileResponse o) {
  buildCounterAnnotateFileResponse++;
  if (buildCounterAnnotateFileResponse < 3) {
    checkStatus(o.error!);
    checkInputConfig(o.inputConfig!);
    checkUnnamed4212(o.responses!);
    unittest.expect(
      o.totalPages!,
      unittest.equals(42),
    );
  }
  buildCounterAnnotateFileResponse--;
}

core.List<api.Feature> buildUnnamed4213() => [
      buildFeature(),
      buildFeature(),
    ];

void checkUnnamed4213(core.List<api.Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeature(o[0]);
  checkFeature(o[1]);
}

core.int buildCounterAnnotateImageRequest = 0;
api.AnnotateImageRequest buildAnnotateImageRequest() {
  final o = api.AnnotateImageRequest();
  buildCounterAnnotateImageRequest++;
  if (buildCounterAnnotateImageRequest < 3) {
    o.features = buildUnnamed4213();
    o.image = buildImage();
    o.imageContext = buildImageContext();
  }
  buildCounterAnnotateImageRequest--;
  return o;
}

void checkAnnotateImageRequest(api.AnnotateImageRequest o) {
  buildCounterAnnotateImageRequest++;
  if (buildCounterAnnotateImageRequest < 3) {
    checkUnnamed4213(o.features!);
    checkImage(o.image!);
    checkImageContext(o.imageContext!);
  }
  buildCounterAnnotateImageRequest--;
}

core.List<api.FaceAnnotation> buildUnnamed4214() => [
      buildFaceAnnotation(),
      buildFaceAnnotation(),
    ];

void checkUnnamed4214(core.List<api.FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFaceAnnotation(o[0]);
  checkFaceAnnotation(o[1]);
}

core.List<api.EntityAnnotation> buildUnnamed4215() => [
      buildEntityAnnotation(),
      buildEntityAnnotation(),
    ];

void checkUnnamed4215(core.List<api.EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityAnnotation(o[0]);
  checkEntityAnnotation(o[1]);
}

core.List<api.EntityAnnotation> buildUnnamed4216() => [
      buildEntityAnnotation(),
      buildEntityAnnotation(),
    ];

void checkUnnamed4216(core.List<api.EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityAnnotation(o[0]);
  checkEntityAnnotation(o[1]);
}

core.List<api.LocalizedObjectAnnotation> buildUnnamed4217() => [
      buildLocalizedObjectAnnotation(),
      buildLocalizedObjectAnnotation(),
    ];

void checkUnnamed4217(core.List<api.LocalizedObjectAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalizedObjectAnnotation(o[0]);
  checkLocalizedObjectAnnotation(o[1]);
}

core.List<api.EntityAnnotation> buildUnnamed4218() => [
      buildEntityAnnotation(),
      buildEntityAnnotation(),
    ];

void checkUnnamed4218(core.List<api.EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityAnnotation(o[0]);
  checkEntityAnnotation(o[1]);
}

core.List<api.EntityAnnotation> buildUnnamed4219() => [
      buildEntityAnnotation(),
      buildEntityAnnotation(),
    ];

void checkUnnamed4219(core.List<api.EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityAnnotation(o[0]);
  checkEntityAnnotation(o[1]);
}

core.int buildCounterAnnotateImageResponse = 0;
api.AnnotateImageResponse buildAnnotateImageResponse() {
  final o = api.AnnotateImageResponse();
  buildCounterAnnotateImageResponse++;
  if (buildCounterAnnotateImageResponse < 3) {
    o.context = buildImageAnnotationContext();
    o.cropHintsAnnotation = buildCropHintsAnnotation();
    o.error = buildStatus();
    o.faceAnnotations = buildUnnamed4214();
    o.fullTextAnnotation = buildTextAnnotation();
    o.imagePropertiesAnnotation = buildImageProperties();
    o.labelAnnotations = buildUnnamed4215();
    o.landmarkAnnotations = buildUnnamed4216();
    o.localizedObjectAnnotations = buildUnnamed4217();
    o.logoAnnotations = buildUnnamed4218();
    o.productSearchResults = buildProductSearchResults();
    o.safeSearchAnnotation = buildSafeSearchAnnotation();
    o.textAnnotations = buildUnnamed4219();
    o.webDetection = buildWebDetection();
  }
  buildCounterAnnotateImageResponse--;
  return o;
}

void checkAnnotateImageResponse(api.AnnotateImageResponse o) {
  buildCounterAnnotateImageResponse++;
  if (buildCounterAnnotateImageResponse < 3) {
    checkImageAnnotationContext(o.context!);
    checkCropHintsAnnotation(o.cropHintsAnnotation!);
    checkStatus(o.error!);
    checkUnnamed4214(o.faceAnnotations!);
    checkTextAnnotation(o.fullTextAnnotation!);
    checkImageProperties(o.imagePropertiesAnnotation!);
    checkUnnamed4215(o.labelAnnotations!);
    checkUnnamed4216(o.landmarkAnnotations!);
    checkUnnamed4217(o.localizedObjectAnnotations!);
    checkUnnamed4218(o.logoAnnotations!);
    checkProductSearchResults(o.productSearchResults!);
    checkSafeSearchAnnotation(o.safeSearchAnnotation!);
    checkUnnamed4219(o.textAnnotations!);
    checkWebDetection(o.webDetection!);
  }
  buildCounterAnnotateImageResponse--;
}

core.List<api.Feature> buildUnnamed4220() => [
      buildFeature(),
      buildFeature(),
    ];

void checkUnnamed4220(core.List<api.Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeature(o[0]);
  checkFeature(o[1]);
}

core.int buildCounterAsyncAnnotateFileRequest = 0;
api.AsyncAnnotateFileRequest buildAsyncAnnotateFileRequest() {
  final o = api.AsyncAnnotateFileRequest();
  buildCounterAsyncAnnotateFileRequest++;
  if (buildCounterAsyncAnnotateFileRequest < 3) {
    o.features = buildUnnamed4220();
    o.imageContext = buildImageContext();
    o.inputConfig = buildInputConfig();
    o.outputConfig = buildOutputConfig();
  }
  buildCounterAsyncAnnotateFileRequest--;
  return o;
}

void checkAsyncAnnotateFileRequest(api.AsyncAnnotateFileRequest o) {
  buildCounterAsyncAnnotateFileRequest++;
  if (buildCounterAsyncAnnotateFileRequest < 3) {
    checkUnnamed4220(o.features!);
    checkImageContext(o.imageContext!);
    checkInputConfig(o.inputConfig!);
    checkOutputConfig(o.outputConfig!);
  }
  buildCounterAsyncAnnotateFileRequest--;
}

core.int buildCounterAsyncAnnotateFileResponse = 0;
api.AsyncAnnotateFileResponse buildAsyncAnnotateFileResponse() {
  final o = api.AsyncAnnotateFileResponse();
  buildCounterAsyncAnnotateFileResponse++;
  if (buildCounterAsyncAnnotateFileResponse < 3) {
    o.outputConfig = buildOutputConfig();
  }
  buildCounterAsyncAnnotateFileResponse--;
  return o;
}

void checkAsyncAnnotateFileResponse(api.AsyncAnnotateFileResponse o) {
  buildCounterAsyncAnnotateFileResponse++;
  if (buildCounterAsyncAnnotateFileResponse < 3) {
    checkOutputConfig(o.outputConfig!);
  }
  buildCounterAsyncAnnotateFileResponse--;
}

core.List<api.AsyncAnnotateFileRequest> buildUnnamed4221() => [
      buildAsyncAnnotateFileRequest(),
      buildAsyncAnnotateFileRequest(),
    ];

void checkUnnamed4221(core.List<api.AsyncAnnotateFileRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsyncAnnotateFileRequest(o[0]);
  checkAsyncAnnotateFileRequest(o[1]);
}

core.int buildCounterAsyncBatchAnnotateFilesRequest = 0;
api.AsyncBatchAnnotateFilesRequest buildAsyncBatchAnnotateFilesRequest() {
  final o = api.AsyncBatchAnnotateFilesRequest();
  buildCounterAsyncBatchAnnotateFilesRequest++;
  if (buildCounterAsyncBatchAnnotateFilesRequest < 3) {
    o.parent = 'foo';
    o.requests = buildUnnamed4221();
  }
  buildCounterAsyncBatchAnnotateFilesRequest--;
  return o;
}

void checkAsyncBatchAnnotateFilesRequest(api.AsyncBatchAnnotateFilesRequest o) {
  buildCounterAsyncBatchAnnotateFilesRequest++;
  if (buildCounterAsyncBatchAnnotateFilesRequest < 3) {
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkUnnamed4221(o.requests!);
  }
  buildCounterAsyncBatchAnnotateFilesRequest--;
}

core.List<api.AsyncAnnotateFileResponse> buildUnnamed4222() => [
      buildAsyncAnnotateFileResponse(),
      buildAsyncAnnotateFileResponse(),
    ];

void checkUnnamed4222(core.List<api.AsyncAnnotateFileResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsyncAnnotateFileResponse(o[0]);
  checkAsyncAnnotateFileResponse(o[1]);
}

core.int buildCounterAsyncBatchAnnotateFilesResponse = 0;
api.AsyncBatchAnnotateFilesResponse buildAsyncBatchAnnotateFilesResponse() {
  final o = api.AsyncBatchAnnotateFilesResponse();
  buildCounterAsyncBatchAnnotateFilesResponse++;
  if (buildCounterAsyncBatchAnnotateFilesResponse < 3) {
    o.responses = buildUnnamed4222();
  }
  buildCounterAsyncBatchAnnotateFilesResponse--;
  return o;
}

void checkAsyncBatchAnnotateFilesResponse(
    api.AsyncBatchAnnotateFilesResponse o) {
  buildCounterAsyncBatchAnnotateFilesResponse++;
  if (buildCounterAsyncBatchAnnotateFilesResponse < 3) {
    checkUnnamed4222(o.responses!);
  }
  buildCounterAsyncBatchAnnotateFilesResponse--;
}

core.List<api.AnnotateImageRequest> buildUnnamed4223() => [
      buildAnnotateImageRequest(),
      buildAnnotateImageRequest(),
    ];

void checkUnnamed4223(core.List<api.AnnotateImageRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotateImageRequest(o[0]);
  checkAnnotateImageRequest(o[1]);
}

core.int buildCounterAsyncBatchAnnotateImagesRequest = 0;
api.AsyncBatchAnnotateImagesRequest buildAsyncBatchAnnotateImagesRequest() {
  final o = api.AsyncBatchAnnotateImagesRequest();
  buildCounterAsyncBatchAnnotateImagesRequest++;
  if (buildCounterAsyncBatchAnnotateImagesRequest < 3) {
    o.outputConfig = buildOutputConfig();
    o.parent = 'foo';
    o.requests = buildUnnamed4223();
  }
  buildCounterAsyncBatchAnnotateImagesRequest--;
  return o;
}

void checkAsyncBatchAnnotateImagesRequest(
    api.AsyncBatchAnnotateImagesRequest o) {
  buildCounterAsyncBatchAnnotateImagesRequest++;
  if (buildCounterAsyncBatchAnnotateImagesRequest < 3) {
    checkOutputConfig(o.outputConfig!);
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkUnnamed4223(o.requests!);
  }
  buildCounterAsyncBatchAnnotateImagesRequest--;
}

core.int buildCounterAsyncBatchAnnotateImagesResponse = 0;
api.AsyncBatchAnnotateImagesResponse buildAsyncBatchAnnotateImagesResponse() {
  final o = api.AsyncBatchAnnotateImagesResponse();
  buildCounterAsyncBatchAnnotateImagesResponse++;
  if (buildCounterAsyncBatchAnnotateImagesResponse < 3) {
    o.outputConfig = buildOutputConfig();
  }
  buildCounterAsyncBatchAnnotateImagesResponse--;
  return o;
}

void checkAsyncBatchAnnotateImagesResponse(
    api.AsyncBatchAnnotateImagesResponse o) {
  buildCounterAsyncBatchAnnotateImagesResponse++;
  if (buildCounterAsyncBatchAnnotateImagesResponse < 3) {
    checkOutputConfig(o.outputConfig!);
  }
  buildCounterAsyncBatchAnnotateImagesResponse--;
}

core.List<api.AnnotateFileRequest> buildUnnamed4224() => [
      buildAnnotateFileRequest(),
      buildAnnotateFileRequest(),
    ];

void checkUnnamed4224(core.List<api.AnnotateFileRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotateFileRequest(o[0]);
  checkAnnotateFileRequest(o[1]);
}

core.int buildCounterBatchAnnotateFilesRequest = 0;
api.BatchAnnotateFilesRequest buildBatchAnnotateFilesRequest() {
  final o = api.BatchAnnotateFilesRequest();
  buildCounterBatchAnnotateFilesRequest++;
  if (buildCounterBatchAnnotateFilesRequest < 3) {
    o.parent = 'foo';
    o.requests = buildUnnamed4224();
  }
  buildCounterBatchAnnotateFilesRequest--;
  return o;
}

void checkBatchAnnotateFilesRequest(api.BatchAnnotateFilesRequest o) {
  buildCounterBatchAnnotateFilesRequest++;
  if (buildCounterBatchAnnotateFilesRequest < 3) {
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkUnnamed4224(o.requests!);
  }
  buildCounterBatchAnnotateFilesRequest--;
}

core.List<api.AnnotateFileResponse> buildUnnamed4225() => [
      buildAnnotateFileResponse(),
      buildAnnotateFileResponse(),
    ];

void checkUnnamed4225(core.List<api.AnnotateFileResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotateFileResponse(o[0]);
  checkAnnotateFileResponse(o[1]);
}

core.int buildCounterBatchAnnotateFilesResponse = 0;
api.BatchAnnotateFilesResponse buildBatchAnnotateFilesResponse() {
  final o = api.BatchAnnotateFilesResponse();
  buildCounterBatchAnnotateFilesResponse++;
  if (buildCounterBatchAnnotateFilesResponse < 3) {
    o.responses = buildUnnamed4225();
  }
  buildCounterBatchAnnotateFilesResponse--;
  return o;
}

void checkBatchAnnotateFilesResponse(api.BatchAnnotateFilesResponse o) {
  buildCounterBatchAnnotateFilesResponse++;
  if (buildCounterBatchAnnotateFilesResponse < 3) {
    checkUnnamed4225(o.responses!);
  }
  buildCounterBatchAnnotateFilesResponse--;
}

core.List<api.AnnotateImageRequest> buildUnnamed4226() => [
      buildAnnotateImageRequest(),
      buildAnnotateImageRequest(),
    ];

void checkUnnamed4226(core.List<api.AnnotateImageRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotateImageRequest(o[0]);
  checkAnnotateImageRequest(o[1]);
}

core.int buildCounterBatchAnnotateImagesRequest = 0;
api.BatchAnnotateImagesRequest buildBatchAnnotateImagesRequest() {
  final o = api.BatchAnnotateImagesRequest();
  buildCounterBatchAnnotateImagesRequest++;
  if (buildCounterBatchAnnotateImagesRequest < 3) {
    o.parent = 'foo';
    o.requests = buildUnnamed4226();
  }
  buildCounterBatchAnnotateImagesRequest--;
  return o;
}

void checkBatchAnnotateImagesRequest(api.BatchAnnotateImagesRequest o) {
  buildCounterBatchAnnotateImagesRequest++;
  if (buildCounterBatchAnnotateImagesRequest < 3) {
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    checkUnnamed4226(o.requests!);
  }
  buildCounterBatchAnnotateImagesRequest--;
}

core.List<api.AnnotateImageResponse> buildUnnamed4227() => [
      buildAnnotateImageResponse(),
      buildAnnotateImageResponse(),
    ];

void checkUnnamed4227(core.List<api.AnnotateImageResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotateImageResponse(o[0]);
  checkAnnotateImageResponse(o[1]);
}

core.int buildCounterBatchAnnotateImagesResponse = 0;
api.BatchAnnotateImagesResponse buildBatchAnnotateImagesResponse() {
  final o = api.BatchAnnotateImagesResponse();
  buildCounterBatchAnnotateImagesResponse++;
  if (buildCounterBatchAnnotateImagesResponse < 3) {
    o.responses = buildUnnamed4227();
  }
  buildCounterBatchAnnotateImagesResponse--;
  return o;
}

void checkBatchAnnotateImagesResponse(api.BatchAnnotateImagesResponse o) {
  buildCounterBatchAnnotateImagesResponse++;
  if (buildCounterBatchAnnotateImagesResponse < 3) {
    checkUnnamed4227(o.responses!);
  }
  buildCounterBatchAnnotateImagesResponse--;
}

core.int buildCounterBatchOperationMetadata = 0;
api.BatchOperationMetadata buildBatchOperationMetadata() {
  final o = api.BatchOperationMetadata();
  buildCounterBatchOperationMetadata++;
  if (buildCounterBatchOperationMetadata < 3) {
    o.endTime = 'foo';
    o.state = 'foo';
    o.submitTime = 'foo';
  }
  buildCounterBatchOperationMetadata--;
  return o;
}

void checkBatchOperationMetadata(api.BatchOperationMetadata o) {
  buildCounterBatchOperationMetadata++;
  if (buildCounterBatchOperationMetadata < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.submitTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterBatchOperationMetadata--;
}

core.List<api.Paragraph> buildUnnamed4228() => [
      buildParagraph(),
      buildParagraph(),
    ];

void checkUnnamed4228(core.List<api.Paragraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParagraph(o[0]);
  checkParagraph(o[1]);
}

core.int buildCounterBlock = 0;
api.Block buildBlock() {
  final o = api.Block();
  buildCounterBlock++;
  if (buildCounterBlock < 3) {
    o.blockType = 'foo';
    o.boundingBox = buildBoundingPoly();
    o.confidence = 42.0;
    o.paragraphs = buildUnnamed4228();
    o.property = buildTextProperty();
  }
  buildCounterBlock--;
  return o;
}

void checkBlock(api.Block o) {
  buildCounterBlock++;
  if (buildCounterBlock < 3) {
    unittest.expect(
      o.blockType!,
      unittest.equals('foo'),
    );
    checkBoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkUnnamed4228(o.paragraphs!);
    checkTextProperty(o.property!);
  }
  buildCounterBlock--;
}

core.List<api.NormalizedVertex> buildUnnamed4229() => [
      buildNormalizedVertex(),
      buildNormalizedVertex(),
    ];

void checkUnnamed4229(core.List<api.NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNormalizedVertex(o[0]);
  checkNormalizedVertex(o[1]);
}

core.List<api.Vertex> buildUnnamed4230() => [
      buildVertex(),
      buildVertex(),
    ];

void checkUnnamed4230(core.List<api.Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVertex(o[0]);
  checkVertex(o[1]);
}

core.int buildCounterBoundingPoly = 0;
api.BoundingPoly buildBoundingPoly() {
  final o = api.BoundingPoly();
  buildCounterBoundingPoly++;
  if (buildCounterBoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed4229();
    o.vertices = buildUnnamed4230();
  }
  buildCounterBoundingPoly--;
  return o;
}

void checkBoundingPoly(api.BoundingPoly o) {
  buildCounterBoundingPoly++;
  if (buildCounterBoundingPoly < 3) {
    checkUnnamed4229(o.normalizedVertices!);
    checkUnnamed4230(o.vertices!);
  }
  buildCounterBoundingPoly--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.int buildCounterColor = 0;
api.Color buildColor() {
  final o = api.Color();
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

void checkColor(api.Color o) {
  buildCounterColor++;
  if (buildCounterColor < 3) {
    unittest.expect(
      o.alpha!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.blue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.green!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.red!,
      unittest.equals(42.0),
    );
  }
  buildCounterColor--;
}

core.int buildCounterColorInfo = 0;
api.ColorInfo buildColorInfo() {
  final o = api.ColorInfo();
  buildCounterColorInfo++;
  if (buildCounterColorInfo < 3) {
    o.color = buildColor();
    o.pixelFraction = 42.0;
    o.score = 42.0;
  }
  buildCounterColorInfo--;
  return o;
}

void checkColorInfo(api.ColorInfo o) {
  buildCounterColorInfo++;
  if (buildCounterColorInfo < 3) {
    checkColor(o.color!);
    unittest.expect(
      o.pixelFraction!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterColorInfo--;
}

core.int buildCounterCropHint = 0;
api.CropHint buildCropHint() {
  final o = api.CropHint();
  buildCounterCropHint++;
  if (buildCounterCropHint < 3) {
    o.boundingPoly = buildBoundingPoly();
    o.confidence = 42.0;
    o.importanceFraction = 42.0;
  }
  buildCounterCropHint--;
  return o;
}

void checkCropHint(api.CropHint o) {
  buildCounterCropHint++;
  if (buildCounterCropHint < 3) {
    checkBoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.importanceFraction!,
      unittest.equals(42.0),
    );
  }
  buildCounterCropHint--;
}

core.List<api.CropHint> buildUnnamed4231() => [
      buildCropHint(),
      buildCropHint(),
    ];

void checkUnnamed4231(core.List<api.CropHint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCropHint(o[0]);
  checkCropHint(o[1]);
}

core.int buildCounterCropHintsAnnotation = 0;
api.CropHintsAnnotation buildCropHintsAnnotation() {
  final o = api.CropHintsAnnotation();
  buildCounterCropHintsAnnotation++;
  if (buildCounterCropHintsAnnotation < 3) {
    o.cropHints = buildUnnamed4231();
  }
  buildCounterCropHintsAnnotation--;
  return o;
}

void checkCropHintsAnnotation(api.CropHintsAnnotation o) {
  buildCounterCropHintsAnnotation++;
  if (buildCounterCropHintsAnnotation < 3) {
    checkUnnamed4231(o.cropHints!);
  }
  buildCounterCropHintsAnnotation--;
}

core.List<core.double> buildUnnamed4232() => [
      42.0,
      42.0,
    ];

void checkUnnamed4232(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.int buildCounterCropHintsParams = 0;
api.CropHintsParams buildCropHintsParams() {
  final o = api.CropHintsParams();
  buildCounterCropHintsParams++;
  if (buildCounterCropHintsParams < 3) {
    o.aspectRatios = buildUnnamed4232();
  }
  buildCounterCropHintsParams--;
  return o;
}

void checkCropHintsParams(api.CropHintsParams o) {
  buildCounterCropHintsParams++;
  if (buildCounterCropHintsParams < 3) {
    checkUnnamed4232(o.aspectRatios!);
  }
  buildCounterCropHintsParams--;
}

core.int buildCounterDetectedBreak = 0;
api.DetectedBreak buildDetectedBreak() {
  final o = api.DetectedBreak();
  buildCounterDetectedBreak++;
  if (buildCounterDetectedBreak < 3) {
    o.isPrefix = true;
    o.type = 'foo';
  }
  buildCounterDetectedBreak--;
  return o;
}

void checkDetectedBreak(api.DetectedBreak o) {
  buildCounterDetectedBreak++;
  if (buildCounterDetectedBreak < 3) {
    unittest.expect(o.isPrefix!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDetectedBreak--;
}

core.int buildCounterDetectedLanguage = 0;
api.DetectedLanguage buildDetectedLanguage() {
  final o = api.DetectedLanguage();
  buildCounterDetectedLanguage++;
  if (buildCounterDetectedLanguage < 3) {
    o.confidence = 42.0;
    o.languageCode = 'foo';
  }
  buildCounterDetectedLanguage--;
  return o;
}

void checkDetectedLanguage(api.DetectedLanguage o) {
  buildCounterDetectedLanguage++;
  if (buildCounterDetectedLanguage < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterDetectedLanguage--;
}

core.List<api.ColorInfo> buildUnnamed4233() => [
      buildColorInfo(),
      buildColorInfo(),
    ];

void checkUnnamed4233(core.List<api.ColorInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkColorInfo(o[0]);
  checkColorInfo(o[1]);
}

core.int buildCounterDominantColorsAnnotation = 0;
api.DominantColorsAnnotation buildDominantColorsAnnotation() {
  final o = api.DominantColorsAnnotation();
  buildCounterDominantColorsAnnotation++;
  if (buildCounterDominantColorsAnnotation < 3) {
    o.colors = buildUnnamed4233();
  }
  buildCounterDominantColorsAnnotation--;
  return o;
}

void checkDominantColorsAnnotation(api.DominantColorsAnnotation o) {
  buildCounterDominantColorsAnnotation++;
  if (buildCounterDominantColorsAnnotation < 3) {
    checkUnnamed4233(o.colors!);
  }
  buildCounterDominantColorsAnnotation--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.List<api.LocationInfo> buildUnnamed4234() => [
      buildLocationInfo(),
      buildLocationInfo(),
    ];

void checkUnnamed4234(core.List<api.LocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocationInfo(o[0]);
  checkLocationInfo(o[1]);
}

core.List<api.Property> buildUnnamed4235() => [
      buildProperty(),
      buildProperty(),
    ];

void checkUnnamed4235(core.List<api.Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProperty(o[0]);
  checkProperty(o[1]);
}

core.int buildCounterEntityAnnotation = 0;
api.EntityAnnotation buildEntityAnnotation() {
  final o = api.EntityAnnotation();
  buildCounterEntityAnnotation++;
  if (buildCounterEntityAnnotation < 3) {
    o.boundingPoly = buildBoundingPoly();
    o.confidence = 42.0;
    o.description = 'foo';
    o.locale = 'foo';
    o.locations = buildUnnamed4234();
    o.mid = 'foo';
    o.properties = buildUnnamed4235();
    o.score = 42.0;
    o.topicality = 42.0;
  }
  buildCounterEntityAnnotation--;
  return o;
}

void checkEntityAnnotation(api.EntityAnnotation o) {
  buildCounterEntityAnnotation++;
  if (buildCounterEntityAnnotation < 3) {
    checkBoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locale!,
      unittest.equals('foo'),
    );
    checkUnnamed4234(o.locations!);
    unittest.expect(
      o.mid!,
      unittest.equals('foo'),
    );
    checkUnnamed4235(o.properties!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.topicality!,
      unittest.equals(42.0),
    );
  }
  buildCounterEntityAnnotation--;
}

core.List<api.Landmark> buildUnnamed4236() => [
      buildLandmark(),
      buildLandmark(),
    ];

void checkUnnamed4236(core.List<api.Landmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLandmark(o[0]);
  checkLandmark(o[1]);
}

core.int buildCounterFaceAnnotation = 0;
api.FaceAnnotation buildFaceAnnotation() {
  final o = api.FaceAnnotation();
  buildCounterFaceAnnotation++;
  if (buildCounterFaceAnnotation < 3) {
    o.angerLikelihood = 'foo';
    o.blurredLikelihood = 'foo';
    o.boundingPoly = buildBoundingPoly();
    o.detectionConfidence = 42.0;
    o.fdBoundingPoly = buildBoundingPoly();
    o.headwearLikelihood = 'foo';
    o.joyLikelihood = 'foo';
    o.landmarkingConfidence = 42.0;
    o.landmarks = buildUnnamed4236();
    o.panAngle = 42.0;
    o.rollAngle = 42.0;
    o.sorrowLikelihood = 'foo';
    o.surpriseLikelihood = 'foo';
    o.tiltAngle = 42.0;
    o.underExposedLikelihood = 'foo';
  }
  buildCounterFaceAnnotation--;
  return o;
}

void checkFaceAnnotation(api.FaceAnnotation o) {
  buildCounterFaceAnnotation++;
  if (buildCounterFaceAnnotation < 3) {
    unittest.expect(
      o.angerLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.blurredLikelihood!,
      unittest.equals('foo'),
    );
    checkBoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.detectionConfidence!,
      unittest.equals(42.0),
    );
    checkBoundingPoly(o.fdBoundingPoly!);
    unittest.expect(
      o.headwearLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.joyLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.landmarkingConfidence!,
      unittest.equals(42.0),
    );
    checkUnnamed4236(o.landmarks!);
    unittest.expect(
      o.panAngle!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.rollAngle!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.sorrowLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.surpriseLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tiltAngle!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.underExposedLikelihood!,
      unittest.equals('foo'),
    );
  }
  buildCounterFaceAnnotation--;
}

core.int buildCounterFeature = 0;
api.Feature buildFeature() {
  final o = api.Feature();
  buildCounterFeature++;
  if (buildCounterFeature < 3) {
    o.maxResults = 42;
    o.model = 'foo';
    o.type = 'foo';
  }
  buildCounterFeature--;
  return o;
}

void checkFeature(api.Feature o) {
  buildCounterFeature++;
  if (buildCounterFeature < 3) {
    unittest.expect(
      o.maxResults!,
      unittest.equals(42),
    );
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterFeature--;
}

core.int buildCounterGcsDestination = 0;
api.GcsDestination buildGcsDestination() {
  final o = api.GcsDestination();
  buildCounterGcsDestination++;
  if (buildCounterGcsDestination < 3) {
    o.uri = 'foo';
  }
  buildCounterGcsDestination--;
  return o;
}

void checkGcsDestination(api.GcsDestination o) {
  buildCounterGcsDestination++;
  if (buildCounterGcsDestination < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGcsDestination--;
}

core.int buildCounterGcsSource = 0;
api.GcsSource buildGcsSource() {
  final o = api.GcsSource();
  buildCounterGcsSource++;
  if (buildCounterGcsSource < 3) {
    o.uri = 'foo';
  }
  buildCounterGcsSource--;
  return o;
}

void checkGcsSource(api.GcsSource o) {
  buildCounterGcsSource++;
  if (buildCounterGcsSource < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGcsSource--;
}

core.List<api.GoogleCloudVisionV1p1beta1AnnotateImageResponse>
    buildUnnamed4237() => [
          buildGoogleCloudVisionV1p1beta1AnnotateImageResponse(),
          buildGoogleCloudVisionV1p1beta1AnnotateImageResponse(),
        ];

void checkUnnamed4237(
    core.List<api.GoogleCloudVisionV1p1beta1AnnotateImageResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1AnnotateImageResponse(o[0]);
  checkGoogleCloudVisionV1p1beta1AnnotateImageResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1AnnotateFileResponse = 0;
api.GoogleCloudVisionV1p1beta1AnnotateFileResponse
    buildGoogleCloudVisionV1p1beta1AnnotateFileResponse() {
  final o = api.GoogleCloudVisionV1p1beta1AnnotateFileResponse();
  buildCounterGoogleCloudVisionV1p1beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p1beta1AnnotateFileResponse < 3) {
    o.error = buildStatus();
    o.inputConfig = buildGoogleCloudVisionV1p1beta1InputConfig();
    o.responses = buildUnnamed4237();
    o.totalPages = 42;
  }
  buildCounterGoogleCloudVisionV1p1beta1AnnotateFileResponse--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1AnnotateFileResponse(
    api.GoogleCloudVisionV1p1beta1AnnotateFileResponse o) {
  buildCounterGoogleCloudVisionV1p1beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p1beta1AnnotateFileResponse < 3) {
    checkStatus(o.error!);
    checkGoogleCloudVisionV1p1beta1InputConfig(o.inputConfig!);
    checkUnnamed4237(o.responses!);
    unittest.expect(
      o.totalPages!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1AnnotateFileResponse--;
}

core.List<api.GoogleCloudVisionV1p1beta1FaceAnnotation> buildUnnamed4238() => [
      buildGoogleCloudVisionV1p1beta1FaceAnnotation(),
      buildGoogleCloudVisionV1p1beta1FaceAnnotation(),
    ];

void checkUnnamed4238(
    core.List<api.GoogleCloudVisionV1p1beta1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1FaceAnnotation(o[0]);
  checkGoogleCloudVisionV1p1beta1FaceAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation> buildUnnamed4239() =>
    [
      buildGoogleCloudVisionV1p1beta1EntityAnnotation(),
      buildGoogleCloudVisionV1p1beta1EntityAnnotation(),
    ];

void checkUnnamed4239(
    core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation> buildUnnamed4240() =>
    [
      buildGoogleCloudVisionV1p1beta1EntityAnnotation(),
      buildGoogleCloudVisionV1p1beta1EntityAnnotation(),
    ];

void checkUnnamed4240(
    core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation>
    buildUnnamed4241() => [
          buildGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation(),
          buildGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation(),
        ];

void checkUnnamed4241(
    core.List<api.GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation(o[0]);
  checkGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation> buildUnnamed4242() =>
    [
      buildGoogleCloudVisionV1p1beta1EntityAnnotation(),
      buildGoogleCloudVisionV1p1beta1EntityAnnotation(),
    ];

void checkUnnamed4242(
    core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation> buildUnnamed4243() =>
    [
      buildGoogleCloudVisionV1p1beta1EntityAnnotation(),
      buildGoogleCloudVisionV1p1beta1EntityAnnotation(),
    ];

void checkUnnamed4243(
    core.List<api.GoogleCloudVisionV1p1beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p1beta1EntityAnnotation(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1AnnotateImageResponse = 0;
api.GoogleCloudVisionV1p1beta1AnnotateImageResponse
    buildGoogleCloudVisionV1p1beta1AnnotateImageResponse() {
  final o = api.GoogleCloudVisionV1p1beta1AnnotateImageResponse();
  buildCounterGoogleCloudVisionV1p1beta1AnnotateImageResponse++;
  if (buildCounterGoogleCloudVisionV1p1beta1AnnotateImageResponse < 3) {
    o.context = buildGoogleCloudVisionV1p1beta1ImageAnnotationContext();
    o.cropHintsAnnotation =
        buildGoogleCloudVisionV1p1beta1CropHintsAnnotation();
    o.error = buildStatus();
    o.faceAnnotations = buildUnnamed4238();
    o.fullTextAnnotation = buildGoogleCloudVisionV1p1beta1TextAnnotation();
    o.imagePropertiesAnnotation =
        buildGoogleCloudVisionV1p1beta1ImageProperties();
    o.labelAnnotations = buildUnnamed4239();
    o.landmarkAnnotations = buildUnnamed4240();
    o.localizedObjectAnnotations = buildUnnamed4241();
    o.logoAnnotations = buildUnnamed4242();
    o.productSearchResults =
        buildGoogleCloudVisionV1p1beta1ProductSearchResults();
    o.safeSearchAnnotation =
        buildGoogleCloudVisionV1p1beta1SafeSearchAnnotation();
    o.textAnnotations = buildUnnamed4243();
    o.webDetection = buildGoogleCloudVisionV1p1beta1WebDetection();
  }
  buildCounterGoogleCloudVisionV1p1beta1AnnotateImageResponse--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1AnnotateImageResponse(
    api.GoogleCloudVisionV1p1beta1AnnotateImageResponse o) {
  buildCounterGoogleCloudVisionV1p1beta1AnnotateImageResponse++;
  if (buildCounterGoogleCloudVisionV1p1beta1AnnotateImageResponse < 3) {
    checkGoogleCloudVisionV1p1beta1ImageAnnotationContext(o.context!);
    checkGoogleCloudVisionV1p1beta1CropHintsAnnotation(o.cropHintsAnnotation!);
    checkStatus(o.error!);
    checkUnnamed4238(o.faceAnnotations!);
    checkGoogleCloudVisionV1p1beta1TextAnnotation(o.fullTextAnnotation!);
    checkGoogleCloudVisionV1p1beta1ImageProperties(
        o.imagePropertiesAnnotation!);
    checkUnnamed4239(o.labelAnnotations!);
    checkUnnamed4240(o.landmarkAnnotations!);
    checkUnnamed4241(o.localizedObjectAnnotations!);
    checkUnnamed4242(o.logoAnnotations!);
    checkGoogleCloudVisionV1p1beta1ProductSearchResults(
        o.productSearchResults!);
    checkGoogleCloudVisionV1p1beta1SafeSearchAnnotation(
        o.safeSearchAnnotation!);
    checkUnnamed4243(o.textAnnotations!);
    checkGoogleCloudVisionV1p1beta1WebDetection(o.webDetection!);
  }
  buildCounterGoogleCloudVisionV1p1beta1AnnotateImageResponse--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse = 0;
api.GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse
    buildGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse() {
  final o = api.GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse();
  buildCounterGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse < 3) {
    o.outputConfig = buildGoogleCloudVisionV1p1beta1OutputConfig();
  }
  buildCounterGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse(
    api.GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse o) {
  buildCounterGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse < 3) {
    checkGoogleCloudVisionV1p1beta1OutputConfig(o.outputConfig!);
  }
  buildCounterGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse--;
}

core.List<api.GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse>
    buildUnnamed4244() => [
          buildGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse(),
          buildGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse(),
        ];

void checkUnnamed4244(
    core.List<api.GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse(o[0]);
  checkGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse =
    0;
api.GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse
    buildGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse() {
  final o = api.GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse();
  buildCounterGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse <
      3) {
    o.responses = buildUnnamed4244();
  }
  buildCounterGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse(
    api.GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse o) {
  buildCounterGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse <
      3) {
    checkUnnamed4244(o.responses!);
  }
  buildCounterGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse--;
}

core.List<api.GoogleCloudVisionV1p1beta1Paragraph> buildUnnamed4245() => [
      buildGoogleCloudVisionV1p1beta1Paragraph(),
      buildGoogleCloudVisionV1p1beta1Paragraph(),
    ];

void checkUnnamed4245(core.List<api.GoogleCloudVisionV1p1beta1Paragraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1Paragraph(o[0]);
  checkGoogleCloudVisionV1p1beta1Paragraph(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1Block = 0;
api.GoogleCloudVisionV1p1beta1Block buildGoogleCloudVisionV1p1beta1Block() {
  final o = api.GoogleCloudVisionV1p1beta1Block();
  buildCounterGoogleCloudVisionV1p1beta1Block++;
  if (buildCounterGoogleCloudVisionV1p1beta1Block < 3) {
    o.blockType = 'foo';
    o.boundingBox = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.confidence = 42.0;
    o.paragraphs = buildUnnamed4245();
    o.property = buildGoogleCloudVisionV1p1beta1TextAnnotationTextProperty();
  }
  buildCounterGoogleCloudVisionV1p1beta1Block--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1Block(
    api.GoogleCloudVisionV1p1beta1Block o) {
  buildCounterGoogleCloudVisionV1p1beta1Block++;
  if (buildCounterGoogleCloudVisionV1p1beta1Block < 3) {
    unittest.expect(
      o.blockType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkUnnamed4245(o.paragraphs!);
    checkGoogleCloudVisionV1p1beta1TextAnnotationTextProperty(o.property!);
  }
  buildCounterGoogleCloudVisionV1p1beta1Block--;
}

core.List<api.GoogleCloudVisionV1p1beta1NormalizedVertex> buildUnnamed4246() =>
    [
      buildGoogleCloudVisionV1p1beta1NormalizedVertex(),
      buildGoogleCloudVisionV1p1beta1NormalizedVertex(),
    ];

void checkUnnamed4246(
    core.List<api.GoogleCloudVisionV1p1beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1NormalizedVertex(o[0]);
  checkGoogleCloudVisionV1p1beta1NormalizedVertex(o[1]);
}

core.List<api.GoogleCloudVisionV1p1beta1Vertex> buildUnnamed4247() => [
      buildGoogleCloudVisionV1p1beta1Vertex(),
      buildGoogleCloudVisionV1p1beta1Vertex(),
    ];

void checkUnnamed4247(core.List<api.GoogleCloudVisionV1p1beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1Vertex(o[0]);
  checkGoogleCloudVisionV1p1beta1Vertex(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1BoundingPoly = 0;
api.GoogleCloudVisionV1p1beta1BoundingPoly
    buildGoogleCloudVisionV1p1beta1BoundingPoly() {
  final o = api.GoogleCloudVisionV1p1beta1BoundingPoly();
  buildCounterGoogleCloudVisionV1p1beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p1beta1BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed4246();
    o.vertices = buildUnnamed4247();
  }
  buildCounterGoogleCloudVisionV1p1beta1BoundingPoly--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1BoundingPoly(
    api.GoogleCloudVisionV1p1beta1BoundingPoly o) {
  buildCounterGoogleCloudVisionV1p1beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p1beta1BoundingPoly < 3) {
    checkUnnamed4246(o.normalizedVertices!);
    checkUnnamed4247(o.vertices!);
  }
  buildCounterGoogleCloudVisionV1p1beta1BoundingPoly--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1ColorInfo = 0;
api.GoogleCloudVisionV1p1beta1ColorInfo
    buildGoogleCloudVisionV1p1beta1ColorInfo() {
  final o = api.GoogleCloudVisionV1p1beta1ColorInfo();
  buildCounterGoogleCloudVisionV1p1beta1ColorInfo++;
  if (buildCounterGoogleCloudVisionV1p1beta1ColorInfo < 3) {
    o.color = buildColor();
    o.pixelFraction = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p1beta1ColorInfo--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1ColorInfo(
    api.GoogleCloudVisionV1p1beta1ColorInfo o) {
  buildCounterGoogleCloudVisionV1p1beta1ColorInfo++;
  if (buildCounterGoogleCloudVisionV1p1beta1ColorInfo < 3) {
    checkColor(o.color!);
    unittest.expect(
      o.pixelFraction!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1ColorInfo--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1CropHint = 0;
api.GoogleCloudVisionV1p1beta1CropHint
    buildGoogleCloudVisionV1p1beta1CropHint() {
  final o = api.GoogleCloudVisionV1p1beta1CropHint();
  buildCounterGoogleCloudVisionV1p1beta1CropHint++;
  if (buildCounterGoogleCloudVisionV1p1beta1CropHint < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.confidence = 42.0;
    o.importanceFraction = 42.0;
  }
  buildCounterGoogleCloudVisionV1p1beta1CropHint--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1CropHint(
    api.GoogleCloudVisionV1p1beta1CropHint o) {
  buildCounterGoogleCloudVisionV1p1beta1CropHint++;
  if (buildCounterGoogleCloudVisionV1p1beta1CropHint < 3) {
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.importanceFraction!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1CropHint--;
}

core.List<api.GoogleCloudVisionV1p1beta1CropHint> buildUnnamed4248() => [
      buildGoogleCloudVisionV1p1beta1CropHint(),
      buildGoogleCloudVisionV1p1beta1CropHint(),
    ];

void checkUnnamed4248(core.List<api.GoogleCloudVisionV1p1beta1CropHint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1CropHint(o[0]);
  checkGoogleCloudVisionV1p1beta1CropHint(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation = 0;
api.GoogleCloudVisionV1p1beta1CropHintsAnnotation
    buildGoogleCloudVisionV1p1beta1CropHintsAnnotation() {
  final o = api.GoogleCloudVisionV1p1beta1CropHintsAnnotation();
  buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation < 3) {
    o.cropHints = buildUnnamed4248();
  }
  buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1CropHintsAnnotation(
    api.GoogleCloudVisionV1p1beta1CropHintsAnnotation o) {
  buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation < 3) {
    checkUnnamed4248(o.cropHints!);
  }
  buildCounterGoogleCloudVisionV1p1beta1CropHintsAnnotation--;
}

core.List<api.GoogleCloudVisionV1p1beta1ColorInfo> buildUnnamed4249() => [
      buildGoogleCloudVisionV1p1beta1ColorInfo(),
      buildGoogleCloudVisionV1p1beta1ColorInfo(),
    ];

void checkUnnamed4249(core.List<api.GoogleCloudVisionV1p1beta1ColorInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1ColorInfo(o[0]);
  checkGoogleCloudVisionV1p1beta1ColorInfo(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation = 0;
api.GoogleCloudVisionV1p1beta1DominantColorsAnnotation
    buildGoogleCloudVisionV1p1beta1DominantColorsAnnotation() {
  final o = api.GoogleCloudVisionV1p1beta1DominantColorsAnnotation();
  buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation < 3) {
    o.colors = buildUnnamed4249();
  }
  buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1DominantColorsAnnotation(
    api.GoogleCloudVisionV1p1beta1DominantColorsAnnotation o) {
  buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation < 3) {
    checkUnnamed4249(o.colors!);
  }
  buildCounterGoogleCloudVisionV1p1beta1DominantColorsAnnotation--;
}

core.List<api.GoogleCloudVisionV1p1beta1LocationInfo> buildUnnamed4250() => [
      buildGoogleCloudVisionV1p1beta1LocationInfo(),
      buildGoogleCloudVisionV1p1beta1LocationInfo(),
    ];

void checkUnnamed4250(core.List<api.GoogleCloudVisionV1p1beta1LocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1LocationInfo(o[0]);
  checkGoogleCloudVisionV1p1beta1LocationInfo(o[1]);
}

core.List<api.GoogleCloudVisionV1p1beta1Property> buildUnnamed4251() => [
      buildGoogleCloudVisionV1p1beta1Property(),
      buildGoogleCloudVisionV1p1beta1Property(),
    ];

void checkUnnamed4251(core.List<api.GoogleCloudVisionV1p1beta1Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1Property(o[0]);
  checkGoogleCloudVisionV1p1beta1Property(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1EntityAnnotation = 0;
api.GoogleCloudVisionV1p1beta1EntityAnnotation
    buildGoogleCloudVisionV1p1beta1EntityAnnotation() {
  final o = api.GoogleCloudVisionV1p1beta1EntityAnnotation();
  buildCounterGoogleCloudVisionV1p1beta1EntityAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1EntityAnnotation < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.confidence = 42.0;
    o.description = 'foo';
    o.locale = 'foo';
    o.locations = buildUnnamed4250();
    o.mid = 'foo';
    o.properties = buildUnnamed4251();
    o.score = 42.0;
    o.topicality = 42.0;
  }
  buildCounterGoogleCloudVisionV1p1beta1EntityAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1EntityAnnotation(
    api.GoogleCloudVisionV1p1beta1EntityAnnotation o) {
  buildCounterGoogleCloudVisionV1p1beta1EntityAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1EntityAnnotation < 3) {
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locale!,
      unittest.equals('foo'),
    );
    checkUnnamed4250(o.locations!);
    unittest.expect(
      o.mid!,
      unittest.equals('foo'),
    );
    checkUnnamed4251(o.properties!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.topicality!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1EntityAnnotation--;
}

core.List<api.GoogleCloudVisionV1p1beta1FaceAnnotationLandmark>
    buildUnnamed4252() => [
          buildGoogleCloudVisionV1p1beta1FaceAnnotationLandmark(),
          buildGoogleCloudVisionV1p1beta1FaceAnnotationLandmark(),
        ];

void checkUnnamed4252(
    core.List<api.GoogleCloudVisionV1p1beta1FaceAnnotationLandmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1FaceAnnotationLandmark(o[0]);
  checkGoogleCloudVisionV1p1beta1FaceAnnotationLandmark(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1FaceAnnotation = 0;
api.GoogleCloudVisionV1p1beta1FaceAnnotation
    buildGoogleCloudVisionV1p1beta1FaceAnnotation() {
  final o = api.GoogleCloudVisionV1p1beta1FaceAnnotation();
  buildCounterGoogleCloudVisionV1p1beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1FaceAnnotation < 3) {
    o.angerLikelihood = 'foo';
    o.blurredLikelihood = 'foo';
    o.boundingPoly = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.detectionConfidence = 42.0;
    o.fdBoundingPoly = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.headwearLikelihood = 'foo';
    o.joyLikelihood = 'foo';
    o.landmarkingConfidence = 42.0;
    o.landmarks = buildUnnamed4252();
    o.panAngle = 42.0;
    o.rollAngle = 42.0;
    o.sorrowLikelihood = 'foo';
    o.surpriseLikelihood = 'foo';
    o.tiltAngle = 42.0;
    o.underExposedLikelihood = 'foo';
  }
  buildCounterGoogleCloudVisionV1p1beta1FaceAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1FaceAnnotation(
    api.GoogleCloudVisionV1p1beta1FaceAnnotation o) {
  buildCounterGoogleCloudVisionV1p1beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1FaceAnnotation < 3) {
    unittest.expect(
      o.angerLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.blurredLikelihood!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.detectionConfidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.fdBoundingPoly!);
    unittest.expect(
      o.headwearLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.joyLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.landmarkingConfidence!,
      unittest.equals(42.0),
    );
    checkUnnamed4252(o.landmarks!);
    unittest.expect(
      o.panAngle!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.rollAngle!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.sorrowLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.surpriseLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tiltAngle!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.underExposedLikelihood!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1FaceAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1FaceAnnotationLandmark = 0;
api.GoogleCloudVisionV1p1beta1FaceAnnotationLandmark
    buildGoogleCloudVisionV1p1beta1FaceAnnotationLandmark() {
  final o = api.GoogleCloudVisionV1p1beta1FaceAnnotationLandmark();
  buildCounterGoogleCloudVisionV1p1beta1FaceAnnotationLandmark++;
  if (buildCounterGoogleCloudVisionV1p1beta1FaceAnnotationLandmark < 3) {
    o.position = buildGoogleCloudVisionV1p1beta1Position();
    o.type = 'foo';
  }
  buildCounterGoogleCloudVisionV1p1beta1FaceAnnotationLandmark--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1FaceAnnotationLandmark(
    api.GoogleCloudVisionV1p1beta1FaceAnnotationLandmark o) {
  buildCounterGoogleCloudVisionV1p1beta1FaceAnnotationLandmark++;
  if (buildCounterGoogleCloudVisionV1p1beta1FaceAnnotationLandmark < 3) {
    checkGoogleCloudVisionV1p1beta1Position(o.position!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1FaceAnnotationLandmark--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1GcsDestination = 0;
api.GoogleCloudVisionV1p1beta1GcsDestination
    buildGoogleCloudVisionV1p1beta1GcsDestination() {
  final o = api.GoogleCloudVisionV1p1beta1GcsDestination();
  buildCounterGoogleCloudVisionV1p1beta1GcsDestination++;
  if (buildCounterGoogleCloudVisionV1p1beta1GcsDestination < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudVisionV1p1beta1GcsDestination--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1GcsDestination(
    api.GoogleCloudVisionV1p1beta1GcsDestination o) {
  buildCounterGoogleCloudVisionV1p1beta1GcsDestination++;
  if (buildCounterGoogleCloudVisionV1p1beta1GcsDestination < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1GcsDestination--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1GcsSource = 0;
api.GoogleCloudVisionV1p1beta1GcsSource
    buildGoogleCloudVisionV1p1beta1GcsSource() {
  final o = api.GoogleCloudVisionV1p1beta1GcsSource();
  buildCounterGoogleCloudVisionV1p1beta1GcsSource++;
  if (buildCounterGoogleCloudVisionV1p1beta1GcsSource < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudVisionV1p1beta1GcsSource--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1GcsSource(
    api.GoogleCloudVisionV1p1beta1GcsSource o) {
  buildCounterGoogleCloudVisionV1p1beta1GcsSource++;
  if (buildCounterGoogleCloudVisionV1p1beta1GcsSource < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1GcsSource--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1ImageAnnotationContext = 0;
api.GoogleCloudVisionV1p1beta1ImageAnnotationContext
    buildGoogleCloudVisionV1p1beta1ImageAnnotationContext() {
  final o = api.GoogleCloudVisionV1p1beta1ImageAnnotationContext();
  buildCounterGoogleCloudVisionV1p1beta1ImageAnnotationContext++;
  if (buildCounterGoogleCloudVisionV1p1beta1ImageAnnotationContext < 3) {
    o.pageNumber = 42;
    o.uri = 'foo';
  }
  buildCounterGoogleCloudVisionV1p1beta1ImageAnnotationContext--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1ImageAnnotationContext(
    api.GoogleCloudVisionV1p1beta1ImageAnnotationContext o) {
  buildCounterGoogleCloudVisionV1p1beta1ImageAnnotationContext++;
  if (buildCounterGoogleCloudVisionV1p1beta1ImageAnnotationContext < 3) {
    unittest.expect(
      o.pageNumber!,
      unittest.equals(42),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1ImageAnnotationContext--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1ImageProperties = 0;
api.GoogleCloudVisionV1p1beta1ImageProperties
    buildGoogleCloudVisionV1p1beta1ImageProperties() {
  final o = api.GoogleCloudVisionV1p1beta1ImageProperties();
  buildCounterGoogleCloudVisionV1p1beta1ImageProperties++;
  if (buildCounterGoogleCloudVisionV1p1beta1ImageProperties < 3) {
    o.dominantColors =
        buildGoogleCloudVisionV1p1beta1DominantColorsAnnotation();
  }
  buildCounterGoogleCloudVisionV1p1beta1ImageProperties--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1ImageProperties(
    api.GoogleCloudVisionV1p1beta1ImageProperties o) {
  buildCounterGoogleCloudVisionV1p1beta1ImageProperties++;
  if (buildCounterGoogleCloudVisionV1p1beta1ImageProperties < 3) {
    checkGoogleCloudVisionV1p1beta1DominantColorsAnnotation(o.dominantColors!);
  }
  buildCounterGoogleCloudVisionV1p1beta1ImageProperties--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1InputConfig = 0;
api.GoogleCloudVisionV1p1beta1InputConfig
    buildGoogleCloudVisionV1p1beta1InputConfig() {
  final o = api.GoogleCloudVisionV1p1beta1InputConfig();
  buildCounterGoogleCloudVisionV1p1beta1InputConfig++;
  if (buildCounterGoogleCloudVisionV1p1beta1InputConfig < 3) {
    o.content = 'foo';
    o.gcsSource = buildGoogleCloudVisionV1p1beta1GcsSource();
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudVisionV1p1beta1InputConfig--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1InputConfig(
    api.GoogleCloudVisionV1p1beta1InputConfig o) {
  buildCounterGoogleCloudVisionV1p1beta1InputConfig++;
  if (buildCounterGoogleCloudVisionV1p1beta1InputConfig < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVisionV1p1beta1GcsSource(o.gcsSource!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1InputConfig--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation = 0;
api.GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation
    buildGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation() {
  final o = api.GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation();
  buildCounterGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.languageCode = 'foo';
    o.mid = 'foo';
    o.name = 'foo';
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation(
    api.GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation o) {
  buildCounterGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation < 3) {
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1LocationInfo = 0;
api.GoogleCloudVisionV1p1beta1LocationInfo
    buildGoogleCloudVisionV1p1beta1LocationInfo() {
  final o = api.GoogleCloudVisionV1p1beta1LocationInfo();
  buildCounterGoogleCloudVisionV1p1beta1LocationInfo++;
  if (buildCounterGoogleCloudVisionV1p1beta1LocationInfo < 3) {
    o.latLng = buildLatLng();
  }
  buildCounterGoogleCloudVisionV1p1beta1LocationInfo--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1LocationInfo(
    api.GoogleCloudVisionV1p1beta1LocationInfo o) {
  buildCounterGoogleCloudVisionV1p1beta1LocationInfo++;
  if (buildCounterGoogleCloudVisionV1p1beta1LocationInfo < 3) {
    checkLatLng(o.latLng!);
  }
  buildCounterGoogleCloudVisionV1p1beta1LocationInfo--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1NormalizedVertex = 0;
api.GoogleCloudVisionV1p1beta1NormalizedVertex
    buildGoogleCloudVisionV1p1beta1NormalizedVertex() {
  final o = api.GoogleCloudVisionV1p1beta1NormalizedVertex();
  buildCounterGoogleCloudVisionV1p1beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVisionV1p1beta1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudVisionV1p1beta1NormalizedVertex--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1NormalizedVertex(
    api.GoogleCloudVisionV1p1beta1NormalizedVertex o) {
  buildCounterGoogleCloudVisionV1p1beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVisionV1p1beta1NormalizedVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1NormalizedVertex--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1OperationMetadata = 0;
api.GoogleCloudVisionV1p1beta1OperationMetadata
    buildGoogleCloudVisionV1p1beta1OperationMetadata() {
  final o = api.GoogleCloudVisionV1p1beta1OperationMetadata();
  buildCounterGoogleCloudVisionV1p1beta1OperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p1beta1OperationMetadata < 3) {
    o.createTime = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudVisionV1p1beta1OperationMetadata--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1OperationMetadata(
    api.GoogleCloudVisionV1p1beta1OperationMetadata o) {
  buildCounterGoogleCloudVisionV1p1beta1OperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p1beta1OperationMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1OperationMetadata--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1OutputConfig = 0;
api.GoogleCloudVisionV1p1beta1OutputConfig
    buildGoogleCloudVisionV1p1beta1OutputConfig() {
  final o = api.GoogleCloudVisionV1p1beta1OutputConfig();
  buildCounterGoogleCloudVisionV1p1beta1OutputConfig++;
  if (buildCounterGoogleCloudVisionV1p1beta1OutputConfig < 3) {
    o.batchSize = 42;
    o.gcsDestination = buildGoogleCloudVisionV1p1beta1GcsDestination();
  }
  buildCounterGoogleCloudVisionV1p1beta1OutputConfig--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1OutputConfig(
    api.GoogleCloudVisionV1p1beta1OutputConfig o) {
  buildCounterGoogleCloudVisionV1p1beta1OutputConfig++;
  if (buildCounterGoogleCloudVisionV1p1beta1OutputConfig < 3) {
    unittest.expect(
      o.batchSize!,
      unittest.equals(42),
    );
    checkGoogleCloudVisionV1p1beta1GcsDestination(o.gcsDestination!);
  }
  buildCounterGoogleCloudVisionV1p1beta1OutputConfig--;
}

core.List<api.GoogleCloudVisionV1p1beta1Block> buildUnnamed4253() => [
      buildGoogleCloudVisionV1p1beta1Block(),
      buildGoogleCloudVisionV1p1beta1Block(),
    ];

void checkUnnamed4253(core.List<api.GoogleCloudVisionV1p1beta1Block> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1Block(o[0]);
  checkGoogleCloudVisionV1p1beta1Block(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1Page = 0;
api.GoogleCloudVisionV1p1beta1Page buildGoogleCloudVisionV1p1beta1Page() {
  final o = api.GoogleCloudVisionV1p1beta1Page();
  buildCounterGoogleCloudVisionV1p1beta1Page++;
  if (buildCounterGoogleCloudVisionV1p1beta1Page < 3) {
    o.blocks = buildUnnamed4253();
    o.confidence = 42.0;
    o.height = 42;
    o.property = buildGoogleCloudVisionV1p1beta1TextAnnotationTextProperty();
    o.width = 42;
  }
  buildCounterGoogleCloudVisionV1p1beta1Page--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1Page(api.GoogleCloudVisionV1p1beta1Page o) {
  buildCounterGoogleCloudVisionV1p1beta1Page++;
  if (buildCounterGoogleCloudVisionV1p1beta1Page < 3) {
    checkUnnamed4253(o.blocks!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    checkGoogleCloudVisionV1p1beta1TextAnnotationTextProperty(o.property!);
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1Page--;
}

core.List<api.GoogleCloudVisionV1p1beta1Word> buildUnnamed4254() => [
      buildGoogleCloudVisionV1p1beta1Word(),
      buildGoogleCloudVisionV1p1beta1Word(),
    ];

void checkUnnamed4254(core.List<api.GoogleCloudVisionV1p1beta1Word> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1Word(o[0]);
  checkGoogleCloudVisionV1p1beta1Word(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1Paragraph = 0;
api.GoogleCloudVisionV1p1beta1Paragraph
    buildGoogleCloudVisionV1p1beta1Paragraph() {
  final o = api.GoogleCloudVisionV1p1beta1Paragraph();
  buildCounterGoogleCloudVisionV1p1beta1Paragraph++;
  if (buildCounterGoogleCloudVisionV1p1beta1Paragraph < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p1beta1TextAnnotationTextProperty();
    o.words = buildUnnamed4254();
  }
  buildCounterGoogleCloudVisionV1p1beta1Paragraph--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1Paragraph(
    api.GoogleCloudVisionV1p1beta1Paragraph o) {
  buildCounterGoogleCloudVisionV1p1beta1Paragraph++;
  if (buildCounterGoogleCloudVisionV1p1beta1Paragraph < 3) {
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVisionV1p1beta1TextAnnotationTextProperty(o.property!);
    checkUnnamed4254(o.words!);
  }
  buildCounterGoogleCloudVisionV1p1beta1Paragraph--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1Position = 0;
api.GoogleCloudVisionV1p1beta1Position
    buildGoogleCloudVisionV1p1beta1Position() {
  final o = api.GoogleCloudVisionV1p1beta1Position();
  buildCounterGoogleCloudVisionV1p1beta1Position++;
  if (buildCounterGoogleCloudVisionV1p1beta1Position < 3) {
    o.x = 42.0;
    o.y = 42.0;
    o.z = 42.0;
  }
  buildCounterGoogleCloudVisionV1p1beta1Position--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1Position(
    api.GoogleCloudVisionV1p1beta1Position o) {
  buildCounterGoogleCloudVisionV1p1beta1Position++;
  if (buildCounterGoogleCloudVisionV1p1beta1Position < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.z!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1Position--;
}

core.List<api.GoogleCloudVisionV1p1beta1ProductKeyValue> buildUnnamed4255() => [
      buildGoogleCloudVisionV1p1beta1ProductKeyValue(),
      buildGoogleCloudVisionV1p1beta1ProductKeyValue(),
    ];

void checkUnnamed4255(
    core.List<api.GoogleCloudVisionV1p1beta1ProductKeyValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1ProductKeyValue(o[0]);
  checkGoogleCloudVisionV1p1beta1ProductKeyValue(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1Product = 0;
api.GoogleCloudVisionV1p1beta1Product buildGoogleCloudVisionV1p1beta1Product() {
  final o = api.GoogleCloudVisionV1p1beta1Product();
  buildCounterGoogleCloudVisionV1p1beta1Product++;
  if (buildCounterGoogleCloudVisionV1p1beta1Product < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.productCategory = 'foo';
    o.productLabels = buildUnnamed4255();
  }
  buildCounterGoogleCloudVisionV1p1beta1Product--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1Product(
    api.GoogleCloudVisionV1p1beta1Product o) {
  buildCounterGoogleCloudVisionV1p1beta1Product++;
  if (buildCounterGoogleCloudVisionV1p1beta1Product < 3) {
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
    unittest.expect(
      o.productCategory!,
      unittest.equals('foo'),
    );
    checkUnnamed4255(o.productLabels!);
  }
  buildCounterGoogleCloudVisionV1p1beta1Product--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1ProductKeyValue = 0;
api.GoogleCloudVisionV1p1beta1ProductKeyValue
    buildGoogleCloudVisionV1p1beta1ProductKeyValue() {
  final o = api.GoogleCloudVisionV1p1beta1ProductKeyValue();
  buildCounterGoogleCloudVisionV1p1beta1ProductKeyValue++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductKeyValue < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductKeyValue--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1ProductKeyValue(
    api.GoogleCloudVisionV1p1beta1ProductKeyValue o) {
  buildCounterGoogleCloudVisionV1p1beta1ProductKeyValue++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductKeyValue < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductKeyValue--;
}

core.List<api.GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult>
    buildUnnamed4256() => [
          buildGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult(),
          buildGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult(),
        ];

void checkUnnamed4256(
    core.List<api.GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult(o[0]);
  checkGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult(o[1]);
}

core.List<api.GoogleCloudVisionV1p1beta1ProductSearchResultsResult>
    buildUnnamed4257() => [
          buildGoogleCloudVisionV1p1beta1ProductSearchResultsResult(),
          buildGoogleCloudVisionV1p1beta1ProductSearchResultsResult(),
        ];

void checkUnnamed4257(
    core.List<api.GoogleCloudVisionV1p1beta1ProductSearchResultsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1ProductSearchResultsResult(o[0]);
  checkGoogleCloudVisionV1p1beta1ProductSearchResultsResult(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1ProductSearchResults = 0;
api.GoogleCloudVisionV1p1beta1ProductSearchResults
    buildGoogleCloudVisionV1p1beta1ProductSearchResults() {
  final o = api.GoogleCloudVisionV1p1beta1ProductSearchResults();
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResults++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductSearchResults < 3) {
    o.indexTime = 'foo';
    o.productGroupedResults = buildUnnamed4256();
    o.results = buildUnnamed4257();
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResults--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1ProductSearchResults(
    api.GoogleCloudVisionV1p1beta1ProductSearchResults o) {
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResults++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductSearchResults < 3) {
    unittest.expect(
      o.indexTime!,
      unittest.equals('foo'),
    );
    checkUnnamed4256(o.productGroupedResults!);
    checkUnnamed4257(o.results!);
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResults--;
}

core.List<api.GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation>
    buildUnnamed4258() => [
          buildGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation(),
          buildGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation(),
        ];

void checkUnnamed4258(
    core.List<
            api.GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation(o[0]);
  checkGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p1beta1ProductSearchResultsResult>
    buildUnnamed4259() => [
          buildGoogleCloudVisionV1p1beta1ProductSearchResultsResult(),
          buildGoogleCloudVisionV1p1beta1ProductSearchResultsResult(),
        ];

void checkUnnamed4259(
    core.List<api.GoogleCloudVisionV1p1beta1ProductSearchResultsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1ProductSearchResultsResult(o[0]);
  checkGoogleCloudVisionV1p1beta1ProductSearchResultsResult(o[1]);
}

core.int
    buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult = 0;
api.GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult
    buildGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult() {
  final o = api.GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult();
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult <
      3) {
    o.boundingPoly = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.objectAnnotations = buildUnnamed4258();
    o.results = buildUnnamed4259();
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult(
    api.GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult o) {
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult <
      3) {
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.boundingPoly!);
    checkUnnamed4258(o.objectAnnotations!);
    checkUnnamed4259(o.results!);
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult--;
}

core.int
    buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation =
    0;
api.GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation
    buildGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation() {
  final o =
      api.GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation();
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation <
      3) {
    o.languageCode = 'foo';
    o.mid = 'foo';
    o.name = 'foo';
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation(
    api.GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation o) {
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation <
      3) {
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsResult = 0;
api.GoogleCloudVisionV1p1beta1ProductSearchResultsResult
    buildGoogleCloudVisionV1p1beta1ProductSearchResultsResult() {
  final o = api.GoogleCloudVisionV1p1beta1ProductSearchResultsResult();
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsResult++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsResult < 3) {
    o.image = 'foo';
    o.product = buildGoogleCloudVisionV1p1beta1Product();
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsResult--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1ProductSearchResultsResult(
    api.GoogleCloudVisionV1p1beta1ProductSearchResultsResult o) {
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsResult++;
  if (buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsResult < 3) {
    unittest.expect(
      o.image!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVisionV1p1beta1Product(o.product!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1ProductSearchResultsResult--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1Property = 0;
api.GoogleCloudVisionV1p1beta1Property
    buildGoogleCloudVisionV1p1beta1Property() {
  final o = api.GoogleCloudVisionV1p1beta1Property();
  buildCounterGoogleCloudVisionV1p1beta1Property++;
  if (buildCounterGoogleCloudVisionV1p1beta1Property < 3) {
    o.name = 'foo';
    o.uint64Value = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudVisionV1p1beta1Property--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1Property(
    api.GoogleCloudVisionV1p1beta1Property o) {
  buildCounterGoogleCloudVisionV1p1beta1Property++;
  if (buildCounterGoogleCloudVisionV1p1beta1Property < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uint64Value!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1Property--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1SafeSearchAnnotation = 0;
api.GoogleCloudVisionV1p1beta1SafeSearchAnnotation
    buildGoogleCloudVisionV1p1beta1SafeSearchAnnotation() {
  final o = api.GoogleCloudVisionV1p1beta1SafeSearchAnnotation();
  buildCounterGoogleCloudVisionV1p1beta1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1SafeSearchAnnotation < 3) {
    o.adult = 'foo';
    o.medical = 'foo';
    o.racy = 'foo';
    o.spoof = 'foo';
    o.violence = 'foo';
  }
  buildCounterGoogleCloudVisionV1p1beta1SafeSearchAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1SafeSearchAnnotation(
    api.GoogleCloudVisionV1p1beta1SafeSearchAnnotation o) {
  buildCounterGoogleCloudVisionV1p1beta1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1SafeSearchAnnotation < 3) {
    unittest.expect(
      o.adult!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.medical!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.racy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spoof!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.violence!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1SafeSearchAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1Symbol = 0;
api.GoogleCloudVisionV1p1beta1Symbol buildGoogleCloudVisionV1p1beta1Symbol() {
  final o = api.GoogleCloudVisionV1p1beta1Symbol();
  buildCounterGoogleCloudVisionV1p1beta1Symbol++;
  if (buildCounterGoogleCloudVisionV1p1beta1Symbol < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p1beta1TextAnnotationTextProperty();
    o.text = 'foo';
  }
  buildCounterGoogleCloudVisionV1p1beta1Symbol--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1Symbol(
    api.GoogleCloudVisionV1p1beta1Symbol o) {
  buildCounterGoogleCloudVisionV1p1beta1Symbol++;
  if (buildCounterGoogleCloudVisionV1p1beta1Symbol < 3) {
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVisionV1p1beta1TextAnnotationTextProperty(o.property!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1Symbol--;
}

core.List<api.GoogleCloudVisionV1p1beta1Page> buildUnnamed4260() => [
      buildGoogleCloudVisionV1p1beta1Page(),
      buildGoogleCloudVisionV1p1beta1Page(),
    ];

void checkUnnamed4260(core.List<api.GoogleCloudVisionV1p1beta1Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1Page(o[0]);
  checkGoogleCloudVisionV1p1beta1Page(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1TextAnnotation = 0;
api.GoogleCloudVisionV1p1beta1TextAnnotation
    buildGoogleCloudVisionV1p1beta1TextAnnotation() {
  final o = api.GoogleCloudVisionV1p1beta1TextAnnotation();
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1TextAnnotation < 3) {
    o.pages = buildUnnamed4260();
    o.text = 'foo';
  }
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1TextAnnotation(
    api.GoogleCloudVisionV1p1beta1TextAnnotation o) {
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p1beta1TextAnnotation < 3) {
    checkUnnamed4260(o.pages!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak = 0;
api.GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak
    buildGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak() {
  final o = api.GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak();
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak++;
  if (buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak < 3) {
    o.isPrefix = true;
    o.type = 'foo';
  }
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak(
    api.GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak o) {
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak++;
  if (buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak < 3) {
    unittest.expect(o.isPrefix!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage =
    0;
api.GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
    buildGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage() {
  final o = api.GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage();
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage++;
  if (buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage <
      3) {
    o.confidence = 42.0;
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage(
    api.GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage o) {
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage++;
  if (buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage--;
}

core.List<api.GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage>
    buildUnnamed4261() => [
          buildGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage(),
          buildGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage(),
        ];

void checkUnnamed4261(
    core.List<api.GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage(o[0]);
  checkGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1TextAnnotationTextProperty = 0;
api.GoogleCloudVisionV1p1beta1TextAnnotationTextProperty
    buildGoogleCloudVisionV1p1beta1TextAnnotationTextProperty() {
  final o = api.GoogleCloudVisionV1p1beta1TextAnnotationTextProperty();
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p1beta1TextAnnotationTextProperty < 3) {
    o.detectedBreak =
        buildGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak();
    o.detectedLanguages = buildUnnamed4261();
  }
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationTextProperty--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1TextAnnotationTextProperty(
    api.GoogleCloudVisionV1p1beta1TextAnnotationTextProperty o) {
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p1beta1TextAnnotationTextProperty < 3) {
    checkGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak(
        o.detectedBreak!);
    checkUnnamed4261(o.detectedLanguages!);
  }
  buildCounterGoogleCloudVisionV1p1beta1TextAnnotationTextProperty--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1Vertex = 0;
api.GoogleCloudVisionV1p1beta1Vertex buildGoogleCloudVisionV1p1beta1Vertex() {
  final o = api.GoogleCloudVisionV1p1beta1Vertex();
  buildCounterGoogleCloudVisionV1p1beta1Vertex++;
  if (buildCounterGoogleCloudVisionV1p1beta1Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudVisionV1p1beta1Vertex--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1Vertex(
    api.GoogleCloudVisionV1p1beta1Vertex o) {
  buildCounterGoogleCloudVisionV1p1beta1Vertex++;
  if (buildCounterGoogleCloudVisionV1p1beta1Vertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1Vertex--;
}

core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebLabel>
    buildUnnamed4262() => [
          buildGoogleCloudVisionV1p1beta1WebDetectionWebLabel(),
          buildGoogleCloudVisionV1p1beta1WebDetectionWebLabel(),
        ];

void checkUnnamed4262(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebLabel(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebLabel(o[1]);
}

core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage>
    buildUnnamed4263() => [
          buildGoogleCloudVisionV1p1beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p1beta1WebDetectionWebImage(),
        ];

void checkUnnamed4263(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebPage>
    buildUnnamed4264() => [
          buildGoogleCloudVisionV1p1beta1WebDetectionWebPage(),
          buildGoogleCloudVisionV1p1beta1WebDetectionWebPage(),
        ];

void checkUnnamed4264(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebPage(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebPage(o[1]);
}

core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage>
    buildUnnamed4265() => [
          buildGoogleCloudVisionV1p1beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p1beta1WebDetectionWebImage(),
        ];

void checkUnnamed4265(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage>
    buildUnnamed4266() => [
          buildGoogleCloudVisionV1p1beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p1beta1WebDetectionWebImage(),
        ];

void checkUnnamed4266(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebEntity>
    buildUnnamed4267() => [
          buildGoogleCloudVisionV1p1beta1WebDetectionWebEntity(),
          buildGoogleCloudVisionV1p1beta1WebDetectionWebEntity(),
        ];

void checkUnnamed4267(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebEntity(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebEntity(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1WebDetection = 0;
api.GoogleCloudVisionV1p1beta1WebDetection
    buildGoogleCloudVisionV1p1beta1WebDetection() {
  final o = api.GoogleCloudVisionV1p1beta1WebDetection();
  buildCounterGoogleCloudVisionV1p1beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetection < 3) {
    o.bestGuessLabels = buildUnnamed4262();
    o.fullMatchingImages = buildUnnamed4263();
    o.pagesWithMatchingImages = buildUnnamed4264();
    o.partialMatchingImages = buildUnnamed4265();
    o.visuallySimilarImages = buildUnnamed4266();
    o.webEntities = buildUnnamed4267();
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetection--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1WebDetection(
    api.GoogleCloudVisionV1p1beta1WebDetection o) {
  buildCounterGoogleCloudVisionV1p1beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetection < 3) {
    checkUnnamed4262(o.bestGuessLabels!);
    checkUnnamed4263(o.fullMatchingImages!);
    checkUnnamed4264(o.pagesWithMatchingImages!);
    checkUnnamed4265(o.partialMatchingImages!);
    checkUnnamed4266(o.visuallySimilarImages!);
    checkUnnamed4267(o.webEntities!);
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetection--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebEntity = 0;
api.GoogleCloudVisionV1p1beta1WebDetectionWebEntity
    buildGoogleCloudVisionV1p1beta1WebDetectionWebEntity() {
  final o = api.GoogleCloudVisionV1p1beta1WebDetectionWebEntity();
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebEntity++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebEntity < 3) {
    o.description = 'foo';
    o.entityId = 'foo';
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebEntity--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1WebDetectionWebEntity(
    api.GoogleCloudVisionV1p1beta1WebDetectionWebEntity o) {
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebEntity++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebEntity < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebEntity--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebImage = 0;
api.GoogleCloudVisionV1p1beta1WebDetectionWebImage
    buildGoogleCloudVisionV1p1beta1WebDetectionWebImage() {
  final o = api.GoogleCloudVisionV1p1beta1WebDetectionWebImage();
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebImage++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebImage < 3) {
    o.score = 42.0;
    o.url = 'foo';
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebImage--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(
    api.GoogleCloudVisionV1p1beta1WebDetectionWebImage o) {
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebImage++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebImage < 3) {
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebImage--;
}

core.int buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebLabel = 0;
api.GoogleCloudVisionV1p1beta1WebDetectionWebLabel
    buildGoogleCloudVisionV1p1beta1WebDetectionWebLabel() {
  final o = api.GoogleCloudVisionV1p1beta1WebDetectionWebLabel();
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebLabel++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebLabel < 3) {
    o.label = 'foo';
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebLabel--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1WebDetectionWebLabel(
    api.GoogleCloudVisionV1p1beta1WebDetectionWebLabel o) {
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebLabel++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebLabel < 3) {
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebLabel--;
}

core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage>
    buildUnnamed4268() => [
          buildGoogleCloudVisionV1p1beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p1beta1WebDetectionWebImage(),
        ];

void checkUnnamed4268(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage>
    buildUnnamed4269() => [
          buildGoogleCloudVisionV1p1beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p1beta1WebDetectionWebImage(),
        ];

void checkUnnamed4269(
    core.List<api.GoogleCloudVisionV1p1beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebPage = 0;
api.GoogleCloudVisionV1p1beta1WebDetectionWebPage
    buildGoogleCloudVisionV1p1beta1WebDetectionWebPage() {
  final o = api.GoogleCloudVisionV1p1beta1WebDetectionWebPage();
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebPage++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebPage < 3) {
    o.fullMatchingImages = buildUnnamed4268();
    o.pageTitle = 'foo';
    o.partialMatchingImages = buildUnnamed4269();
    o.score = 42.0;
    o.url = 'foo';
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebPage--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1WebDetectionWebPage(
    api.GoogleCloudVisionV1p1beta1WebDetectionWebPage o) {
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebPage++;
  if (buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebPage < 3) {
    checkUnnamed4268(o.fullMatchingImages!);
    unittest.expect(
      o.pageTitle!,
      unittest.equals('foo'),
    );
    checkUnnamed4269(o.partialMatchingImages!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p1beta1WebDetectionWebPage--;
}

core.List<api.GoogleCloudVisionV1p1beta1Symbol> buildUnnamed4270() => [
      buildGoogleCloudVisionV1p1beta1Symbol(),
      buildGoogleCloudVisionV1p1beta1Symbol(),
    ];

void checkUnnamed4270(core.List<api.GoogleCloudVisionV1p1beta1Symbol> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p1beta1Symbol(o[0]);
  checkGoogleCloudVisionV1p1beta1Symbol(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p1beta1Word = 0;
api.GoogleCloudVisionV1p1beta1Word buildGoogleCloudVisionV1p1beta1Word() {
  final o = api.GoogleCloudVisionV1p1beta1Word();
  buildCounterGoogleCloudVisionV1p1beta1Word++;
  if (buildCounterGoogleCloudVisionV1p1beta1Word < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p1beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p1beta1TextAnnotationTextProperty();
    o.symbols = buildUnnamed4270();
  }
  buildCounterGoogleCloudVisionV1p1beta1Word--;
  return o;
}

void checkGoogleCloudVisionV1p1beta1Word(api.GoogleCloudVisionV1p1beta1Word o) {
  buildCounterGoogleCloudVisionV1p1beta1Word++;
  if (buildCounterGoogleCloudVisionV1p1beta1Word < 3) {
    checkGoogleCloudVisionV1p1beta1BoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVisionV1p1beta1TextAnnotationTextProperty(o.property!);
    checkUnnamed4270(o.symbols!);
  }
  buildCounterGoogleCloudVisionV1p1beta1Word--;
}

core.List<api.GoogleCloudVisionV1p2beta1AnnotateImageResponse>
    buildUnnamed4271() => [
          buildGoogleCloudVisionV1p2beta1AnnotateImageResponse(),
          buildGoogleCloudVisionV1p2beta1AnnotateImageResponse(),
        ];

void checkUnnamed4271(
    core.List<api.GoogleCloudVisionV1p2beta1AnnotateImageResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1AnnotateImageResponse(o[0]);
  checkGoogleCloudVisionV1p2beta1AnnotateImageResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse = 0;
api.GoogleCloudVisionV1p2beta1AnnotateFileResponse
    buildGoogleCloudVisionV1p2beta1AnnotateFileResponse() {
  final o = api.GoogleCloudVisionV1p2beta1AnnotateFileResponse();
  buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse < 3) {
    o.error = buildStatus();
    o.inputConfig = buildGoogleCloudVisionV1p2beta1InputConfig();
    o.responses = buildUnnamed4271();
    o.totalPages = 42;
  }
  buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1AnnotateFileResponse(
    api.GoogleCloudVisionV1p2beta1AnnotateFileResponse o) {
  buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse < 3) {
    checkStatus(o.error!);
    checkGoogleCloudVisionV1p2beta1InputConfig(o.inputConfig!);
    checkUnnamed4271(o.responses!);
    unittest.expect(
      o.totalPages!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse--;
}

core.List<api.GoogleCloudVisionV1p2beta1FaceAnnotation> buildUnnamed4272() => [
      buildGoogleCloudVisionV1p2beta1FaceAnnotation(),
      buildGoogleCloudVisionV1p2beta1FaceAnnotation(),
    ];

void checkUnnamed4272(
    core.List<api.GoogleCloudVisionV1p2beta1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1FaceAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1FaceAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> buildUnnamed4273() =>
    [
      buildGoogleCloudVisionV1p2beta1EntityAnnotation(),
      buildGoogleCloudVisionV1p2beta1EntityAnnotation(),
    ];

void checkUnnamed4273(
    core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> buildUnnamed4274() =>
    [
      buildGoogleCloudVisionV1p2beta1EntityAnnotation(),
      buildGoogleCloudVisionV1p2beta1EntityAnnotation(),
    ];

void checkUnnamed4274(
    core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation>
    buildUnnamed4275() => [
          buildGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation(),
          buildGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation(),
        ];

void checkUnnamed4275(
    core.List<api.GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> buildUnnamed4276() =>
    [
      buildGoogleCloudVisionV1p2beta1EntityAnnotation(),
      buildGoogleCloudVisionV1p2beta1EntityAnnotation(),
    ];

void checkUnnamed4276(
    core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> buildUnnamed4277() =>
    [
      buildGoogleCloudVisionV1p2beta1EntityAnnotation(),
      buildGoogleCloudVisionV1p2beta1EntityAnnotation(),
    ];

void checkUnnamed4277(
    core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1AnnotateImageResponse = 0;
api.GoogleCloudVisionV1p2beta1AnnotateImageResponse
    buildGoogleCloudVisionV1p2beta1AnnotateImageResponse() {
  final o = api.GoogleCloudVisionV1p2beta1AnnotateImageResponse();
  buildCounterGoogleCloudVisionV1p2beta1AnnotateImageResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AnnotateImageResponse < 3) {
    o.context = buildGoogleCloudVisionV1p2beta1ImageAnnotationContext();
    o.cropHintsAnnotation =
        buildGoogleCloudVisionV1p2beta1CropHintsAnnotation();
    o.error = buildStatus();
    o.faceAnnotations = buildUnnamed4272();
    o.fullTextAnnotation = buildGoogleCloudVisionV1p2beta1TextAnnotation();
    o.imagePropertiesAnnotation =
        buildGoogleCloudVisionV1p2beta1ImageProperties();
    o.labelAnnotations = buildUnnamed4273();
    o.landmarkAnnotations = buildUnnamed4274();
    o.localizedObjectAnnotations = buildUnnamed4275();
    o.logoAnnotations = buildUnnamed4276();
    o.productSearchResults =
        buildGoogleCloudVisionV1p2beta1ProductSearchResults();
    o.safeSearchAnnotation =
        buildGoogleCloudVisionV1p2beta1SafeSearchAnnotation();
    o.textAnnotations = buildUnnamed4277();
    o.webDetection = buildGoogleCloudVisionV1p2beta1WebDetection();
  }
  buildCounterGoogleCloudVisionV1p2beta1AnnotateImageResponse--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1AnnotateImageResponse(
    api.GoogleCloudVisionV1p2beta1AnnotateImageResponse o) {
  buildCounterGoogleCloudVisionV1p2beta1AnnotateImageResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AnnotateImageResponse < 3) {
    checkGoogleCloudVisionV1p2beta1ImageAnnotationContext(o.context!);
    checkGoogleCloudVisionV1p2beta1CropHintsAnnotation(o.cropHintsAnnotation!);
    checkStatus(o.error!);
    checkUnnamed4272(o.faceAnnotations!);
    checkGoogleCloudVisionV1p2beta1TextAnnotation(o.fullTextAnnotation!);
    checkGoogleCloudVisionV1p2beta1ImageProperties(
        o.imagePropertiesAnnotation!);
    checkUnnamed4273(o.labelAnnotations!);
    checkUnnamed4274(o.landmarkAnnotations!);
    checkUnnamed4275(o.localizedObjectAnnotations!);
    checkUnnamed4276(o.logoAnnotations!);
    checkGoogleCloudVisionV1p2beta1ProductSearchResults(
        o.productSearchResults!);
    checkGoogleCloudVisionV1p2beta1SafeSearchAnnotation(
        o.safeSearchAnnotation!);
    checkUnnamed4277(o.textAnnotations!);
    checkGoogleCloudVisionV1p2beta1WebDetection(o.webDetection!);
  }
  buildCounterGoogleCloudVisionV1p2beta1AnnotateImageResponse--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse = 0;
api.GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse
    buildGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse() {
  final o = api.GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse();
  buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse < 3) {
    o.outputConfig = buildGoogleCloudVisionV1p2beta1OutputConfig();
  }
  buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse(
    api.GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse o) {
  buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse < 3) {
    checkGoogleCloudVisionV1p2beta1OutputConfig(o.outputConfig!);
  }
  buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse--;
}

core.List<api.GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse>
    buildUnnamed4278() => [
          buildGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse(),
          buildGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse(),
        ];

void checkUnnamed4278(
    core.List<api.GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse(o[0]);
  checkGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse =
    0;
api.GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse
    buildGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse() {
  final o = api.GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse();
  buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse <
      3) {
    o.responses = buildUnnamed4278();
  }
  buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse(
    api.GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse o) {
  buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse <
      3) {
    checkUnnamed4278(o.responses!);
  }
  buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse--;
}

core.List<api.GoogleCloudVisionV1p2beta1Paragraph> buildUnnamed4279() => [
      buildGoogleCloudVisionV1p2beta1Paragraph(),
      buildGoogleCloudVisionV1p2beta1Paragraph(),
    ];

void checkUnnamed4279(core.List<api.GoogleCloudVisionV1p2beta1Paragraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Paragraph(o[0]);
  checkGoogleCloudVisionV1p2beta1Paragraph(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1Block = 0;
api.GoogleCloudVisionV1p2beta1Block buildGoogleCloudVisionV1p2beta1Block() {
  final o = api.GoogleCloudVisionV1p2beta1Block();
  buildCounterGoogleCloudVisionV1p2beta1Block++;
  if (buildCounterGoogleCloudVisionV1p2beta1Block < 3) {
    o.blockType = 'foo';
    o.boundingBox = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.confidence = 42.0;
    o.paragraphs = buildUnnamed4279();
    o.property = buildGoogleCloudVisionV1p2beta1TextAnnotationTextProperty();
  }
  buildCounterGoogleCloudVisionV1p2beta1Block--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1Block(
    api.GoogleCloudVisionV1p2beta1Block o) {
  buildCounterGoogleCloudVisionV1p2beta1Block++;
  if (buildCounterGoogleCloudVisionV1p2beta1Block < 3) {
    unittest.expect(
      o.blockType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkUnnamed4279(o.paragraphs!);
    checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(o.property!);
  }
  buildCounterGoogleCloudVisionV1p2beta1Block--;
}

core.List<api.GoogleCloudVisionV1p2beta1NormalizedVertex> buildUnnamed4280() =>
    [
      buildGoogleCloudVisionV1p2beta1NormalizedVertex(),
      buildGoogleCloudVisionV1p2beta1NormalizedVertex(),
    ];

void checkUnnamed4280(
    core.List<api.GoogleCloudVisionV1p2beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1NormalizedVertex(o[0]);
  checkGoogleCloudVisionV1p2beta1NormalizedVertex(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1Vertex> buildUnnamed4281() => [
      buildGoogleCloudVisionV1p2beta1Vertex(),
      buildGoogleCloudVisionV1p2beta1Vertex(),
    ];

void checkUnnamed4281(core.List<api.GoogleCloudVisionV1p2beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Vertex(o[0]);
  checkGoogleCloudVisionV1p2beta1Vertex(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1BoundingPoly = 0;
api.GoogleCloudVisionV1p2beta1BoundingPoly
    buildGoogleCloudVisionV1p2beta1BoundingPoly() {
  final o = api.GoogleCloudVisionV1p2beta1BoundingPoly();
  buildCounterGoogleCloudVisionV1p2beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p2beta1BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed4280();
    o.vertices = buildUnnamed4281();
  }
  buildCounterGoogleCloudVisionV1p2beta1BoundingPoly--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1BoundingPoly(
    api.GoogleCloudVisionV1p2beta1BoundingPoly o) {
  buildCounterGoogleCloudVisionV1p2beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p2beta1BoundingPoly < 3) {
    checkUnnamed4280(o.normalizedVertices!);
    checkUnnamed4281(o.vertices!);
  }
  buildCounterGoogleCloudVisionV1p2beta1BoundingPoly--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1ColorInfo = 0;
api.GoogleCloudVisionV1p2beta1ColorInfo
    buildGoogleCloudVisionV1p2beta1ColorInfo() {
  final o = api.GoogleCloudVisionV1p2beta1ColorInfo();
  buildCounterGoogleCloudVisionV1p2beta1ColorInfo++;
  if (buildCounterGoogleCloudVisionV1p2beta1ColorInfo < 3) {
    o.color = buildColor();
    o.pixelFraction = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p2beta1ColorInfo--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1ColorInfo(
    api.GoogleCloudVisionV1p2beta1ColorInfo o) {
  buildCounterGoogleCloudVisionV1p2beta1ColorInfo++;
  if (buildCounterGoogleCloudVisionV1p2beta1ColorInfo < 3) {
    checkColor(o.color!);
    unittest.expect(
      o.pixelFraction!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1ColorInfo--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1CropHint = 0;
api.GoogleCloudVisionV1p2beta1CropHint
    buildGoogleCloudVisionV1p2beta1CropHint() {
  final o = api.GoogleCloudVisionV1p2beta1CropHint();
  buildCounterGoogleCloudVisionV1p2beta1CropHint++;
  if (buildCounterGoogleCloudVisionV1p2beta1CropHint < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.confidence = 42.0;
    o.importanceFraction = 42.0;
  }
  buildCounterGoogleCloudVisionV1p2beta1CropHint--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1CropHint(
    api.GoogleCloudVisionV1p2beta1CropHint o) {
  buildCounterGoogleCloudVisionV1p2beta1CropHint++;
  if (buildCounterGoogleCloudVisionV1p2beta1CropHint < 3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.importanceFraction!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1CropHint--;
}

core.List<api.GoogleCloudVisionV1p2beta1CropHint> buildUnnamed4282() => [
      buildGoogleCloudVisionV1p2beta1CropHint(),
      buildGoogleCloudVisionV1p2beta1CropHint(),
    ];

void checkUnnamed4282(core.List<api.GoogleCloudVisionV1p2beta1CropHint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1CropHint(o[0]);
  checkGoogleCloudVisionV1p2beta1CropHint(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation = 0;
api.GoogleCloudVisionV1p2beta1CropHintsAnnotation
    buildGoogleCloudVisionV1p2beta1CropHintsAnnotation() {
  final o = api.GoogleCloudVisionV1p2beta1CropHintsAnnotation();
  buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation < 3) {
    o.cropHints = buildUnnamed4282();
  }
  buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1CropHintsAnnotation(
    api.GoogleCloudVisionV1p2beta1CropHintsAnnotation o) {
  buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation < 3) {
    checkUnnamed4282(o.cropHints!);
  }
  buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation--;
}

core.List<api.GoogleCloudVisionV1p2beta1ColorInfo> buildUnnamed4283() => [
      buildGoogleCloudVisionV1p2beta1ColorInfo(),
      buildGoogleCloudVisionV1p2beta1ColorInfo(),
    ];

void checkUnnamed4283(core.List<api.GoogleCloudVisionV1p2beta1ColorInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1ColorInfo(o[0]);
  checkGoogleCloudVisionV1p2beta1ColorInfo(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation = 0;
api.GoogleCloudVisionV1p2beta1DominantColorsAnnotation
    buildGoogleCloudVisionV1p2beta1DominantColorsAnnotation() {
  final o = api.GoogleCloudVisionV1p2beta1DominantColorsAnnotation();
  buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation < 3) {
    o.colors = buildUnnamed4283();
  }
  buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1DominantColorsAnnotation(
    api.GoogleCloudVisionV1p2beta1DominantColorsAnnotation o) {
  buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation < 3) {
    checkUnnamed4283(o.colors!);
  }
  buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation--;
}

core.List<api.GoogleCloudVisionV1p2beta1LocationInfo> buildUnnamed4284() => [
      buildGoogleCloudVisionV1p2beta1LocationInfo(),
      buildGoogleCloudVisionV1p2beta1LocationInfo(),
    ];

void checkUnnamed4284(core.List<api.GoogleCloudVisionV1p2beta1LocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1LocationInfo(o[0]);
  checkGoogleCloudVisionV1p2beta1LocationInfo(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1Property> buildUnnamed4285() => [
      buildGoogleCloudVisionV1p2beta1Property(),
      buildGoogleCloudVisionV1p2beta1Property(),
    ];

void checkUnnamed4285(core.List<api.GoogleCloudVisionV1p2beta1Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Property(o[0]);
  checkGoogleCloudVisionV1p2beta1Property(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1EntityAnnotation = 0;
api.GoogleCloudVisionV1p2beta1EntityAnnotation
    buildGoogleCloudVisionV1p2beta1EntityAnnotation() {
  final o = api.GoogleCloudVisionV1p2beta1EntityAnnotation();
  buildCounterGoogleCloudVisionV1p2beta1EntityAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1EntityAnnotation < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.confidence = 42.0;
    o.description = 'foo';
    o.locale = 'foo';
    o.locations = buildUnnamed4284();
    o.mid = 'foo';
    o.properties = buildUnnamed4285();
    o.score = 42.0;
    o.topicality = 42.0;
  }
  buildCounterGoogleCloudVisionV1p2beta1EntityAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1EntityAnnotation(
    api.GoogleCloudVisionV1p2beta1EntityAnnotation o) {
  buildCounterGoogleCloudVisionV1p2beta1EntityAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1EntityAnnotation < 3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locale!,
      unittest.equals('foo'),
    );
    checkUnnamed4284(o.locations!);
    unittest.expect(
      o.mid!,
      unittest.equals('foo'),
    );
    checkUnnamed4285(o.properties!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.topicality!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1EntityAnnotation--;
}

core.List<api.GoogleCloudVisionV1p2beta1FaceAnnotationLandmark>
    buildUnnamed4286() => [
          buildGoogleCloudVisionV1p2beta1FaceAnnotationLandmark(),
          buildGoogleCloudVisionV1p2beta1FaceAnnotationLandmark(),
        ];

void checkUnnamed4286(
    core.List<api.GoogleCloudVisionV1p2beta1FaceAnnotationLandmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1FaceAnnotationLandmark(o[0]);
  checkGoogleCloudVisionV1p2beta1FaceAnnotationLandmark(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1FaceAnnotation = 0;
api.GoogleCloudVisionV1p2beta1FaceAnnotation
    buildGoogleCloudVisionV1p2beta1FaceAnnotation() {
  final o = api.GoogleCloudVisionV1p2beta1FaceAnnotation();
  buildCounterGoogleCloudVisionV1p2beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1FaceAnnotation < 3) {
    o.angerLikelihood = 'foo';
    o.blurredLikelihood = 'foo';
    o.boundingPoly = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.detectionConfidence = 42.0;
    o.fdBoundingPoly = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.headwearLikelihood = 'foo';
    o.joyLikelihood = 'foo';
    o.landmarkingConfidence = 42.0;
    o.landmarks = buildUnnamed4286();
    o.panAngle = 42.0;
    o.rollAngle = 42.0;
    o.sorrowLikelihood = 'foo';
    o.surpriseLikelihood = 'foo';
    o.tiltAngle = 42.0;
    o.underExposedLikelihood = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1FaceAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1FaceAnnotation(
    api.GoogleCloudVisionV1p2beta1FaceAnnotation o) {
  buildCounterGoogleCloudVisionV1p2beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1FaceAnnotation < 3) {
    unittest.expect(
      o.angerLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.blurredLikelihood!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.detectionConfidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.fdBoundingPoly!);
    unittest.expect(
      o.headwearLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.joyLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.landmarkingConfidence!,
      unittest.equals(42.0),
    );
    checkUnnamed4286(o.landmarks!);
    unittest.expect(
      o.panAngle!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.rollAngle!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.sorrowLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.surpriseLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tiltAngle!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.underExposedLikelihood!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1FaceAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1FaceAnnotationLandmark = 0;
api.GoogleCloudVisionV1p2beta1FaceAnnotationLandmark
    buildGoogleCloudVisionV1p2beta1FaceAnnotationLandmark() {
  final o = api.GoogleCloudVisionV1p2beta1FaceAnnotationLandmark();
  buildCounterGoogleCloudVisionV1p2beta1FaceAnnotationLandmark++;
  if (buildCounterGoogleCloudVisionV1p2beta1FaceAnnotationLandmark < 3) {
    o.position = buildGoogleCloudVisionV1p2beta1Position();
    o.type = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1FaceAnnotationLandmark--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1FaceAnnotationLandmark(
    api.GoogleCloudVisionV1p2beta1FaceAnnotationLandmark o) {
  buildCounterGoogleCloudVisionV1p2beta1FaceAnnotationLandmark++;
  if (buildCounterGoogleCloudVisionV1p2beta1FaceAnnotationLandmark < 3) {
    checkGoogleCloudVisionV1p2beta1Position(o.position!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1FaceAnnotationLandmark--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1GcsDestination = 0;
api.GoogleCloudVisionV1p2beta1GcsDestination
    buildGoogleCloudVisionV1p2beta1GcsDestination() {
  final o = api.GoogleCloudVisionV1p2beta1GcsDestination();
  buildCounterGoogleCloudVisionV1p2beta1GcsDestination++;
  if (buildCounterGoogleCloudVisionV1p2beta1GcsDestination < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1GcsDestination--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1GcsDestination(
    api.GoogleCloudVisionV1p2beta1GcsDestination o) {
  buildCounterGoogleCloudVisionV1p2beta1GcsDestination++;
  if (buildCounterGoogleCloudVisionV1p2beta1GcsDestination < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1GcsDestination--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1GcsSource = 0;
api.GoogleCloudVisionV1p2beta1GcsSource
    buildGoogleCloudVisionV1p2beta1GcsSource() {
  final o = api.GoogleCloudVisionV1p2beta1GcsSource();
  buildCounterGoogleCloudVisionV1p2beta1GcsSource++;
  if (buildCounterGoogleCloudVisionV1p2beta1GcsSource < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1GcsSource--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1GcsSource(
    api.GoogleCloudVisionV1p2beta1GcsSource o) {
  buildCounterGoogleCloudVisionV1p2beta1GcsSource++;
  if (buildCounterGoogleCloudVisionV1p2beta1GcsSource < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1GcsSource--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1ImageAnnotationContext = 0;
api.GoogleCloudVisionV1p2beta1ImageAnnotationContext
    buildGoogleCloudVisionV1p2beta1ImageAnnotationContext() {
  final o = api.GoogleCloudVisionV1p2beta1ImageAnnotationContext();
  buildCounterGoogleCloudVisionV1p2beta1ImageAnnotationContext++;
  if (buildCounterGoogleCloudVisionV1p2beta1ImageAnnotationContext < 3) {
    o.pageNumber = 42;
    o.uri = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1ImageAnnotationContext--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1ImageAnnotationContext(
    api.GoogleCloudVisionV1p2beta1ImageAnnotationContext o) {
  buildCounterGoogleCloudVisionV1p2beta1ImageAnnotationContext++;
  if (buildCounterGoogleCloudVisionV1p2beta1ImageAnnotationContext < 3) {
    unittest.expect(
      o.pageNumber!,
      unittest.equals(42),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1ImageAnnotationContext--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1ImageProperties = 0;
api.GoogleCloudVisionV1p2beta1ImageProperties
    buildGoogleCloudVisionV1p2beta1ImageProperties() {
  final o = api.GoogleCloudVisionV1p2beta1ImageProperties();
  buildCounterGoogleCloudVisionV1p2beta1ImageProperties++;
  if (buildCounterGoogleCloudVisionV1p2beta1ImageProperties < 3) {
    o.dominantColors =
        buildGoogleCloudVisionV1p2beta1DominantColorsAnnotation();
  }
  buildCounterGoogleCloudVisionV1p2beta1ImageProperties--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1ImageProperties(
    api.GoogleCloudVisionV1p2beta1ImageProperties o) {
  buildCounterGoogleCloudVisionV1p2beta1ImageProperties++;
  if (buildCounterGoogleCloudVisionV1p2beta1ImageProperties < 3) {
    checkGoogleCloudVisionV1p2beta1DominantColorsAnnotation(o.dominantColors!);
  }
  buildCounterGoogleCloudVisionV1p2beta1ImageProperties--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1InputConfig = 0;
api.GoogleCloudVisionV1p2beta1InputConfig
    buildGoogleCloudVisionV1p2beta1InputConfig() {
  final o = api.GoogleCloudVisionV1p2beta1InputConfig();
  buildCounterGoogleCloudVisionV1p2beta1InputConfig++;
  if (buildCounterGoogleCloudVisionV1p2beta1InputConfig < 3) {
    o.content = 'foo';
    o.gcsSource = buildGoogleCloudVisionV1p2beta1GcsSource();
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1InputConfig--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1InputConfig(
    api.GoogleCloudVisionV1p2beta1InputConfig o) {
  buildCounterGoogleCloudVisionV1p2beta1InputConfig++;
  if (buildCounterGoogleCloudVisionV1p2beta1InputConfig < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVisionV1p2beta1GcsSource(o.gcsSource!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1InputConfig--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation = 0;
api.GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation
    buildGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation() {
  final o = api.GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation();
  buildCounterGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.languageCode = 'foo';
    o.mid = 'foo';
    o.name = 'foo';
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation(
    api.GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation o) {
  buildCounterGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation < 3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1LocationInfo = 0;
api.GoogleCloudVisionV1p2beta1LocationInfo
    buildGoogleCloudVisionV1p2beta1LocationInfo() {
  final o = api.GoogleCloudVisionV1p2beta1LocationInfo();
  buildCounterGoogleCloudVisionV1p2beta1LocationInfo++;
  if (buildCounterGoogleCloudVisionV1p2beta1LocationInfo < 3) {
    o.latLng = buildLatLng();
  }
  buildCounterGoogleCloudVisionV1p2beta1LocationInfo--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1LocationInfo(
    api.GoogleCloudVisionV1p2beta1LocationInfo o) {
  buildCounterGoogleCloudVisionV1p2beta1LocationInfo++;
  if (buildCounterGoogleCloudVisionV1p2beta1LocationInfo < 3) {
    checkLatLng(o.latLng!);
  }
  buildCounterGoogleCloudVisionV1p2beta1LocationInfo--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1NormalizedVertex = 0;
api.GoogleCloudVisionV1p2beta1NormalizedVertex
    buildGoogleCloudVisionV1p2beta1NormalizedVertex() {
  final o = api.GoogleCloudVisionV1p2beta1NormalizedVertex();
  buildCounterGoogleCloudVisionV1p2beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVisionV1p2beta1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudVisionV1p2beta1NormalizedVertex--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1NormalizedVertex(
    api.GoogleCloudVisionV1p2beta1NormalizedVertex o) {
  buildCounterGoogleCloudVisionV1p2beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVisionV1p2beta1NormalizedVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1NormalizedVertex--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1OperationMetadata = 0;
api.GoogleCloudVisionV1p2beta1OperationMetadata
    buildGoogleCloudVisionV1p2beta1OperationMetadata() {
  final o = api.GoogleCloudVisionV1p2beta1OperationMetadata();
  buildCounterGoogleCloudVisionV1p2beta1OperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p2beta1OperationMetadata < 3) {
    o.createTime = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1OperationMetadata--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1OperationMetadata(
    api.GoogleCloudVisionV1p2beta1OperationMetadata o) {
  buildCounterGoogleCloudVisionV1p2beta1OperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p2beta1OperationMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1OperationMetadata--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1OutputConfig = 0;
api.GoogleCloudVisionV1p2beta1OutputConfig
    buildGoogleCloudVisionV1p2beta1OutputConfig() {
  final o = api.GoogleCloudVisionV1p2beta1OutputConfig();
  buildCounterGoogleCloudVisionV1p2beta1OutputConfig++;
  if (buildCounterGoogleCloudVisionV1p2beta1OutputConfig < 3) {
    o.batchSize = 42;
    o.gcsDestination = buildGoogleCloudVisionV1p2beta1GcsDestination();
  }
  buildCounterGoogleCloudVisionV1p2beta1OutputConfig--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1OutputConfig(
    api.GoogleCloudVisionV1p2beta1OutputConfig o) {
  buildCounterGoogleCloudVisionV1p2beta1OutputConfig++;
  if (buildCounterGoogleCloudVisionV1p2beta1OutputConfig < 3) {
    unittest.expect(
      o.batchSize!,
      unittest.equals(42),
    );
    checkGoogleCloudVisionV1p2beta1GcsDestination(o.gcsDestination!);
  }
  buildCounterGoogleCloudVisionV1p2beta1OutputConfig--;
}

core.List<api.GoogleCloudVisionV1p2beta1Block> buildUnnamed4287() => [
      buildGoogleCloudVisionV1p2beta1Block(),
      buildGoogleCloudVisionV1p2beta1Block(),
    ];

void checkUnnamed4287(core.List<api.GoogleCloudVisionV1p2beta1Block> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Block(o[0]);
  checkGoogleCloudVisionV1p2beta1Block(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1Page = 0;
api.GoogleCloudVisionV1p2beta1Page buildGoogleCloudVisionV1p2beta1Page() {
  final o = api.GoogleCloudVisionV1p2beta1Page();
  buildCounterGoogleCloudVisionV1p2beta1Page++;
  if (buildCounterGoogleCloudVisionV1p2beta1Page < 3) {
    o.blocks = buildUnnamed4287();
    o.confidence = 42.0;
    o.height = 42;
    o.property = buildGoogleCloudVisionV1p2beta1TextAnnotationTextProperty();
    o.width = 42;
  }
  buildCounterGoogleCloudVisionV1p2beta1Page--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1Page(api.GoogleCloudVisionV1p2beta1Page o) {
  buildCounterGoogleCloudVisionV1p2beta1Page++;
  if (buildCounterGoogleCloudVisionV1p2beta1Page < 3) {
    checkUnnamed4287(o.blocks!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(o.property!);
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1Page--;
}

core.List<api.GoogleCloudVisionV1p2beta1Word> buildUnnamed4288() => [
      buildGoogleCloudVisionV1p2beta1Word(),
      buildGoogleCloudVisionV1p2beta1Word(),
    ];

void checkUnnamed4288(core.List<api.GoogleCloudVisionV1p2beta1Word> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Word(o[0]);
  checkGoogleCloudVisionV1p2beta1Word(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1Paragraph = 0;
api.GoogleCloudVisionV1p2beta1Paragraph
    buildGoogleCloudVisionV1p2beta1Paragraph() {
  final o = api.GoogleCloudVisionV1p2beta1Paragraph();
  buildCounterGoogleCloudVisionV1p2beta1Paragraph++;
  if (buildCounterGoogleCloudVisionV1p2beta1Paragraph < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p2beta1TextAnnotationTextProperty();
    o.words = buildUnnamed4288();
  }
  buildCounterGoogleCloudVisionV1p2beta1Paragraph--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1Paragraph(
    api.GoogleCloudVisionV1p2beta1Paragraph o) {
  buildCounterGoogleCloudVisionV1p2beta1Paragraph++;
  if (buildCounterGoogleCloudVisionV1p2beta1Paragraph < 3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(o.property!);
    checkUnnamed4288(o.words!);
  }
  buildCounterGoogleCloudVisionV1p2beta1Paragraph--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1Position = 0;
api.GoogleCloudVisionV1p2beta1Position
    buildGoogleCloudVisionV1p2beta1Position() {
  final o = api.GoogleCloudVisionV1p2beta1Position();
  buildCounterGoogleCloudVisionV1p2beta1Position++;
  if (buildCounterGoogleCloudVisionV1p2beta1Position < 3) {
    o.x = 42.0;
    o.y = 42.0;
    o.z = 42.0;
  }
  buildCounterGoogleCloudVisionV1p2beta1Position--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1Position(
    api.GoogleCloudVisionV1p2beta1Position o) {
  buildCounterGoogleCloudVisionV1p2beta1Position++;
  if (buildCounterGoogleCloudVisionV1p2beta1Position < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.z!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1Position--;
}

core.List<api.GoogleCloudVisionV1p2beta1ProductKeyValue> buildUnnamed4289() => [
      buildGoogleCloudVisionV1p2beta1ProductKeyValue(),
      buildGoogleCloudVisionV1p2beta1ProductKeyValue(),
    ];

void checkUnnamed4289(
    core.List<api.GoogleCloudVisionV1p2beta1ProductKeyValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1ProductKeyValue(o[0]);
  checkGoogleCloudVisionV1p2beta1ProductKeyValue(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1Product = 0;
api.GoogleCloudVisionV1p2beta1Product buildGoogleCloudVisionV1p2beta1Product() {
  final o = api.GoogleCloudVisionV1p2beta1Product();
  buildCounterGoogleCloudVisionV1p2beta1Product++;
  if (buildCounterGoogleCloudVisionV1p2beta1Product < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.productCategory = 'foo';
    o.productLabels = buildUnnamed4289();
  }
  buildCounterGoogleCloudVisionV1p2beta1Product--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1Product(
    api.GoogleCloudVisionV1p2beta1Product o) {
  buildCounterGoogleCloudVisionV1p2beta1Product++;
  if (buildCounterGoogleCloudVisionV1p2beta1Product < 3) {
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
    unittest.expect(
      o.productCategory!,
      unittest.equals('foo'),
    );
    checkUnnamed4289(o.productLabels!);
  }
  buildCounterGoogleCloudVisionV1p2beta1Product--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1ProductKeyValue = 0;
api.GoogleCloudVisionV1p2beta1ProductKeyValue
    buildGoogleCloudVisionV1p2beta1ProductKeyValue() {
  final o = api.GoogleCloudVisionV1p2beta1ProductKeyValue();
  buildCounterGoogleCloudVisionV1p2beta1ProductKeyValue++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductKeyValue < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductKeyValue--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1ProductKeyValue(
    api.GoogleCloudVisionV1p2beta1ProductKeyValue o) {
  buildCounterGoogleCloudVisionV1p2beta1ProductKeyValue++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductKeyValue < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductKeyValue--;
}

core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult>
    buildUnnamed4290() => [
          buildGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult(),
          buildGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult(),
        ];

void checkUnnamed4290(
    core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult(o[0]);
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult>
    buildUnnamed4291() => [
          buildGoogleCloudVisionV1p2beta1ProductSearchResultsResult(),
          buildGoogleCloudVisionV1p2beta1ProductSearchResultsResult(),
        ];

void checkUnnamed4291(
    core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsResult(o[0]);
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsResult(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1ProductSearchResults = 0;
api.GoogleCloudVisionV1p2beta1ProductSearchResults
    buildGoogleCloudVisionV1p2beta1ProductSearchResults() {
  final o = api.GoogleCloudVisionV1p2beta1ProductSearchResults();
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResults++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResults < 3) {
    o.indexTime = 'foo';
    o.productGroupedResults = buildUnnamed4290();
    o.results = buildUnnamed4291();
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResults--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1ProductSearchResults(
    api.GoogleCloudVisionV1p2beta1ProductSearchResults o) {
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResults++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResults < 3) {
    unittest.expect(
      o.indexTime!,
      unittest.equals('foo'),
    );
    checkUnnamed4290(o.productGroupedResults!);
    checkUnnamed4291(o.results!);
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResults--;
}

core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation>
    buildUnnamed4292() => [
          buildGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation(),
          buildGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation(),
        ];

void checkUnnamed4292(
    core.List<
            api.GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult>
    buildUnnamed4293() => [
          buildGoogleCloudVisionV1p2beta1ProductSearchResultsResult(),
          buildGoogleCloudVisionV1p2beta1ProductSearchResultsResult(),
        ];

void checkUnnamed4293(
    core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsResult(o[0]);
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsResult(o[1]);
}

core.int
    buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult = 0;
api.GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult
    buildGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult() {
  final o = api.GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult();
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult <
      3) {
    o.boundingPoly = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.objectAnnotations = buildUnnamed4292();
    o.results = buildUnnamed4293();
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult(
    api.GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult o) {
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult <
      3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingPoly!);
    checkUnnamed4292(o.objectAnnotations!);
    checkUnnamed4293(o.results!);
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult--;
}

core.int
    buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation =
    0;
api.GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation
    buildGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation() {
  final o =
      api.GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation();
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation <
      3) {
    o.languageCode = 'foo';
    o.mid = 'foo';
    o.name = 'foo';
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation(
    api.GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation o) {
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation <
      3) {
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsResult = 0;
api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult
    buildGoogleCloudVisionV1p2beta1ProductSearchResultsResult() {
  final o = api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult();
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsResult++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsResult < 3) {
    o.image = 'foo';
    o.product = buildGoogleCloudVisionV1p2beta1Product();
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsResult--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1ProductSearchResultsResult(
    api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult o) {
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsResult++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsResult < 3) {
    unittest.expect(
      o.image!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVisionV1p2beta1Product(o.product!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsResult--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1Property = 0;
api.GoogleCloudVisionV1p2beta1Property
    buildGoogleCloudVisionV1p2beta1Property() {
  final o = api.GoogleCloudVisionV1p2beta1Property();
  buildCounterGoogleCloudVisionV1p2beta1Property++;
  if (buildCounterGoogleCloudVisionV1p2beta1Property < 3) {
    o.name = 'foo';
    o.uint64Value = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1Property--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1Property(
    api.GoogleCloudVisionV1p2beta1Property o) {
  buildCounterGoogleCloudVisionV1p2beta1Property++;
  if (buildCounterGoogleCloudVisionV1p2beta1Property < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uint64Value!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1Property--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1SafeSearchAnnotation = 0;
api.GoogleCloudVisionV1p2beta1SafeSearchAnnotation
    buildGoogleCloudVisionV1p2beta1SafeSearchAnnotation() {
  final o = api.GoogleCloudVisionV1p2beta1SafeSearchAnnotation();
  buildCounterGoogleCloudVisionV1p2beta1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1SafeSearchAnnotation < 3) {
    o.adult = 'foo';
    o.medical = 'foo';
    o.racy = 'foo';
    o.spoof = 'foo';
    o.violence = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1SafeSearchAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1SafeSearchAnnotation(
    api.GoogleCloudVisionV1p2beta1SafeSearchAnnotation o) {
  buildCounterGoogleCloudVisionV1p2beta1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1SafeSearchAnnotation < 3) {
    unittest.expect(
      o.adult!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.medical!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.racy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spoof!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.violence!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1SafeSearchAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1Symbol = 0;
api.GoogleCloudVisionV1p2beta1Symbol buildGoogleCloudVisionV1p2beta1Symbol() {
  final o = api.GoogleCloudVisionV1p2beta1Symbol();
  buildCounterGoogleCloudVisionV1p2beta1Symbol++;
  if (buildCounterGoogleCloudVisionV1p2beta1Symbol < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p2beta1TextAnnotationTextProperty();
    o.text = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1Symbol--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1Symbol(
    api.GoogleCloudVisionV1p2beta1Symbol o) {
  buildCounterGoogleCloudVisionV1p2beta1Symbol++;
  if (buildCounterGoogleCloudVisionV1p2beta1Symbol < 3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(o.property!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1Symbol--;
}

core.List<api.GoogleCloudVisionV1p2beta1Page> buildUnnamed4294() => [
      buildGoogleCloudVisionV1p2beta1Page(),
      buildGoogleCloudVisionV1p2beta1Page(),
    ];

void checkUnnamed4294(core.List<api.GoogleCloudVisionV1p2beta1Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Page(o[0]);
  checkGoogleCloudVisionV1p2beta1Page(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1TextAnnotation = 0;
api.GoogleCloudVisionV1p2beta1TextAnnotation
    buildGoogleCloudVisionV1p2beta1TextAnnotation() {
  final o = api.GoogleCloudVisionV1p2beta1TextAnnotation();
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotation < 3) {
    o.pages = buildUnnamed4294();
    o.text = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1TextAnnotation(
    api.GoogleCloudVisionV1p2beta1TextAnnotation o) {
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotation < 3) {
    checkUnnamed4294(o.pages!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak = 0;
api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak
    buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak() {
  final o = api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak();
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak < 3) {
    o.isPrefix = true;
    o.type = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak(
    api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak o) {
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak < 3) {
    unittest.expect(o.isPrefix!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage =
    0;
api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage
    buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage() {
  final o = api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage();
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage <
      3) {
    o.confidence = 42.0;
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage(
    api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage o) {
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage--;
}

core.List<api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage>
    buildUnnamed4295() => [
          buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage(),
          buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage(),
        ];

void checkUnnamed4295(
    core.List<api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage(o[0]);
  checkGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty = 0;
api.GoogleCloudVisionV1p2beta1TextAnnotationTextProperty
    buildGoogleCloudVisionV1p2beta1TextAnnotationTextProperty() {
  final o = api.GoogleCloudVisionV1p2beta1TextAnnotationTextProperty();
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty < 3) {
    o.detectedBreak =
        buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak();
    o.detectedLanguages = buildUnnamed4295();
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(
    api.GoogleCloudVisionV1p2beta1TextAnnotationTextProperty o) {
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty < 3) {
    checkGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak(
        o.detectedBreak!);
    checkUnnamed4295(o.detectedLanguages!);
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1Vertex = 0;
api.GoogleCloudVisionV1p2beta1Vertex buildGoogleCloudVisionV1p2beta1Vertex() {
  final o = api.GoogleCloudVisionV1p2beta1Vertex();
  buildCounterGoogleCloudVisionV1p2beta1Vertex++;
  if (buildCounterGoogleCloudVisionV1p2beta1Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudVisionV1p2beta1Vertex--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1Vertex(
    api.GoogleCloudVisionV1p2beta1Vertex o) {
  buildCounterGoogleCloudVisionV1p2beta1Vertex++;
  if (buildCounterGoogleCloudVisionV1p2beta1Vertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1Vertex--;
}

core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebLabel>
    buildUnnamed4296() => [
          buildGoogleCloudVisionV1p2beta1WebDetectionWebLabel(),
          buildGoogleCloudVisionV1p2beta1WebDetectionWebLabel(),
        ];

void checkUnnamed4296(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebLabel(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebLabel(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>
    buildUnnamed4297() => [
          buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
        ];

void checkUnnamed4297(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebPage>
    buildUnnamed4298() => [
          buildGoogleCloudVisionV1p2beta1WebDetectionWebPage(),
          buildGoogleCloudVisionV1p2beta1WebDetectionWebPage(),
        ];

void checkUnnamed4298(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebPage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebPage(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>
    buildUnnamed4299() => [
          buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
        ];

void checkUnnamed4299(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>
    buildUnnamed4300() => [
          buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
        ];

void checkUnnamed4300(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebEntity>
    buildUnnamed4301() => [
          buildGoogleCloudVisionV1p2beta1WebDetectionWebEntity(),
          buildGoogleCloudVisionV1p2beta1WebDetectionWebEntity(),
        ];

void checkUnnamed4301(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebEntity(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebEntity(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1WebDetection = 0;
api.GoogleCloudVisionV1p2beta1WebDetection
    buildGoogleCloudVisionV1p2beta1WebDetection() {
  final o = api.GoogleCloudVisionV1p2beta1WebDetection();
  buildCounterGoogleCloudVisionV1p2beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetection < 3) {
    o.bestGuessLabels = buildUnnamed4296();
    o.fullMatchingImages = buildUnnamed4297();
    o.pagesWithMatchingImages = buildUnnamed4298();
    o.partialMatchingImages = buildUnnamed4299();
    o.visuallySimilarImages = buildUnnamed4300();
    o.webEntities = buildUnnamed4301();
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetection--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1WebDetection(
    api.GoogleCloudVisionV1p2beta1WebDetection o) {
  buildCounterGoogleCloudVisionV1p2beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetection < 3) {
    checkUnnamed4296(o.bestGuessLabels!);
    checkUnnamed4297(o.fullMatchingImages!);
    checkUnnamed4298(o.pagesWithMatchingImages!);
    checkUnnamed4299(o.partialMatchingImages!);
    checkUnnamed4300(o.visuallySimilarImages!);
    checkUnnamed4301(o.webEntities!);
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetection--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebEntity = 0;
api.GoogleCloudVisionV1p2beta1WebDetectionWebEntity
    buildGoogleCloudVisionV1p2beta1WebDetectionWebEntity() {
  final o = api.GoogleCloudVisionV1p2beta1WebDetectionWebEntity();
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebEntity++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebEntity < 3) {
    o.description = 'foo';
    o.entityId = 'foo';
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebEntity--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1WebDetectionWebEntity(
    api.GoogleCloudVisionV1p2beta1WebDetectionWebEntity o) {
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebEntity++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebEntity < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebEntity--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebImage = 0;
api.GoogleCloudVisionV1p2beta1WebDetectionWebImage
    buildGoogleCloudVisionV1p2beta1WebDetectionWebImage() {
  final o = api.GoogleCloudVisionV1p2beta1WebDetectionWebImage();
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebImage++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebImage < 3) {
    o.score = 42.0;
    o.url = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebImage--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(
    api.GoogleCloudVisionV1p2beta1WebDetectionWebImage o) {
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebImage++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebImage < 3) {
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebImage--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebLabel = 0;
api.GoogleCloudVisionV1p2beta1WebDetectionWebLabel
    buildGoogleCloudVisionV1p2beta1WebDetectionWebLabel() {
  final o = api.GoogleCloudVisionV1p2beta1WebDetectionWebLabel();
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebLabel++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebLabel < 3) {
    o.label = 'foo';
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebLabel--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1WebDetectionWebLabel(
    api.GoogleCloudVisionV1p2beta1WebDetectionWebLabel o) {
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebLabel++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebLabel < 3) {
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebLabel--;
}

core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>
    buildUnnamed4302() => [
          buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
        ];

void checkUnnamed4302(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>
    buildUnnamed4303() => [
          buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
        ];

void checkUnnamed4303(
    core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebPage = 0;
api.GoogleCloudVisionV1p2beta1WebDetectionWebPage
    buildGoogleCloudVisionV1p2beta1WebDetectionWebPage() {
  final o = api.GoogleCloudVisionV1p2beta1WebDetectionWebPage();
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebPage++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebPage < 3) {
    o.fullMatchingImages = buildUnnamed4302();
    o.pageTitle = 'foo';
    o.partialMatchingImages = buildUnnamed4303();
    o.score = 42.0;
    o.url = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebPage--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1WebDetectionWebPage(
    api.GoogleCloudVisionV1p2beta1WebDetectionWebPage o) {
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebPage++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebPage < 3) {
    checkUnnamed4302(o.fullMatchingImages!);
    unittest.expect(
      o.pageTitle!,
      unittest.equals('foo'),
    );
    checkUnnamed4303(o.partialMatchingImages!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebPage--;
}

core.List<api.GoogleCloudVisionV1p2beta1Symbol> buildUnnamed4304() => [
      buildGoogleCloudVisionV1p2beta1Symbol(),
      buildGoogleCloudVisionV1p2beta1Symbol(),
    ];

void checkUnnamed4304(core.List<api.GoogleCloudVisionV1p2beta1Symbol> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Symbol(o[0]);
  checkGoogleCloudVisionV1p2beta1Symbol(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1Word = 0;
api.GoogleCloudVisionV1p2beta1Word buildGoogleCloudVisionV1p2beta1Word() {
  final o = api.GoogleCloudVisionV1p2beta1Word();
  buildCounterGoogleCloudVisionV1p2beta1Word++;
  if (buildCounterGoogleCloudVisionV1p2beta1Word < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p2beta1TextAnnotationTextProperty();
    o.symbols = buildUnnamed4304();
  }
  buildCounterGoogleCloudVisionV1p2beta1Word--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1Word(api.GoogleCloudVisionV1p2beta1Word o) {
  buildCounterGoogleCloudVisionV1p2beta1Word++;
  if (buildCounterGoogleCloudVisionV1p2beta1Word < 3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(o.property!);
    checkUnnamed4304(o.symbols!);
  }
  buildCounterGoogleCloudVisionV1p2beta1Word--;
}

core.List<api.GoogleCloudVisionV1p3beta1AnnotateImageResponse>
    buildUnnamed4305() => [
          buildGoogleCloudVisionV1p3beta1AnnotateImageResponse(),
          buildGoogleCloudVisionV1p3beta1AnnotateImageResponse(),
        ];

void checkUnnamed4305(
    core.List<api.GoogleCloudVisionV1p3beta1AnnotateImageResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1AnnotateImageResponse(o[0]);
  checkGoogleCloudVisionV1p3beta1AnnotateImageResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1AnnotateFileResponse = 0;
api.GoogleCloudVisionV1p3beta1AnnotateFileResponse
    buildGoogleCloudVisionV1p3beta1AnnotateFileResponse() {
  final o = api.GoogleCloudVisionV1p3beta1AnnotateFileResponse();
  buildCounterGoogleCloudVisionV1p3beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1AnnotateFileResponse < 3) {
    o.error = buildStatus();
    o.inputConfig = buildGoogleCloudVisionV1p3beta1InputConfig();
    o.responses = buildUnnamed4305();
    o.totalPages = 42;
  }
  buildCounterGoogleCloudVisionV1p3beta1AnnotateFileResponse--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1AnnotateFileResponse(
    api.GoogleCloudVisionV1p3beta1AnnotateFileResponse o) {
  buildCounterGoogleCloudVisionV1p3beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1AnnotateFileResponse < 3) {
    checkStatus(o.error!);
    checkGoogleCloudVisionV1p3beta1InputConfig(o.inputConfig!);
    checkUnnamed4305(o.responses!);
    unittest.expect(
      o.totalPages!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1AnnotateFileResponse--;
}

core.List<api.GoogleCloudVisionV1p3beta1FaceAnnotation> buildUnnamed4306() => [
      buildGoogleCloudVisionV1p3beta1FaceAnnotation(),
      buildGoogleCloudVisionV1p3beta1FaceAnnotation(),
    ];

void checkUnnamed4306(
    core.List<api.GoogleCloudVisionV1p3beta1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1FaceAnnotation(o[0]);
  checkGoogleCloudVisionV1p3beta1FaceAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation> buildUnnamed4307() =>
    [
      buildGoogleCloudVisionV1p3beta1EntityAnnotation(),
      buildGoogleCloudVisionV1p3beta1EntityAnnotation(),
    ];

void checkUnnamed4307(
    core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation> buildUnnamed4308() =>
    [
      buildGoogleCloudVisionV1p3beta1EntityAnnotation(),
      buildGoogleCloudVisionV1p3beta1EntityAnnotation(),
    ];

void checkUnnamed4308(
    core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation>
    buildUnnamed4309() => [
          buildGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation(),
          buildGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation(),
        ];

void checkUnnamed4309(
    core.List<api.GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation(o[0]);
  checkGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation> buildUnnamed4310() =>
    [
      buildGoogleCloudVisionV1p3beta1EntityAnnotation(),
      buildGoogleCloudVisionV1p3beta1EntityAnnotation(),
    ];

void checkUnnamed4310(
    core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation> buildUnnamed4311() =>
    [
      buildGoogleCloudVisionV1p3beta1EntityAnnotation(),
      buildGoogleCloudVisionV1p3beta1EntityAnnotation(),
    ];

void checkUnnamed4311(
    core.List<api.GoogleCloudVisionV1p3beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p3beta1EntityAnnotation(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1AnnotateImageResponse = 0;
api.GoogleCloudVisionV1p3beta1AnnotateImageResponse
    buildGoogleCloudVisionV1p3beta1AnnotateImageResponse() {
  final o = api.GoogleCloudVisionV1p3beta1AnnotateImageResponse();
  buildCounterGoogleCloudVisionV1p3beta1AnnotateImageResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1AnnotateImageResponse < 3) {
    o.context = buildGoogleCloudVisionV1p3beta1ImageAnnotationContext();
    o.cropHintsAnnotation =
        buildGoogleCloudVisionV1p3beta1CropHintsAnnotation();
    o.error = buildStatus();
    o.faceAnnotations = buildUnnamed4306();
    o.fullTextAnnotation = buildGoogleCloudVisionV1p3beta1TextAnnotation();
    o.imagePropertiesAnnotation =
        buildGoogleCloudVisionV1p3beta1ImageProperties();
    o.labelAnnotations = buildUnnamed4307();
    o.landmarkAnnotations = buildUnnamed4308();
    o.localizedObjectAnnotations = buildUnnamed4309();
    o.logoAnnotations = buildUnnamed4310();
    o.productSearchResults =
        buildGoogleCloudVisionV1p3beta1ProductSearchResults();
    o.safeSearchAnnotation =
        buildGoogleCloudVisionV1p3beta1SafeSearchAnnotation();
    o.textAnnotations = buildUnnamed4311();
    o.webDetection = buildGoogleCloudVisionV1p3beta1WebDetection();
  }
  buildCounterGoogleCloudVisionV1p3beta1AnnotateImageResponse--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1AnnotateImageResponse(
    api.GoogleCloudVisionV1p3beta1AnnotateImageResponse o) {
  buildCounterGoogleCloudVisionV1p3beta1AnnotateImageResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1AnnotateImageResponse < 3) {
    checkGoogleCloudVisionV1p3beta1ImageAnnotationContext(o.context!);
    checkGoogleCloudVisionV1p3beta1CropHintsAnnotation(o.cropHintsAnnotation!);
    checkStatus(o.error!);
    checkUnnamed4306(o.faceAnnotations!);
    checkGoogleCloudVisionV1p3beta1TextAnnotation(o.fullTextAnnotation!);
    checkGoogleCloudVisionV1p3beta1ImageProperties(
        o.imagePropertiesAnnotation!);
    checkUnnamed4307(o.labelAnnotations!);
    checkUnnamed4308(o.landmarkAnnotations!);
    checkUnnamed4309(o.localizedObjectAnnotations!);
    checkUnnamed4310(o.logoAnnotations!);
    checkGoogleCloudVisionV1p3beta1ProductSearchResults(
        o.productSearchResults!);
    checkGoogleCloudVisionV1p3beta1SafeSearchAnnotation(
        o.safeSearchAnnotation!);
    checkUnnamed4311(o.textAnnotations!);
    checkGoogleCloudVisionV1p3beta1WebDetection(o.webDetection!);
  }
  buildCounterGoogleCloudVisionV1p3beta1AnnotateImageResponse--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse = 0;
api.GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse
    buildGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse() {
  final o = api.GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse();
  buildCounterGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse < 3) {
    o.outputConfig = buildGoogleCloudVisionV1p3beta1OutputConfig();
  }
  buildCounterGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse(
    api.GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse o) {
  buildCounterGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse < 3) {
    checkGoogleCloudVisionV1p3beta1OutputConfig(o.outputConfig!);
  }
  buildCounterGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse--;
}

core.List<api.GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse>
    buildUnnamed4312() => [
          buildGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse(),
          buildGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse(),
        ];

void checkUnnamed4312(
    core.List<api.GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse(o[0]);
  checkGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse =
    0;
api.GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse
    buildGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse() {
  final o = api.GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse();
  buildCounterGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse <
      3) {
    o.responses = buildUnnamed4312();
  }
  buildCounterGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse(
    api.GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse o) {
  buildCounterGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse <
      3) {
    checkUnnamed4312(o.responses!);
  }
  buildCounterGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1BatchOperationMetadata = 0;
api.GoogleCloudVisionV1p3beta1BatchOperationMetadata
    buildGoogleCloudVisionV1p3beta1BatchOperationMetadata() {
  final o = api.GoogleCloudVisionV1p3beta1BatchOperationMetadata();
  buildCounterGoogleCloudVisionV1p3beta1BatchOperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p3beta1BatchOperationMetadata < 3) {
    o.endTime = 'foo';
    o.state = 'foo';
    o.submitTime = 'foo';
  }
  buildCounterGoogleCloudVisionV1p3beta1BatchOperationMetadata--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1BatchOperationMetadata(
    api.GoogleCloudVisionV1p3beta1BatchOperationMetadata o) {
  buildCounterGoogleCloudVisionV1p3beta1BatchOperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p3beta1BatchOperationMetadata < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.submitTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1BatchOperationMetadata--;
}

core.List<api.GoogleCloudVisionV1p3beta1Paragraph> buildUnnamed4313() => [
      buildGoogleCloudVisionV1p3beta1Paragraph(),
      buildGoogleCloudVisionV1p3beta1Paragraph(),
    ];

void checkUnnamed4313(core.List<api.GoogleCloudVisionV1p3beta1Paragraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1Paragraph(o[0]);
  checkGoogleCloudVisionV1p3beta1Paragraph(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1Block = 0;
api.GoogleCloudVisionV1p3beta1Block buildGoogleCloudVisionV1p3beta1Block() {
  final o = api.GoogleCloudVisionV1p3beta1Block();
  buildCounterGoogleCloudVisionV1p3beta1Block++;
  if (buildCounterGoogleCloudVisionV1p3beta1Block < 3) {
    o.blockType = 'foo';
    o.boundingBox = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.confidence = 42.0;
    o.paragraphs = buildUnnamed4313();
    o.property = buildGoogleCloudVisionV1p3beta1TextAnnotationTextProperty();
  }
  buildCounterGoogleCloudVisionV1p3beta1Block--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1Block(
    api.GoogleCloudVisionV1p3beta1Block o) {
  buildCounterGoogleCloudVisionV1p3beta1Block++;
  if (buildCounterGoogleCloudVisionV1p3beta1Block < 3) {
    unittest.expect(
      o.blockType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkUnnamed4313(o.paragraphs!);
    checkGoogleCloudVisionV1p3beta1TextAnnotationTextProperty(o.property!);
  }
  buildCounterGoogleCloudVisionV1p3beta1Block--;
}

core.List<api.GoogleCloudVisionV1p3beta1NormalizedVertex> buildUnnamed4314() =>
    [
      buildGoogleCloudVisionV1p3beta1NormalizedVertex(),
      buildGoogleCloudVisionV1p3beta1NormalizedVertex(),
    ];

void checkUnnamed4314(
    core.List<api.GoogleCloudVisionV1p3beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1NormalizedVertex(o[0]);
  checkGoogleCloudVisionV1p3beta1NormalizedVertex(o[1]);
}

core.List<api.GoogleCloudVisionV1p3beta1Vertex> buildUnnamed4315() => [
      buildGoogleCloudVisionV1p3beta1Vertex(),
      buildGoogleCloudVisionV1p3beta1Vertex(),
    ];

void checkUnnamed4315(core.List<api.GoogleCloudVisionV1p3beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1Vertex(o[0]);
  checkGoogleCloudVisionV1p3beta1Vertex(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1BoundingPoly = 0;
api.GoogleCloudVisionV1p3beta1BoundingPoly
    buildGoogleCloudVisionV1p3beta1BoundingPoly() {
  final o = api.GoogleCloudVisionV1p3beta1BoundingPoly();
  buildCounterGoogleCloudVisionV1p3beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p3beta1BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed4314();
    o.vertices = buildUnnamed4315();
  }
  buildCounterGoogleCloudVisionV1p3beta1BoundingPoly--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1BoundingPoly(
    api.GoogleCloudVisionV1p3beta1BoundingPoly o) {
  buildCounterGoogleCloudVisionV1p3beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p3beta1BoundingPoly < 3) {
    checkUnnamed4314(o.normalizedVertices!);
    checkUnnamed4315(o.vertices!);
  }
  buildCounterGoogleCloudVisionV1p3beta1BoundingPoly--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1ColorInfo = 0;
api.GoogleCloudVisionV1p3beta1ColorInfo
    buildGoogleCloudVisionV1p3beta1ColorInfo() {
  final o = api.GoogleCloudVisionV1p3beta1ColorInfo();
  buildCounterGoogleCloudVisionV1p3beta1ColorInfo++;
  if (buildCounterGoogleCloudVisionV1p3beta1ColorInfo < 3) {
    o.color = buildColor();
    o.pixelFraction = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p3beta1ColorInfo--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1ColorInfo(
    api.GoogleCloudVisionV1p3beta1ColorInfo o) {
  buildCounterGoogleCloudVisionV1p3beta1ColorInfo++;
  if (buildCounterGoogleCloudVisionV1p3beta1ColorInfo < 3) {
    checkColor(o.color!);
    unittest.expect(
      o.pixelFraction!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1ColorInfo--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1CropHint = 0;
api.GoogleCloudVisionV1p3beta1CropHint
    buildGoogleCloudVisionV1p3beta1CropHint() {
  final o = api.GoogleCloudVisionV1p3beta1CropHint();
  buildCounterGoogleCloudVisionV1p3beta1CropHint++;
  if (buildCounterGoogleCloudVisionV1p3beta1CropHint < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.confidence = 42.0;
    o.importanceFraction = 42.0;
  }
  buildCounterGoogleCloudVisionV1p3beta1CropHint--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1CropHint(
    api.GoogleCloudVisionV1p3beta1CropHint o) {
  buildCounterGoogleCloudVisionV1p3beta1CropHint++;
  if (buildCounterGoogleCloudVisionV1p3beta1CropHint < 3) {
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.importanceFraction!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1CropHint--;
}

core.List<api.GoogleCloudVisionV1p3beta1CropHint> buildUnnamed4316() => [
      buildGoogleCloudVisionV1p3beta1CropHint(),
      buildGoogleCloudVisionV1p3beta1CropHint(),
    ];

void checkUnnamed4316(core.List<api.GoogleCloudVisionV1p3beta1CropHint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1CropHint(o[0]);
  checkGoogleCloudVisionV1p3beta1CropHint(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation = 0;
api.GoogleCloudVisionV1p3beta1CropHintsAnnotation
    buildGoogleCloudVisionV1p3beta1CropHintsAnnotation() {
  final o = api.GoogleCloudVisionV1p3beta1CropHintsAnnotation();
  buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation < 3) {
    o.cropHints = buildUnnamed4316();
  }
  buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1CropHintsAnnotation(
    api.GoogleCloudVisionV1p3beta1CropHintsAnnotation o) {
  buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation < 3) {
    checkUnnamed4316(o.cropHints!);
  }
  buildCounterGoogleCloudVisionV1p3beta1CropHintsAnnotation--;
}

core.List<api.GoogleCloudVisionV1p3beta1ColorInfo> buildUnnamed4317() => [
      buildGoogleCloudVisionV1p3beta1ColorInfo(),
      buildGoogleCloudVisionV1p3beta1ColorInfo(),
    ];

void checkUnnamed4317(core.List<api.GoogleCloudVisionV1p3beta1ColorInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1ColorInfo(o[0]);
  checkGoogleCloudVisionV1p3beta1ColorInfo(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation = 0;
api.GoogleCloudVisionV1p3beta1DominantColorsAnnotation
    buildGoogleCloudVisionV1p3beta1DominantColorsAnnotation() {
  final o = api.GoogleCloudVisionV1p3beta1DominantColorsAnnotation();
  buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation < 3) {
    o.colors = buildUnnamed4317();
  }
  buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1DominantColorsAnnotation(
    api.GoogleCloudVisionV1p3beta1DominantColorsAnnotation o) {
  buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation < 3) {
    checkUnnamed4317(o.colors!);
  }
  buildCounterGoogleCloudVisionV1p3beta1DominantColorsAnnotation--;
}

core.List<api.GoogleCloudVisionV1p3beta1LocationInfo> buildUnnamed4318() => [
      buildGoogleCloudVisionV1p3beta1LocationInfo(),
      buildGoogleCloudVisionV1p3beta1LocationInfo(),
    ];

void checkUnnamed4318(core.List<api.GoogleCloudVisionV1p3beta1LocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1LocationInfo(o[0]);
  checkGoogleCloudVisionV1p3beta1LocationInfo(o[1]);
}

core.List<api.GoogleCloudVisionV1p3beta1Property> buildUnnamed4319() => [
      buildGoogleCloudVisionV1p3beta1Property(),
      buildGoogleCloudVisionV1p3beta1Property(),
    ];

void checkUnnamed4319(core.List<api.GoogleCloudVisionV1p3beta1Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1Property(o[0]);
  checkGoogleCloudVisionV1p3beta1Property(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1EntityAnnotation = 0;
api.GoogleCloudVisionV1p3beta1EntityAnnotation
    buildGoogleCloudVisionV1p3beta1EntityAnnotation() {
  final o = api.GoogleCloudVisionV1p3beta1EntityAnnotation();
  buildCounterGoogleCloudVisionV1p3beta1EntityAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1EntityAnnotation < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.confidence = 42.0;
    o.description = 'foo';
    o.locale = 'foo';
    o.locations = buildUnnamed4318();
    o.mid = 'foo';
    o.properties = buildUnnamed4319();
    o.score = 42.0;
    o.topicality = 42.0;
  }
  buildCounterGoogleCloudVisionV1p3beta1EntityAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1EntityAnnotation(
    api.GoogleCloudVisionV1p3beta1EntityAnnotation o) {
  buildCounterGoogleCloudVisionV1p3beta1EntityAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1EntityAnnotation < 3) {
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locale!,
      unittest.equals('foo'),
    );
    checkUnnamed4318(o.locations!);
    unittest.expect(
      o.mid!,
      unittest.equals('foo'),
    );
    checkUnnamed4319(o.properties!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.topicality!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1EntityAnnotation--;
}

core.List<api.GoogleCloudVisionV1p3beta1FaceAnnotationLandmark>
    buildUnnamed4320() => [
          buildGoogleCloudVisionV1p3beta1FaceAnnotationLandmark(),
          buildGoogleCloudVisionV1p3beta1FaceAnnotationLandmark(),
        ];

void checkUnnamed4320(
    core.List<api.GoogleCloudVisionV1p3beta1FaceAnnotationLandmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1FaceAnnotationLandmark(o[0]);
  checkGoogleCloudVisionV1p3beta1FaceAnnotationLandmark(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1FaceAnnotation = 0;
api.GoogleCloudVisionV1p3beta1FaceAnnotation
    buildGoogleCloudVisionV1p3beta1FaceAnnotation() {
  final o = api.GoogleCloudVisionV1p3beta1FaceAnnotation();
  buildCounterGoogleCloudVisionV1p3beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1FaceAnnotation < 3) {
    o.angerLikelihood = 'foo';
    o.blurredLikelihood = 'foo';
    o.boundingPoly = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.detectionConfidence = 42.0;
    o.fdBoundingPoly = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.headwearLikelihood = 'foo';
    o.joyLikelihood = 'foo';
    o.landmarkingConfidence = 42.0;
    o.landmarks = buildUnnamed4320();
    o.panAngle = 42.0;
    o.rollAngle = 42.0;
    o.sorrowLikelihood = 'foo';
    o.surpriseLikelihood = 'foo';
    o.tiltAngle = 42.0;
    o.underExposedLikelihood = 'foo';
  }
  buildCounterGoogleCloudVisionV1p3beta1FaceAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1FaceAnnotation(
    api.GoogleCloudVisionV1p3beta1FaceAnnotation o) {
  buildCounterGoogleCloudVisionV1p3beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1FaceAnnotation < 3) {
    unittest.expect(
      o.angerLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.blurredLikelihood!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.detectionConfidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.fdBoundingPoly!);
    unittest.expect(
      o.headwearLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.joyLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.landmarkingConfidence!,
      unittest.equals(42.0),
    );
    checkUnnamed4320(o.landmarks!);
    unittest.expect(
      o.panAngle!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.rollAngle!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.sorrowLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.surpriseLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tiltAngle!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.underExposedLikelihood!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1FaceAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1FaceAnnotationLandmark = 0;
api.GoogleCloudVisionV1p3beta1FaceAnnotationLandmark
    buildGoogleCloudVisionV1p3beta1FaceAnnotationLandmark() {
  final o = api.GoogleCloudVisionV1p3beta1FaceAnnotationLandmark();
  buildCounterGoogleCloudVisionV1p3beta1FaceAnnotationLandmark++;
  if (buildCounterGoogleCloudVisionV1p3beta1FaceAnnotationLandmark < 3) {
    o.position = buildGoogleCloudVisionV1p3beta1Position();
    o.type = 'foo';
  }
  buildCounterGoogleCloudVisionV1p3beta1FaceAnnotationLandmark--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1FaceAnnotationLandmark(
    api.GoogleCloudVisionV1p3beta1FaceAnnotationLandmark o) {
  buildCounterGoogleCloudVisionV1p3beta1FaceAnnotationLandmark++;
  if (buildCounterGoogleCloudVisionV1p3beta1FaceAnnotationLandmark < 3) {
    checkGoogleCloudVisionV1p3beta1Position(o.position!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1FaceAnnotationLandmark--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1GcsDestination = 0;
api.GoogleCloudVisionV1p3beta1GcsDestination
    buildGoogleCloudVisionV1p3beta1GcsDestination() {
  final o = api.GoogleCloudVisionV1p3beta1GcsDestination();
  buildCounterGoogleCloudVisionV1p3beta1GcsDestination++;
  if (buildCounterGoogleCloudVisionV1p3beta1GcsDestination < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudVisionV1p3beta1GcsDestination--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1GcsDestination(
    api.GoogleCloudVisionV1p3beta1GcsDestination o) {
  buildCounterGoogleCloudVisionV1p3beta1GcsDestination++;
  if (buildCounterGoogleCloudVisionV1p3beta1GcsDestination < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1GcsDestination--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1GcsSource = 0;
api.GoogleCloudVisionV1p3beta1GcsSource
    buildGoogleCloudVisionV1p3beta1GcsSource() {
  final o = api.GoogleCloudVisionV1p3beta1GcsSource();
  buildCounterGoogleCloudVisionV1p3beta1GcsSource++;
  if (buildCounterGoogleCloudVisionV1p3beta1GcsSource < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudVisionV1p3beta1GcsSource--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1GcsSource(
    api.GoogleCloudVisionV1p3beta1GcsSource o) {
  buildCounterGoogleCloudVisionV1p3beta1GcsSource++;
  if (buildCounterGoogleCloudVisionV1p3beta1GcsSource < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1GcsSource--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1ImageAnnotationContext = 0;
api.GoogleCloudVisionV1p3beta1ImageAnnotationContext
    buildGoogleCloudVisionV1p3beta1ImageAnnotationContext() {
  final o = api.GoogleCloudVisionV1p3beta1ImageAnnotationContext();
  buildCounterGoogleCloudVisionV1p3beta1ImageAnnotationContext++;
  if (buildCounterGoogleCloudVisionV1p3beta1ImageAnnotationContext < 3) {
    o.pageNumber = 42;
    o.uri = 'foo';
  }
  buildCounterGoogleCloudVisionV1p3beta1ImageAnnotationContext--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1ImageAnnotationContext(
    api.GoogleCloudVisionV1p3beta1ImageAnnotationContext o) {
  buildCounterGoogleCloudVisionV1p3beta1ImageAnnotationContext++;
  if (buildCounterGoogleCloudVisionV1p3beta1ImageAnnotationContext < 3) {
    unittest.expect(
      o.pageNumber!,
      unittest.equals(42),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1ImageAnnotationContext--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1ImageProperties = 0;
api.GoogleCloudVisionV1p3beta1ImageProperties
    buildGoogleCloudVisionV1p3beta1ImageProperties() {
  final o = api.GoogleCloudVisionV1p3beta1ImageProperties();
  buildCounterGoogleCloudVisionV1p3beta1ImageProperties++;
  if (buildCounterGoogleCloudVisionV1p3beta1ImageProperties < 3) {
    o.dominantColors =
        buildGoogleCloudVisionV1p3beta1DominantColorsAnnotation();
  }
  buildCounterGoogleCloudVisionV1p3beta1ImageProperties--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1ImageProperties(
    api.GoogleCloudVisionV1p3beta1ImageProperties o) {
  buildCounterGoogleCloudVisionV1p3beta1ImageProperties++;
  if (buildCounterGoogleCloudVisionV1p3beta1ImageProperties < 3) {
    checkGoogleCloudVisionV1p3beta1DominantColorsAnnotation(o.dominantColors!);
  }
  buildCounterGoogleCloudVisionV1p3beta1ImageProperties--;
}

core.List<api.GoogleCloudVisionV1p3beta1ReferenceImage> buildUnnamed4321() => [
      buildGoogleCloudVisionV1p3beta1ReferenceImage(),
      buildGoogleCloudVisionV1p3beta1ReferenceImage(),
    ];

void checkUnnamed4321(
    core.List<api.GoogleCloudVisionV1p3beta1ReferenceImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1ReferenceImage(o[0]);
  checkGoogleCloudVisionV1p3beta1ReferenceImage(o[1]);
}

core.List<api.Status> buildUnnamed4322() => [
      buildStatus(),
      buildStatus(),
    ];

void checkUnnamed4322(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse = 0;
api.GoogleCloudVisionV1p3beta1ImportProductSetsResponse
    buildGoogleCloudVisionV1p3beta1ImportProductSetsResponse() {
  final o = api.GoogleCloudVisionV1p3beta1ImportProductSetsResponse();
  buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse < 3) {
    o.referenceImages = buildUnnamed4321();
    o.statuses = buildUnnamed4322();
  }
  buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1ImportProductSetsResponse(
    api.GoogleCloudVisionV1p3beta1ImportProductSetsResponse o) {
  buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse++;
  if (buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse < 3) {
    checkUnnamed4321(o.referenceImages!);
    checkUnnamed4322(o.statuses!);
  }
  buildCounterGoogleCloudVisionV1p3beta1ImportProductSetsResponse--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1InputConfig = 0;
api.GoogleCloudVisionV1p3beta1InputConfig
    buildGoogleCloudVisionV1p3beta1InputConfig() {
  final o = api.GoogleCloudVisionV1p3beta1InputConfig();
  buildCounterGoogleCloudVisionV1p3beta1InputConfig++;
  if (buildCounterGoogleCloudVisionV1p3beta1InputConfig < 3) {
    o.content = 'foo';
    o.gcsSource = buildGoogleCloudVisionV1p3beta1GcsSource();
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudVisionV1p3beta1InputConfig--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1InputConfig(
    api.GoogleCloudVisionV1p3beta1InputConfig o) {
  buildCounterGoogleCloudVisionV1p3beta1InputConfig++;
  if (buildCounterGoogleCloudVisionV1p3beta1InputConfig < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVisionV1p3beta1GcsSource(o.gcsSource!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1InputConfig--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation = 0;
api.GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation
    buildGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation() {
  final o = api.GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation();
  buildCounterGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.languageCode = 'foo';
    o.mid = 'foo';
    o.name = 'foo';
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation(
    api.GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation o) {
  buildCounterGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation < 3) {
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1LocationInfo = 0;
api.GoogleCloudVisionV1p3beta1LocationInfo
    buildGoogleCloudVisionV1p3beta1LocationInfo() {
  final o = api.GoogleCloudVisionV1p3beta1LocationInfo();
  buildCounterGoogleCloudVisionV1p3beta1LocationInfo++;
  if (buildCounterGoogleCloudVisionV1p3beta1LocationInfo < 3) {
    o.latLng = buildLatLng();
  }
  buildCounterGoogleCloudVisionV1p3beta1LocationInfo--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1LocationInfo(
    api.GoogleCloudVisionV1p3beta1LocationInfo o) {
  buildCounterGoogleCloudVisionV1p3beta1LocationInfo++;
  if (buildCounterGoogleCloudVisionV1p3beta1LocationInfo < 3) {
    checkLatLng(o.latLng!);
  }
  buildCounterGoogleCloudVisionV1p3beta1LocationInfo--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1NormalizedVertex = 0;
api.GoogleCloudVisionV1p3beta1NormalizedVertex
    buildGoogleCloudVisionV1p3beta1NormalizedVertex() {
  final o = api.GoogleCloudVisionV1p3beta1NormalizedVertex();
  buildCounterGoogleCloudVisionV1p3beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVisionV1p3beta1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudVisionV1p3beta1NormalizedVertex--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1NormalizedVertex(
    api.GoogleCloudVisionV1p3beta1NormalizedVertex o) {
  buildCounterGoogleCloudVisionV1p3beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVisionV1p3beta1NormalizedVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1NormalizedVertex--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1OperationMetadata = 0;
api.GoogleCloudVisionV1p3beta1OperationMetadata
    buildGoogleCloudVisionV1p3beta1OperationMetadata() {
  final o = api.GoogleCloudVisionV1p3beta1OperationMetadata();
  buildCounterGoogleCloudVisionV1p3beta1OperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p3beta1OperationMetadata < 3) {
    o.createTime = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudVisionV1p3beta1OperationMetadata--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1OperationMetadata(
    api.GoogleCloudVisionV1p3beta1OperationMetadata o) {
  buildCounterGoogleCloudVisionV1p3beta1OperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p3beta1OperationMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1OperationMetadata--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1OutputConfig = 0;
api.GoogleCloudVisionV1p3beta1OutputConfig
    buildGoogleCloudVisionV1p3beta1OutputConfig() {
  final o = api.GoogleCloudVisionV1p3beta1OutputConfig();
  buildCounterGoogleCloudVisionV1p3beta1OutputConfig++;
  if (buildCounterGoogleCloudVisionV1p3beta1OutputConfig < 3) {
    o.batchSize = 42;
    o.gcsDestination = buildGoogleCloudVisionV1p3beta1GcsDestination();
  }
  buildCounterGoogleCloudVisionV1p3beta1OutputConfig--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1OutputConfig(
    api.GoogleCloudVisionV1p3beta1OutputConfig o) {
  buildCounterGoogleCloudVisionV1p3beta1OutputConfig++;
  if (buildCounterGoogleCloudVisionV1p3beta1OutputConfig < 3) {
    unittest.expect(
      o.batchSize!,
      unittest.equals(42),
    );
    checkGoogleCloudVisionV1p3beta1GcsDestination(o.gcsDestination!);
  }
  buildCounterGoogleCloudVisionV1p3beta1OutputConfig--;
}

core.List<api.GoogleCloudVisionV1p3beta1Block> buildUnnamed4323() => [
      buildGoogleCloudVisionV1p3beta1Block(),
      buildGoogleCloudVisionV1p3beta1Block(),
    ];

void checkUnnamed4323(core.List<api.GoogleCloudVisionV1p3beta1Block> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1Block(o[0]);
  checkGoogleCloudVisionV1p3beta1Block(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1Page = 0;
api.GoogleCloudVisionV1p3beta1Page buildGoogleCloudVisionV1p3beta1Page() {
  final o = api.GoogleCloudVisionV1p3beta1Page();
  buildCounterGoogleCloudVisionV1p3beta1Page++;
  if (buildCounterGoogleCloudVisionV1p3beta1Page < 3) {
    o.blocks = buildUnnamed4323();
    o.confidence = 42.0;
    o.height = 42;
    o.property = buildGoogleCloudVisionV1p3beta1TextAnnotationTextProperty();
    o.width = 42;
  }
  buildCounterGoogleCloudVisionV1p3beta1Page--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1Page(api.GoogleCloudVisionV1p3beta1Page o) {
  buildCounterGoogleCloudVisionV1p3beta1Page++;
  if (buildCounterGoogleCloudVisionV1p3beta1Page < 3) {
    checkUnnamed4323(o.blocks!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    checkGoogleCloudVisionV1p3beta1TextAnnotationTextProperty(o.property!);
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1Page--;
}

core.List<api.GoogleCloudVisionV1p3beta1Word> buildUnnamed4324() => [
      buildGoogleCloudVisionV1p3beta1Word(),
      buildGoogleCloudVisionV1p3beta1Word(),
    ];

void checkUnnamed4324(core.List<api.GoogleCloudVisionV1p3beta1Word> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1Word(o[0]);
  checkGoogleCloudVisionV1p3beta1Word(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1Paragraph = 0;
api.GoogleCloudVisionV1p3beta1Paragraph
    buildGoogleCloudVisionV1p3beta1Paragraph() {
  final o = api.GoogleCloudVisionV1p3beta1Paragraph();
  buildCounterGoogleCloudVisionV1p3beta1Paragraph++;
  if (buildCounterGoogleCloudVisionV1p3beta1Paragraph < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p3beta1TextAnnotationTextProperty();
    o.words = buildUnnamed4324();
  }
  buildCounterGoogleCloudVisionV1p3beta1Paragraph--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1Paragraph(
    api.GoogleCloudVisionV1p3beta1Paragraph o) {
  buildCounterGoogleCloudVisionV1p3beta1Paragraph++;
  if (buildCounterGoogleCloudVisionV1p3beta1Paragraph < 3) {
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVisionV1p3beta1TextAnnotationTextProperty(o.property!);
    checkUnnamed4324(o.words!);
  }
  buildCounterGoogleCloudVisionV1p3beta1Paragraph--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1Position = 0;
api.GoogleCloudVisionV1p3beta1Position
    buildGoogleCloudVisionV1p3beta1Position() {
  final o = api.GoogleCloudVisionV1p3beta1Position();
  buildCounterGoogleCloudVisionV1p3beta1Position++;
  if (buildCounterGoogleCloudVisionV1p3beta1Position < 3) {
    o.x = 42.0;
    o.y = 42.0;
    o.z = 42.0;
  }
  buildCounterGoogleCloudVisionV1p3beta1Position--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1Position(
    api.GoogleCloudVisionV1p3beta1Position o) {
  buildCounterGoogleCloudVisionV1p3beta1Position++;
  if (buildCounterGoogleCloudVisionV1p3beta1Position < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.z!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1Position--;
}

core.List<api.GoogleCloudVisionV1p3beta1ProductKeyValue> buildUnnamed4325() => [
      buildGoogleCloudVisionV1p3beta1ProductKeyValue(),
      buildGoogleCloudVisionV1p3beta1ProductKeyValue(),
    ];

void checkUnnamed4325(
    core.List<api.GoogleCloudVisionV1p3beta1ProductKeyValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1ProductKeyValue(o[0]);
  checkGoogleCloudVisionV1p3beta1ProductKeyValue(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1Product = 0;
api.GoogleCloudVisionV1p3beta1Product buildGoogleCloudVisionV1p3beta1Product() {
  final o = api.GoogleCloudVisionV1p3beta1Product();
  buildCounterGoogleCloudVisionV1p3beta1Product++;
  if (buildCounterGoogleCloudVisionV1p3beta1Product < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.productCategory = 'foo';
    o.productLabels = buildUnnamed4325();
  }
  buildCounterGoogleCloudVisionV1p3beta1Product--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1Product(
    api.GoogleCloudVisionV1p3beta1Product o) {
  buildCounterGoogleCloudVisionV1p3beta1Product++;
  if (buildCounterGoogleCloudVisionV1p3beta1Product < 3) {
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
    unittest.expect(
      o.productCategory!,
      unittest.equals('foo'),
    );
    checkUnnamed4325(o.productLabels!);
  }
  buildCounterGoogleCloudVisionV1p3beta1Product--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1ProductKeyValue = 0;
api.GoogleCloudVisionV1p3beta1ProductKeyValue
    buildGoogleCloudVisionV1p3beta1ProductKeyValue() {
  final o = api.GoogleCloudVisionV1p3beta1ProductKeyValue();
  buildCounterGoogleCloudVisionV1p3beta1ProductKeyValue++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductKeyValue < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductKeyValue--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1ProductKeyValue(
    api.GoogleCloudVisionV1p3beta1ProductKeyValue o) {
  buildCounterGoogleCloudVisionV1p3beta1ProductKeyValue++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductKeyValue < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductKeyValue--;
}

core.List<api.GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult>
    buildUnnamed4326() => [
          buildGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult(),
          buildGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult(),
        ];

void checkUnnamed4326(
    core.List<api.GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult(o[0]);
  checkGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult(o[1]);
}

core.List<api.GoogleCloudVisionV1p3beta1ProductSearchResultsResult>
    buildUnnamed4327() => [
          buildGoogleCloudVisionV1p3beta1ProductSearchResultsResult(),
          buildGoogleCloudVisionV1p3beta1ProductSearchResultsResult(),
        ];

void checkUnnamed4327(
    core.List<api.GoogleCloudVisionV1p3beta1ProductSearchResultsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1ProductSearchResultsResult(o[0]);
  checkGoogleCloudVisionV1p3beta1ProductSearchResultsResult(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1ProductSearchResults = 0;
api.GoogleCloudVisionV1p3beta1ProductSearchResults
    buildGoogleCloudVisionV1p3beta1ProductSearchResults() {
  final o = api.GoogleCloudVisionV1p3beta1ProductSearchResults();
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResults++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductSearchResults < 3) {
    o.indexTime = 'foo';
    o.productGroupedResults = buildUnnamed4326();
    o.results = buildUnnamed4327();
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResults--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1ProductSearchResults(
    api.GoogleCloudVisionV1p3beta1ProductSearchResults o) {
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResults++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductSearchResults < 3) {
    unittest.expect(
      o.indexTime!,
      unittest.equals('foo'),
    );
    checkUnnamed4326(o.productGroupedResults!);
    checkUnnamed4327(o.results!);
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResults--;
}

core.List<api.GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation>
    buildUnnamed4328() => [
          buildGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation(),
          buildGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation(),
        ];

void checkUnnamed4328(
    core.List<
            api.GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation(o[0]);
  checkGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p3beta1ProductSearchResultsResult>
    buildUnnamed4329() => [
          buildGoogleCloudVisionV1p3beta1ProductSearchResultsResult(),
          buildGoogleCloudVisionV1p3beta1ProductSearchResultsResult(),
        ];

void checkUnnamed4329(
    core.List<api.GoogleCloudVisionV1p3beta1ProductSearchResultsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1ProductSearchResultsResult(o[0]);
  checkGoogleCloudVisionV1p3beta1ProductSearchResultsResult(o[1]);
}

core.int
    buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult = 0;
api.GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult
    buildGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult() {
  final o = api.GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult();
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult <
      3) {
    o.boundingPoly = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.objectAnnotations = buildUnnamed4328();
    o.results = buildUnnamed4329();
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult(
    api.GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult o) {
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult <
      3) {
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.boundingPoly!);
    checkUnnamed4328(o.objectAnnotations!);
    checkUnnamed4329(o.results!);
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult--;
}

core.int
    buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation =
    0;
api.GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation
    buildGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation() {
  final o =
      api.GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation();
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation <
      3) {
    o.languageCode = 'foo';
    o.mid = 'foo';
    o.name = 'foo';
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation(
    api.GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation o) {
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation <
      3) {
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsResult = 0;
api.GoogleCloudVisionV1p3beta1ProductSearchResultsResult
    buildGoogleCloudVisionV1p3beta1ProductSearchResultsResult() {
  final o = api.GoogleCloudVisionV1p3beta1ProductSearchResultsResult();
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsResult++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsResult < 3) {
    o.image = 'foo';
    o.product = buildGoogleCloudVisionV1p3beta1Product();
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsResult--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1ProductSearchResultsResult(
    api.GoogleCloudVisionV1p3beta1ProductSearchResultsResult o) {
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsResult++;
  if (buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsResult < 3) {
    unittest.expect(
      o.image!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVisionV1p3beta1Product(o.product!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1ProductSearchResultsResult--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1Property = 0;
api.GoogleCloudVisionV1p3beta1Property
    buildGoogleCloudVisionV1p3beta1Property() {
  final o = api.GoogleCloudVisionV1p3beta1Property();
  buildCounterGoogleCloudVisionV1p3beta1Property++;
  if (buildCounterGoogleCloudVisionV1p3beta1Property < 3) {
    o.name = 'foo';
    o.uint64Value = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudVisionV1p3beta1Property--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1Property(
    api.GoogleCloudVisionV1p3beta1Property o) {
  buildCounterGoogleCloudVisionV1p3beta1Property++;
  if (buildCounterGoogleCloudVisionV1p3beta1Property < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uint64Value!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1Property--;
}

core.List<api.GoogleCloudVisionV1p3beta1BoundingPoly> buildUnnamed4330() => [
      buildGoogleCloudVisionV1p3beta1BoundingPoly(),
      buildGoogleCloudVisionV1p3beta1BoundingPoly(),
    ];

void checkUnnamed4330(core.List<api.GoogleCloudVisionV1p3beta1BoundingPoly> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1BoundingPoly(o[0]);
  checkGoogleCloudVisionV1p3beta1BoundingPoly(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1ReferenceImage = 0;
api.GoogleCloudVisionV1p3beta1ReferenceImage
    buildGoogleCloudVisionV1p3beta1ReferenceImage() {
  final o = api.GoogleCloudVisionV1p3beta1ReferenceImage();
  buildCounterGoogleCloudVisionV1p3beta1ReferenceImage++;
  if (buildCounterGoogleCloudVisionV1p3beta1ReferenceImage < 3) {
    o.boundingPolys = buildUnnamed4330();
    o.name = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudVisionV1p3beta1ReferenceImage--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1ReferenceImage(
    api.GoogleCloudVisionV1p3beta1ReferenceImage o) {
  buildCounterGoogleCloudVisionV1p3beta1ReferenceImage++;
  if (buildCounterGoogleCloudVisionV1p3beta1ReferenceImage < 3) {
    checkUnnamed4330(o.boundingPolys!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1ReferenceImage--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1SafeSearchAnnotation = 0;
api.GoogleCloudVisionV1p3beta1SafeSearchAnnotation
    buildGoogleCloudVisionV1p3beta1SafeSearchAnnotation() {
  final o = api.GoogleCloudVisionV1p3beta1SafeSearchAnnotation();
  buildCounterGoogleCloudVisionV1p3beta1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1SafeSearchAnnotation < 3) {
    o.adult = 'foo';
    o.medical = 'foo';
    o.racy = 'foo';
    o.spoof = 'foo';
    o.violence = 'foo';
  }
  buildCounterGoogleCloudVisionV1p3beta1SafeSearchAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1SafeSearchAnnotation(
    api.GoogleCloudVisionV1p3beta1SafeSearchAnnotation o) {
  buildCounterGoogleCloudVisionV1p3beta1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1SafeSearchAnnotation < 3) {
    unittest.expect(
      o.adult!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.medical!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.racy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spoof!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.violence!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1SafeSearchAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1Symbol = 0;
api.GoogleCloudVisionV1p3beta1Symbol buildGoogleCloudVisionV1p3beta1Symbol() {
  final o = api.GoogleCloudVisionV1p3beta1Symbol();
  buildCounterGoogleCloudVisionV1p3beta1Symbol++;
  if (buildCounterGoogleCloudVisionV1p3beta1Symbol < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p3beta1TextAnnotationTextProperty();
    o.text = 'foo';
  }
  buildCounterGoogleCloudVisionV1p3beta1Symbol--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1Symbol(
    api.GoogleCloudVisionV1p3beta1Symbol o) {
  buildCounterGoogleCloudVisionV1p3beta1Symbol++;
  if (buildCounterGoogleCloudVisionV1p3beta1Symbol < 3) {
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVisionV1p3beta1TextAnnotationTextProperty(o.property!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1Symbol--;
}

core.List<api.GoogleCloudVisionV1p3beta1Page> buildUnnamed4331() => [
      buildGoogleCloudVisionV1p3beta1Page(),
      buildGoogleCloudVisionV1p3beta1Page(),
    ];

void checkUnnamed4331(core.List<api.GoogleCloudVisionV1p3beta1Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1Page(o[0]);
  checkGoogleCloudVisionV1p3beta1Page(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1TextAnnotation = 0;
api.GoogleCloudVisionV1p3beta1TextAnnotation
    buildGoogleCloudVisionV1p3beta1TextAnnotation() {
  final o = api.GoogleCloudVisionV1p3beta1TextAnnotation();
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1TextAnnotation < 3) {
    o.pages = buildUnnamed4331();
    o.text = 'foo';
  }
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1TextAnnotation(
    api.GoogleCloudVisionV1p3beta1TextAnnotation o) {
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p3beta1TextAnnotation < 3) {
    checkUnnamed4331(o.pages!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak = 0;
api.GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak
    buildGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak() {
  final o = api.GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak();
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak++;
  if (buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak < 3) {
    o.isPrefix = true;
    o.type = 'foo';
  }
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak(
    api.GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak o) {
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak++;
  if (buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak < 3) {
    unittest.expect(o.isPrefix!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage =
    0;
api.GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage
    buildGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage() {
  final o = api.GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage();
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage++;
  if (buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage <
      3) {
    o.confidence = 42.0;
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage(
    api.GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage o) {
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage++;
  if (buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage--;
}

core.List<api.GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage>
    buildUnnamed4332() => [
          buildGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage(),
          buildGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage(),
        ];

void checkUnnamed4332(
    core.List<api.GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage(o[0]);
  checkGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1TextAnnotationTextProperty = 0;
api.GoogleCloudVisionV1p3beta1TextAnnotationTextProperty
    buildGoogleCloudVisionV1p3beta1TextAnnotationTextProperty() {
  final o = api.GoogleCloudVisionV1p3beta1TextAnnotationTextProperty();
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p3beta1TextAnnotationTextProperty < 3) {
    o.detectedBreak =
        buildGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak();
    o.detectedLanguages = buildUnnamed4332();
  }
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationTextProperty--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1TextAnnotationTextProperty(
    api.GoogleCloudVisionV1p3beta1TextAnnotationTextProperty o) {
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p3beta1TextAnnotationTextProperty < 3) {
    checkGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak(
        o.detectedBreak!);
    checkUnnamed4332(o.detectedLanguages!);
  }
  buildCounterGoogleCloudVisionV1p3beta1TextAnnotationTextProperty--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1Vertex = 0;
api.GoogleCloudVisionV1p3beta1Vertex buildGoogleCloudVisionV1p3beta1Vertex() {
  final o = api.GoogleCloudVisionV1p3beta1Vertex();
  buildCounterGoogleCloudVisionV1p3beta1Vertex++;
  if (buildCounterGoogleCloudVisionV1p3beta1Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudVisionV1p3beta1Vertex--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1Vertex(
    api.GoogleCloudVisionV1p3beta1Vertex o) {
  buildCounterGoogleCloudVisionV1p3beta1Vertex++;
  if (buildCounterGoogleCloudVisionV1p3beta1Vertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1Vertex--;
}

core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebLabel>
    buildUnnamed4333() => [
          buildGoogleCloudVisionV1p3beta1WebDetectionWebLabel(),
          buildGoogleCloudVisionV1p3beta1WebDetectionWebLabel(),
        ];

void checkUnnamed4333(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebLabel(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebLabel(o[1]);
}

core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage>
    buildUnnamed4334() => [
          buildGoogleCloudVisionV1p3beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p3beta1WebDetectionWebImage(),
        ];

void checkUnnamed4334(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebPage>
    buildUnnamed4335() => [
          buildGoogleCloudVisionV1p3beta1WebDetectionWebPage(),
          buildGoogleCloudVisionV1p3beta1WebDetectionWebPage(),
        ];

void checkUnnamed4335(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebPage(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebPage(o[1]);
}

core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage>
    buildUnnamed4336() => [
          buildGoogleCloudVisionV1p3beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p3beta1WebDetectionWebImage(),
        ];

void checkUnnamed4336(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage>
    buildUnnamed4337() => [
          buildGoogleCloudVisionV1p3beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p3beta1WebDetectionWebImage(),
        ];

void checkUnnamed4337(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebEntity>
    buildUnnamed4338() => [
          buildGoogleCloudVisionV1p3beta1WebDetectionWebEntity(),
          buildGoogleCloudVisionV1p3beta1WebDetectionWebEntity(),
        ];

void checkUnnamed4338(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebEntity(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebEntity(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1WebDetection = 0;
api.GoogleCloudVisionV1p3beta1WebDetection
    buildGoogleCloudVisionV1p3beta1WebDetection() {
  final o = api.GoogleCloudVisionV1p3beta1WebDetection();
  buildCounterGoogleCloudVisionV1p3beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetection < 3) {
    o.bestGuessLabels = buildUnnamed4333();
    o.fullMatchingImages = buildUnnamed4334();
    o.pagesWithMatchingImages = buildUnnamed4335();
    o.partialMatchingImages = buildUnnamed4336();
    o.visuallySimilarImages = buildUnnamed4337();
    o.webEntities = buildUnnamed4338();
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetection--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1WebDetection(
    api.GoogleCloudVisionV1p3beta1WebDetection o) {
  buildCounterGoogleCloudVisionV1p3beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetection < 3) {
    checkUnnamed4333(o.bestGuessLabels!);
    checkUnnamed4334(o.fullMatchingImages!);
    checkUnnamed4335(o.pagesWithMatchingImages!);
    checkUnnamed4336(o.partialMatchingImages!);
    checkUnnamed4337(o.visuallySimilarImages!);
    checkUnnamed4338(o.webEntities!);
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetection--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebEntity = 0;
api.GoogleCloudVisionV1p3beta1WebDetectionWebEntity
    buildGoogleCloudVisionV1p3beta1WebDetectionWebEntity() {
  final o = api.GoogleCloudVisionV1p3beta1WebDetectionWebEntity();
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebEntity++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebEntity < 3) {
    o.description = 'foo';
    o.entityId = 'foo';
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebEntity--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1WebDetectionWebEntity(
    api.GoogleCloudVisionV1p3beta1WebDetectionWebEntity o) {
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebEntity++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebEntity < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebEntity--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebImage = 0;
api.GoogleCloudVisionV1p3beta1WebDetectionWebImage
    buildGoogleCloudVisionV1p3beta1WebDetectionWebImage() {
  final o = api.GoogleCloudVisionV1p3beta1WebDetectionWebImage();
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebImage++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebImage < 3) {
    o.score = 42.0;
    o.url = 'foo';
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebImage--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(
    api.GoogleCloudVisionV1p3beta1WebDetectionWebImage o) {
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebImage++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebImage < 3) {
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebImage--;
}

core.int buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebLabel = 0;
api.GoogleCloudVisionV1p3beta1WebDetectionWebLabel
    buildGoogleCloudVisionV1p3beta1WebDetectionWebLabel() {
  final o = api.GoogleCloudVisionV1p3beta1WebDetectionWebLabel();
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebLabel++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebLabel < 3) {
    o.label = 'foo';
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebLabel--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1WebDetectionWebLabel(
    api.GoogleCloudVisionV1p3beta1WebDetectionWebLabel o) {
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebLabel++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebLabel < 3) {
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebLabel--;
}

core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage>
    buildUnnamed4339() => [
          buildGoogleCloudVisionV1p3beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p3beta1WebDetectionWebImage(),
        ];

void checkUnnamed4339(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage>
    buildUnnamed4340() => [
          buildGoogleCloudVisionV1p3beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p3beta1WebDetectionWebImage(),
        ];

void checkUnnamed4340(
    core.List<api.GoogleCloudVisionV1p3beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebPage = 0;
api.GoogleCloudVisionV1p3beta1WebDetectionWebPage
    buildGoogleCloudVisionV1p3beta1WebDetectionWebPage() {
  final o = api.GoogleCloudVisionV1p3beta1WebDetectionWebPage();
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebPage++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebPage < 3) {
    o.fullMatchingImages = buildUnnamed4339();
    o.pageTitle = 'foo';
    o.partialMatchingImages = buildUnnamed4340();
    o.score = 42.0;
    o.url = 'foo';
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebPage--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1WebDetectionWebPage(
    api.GoogleCloudVisionV1p3beta1WebDetectionWebPage o) {
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebPage++;
  if (buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebPage < 3) {
    checkUnnamed4339(o.fullMatchingImages!);
    unittest.expect(
      o.pageTitle!,
      unittest.equals('foo'),
    );
    checkUnnamed4340(o.partialMatchingImages!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p3beta1WebDetectionWebPage--;
}

core.List<api.GoogleCloudVisionV1p3beta1Symbol> buildUnnamed4341() => [
      buildGoogleCloudVisionV1p3beta1Symbol(),
      buildGoogleCloudVisionV1p3beta1Symbol(),
    ];

void checkUnnamed4341(core.List<api.GoogleCloudVisionV1p3beta1Symbol> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p3beta1Symbol(o[0]);
  checkGoogleCloudVisionV1p3beta1Symbol(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p3beta1Word = 0;
api.GoogleCloudVisionV1p3beta1Word buildGoogleCloudVisionV1p3beta1Word() {
  final o = api.GoogleCloudVisionV1p3beta1Word();
  buildCounterGoogleCloudVisionV1p3beta1Word++;
  if (buildCounterGoogleCloudVisionV1p3beta1Word < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p3beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p3beta1TextAnnotationTextProperty();
    o.symbols = buildUnnamed4341();
  }
  buildCounterGoogleCloudVisionV1p3beta1Word--;
  return o;
}

void checkGoogleCloudVisionV1p3beta1Word(api.GoogleCloudVisionV1p3beta1Word o) {
  buildCounterGoogleCloudVisionV1p3beta1Word++;
  if (buildCounterGoogleCloudVisionV1p3beta1Word < 3) {
    checkGoogleCloudVisionV1p3beta1BoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVisionV1p3beta1TextAnnotationTextProperty(o.property!);
    checkUnnamed4341(o.symbols!);
  }
  buildCounterGoogleCloudVisionV1p3beta1Word--;
}

core.List<api.GoogleCloudVisionV1p4beta1AnnotateImageResponse>
    buildUnnamed4342() => [
          buildGoogleCloudVisionV1p4beta1AnnotateImageResponse(),
          buildGoogleCloudVisionV1p4beta1AnnotateImageResponse(),
        ];

void checkUnnamed4342(
    core.List<api.GoogleCloudVisionV1p4beta1AnnotateImageResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1AnnotateImageResponse(o[0]);
  checkGoogleCloudVisionV1p4beta1AnnotateImageResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1AnnotateFileResponse = 0;
api.GoogleCloudVisionV1p4beta1AnnotateFileResponse
    buildGoogleCloudVisionV1p4beta1AnnotateFileResponse() {
  final o = api.GoogleCloudVisionV1p4beta1AnnotateFileResponse();
  buildCounterGoogleCloudVisionV1p4beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AnnotateFileResponse < 3) {
    o.error = buildStatus();
    o.inputConfig = buildGoogleCloudVisionV1p4beta1InputConfig();
    o.responses = buildUnnamed4342();
    o.totalPages = 42;
  }
  buildCounterGoogleCloudVisionV1p4beta1AnnotateFileResponse--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1AnnotateFileResponse(
    api.GoogleCloudVisionV1p4beta1AnnotateFileResponse o) {
  buildCounterGoogleCloudVisionV1p4beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AnnotateFileResponse < 3) {
    checkStatus(o.error!);
    checkGoogleCloudVisionV1p4beta1InputConfig(o.inputConfig!);
    checkUnnamed4342(o.responses!);
    unittest.expect(
      o.totalPages!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1AnnotateFileResponse--;
}

core.List<api.GoogleCloudVisionV1p4beta1FaceAnnotation> buildUnnamed4343() => [
      buildGoogleCloudVisionV1p4beta1FaceAnnotation(),
      buildGoogleCloudVisionV1p4beta1FaceAnnotation(),
    ];

void checkUnnamed4343(
    core.List<api.GoogleCloudVisionV1p4beta1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1FaceAnnotation(o[0]);
  checkGoogleCloudVisionV1p4beta1FaceAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p4beta1EntityAnnotation> buildUnnamed4344() =>
    [
      buildGoogleCloudVisionV1p4beta1EntityAnnotation(),
      buildGoogleCloudVisionV1p4beta1EntityAnnotation(),
    ];

void checkUnnamed4344(
    core.List<api.GoogleCloudVisionV1p4beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p4beta1EntityAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p4beta1EntityAnnotation> buildUnnamed4345() =>
    [
      buildGoogleCloudVisionV1p4beta1EntityAnnotation(),
      buildGoogleCloudVisionV1p4beta1EntityAnnotation(),
    ];

void checkUnnamed4345(
    core.List<api.GoogleCloudVisionV1p4beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p4beta1EntityAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation>
    buildUnnamed4346() => [
          buildGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation(),
          buildGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation(),
        ];

void checkUnnamed4346(
    core.List<api.GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation(o[0]);
  checkGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p4beta1EntityAnnotation> buildUnnamed4347() =>
    [
      buildGoogleCloudVisionV1p4beta1EntityAnnotation(),
      buildGoogleCloudVisionV1p4beta1EntityAnnotation(),
    ];

void checkUnnamed4347(
    core.List<api.GoogleCloudVisionV1p4beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p4beta1EntityAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p4beta1EntityAnnotation> buildUnnamed4348() =>
    [
      buildGoogleCloudVisionV1p4beta1EntityAnnotation(),
      buildGoogleCloudVisionV1p4beta1EntityAnnotation(),
    ];

void checkUnnamed4348(
    core.List<api.GoogleCloudVisionV1p4beta1EntityAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p4beta1EntityAnnotation(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1AnnotateImageResponse = 0;
api.GoogleCloudVisionV1p4beta1AnnotateImageResponse
    buildGoogleCloudVisionV1p4beta1AnnotateImageResponse() {
  final o = api.GoogleCloudVisionV1p4beta1AnnotateImageResponse();
  buildCounterGoogleCloudVisionV1p4beta1AnnotateImageResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AnnotateImageResponse < 3) {
    o.context = buildGoogleCloudVisionV1p4beta1ImageAnnotationContext();
    o.cropHintsAnnotation =
        buildGoogleCloudVisionV1p4beta1CropHintsAnnotation();
    o.error = buildStatus();
    o.faceAnnotations = buildUnnamed4343();
    o.fullTextAnnotation = buildGoogleCloudVisionV1p4beta1TextAnnotation();
    o.imagePropertiesAnnotation =
        buildGoogleCloudVisionV1p4beta1ImageProperties();
    o.labelAnnotations = buildUnnamed4344();
    o.landmarkAnnotations = buildUnnamed4345();
    o.localizedObjectAnnotations = buildUnnamed4346();
    o.logoAnnotations = buildUnnamed4347();
    o.productSearchResults =
        buildGoogleCloudVisionV1p4beta1ProductSearchResults();
    o.safeSearchAnnotation =
        buildGoogleCloudVisionV1p4beta1SafeSearchAnnotation();
    o.textAnnotations = buildUnnamed4348();
    o.webDetection = buildGoogleCloudVisionV1p4beta1WebDetection();
  }
  buildCounterGoogleCloudVisionV1p4beta1AnnotateImageResponse--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1AnnotateImageResponse(
    api.GoogleCloudVisionV1p4beta1AnnotateImageResponse o) {
  buildCounterGoogleCloudVisionV1p4beta1AnnotateImageResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AnnotateImageResponse < 3) {
    checkGoogleCloudVisionV1p4beta1ImageAnnotationContext(o.context!);
    checkGoogleCloudVisionV1p4beta1CropHintsAnnotation(o.cropHintsAnnotation!);
    checkStatus(o.error!);
    checkUnnamed4343(o.faceAnnotations!);
    checkGoogleCloudVisionV1p4beta1TextAnnotation(o.fullTextAnnotation!);
    checkGoogleCloudVisionV1p4beta1ImageProperties(
        o.imagePropertiesAnnotation!);
    checkUnnamed4344(o.labelAnnotations!);
    checkUnnamed4345(o.landmarkAnnotations!);
    checkUnnamed4346(o.localizedObjectAnnotations!);
    checkUnnamed4347(o.logoAnnotations!);
    checkGoogleCloudVisionV1p4beta1ProductSearchResults(
        o.productSearchResults!);
    checkGoogleCloudVisionV1p4beta1SafeSearchAnnotation(
        o.safeSearchAnnotation!);
    checkUnnamed4348(o.textAnnotations!);
    checkGoogleCloudVisionV1p4beta1WebDetection(o.webDetection!);
  }
  buildCounterGoogleCloudVisionV1p4beta1AnnotateImageResponse--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse = 0;
api.GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse
    buildGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse() {
  final o = api.GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse();
  buildCounterGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse < 3) {
    o.outputConfig = buildGoogleCloudVisionV1p4beta1OutputConfig();
  }
  buildCounterGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse(
    api.GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse o) {
  buildCounterGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse < 3) {
    checkGoogleCloudVisionV1p4beta1OutputConfig(o.outputConfig!);
  }
  buildCounterGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse--;
}

core.List<api.GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse>
    buildUnnamed4349() => [
          buildGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse(),
          buildGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse(),
        ];

void checkUnnamed4349(
    core.List<api.GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse(o[0]);
  checkGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse =
    0;
api.GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse
    buildGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse() {
  final o = api.GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse();
  buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse <
      3) {
    o.responses = buildUnnamed4349();
  }
  buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse(
    api.GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse o) {
  buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse <
      3) {
    checkUnnamed4349(o.responses!);
  }
  buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse--;
}

core.int
    buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse = 0;
api.GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse
    buildGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse() {
  final o = api.GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse();
  buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse <
      3) {
    o.outputConfig = buildGoogleCloudVisionV1p4beta1OutputConfig();
  }
  buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse(
    api.GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse o) {
  buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse <
      3) {
    checkGoogleCloudVisionV1p4beta1OutputConfig(o.outputConfig!);
  }
  buildCounterGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse--;
}

core.List<api.GoogleCloudVisionV1p4beta1AnnotateFileResponse>
    buildUnnamed4350() => [
          buildGoogleCloudVisionV1p4beta1AnnotateFileResponse(),
          buildGoogleCloudVisionV1p4beta1AnnotateFileResponse(),
        ];

void checkUnnamed4350(
    core.List<api.GoogleCloudVisionV1p4beta1AnnotateFileResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1AnnotateFileResponse(o[0]);
  checkGoogleCloudVisionV1p4beta1AnnotateFileResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse = 0;
api.GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse
    buildGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse() {
  final o = api.GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse();
  buildCounterGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse < 3) {
    o.responses = buildUnnamed4350();
  }
  buildCounterGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse(
    api.GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse o) {
  buildCounterGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse < 3) {
    checkUnnamed4350(o.responses!);
  }
  buildCounterGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1BatchOperationMetadata = 0;
api.GoogleCloudVisionV1p4beta1BatchOperationMetadata
    buildGoogleCloudVisionV1p4beta1BatchOperationMetadata() {
  final o = api.GoogleCloudVisionV1p4beta1BatchOperationMetadata();
  buildCounterGoogleCloudVisionV1p4beta1BatchOperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p4beta1BatchOperationMetadata < 3) {
    o.endTime = 'foo';
    o.state = 'foo';
    o.submitTime = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1BatchOperationMetadata--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1BatchOperationMetadata(
    api.GoogleCloudVisionV1p4beta1BatchOperationMetadata o) {
  buildCounterGoogleCloudVisionV1p4beta1BatchOperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p4beta1BatchOperationMetadata < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.submitTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1BatchOperationMetadata--;
}

core.List<api.GoogleCloudVisionV1p4beta1Paragraph> buildUnnamed4351() => [
      buildGoogleCloudVisionV1p4beta1Paragraph(),
      buildGoogleCloudVisionV1p4beta1Paragraph(),
    ];

void checkUnnamed4351(core.List<api.GoogleCloudVisionV1p4beta1Paragraph> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1Paragraph(o[0]);
  checkGoogleCloudVisionV1p4beta1Paragraph(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1Block = 0;
api.GoogleCloudVisionV1p4beta1Block buildGoogleCloudVisionV1p4beta1Block() {
  final o = api.GoogleCloudVisionV1p4beta1Block();
  buildCounterGoogleCloudVisionV1p4beta1Block++;
  if (buildCounterGoogleCloudVisionV1p4beta1Block < 3) {
    o.blockType = 'foo';
    o.boundingBox = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.confidence = 42.0;
    o.paragraphs = buildUnnamed4351();
    o.property = buildGoogleCloudVisionV1p4beta1TextAnnotationTextProperty();
  }
  buildCounterGoogleCloudVisionV1p4beta1Block--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1Block(
    api.GoogleCloudVisionV1p4beta1Block o) {
  buildCounterGoogleCloudVisionV1p4beta1Block++;
  if (buildCounterGoogleCloudVisionV1p4beta1Block < 3) {
    unittest.expect(
      o.blockType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkUnnamed4351(o.paragraphs!);
    checkGoogleCloudVisionV1p4beta1TextAnnotationTextProperty(o.property!);
  }
  buildCounterGoogleCloudVisionV1p4beta1Block--;
}

core.List<api.GoogleCloudVisionV1p4beta1NormalizedVertex> buildUnnamed4352() =>
    [
      buildGoogleCloudVisionV1p4beta1NormalizedVertex(),
      buildGoogleCloudVisionV1p4beta1NormalizedVertex(),
    ];

void checkUnnamed4352(
    core.List<api.GoogleCloudVisionV1p4beta1NormalizedVertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1NormalizedVertex(o[0]);
  checkGoogleCloudVisionV1p4beta1NormalizedVertex(o[1]);
}

core.List<api.GoogleCloudVisionV1p4beta1Vertex> buildUnnamed4353() => [
      buildGoogleCloudVisionV1p4beta1Vertex(),
      buildGoogleCloudVisionV1p4beta1Vertex(),
    ];

void checkUnnamed4353(core.List<api.GoogleCloudVisionV1p4beta1Vertex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1Vertex(o[0]);
  checkGoogleCloudVisionV1p4beta1Vertex(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1BoundingPoly = 0;
api.GoogleCloudVisionV1p4beta1BoundingPoly
    buildGoogleCloudVisionV1p4beta1BoundingPoly() {
  final o = api.GoogleCloudVisionV1p4beta1BoundingPoly();
  buildCounterGoogleCloudVisionV1p4beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p4beta1BoundingPoly < 3) {
    o.normalizedVertices = buildUnnamed4352();
    o.vertices = buildUnnamed4353();
  }
  buildCounterGoogleCloudVisionV1p4beta1BoundingPoly--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1BoundingPoly(
    api.GoogleCloudVisionV1p4beta1BoundingPoly o) {
  buildCounterGoogleCloudVisionV1p4beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p4beta1BoundingPoly < 3) {
    checkUnnamed4352(o.normalizedVertices!);
    checkUnnamed4353(o.vertices!);
  }
  buildCounterGoogleCloudVisionV1p4beta1BoundingPoly--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1Celebrity = 0;
api.GoogleCloudVisionV1p4beta1Celebrity
    buildGoogleCloudVisionV1p4beta1Celebrity() {
  final o = api.GoogleCloudVisionV1p4beta1Celebrity();
  buildCounterGoogleCloudVisionV1p4beta1Celebrity++;
  if (buildCounterGoogleCloudVisionV1p4beta1Celebrity < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1Celebrity--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1Celebrity(
    api.GoogleCloudVisionV1p4beta1Celebrity o) {
  buildCounterGoogleCloudVisionV1p4beta1Celebrity++;
  if (buildCounterGoogleCloudVisionV1p4beta1Celebrity < 3) {
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
  buildCounterGoogleCloudVisionV1p4beta1Celebrity--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1ColorInfo = 0;
api.GoogleCloudVisionV1p4beta1ColorInfo
    buildGoogleCloudVisionV1p4beta1ColorInfo() {
  final o = api.GoogleCloudVisionV1p4beta1ColorInfo();
  buildCounterGoogleCloudVisionV1p4beta1ColorInfo++;
  if (buildCounterGoogleCloudVisionV1p4beta1ColorInfo < 3) {
    o.color = buildColor();
    o.pixelFraction = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1ColorInfo--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1ColorInfo(
    api.GoogleCloudVisionV1p4beta1ColorInfo o) {
  buildCounterGoogleCloudVisionV1p4beta1ColorInfo++;
  if (buildCounterGoogleCloudVisionV1p4beta1ColorInfo < 3) {
    checkColor(o.color!);
    unittest.expect(
      o.pixelFraction!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1ColorInfo--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1CropHint = 0;
api.GoogleCloudVisionV1p4beta1CropHint
    buildGoogleCloudVisionV1p4beta1CropHint() {
  final o = api.GoogleCloudVisionV1p4beta1CropHint();
  buildCounterGoogleCloudVisionV1p4beta1CropHint++;
  if (buildCounterGoogleCloudVisionV1p4beta1CropHint < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.confidence = 42.0;
    o.importanceFraction = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1CropHint--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1CropHint(
    api.GoogleCloudVisionV1p4beta1CropHint o) {
  buildCounterGoogleCloudVisionV1p4beta1CropHint++;
  if (buildCounterGoogleCloudVisionV1p4beta1CropHint < 3) {
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.importanceFraction!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1CropHint--;
}

core.List<api.GoogleCloudVisionV1p4beta1CropHint> buildUnnamed4354() => [
      buildGoogleCloudVisionV1p4beta1CropHint(),
      buildGoogleCloudVisionV1p4beta1CropHint(),
    ];

void checkUnnamed4354(core.List<api.GoogleCloudVisionV1p4beta1CropHint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1CropHint(o[0]);
  checkGoogleCloudVisionV1p4beta1CropHint(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1CropHintsAnnotation = 0;
api.GoogleCloudVisionV1p4beta1CropHintsAnnotation
    buildGoogleCloudVisionV1p4beta1CropHintsAnnotation() {
  final o = api.GoogleCloudVisionV1p4beta1CropHintsAnnotation();
  buildCounterGoogleCloudVisionV1p4beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1CropHintsAnnotation < 3) {
    o.cropHints = buildUnnamed4354();
  }
  buildCounterGoogleCloudVisionV1p4beta1CropHintsAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1CropHintsAnnotation(
    api.GoogleCloudVisionV1p4beta1CropHintsAnnotation o) {
  buildCounterGoogleCloudVisionV1p4beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1CropHintsAnnotation < 3) {
    checkUnnamed4354(o.cropHints!);
  }
  buildCounterGoogleCloudVisionV1p4beta1CropHintsAnnotation--;
}

core.List<api.GoogleCloudVisionV1p4beta1ColorInfo> buildUnnamed4355() => [
      buildGoogleCloudVisionV1p4beta1ColorInfo(),
      buildGoogleCloudVisionV1p4beta1ColorInfo(),
    ];

void checkUnnamed4355(core.List<api.GoogleCloudVisionV1p4beta1ColorInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1ColorInfo(o[0]);
  checkGoogleCloudVisionV1p4beta1ColorInfo(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1DominantColorsAnnotation = 0;
api.GoogleCloudVisionV1p4beta1DominantColorsAnnotation
    buildGoogleCloudVisionV1p4beta1DominantColorsAnnotation() {
  final o = api.GoogleCloudVisionV1p4beta1DominantColorsAnnotation();
  buildCounterGoogleCloudVisionV1p4beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1DominantColorsAnnotation < 3) {
    o.colors = buildUnnamed4355();
  }
  buildCounterGoogleCloudVisionV1p4beta1DominantColorsAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1DominantColorsAnnotation(
    api.GoogleCloudVisionV1p4beta1DominantColorsAnnotation o) {
  buildCounterGoogleCloudVisionV1p4beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1DominantColorsAnnotation < 3) {
    checkUnnamed4355(o.colors!);
  }
  buildCounterGoogleCloudVisionV1p4beta1DominantColorsAnnotation--;
}

core.List<api.GoogleCloudVisionV1p4beta1LocationInfo> buildUnnamed4356() => [
      buildGoogleCloudVisionV1p4beta1LocationInfo(),
      buildGoogleCloudVisionV1p4beta1LocationInfo(),
    ];

void checkUnnamed4356(core.List<api.GoogleCloudVisionV1p4beta1LocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1LocationInfo(o[0]);
  checkGoogleCloudVisionV1p4beta1LocationInfo(o[1]);
}

core.List<api.GoogleCloudVisionV1p4beta1Property> buildUnnamed4357() => [
      buildGoogleCloudVisionV1p4beta1Property(),
      buildGoogleCloudVisionV1p4beta1Property(),
    ];

void checkUnnamed4357(core.List<api.GoogleCloudVisionV1p4beta1Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1Property(o[0]);
  checkGoogleCloudVisionV1p4beta1Property(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1EntityAnnotation = 0;
api.GoogleCloudVisionV1p4beta1EntityAnnotation
    buildGoogleCloudVisionV1p4beta1EntityAnnotation() {
  final o = api.GoogleCloudVisionV1p4beta1EntityAnnotation();
  buildCounterGoogleCloudVisionV1p4beta1EntityAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1EntityAnnotation < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.confidence = 42.0;
    o.description = 'foo';
    o.locale = 'foo';
    o.locations = buildUnnamed4356();
    o.mid = 'foo';
    o.properties = buildUnnamed4357();
    o.score = 42.0;
    o.topicality = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1EntityAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1EntityAnnotation(
    api.GoogleCloudVisionV1p4beta1EntityAnnotation o) {
  buildCounterGoogleCloudVisionV1p4beta1EntityAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1EntityAnnotation < 3) {
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locale!,
      unittest.equals('foo'),
    );
    checkUnnamed4356(o.locations!);
    unittest.expect(
      o.mid!,
      unittest.equals('foo'),
    );
    checkUnnamed4357(o.properties!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.topicality!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1EntityAnnotation--;
}

core.List<api.GoogleCloudVisionV1p4beta1FaceAnnotationLandmark>
    buildUnnamed4358() => [
          buildGoogleCloudVisionV1p4beta1FaceAnnotationLandmark(),
          buildGoogleCloudVisionV1p4beta1FaceAnnotationLandmark(),
        ];

void checkUnnamed4358(
    core.List<api.GoogleCloudVisionV1p4beta1FaceAnnotationLandmark> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1FaceAnnotationLandmark(o[0]);
  checkGoogleCloudVisionV1p4beta1FaceAnnotationLandmark(o[1]);
}

core.List<api.GoogleCloudVisionV1p4beta1FaceRecognitionResult>
    buildUnnamed4359() => [
          buildGoogleCloudVisionV1p4beta1FaceRecognitionResult(),
          buildGoogleCloudVisionV1p4beta1FaceRecognitionResult(),
        ];

void checkUnnamed4359(
    core.List<api.GoogleCloudVisionV1p4beta1FaceRecognitionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1FaceRecognitionResult(o[0]);
  checkGoogleCloudVisionV1p4beta1FaceRecognitionResult(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1FaceAnnotation = 0;
api.GoogleCloudVisionV1p4beta1FaceAnnotation
    buildGoogleCloudVisionV1p4beta1FaceAnnotation() {
  final o = api.GoogleCloudVisionV1p4beta1FaceAnnotation();
  buildCounterGoogleCloudVisionV1p4beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1FaceAnnotation < 3) {
    o.angerLikelihood = 'foo';
    o.blurredLikelihood = 'foo';
    o.boundingPoly = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.detectionConfidence = 42.0;
    o.fdBoundingPoly = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.headwearLikelihood = 'foo';
    o.joyLikelihood = 'foo';
    o.landmarkingConfidence = 42.0;
    o.landmarks = buildUnnamed4358();
    o.panAngle = 42.0;
    o.recognitionResult = buildUnnamed4359();
    o.rollAngle = 42.0;
    o.sorrowLikelihood = 'foo';
    o.surpriseLikelihood = 'foo';
    o.tiltAngle = 42.0;
    o.underExposedLikelihood = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1FaceAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1FaceAnnotation(
    api.GoogleCloudVisionV1p4beta1FaceAnnotation o) {
  buildCounterGoogleCloudVisionV1p4beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1FaceAnnotation < 3) {
    unittest.expect(
      o.angerLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.blurredLikelihood!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.detectionConfidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.fdBoundingPoly!);
    unittest.expect(
      o.headwearLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.joyLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.landmarkingConfidence!,
      unittest.equals(42.0),
    );
    checkUnnamed4358(o.landmarks!);
    unittest.expect(
      o.panAngle!,
      unittest.equals(42.0),
    );
    checkUnnamed4359(o.recognitionResult!);
    unittest.expect(
      o.rollAngle!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.sorrowLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.surpriseLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tiltAngle!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.underExposedLikelihood!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1FaceAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1FaceAnnotationLandmark = 0;
api.GoogleCloudVisionV1p4beta1FaceAnnotationLandmark
    buildGoogleCloudVisionV1p4beta1FaceAnnotationLandmark() {
  final o = api.GoogleCloudVisionV1p4beta1FaceAnnotationLandmark();
  buildCounterGoogleCloudVisionV1p4beta1FaceAnnotationLandmark++;
  if (buildCounterGoogleCloudVisionV1p4beta1FaceAnnotationLandmark < 3) {
    o.position = buildGoogleCloudVisionV1p4beta1Position();
    o.type = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1FaceAnnotationLandmark--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1FaceAnnotationLandmark(
    api.GoogleCloudVisionV1p4beta1FaceAnnotationLandmark o) {
  buildCounterGoogleCloudVisionV1p4beta1FaceAnnotationLandmark++;
  if (buildCounterGoogleCloudVisionV1p4beta1FaceAnnotationLandmark < 3) {
    checkGoogleCloudVisionV1p4beta1Position(o.position!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1FaceAnnotationLandmark--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1FaceRecognitionResult = 0;
api.GoogleCloudVisionV1p4beta1FaceRecognitionResult
    buildGoogleCloudVisionV1p4beta1FaceRecognitionResult() {
  final o = api.GoogleCloudVisionV1p4beta1FaceRecognitionResult();
  buildCounterGoogleCloudVisionV1p4beta1FaceRecognitionResult++;
  if (buildCounterGoogleCloudVisionV1p4beta1FaceRecognitionResult < 3) {
    o.celebrity = buildGoogleCloudVisionV1p4beta1Celebrity();
    o.confidence = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1FaceRecognitionResult--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1FaceRecognitionResult(
    api.GoogleCloudVisionV1p4beta1FaceRecognitionResult o) {
  buildCounterGoogleCloudVisionV1p4beta1FaceRecognitionResult++;
  if (buildCounterGoogleCloudVisionV1p4beta1FaceRecognitionResult < 3) {
    checkGoogleCloudVisionV1p4beta1Celebrity(o.celebrity!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1FaceRecognitionResult--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1GcsDestination = 0;
api.GoogleCloudVisionV1p4beta1GcsDestination
    buildGoogleCloudVisionV1p4beta1GcsDestination() {
  final o = api.GoogleCloudVisionV1p4beta1GcsDestination();
  buildCounterGoogleCloudVisionV1p4beta1GcsDestination++;
  if (buildCounterGoogleCloudVisionV1p4beta1GcsDestination < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1GcsDestination--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1GcsDestination(
    api.GoogleCloudVisionV1p4beta1GcsDestination o) {
  buildCounterGoogleCloudVisionV1p4beta1GcsDestination++;
  if (buildCounterGoogleCloudVisionV1p4beta1GcsDestination < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1GcsDestination--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1GcsSource = 0;
api.GoogleCloudVisionV1p4beta1GcsSource
    buildGoogleCloudVisionV1p4beta1GcsSource() {
  final o = api.GoogleCloudVisionV1p4beta1GcsSource();
  buildCounterGoogleCloudVisionV1p4beta1GcsSource++;
  if (buildCounterGoogleCloudVisionV1p4beta1GcsSource < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1GcsSource--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1GcsSource(
    api.GoogleCloudVisionV1p4beta1GcsSource o) {
  buildCounterGoogleCloudVisionV1p4beta1GcsSource++;
  if (buildCounterGoogleCloudVisionV1p4beta1GcsSource < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1GcsSource--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1ImageAnnotationContext = 0;
api.GoogleCloudVisionV1p4beta1ImageAnnotationContext
    buildGoogleCloudVisionV1p4beta1ImageAnnotationContext() {
  final o = api.GoogleCloudVisionV1p4beta1ImageAnnotationContext();
  buildCounterGoogleCloudVisionV1p4beta1ImageAnnotationContext++;
  if (buildCounterGoogleCloudVisionV1p4beta1ImageAnnotationContext < 3) {
    o.pageNumber = 42;
    o.uri = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1ImageAnnotationContext--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1ImageAnnotationContext(
    api.GoogleCloudVisionV1p4beta1ImageAnnotationContext o) {
  buildCounterGoogleCloudVisionV1p4beta1ImageAnnotationContext++;
  if (buildCounterGoogleCloudVisionV1p4beta1ImageAnnotationContext < 3) {
    unittest.expect(
      o.pageNumber!,
      unittest.equals(42),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1ImageAnnotationContext--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1ImageProperties = 0;
api.GoogleCloudVisionV1p4beta1ImageProperties
    buildGoogleCloudVisionV1p4beta1ImageProperties() {
  final o = api.GoogleCloudVisionV1p4beta1ImageProperties();
  buildCounterGoogleCloudVisionV1p4beta1ImageProperties++;
  if (buildCounterGoogleCloudVisionV1p4beta1ImageProperties < 3) {
    o.dominantColors =
        buildGoogleCloudVisionV1p4beta1DominantColorsAnnotation();
  }
  buildCounterGoogleCloudVisionV1p4beta1ImageProperties--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1ImageProperties(
    api.GoogleCloudVisionV1p4beta1ImageProperties o) {
  buildCounterGoogleCloudVisionV1p4beta1ImageProperties++;
  if (buildCounterGoogleCloudVisionV1p4beta1ImageProperties < 3) {
    checkGoogleCloudVisionV1p4beta1DominantColorsAnnotation(o.dominantColors!);
  }
  buildCounterGoogleCloudVisionV1p4beta1ImageProperties--;
}

core.List<api.GoogleCloudVisionV1p4beta1ReferenceImage> buildUnnamed4360() => [
      buildGoogleCloudVisionV1p4beta1ReferenceImage(),
      buildGoogleCloudVisionV1p4beta1ReferenceImage(),
    ];

void checkUnnamed4360(
    core.List<api.GoogleCloudVisionV1p4beta1ReferenceImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1ReferenceImage(o[0]);
  checkGoogleCloudVisionV1p4beta1ReferenceImage(o[1]);
}

core.List<api.Status> buildUnnamed4361() => [
      buildStatus(),
      buildStatus(),
    ];

void checkUnnamed4361(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1ImportProductSetsResponse = 0;
api.GoogleCloudVisionV1p4beta1ImportProductSetsResponse
    buildGoogleCloudVisionV1p4beta1ImportProductSetsResponse() {
  final o = api.GoogleCloudVisionV1p4beta1ImportProductSetsResponse();
  buildCounterGoogleCloudVisionV1p4beta1ImportProductSetsResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1ImportProductSetsResponse < 3) {
    o.referenceImages = buildUnnamed4360();
    o.statuses = buildUnnamed4361();
  }
  buildCounterGoogleCloudVisionV1p4beta1ImportProductSetsResponse--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1ImportProductSetsResponse(
    api.GoogleCloudVisionV1p4beta1ImportProductSetsResponse o) {
  buildCounterGoogleCloudVisionV1p4beta1ImportProductSetsResponse++;
  if (buildCounterGoogleCloudVisionV1p4beta1ImportProductSetsResponse < 3) {
    checkUnnamed4360(o.referenceImages!);
    checkUnnamed4361(o.statuses!);
  }
  buildCounterGoogleCloudVisionV1p4beta1ImportProductSetsResponse--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1InputConfig = 0;
api.GoogleCloudVisionV1p4beta1InputConfig
    buildGoogleCloudVisionV1p4beta1InputConfig() {
  final o = api.GoogleCloudVisionV1p4beta1InputConfig();
  buildCounterGoogleCloudVisionV1p4beta1InputConfig++;
  if (buildCounterGoogleCloudVisionV1p4beta1InputConfig < 3) {
    o.content = 'foo';
    o.gcsSource = buildGoogleCloudVisionV1p4beta1GcsSource();
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1InputConfig--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1InputConfig(
    api.GoogleCloudVisionV1p4beta1InputConfig o) {
  buildCounterGoogleCloudVisionV1p4beta1InputConfig++;
  if (buildCounterGoogleCloudVisionV1p4beta1InputConfig < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVisionV1p4beta1GcsSource(o.gcsSource!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1InputConfig--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation = 0;
api.GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation
    buildGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation() {
  final o = api.GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation();
  buildCounterGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.languageCode = 'foo';
    o.mid = 'foo';
    o.name = 'foo';
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation(
    api.GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation o) {
  buildCounterGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation < 3) {
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1LocationInfo = 0;
api.GoogleCloudVisionV1p4beta1LocationInfo
    buildGoogleCloudVisionV1p4beta1LocationInfo() {
  final o = api.GoogleCloudVisionV1p4beta1LocationInfo();
  buildCounterGoogleCloudVisionV1p4beta1LocationInfo++;
  if (buildCounterGoogleCloudVisionV1p4beta1LocationInfo < 3) {
    o.latLng = buildLatLng();
  }
  buildCounterGoogleCloudVisionV1p4beta1LocationInfo--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1LocationInfo(
    api.GoogleCloudVisionV1p4beta1LocationInfo o) {
  buildCounterGoogleCloudVisionV1p4beta1LocationInfo++;
  if (buildCounterGoogleCloudVisionV1p4beta1LocationInfo < 3) {
    checkLatLng(o.latLng!);
  }
  buildCounterGoogleCloudVisionV1p4beta1LocationInfo--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1NormalizedVertex = 0;
api.GoogleCloudVisionV1p4beta1NormalizedVertex
    buildGoogleCloudVisionV1p4beta1NormalizedVertex() {
  final o = api.GoogleCloudVisionV1p4beta1NormalizedVertex();
  buildCounterGoogleCloudVisionV1p4beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVisionV1p4beta1NormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1NormalizedVertex--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1NormalizedVertex(
    api.GoogleCloudVisionV1p4beta1NormalizedVertex o) {
  buildCounterGoogleCloudVisionV1p4beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVisionV1p4beta1NormalizedVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1NormalizedVertex--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1OperationMetadata = 0;
api.GoogleCloudVisionV1p4beta1OperationMetadata
    buildGoogleCloudVisionV1p4beta1OperationMetadata() {
  final o = api.GoogleCloudVisionV1p4beta1OperationMetadata();
  buildCounterGoogleCloudVisionV1p4beta1OperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p4beta1OperationMetadata < 3) {
    o.createTime = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1OperationMetadata--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1OperationMetadata(
    api.GoogleCloudVisionV1p4beta1OperationMetadata o) {
  buildCounterGoogleCloudVisionV1p4beta1OperationMetadata++;
  if (buildCounterGoogleCloudVisionV1p4beta1OperationMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1OperationMetadata--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1OutputConfig = 0;
api.GoogleCloudVisionV1p4beta1OutputConfig
    buildGoogleCloudVisionV1p4beta1OutputConfig() {
  final o = api.GoogleCloudVisionV1p4beta1OutputConfig();
  buildCounterGoogleCloudVisionV1p4beta1OutputConfig++;
  if (buildCounterGoogleCloudVisionV1p4beta1OutputConfig < 3) {
    o.batchSize = 42;
    o.gcsDestination = buildGoogleCloudVisionV1p4beta1GcsDestination();
  }
  buildCounterGoogleCloudVisionV1p4beta1OutputConfig--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1OutputConfig(
    api.GoogleCloudVisionV1p4beta1OutputConfig o) {
  buildCounterGoogleCloudVisionV1p4beta1OutputConfig++;
  if (buildCounterGoogleCloudVisionV1p4beta1OutputConfig < 3) {
    unittest.expect(
      o.batchSize!,
      unittest.equals(42),
    );
    checkGoogleCloudVisionV1p4beta1GcsDestination(o.gcsDestination!);
  }
  buildCounterGoogleCloudVisionV1p4beta1OutputConfig--;
}

core.List<api.GoogleCloudVisionV1p4beta1Block> buildUnnamed4362() => [
      buildGoogleCloudVisionV1p4beta1Block(),
      buildGoogleCloudVisionV1p4beta1Block(),
    ];

void checkUnnamed4362(core.List<api.GoogleCloudVisionV1p4beta1Block> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1Block(o[0]);
  checkGoogleCloudVisionV1p4beta1Block(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1Page = 0;
api.GoogleCloudVisionV1p4beta1Page buildGoogleCloudVisionV1p4beta1Page() {
  final o = api.GoogleCloudVisionV1p4beta1Page();
  buildCounterGoogleCloudVisionV1p4beta1Page++;
  if (buildCounterGoogleCloudVisionV1p4beta1Page < 3) {
    o.blocks = buildUnnamed4362();
    o.confidence = 42.0;
    o.height = 42;
    o.property = buildGoogleCloudVisionV1p4beta1TextAnnotationTextProperty();
    o.width = 42;
  }
  buildCounterGoogleCloudVisionV1p4beta1Page--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1Page(api.GoogleCloudVisionV1p4beta1Page o) {
  buildCounterGoogleCloudVisionV1p4beta1Page++;
  if (buildCounterGoogleCloudVisionV1p4beta1Page < 3) {
    checkUnnamed4362(o.blocks!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    checkGoogleCloudVisionV1p4beta1TextAnnotationTextProperty(o.property!);
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1Page--;
}

core.List<api.GoogleCloudVisionV1p4beta1Word> buildUnnamed4363() => [
      buildGoogleCloudVisionV1p4beta1Word(),
      buildGoogleCloudVisionV1p4beta1Word(),
    ];

void checkUnnamed4363(core.List<api.GoogleCloudVisionV1p4beta1Word> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1Word(o[0]);
  checkGoogleCloudVisionV1p4beta1Word(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1Paragraph = 0;
api.GoogleCloudVisionV1p4beta1Paragraph
    buildGoogleCloudVisionV1p4beta1Paragraph() {
  final o = api.GoogleCloudVisionV1p4beta1Paragraph();
  buildCounterGoogleCloudVisionV1p4beta1Paragraph++;
  if (buildCounterGoogleCloudVisionV1p4beta1Paragraph < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p4beta1TextAnnotationTextProperty();
    o.words = buildUnnamed4363();
  }
  buildCounterGoogleCloudVisionV1p4beta1Paragraph--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1Paragraph(
    api.GoogleCloudVisionV1p4beta1Paragraph o) {
  buildCounterGoogleCloudVisionV1p4beta1Paragraph++;
  if (buildCounterGoogleCloudVisionV1p4beta1Paragraph < 3) {
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVisionV1p4beta1TextAnnotationTextProperty(o.property!);
    checkUnnamed4363(o.words!);
  }
  buildCounterGoogleCloudVisionV1p4beta1Paragraph--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1Position = 0;
api.GoogleCloudVisionV1p4beta1Position
    buildGoogleCloudVisionV1p4beta1Position() {
  final o = api.GoogleCloudVisionV1p4beta1Position();
  buildCounterGoogleCloudVisionV1p4beta1Position++;
  if (buildCounterGoogleCloudVisionV1p4beta1Position < 3) {
    o.x = 42.0;
    o.y = 42.0;
    o.z = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1Position--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1Position(
    api.GoogleCloudVisionV1p4beta1Position o) {
  buildCounterGoogleCloudVisionV1p4beta1Position++;
  if (buildCounterGoogleCloudVisionV1p4beta1Position < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.z!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1Position--;
}

core.List<api.GoogleCloudVisionV1p4beta1ProductKeyValue> buildUnnamed4364() => [
      buildGoogleCloudVisionV1p4beta1ProductKeyValue(),
      buildGoogleCloudVisionV1p4beta1ProductKeyValue(),
    ];

void checkUnnamed4364(
    core.List<api.GoogleCloudVisionV1p4beta1ProductKeyValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1ProductKeyValue(o[0]);
  checkGoogleCloudVisionV1p4beta1ProductKeyValue(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1Product = 0;
api.GoogleCloudVisionV1p4beta1Product buildGoogleCloudVisionV1p4beta1Product() {
  final o = api.GoogleCloudVisionV1p4beta1Product();
  buildCounterGoogleCloudVisionV1p4beta1Product++;
  if (buildCounterGoogleCloudVisionV1p4beta1Product < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.productCategory = 'foo';
    o.productLabels = buildUnnamed4364();
  }
  buildCounterGoogleCloudVisionV1p4beta1Product--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1Product(
    api.GoogleCloudVisionV1p4beta1Product o) {
  buildCounterGoogleCloudVisionV1p4beta1Product++;
  if (buildCounterGoogleCloudVisionV1p4beta1Product < 3) {
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
    unittest.expect(
      o.productCategory!,
      unittest.equals('foo'),
    );
    checkUnnamed4364(o.productLabels!);
  }
  buildCounterGoogleCloudVisionV1p4beta1Product--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1ProductKeyValue = 0;
api.GoogleCloudVisionV1p4beta1ProductKeyValue
    buildGoogleCloudVisionV1p4beta1ProductKeyValue() {
  final o = api.GoogleCloudVisionV1p4beta1ProductKeyValue();
  buildCounterGoogleCloudVisionV1p4beta1ProductKeyValue++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductKeyValue < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductKeyValue--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1ProductKeyValue(
    api.GoogleCloudVisionV1p4beta1ProductKeyValue o) {
  buildCounterGoogleCloudVisionV1p4beta1ProductKeyValue++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductKeyValue < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductKeyValue--;
}

core.List<api.GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult>
    buildUnnamed4365() => [
          buildGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult(),
          buildGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult(),
        ];

void checkUnnamed4365(
    core.List<api.GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult(o[0]);
  checkGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult(o[1]);
}

core.List<api.GoogleCloudVisionV1p4beta1ProductSearchResultsResult>
    buildUnnamed4366() => [
          buildGoogleCloudVisionV1p4beta1ProductSearchResultsResult(),
          buildGoogleCloudVisionV1p4beta1ProductSearchResultsResult(),
        ];

void checkUnnamed4366(
    core.List<api.GoogleCloudVisionV1p4beta1ProductSearchResultsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1ProductSearchResultsResult(o[0]);
  checkGoogleCloudVisionV1p4beta1ProductSearchResultsResult(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1ProductSearchResults = 0;
api.GoogleCloudVisionV1p4beta1ProductSearchResults
    buildGoogleCloudVisionV1p4beta1ProductSearchResults() {
  final o = api.GoogleCloudVisionV1p4beta1ProductSearchResults();
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResults++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductSearchResults < 3) {
    o.indexTime = 'foo';
    o.productGroupedResults = buildUnnamed4365();
    o.results = buildUnnamed4366();
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResults--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1ProductSearchResults(
    api.GoogleCloudVisionV1p4beta1ProductSearchResults o) {
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResults++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductSearchResults < 3) {
    unittest.expect(
      o.indexTime!,
      unittest.equals('foo'),
    );
    checkUnnamed4365(o.productGroupedResults!);
    checkUnnamed4366(o.results!);
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResults--;
}

core.List<api.GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation>
    buildUnnamed4367() => [
          buildGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation(),
          buildGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation(),
        ];

void checkUnnamed4367(
    core.List<
            api.GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation(o[0]);
  checkGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p4beta1ProductSearchResultsResult>
    buildUnnamed4368() => [
          buildGoogleCloudVisionV1p4beta1ProductSearchResultsResult(),
          buildGoogleCloudVisionV1p4beta1ProductSearchResultsResult(),
        ];

void checkUnnamed4368(
    core.List<api.GoogleCloudVisionV1p4beta1ProductSearchResultsResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1ProductSearchResultsResult(o[0]);
  checkGoogleCloudVisionV1p4beta1ProductSearchResultsResult(o[1]);
}

core.int
    buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult = 0;
api.GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult
    buildGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult() {
  final o = api.GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult();
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult <
      3) {
    o.boundingPoly = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.objectAnnotations = buildUnnamed4367();
    o.results = buildUnnamed4368();
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult(
    api.GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult o) {
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult <
      3) {
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.boundingPoly!);
    checkUnnamed4367(o.objectAnnotations!);
    checkUnnamed4368(o.results!);
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult--;
}

core.int
    buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation =
    0;
api.GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation
    buildGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation() {
  final o =
      api.GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation();
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation <
      3) {
    o.languageCode = 'foo';
    o.mid = 'foo';
    o.name = 'foo';
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation(
    api.GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation o) {
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation <
      3) {
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsResult = 0;
api.GoogleCloudVisionV1p4beta1ProductSearchResultsResult
    buildGoogleCloudVisionV1p4beta1ProductSearchResultsResult() {
  final o = api.GoogleCloudVisionV1p4beta1ProductSearchResultsResult();
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsResult++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsResult < 3) {
    o.image = 'foo';
    o.product = buildGoogleCloudVisionV1p4beta1Product();
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsResult--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1ProductSearchResultsResult(
    api.GoogleCloudVisionV1p4beta1ProductSearchResultsResult o) {
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsResult++;
  if (buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsResult < 3) {
    unittest.expect(
      o.image!,
      unittest.equals('foo'),
    );
    checkGoogleCloudVisionV1p4beta1Product(o.product!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1ProductSearchResultsResult--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1Property = 0;
api.GoogleCloudVisionV1p4beta1Property
    buildGoogleCloudVisionV1p4beta1Property() {
  final o = api.GoogleCloudVisionV1p4beta1Property();
  buildCounterGoogleCloudVisionV1p4beta1Property++;
  if (buildCounterGoogleCloudVisionV1p4beta1Property < 3) {
    o.name = 'foo';
    o.uint64Value = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1Property--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1Property(
    api.GoogleCloudVisionV1p4beta1Property o) {
  buildCounterGoogleCloudVisionV1p4beta1Property++;
  if (buildCounterGoogleCloudVisionV1p4beta1Property < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uint64Value!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1Property--;
}

core.List<api.GoogleCloudVisionV1p4beta1BoundingPoly> buildUnnamed4369() => [
      buildGoogleCloudVisionV1p4beta1BoundingPoly(),
      buildGoogleCloudVisionV1p4beta1BoundingPoly(),
    ];

void checkUnnamed4369(core.List<api.GoogleCloudVisionV1p4beta1BoundingPoly> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1BoundingPoly(o[0]);
  checkGoogleCloudVisionV1p4beta1BoundingPoly(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1ReferenceImage = 0;
api.GoogleCloudVisionV1p4beta1ReferenceImage
    buildGoogleCloudVisionV1p4beta1ReferenceImage() {
  final o = api.GoogleCloudVisionV1p4beta1ReferenceImage();
  buildCounterGoogleCloudVisionV1p4beta1ReferenceImage++;
  if (buildCounterGoogleCloudVisionV1p4beta1ReferenceImage < 3) {
    o.boundingPolys = buildUnnamed4369();
    o.name = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1ReferenceImage--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1ReferenceImage(
    api.GoogleCloudVisionV1p4beta1ReferenceImage o) {
  buildCounterGoogleCloudVisionV1p4beta1ReferenceImage++;
  if (buildCounterGoogleCloudVisionV1p4beta1ReferenceImage < 3) {
    checkUnnamed4369(o.boundingPolys!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1ReferenceImage--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1SafeSearchAnnotation = 0;
api.GoogleCloudVisionV1p4beta1SafeSearchAnnotation
    buildGoogleCloudVisionV1p4beta1SafeSearchAnnotation() {
  final o = api.GoogleCloudVisionV1p4beta1SafeSearchAnnotation();
  buildCounterGoogleCloudVisionV1p4beta1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1SafeSearchAnnotation < 3) {
    o.adult = 'foo';
    o.medical = 'foo';
    o.racy = 'foo';
    o.spoof = 'foo';
    o.violence = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1SafeSearchAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1SafeSearchAnnotation(
    api.GoogleCloudVisionV1p4beta1SafeSearchAnnotation o) {
  buildCounterGoogleCloudVisionV1p4beta1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1SafeSearchAnnotation < 3) {
    unittest.expect(
      o.adult!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.medical!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.racy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spoof!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.violence!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1SafeSearchAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1Symbol = 0;
api.GoogleCloudVisionV1p4beta1Symbol buildGoogleCloudVisionV1p4beta1Symbol() {
  final o = api.GoogleCloudVisionV1p4beta1Symbol();
  buildCounterGoogleCloudVisionV1p4beta1Symbol++;
  if (buildCounterGoogleCloudVisionV1p4beta1Symbol < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p4beta1TextAnnotationTextProperty();
    o.text = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1Symbol--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1Symbol(
    api.GoogleCloudVisionV1p4beta1Symbol o) {
  buildCounterGoogleCloudVisionV1p4beta1Symbol++;
  if (buildCounterGoogleCloudVisionV1p4beta1Symbol < 3) {
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVisionV1p4beta1TextAnnotationTextProperty(o.property!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1Symbol--;
}

core.List<api.GoogleCloudVisionV1p4beta1Page> buildUnnamed4370() => [
      buildGoogleCloudVisionV1p4beta1Page(),
      buildGoogleCloudVisionV1p4beta1Page(),
    ];

void checkUnnamed4370(core.List<api.GoogleCloudVisionV1p4beta1Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1Page(o[0]);
  checkGoogleCloudVisionV1p4beta1Page(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1TextAnnotation = 0;
api.GoogleCloudVisionV1p4beta1TextAnnotation
    buildGoogleCloudVisionV1p4beta1TextAnnotation() {
  final o = api.GoogleCloudVisionV1p4beta1TextAnnotation();
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1TextAnnotation < 3) {
    o.pages = buildUnnamed4370();
    o.text = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1TextAnnotation(
    api.GoogleCloudVisionV1p4beta1TextAnnotation o) {
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p4beta1TextAnnotation < 3) {
    checkUnnamed4370(o.pages!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotation--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak = 0;
api.GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak
    buildGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak() {
  final o = api.GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak();
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak++;
  if (buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak < 3) {
    o.isPrefix = true;
    o.type = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak(
    api.GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak o) {
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak++;
  if (buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak < 3) {
    unittest.expect(o.isPrefix!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage =
    0;
api.GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage
    buildGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage() {
  final o = api.GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage();
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage++;
  if (buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage <
      3) {
    o.confidence = 42.0;
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage(
    api.GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage o) {
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage++;
  if (buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage <
      3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage--;
}

core.List<api.GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage>
    buildUnnamed4371() => [
          buildGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage(),
          buildGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage(),
        ];

void checkUnnamed4371(
    core.List<api.GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage(o[0]);
  checkGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1TextAnnotationTextProperty = 0;
api.GoogleCloudVisionV1p4beta1TextAnnotationTextProperty
    buildGoogleCloudVisionV1p4beta1TextAnnotationTextProperty() {
  final o = api.GoogleCloudVisionV1p4beta1TextAnnotationTextProperty();
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p4beta1TextAnnotationTextProperty < 3) {
    o.detectedBreak =
        buildGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak();
    o.detectedLanguages = buildUnnamed4371();
  }
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationTextProperty--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1TextAnnotationTextProperty(
    api.GoogleCloudVisionV1p4beta1TextAnnotationTextProperty o) {
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p4beta1TextAnnotationTextProperty < 3) {
    checkGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak(
        o.detectedBreak!);
    checkUnnamed4371(o.detectedLanguages!);
  }
  buildCounterGoogleCloudVisionV1p4beta1TextAnnotationTextProperty--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1Vertex = 0;
api.GoogleCloudVisionV1p4beta1Vertex buildGoogleCloudVisionV1p4beta1Vertex() {
  final o = api.GoogleCloudVisionV1p4beta1Vertex();
  buildCounterGoogleCloudVisionV1p4beta1Vertex++;
  if (buildCounterGoogleCloudVisionV1p4beta1Vertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudVisionV1p4beta1Vertex--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1Vertex(
    api.GoogleCloudVisionV1p4beta1Vertex o) {
  buildCounterGoogleCloudVisionV1p4beta1Vertex++;
  if (buildCounterGoogleCloudVisionV1p4beta1Vertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1Vertex--;
}

core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebLabel>
    buildUnnamed4372() => [
          buildGoogleCloudVisionV1p4beta1WebDetectionWebLabel(),
          buildGoogleCloudVisionV1p4beta1WebDetectionWebLabel(),
        ];

void checkUnnamed4372(
    core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1WebDetectionWebLabel(o[0]);
  checkGoogleCloudVisionV1p4beta1WebDetectionWebLabel(o[1]);
}

core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage>
    buildUnnamed4373() => [
          buildGoogleCloudVisionV1p4beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p4beta1WebDetectionWebImage(),
        ];

void checkUnnamed4373(
    core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebPage>
    buildUnnamed4374() => [
          buildGoogleCloudVisionV1p4beta1WebDetectionWebPage(),
          buildGoogleCloudVisionV1p4beta1WebDetectionWebPage(),
        ];

void checkUnnamed4374(
    core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1WebDetectionWebPage(o[0]);
  checkGoogleCloudVisionV1p4beta1WebDetectionWebPage(o[1]);
}

core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage>
    buildUnnamed4375() => [
          buildGoogleCloudVisionV1p4beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p4beta1WebDetectionWebImage(),
        ];

void checkUnnamed4375(
    core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage>
    buildUnnamed4376() => [
          buildGoogleCloudVisionV1p4beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p4beta1WebDetectionWebImage(),
        ];

void checkUnnamed4376(
    core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebEntity>
    buildUnnamed4377() => [
          buildGoogleCloudVisionV1p4beta1WebDetectionWebEntity(),
          buildGoogleCloudVisionV1p4beta1WebDetectionWebEntity(),
        ];

void checkUnnamed4377(
    core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1WebDetectionWebEntity(o[0]);
  checkGoogleCloudVisionV1p4beta1WebDetectionWebEntity(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1WebDetection = 0;
api.GoogleCloudVisionV1p4beta1WebDetection
    buildGoogleCloudVisionV1p4beta1WebDetection() {
  final o = api.GoogleCloudVisionV1p4beta1WebDetection();
  buildCounterGoogleCloudVisionV1p4beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetection < 3) {
    o.bestGuessLabels = buildUnnamed4372();
    o.fullMatchingImages = buildUnnamed4373();
    o.pagesWithMatchingImages = buildUnnamed4374();
    o.partialMatchingImages = buildUnnamed4375();
    o.visuallySimilarImages = buildUnnamed4376();
    o.webEntities = buildUnnamed4377();
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetection--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1WebDetection(
    api.GoogleCloudVisionV1p4beta1WebDetection o) {
  buildCounterGoogleCloudVisionV1p4beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetection < 3) {
    checkUnnamed4372(o.bestGuessLabels!);
    checkUnnamed4373(o.fullMatchingImages!);
    checkUnnamed4374(o.pagesWithMatchingImages!);
    checkUnnamed4375(o.partialMatchingImages!);
    checkUnnamed4376(o.visuallySimilarImages!);
    checkUnnamed4377(o.webEntities!);
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetection--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebEntity = 0;
api.GoogleCloudVisionV1p4beta1WebDetectionWebEntity
    buildGoogleCloudVisionV1p4beta1WebDetectionWebEntity() {
  final o = api.GoogleCloudVisionV1p4beta1WebDetectionWebEntity();
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebEntity++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebEntity < 3) {
    o.description = 'foo';
    o.entityId = 'foo';
    o.score = 42.0;
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebEntity--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1WebDetectionWebEntity(
    api.GoogleCloudVisionV1p4beta1WebDetectionWebEntity o) {
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebEntity++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebEntity < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebEntity--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebImage = 0;
api.GoogleCloudVisionV1p4beta1WebDetectionWebImage
    buildGoogleCloudVisionV1p4beta1WebDetectionWebImage() {
  final o = api.GoogleCloudVisionV1p4beta1WebDetectionWebImage();
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebImage++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebImage < 3) {
    o.score = 42.0;
    o.url = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebImage--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(
    api.GoogleCloudVisionV1p4beta1WebDetectionWebImage o) {
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebImage++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebImage < 3) {
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebImage--;
}

core.int buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebLabel = 0;
api.GoogleCloudVisionV1p4beta1WebDetectionWebLabel
    buildGoogleCloudVisionV1p4beta1WebDetectionWebLabel() {
  final o = api.GoogleCloudVisionV1p4beta1WebDetectionWebLabel();
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebLabel++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebLabel < 3) {
    o.label = 'foo';
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebLabel--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1WebDetectionWebLabel(
    api.GoogleCloudVisionV1p4beta1WebDetectionWebLabel o) {
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebLabel++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebLabel < 3) {
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebLabel--;
}

core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage>
    buildUnnamed4378() => [
          buildGoogleCloudVisionV1p4beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p4beta1WebDetectionWebImage(),
        ];

void checkUnnamed4378(
    core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage>
    buildUnnamed4379() => [
          buildGoogleCloudVisionV1p4beta1WebDetectionWebImage(),
          buildGoogleCloudVisionV1p4beta1WebDetectionWebImage(),
        ];

void checkUnnamed4379(
    core.List<api.GoogleCloudVisionV1p4beta1WebDetectionWebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebPage = 0;
api.GoogleCloudVisionV1p4beta1WebDetectionWebPage
    buildGoogleCloudVisionV1p4beta1WebDetectionWebPage() {
  final o = api.GoogleCloudVisionV1p4beta1WebDetectionWebPage();
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebPage++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebPage < 3) {
    o.fullMatchingImages = buildUnnamed4378();
    o.pageTitle = 'foo';
    o.partialMatchingImages = buildUnnamed4379();
    o.score = 42.0;
    o.url = 'foo';
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebPage--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1WebDetectionWebPage(
    api.GoogleCloudVisionV1p4beta1WebDetectionWebPage o) {
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebPage++;
  if (buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebPage < 3) {
    checkUnnamed4378(o.fullMatchingImages!);
    unittest.expect(
      o.pageTitle!,
      unittest.equals('foo'),
    );
    checkUnnamed4379(o.partialMatchingImages!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudVisionV1p4beta1WebDetectionWebPage--;
}

core.List<api.GoogleCloudVisionV1p4beta1Symbol> buildUnnamed4380() => [
      buildGoogleCloudVisionV1p4beta1Symbol(),
      buildGoogleCloudVisionV1p4beta1Symbol(),
    ];

void checkUnnamed4380(core.List<api.GoogleCloudVisionV1p4beta1Symbol> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p4beta1Symbol(o[0]);
  checkGoogleCloudVisionV1p4beta1Symbol(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p4beta1Word = 0;
api.GoogleCloudVisionV1p4beta1Word buildGoogleCloudVisionV1p4beta1Word() {
  final o = api.GoogleCloudVisionV1p4beta1Word();
  buildCounterGoogleCloudVisionV1p4beta1Word++;
  if (buildCounterGoogleCloudVisionV1p4beta1Word < 3) {
    o.boundingBox = buildGoogleCloudVisionV1p4beta1BoundingPoly();
    o.confidence = 42.0;
    o.property = buildGoogleCloudVisionV1p4beta1TextAnnotationTextProperty();
    o.symbols = buildUnnamed4380();
  }
  buildCounterGoogleCloudVisionV1p4beta1Word--;
  return o;
}

void checkGoogleCloudVisionV1p4beta1Word(api.GoogleCloudVisionV1p4beta1Word o) {
  buildCounterGoogleCloudVisionV1p4beta1Word++;
  if (buildCounterGoogleCloudVisionV1p4beta1Word < 3) {
    checkGoogleCloudVisionV1p4beta1BoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkGoogleCloudVisionV1p4beta1TextAnnotationTextProperty(o.property!);
    checkUnnamed4380(o.symbols!);
  }
  buildCounterGoogleCloudVisionV1p4beta1Word--;
}

core.List<api.ObjectAnnotation> buildUnnamed4381() => [
      buildObjectAnnotation(),
      buildObjectAnnotation(),
    ];

void checkUnnamed4381(core.List<api.ObjectAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectAnnotation(o[0]);
  checkObjectAnnotation(o[1]);
}

core.List<api.Result> buildUnnamed4382() => [
      buildResult(),
      buildResult(),
    ];

void checkUnnamed4382(core.List<api.Result> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResult(o[0]);
  checkResult(o[1]);
}

core.int buildCounterGroupedResult = 0;
api.GroupedResult buildGroupedResult() {
  final o = api.GroupedResult();
  buildCounterGroupedResult++;
  if (buildCounterGroupedResult < 3) {
    o.boundingPoly = buildBoundingPoly();
    o.objectAnnotations = buildUnnamed4381();
    o.results = buildUnnamed4382();
  }
  buildCounterGroupedResult--;
  return o;
}

void checkGroupedResult(api.GroupedResult o) {
  buildCounterGroupedResult++;
  if (buildCounterGroupedResult < 3) {
    checkBoundingPoly(o.boundingPoly!);
    checkUnnamed4381(o.objectAnnotations!);
    checkUnnamed4382(o.results!);
  }
  buildCounterGroupedResult--;
}

core.int buildCounterImage = 0;
api.Image buildImage() {
  final o = api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.content = 'foo';
    o.source = buildImageSource();
  }
  buildCounterImage--;
  return o;
}

void checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkImageSource(o.source!);
  }
  buildCounterImage--;
}

core.int buildCounterImageAnnotationContext = 0;
api.ImageAnnotationContext buildImageAnnotationContext() {
  final o = api.ImageAnnotationContext();
  buildCounterImageAnnotationContext++;
  if (buildCounterImageAnnotationContext < 3) {
    o.pageNumber = 42;
    o.uri = 'foo';
  }
  buildCounterImageAnnotationContext--;
  return o;
}

void checkImageAnnotationContext(api.ImageAnnotationContext o) {
  buildCounterImageAnnotationContext++;
  if (buildCounterImageAnnotationContext < 3) {
    unittest.expect(
      o.pageNumber!,
      unittest.equals(42),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterImageAnnotationContext--;
}

core.List<core.String> buildUnnamed4383() => [
      'foo',
      'foo',
    ];

void checkUnnamed4383(core.List<core.String> o) {
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

core.int buildCounterImageContext = 0;
api.ImageContext buildImageContext() {
  final o = api.ImageContext();
  buildCounterImageContext++;
  if (buildCounterImageContext < 3) {
    o.cropHintsParams = buildCropHintsParams();
    o.languageHints = buildUnnamed4383();
    o.latLongRect = buildLatLongRect();
    o.productSearchParams = buildProductSearchParams();
    o.textDetectionParams = buildTextDetectionParams();
    o.webDetectionParams = buildWebDetectionParams();
  }
  buildCounterImageContext--;
  return o;
}

void checkImageContext(api.ImageContext o) {
  buildCounterImageContext++;
  if (buildCounterImageContext < 3) {
    checkCropHintsParams(o.cropHintsParams!);
    checkUnnamed4383(o.languageHints!);
    checkLatLongRect(o.latLongRect!);
    checkProductSearchParams(o.productSearchParams!);
    checkTextDetectionParams(o.textDetectionParams!);
    checkWebDetectionParams(o.webDetectionParams!);
  }
  buildCounterImageContext--;
}

core.int buildCounterImageProperties = 0;
api.ImageProperties buildImageProperties() {
  final o = api.ImageProperties();
  buildCounterImageProperties++;
  if (buildCounterImageProperties < 3) {
    o.dominantColors = buildDominantColorsAnnotation();
  }
  buildCounterImageProperties--;
  return o;
}

void checkImageProperties(api.ImageProperties o) {
  buildCounterImageProperties++;
  if (buildCounterImageProperties < 3) {
    checkDominantColorsAnnotation(o.dominantColors!);
  }
  buildCounterImageProperties--;
}

core.int buildCounterImageSource = 0;
api.ImageSource buildImageSource() {
  final o = api.ImageSource();
  buildCounterImageSource++;
  if (buildCounterImageSource < 3) {
    o.gcsImageUri = 'foo';
    o.imageUri = 'foo';
  }
  buildCounterImageSource--;
  return o;
}

void checkImageSource(api.ImageSource o) {
  buildCounterImageSource++;
  if (buildCounterImageSource < 3) {
    unittest.expect(
      o.gcsImageUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterImageSource--;
}

core.int buildCounterImportProductSetsGcsSource = 0;
api.ImportProductSetsGcsSource buildImportProductSetsGcsSource() {
  final o = api.ImportProductSetsGcsSource();
  buildCounterImportProductSetsGcsSource++;
  if (buildCounterImportProductSetsGcsSource < 3) {
    o.csvFileUri = 'foo';
  }
  buildCounterImportProductSetsGcsSource--;
  return o;
}

void checkImportProductSetsGcsSource(api.ImportProductSetsGcsSource o) {
  buildCounterImportProductSetsGcsSource++;
  if (buildCounterImportProductSetsGcsSource < 3) {
    unittest.expect(
      o.csvFileUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterImportProductSetsGcsSource--;
}

core.int buildCounterImportProductSetsInputConfig = 0;
api.ImportProductSetsInputConfig buildImportProductSetsInputConfig() {
  final o = api.ImportProductSetsInputConfig();
  buildCounterImportProductSetsInputConfig++;
  if (buildCounterImportProductSetsInputConfig < 3) {
    o.gcsSource = buildImportProductSetsGcsSource();
  }
  buildCounterImportProductSetsInputConfig--;
  return o;
}

void checkImportProductSetsInputConfig(api.ImportProductSetsInputConfig o) {
  buildCounterImportProductSetsInputConfig++;
  if (buildCounterImportProductSetsInputConfig < 3) {
    checkImportProductSetsGcsSource(o.gcsSource!);
  }
  buildCounterImportProductSetsInputConfig--;
}

core.int buildCounterImportProductSetsRequest = 0;
api.ImportProductSetsRequest buildImportProductSetsRequest() {
  final o = api.ImportProductSetsRequest();
  buildCounterImportProductSetsRequest++;
  if (buildCounterImportProductSetsRequest < 3) {
    o.inputConfig = buildImportProductSetsInputConfig();
  }
  buildCounterImportProductSetsRequest--;
  return o;
}

void checkImportProductSetsRequest(api.ImportProductSetsRequest o) {
  buildCounterImportProductSetsRequest++;
  if (buildCounterImportProductSetsRequest < 3) {
    checkImportProductSetsInputConfig(o.inputConfig!);
  }
  buildCounterImportProductSetsRequest--;
}

core.List<api.ReferenceImage> buildUnnamed4384() => [
      buildReferenceImage(),
      buildReferenceImage(),
    ];

void checkUnnamed4384(core.List<api.ReferenceImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReferenceImage(o[0]);
  checkReferenceImage(o[1]);
}

core.List<api.Status> buildUnnamed4385() => [
      buildStatus(),
      buildStatus(),
    ];

void checkUnnamed4385(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.int buildCounterImportProductSetsResponse = 0;
api.ImportProductSetsResponse buildImportProductSetsResponse() {
  final o = api.ImportProductSetsResponse();
  buildCounterImportProductSetsResponse++;
  if (buildCounterImportProductSetsResponse < 3) {
    o.referenceImages = buildUnnamed4384();
    o.statuses = buildUnnamed4385();
  }
  buildCounterImportProductSetsResponse--;
  return o;
}

void checkImportProductSetsResponse(api.ImportProductSetsResponse o) {
  buildCounterImportProductSetsResponse++;
  if (buildCounterImportProductSetsResponse < 3) {
    checkUnnamed4384(o.referenceImages!);
    checkUnnamed4385(o.statuses!);
  }
  buildCounterImportProductSetsResponse--;
}

core.int buildCounterInputConfig = 0;
api.InputConfig buildInputConfig() {
  final o = api.InputConfig();
  buildCounterInputConfig++;
  if (buildCounterInputConfig < 3) {
    o.content = 'foo';
    o.gcsSource = buildGcsSource();
    o.mimeType = 'foo';
  }
  buildCounterInputConfig--;
  return o;
}

void checkInputConfig(api.InputConfig o) {
  buildCounterInputConfig++;
  if (buildCounterInputConfig < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkGcsSource(o.gcsSource!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterInputConfig--;
}

core.int buildCounterKeyValue = 0;
api.KeyValue buildKeyValue() {
  final o = api.KeyValue();
  buildCounterKeyValue++;
  if (buildCounterKeyValue < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterKeyValue--;
  return o;
}

void checkKeyValue(api.KeyValue o) {
  buildCounterKeyValue++;
  if (buildCounterKeyValue < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterKeyValue--;
}

core.int buildCounterLandmark = 0;
api.Landmark buildLandmark() {
  final o = api.Landmark();
  buildCounterLandmark++;
  if (buildCounterLandmark < 3) {
    o.position = buildPosition();
    o.type = 'foo';
  }
  buildCounterLandmark--;
  return o;
}

void checkLandmark(api.Landmark o) {
  buildCounterLandmark++;
  if (buildCounterLandmark < 3) {
    checkPosition(o.position!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterLandmark--;
}

core.int buildCounterLatLng = 0;
api.LatLng buildLatLng() {
  final o = api.LatLng();
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterLatLng--;
  return o;
}

void checkLatLng(api.LatLng o) {
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    unittest.expect(
      o.latitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.longitude!,
      unittest.equals(42.0),
    );
  }
  buildCounterLatLng--;
}

core.int buildCounterLatLongRect = 0;
api.LatLongRect buildLatLongRect() {
  final o = api.LatLongRect();
  buildCounterLatLongRect++;
  if (buildCounterLatLongRect < 3) {
    o.maxLatLng = buildLatLng();
    o.minLatLng = buildLatLng();
  }
  buildCounterLatLongRect--;
  return o;
}

void checkLatLongRect(api.LatLongRect o) {
  buildCounterLatLongRect++;
  if (buildCounterLatLongRect < 3) {
    checkLatLng(o.maxLatLng!);
    checkLatLng(o.minLatLng!);
  }
  buildCounterLatLongRect--;
}

core.List<api.Operation> buildUnnamed4386() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed4386(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed4386();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4386(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.ProductSet> buildUnnamed4387() => [
      buildProductSet(),
      buildProductSet(),
    ];

void checkUnnamed4387(core.List<api.ProductSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductSet(o[0]);
  checkProductSet(o[1]);
}

core.int buildCounterListProductSetsResponse = 0;
api.ListProductSetsResponse buildListProductSetsResponse() {
  final o = api.ListProductSetsResponse();
  buildCounterListProductSetsResponse++;
  if (buildCounterListProductSetsResponse < 3) {
    o.nextPageToken = 'foo';
    o.productSets = buildUnnamed4387();
  }
  buildCounterListProductSetsResponse--;
  return o;
}

void checkListProductSetsResponse(api.ListProductSetsResponse o) {
  buildCounterListProductSetsResponse++;
  if (buildCounterListProductSetsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4387(o.productSets!);
  }
  buildCounterListProductSetsResponse--;
}

core.List<api.Product> buildUnnamed4388() => [
      buildProduct(),
      buildProduct(),
    ];

void checkUnnamed4388(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0]);
  checkProduct(o[1]);
}

core.int buildCounterListProductsInProductSetResponse = 0;
api.ListProductsInProductSetResponse buildListProductsInProductSetResponse() {
  final o = api.ListProductsInProductSetResponse();
  buildCounterListProductsInProductSetResponse++;
  if (buildCounterListProductsInProductSetResponse < 3) {
    o.nextPageToken = 'foo';
    o.products = buildUnnamed4388();
  }
  buildCounterListProductsInProductSetResponse--;
  return o;
}

void checkListProductsInProductSetResponse(
    api.ListProductsInProductSetResponse o) {
  buildCounterListProductsInProductSetResponse++;
  if (buildCounterListProductsInProductSetResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4388(o.products!);
  }
  buildCounterListProductsInProductSetResponse--;
}

core.List<api.Product> buildUnnamed4389() => [
      buildProduct(),
      buildProduct(),
    ];

void checkUnnamed4389(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0]);
  checkProduct(o[1]);
}

core.int buildCounterListProductsResponse = 0;
api.ListProductsResponse buildListProductsResponse() {
  final o = api.ListProductsResponse();
  buildCounterListProductsResponse++;
  if (buildCounterListProductsResponse < 3) {
    o.nextPageToken = 'foo';
    o.products = buildUnnamed4389();
  }
  buildCounterListProductsResponse--;
  return o;
}

void checkListProductsResponse(api.ListProductsResponse o) {
  buildCounterListProductsResponse++;
  if (buildCounterListProductsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4389(o.products!);
  }
  buildCounterListProductsResponse--;
}

core.List<api.ReferenceImage> buildUnnamed4390() => [
      buildReferenceImage(),
      buildReferenceImage(),
    ];

void checkUnnamed4390(core.List<api.ReferenceImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReferenceImage(o[0]);
  checkReferenceImage(o[1]);
}

core.int buildCounterListReferenceImagesResponse = 0;
api.ListReferenceImagesResponse buildListReferenceImagesResponse() {
  final o = api.ListReferenceImagesResponse();
  buildCounterListReferenceImagesResponse++;
  if (buildCounterListReferenceImagesResponse < 3) {
    o.nextPageToken = 'foo';
    o.pageSize = 42;
    o.referenceImages = buildUnnamed4390();
  }
  buildCounterListReferenceImagesResponse--;
  return o;
}

void checkListReferenceImagesResponse(api.ListReferenceImagesResponse o) {
  buildCounterListReferenceImagesResponse++;
  if (buildCounterListReferenceImagesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    checkUnnamed4390(o.referenceImages!);
  }
  buildCounterListReferenceImagesResponse--;
}

core.int buildCounterLocalizedObjectAnnotation = 0;
api.LocalizedObjectAnnotation buildLocalizedObjectAnnotation() {
  final o = api.LocalizedObjectAnnotation();
  buildCounterLocalizedObjectAnnotation++;
  if (buildCounterLocalizedObjectAnnotation < 3) {
    o.boundingPoly = buildBoundingPoly();
    o.languageCode = 'foo';
    o.mid = 'foo';
    o.name = 'foo';
    o.score = 42.0;
  }
  buildCounterLocalizedObjectAnnotation--;
  return o;
}

void checkLocalizedObjectAnnotation(api.LocalizedObjectAnnotation o) {
  buildCounterLocalizedObjectAnnotation++;
  if (buildCounterLocalizedObjectAnnotation < 3) {
    checkBoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterLocalizedObjectAnnotation--;
}

core.int buildCounterLocationInfo = 0;
api.LocationInfo buildLocationInfo() {
  final o = api.LocationInfo();
  buildCounterLocationInfo++;
  if (buildCounterLocationInfo < 3) {
    o.latLng = buildLatLng();
  }
  buildCounterLocationInfo--;
  return o;
}

void checkLocationInfo(api.LocationInfo o) {
  buildCounterLocationInfo++;
  if (buildCounterLocationInfo < 3) {
    checkLatLng(o.latLng!);
  }
  buildCounterLocationInfo--;
}

core.int buildCounterNormalizedVertex = 0;
api.NormalizedVertex buildNormalizedVertex() {
  final o = api.NormalizedVertex();
  buildCounterNormalizedVertex++;
  if (buildCounterNormalizedVertex < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterNormalizedVertex--;
  return o;
}

void checkNormalizedVertex(api.NormalizedVertex o) {
  buildCounterNormalizedVertex++;
  if (buildCounterNormalizedVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterNormalizedVertex--;
}

core.int buildCounterObjectAnnotation = 0;
api.ObjectAnnotation buildObjectAnnotation() {
  final o = api.ObjectAnnotation();
  buildCounterObjectAnnotation++;
  if (buildCounterObjectAnnotation < 3) {
    o.languageCode = 'foo';
    o.mid = 'foo';
    o.name = 'foo';
    o.score = 42.0;
  }
  buildCounterObjectAnnotation--;
  return o;
}

void checkObjectAnnotation(api.ObjectAnnotation o) {
  buildCounterObjectAnnotation++;
  if (buildCounterObjectAnnotation < 3) {
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterObjectAnnotation--;
}

core.Map<core.String, core.Object> buildUnnamed4391() => {
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

void checkUnnamed4391(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed4392() => {
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

void checkUnnamed4392(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed4391();
    o.name = 'foo';
    o.response = buildUnnamed4392();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed4391(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed4392(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationMetadata = 0;
api.OperationMetadata buildOperationMetadata() {
  final o = api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.createTime = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterOperationMetadata--;
  return o;
}

void checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationMetadata--;
}

core.int buildCounterOutputConfig = 0;
api.OutputConfig buildOutputConfig() {
  final o = api.OutputConfig();
  buildCounterOutputConfig++;
  if (buildCounterOutputConfig < 3) {
    o.batchSize = 42;
    o.gcsDestination = buildGcsDestination();
  }
  buildCounterOutputConfig--;
  return o;
}

void checkOutputConfig(api.OutputConfig o) {
  buildCounterOutputConfig++;
  if (buildCounterOutputConfig < 3) {
    unittest.expect(
      o.batchSize!,
      unittest.equals(42),
    );
    checkGcsDestination(o.gcsDestination!);
  }
  buildCounterOutputConfig--;
}

core.List<api.Block> buildUnnamed4393() => [
      buildBlock(),
      buildBlock(),
    ];

void checkUnnamed4393(core.List<api.Block> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBlock(o[0]);
  checkBlock(o[1]);
}

core.int buildCounterPage = 0;
api.Page buildPage() {
  final o = api.Page();
  buildCounterPage++;
  if (buildCounterPage < 3) {
    o.blocks = buildUnnamed4393();
    o.confidence = 42.0;
    o.height = 42;
    o.property = buildTextProperty();
    o.width = 42;
  }
  buildCounterPage--;
  return o;
}

void checkPage(api.Page o) {
  buildCounterPage++;
  if (buildCounterPage < 3) {
    checkUnnamed4393(o.blocks!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    checkTextProperty(o.property!);
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterPage--;
}

core.List<api.Word> buildUnnamed4394() => [
      buildWord(),
      buildWord(),
    ];

void checkUnnamed4394(core.List<api.Word> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWord(o[0]);
  checkWord(o[1]);
}

core.int buildCounterParagraph = 0;
api.Paragraph buildParagraph() {
  final o = api.Paragraph();
  buildCounterParagraph++;
  if (buildCounterParagraph < 3) {
    o.boundingBox = buildBoundingPoly();
    o.confidence = 42.0;
    o.property = buildTextProperty();
    o.words = buildUnnamed4394();
  }
  buildCounterParagraph--;
  return o;
}

void checkParagraph(api.Paragraph o) {
  buildCounterParagraph++;
  if (buildCounterParagraph < 3) {
    checkBoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkTextProperty(o.property!);
    checkUnnamed4394(o.words!);
  }
  buildCounterParagraph--;
}

core.int buildCounterPosition = 0;
api.Position buildPosition() {
  final o = api.Position();
  buildCounterPosition++;
  if (buildCounterPosition < 3) {
    o.x = 42.0;
    o.y = 42.0;
    o.z = 42.0;
  }
  buildCounterPosition--;
  return o;
}

void checkPosition(api.Position o) {
  buildCounterPosition++;
  if (buildCounterPosition < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.z!,
      unittest.equals(42.0),
    );
  }
  buildCounterPosition--;
}

core.List<api.KeyValue> buildUnnamed4395() => [
      buildKeyValue(),
      buildKeyValue(),
    ];

void checkUnnamed4395(core.List<api.KeyValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyValue(o[0]);
  checkKeyValue(o[1]);
}

core.int buildCounterProduct = 0;
api.Product buildProduct() {
  final o = api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.productCategory = 'foo';
    o.productLabels = buildUnnamed4395();
  }
  buildCounterProduct--;
  return o;
}

void checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
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
    unittest.expect(
      o.productCategory!,
      unittest.equals('foo'),
    );
    checkUnnamed4395(o.productLabels!);
  }
  buildCounterProduct--;
}

core.List<core.String> buildUnnamed4396() => [
      'foo',
      'foo',
    ];

void checkUnnamed4396(core.List<core.String> o) {
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

core.int buildCounterProductSearchParams = 0;
api.ProductSearchParams buildProductSearchParams() {
  final o = api.ProductSearchParams();
  buildCounterProductSearchParams++;
  if (buildCounterProductSearchParams < 3) {
    o.boundingPoly = buildBoundingPoly();
    o.filter = 'foo';
    o.productCategories = buildUnnamed4396();
    o.productSet = 'foo';
  }
  buildCounterProductSearchParams--;
  return o;
}

void checkProductSearchParams(api.ProductSearchParams o) {
  buildCounterProductSearchParams++;
  if (buildCounterProductSearchParams < 3) {
    checkBoundingPoly(o.boundingPoly!);
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    checkUnnamed4396(o.productCategories!);
    unittest.expect(
      o.productSet!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductSearchParams--;
}

core.List<api.GroupedResult> buildUnnamed4397() => [
      buildGroupedResult(),
      buildGroupedResult(),
    ];

void checkUnnamed4397(core.List<api.GroupedResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupedResult(o[0]);
  checkGroupedResult(o[1]);
}

core.List<api.Result> buildUnnamed4398() => [
      buildResult(),
      buildResult(),
    ];

void checkUnnamed4398(core.List<api.Result> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResult(o[0]);
  checkResult(o[1]);
}

core.int buildCounterProductSearchResults = 0;
api.ProductSearchResults buildProductSearchResults() {
  final o = api.ProductSearchResults();
  buildCounterProductSearchResults++;
  if (buildCounterProductSearchResults < 3) {
    o.indexTime = 'foo';
    o.productGroupedResults = buildUnnamed4397();
    o.results = buildUnnamed4398();
  }
  buildCounterProductSearchResults--;
  return o;
}

void checkProductSearchResults(api.ProductSearchResults o) {
  buildCounterProductSearchResults++;
  if (buildCounterProductSearchResults < 3) {
    unittest.expect(
      o.indexTime!,
      unittest.equals('foo'),
    );
    checkUnnamed4397(o.productGroupedResults!);
    checkUnnamed4398(o.results!);
  }
  buildCounterProductSearchResults--;
}

core.int buildCounterProductSet = 0;
api.ProductSet buildProductSet() {
  final o = api.ProductSet();
  buildCounterProductSet++;
  if (buildCounterProductSet < 3) {
    o.displayName = 'foo';
    o.indexError = buildStatus();
    o.indexTime = 'foo';
    o.name = 'foo';
  }
  buildCounterProductSet--;
  return o;
}

void checkProductSet(api.ProductSet o) {
  buildCounterProductSet++;
  if (buildCounterProductSet < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkStatus(o.indexError!);
    unittest.expect(
      o.indexTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductSet--;
}

core.int buildCounterProductSetPurgeConfig = 0;
api.ProductSetPurgeConfig buildProductSetPurgeConfig() {
  final o = api.ProductSetPurgeConfig();
  buildCounterProductSetPurgeConfig++;
  if (buildCounterProductSetPurgeConfig < 3) {
    o.productSetId = 'foo';
  }
  buildCounterProductSetPurgeConfig--;
  return o;
}

void checkProductSetPurgeConfig(api.ProductSetPurgeConfig o) {
  buildCounterProductSetPurgeConfig++;
  if (buildCounterProductSetPurgeConfig < 3) {
    unittest.expect(
      o.productSetId!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductSetPurgeConfig--;
}

core.int buildCounterProperty = 0;
api.Property buildProperty() {
  final o = api.Property();
  buildCounterProperty++;
  if (buildCounterProperty < 3) {
    o.name = 'foo';
    o.uint64Value = 'foo';
    o.value = 'foo';
  }
  buildCounterProperty--;
  return o;
}

void checkProperty(api.Property o) {
  buildCounterProperty++;
  if (buildCounterProperty < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uint64Value!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterProperty--;
}

core.int buildCounterPurgeProductsRequest = 0;
api.PurgeProductsRequest buildPurgeProductsRequest() {
  final o = api.PurgeProductsRequest();
  buildCounterPurgeProductsRequest++;
  if (buildCounterPurgeProductsRequest < 3) {
    o.deleteOrphanProducts = true;
    o.force = true;
    o.productSetPurgeConfig = buildProductSetPurgeConfig();
  }
  buildCounterPurgeProductsRequest--;
  return o;
}

void checkPurgeProductsRequest(api.PurgeProductsRequest o) {
  buildCounterPurgeProductsRequest++;
  if (buildCounterPurgeProductsRequest < 3) {
    unittest.expect(o.deleteOrphanProducts!, unittest.isTrue);
    unittest.expect(o.force!, unittest.isTrue);
    checkProductSetPurgeConfig(o.productSetPurgeConfig!);
  }
  buildCounterPurgeProductsRequest--;
}

core.List<api.BoundingPoly> buildUnnamed4399() => [
      buildBoundingPoly(),
      buildBoundingPoly(),
    ];

void checkUnnamed4399(core.List<api.BoundingPoly> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBoundingPoly(o[0]);
  checkBoundingPoly(o[1]);
}

core.int buildCounterReferenceImage = 0;
api.ReferenceImage buildReferenceImage() {
  final o = api.ReferenceImage();
  buildCounterReferenceImage++;
  if (buildCounterReferenceImage < 3) {
    o.boundingPolys = buildUnnamed4399();
    o.name = 'foo';
    o.uri = 'foo';
  }
  buildCounterReferenceImage--;
  return o;
}

void checkReferenceImage(api.ReferenceImage o) {
  buildCounterReferenceImage++;
  if (buildCounterReferenceImage < 3) {
    checkUnnamed4399(o.boundingPolys!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterReferenceImage--;
}

core.int buildCounterRemoveProductFromProductSetRequest = 0;
api.RemoveProductFromProductSetRequest
    buildRemoveProductFromProductSetRequest() {
  final o = api.RemoveProductFromProductSetRequest();
  buildCounterRemoveProductFromProductSetRequest++;
  if (buildCounterRemoveProductFromProductSetRequest < 3) {
    o.product = 'foo';
  }
  buildCounterRemoveProductFromProductSetRequest--;
  return o;
}

void checkRemoveProductFromProductSetRequest(
    api.RemoveProductFromProductSetRequest o) {
  buildCounterRemoveProductFromProductSetRequest++;
  if (buildCounterRemoveProductFromProductSetRequest < 3) {
    unittest.expect(
      o.product!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemoveProductFromProductSetRequest--;
}

core.int buildCounterResult = 0;
api.Result buildResult() {
  final o = api.Result();
  buildCounterResult++;
  if (buildCounterResult < 3) {
    o.image = 'foo';
    o.product = buildProduct();
    o.score = 42.0;
  }
  buildCounterResult--;
  return o;
}

void checkResult(api.Result o) {
  buildCounterResult++;
  if (buildCounterResult < 3) {
    unittest.expect(
      o.image!,
      unittest.equals('foo'),
    );
    checkProduct(o.product!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterResult--;
}

core.int buildCounterSafeSearchAnnotation = 0;
api.SafeSearchAnnotation buildSafeSearchAnnotation() {
  final o = api.SafeSearchAnnotation();
  buildCounterSafeSearchAnnotation++;
  if (buildCounterSafeSearchAnnotation < 3) {
    o.adult = 'foo';
    o.medical = 'foo';
    o.racy = 'foo';
    o.spoof = 'foo';
    o.violence = 'foo';
  }
  buildCounterSafeSearchAnnotation--;
  return o;
}

void checkSafeSearchAnnotation(api.SafeSearchAnnotation o) {
  buildCounterSafeSearchAnnotation++;
  if (buildCounterSafeSearchAnnotation < 3) {
    unittest.expect(
      o.adult!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.medical!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.racy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spoof!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.violence!,
      unittest.equals('foo'),
    );
  }
  buildCounterSafeSearchAnnotation--;
}

core.Map<core.String, core.Object> buildUnnamed4400() => {
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

void checkUnnamed4400(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed4401() => [
      buildUnnamed4400(),
      buildUnnamed4400(),
    ];

void checkUnnamed4401(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4400(o[0]);
  checkUnnamed4400(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4401();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed4401(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterSymbol = 0;
api.Symbol buildSymbol() {
  final o = api.Symbol();
  buildCounterSymbol++;
  if (buildCounterSymbol < 3) {
    o.boundingBox = buildBoundingPoly();
    o.confidence = 42.0;
    o.property = buildTextProperty();
    o.text = 'foo';
  }
  buildCounterSymbol--;
  return o;
}

void checkSymbol(api.Symbol o) {
  buildCounterSymbol++;
  if (buildCounterSymbol < 3) {
    checkBoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkTextProperty(o.property!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterSymbol--;
}

core.List<api.Page> buildUnnamed4402() => [
      buildPage(),
      buildPage(),
    ];

void checkUnnamed4402(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0]);
  checkPage(o[1]);
}

core.int buildCounterTextAnnotation = 0;
api.TextAnnotation buildTextAnnotation() {
  final o = api.TextAnnotation();
  buildCounterTextAnnotation++;
  if (buildCounterTextAnnotation < 3) {
    o.pages = buildUnnamed4402();
    o.text = 'foo';
  }
  buildCounterTextAnnotation--;
  return o;
}

void checkTextAnnotation(api.TextAnnotation o) {
  buildCounterTextAnnotation++;
  if (buildCounterTextAnnotation < 3) {
    checkUnnamed4402(o.pages!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterTextAnnotation--;
}

core.int buildCounterTextDetectionParams = 0;
api.TextDetectionParams buildTextDetectionParams() {
  final o = api.TextDetectionParams();
  buildCounterTextDetectionParams++;
  if (buildCounterTextDetectionParams < 3) {
    o.enableTextDetectionConfidenceScore = true;
  }
  buildCounterTextDetectionParams--;
  return o;
}

void checkTextDetectionParams(api.TextDetectionParams o) {
  buildCounterTextDetectionParams++;
  if (buildCounterTextDetectionParams < 3) {
    unittest.expect(o.enableTextDetectionConfidenceScore!, unittest.isTrue);
  }
  buildCounterTextDetectionParams--;
}

core.List<api.DetectedLanguage> buildUnnamed4403() => [
      buildDetectedLanguage(),
      buildDetectedLanguage(),
    ];

void checkUnnamed4403(core.List<api.DetectedLanguage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetectedLanguage(o[0]);
  checkDetectedLanguage(o[1]);
}

core.int buildCounterTextProperty = 0;
api.TextProperty buildTextProperty() {
  final o = api.TextProperty();
  buildCounterTextProperty++;
  if (buildCounterTextProperty < 3) {
    o.detectedBreak = buildDetectedBreak();
    o.detectedLanguages = buildUnnamed4403();
  }
  buildCounterTextProperty--;
  return o;
}

void checkTextProperty(api.TextProperty o) {
  buildCounterTextProperty++;
  if (buildCounterTextProperty < 3) {
    checkDetectedBreak(o.detectedBreak!);
    checkUnnamed4403(o.detectedLanguages!);
  }
  buildCounterTextProperty--;
}

core.int buildCounterVertex = 0;
api.Vertex buildVertex() {
  final o = api.Vertex();
  buildCounterVertex++;
  if (buildCounterVertex < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterVertex--;
  return o;
}

void checkVertex(api.Vertex o) {
  buildCounterVertex++;
  if (buildCounterVertex < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42),
    );
  }
  buildCounterVertex--;
}

core.List<api.WebLabel> buildUnnamed4404() => [
      buildWebLabel(),
      buildWebLabel(),
    ];

void checkUnnamed4404(core.List<api.WebLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebLabel(o[0]);
  checkWebLabel(o[1]);
}

core.List<api.WebImage> buildUnnamed4405() => [
      buildWebImage(),
      buildWebImage(),
    ];

void checkUnnamed4405(core.List<api.WebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebImage(o[0]);
  checkWebImage(o[1]);
}

core.List<api.WebPage> buildUnnamed4406() => [
      buildWebPage(),
      buildWebPage(),
    ];

void checkUnnamed4406(core.List<api.WebPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebPage(o[0]);
  checkWebPage(o[1]);
}

core.List<api.WebImage> buildUnnamed4407() => [
      buildWebImage(),
      buildWebImage(),
    ];

void checkUnnamed4407(core.List<api.WebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebImage(o[0]);
  checkWebImage(o[1]);
}

core.List<api.WebImage> buildUnnamed4408() => [
      buildWebImage(),
      buildWebImage(),
    ];

void checkUnnamed4408(core.List<api.WebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebImage(o[0]);
  checkWebImage(o[1]);
}

core.List<api.WebEntity> buildUnnamed4409() => [
      buildWebEntity(),
      buildWebEntity(),
    ];

void checkUnnamed4409(core.List<api.WebEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebEntity(o[0]);
  checkWebEntity(o[1]);
}

core.int buildCounterWebDetection = 0;
api.WebDetection buildWebDetection() {
  final o = api.WebDetection();
  buildCounterWebDetection++;
  if (buildCounterWebDetection < 3) {
    o.bestGuessLabels = buildUnnamed4404();
    o.fullMatchingImages = buildUnnamed4405();
    o.pagesWithMatchingImages = buildUnnamed4406();
    o.partialMatchingImages = buildUnnamed4407();
    o.visuallySimilarImages = buildUnnamed4408();
    o.webEntities = buildUnnamed4409();
  }
  buildCounterWebDetection--;
  return o;
}

void checkWebDetection(api.WebDetection o) {
  buildCounterWebDetection++;
  if (buildCounterWebDetection < 3) {
    checkUnnamed4404(o.bestGuessLabels!);
    checkUnnamed4405(o.fullMatchingImages!);
    checkUnnamed4406(o.pagesWithMatchingImages!);
    checkUnnamed4407(o.partialMatchingImages!);
    checkUnnamed4408(o.visuallySimilarImages!);
    checkUnnamed4409(o.webEntities!);
  }
  buildCounterWebDetection--;
}

core.int buildCounterWebDetectionParams = 0;
api.WebDetectionParams buildWebDetectionParams() {
  final o = api.WebDetectionParams();
  buildCounterWebDetectionParams++;
  if (buildCounterWebDetectionParams < 3) {
    o.includeGeoResults = true;
  }
  buildCounterWebDetectionParams--;
  return o;
}

void checkWebDetectionParams(api.WebDetectionParams o) {
  buildCounterWebDetectionParams++;
  if (buildCounterWebDetectionParams < 3) {
    unittest.expect(o.includeGeoResults!, unittest.isTrue);
  }
  buildCounterWebDetectionParams--;
}

core.int buildCounterWebEntity = 0;
api.WebEntity buildWebEntity() {
  final o = api.WebEntity();
  buildCounterWebEntity++;
  if (buildCounterWebEntity < 3) {
    o.description = 'foo';
    o.entityId = 'foo';
    o.score = 42.0;
  }
  buildCounterWebEntity--;
  return o;
}

void checkWebEntity(api.WebEntity o) {
  buildCounterWebEntity++;
  if (buildCounterWebEntity < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterWebEntity--;
}

core.int buildCounterWebImage = 0;
api.WebImage buildWebImage() {
  final o = api.WebImage();
  buildCounterWebImage++;
  if (buildCounterWebImage < 3) {
    o.score = 42.0;
    o.url = 'foo';
  }
  buildCounterWebImage--;
  return o;
}

void checkWebImage(api.WebImage o) {
  buildCounterWebImage++;
  if (buildCounterWebImage < 3) {
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebImage--;
}

core.int buildCounterWebLabel = 0;
api.WebLabel buildWebLabel() {
  final o = api.WebLabel();
  buildCounterWebLabel++;
  if (buildCounterWebLabel < 3) {
    o.label = 'foo';
    o.languageCode = 'foo';
  }
  buildCounterWebLabel--;
  return o;
}

void checkWebLabel(api.WebLabel o) {
  buildCounterWebLabel++;
  if (buildCounterWebLabel < 3) {
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebLabel--;
}

core.List<api.WebImage> buildUnnamed4410() => [
      buildWebImage(),
      buildWebImage(),
    ];

void checkUnnamed4410(core.List<api.WebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebImage(o[0]);
  checkWebImage(o[1]);
}

core.List<api.WebImage> buildUnnamed4411() => [
      buildWebImage(),
      buildWebImage(),
    ];

void checkUnnamed4411(core.List<api.WebImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebImage(o[0]);
  checkWebImage(o[1]);
}

core.int buildCounterWebPage = 0;
api.WebPage buildWebPage() {
  final o = api.WebPage();
  buildCounterWebPage++;
  if (buildCounterWebPage < 3) {
    o.fullMatchingImages = buildUnnamed4410();
    o.pageTitle = 'foo';
    o.partialMatchingImages = buildUnnamed4411();
    o.score = 42.0;
    o.url = 'foo';
  }
  buildCounterWebPage--;
  return o;
}

void checkWebPage(api.WebPage o) {
  buildCounterWebPage++;
  if (buildCounterWebPage < 3) {
    checkUnnamed4410(o.fullMatchingImages!);
    unittest.expect(
      o.pageTitle!,
      unittest.equals('foo'),
    );
    checkUnnamed4411(o.partialMatchingImages!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebPage--;
}

core.List<api.Symbol> buildUnnamed4412() => [
      buildSymbol(),
      buildSymbol(),
    ];

void checkUnnamed4412(core.List<api.Symbol> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSymbol(o[0]);
  checkSymbol(o[1]);
}

core.int buildCounterWord = 0;
api.Word buildWord() {
  final o = api.Word();
  buildCounterWord++;
  if (buildCounterWord < 3) {
    o.boundingBox = buildBoundingPoly();
    o.confidence = 42.0;
    o.property = buildTextProperty();
    o.symbols = buildUnnamed4412();
  }
  buildCounterWord--;
  return o;
}

void checkWord(api.Word o) {
  buildCounterWord++;
  if (buildCounterWord < 3) {
    checkBoundingPoly(o.boundingBox!);
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    checkTextProperty(o.property!);
    checkUnnamed4412(o.symbols!);
  }
  buildCounterWord--;
}

void main() {
  unittest.group('obj-schema-AddProductToProductSetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddProductToProductSetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddProductToProductSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddProductToProductSetRequest(od);
    });
  });

  unittest.group('obj-schema-AnnotateFileRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotateFileRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnnotateFileRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnnotateFileRequest(od);
    });
  });

  unittest.group('obj-schema-AnnotateFileResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotateFileResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnnotateFileResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnnotateFileResponse(od);
    });
  });

  unittest.group('obj-schema-AnnotateImageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotateImageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnnotateImageRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnnotateImageRequest(od);
    });
  });

  unittest.group('obj-schema-AnnotateImageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotateImageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnnotateImageResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnnotateImageResponse(od);
    });
  });

  unittest.group('obj-schema-AsyncAnnotateFileRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAsyncAnnotateFileRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AsyncAnnotateFileRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAsyncAnnotateFileRequest(od);
    });
  });

  unittest.group('obj-schema-AsyncAnnotateFileResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAsyncAnnotateFileResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AsyncAnnotateFileResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAsyncAnnotateFileResponse(od);
    });
  });

  unittest.group('obj-schema-AsyncBatchAnnotateFilesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAsyncBatchAnnotateFilesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AsyncBatchAnnotateFilesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAsyncBatchAnnotateFilesRequest(od);
    });
  });

  unittest.group('obj-schema-AsyncBatchAnnotateFilesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAsyncBatchAnnotateFilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AsyncBatchAnnotateFilesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAsyncBatchAnnotateFilesResponse(od);
    });
  });

  unittest.group('obj-schema-AsyncBatchAnnotateImagesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAsyncBatchAnnotateImagesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AsyncBatchAnnotateImagesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAsyncBatchAnnotateImagesRequest(od);
    });
  });

  unittest.group('obj-schema-AsyncBatchAnnotateImagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAsyncBatchAnnotateImagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AsyncBatchAnnotateImagesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAsyncBatchAnnotateImagesResponse(od);
    });
  });

  unittest.group('obj-schema-BatchAnnotateFilesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchAnnotateFilesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchAnnotateFilesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchAnnotateFilesRequest(od);
    });
  });

  unittest.group('obj-schema-BatchAnnotateFilesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchAnnotateFilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchAnnotateFilesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchAnnotateFilesResponse(od);
    });
  });

  unittest.group('obj-schema-BatchAnnotateImagesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchAnnotateImagesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchAnnotateImagesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchAnnotateImagesRequest(od);
    });
  });

  unittest.group('obj-schema-BatchAnnotateImagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchAnnotateImagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchAnnotateImagesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchAnnotateImagesResponse(od);
    });
  });

  unittest.group('obj-schema-BatchOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-Block', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Block.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBlock(od);
    });
  });

  unittest.group('obj-schema-BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BoundingPoly.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBoundingPoly(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-Color', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Color.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkColor(od);
    });
  });

  unittest.group('obj-schema-ColorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ColorInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkColorInfo(od);
    });
  });

  unittest.group('obj-schema-CropHint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCropHint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CropHint.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCropHint(od);
    });
  });

  unittest.group('obj-schema-CropHintsAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCropHintsAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CropHintsAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCropHintsAnnotation(od);
    });
  });

  unittest.group('obj-schema-CropHintsParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCropHintsParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CropHintsParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCropHintsParams(od);
    });
  });

  unittest.group('obj-schema-DetectedBreak', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetectedBreak();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DetectedBreak.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDetectedBreak(od);
    });
  });

  unittest.group('obj-schema-DetectedLanguage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetectedLanguage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DetectedLanguage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDetectedLanguage(od);
    });
  });

  unittest.group('obj-schema-DominantColorsAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDominantColorsAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DominantColorsAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDominantColorsAnnotation(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-EntityAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEntityAnnotation(od);
    });
  });

  unittest.group('obj-schema-FaceAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFaceAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FaceAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFaceAnnotation(od);
    });
  });

  unittest.group('obj-schema-Feature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Feature.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFeature(od);
    });
  });

  unittest.group('obj-schema-GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGcsDestination(od);
    });
  });

  unittest.group('obj-schema-GcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GcsSource.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGcsSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1AnnotateFileResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1AnnotateFileResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1AnnotateFileResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1AnnotateFileResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1AnnotateImageResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1AnnotateImageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1AnnotateImageResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1AnnotateImageResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1Block', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1Block();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1Block.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1Block(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1BoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1BoundingPoly.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1BoundingPoly(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1ColorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1ColorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1ColorInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1ColorInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1CropHint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1CropHint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1CropHint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1CropHint(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1CropHintsAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1CropHintsAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1CropHintsAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1CropHintsAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p1beta1DominantColorsAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1DominantColorsAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p1beta1DominantColorsAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1DominantColorsAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1EntityAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1EntityAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1EntityAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1EntityAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1FaceAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1FaceAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1FaceAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1FaceAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1FaceAnnotationLandmark',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1FaceAnnotationLandmark();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1FaceAnnotationLandmark.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1FaceAnnotationLandmark(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1GcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1GcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1GcsDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1GcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1GcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1GcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1GcsSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1ImageAnnotationContext',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1ImageAnnotationContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1ImageAnnotationContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1ImageAnnotationContext(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1ImageProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1ImageProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1ImageProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1ImageProperties(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1InputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1InputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1InputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1InputConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1LocationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1LocationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1LocationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1LocationInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1NormalizedVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1NormalizedVertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1NormalizedVertex(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1OperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1OperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1OperationMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1OutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1OutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1OutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1OutputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1Page', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1Page();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1Page.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1Page(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1Paragraph', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1Paragraph();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1Paragraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1Paragraph(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1Position', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1Position();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1Position.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1Position(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1Product', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1Product();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1Product.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1Product(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1ProductKeyValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1ProductKeyValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1ProductKeyValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1ProductKeyValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1ProductSearchResults',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1ProductSearchResults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1ProductSearchResults.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1ProductSearchResults(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p1beta1ProductSearchResultsResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1ProductSearchResultsResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p1beta1ProductSearchResultsResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1ProductSearchResultsResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1Property', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1Property();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1Property.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1Property(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1SafeSearchAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1SafeSearchAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1SafeSearchAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1SafeSearchAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1Symbol', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1Symbol();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1Symbol.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1Symbol(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1TextAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1TextAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1TextAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1TextAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p1beta1TextAnnotationTextProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1TextAnnotationTextProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p1beta1TextAnnotationTextProperty.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1TextAnnotationTextProperty(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1Vertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1Vertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1Vertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1Vertex(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1WebDetection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1WebDetection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1WebDetection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1WebDetection(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1WebDetectionWebEntity',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1WebDetectionWebEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1WebDetectionWebEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1WebDetectionWebEntity(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1WebDetectionWebImage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1WebDetectionWebImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1WebDetectionWebImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1WebDetectionWebImage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1WebDetectionWebLabel',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1WebDetectionWebLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1WebDetectionWebLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1WebDetectionWebLabel(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1WebDetectionWebPage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1WebDetectionWebPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1WebDetectionWebPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1WebDetectionWebPage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p1beta1Word', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p1beta1Word();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p1beta1Word.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p1beta1Word(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1AnnotateFileResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1AnnotateFileResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1AnnotateFileResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1AnnotateFileResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1AnnotateImageResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1AnnotateImageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1AnnotateImageResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1AnnotateImageResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Block', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Block();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Block.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1Block(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1BoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1BoundingPoly(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1ColorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1ColorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1ColorInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1ColorInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1CropHint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1CropHint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1CropHint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1CropHint(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1CropHintsAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1CropHintsAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1CropHintsAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1CropHintsAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p2beta1DominantColorsAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1DominantColorsAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p2beta1DominantColorsAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1DominantColorsAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1EntityAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1EntityAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1EntityAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1EntityAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1FaceAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1FaceAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1FaceAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1FaceAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1FaceAnnotationLandmark',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1FaceAnnotationLandmark();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1FaceAnnotationLandmark.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1FaceAnnotationLandmark(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1GcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1GcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1GcsDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1GcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1GcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1GcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1GcsSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1ImageAnnotationContext',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1ImageAnnotationContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1ImageAnnotationContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1ImageAnnotationContext(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1ImageProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1ImageProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1ImageProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1ImageProperties(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1InputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1InputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1InputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1InputConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1LocationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1LocationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1LocationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1LocationInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1NormalizedVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1NormalizedVertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1NormalizedVertex(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1OperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1OperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1OperationMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1OutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1OutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1OutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1OutputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Page', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Page();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Page.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1Page(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Paragraph', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Paragraph();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Paragraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1Paragraph(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Position', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Position();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Position.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1Position(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Product', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Product();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Product.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1Product(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1ProductKeyValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1ProductKeyValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1ProductKeyValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1ProductKeyValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1ProductSearchResults',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1ProductSearchResults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1ProductSearchResults.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1ProductSearchResults(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p2beta1ProductSearchResultsResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1ProductSearchResultsResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1ProductSearchResultsResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Property', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Property();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Property.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1Property(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1SafeSearchAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1SafeSearchAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1SafeSearchAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1SafeSearchAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Symbol', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Symbol();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Symbol.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1Symbol(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1TextAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1TextAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1TextAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1TextAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p2beta1TextAnnotationTextProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1TextAnnotationTextProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p2beta1TextAnnotationTextProperty.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Vertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Vertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Vertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1Vertex(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1WebDetection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1WebDetection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1WebDetection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1WebDetection(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1WebDetectionWebEntity',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1WebDetectionWebEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1WebDetectionWebEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1WebDetectionWebEntity(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1WebDetectionWebImage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1WebDetectionWebImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1WebDetectionWebImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1WebDetectionWebLabel',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1WebDetectionWebLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1WebDetectionWebLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1WebDetectionWebLabel(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1WebDetectionWebPage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1WebDetectionWebPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1WebDetectionWebPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1WebDetectionWebPage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Word', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Word();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Word.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p2beta1Word(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1AnnotateFileResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1AnnotateFileResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1AnnotateFileResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1AnnotateFileResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1AnnotateImageResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1AnnotateImageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1AnnotateImageResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1AnnotateImageResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1BatchOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1BatchOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1BatchOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1BatchOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1Block', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1Block();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1Block.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1Block(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1BoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1BoundingPoly.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1BoundingPoly(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1ColorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1ColorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1ColorInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1ColorInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1CropHint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1CropHint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1CropHint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1CropHint(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1CropHintsAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1CropHintsAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1CropHintsAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1CropHintsAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p3beta1DominantColorsAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1DominantColorsAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p3beta1DominantColorsAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1DominantColorsAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1EntityAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1EntityAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1EntityAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1EntityAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1FaceAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1FaceAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1FaceAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1FaceAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1FaceAnnotationLandmark',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1FaceAnnotationLandmark();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1FaceAnnotationLandmark.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1FaceAnnotationLandmark(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1GcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1GcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1GcsDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1GcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1GcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1GcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1GcsSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1ImageAnnotationContext',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1ImageAnnotationContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1ImageAnnotationContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1ImageAnnotationContext(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1ImageProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1ImageProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1ImageProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1ImageProperties(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p3beta1ImportProductSetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1ImportProductSetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p3beta1ImportProductSetsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1ImportProductSetsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1InputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1InputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1InputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1InputConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1LocationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1LocationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1LocationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1LocationInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1NormalizedVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1NormalizedVertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1NormalizedVertex(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1OperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1OperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1OperationMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1OutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1OutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1OutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1OutputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1Page', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1Page();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1Page.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1Page(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1Paragraph', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1Paragraph();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1Paragraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1Paragraph(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1Position', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1Position();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1Position.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1Position(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1Product', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1Product();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1Product.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1Product(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1ProductKeyValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1ProductKeyValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1ProductKeyValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1ProductKeyValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1ProductSearchResults',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1ProductSearchResults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1ProductSearchResults.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1ProductSearchResults(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p3beta1ProductSearchResultsResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1ProductSearchResultsResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p3beta1ProductSearchResultsResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1ProductSearchResultsResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1Property', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1Property();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1Property.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1Property(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1ReferenceImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1ReferenceImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1ReferenceImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1ReferenceImage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1SafeSearchAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1SafeSearchAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1SafeSearchAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1SafeSearchAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1Symbol', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1Symbol();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1Symbol.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1Symbol(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1TextAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1TextAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1TextAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1TextAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p3beta1TextAnnotationTextProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1TextAnnotationTextProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p3beta1TextAnnotationTextProperty.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1TextAnnotationTextProperty(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1Vertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1Vertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1Vertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1Vertex(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1WebDetection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1WebDetection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1WebDetection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1WebDetection(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1WebDetectionWebEntity',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1WebDetectionWebEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1WebDetectionWebEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1WebDetectionWebEntity(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1WebDetectionWebImage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1WebDetectionWebImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1WebDetectionWebImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1WebDetectionWebImage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1WebDetectionWebLabel',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1WebDetectionWebLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1WebDetectionWebLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1WebDetectionWebLabel(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1WebDetectionWebPage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1WebDetectionWebPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1WebDetectionWebPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1WebDetectionWebPage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p3beta1Word', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p3beta1Word();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p3beta1Word.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p3beta1Word(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1AnnotateFileResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1AnnotateFileResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1AnnotateFileResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1AnnotateFileResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1AnnotateImageResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1AnnotateImageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1AnnotateImageResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1AnnotateImageResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1BatchOperationMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1BatchOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1BatchOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1BatchOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1Block', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1Block();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1Block.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1Block(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1BoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1BoundingPoly.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1BoundingPoly(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1Celebrity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1Celebrity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1Celebrity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1Celebrity(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1ColorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1ColorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1ColorInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1ColorInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1CropHint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1CropHint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1CropHint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1CropHint(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1CropHintsAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1CropHintsAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1CropHintsAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1CropHintsAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p4beta1DominantColorsAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1DominantColorsAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p4beta1DominantColorsAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1DominantColorsAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1EntityAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1EntityAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1EntityAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1EntityAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1FaceAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1FaceAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1FaceAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1FaceAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1FaceAnnotationLandmark',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1FaceAnnotationLandmark();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1FaceAnnotationLandmark.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1FaceAnnotationLandmark(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1FaceRecognitionResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1FaceRecognitionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1FaceRecognitionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1FaceRecognitionResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1GcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1GcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1GcsDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1GcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1GcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1GcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1GcsSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1ImageAnnotationContext',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1ImageAnnotationContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1ImageAnnotationContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1ImageAnnotationContext(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1ImageProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1ImageProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1ImageProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1ImageProperties(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p4beta1ImportProductSetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1ImportProductSetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p4beta1ImportProductSetsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1ImportProductSetsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1InputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1InputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1InputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1InputConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1LocationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1LocationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1LocationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1LocationInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1NormalizedVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1NormalizedVertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1NormalizedVertex(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1OperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1OperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1OperationMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1OutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1OutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1OutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1OutputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1Page', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1Page();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1Page.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1Page(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1Paragraph', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1Paragraph();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1Paragraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1Paragraph(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1Position', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1Position();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1Position.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1Position(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1Product', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1Product();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1Product.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1Product(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1ProductKeyValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1ProductKeyValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1ProductKeyValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1ProductKeyValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1ProductSearchResults',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1ProductSearchResults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1ProductSearchResults.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1ProductSearchResults(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p4beta1ProductSearchResultsResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1ProductSearchResultsResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p4beta1ProductSearchResultsResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1ProductSearchResultsResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1Property', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1Property();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1Property.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1Property(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1ReferenceImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1ReferenceImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1ReferenceImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1ReferenceImage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1SafeSearchAnnotation',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1SafeSearchAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1SafeSearchAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1SafeSearchAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1Symbol', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1Symbol();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1Symbol.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1Symbol(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1TextAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1TextAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1TextAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1TextAnnotation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudVisionV1p4beta1TextAnnotationTextProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1TextAnnotationTextProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudVisionV1p4beta1TextAnnotationTextProperty.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1TextAnnotationTextProperty(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1Vertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1Vertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1Vertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1Vertex(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1WebDetection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1WebDetection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1WebDetection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1WebDetection(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1WebDetectionWebEntity',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1WebDetectionWebEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1WebDetectionWebEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1WebDetectionWebEntity(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1WebDetectionWebImage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1WebDetectionWebImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1WebDetectionWebImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1WebDetectionWebImage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1WebDetectionWebLabel',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1WebDetectionWebLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1WebDetectionWebLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1WebDetectionWebLabel(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1WebDetectionWebPage',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1WebDetectionWebPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1WebDetectionWebPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1WebDetectionWebPage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p4beta1Word', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p4beta1Word();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p4beta1Word.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudVisionV1p4beta1Word(od);
    });
  });

  unittest.group('obj-schema-GroupedResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupedResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupedResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGroupedResult(od);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Image.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImage(od);
    });
  });

  unittest.group('obj-schema-ImageAnnotationContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageAnnotationContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageAnnotationContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImageAnnotationContext(od);
    });
  });

  unittest.group('obj-schema-ImageContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImageContext(od);
    });
  });

  unittest.group('obj-schema-ImageProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImageProperties(od);
    });
  });

  unittest.group('obj-schema-ImageSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImageSource(od);
    });
  });

  unittest.group('obj-schema-ImportProductSetsGcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportProductSetsGcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportProductSetsGcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportProductSetsGcsSource(od);
    });
  });

  unittest.group('obj-schema-ImportProductSetsInputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportProductSetsInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportProductSetsInputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportProductSetsInputConfig(od);
    });
  });

  unittest.group('obj-schema-ImportProductSetsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportProductSetsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportProductSetsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportProductSetsRequest(od);
    });
  });

  unittest.group('obj-schema-ImportProductSetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportProductSetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportProductSetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportProductSetsResponse(od);
    });
  });

  unittest.group('obj-schema-InputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInputConfig(od);
    });
  });

  unittest.group('obj-schema-KeyValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.KeyValue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkKeyValue(od);
    });
  });

  unittest.group('obj-schema-Landmark', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLandmark();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Landmark.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLandmark(od);
    });
  });

  unittest.group('obj-schema-LatLng', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatLng();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LatLng.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLatLng(od);
    });
  });

  unittest.group('obj-schema-LatLongRect', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatLongRect();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LatLongRect.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLatLongRect(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListProductSetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListProductSetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListProductSetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListProductSetsResponse(od);
    });
  });

  unittest.group('obj-schema-ListProductsInProductSetResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListProductsInProductSetResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListProductsInProductSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListProductsInProductSetResponse(od);
    });
  });

  unittest.group('obj-schema-ListProductsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListProductsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListProductsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListProductsResponse(od);
    });
  });

  unittest.group('obj-schema-ListReferenceImagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReferenceImagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReferenceImagesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListReferenceImagesResponse(od);
    });
  });

  unittest.group('obj-schema-LocalizedObjectAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalizedObjectAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalizedObjectAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocalizedObjectAnnotation(od);
    });
  });

  unittest.group('obj-schema-LocationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocationInfo(od);
    });
  });

  unittest.group('obj-schema-NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNormalizedVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NormalizedVertex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNormalizedVertex(od);
    });
  });

  unittest.group('obj-schema-ObjectAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkObjectAnnotation(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-OperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-OutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OutputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOutputConfig(od);
    });
  });

  unittest.group('obj-schema-Page', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Page.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPage(od);
    });
  });

  unittest.group('obj-schema-Paragraph', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParagraph();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Paragraph.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkParagraph(od);
    });
  });

  unittest.group('obj-schema-Position', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Position.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPosition(od);
    });
  });

  unittest.group('obj-schema-Product', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Product.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProduct(od);
    });
  });

  unittest.group('obj-schema-ProductSearchParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductSearchParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductSearchParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductSearchParams(od);
    });
  });

  unittest.group('obj-schema-ProductSearchResults', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductSearchResults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductSearchResults.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductSearchResults(od);
    });
  });

  unittest.group('obj-schema-ProductSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ProductSet.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProductSet(od);
    });
  });

  unittest.group('obj-schema-ProductSetPurgeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductSetPurgeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductSetPurgeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductSetPurgeConfig(od);
    });
  });

  unittest.group('obj-schema-Property', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Property.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProperty(od);
    });
  });

  unittest.group('obj-schema-PurgeProductsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPurgeProductsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PurgeProductsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPurgeProductsRequest(od);
    });
  });

  unittest.group('obj-schema-ReferenceImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReferenceImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReferenceImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReferenceImage(od);
    });
  });

  unittest.group('obj-schema-RemoveProductFromProductSetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveProductFromProductSetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveProductFromProductSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveProductFromProductSetRequest(od);
    });
  });

  unittest.group('obj-schema-Result', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Result.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkResult(od);
    });
  });

  unittest.group('obj-schema-SafeSearchAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSafeSearchAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SafeSearchAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSafeSearchAnnotation(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-Symbol', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSymbol();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Symbol.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSymbol(od);
    });
  });

  unittest.group('obj-schema-TextAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextAnnotation(od);
    });
  });

  unittest.group('obj-schema-TextDetectionParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextDetectionParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextDetectionParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextDetectionParams(od);
    });
  });

  unittest.group('obj-schema-TextProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextProperty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextProperty(od);
    });
  });

  unittest.group('obj-schema-Vertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Vertex.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVertex(od);
    });
  });

  unittest.group('obj-schema-WebDetection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebDetection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebDetection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWebDetection(od);
    });
  });

  unittest.group('obj-schema-WebDetectionParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebDetectionParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebDetectionParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWebDetectionParams(od);
    });
  });

  unittest.group('obj-schema-WebEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.WebEntity.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWebEntity(od);
    });
  });

  unittest.group('obj-schema-WebImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.WebImage.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWebImage(od);
    });
  });

  unittest.group('obj-schema-WebLabel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.WebLabel.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWebLabel(od);
    });
  });

  unittest.group('obj-schema-WebPage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.WebPage.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWebPage(od);
    });
  });

  unittest.group('obj-schema-Word', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWord();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Word.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWord(od);
    });
  });

  unittest.group('resource-FilesResource', () {
    unittest.test('method--annotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).files;
      final arg_request = buildBatchAnnotateFilesRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchAnnotateFilesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchAnnotateFilesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v1/files:annotate'),
        );
        pathOffset += 17;

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
        final resp = convert.json.encode(buildBatchAnnotateFilesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.annotate(arg_request, $fields: arg_$fields);
      checkBatchAnnotateFilesResponse(
          response as api.BatchAnnotateFilesResponse);
    });

    unittest.test('method--asyncBatchAnnotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).files;
      final arg_request = buildAsyncBatchAnnotateFilesRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AsyncBatchAnnotateFilesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAsyncBatchAnnotateFilesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('v1/files:asyncBatchAnnotate'),
        );
        pathOffset += 27;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.asyncBatchAnnotate(arg_request, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ImagesResource', () {
    unittest.test('method--annotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).images;
      final arg_request = buildBatchAnnotateImagesRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchAnnotateImagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchAnnotateImagesRequest(obj);

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
          unittest.equals('v1/images:annotate'),
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
        final resp = convert.json.encode(buildBatchAnnotateImagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.annotate(arg_request, $fields: arg_$fields);
      checkBatchAnnotateImagesResponse(
          response as api.BatchAnnotateImagesResponse);
    });

    unittest.test('method--asyncBatchAnnotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).images;
      final arg_request = buildAsyncBatchAnnotateImagesRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AsyncBatchAnnotateImagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAsyncBatchAnnotateImagesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('v1/images:asyncBatchAnnotate'),
        );
        pathOffset += 28;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.asyncBatchAnnotate(arg_request, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-LocationsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).locations.operations;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj);

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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).operations;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).operations;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).operations;
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
        final resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsFilesResource', () {
    unittest.test('method--annotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.files;
      final arg_request = buildBatchAnnotateFilesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchAnnotateFilesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchAnnotateFilesRequest(obj);

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
        final resp = convert.json.encode(buildBatchAnnotateFilesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.annotate(arg_request, arg_parent, $fields: arg_$fields);
      checkBatchAnnotateFilesResponse(
          response as api.BatchAnnotateFilesResponse);
    });

    unittest.test('method--asyncBatchAnnotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.files;
      final arg_request = buildAsyncBatchAnnotateFilesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AsyncBatchAnnotateFilesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAsyncBatchAnnotateFilesRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.asyncBatchAnnotate(arg_request, arg_parent,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsImagesResource', () {
    unittest.test('method--annotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.images;
      final arg_request = buildBatchAnnotateImagesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchAnnotateImagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchAnnotateImagesRequest(obj);

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
        final resp = convert.json.encode(buildBatchAnnotateImagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.annotate(arg_request, arg_parent, $fields: arg_$fields);
      checkBatchAnnotateImagesResponse(
          response as api.BatchAnnotateImagesResponse);
    });

    unittest.test('method--asyncBatchAnnotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.images;
      final arg_request = buildAsyncBatchAnnotateImagesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AsyncBatchAnnotateImagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAsyncBatchAnnotateImagesRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.asyncBatchAnnotate(arg_request, arg_parent,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsFilesResource', () {
    unittest.test('method--annotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.files;
      final arg_request = buildBatchAnnotateFilesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchAnnotateFilesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchAnnotateFilesRequest(obj);

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
        final resp = convert.json.encode(buildBatchAnnotateFilesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.annotate(arg_request, arg_parent, $fields: arg_$fields);
      checkBatchAnnotateFilesResponse(
          response as api.BatchAnnotateFilesResponse);
    });

    unittest.test('method--asyncBatchAnnotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.files;
      final arg_request = buildAsyncBatchAnnotateFilesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AsyncBatchAnnotateFilesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAsyncBatchAnnotateFilesRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.asyncBatchAnnotate(arg_request, arg_parent,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsImagesResource', () {
    unittest.test('method--annotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.images;
      final arg_request = buildBatchAnnotateImagesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchAnnotateImagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchAnnotateImagesRequest(obj);

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
        final resp = convert.json.encode(buildBatchAnnotateImagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.annotate(arg_request, arg_parent, $fields: arg_$fields);
      checkBatchAnnotateImagesResponse(
          response as api.BatchAnnotateImagesResponse);
    });

    unittest.test('method--asyncBatchAnnotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.images;
      final arg_request = buildAsyncBatchAnnotateImagesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AsyncBatchAnnotateImagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAsyncBatchAnnotateImagesRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.asyncBatchAnnotate(arg_request, arg_parent,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.operations;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsProductSetsResource', () {
    unittest.test('method--addProduct', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.productSets;
      final arg_request = buildAddProductToProductSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddProductToProductSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddProductToProductSetRequest(obj);

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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.addProduct(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.productSets;
      final arg_request = buildProductSet();
      final arg_parent = 'foo';
      final arg_productSetId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProductSet.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProductSet(obj);

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
          queryMap['productSetId']!.first,
          unittest.equals(arg_productSetId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProductSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          productSetId: arg_productSetId, $fields: arg_$fields);
      checkProductSet(response as api.ProductSet);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.productSets;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.productSets;
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
        final resp = convert.json.encode(buildProductSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkProductSet(response as api.ProductSet);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.productSets;
      final arg_request = buildImportProductSetsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ImportProductSetsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkImportProductSetsRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.productSets;
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
        final resp = convert.json.encode(buildListProductSetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListProductSetsResponse(response as api.ListProductSetsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.productSets;
      final arg_request = buildProductSet();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProductSet.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProductSet(obj);

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
        final resp = convert.json.encode(buildProductSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkProductSet(response as api.ProductSet);
    });

    unittest.test('method--removeProduct', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.productSets;
      final arg_request = buildRemoveProductFromProductSetRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemoveProductFromProductSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveProductFromProductSetRequest(obj);

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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.removeProduct(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-ProjectsLocationsProductSetsProductsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.productSets.products;
      final arg_name = 'foo';
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
            convert.json.encode(buildListProductsInProductSetResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListProductsInProductSetResponse(
          response as api.ListProductsInProductSetResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsProductsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.products;
      final arg_request = buildProduct();
      final arg_parent = 'foo';
      final arg_productId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Product.fromJson(json as core.Map<core.String, core.dynamic>);
        checkProduct(obj);

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
          queryMap['productId']!.first,
          unittest.equals(arg_productId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          productId: arg_productId, $fields: arg_$fields);
      checkProduct(response as api.Product);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.products;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.products;
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
        final resp = convert.json.encode(buildProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkProduct(response as api.Product);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.products;
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
        final resp = convert.json.encode(buildListProductsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListProductsResponse(response as api.ListProductsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.products;
      final arg_request = buildProduct();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Product.fromJson(json as core.Map<core.String, core.dynamic>);
        checkProduct(obj);

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
        final resp = convert.json.encode(buildProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkProduct(response as api.Product);
    });

    unittest.test('method--purge', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.products;
      final arg_request = buildPurgeProductsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PurgeProductsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPurgeProductsRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.purge(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsProductsReferenceImagesResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.VisionApi(mock).projects.locations.products.referenceImages;
      final arg_request = buildReferenceImage();
      final arg_parent = 'foo';
      final arg_referenceImageId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReferenceImage.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReferenceImage(obj);

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
          queryMap['referenceImageId']!.first,
          unittest.equals(arg_referenceImageId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReferenceImage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          referenceImageId: arg_referenceImageId, $fields: arg_$fields);
      checkReferenceImage(response as api.ReferenceImage);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.VisionApi(mock).projects.locations.products.referenceImages;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.VisionApi(mock).projects.locations.products.referenceImages;
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
        final resp = convert.json.encode(buildReferenceImage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkReferenceImage(response as api.ReferenceImage);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.VisionApi(mock).projects.locations.products.referenceImages;
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
        final resp = convert.json.encode(buildListReferenceImagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListReferenceImagesResponse(
          response as api.ListReferenceImagesResponse);
    });
  });

  unittest.group('resource-ProjectsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.operations;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
