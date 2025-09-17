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

import 'package:googleapis/vision/v1p2beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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
    unittest.expect(o.alpha!, unittest.equals(42.0));
    unittest.expect(o.blue!, unittest.equals(42.0));
    unittest.expect(o.green!, unittest.equals(42.0));
    unittest.expect(o.red!, unittest.equals(42.0));
  }
  buildCounterColor--;
}

core.List<api.GoogleCloudVisionV1p2beta1Feature> buildUnnamed0() => [
  buildGoogleCloudVisionV1p2beta1Feature(),
  buildGoogleCloudVisionV1p2beta1Feature(),
];

void checkUnnamed0(core.List<api.GoogleCloudVisionV1p2beta1Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Feature(o[0]);
  checkGoogleCloudVisionV1p2beta1Feature(o[1]);
}

core.List<core.int> buildUnnamed1() => [42, 42];

void checkUnnamed1(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGoogleCloudVisionV1p2beta1AnnotateFileRequest = 0;
api.GoogleCloudVisionV1p2beta1AnnotateFileRequest
buildGoogleCloudVisionV1p2beta1AnnotateFileRequest() {
  final o = api.GoogleCloudVisionV1p2beta1AnnotateFileRequest();
  buildCounterGoogleCloudVisionV1p2beta1AnnotateFileRequest++;
  if (buildCounterGoogleCloudVisionV1p2beta1AnnotateFileRequest < 3) {
    o.features = buildUnnamed0();
    o.imageContext = buildGoogleCloudVisionV1p2beta1ImageContext();
    o.inputConfig = buildGoogleCloudVisionV1p2beta1InputConfig();
    o.pages = buildUnnamed1();
  }
  buildCounterGoogleCloudVisionV1p2beta1AnnotateFileRequest--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1AnnotateFileRequest(
  api.GoogleCloudVisionV1p2beta1AnnotateFileRequest o,
) {
  buildCounterGoogleCloudVisionV1p2beta1AnnotateFileRequest++;
  if (buildCounterGoogleCloudVisionV1p2beta1AnnotateFileRequest < 3) {
    checkUnnamed0(o.features!);
    checkGoogleCloudVisionV1p2beta1ImageContext(o.imageContext!);
    checkGoogleCloudVisionV1p2beta1InputConfig(o.inputConfig!);
    checkUnnamed1(o.pages!);
  }
  buildCounterGoogleCloudVisionV1p2beta1AnnotateFileRequest--;
}

core.List<api.GoogleCloudVisionV1p2beta1AnnotateImageResponse>
buildUnnamed2() => [
  buildGoogleCloudVisionV1p2beta1AnnotateImageResponse(),
  buildGoogleCloudVisionV1p2beta1AnnotateImageResponse(),
];

void checkUnnamed2(
  core.List<api.GoogleCloudVisionV1p2beta1AnnotateImageResponse> o,
) {
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
    o.responses = buildUnnamed2();
    o.totalPages = 42;
  }
  buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1AnnotateFileResponse(
  api.GoogleCloudVisionV1p2beta1AnnotateFileResponse o,
) {
  buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse < 3) {
    checkStatus(o.error!);
    checkGoogleCloudVisionV1p2beta1InputConfig(o.inputConfig!);
    checkUnnamed2(o.responses!);
    unittest.expect(o.totalPages!, unittest.equals(42));
  }
  buildCounterGoogleCloudVisionV1p2beta1AnnotateFileResponse--;
}

core.List<api.GoogleCloudVisionV1p2beta1Feature> buildUnnamed3() => [
  buildGoogleCloudVisionV1p2beta1Feature(),
  buildGoogleCloudVisionV1p2beta1Feature(),
];

void checkUnnamed3(core.List<api.GoogleCloudVisionV1p2beta1Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Feature(o[0]);
  checkGoogleCloudVisionV1p2beta1Feature(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1AnnotateImageRequest = 0;
api.GoogleCloudVisionV1p2beta1AnnotateImageRequest
buildGoogleCloudVisionV1p2beta1AnnotateImageRequest() {
  final o = api.GoogleCloudVisionV1p2beta1AnnotateImageRequest();
  buildCounterGoogleCloudVisionV1p2beta1AnnotateImageRequest++;
  if (buildCounterGoogleCloudVisionV1p2beta1AnnotateImageRequest < 3) {
    o.features = buildUnnamed3();
    o.image = buildGoogleCloudVisionV1p2beta1Image();
    o.imageContext = buildGoogleCloudVisionV1p2beta1ImageContext();
  }
  buildCounterGoogleCloudVisionV1p2beta1AnnotateImageRequest--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1AnnotateImageRequest(
  api.GoogleCloudVisionV1p2beta1AnnotateImageRequest o,
) {
  buildCounterGoogleCloudVisionV1p2beta1AnnotateImageRequest++;
  if (buildCounterGoogleCloudVisionV1p2beta1AnnotateImageRequest < 3) {
    checkUnnamed3(o.features!);
    checkGoogleCloudVisionV1p2beta1Image(o.image!);
    checkGoogleCloudVisionV1p2beta1ImageContext(o.imageContext!);
  }
  buildCounterGoogleCloudVisionV1p2beta1AnnotateImageRequest--;
}

core.List<api.GoogleCloudVisionV1p2beta1FaceAnnotation> buildUnnamed4() => [
  buildGoogleCloudVisionV1p2beta1FaceAnnotation(),
  buildGoogleCloudVisionV1p2beta1FaceAnnotation(),
];

void checkUnnamed4(core.List<api.GoogleCloudVisionV1p2beta1FaceAnnotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1FaceAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1FaceAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> buildUnnamed5() => [
  buildGoogleCloudVisionV1p2beta1EntityAnnotation(),
  buildGoogleCloudVisionV1p2beta1EntityAnnotation(),
];

void checkUnnamed5(
  core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> buildUnnamed6() => [
  buildGoogleCloudVisionV1p2beta1EntityAnnotation(),
  buildGoogleCloudVisionV1p2beta1EntityAnnotation(),
];

void checkUnnamed6(
  core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation>
buildUnnamed7() => [
  buildGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation(),
  buildGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation(),
];

void checkUnnamed7(
  core.List<api.GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> buildUnnamed8() => [
  buildGoogleCloudVisionV1p2beta1EntityAnnotation(),
  buildGoogleCloudVisionV1p2beta1EntityAnnotation(),
];

void checkUnnamed8(
  core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1EntityAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> buildUnnamed9() => [
  buildGoogleCloudVisionV1p2beta1EntityAnnotation(),
  buildGoogleCloudVisionV1p2beta1EntityAnnotation(),
];

void checkUnnamed9(
  core.List<api.GoogleCloudVisionV1p2beta1EntityAnnotation> o,
) {
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
    o.faceAnnotations = buildUnnamed4();
    o.fullTextAnnotation = buildGoogleCloudVisionV1p2beta1TextAnnotation();
    o.imagePropertiesAnnotation =
        buildGoogleCloudVisionV1p2beta1ImageProperties();
    o.labelAnnotations = buildUnnamed5();
    o.landmarkAnnotations = buildUnnamed6();
    o.localizedObjectAnnotations = buildUnnamed7();
    o.logoAnnotations = buildUnnamed8();
    o.productSearchResults =
        buildGoogleCloudVisionV1p2beta1ProductSearchResults();
    o.safeSearchAnnotation =
        buildGoogleCloudVisionV1p2beta1SafeSearchAnnotation();
    o.textAnnotations = buildUnnamed9();
    o.webDetection = buildGoogleCloudVisionV1p2beta1WebDetection();
  }
  buildCounterGoogleCloudVisionV1p2beta1AnnotateImageResponse--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1AnnotateImageResponse(
  api.GoogleCloudVisionV1p2beta1AnnotateImageResponse o,
) {
  buildCounterGoogleCloudVisionV1p2beta1AnnotateImageResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1AnnotateImageResponse < 3) {
    checkGoogleCloudVisionV1p2beta1ImageAnnotationContext(o.context!);
    checkGoogleCloudVisionV1p2beta1CropHintsAnnotation(o.cropHintsAnnotation!);
    checkStatus(o.error!);
    checkUnnamed4(o.faceAnnotations!);
    checkGoogleCloudVisionV1p2beta1TextAnnotation(o.fullTextAnnotation!);
    checkGoogleCloudVisionV1p2beta1ImageProperties(
      o.imagePropertiesAnnotation!,
    );
    checkUnnamed5(o.labelAnnotations!);
    checkUnnamed6(o.landmarkAnnotations!);
    checkUnnamed7(o.localizedObjectAnnotations!);
    checkUnnamed8(o.logoAnnotations!);
    checkGoogleCloudVisionV1p2beta1ProductSearchResults(
      o.productSearchResults!,
    );
    checkGoogleCloudVisionV1p2beta1SafeSearchAnnotation(
      o.safeSearchAnnotation!,
    );
    checkUnnamed9(o.textAnnotations!);
    checkGoogleCloudVisionV1p2beta1WebDetection(o.webDetection!);
  }
  buildCounterGoogleCloudVisionV1p2beta1AnnotateImageResponse--;
}

core.List<api.GoogleCloudVisionV1p2beta1Feature> buildUnnamed10() => [
  buildGoogleCloudVisionV1p2beta1Feature(),
  buildGoogleCloudVisionV1p2beta1Feature(),
];

void checkUnnamed10(core.List<api.GoogleCloudVisionV1p2beta1Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Feature(o[0]);
  checkGoogleCloudVisionV1p2beta1Feature(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest = 0;
api.GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest
buildGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest() {
  final o = api.GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest();
  buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest++;
  if (buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest < 3) {
    o.features = buildUnnamed10();
    o.imageContext = buildGoogleCloudVisionV1p2beta1ImageContext();
    o.inputConfig = buildGoogleCloudVisionV1p2beta1InputConfig();
    o.outputConfig = buildGoogleCloudVisionV1p2beta1OutputConfig();
  }
  buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest(
  api.GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest o,
) {
  buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest++;
  if (buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest < 3) {
    checkUnnamed10(o.features!);
    checkGoogleCloudVisionV1p2beta1ImageContext(o.imageContext!);
    checkGoogleCloudVisionV1p2beta1InputConfig(o.inputConfig!);
    checkGoogleCloudVisionV1p2beta1OutputConfig(o.outputConfig!);
  }
  buildCounterGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest--;
}

core.Map<core.String, core.String> buildUnnamed11() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed11(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest>
buildUnnamed12() => [
  buildGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest(),
  buildGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest(),
];

void checkUnnamed12(
  core.List<api.GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest(o[0]);
  checkGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest =
    0;
api.GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
buildGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest() {
  final o = api.GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest();
  buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest++;
  if (buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest <
      3) {
    o.labels = buildUnnamed11();
    o.parent = 'foo';
    o.requests = buildUnnamed12();
  }
  buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest(
  api.GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest o,
) {
  buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest++;
  if (buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest <
      3) {
    checkUnnamed11(o.labels!);
    unittest.expect(o.parent!, unittest.equals('foo'));
    checkUnnamed12(o.requests!);
  }
  buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest--;
}

core.Map<core.String, core.String> buildUnnamed13() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed13(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.GoogleCloudVisionV1p2beta1AnnotateImageRequest>
buildUnnamed14() => [
  buildGoogleCloudVisionV1p2beta1AnnotateImageRequest(),
  buildGoogleCloudVisionV1p2beta1AnnotateImageRequest(),
];

void checkUnnamed14(
  core.List<api.GoogleCloudVisionV1p2beta1AnnotateImageRequest> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1AnnotateImageRequest(o[0]);
  checkGoogleCloudVisionV1p2beta1AnnotateImageRequest(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest =
    0;
api.GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
buildGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest() {
  final o = api.GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest();
  buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest++;
  if (buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest <
      3) {
    o.labels = buildUnnamed13();
    o.outputConfig = buildGoogleCloudVisionV1p2beta1OutputConfig();
    o.parent = 'foo';
    o.requests = buildUnnamed14();
  }
  buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest(
  api.GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest o,
) {
  buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest++;
  if (buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest <
      3) {
    checkUnnamed13(o.labels!);
    checkGoogleCloudVisionV1p2beta1OutputConfig(o.outputConfig!);
    unittest.expect(o.parent!, unittest.equals('foo'));
    checkUnnamed14(o.requests!);
  }
  buildCounterGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest--;
}

core.Map<core.String, core.String> buildUnnamed15() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed15(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.GoogleCloudVisionV1p2beta1AnnotateFileRequest> buildUnnamed16() =>
    [
      buildGoogleCloudVisionV1p2beta1AnnotateFileRequest(),
      buildGoogleCloudVisionV1p2beta1AnnotateFileRequest(),
    ];

void checkUnnamed16(
  core.List<api.GoogleCloudVisionV1p2beta1AnnotateFileRequest> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1AnnotateFileRequest(o[0]);
  checkGoogleCloudVisionV1p2beta1AnnotateFileRequest(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest = 0;
api.GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
buildGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest() {
  final o = api.GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest();
  buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest++;
  if (buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest < 3) {
    o.labels = buildUnnamed15();
    o.parent = 'foo';
    o.requests = buildUnnamed16();
  }
  buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest(
  api.GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest o,
) {
  buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest++;
  if (buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest < 3) {
    checkUnnamed15(o.labels!);
    unittest.expect(o.parent!, unittest.equals('foo'));
    checkUnnamed16(o.requests!);
  }
  buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest--;
}

core.List<api.GoogleCloudVisionV1p2beta1AnnotateFileResponse>
buildUnnamed17() => [
  buildGoogleCloudVisionV1p2beta1AnnotateFileResponse(),
  buildGoogleCloudVisionV1p2beta1AnnotateFileResponse(),
];

void checkUnnamed17(
  core.List<api.GoogleCloudVisionV1p2beta1AnnotateFileResponse> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1AnnotateFileResponse(o[0]);
  checkGoogleCloudVisionV1p2beta1AnnotateFileResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse = 0;
api.GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse
buildGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse() {
  final o = api.GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse();
  buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse < 3) {
    o.responses = buildUnnamed17();
  }
  buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse(
  api.GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse o,
) {
  buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse < 3) {
    checkUnnamed17(o.responses!);
  }
  buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse--;
}

core.Map<core.String, core.String> buildUnnamed18() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed18(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.GoogleCloudVisionV1p2beta1AnnotateImageRequest>
buildUnnamed19() => [
  buildGoogleCloudVisionV1p2beta1AnnotateImageRequest(),
  buildGoogleCloudVisionV1p2beta1AnnotateImageRequest(),
];

void checkUnnamed19(
  core.List<api.GoogleCloudVisionV1p2beta1AnnotateImageRequest> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1AnnotateImageRequest(o[0]);
  checkGoogleCloudVisionV1p2beta1AnnotateImageRequest(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest = 0;
api.GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
buildGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest() {
  final o = api.GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest();
  buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest++;
  if (buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest < 3) {
    o.labels = buildUnnamed18();
    o.parent = 'foo';
    o.requests = buildUnnamed19();
  }
  buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest(
  api.GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest o,
) {
  buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest++;
  if (buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest < 3) {
    checkUnnamed18(o.labels!);
    unittest.expect(o.parent!, unittest.equals('foo'));
    checkUnnamed19(o.requests!);
  }
  buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest--;
}

core.List<api.GoogleCloudVisionV1p2beta1AnnotateImageResponse>
buildUnnamed20() => [
  buildGoogleCloudVisionV1p2beta1AnnotateImageResponse(),
  buildGoogleCloudVisionV1p2beta1AnnotateImageResponse(),
];

void checkUnnamed20(
  core.List<api.GoogleCloudVisionV1p2beta1AnnotateImageResponse> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1AnnotateImageResponse(o[0]);
  checkGoogleCloudVisionV1p2beta1AnnotateImageResponse(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse = 0;
api.GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
buildGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse() {
  final o = api.GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse();
  buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse < 3) {
    o.responses = buildUnnamed20();
  }
  buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse(
  api.GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse o,
) {
  buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse++;
  if (buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse < 3) {
    checkUnnamed20(o.responses!);
  }
  buildCounterGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse--;
}

core.List<api.GoogleCloudVisionV1p2beta1Paragraph> buildUnnamed21() => [
  buildGoogleCloudVisionV1p2beta1Paragraph(),
  buildGoogleCloudVisionV1p2beta1Paragraph(),
];

void checkUnnamed21(core.List<api.GoogleCloudVisionV1p2beta1Paragraph> o) {
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
    o.paragraphs = buildUnnamed21();
    o.property = buildGoogleCloudVisionV1p2beta1TextAnnotationTextProperty();
  }
  buildCounterGoogleCloudVisionV1p2beta1Block--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1Block(
  api.GoogleCloudVisionV1p2beta1Block o,
) {
  buildCounterGoogleCloudVisionV1p2beta1Block++;
  if (buildCounterGoogleCloudVisionV1p2beta1Block < 3) {
    unittest.expect(o.blockType!, unittest.equals('foo'));
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingBox!);
    unittest.expect(o.confidence!, unittest.equals(42.0));
    checkUnnamed21(o.paragraphs!);
    checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(o.property!);
  }
  buildCounterGoogleCloudVisionV1p2beta1Block--;
}

core.List<api.GoogleCloudVisionV1p2beta1NormalizedVertex> buildUnnamed22() => [
  buildGoogleCloudVisionV1p2beta1NormalizedVertex(),
  buildGoogleCloudVisionV1p2beta1NormalizedVertex(),
];

void checkUnnamed22(
  core.List<api.GoogleCloudVisionV1p2beta1NormalizedVertex> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1NormalizedVertex(o[0]);
  checkGoogleCloudVisionV1p2beta1NormalizedVertex(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1Vertex> buildUnnamed23() => [
  buildGoogleCloudVisionV1p2beta1Vertex(),
  buildGoogleCloudVisionV1p2beta1Vertex(),
];

void checkUnnamed23(core.List<api.GoogleCloudVisionV1p2beta1Vertex> o) {
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
    o.normalizedVertices = buildUnnamed22();
    o.vertices = buildUnnamed23();
  }
  buildCounterGoogleCloudVisionV1p2beta1BoundingPoly--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1BoundingPoly(
  api.GoogleCloudVisionV1p2beta1BoundingPoly o,
) {
  buildCounterGoogleCloudVisionV1p2beta1BoundingPoly++;
  if (buildCounterGoogleCloudVisionV1p2beta1BoundingPoly < 3) {
    checkUnnamed22(o.normalizedVertices!);
    checkUnnamed23(o.vertices!);
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
  api.GoogleCloudVisionV1p2beta1ColorInfo o,
) {
  buildCounterGoogleCloudVisionV1p2beta1ColorInfo++;
  if (buildCounterGoogleCloudVisionV1p2beta1ColorInfo < 3) {
    checkColor(o.color!);
    unittest.expect(o.pixelFraction!, unittest.equals(42.0));
    unittest.expect(o.score!, unittest.equals(42.0));
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
  api.GoogleCloudVisionV1p2beta1CropHint o,
) {
  buildCounterGoogleCloudVisionV1p2beta1CropHint++;
  if (buildCounterGoogleCloudVisionV1p2beta1CropHint < 3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(o.confidence!, unittest.equals(42.0));
    unittest.expect(o.importanceFraction!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p2beta1CropHint--;
}

core.List<api.GoogleCloudVisionV1p2beta1CropHint> buildUnnamed24() => [
  buildGoogleCloudVisionV1p2beta1CropHint(),
  buildGoogleCloudVisionV1p2beta1CropHint(),
];

void checkUnnamed24(core.List<api.GoogleCloudVisionV1p2beta1CropHint> o) {
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
    o.cropHints = buildUnnamed24();
  }
  buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1CropHintsAnnotation(
  api.GoogleCloudVisionV1p2beta1CropHintsAnnotation o,
) {
  buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation < 3) {
    checkUnnamed24(o.cropHints!);
  }
  buildCounterGoogleCloudVisionV1p2beta1CropHintsAnnotation--;
}

core.List<core.double> buildUnnamed25() => [42.0, 42.0];

void checkUnnamed25(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterGoogleCloudVisionV1p2beta1CropHintsParams = 0;
api.GoogleCloudVisionV1p2beta1CropHintsParams
buildGoogleCloudVisionV1p2beta1CropHintsParams() {
  final o = api.GoogleCloudVisionV1p2beta1CropHintsParams();
  buildCounterGoogleCloudVisionV1p2beta1CropHintsParams++;
  if (buildCounterGoogleCloudVisionV1p2beta1CropHintsParams < 3) {
    o.aspectRatios = buildUnnamed25();
  }
  buildCounterGoogleCloudVisionV1p2beta1CropHintsParams--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1CropHintsParams(
  api.GoogleCloudVisionV1p2beta1CropHintsParams o,
) {
  buildCounterGoogleCloudVisionV1p2beta1CropHintsParams++;
  if (buildCounterGoogleCloudVisionV1p2beta1CropHintsParams < 3) {
    checkUnnamed25(o.aspectRatios!);
  }
  buildCounterGoogleCloudVisionV1p2beta1CropHintsParams--;
}

core.List<api.GoogleCloudVisionV1p2beta1ColorInfo> buildUnnamed26() => [
  buildGoogleCloudVisionV1p2beta1ColorInfo(),
  buildGoogleCloudVisionV1p2beta1ColorInfo(),
];

void checkUnnamed26(core.List<api.GoogleCloudVisionV1p2beta1ColorInfo> o) {
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
    o.colors = buildUnnamed26();
  }
  buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1DominantColorsAnnotation(
  api.GoogleCloudVisionV1p2beta1DominantColorsAnnotation o,
) {
  buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation < 3) {
    checkUnnamed26(o.colors!);
  }
  buildCounterGoogleCloudVisionV1p2beta1DominantColorsAnnotation--;
}

core.List<api.GoogleCloudVisionV1p2beta1LocationInfo> buildUnnamed27() => [
  buildGoogleCloudVisionV1p2beta1LocationInfo(),
  buildGoogleCloudVisionV1p2beta1LocationInfo(),
];

void checkUnnamed27(core.List<api.GoogleCloudVisionV1p2beta1LocationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1LocationInfo(o[0]);
  checkGoogleCloudVisionV1p2beta1LocationInfo(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1Property> buildUnnamed28() => [
  buildGoogleCloudVisionV1p2beta1Property(),
  buildGoogleCloudVisionV1p2beta1Property(),
];

void checkUnnamed28(core.List<api.GoogleCloudVisionV1p2beta1Property> o) {
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
    o.locations = buildUnnamed27();
    o.mid = 'foo';
    o.properties = buildUnnamed28();
    o.score = 42.0;
    o.topicality = 42.0;
  }
  buildCounterGoogleCloudVisionV1p2beta1EntityAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1EntityAnnotation(
  api.GoogleCloudVisionV1p2beta1EntityAnnotation o,
) {
  buildCounterGoogleCloudVisionV1p2beta1EntityAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1EntityAnnotation < 3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(o.confidence!, unittest.equals(42.0));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.locale!, unittest.equals('foo'));
    checkUnnamed27(o.locations!);
    unittest.expect(o.mid!, unittest.equals('foo'));
    checkUnnamed28(o.properties!);
    unittest.expect(o.score!, unittest.equals(42.0));
    unittest.expect(o.topicality!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p2beta1EntityAnnotation--;
}

core.List<api.GoogleCloudVisionV1p2beta1FaceAnnotationLandmark>
buildUnnamed29() => [
  buildGoogleCloudVisionV1p2beta1FaceAnnotationLandmark(),
  buildGoogleCloudVisionV1p2beta1FaceAnnotationLandmark(),
];

void checkUnnamed29(
  core.List<api.GoogleCloudVisionV1p2beta1FaceAnnotationLandmark> o,
) {
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
    o.landmarks = buildUnnamed29();
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
  api.GoogleCloudVisionV1p2beta1FaceAnnotation o,
) {
  buildCounterGoogleCloudVisionV1p2beta1FaceAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1FaceAnnotation < 3) {
    unittest.expect(o.angerLikelihood!, unittest.equals('foo'));
    unittest.expect(o.blurredLikelihood!, unittest.equals('foo'));
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(o.detectionConfidence!, unittest.equals(42.0));
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.fdBoundingPoly!);
    unittest.expect(o.headwearLikelihood!, unittest.equals('foo'));
    unittest.expect(o.joyLikelihood!, unittest.equals('foo'));
    unittest.expect(o.landmarkingConfidence!, unittest.equals(42.0));
    checkUnnamed29(o.landmarks!);
    unittest.expect(o.panAngle!, unittest.equals(42.0));
    unittest.expect(o.rollAngle!, unittest.equals(42.0));
    unittest.expect(o.sorrowLikelihood!, unittest.equals('foo'));
    unittest.expect(o.surpriseLikelihood!, unittest.equals('foo'));
    unittest.expect(o.tiltAngle!, unittest.equals(42.0));
    unittest.expect(o.underExposedLikelihood!, unittest.equals('foo'));
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
  api.GoogleCloudVisionV1p2beta1FaceAnnotationLandmark o,
) {
  buildCounterGoogleCloudVisionV1p2beta1FaceAnnotationLandmark++;
  if (buildCounterGoogleCloudVisionV1p2beta1FaceAnnotationLandmark < 3) {
    checkGoogleCloudVisionV1p2beta1Position(o.position!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1FaceAnnotationLandmark--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1Feature = 0;
api.GoogleCloudVisionV1p2beta1Feature buildGoogleCloudVisionV1p2beta1Feature() {
  final o = api.GoogleCloudVisionV1p2beta1Feature();
  buildCounterGoogleCloudVisionV1p2beta1Feature++;
  if (buildCounterGoogleCloudVisionV1p2beta1Feature < 3) {
    o.maxResults = 42;
    o.model = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1Feature--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1Feature(
  api.GoogleCloudVisionV1p2beta1Feature o,
) {
  buildCounterGoogleCloudVisionV1p2beta1Feature++;
  if (buildCounterGoogleCloudVisionV1p2beta1Feature < 3) {
    unittest.expect(o.maxResults!, unittest.equals(42));
    unittest.expect(o.model!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1Feature--;
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
  api.GoogleCloudVisionV1p2beta1GcsDestination o,
) {
  buildCounterGoogleCloudVisionV1p2beta1GcsDestination++;
  if (buildCounterGoogleCloudVisionV1p2beta1GcsDestination < 3) {
    unittest.expect(o.uri!, unittest.equals('foo'));
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
  api.GoogleCloudVisionV1p2beta1GcsSource o,
) {
  buildCounterGoogleCloudVisionV1p2beta1GcsSource++;
  if (buildCounterGoogleCloudVisionV1p2beta1GcsSource < 3) {
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1GcsSource--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1Image = 0;
api.GoogleCloudVisionV1p2beta1Image buildGoogleCloudVisionV1p2beta1Image() {
  final o = api.GoogleCloudVisionV1p2beta1Image();
  buildCounterGoogleCloudVisionV1p2beta1Image++;
  if (buildCounterGoogleCloudVisionV1p2beta1Image < 3) {
    o.content = 'foo';
    o.source = buildGoogleCloudVisionV1p2beta1ImageSource();
  }
  buildCounterGoogleCloudVisionV1p2beta1Image--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1Image(
  api.GoogleCloudVisionV1p2beta1Image o,
) {
  buildCounterGoogleCloudVisionV1p2beta1Image++;
  if (buildCounterGoogleCloudVisionV1p2beta1Image < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
    checkGoogleCloudVisionV1p2beta1ImageSource(o.source!);
  }
  buildCounterGoogleCloudVisionV1p2beta1Image--;
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
  api.GoogleCloudVisionV1p2beta1ImageAnnotationContext o,
) {
  buildCounterGoogleCloudVisionV1p2beta1ImageAnnotationContext++;
  if (buildCounterGoogleCloudVisionV1p2beta1ImageAnnotationContext < 3) {
    unittest.expect(o.pageNumber!, unittest.equals(42));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1ImageAnnotationContext--;
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudVisionV1p2beta1ImageContext = 0;
api.GoogleCloudVisionV1p2beta1ImageContext
buildGoogleCloudVisionV1p2beta1ImageContext() {
  final o = api.GoogleCloudVisionV1p2beta1ImageContext();
  buildCounterGoogleCloudVisionV1p2beta1ImageContext++;
  if (buildCounterGoogleCloudVisionV1p2beta1ImageContext < 3) {
    o.cropHintsParams = buildGoogleCloudVisionV1p2beta1CropHintsParams();
    o.languageHints = buildUnnamed30();
    o.latLongRect = buildGoogleCloudVisionV1p2beta1LatLongRect();
    o.productSearchParams =
        buildGoogleCloudVisionV1p2beta1ProductSearchParams();
    o.textDetectionParams =
        buildGoogleCloudVisionV1p2beta1TextDetectionParams();
    o.webDetectionParams = buildGoogleCloudVisionV1p2beta1WebDetectionParams();
  }
  buildCounterGoogleCloudVisionV1p2beta1ImageContext--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1ImageContext(
  api.GoogleCloudVisionV1p2beta1ImageContext o,
) {
  buildCounterGoogleCloudVisionV1p2beta1ImageContext++;
  if (buildCounterGoogleCloudVisionV1p2beta1ImageContext < 3) {
    checkGoogleCloudVisionV1p2beta1CropHintsParams(o.cropHintsParams!);
    checkUnnamed30(o.languageHints!);
    checkGoogleCloudVisionV1p2beta1LatLongRect(o.latLongRect!);
    checkGoogleCloudVisionV1p2beta1ProductSearchParams(o.productSearchParams!);
    checkGoogleCloudVisionV1p2beta1TextDetectionParams(o.textDetectionParams!);
    checkGoogleCloudVisionV1p2beta1WebDetectionParams(o.webDetectionParams!);
  }
  buildCounterGoogleCloudVisionV1p2beta1ImageContext--;
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
  api.GoogleCloudVisionV1p2beta1ImageProperties o,
) {
  buildCounterGoogleCloudVisionV1p2beta1ImageProperties++;
  if (buildCounterGoogleCloudVisionV1p2beta1ImageProperties < 3) {
    checkGoogleCloudVisionV1p2beta1DominantColorsAnnotation(o.dominantColors!);
  }
  buildCounterGoogleCloudVisionV1p2beta1ImageProperties--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1ImageSource = 0;
api.GoogleCloudVisionV1p2beta1ImageSource
buildGoogleCloudVisionV1p2beta1ImageSource() {
  final o = api.GoogleCloudVisionV1p2beta1ImageSource();
  buildCounterGoogleCloudVisionV1p2beta1ImageSource++;
  if (buildCounterGoogleCloudVisionV1p2beta1ImageSource < 3) {
    o.gcsImageUri = 'foo';
    o.imageUri = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1ImageSource--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1ImageSource(
  api.GoogleCloudVisionV1p2beta1ImageSource o,
) {
  buildCounterGoogleCloudVisionV1p2beta1ImageSource++;
  if (buildCounterGoogleCloudVisionV1p2beta1ImageSource < 3) {
    unittest.expect(o.gcsImageUri!, unittest.equals('foo'));
    unittest.expect(o.imageUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1ImageSource--;
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
  api.GoogleCloudVisionV1p2beta1InputConfig o,
) {
  buildCounterGoogleCloudVisionV1p2beta1InputConfig++;
  if (buildCounterGoogleCloudVisionV1p2beta1InputConfig < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
    checkGoogleCloudVisionV1p2beta1GcsSource(o.gcsSource!);
    unittest.expect(o.mimeType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1InputConfig--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1LatLongRect = 0;
api.GoogleCloudVisionV1p2beta1LatLongRect
buildGoogleCloudVisionV1p2beta1LatLongRect() {
  final o = api.GoogleCloudVisionV1p2beta1LatLongRect();
  buildCounterGoogleCloudVisionV1p2beta1LatLongRect++;
  if (buildCounterGoogleCloudVisionV1p2beta1LatLongRect < 3) {
    o.maxLatLng = buildLatLng();
    o.minLatLng = buildLatLng();
  }
  buildCounterGoogleCloudVisionV1p2beta1LatLongRect--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1LatLongRect(
  api.GoogleCloudVisionV1p2beta1LatLongRect o,
) {
  buildCounterGoogleCloudVisionV1p2beta1LatLongRect++;
  if (buildCounterGoogleCloudVisionV1p2beta1LatLongRect < 3) {
    checkLatLng(o.maxLatLng!);
    checkLatLng(o.minLatLng!);
  }
  buildCounterGoogleCloudVisionV1p2beta1LatLongRect--;
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
  api.GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation o,
) {
  buildCounterGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation < 3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.mid!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.score!, unittest.equals(42.0));
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
  api.GoogleCloudVisionV1p2beta1LocationInfo o,
) {
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
  api.GoogleCloudVisionV1p2beta1NormalizedVertex o,
) {
  buildCounterGoogleCloudVisionV1p2beta1NormalizedVertex++;
  if (buildCounterGoogleCloudVisionV1p2beta1NormalizedVertex < 3) {
    unittest.expect(o.x!, unittest.equals(42.0));
    unittest.expect(o.y!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p2beta1NormalizedVertex--;
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
  api.GoogleCloudVisionV1p2beta1OutputConfig o,
) {
  buildCounterGoogleCloudVisionV1p2beta1OutputConfig++;
  if (buildCounterGoogleCloudVisionV1p2beta1OutputConfig < 3) {
    unittest.expect(o.batchSize!, unittest.equals(42));
    checkGoogleCloudVisionV1p2beta1GcsDestination(o.gcsDestination!);
  }
  buildCounterGoogleCloudVisionV1p2beta1OutputConfig--;
}

core.List<api.GoogleCloudVisionV1p2beta1Block> buildUnnamed31() => [
  buildGoogleCloudVisionV1p2beta1Block(),
  buildGoogleCloudVisionV1p2beta1Block(),
];

void checkUnnamed31(core.List<api.GoogleCloudVisionV1p2beta1Block> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1Block(o[0]);
  checkGoogleCloudVisionV1p2beta1Block(o[1]);
}

core.int buildCounterGoogleCloudVisionV1p2beta1Page = 0;
api.GoogleCloudVisionV1p2beta1Page buildGoogleCloudVisionV1p2beta1Page() {
  final o = api.GoogleCloudVisionV1p2beta1Page();
  buildCounterGoogleCloudVisionV1p2beta1Page++;
  if (buildCounterGoogleCloudVisionV1p2beta1Page < 3) {
    o.blocks = buildUnnamed31();
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
    checkUnnamed31(o.blocks!);
    unittest.expect(o.confidence!, unittest.equals(42.0));
    unittest.expect(o.height!, unittest.equals(42));
    checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(o.property!);
    unittest.expect(o.width!, unittest.equals(42));
  }
  buildCounterGoogleCloudVisionV1p2beta1Page--;
}

core.List<api.GoogleCloudVisionV1p2beta1Word> buildUnnamed32() => [
  buildGoogleCloudVisionV1p2beta1Word(),
  buildGoogleCloudVisionV1p2beta1Word(),
];

void checkUnnamed32(core.List<api.GoogleCloudVisionV1p2beta1Word> o) {
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
    o.words = buildUnnamed32();
  }
  buildCounterGoogleCloudVisionV1p2beta1Paragraph--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1Paragraph(
  api.GoogleCloudVisionV1p2beta1Paragraph o,
) {
  buildCounterGoogleCloudVisionV1p2beta1Paragraph++;
  if (buildCounterGoogleCloudVisionV1p2beta1Paragraph < 3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingBox!);
    unittest.expect(o.confidence!, unittest.equals(42.0));
    checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(o.property!);
    checkUnnamed32(o.words!);
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
  api.GoogleCloudVisionV1p2beta1Position o,
) {
  buildCounterGoogleCloudVisionV1p2beta1Position++;
  if (buildCounterGoogleCloudVisionV1p2beta1Position < 3) {
    unittest.expect(o.x!, unittest.equals(42.0));
    unittest.expect(o.y!, unittest.equals(42.0));
    unittest.expect(o.z!, unittest.equals(42.0));
  }
  buildCounterGoogleCloudVisionV1p2beta1Position--;
}

core.List<api.GoogleCloudVisionV1p2beta1ProductKeyValue> buildUnnamed33() => [
  buildGoogleCloudVisionV1p2beta1ProductKeyValue(),
  buildGoogleCloudVisionV1p2beta1ProductKeyValue(),
];

void checkUnnamed33(
  core.List<api.GoogleCloudVisionV1p2beta1ProductKeyValue> o,
) {
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
    o.productLabels = buildUnnamed33();
  }
  buildCounterGoogleCloudVisionV1p2beta1Product--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1Product(
  api.GoogleCloudVisionV1p2beta1Product o,
) {
  buildCounterGoogleCloudVisionV1p2beta1Product++;
  if (buildCounterGoogleCloudVisionV1p2beta1Product < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.productCategory!, unittest.equals('foo'));
    checkUnnamed33(o.productLabels!);
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
  api.GoogleCloudVisionV1p2beta1ProductKeyValue o,
) {
  buildCounterGoogleCloudVisionV1p2beta1ProductKeyValue++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductKeyValue < 3) {
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductKeyValue--;
}

core.List<core.String> buildUnnamed34() => ['foo', 'foo'];

void checkUnnamed34(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudVisionV1p2beta1ProductSearchParams = 0;
api.GoogleCloudVisionV1p2beta1ProductSearchParams
buildGoogleCloudVisionV1p2beta1ProductSearchParams() {
  final o = api.GoogleCloudVisionV1p2beta1ProductSearchParams();
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchParams++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchParams < 3) {
    o.boundingPoly = buildGoogleCloudVisionV1p2beta1BoundingPoly();
    o.filter = 'foo';
    o.productCategories = buildUnnamed34();
    o.productSet = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchParams--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1ProductSearchParams(
  api.GoogleCloudVisionV1p2beta1ProductSearchParams o,
) {
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchParams++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchParams < 3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingPoly!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    checkUnnamed34(o.productCategories!);
    unittest.expect(o.productSet!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchParams--;
}

core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult>
buildUnnamed35() => [
  buildGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult(),
  buildGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult(),
];

void checkUnnamed35(
  core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult(o[0]);
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult>
buildUnnamed36() => [
  buildGoogleCloudVisionV1p2beta1ProductSearchResultsResult(),
  buildGoogleCloudVisionV1p2beta1ProductSearchResultsResult(),
];

void checkUnnamed36(
  core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult> o,
) {
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
    o.productGroupedResults = buildUnnamed35();
    o.results = buildUnnamed36();
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResults--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1ProductSearchResults(
  api.GoogleCloudVisionV1p2beta1ProductSearchResults o,
) {
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResults++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResults < 3) {
    unittest.expect(o.indexTime!, unittest.equals('foo'));
    checkUnnamed35(o.productGroupedResults!);
    checkUnnamed36(o.results!);
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResults--;
}

core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation>
buildUnnamed37() => [
  buildGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation(),
  buildGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation(),
];

void checkUnnamed37(
  core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation(o[0]);
  checkGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult>
buildUnnamed38() => [
  buildGoogleCloudVisionV1p2beta1ProductSearchResultsResult(),
  buildGoogleCloudVisionV1p2beta1ProductSearchResultsResult(),
];

void checkUnnamed38(
  core.List<api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult> o,
) {
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
    o.objectAnnotations = buildUnnamed37();
    o.results = buildUnnamed38();
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult(
  api.GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult o,
) {
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult <
      3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingPoly!);
    checkUnnamed37(o.objectAnnotations!);
    checkUnnamed38(o.results!);
  }
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult--;
}

core.int
buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation = 0;
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
  api.GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation o,
) {
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation <
      3) {
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.mid!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.score!, unittest.equals(42.0));
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
  api.GoogleCloudVisionV1p2beta1ProductSearchResultsResult o,
) {
  buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsResult++;
  if (buildCounterGoogleCloudVisionV1p2beta1ProductSearchResultsResult < 3) {
    unittest.expect(o.image!, unittest.equals('foo'));
    checkGoogleCloudVisionV1p2beta1Product(o.product!);
    unittest.expect(o.score!, unittest.equals(42.0));
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
  api.GoogleCloudVisionV1p2beta1Property o,
) {
  buildCounterGoogleCloudVisionV1p2beta1Property++;
  if (buildCounterGoogleCloudVisionV1p2beta1Property < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.uint64Value!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
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
  api.GoogleCloudVisionV1p2beta1SafeSearchAnnotation o,
) {
  buildCounterGoogleCloudVisionV1p2beta1SafeSearchAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1SafeSearchAnnotation < 3) {
    unittest.expect(o.adult!, unittest.equals('foo'));
    unittest.expect(o.medical!, unittest.equals('foo'));
    unittest.expect(o.racy!, unittest.equals('foo'));
    unittest.expect(o.spoof!, unittest.equals('foo'));
    unittest.expect(o.violence!, unittest.equals('foo'));
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
  api.GoogleCloudVisionV1p2beta1Symbol o,
) {
  buildCounterGoogleCloudVisionV1p2beta1Symbol++;
  if (buildCounterGoogleCloudVisionV1p2beta1Symbol < 3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingBox!);
    unittest.expect(o.confidence!, unittest.equals(42.0));
    checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(o.property!);
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1Symbol--;
}

core.List<api.GoogleCloudVisionV1p2beta1Page> buildUnnamed39() => [
  buildGoogleCloudVisionV1p2beta1Page(),
  buildGoogleCloudVisionV1p2beta1Page(),
];

void checkUnnamed39(core.List<api.GoogleCloudVisionV1p2beta1Page> o) {
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
    o.pages = buildUnnamed39();
    o.text = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotation--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1TextAnnotation(
  api.GoogleCloudVisionV1p2beta1TextAnnotation o,
) {
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotation++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotation < 3) {
    checkUnnamed39(o.pages!);
    unittest.expect(o.text!, unittest.equals('foo'));
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
  api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak o,
) {
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak < 3) {
    unittest.expect(o.isPrefix!, unittest.isTrue);
    unittest.expect(o.type!, unittest.equals('foo'));
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
  api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage o,
) {
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage <
      3) {
    unittest.expect(o.confidence!, unittest.equals(42.0));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage--;
}

core.List<api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage>
buildUnnamed40() => [
  buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage(),
  buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage(),
];

void checkUnnamed40(
  core.List<api.GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage> o,
) {
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
    o.detectedLanguages = buildUnnamed40();
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(
  api.GoogleCloudVisionV1p2beta1TextAnnotationTextProperty o,
) {
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty < 3) {
    checkGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak(
      o.detectedBreak!,
    );
    checkUnnamed40(o.detectedLanguages!);
  }
  buildCounterGoogleCloudVisionV1p2beta1TextAnnotationTextProperty--;
}

core.List<core.String> buildUnnamed41() => ['foo', 'foo'];

void checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudVisionV1p2beta1TextDetectionParams = 0;
api.GoogleCloudVisionV1p2beta1TextDetectionParams
buildGoogleCloudVisionV1p2beta1TextDetectionParams() {
  final o = api.GoogleCloudVisionV1p2beta1TextDetectionParams();
  buildCounterGoogleCloudVisionV1p2beta1TextDetectionParams++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextDetectionParams < 3) {
    o.advancedOcrOptions = buildUnnamed41();
    o.enableTextDetectionConfidenceScore = true;
  }
  buildCounterGoogleCloudVisionV1p2beta1TextDetectionParams--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1TextDetectionParams(
  api.GoogleCloudVisionV1p2beta1TextDetectionParams o,
) {
  buildCounterGoogleCloudVisionV1p2beta1TextDetectionParams++;
  if (buildCounterGoogleCloudVisionV1p2beta1TextDetectionParams < 3) {
    checkUnnamed41(o.advancedOcrOptions!);
    unittest.expect(o.enableTextDetectionConfidenceScore!, unittest.isTrue);
  }
  buildCounterGoogleCloudVisionV1p2beta1TextDetectionParams--;
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
  api.GoogleCloudVisionV1p2beta1Vertex o,
) {
  buildCounterGoogleCloudVisionV1p2beta1Vertex++;
  if (buildCounterGoogleCloudVisionV1p2beta1Vertex < 3) {
    unittest.expect(o.x!, unittest.equals(42));
    unittest.expect(o.y!, unittest.equals(42));
  }
  buildCounterGoogleCloudVisionV1p2beta1Vertex--;
}

core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebLabel>
buildUnnamed42() => [
  buildGoogleCloudVisionV1p2beta1WebDetectionWebLabel(),
  buildGoogleCloudVisionV1p2beta1WebDetectionWebLabel(),
];

void checkUnnamed42(
  core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebLabel> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebLabel(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebLabel(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>
buildUnnamed43() => [
  buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
  buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
];

void checkUnnamed43(
  core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebPage> buildUnnamed44() =>
    [
      buildGoogleCloudVisionV1p2beta1WebDetectionWebPage(),
      buildGoogleCloudVisionV1p2beta1WebDetectionWebPage(),
    ];

void checkUnnamed44(
  core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebPage> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebPage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebPage(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>
buildUnnamed45() => [
  buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
  buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
];

void checkUnnamed45(
  core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>
buildUnnamed46() => [
  buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
  buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
];

void checkUnnamed46(
  core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebEntity>
buildUnnamed47() => [
  buildGoogleCloudVisionV1p2beta1WebDetectionWebEntity(),
  buildGoogleCloudVisionV1p2beta1WebDetectionWebEntity(),
];

void checkUnnamed47(
  core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebEntity> o,
) {
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
    o.bestGuessLabels = buildUnnamed42();
    o.fullMatchingImages = buildUnnamed43();
    o.pagesWithMatchingImages = buildUnnamed44();
    o.partialMatchingImages = buildUnnamed45();
    o.visuallySimilarImages = buildUnnamed46();
    o.webEntities = buildUnnamed47();
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetection--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1WebDetection(
  api.GoogleCloudVisionV1p2beta1WebDetection o,
) {
  buildCounterGoogleCloudVisionV1p2beta1WebDetection++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetection < 3) {
    checkUnnamed42(o.bestGuessLabels!);
    checkUnnamed43(o.fullMatchingImages!);
    checkUnnamed44(o.pagesWithMatchingImages!);
    checkUnnamed45(o.partialMatchingImages!);
    checkUnnamed46(o.visuallySimilarImages!);
    checkUnnamed47(o.webEntities!);
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetection--;
}

core.int buildCounterGoogleCloudVisionV1p2beta1WebDetectionParams = 0;
api.GoogleCloudVisionV1p2beta1WebDetectionParams
buildGoogleCloudVisionV1p2beta1WebDetectionParams() {
  final o = api.GoogleCloudVisionV1p2beta1WebDetectionParams();
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionParams++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionParams < 3) {
    o.includeGeoResults = true;
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionParams--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1WebDetectionParams(
  api.GoogleCloudVisionV1p2beta1WebDetectionParams o,
) {
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionParams++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionParams < 3) {
    unittest.expect(o.includeGeoResults!, unittest.isTrue);
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionParams--;
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
  api.GoogleCloudVisionV1p2beta1WebDetectionWebEntity o,
) {
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebEntity++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebEntity < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.entityId!, unittest.equals('foo'));
    unittest.expect(o.score!, unittest.equals(42.0));
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
  api.GoogleCloudVisionV1p2beta1WebDetectionWebImage o,
) {
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebImage++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebImage < 3) {
    unittest.expect(o.score!, unittest.equals(42.0));
    unittest.expect(o.url!, unittest.equals('foo'));
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
  api.GoogleCloudVisionV1p2beta1WebDetectionWebLabel o,
) {
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebLabel++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebLabel < 3) {
    unittest.expect(o.label!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebLabel--;
}

core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>
buildUnnamed48() => [
  buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
  buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
];

void checkUnnamed48(
  core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[0]);
  checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(o[1]);
}

core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage>
buildUnnamed49() => [
  buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
  buildGoogleCloudVisionV1p2beta1WebDetectionWebImage(),
];

void checkUnnamed49(
  core.List<api.GoogleCloudVisionV1p2beta1WebDetectionWebImage> o,
) {
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
    o.fullMatchingImages = buildUnnamed48();
    o.pageTitle = 'foo';
    o.partialMatchingImages = buildUnnamed49();
    o.score = 42.0;
    o.url = 'foo';
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebPage--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1WebDetectionWebPage(
  api.GoogleCloudVisionV1p2beta1WebDetectionWebPage o,
) {
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebPage++;
  if (buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebPage < 3) {
    checkUnnamed48(o.fullMatchingImages!);
    unittest.expect(o.pageTitle!, unittest.equals('foo'));
    checkUnnamed49(o.partialMatchingImages!);
    unittest.expect(o.score!, unittest.equals(42.0));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudVisionV1p2beta1WebDetectionWebPage--;
}

core.List<api.GoogleCloudVisionV1p2beta1Symbol> buildUnnamed50() => [
  buildGoogleCloudVisionV1p2beta1Symbol(),
  buildGoogleCloudVisionV1p2beta1Symbol(),
];

void checkUnnamed50(core.List<api.GoogleCloudVisionV1p2beta1Symbol> o) {
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
    o.symbols = buildUnnamed50();
  }
  buildCounterGoogleCloudVisionV1p2beta1Word--;
  return o;
}

void checkGoogleCloudVisionV1p2beta1Word(api.GoogleCloudVisionV1p2beta1Word o) {
  buildCounterGoogleCloudVisionV1p2beta1Word++;
  if (buildCounterGoogleCloudVisionV1p2beta1Word < 3) {
    checkGoogleCloudVisionV1p2beta1BoundingPoly(o.boundingBox!);
    unittest.expect(o.confidence!, unittest.equals(42.0));
    checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(o.property!);
    checkUnnamed50(o.symbols!);
  }
  buildCounterGoogleCloudVisionV1p2beta1Word--;
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
    unittest.expect(o.latitude!, unittest.equals(42.0));
    unittest.expect(o.longitude!, unittest.equals(42.0));
  }
  buildCounterLatLng--;
}

core.Map<core.String, core.Object?> buildUnnamed51() => {
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

void checkUnnamed51(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed52() => {
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

void checkUnnamed52(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed51();
    o.name = 'foo';
    o.response = buildUnnamed52();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed51(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed52(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed53() => {
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

void checkUnnamed53(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed54() => [
  buildUnnamed53(),
  buildUnnamed53(),
];

void checkUnnamed54(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed53(o[0]);
  checkUnnamed53(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed54();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed54(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

void main() {
  unittest.group('obj-schema-Color', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Color.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkColor(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1AnnotateFileRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1AnnotateFileRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudVisionV1p2beta1AnnotateFileRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1AnnotateFileRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1AnnotateFileResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1AnnotateFileResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudVisionV1p2beta1AnnotateFileResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1AnnotateFileResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1AnnotateImageRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1AnnotateImageRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudVisionV1p2beta1AnnotateImageRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1AnnotateImageRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1AnnotateImageResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1AnnotateImageResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudVisionV1p2beta1AnnotateImageResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1AnnotateImageResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Block', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Block();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Block.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1Block(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1BoundingPoly', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1BoundingPoly();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1BoundingPoly(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1ColorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1ColorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1ColorInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1ColorInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1CropHint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1CropHint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1CropHint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1CropHint(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1CropHintsAnnotation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1CropHintsAnnotation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudVisionV1p2beta1CropHintsAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1CropHintsAnnotation(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1CropHintsParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1CropHintsParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1CropHintsParams.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1CropHintsParams(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1DominantColorsAnnotation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1DominantColorsAnnotation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVisionV1p2beta1DominantColorsAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1DominantColorsAnnotation(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1EntityAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1EntityAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1EntityAnnotation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1EntityAnnotation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1FaceAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1FaceAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1FaceAnnotation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1FaceAnnotation(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1FaceAnnotationLandmark',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1FaceAnnotationLandmark();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVisionV1p2beta1FaceAnnotationLandmark.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1FaceAnnotationLandmark(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Feature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Feature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Feature.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1Feature(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1GcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1GcsDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1GcsDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1GcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1GcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1GcsSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1GcsSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Image', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Image();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Image.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1Image(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1ImageAnnotationContext',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1ImageAnnotationContext();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVisionV1p2beta1ImageAnnotationContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1ImageAnnotationContext(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1ImageContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1ImageContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1ImageContext.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1ImageContext(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1ImageProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1ImageProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1ImageProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1ImageProperties(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1ImageSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1ImageSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1ImageSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1ImageSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1InputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1InputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1InputConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1InputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1LatLongRect', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1LatLongRect();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1LatLongRect.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1LatLongRect(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1LocationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1LocationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1LocationInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1LocationInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1NormalizedVertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1NormalizedVertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1NormalizedVertex.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1NormalizedVertex(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1OutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1OutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1OutputConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1OutputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Page', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Page();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Page.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1Page(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Paragraph', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Paragraph();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Paragraph.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1Paragraph(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Position', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Position();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Position.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1Position(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Product', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Product();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Product.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1Product(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1ProductKeyValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1ProductKeyValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1ProductKeyValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1ProductKeyValue(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1ProductSearchParams',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1ProductSearchParams();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudVisionV1p2beta1ProductSearchParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1ProductSearchParams(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1ProductSearchResults',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1ProductSearchResults();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudVisionV1p2beta1ProductSearchResults.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1ProductSearchResults(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1ProductSearchResultsResult',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1ProductSearchResultsResult();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVisionV1p2beta1ProductSearchResultsResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1ProductSearchResultsResult(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Property', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Property();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Property.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1Property(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1SafeSearchAnnotation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1SafeSearchAnnotation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudVisionV1p2beta1SafeSearchAnnotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1SafeSearchAnnotation(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Symbol', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Symbol();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Symbol.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1Symbol(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1TextAnnotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1TextAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1TextAnnotation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1TextAnnotation(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1TextAnnotationTextProperty',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1TextAnnotationTextProperty();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudVisionV1p2beta1TextAnnotationTextProperty.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1TextAnnotationTextProperty(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1TextDetectionParams',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1TextDetectionParams();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudVisionV1p2beta1TextDetectionParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1TextDetectionParams(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Vertex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Vertex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Vertex.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1Vertex(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1WebDetection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1WebDetection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1WebDetection.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1WebDetection(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1WebDetectionParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1WebDetectionParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1WebDetectionParams.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1WebDetectionParams(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1WebDetectionWebEntity',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1WebDetectionWebEntity();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudVisionV1p2beta1WebDetectionWebEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1WebDetectionWebEntity(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1WebDetectionWebImage',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1WebDetectionWebImage();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudVisionV1p2beta1WebDetectionWebImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1WebDetectionWebImage(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1WebDetectionWebLabel',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1WebDetectionWebLabel();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudVisionV1p2beta1WebDetectionWebLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1WebDetectionWebLabel(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudVisionV1p2beta1WebDetectionWebPage',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudVisionV1p2beta1WebDetectionWebPage();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudVisionV1p2beta1WebDetectionWebPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudVisionV1p2beta1WebDetectionWebPage(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudVisionV1p2beta1Word', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudVisionV1p2beta1Word();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudVisionV1p2beta1Word.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudVisionV1p2beta1Word(od);
    });
  });

  unittest.group('obj-schema-LatLng', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatLng();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LatLng.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLatLng(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Operation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Status.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatus(od);
    });
  });

  unittest.group('resource-FilesResource', () {
    unittest.test('method--annotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).files;
      final arg_request =
          buildGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 24),
            unittest.equals('v1p2beta1/files:annotate'),
          );
          pathOffset += 24;

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
          final resp = convert.json.encode(
            buildGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.annotate(arg_request, $fields: arg_$fields);
      checkGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse(
        response as api.GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse,
      );
    });

    unittest.test('method--asyncBatchAnnotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).files;
      final arg_request =
          buildGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 34),
            unittest.equals('v1p2beta1/files:asyncBatchAnnotate'),
          );
          pathOffset += 34;

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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.asyncBatchAnnotate(
        arg_request,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ImagesResource', () {
    unittest.test('method--annotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).images;
      final arg_request =
          buildGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest(obj);

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
            unittest.equals('v1p2beta1/images:annotate'),
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
          final resp = convert.json.encode(
            buildGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.annotate(arg_request, $fields: arg_$fields);
      checkGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse(
        response as api.GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse,
      );
    });

    unittest.test('method--asyncBatchAnnotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).images;
      final arg_request =
          buildGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 35),
            unittest.equals('v1p2beta1/images:asyncBatchAnnotate'),
          );
          pathOffset += 35;

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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.asyncBatchAnnotate(
        arg_request,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsFilesResource', () {
    unittest.test('method--annotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.files;
      final arg_request =
          buildGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('v1p2beta1/'),
          );
          pathOffset += 10;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          final resp = convert.json.encode(
            buildGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.annotate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse(
        response as api.GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse,
      );
    });

    unittest.test('method--asyncBatchAnnotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.files;
      final arg_request =
          buildGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('v1p2beta1/'),
          );
          pathOffset += 10;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.asyncBatchAnnotate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsImagesResource', () {
    unittest.test('method--annotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.images;
      final arg_request =
          buildGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('v1p2beta1/'),
          );
          pathOffset += 10;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          final resp = convert.json.encode(
            buildGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.annotate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse(
        response as api.GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse,
      );
    });

    unittest.test('method--asyncBatchAnnotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.images;
      final arg_request =
          buildGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('v1p2beta1/'),
          );
          pathOffset += 10;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.asyncBatchAnnotate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsFilesResource', () {
    unittest.test('method--annotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.files;
      final arg_request =
          buildGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('v1p2beta1/'),
          );
          pathOffset += 10;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          final resp = convert.json.encode(
            buildGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.annotate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse(
        response as api.GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse,
      );
    });

    unittest.test('method--asyncBatchAnnotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.files;
      final arg_request =
          buildGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('v1p2beta1/'),
          );
          pathOffset += 10;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.asyncBatchAnnotate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsImagesResource', () {
    unittest.test('method--annotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.images;
      final arg_request =
          buildGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('v1p2beta1/'),
          );
          pathOffset += 10;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          final resp = convert.json.encode(
            buildGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.annotate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse(
        response as api.GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse,
      );
    });

    unittest.test('method--asyncBatchAnnotate', () async {
      final mock = HttpServerMock();
      final res = api.VisionApi(mock).projects.locations.images;
      final arg_request =
          buildGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('v1p2beta1/'),
          );
          pathOffset += 10;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.asyncBatchAnnotate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });
}
