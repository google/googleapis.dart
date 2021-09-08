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

import 'package:googleapis/books/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAnnotationClientVersionRanges = 0;
api.AnnotationClientVersionRanges buildAnnotationClientVersionRanges() {
  final o = api.AnnotationClientVersionRanges();
  buildCounterAnnotationClientVersionRanges++;
  if (buildCounterAnnotationClientVersionRanges < 3) {
    o.cfiRange = buildBooksAnnotationsRange();
    o.contentVersion = 'foo';
    o.gbImageRange = buildBooksAnnotationsRange();
    o.gbTextRange = buildBooksAnnotationsRange();
    o.imageCfiRange = buildBooksAnnotationsRange();
  }
  buildCounterAnnotationClientVersionRanges--;
  return o;
}

void checkAnnotationClientVersionRanges(api.AnnotationClientVersionRanges o) {
  buildCounterAnnotationClientVersionRanges++;
  if (buildCounterAnnotationClientVersionRanges < 3) {
    checkBooksAnnotationsRange(o.cfiRange!);
    unittest.expect(
      o.contentVersion!,
      unittest.equals('foo'),
    );
    checkBooksAnnotationsRange(o.gbImageRange!);
    checkBooksAnnotationsRange(o.gbTextRange!);
    checkBooksAnnotationsRange(o.imageCfiRange!);
  }
  buildCounterAnnotationClientVersionRanges--;
}

core.int buildCounterAnnotationCurrentVersionRanges = 0;
api.AnnotationCurrentVersionRanges buildAnnotationCurrentVersionRanges() {
  final o = api.AnnotationCurrentVersionRanges();
  buildCounterAnnotationCurrentVersionRanges++;
  if (buildCounterAnnotationCurrentVersionRanges < 3) {
    o.cfiRange = buildBooksAnnotationsRange();
    o.contentVersion = 'foo';
    o.gbImageRange = buildBooksAnnotationsRange();
    o.gbTextRange = buildBooksAnnotationsRange();
    o.imageCfiRange = buildBooksAnnotationsRange();
  }
  buildCounterAnnotationCurrentVersionRanges--;
  return o;
}

void checkAnnotationCurrentVersionRanges(api.AnnotationCurrentVersionRanges o) {
  buildCounterAnnotationCurrentVersionRanges++;
  if (buildCounterAnnotationCurrentVersionRanges < 3) {
    checkBooksAnnotationsRange(o.cfiRange!);
    unittest.expect(
      o.contentVersion!,
      unittest.equals('foo'),
    );
    checkBooksAnnotationsRange(o.gbImageRange!);
    checkBooksAnnotationsRange(o.gbTextRange!);
    checkBooksAnnotationsRange(o.imageCfiRange!);
  }
  buildCounterAnnotationCurrentVersionRanges--;
}

core.int buildCounterAnnotationLayerSummary = 0;
api.AnnotationLayerSummary buildAnnotationLayerSummary() {
  final o = api.AnnotationLayerSummary();
  buildCounterAnnotationLayerSummary++;
  if (buildCounterAnnotationLayerSummary < 3) {
    o.allowedCharacterCount = 42;
    o.limitType = 'foo';
    o.remainingCharacterCount = 42;
  }
  buildCounterAnnotationLayerSummary--;
  return o;
}

void checkAnnotationLayerSummary(api.AnnotationLayerSummary o) {
  buildCounterAnnotationLayerSummary++;
  if (buildCounterAnnotationLayerSummary < 3) {
    unittest.expect(
      o.allowedCharacterCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.limitType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remainingCharacterCount!,
      unittest.equals(42),
    );
  }
  buildCounterAnnotationLayerSummary--;
}

core.List<core.String> buildUnnamed7840() => [
      'foo',
      'foo',
    ];

void checkUnnamed7840(core.List<core.String> o) {
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

core.int buildCounterAnnotation = 0;
api.Annotation buildAnnotation() {
  final o = api.Annotation();
  buildCounterAnnotation++;
  if (buildCounterAnnotation < 3) {
    o.afterSelectedText = 'foo';
    o.beforeSelectedText = 'foo';
    o.clientVersionRanges = buildAnnotationClientVersionRanges();
    o.created = 'foo';
    o.currentVersionRanges = buildAnnotationCurrentVersionRanges();
    o.data = 'foo';
    o.deleted = true;
    o.highlightStyle = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.layerId = 'foo';
    o.layerSummary = buildAnnotationLayerSummary();
    o.pageIds = buildUnnamed7840();
    o.selectedText = 'foo';
    o.selfLink = 'foo';
    o.updated = 'foo';
    o.volumeId = 'foo';
  }
  buildCounterAnnotation--;
  return o;
}

void checkAnnotation(api.Annotation o) {
  buildCounterAnnotation++;
  if (buildCounterAnnotation < 3) {
    unittest.expect(
      o.afterSelectedText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.beforeSelectedText!,
      unittest.equals('foo'),
    );
    checkAnnotationClientVersionRanges(o.clientVersionRanges!);
    unittest.expect(
      o.created!,
      unittest.equals('foo'),
    );
    checkAnnotationCurrentVersionRanges(o.currentVersionRanges!);
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.highlightStyle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.layerId!,
      unittest.equals('foo'),
    );
    checkAnnotationLayerSummary(o.layerSummary!);
    checkUnnamed7840(o.pageIds!);
    unittest.expect(
      o.selectedText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updated!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volumeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnnotation--;
}

core.List<api.Annotation> buildUnnamed7841() => [
      buildAnnotation(),
      buildAnnotation(),
    ];

void checkUnnamed7841(core.List<api.Annotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotation(o[0]);
  checkAnnotation(o[1]);
}

core.int buildCounterAnnotations = 0;
api.Annotations buildAnnotations() {
  final o = api.Annotations();
  buildCounterAnnotations++;
  if (buildCounterAnnotations < 3) {
    o.items = buildUnnamed7841();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.totalItems = 42;
  }
  buildCounterAnnotations--;
  return o;
}

void checkAnnotations(api.Annotations o) {
  buildCounterAnnotations++;
  if (buildCounterAnnotations < 3) {
    checkUnnamed7841(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalItems!,
      unittest.equals(42),
    );
  }
  buildCounterAnnotations--;
}

core.int buildCounterAnnotationsSummaryLayers = 0;
api.AnnotationsSummaryLayers buildAnnotationsSummaryLayers() {
  final o = api.AnnotationsSummaryLayers();
  buildCounterAnnotationsSummaryLayers++;
  if (buildCounterAnnotationsSummaryLayers < 3) {
    o.allowedCharacterCount = 42;
    o.layerId = 'foo';
    o.limitType = 'foo';
    o.remainingCharacterCount = 42;
    o.updated = 'foo';
  }
  buildCounterAnnotationsSummaryLayers--;
  return o;
}

void checkAnnotationsSummaryLayers(api.AnnotationsSummaryLayers o) {
  buildCounterAnnotationsSummaryLayers++;
  if (buildCounterAnnotationsSummaryLayers < 3) {
    unittest.expect(
      o.allowedCharacterCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.layerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.limitType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remainingCharacterCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.updated!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnnotationsSummaryLayers--;
}

core.List<api.AnnotationsSummaryLayers> buildUnnamed7842() => [
      buildAnnotationsSummaryLayers(),
      buildAnnotationsSummaryLayers(),
    ];

void checkUnnamed7842(core.List<api.AnnotationsSummaryLayers> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotationsSummaryLayers(o[0]);
  checkAnnotationsSummaryLayers(o[1]);
}

core.int buildCounterAnnotationsSummary = 0;
api.AnnotationsSummary buildAnnotationsSummary() {
  final o = api.AnnotationsSummary();
  buildCounterAnnotationsSummary++;
  if (buildCounterAnnotationsSummary < 3) {
    o.kind = 'foo';
    o.layers = buildUnnamed7842();
  }
  buildCounterAnnotationsSummary--;
  return o;
}

void checkAnnotationsSummary(api.AnnotationsSummary o) {
  buildCounterAnnotationsSummary++;
  if (buildCounterAnnotationsSummary < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed7842(o.layers!);
  }
  buildCounterAnnotationsSummary--;
}

core.List<api.GeoAnnotationdata> buildUnnamed7843() => [
      buildGeoAnnotationdata(),
      buildGeoAnnotationdata(),
    ];

void checkUnnamed7843(core.List<api.GeoAnnotationdata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeoAnnotationdata(o[0]);
  checkGeoAnnotationdata(o[1]);
}

core.int buildCounterAnnotationsdata = 0;
api.Annotationsdata buildAnnotationsdata() {
  final o = api.Annotationsdata();
  buildCounterAnnotationsdata++;
  if (buildCounterAnnotationsdata < 3) {
    o.items = buildUnnamed7843();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.totalItems = 42;
  }
  buildCounterAnnotationsdata--;
  return o;
}

void checkAnnotationsdata(api.Annotationsdata o) {
  buildCounterAnnotationsdata++;
  if (buildCounterAnnotationsdata < 3) {
    checkUnnamed7843(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalItems!,
      unittest.equals(42),
    );
  }
  buildCounterAnnotationsdata--;
}

core.int buildCounterBooksAnnotationsRange = 0;
api.BooksAnnotationsRange buildBooksAnnotationsRange() {
  final o = api.BooksAnnotationsRange();
  buildCounterBooksAnnotationsRange++;
  if (buildCounterBooksAnnotationsRange < 3) {
    o.endOffset = 'foo';
    o.endPosition = 'foo';
    o.startOffset = 'foo';
    o.startPosition = 'foo';
  }
  buildCounterBooksAnnotationsRange--;
  return o;
}

void checkBooksAnnotationsRange(api.BooksAnnotationsRange o) {
  buildCounterBooksAnnotationsRange++;
  if (buildCounterBooksAnnotationsRange < 3) {
    unittest.expect(
      o.endOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endPosition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startPosition!,
      unittest.equals('foo'),
    );
  }
  buildCounterBooksAnnotationsRange--;
}

core.int buildCounterBooksCloudloadingResource = 0;
api.BooksCloudloadingResource buildBooksCloudloadingResource() {
  final o = api.BooksCloudloadingResource();
  buildCounterBooksCloudloadingResource++;
  if (buildCounterBooksCloudloadingResource < 3) {
    o.author = 'foo';
    o.processingState = 'foo';
    o.title = 'foo';
    o.volumeId = 'foo';
  }
  buildCounterBooksCloudloadingResource--;
  return o;
}

void checkBooksCloudloadingResource(api.BooksCloudloadingResource o) {
  buildCounterBooksCloudloadingResource++;
  if (buildCounterBooksCloudloadingResource < 3) {
    unittest.expect(
      o.author!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.processingState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volumeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBooksCloudloadingResource--;
}

core.int buildCounterBooksVolumesRecommendedRateResponse = 0;
api.BooksVolumesRecommendedRateResponse
    buildBooksVolumesRecommendedRateResponse() {
  final o = api.BooksVolumesRecommendedRateResponse();
  buildCounterBooksVolumesRecommendedRateResponse++;
  if (buildCounterBooksVolumesRecommendedRateResponse < 3) {
    o.consistencyToken = 'foo';
  }
  buildCounterBooksVolumesRecommendedRateResponse--;
  return o;
}

void checkBooksVolumesRecommendedRateResponse(
    api.BooksVolumesRecommendedRateResponse o) {
  buildCounterBooksVolumesRecommendedRateResponse++;
  if (buildCounterBooksVolumesRecommendedRateResponse < 3) {
    unittest.expect(
      o.consistencyToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterBooksVolumesRecommendedRateResponse--;
}

core.int buildCounterBookshelf = 0;
api.Bookshelf buildBookshelf() {
  final o = api.Bookshelf();
  buildCounterBookshelf++;
  if (buildCounterBookshelf < 3) {
    o.access = 'foo';
    o.created = 'foo';
    o.description = 'foo';
    o.id = 42;
    o.kind = 'foo';
    o.selfLink = 'foo';
    o.title = 'foo';
    o.updated = 'foo';
    o.volumeCount = 42;
    o.volumesLastUpdated = 'foo';
  }
  buildCounterBookshelf--;
  return o;
}

void checkBookshelf(api.Bookshelf o) {
  buildCounterBookshelf++;
  if (buildCounterBookshelf < 3) {
    unittest.expect(
      o.access!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.created!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals(42),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updated!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volumeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.volumesLastUpdated!,
      unittest.equals('foo'),
    );
  }
  buildCounterBookshelf--;
}

core.List<api.Bookshelf> buildUnnamed7844() => [
      buildBookshelf(),
      buildBookshelf(),
    ];

void checkUnnamed7844(core.List<api.Bookshelf> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBookshelf(o[0]);
  checkBookshelf(o[1]);
}

core.int buildCounterBookshelves = 0;
api.Bookshelves buildBookshelves() {
  final o = api.Bookshelves();
  buildCounterBookshelves++;
  if (buildCounterBookshelves < 3) {
    o.items = buildUnnamed7844();
    o.kind = 'foo';
  }
  buildCounterBookshelves--;
  return o;
}

void checkBookshelves(api.Bookshelves o) {
  buildCounterBookshelves++;
  if (buildCounterBookshelves < 3) {
    checkUnnamed7844(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterBookshelves--;
}

core.int buildCounterCategoryItems = 0;
api.CategoryItems buildCategoryItems() {
  final o = api.CategoryItems();
  buildCounterCategoryItems++;
  if (buildCounterCategoryItems < 3) {
    o.badgeUrl = 'foo';
    o.categoryId = 'foo';
    o.name = 'foo';
  }
  buildCounterCategoryItems--;
  return o;
}

void checkCategoryItems(api.CategoryItems o) {
  buildCounterCategoryItems++;
  if (buildCounterCategoryItems < 3) {
    unittest.expect(
      o.badgeUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.categoryId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterCategoryItems--;
}

core.List<api.CategoryItems> buildUnnamed7845() => [
      buildCategoryItems(),
      buildCategoryItems(),
    ];

void checkUnnamed7845(core.List<api.CategoryItems> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCategoryItems(o[0]);
  checkCategoryItems(o[1]);
}

core.int buildCounterCategory = 0;
api.Category buildCategory() {
  final o = api.Category();
  buildCounterCategory++;
  if (buildCounterCategory < 3) {
    o.items = buildUnnamed7845();
    o.kind = 'foo';
  }
  buildCounterCategory--;
  return o;
}

void checkCategory(api.Category o) {
  buildCounterCategory++;
  if (buildCounterCategory < 3) {
    checkUnnamed7845(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterCategory--;
}

core.int buildCounterConcurrentAccessRestriction = 0;
api.ConcurrentAccessRestriction buildConcurrentAccessRestriction() {
  final o = api.ConcurrentAccessRestriction();
  buildCounterConcurrentAccessRestriction++;
  if (buildCounterConcurrentAccessRestriction < 3) {
    o.deviceAllowed = true;
    o.kind = 'foo';
    o.maxConcurrentDevices = 42;
    o.message = 'foo';
    o.nonce = 'foo';
    o.reasonCode = 'foo';
    o.restricted = true;
    o.signature = 'foo';
    o.source = 'foo';
    o.timeWindowSeconds = 42;
    o.volumeId = 'foo';
  }
  buildCounterConcurrentAccessRestriction--;
  return o;
}

void checkConcurrentAccessRestriction(api.ConcurrentAccessRestriction o) {
  buildCounterConcurrentAccessRestriction++;
  if (buildCounterConcurrentAccessRestriction < 3) {
    unittest.expect(o.deviceAllowed!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxConcurrentDevices!,
      unittest.equals(42),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nonce!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonCode!,
      unittest.equals('foo'),
    );
    unittest.expect(o.restricted!, unittest.isTrue);
    unittest.expect(
      o.signature!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeWindowSeconds!,
      unittest.equals(42),
    );
    unittest.expect(
      o.volumeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterConcurrentAccessRestriction--;
}

core.int buildCounterDictionaryAnnotationdata = 0;
api.DictionaryAnnotationdata buildDictionaryAnnotationdata() {
  final o = api.DictionaryAnnotationdata();
  buildCounterDictionaryAnnotationdata++;
  if (buildCounterDictionaryAnnotationdata < 3) {
    o.annotationType = 'foo';
    o.data = buildDictlayerdata();
    o.encodedData = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.layerId = 'foo';
    o.selfLink = 'foo';
    o.updated = 'foo';
    o.volumeId = 'foo';
  }
  buildCounterDictionaryAnnotationdata--;
  return o;
}

void checkDictionaryAnnotationdata(api.DictionaryAnnotationdata o) {
  buildCounterDictionaryAnnotationdata++;
  if (buildCounterDictionaryAnnotationdata < 3) {
    unittest.expect(
      o.annotationType!,
      unittest.equals('foo'),
    );
    checkDictlayerdata(o.data!);
    unittest.expect(
      o.encodedData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.layerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updated!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volumeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDictionaryAnnotationdata--;
}

core.int buildCounterDictlayerdataCommon = 0;
api.DictlayerdataCommon buildDictlayerdataCommon() {
  final o = api.DictlayerdataCommon();
  buildCounterDictlayerdataCommon++;
  if (buildCounterDictlayerdataCommon < 3) {
    o.title = 'foo';
  }
  buildCounterDictlayerdataCommon--;
  return o;
}

void checkDictlayerdataCommon(api.DictlayerdataCommon o) {
  buildCounterDictlayerdataCommon++;
  if (buildCounterDictlayerdataCommon < 3) {
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterDictlayerdataCommon--;
}

core.int buildCounterDictlayerdataDictSource = 0;
api.DictlayerdataDictSource buildDictlayerdataDictSource() {
  final o = api.DictlayerdataDictSource();
  buildCounterDictlayerdataDictSource++;
  if (buildCounterDictlayerdataDictSource < 3) {
    o.attribution = 'foo';
    o.url = 'foo';
  }
  buildCounterDictlayerdataDictSource--;
  return o;
}

void checkDictlayerdataDictSource(api.DictlayerdataDictSource o) {
  buildCounterDictlayerdataDictSource++;
  if (buildCounterDictlayerdataDictSource < 3) {
    unittest.expect(
      o.attribution!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterDictlayerdataDictSource--;
}

core.int buildCounterDictlayerdataDictWordsDerivativesSource = 0;
api.DictlayerdataDictWordsDerivativesSource
    buildDictlayerdataDictWordsDerivativesSource() {
  final o = api.DictlayerdataDictWordsDerivativesSource();
  buildCounterDictlayerdataDictWordsDerivativesSource++;
  if (buildCounterDictlayerdataDictWordsDerivativesSource < 3) {
    o.attribution = 'foo';
    o.url = 'foo';
  }
  buildCounterDictlayerdataDictWordsDerivativesSource--;
  return o;
}

void checkDictlayerdataDictWordsDerivativesSource(
    api.DictlayerdataDictWordsDerivativesSource o) {
  buildCounterDictlayerdataDictWordsDerivativesSource++;
  if (buildCounterDictlayerdataDictWordsDerivativesSource < 3) {
    unittest.expect(
      o.attribution!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterDictlayerdataDictWordsDerivativesSource--;
}

core.int buildCounterDictlayerdataDictWordsDerivatives = 0;
api.DictlayerdataDictWordsDerivatives buildDictlayerdataDictWordsDerivatives() {
  final o = api.DictlayerdataDictWordsDerivatives();
  buildCounterDictlayerdataDictWordsDerivatives++;
  if (buildCounterDictlayerdataDictWordsDerivatives < 3) {
    o.source = buildDictlayerdataDictWordsDerivativesSource();
    o.text = 'foo';
  }
  buildCounterDictlayerdataDictWordsDerivatives--;
  return o;
}

void checkDictlayerdataDictWordsDerivatives(
    api.DictlayerdataDictWordsDerivatives o) {
  buildCounterDictlayerdataDictWordsDerivatives++;
  if (buildCounterDictlayerdataDictWordsDerivatives < 3) {
    checkDictlayerdataDictWordsDerivativesSource(o.source!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterDictlayerdataDictWordsDerivatives--;
}

core.List<api.DictlayerdataDictWordsDerivatives> buildUnnamed7846() => [
      buildDictlayerdataDictWordsDerivatives(),
      buildDictlayerdataDictWordsDerivatives(),
    ];

void checkUnnamed7846(core.List<api.DictlayerdataDictWordsDerivatives> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDictlayerdataDictWordsDerivatives(o[0]);
  checkDictlayerdataDictWordsDerivatives(o[1]);
}

core.int buildCounterDictlayerdataDictWordsExamplesSource = 0;
api.DictlayerdataDictWordsExamplesSource
    buildDictlayerdataDictWordsExamplesSource() {
  final o = api.DictlayerdataDictWordsExamplesSource();
  buildCounterDictlayerdataDictWordsExamplesSource++;
  if (buildCounterDictlayerdataDictWordsExamplesSource < 3) {
    o.attribution = 'foo';
    o.url = 'foo';
  }
  buildCounterDictlayerdataDictWordsExamplesSource--;
  return o;
}

void checkDictlayerdataDictWordsExamplesSource(
    api.DictlayerdataDictWordsExamplesSource o) {
  buildCounterDictlayerdataDictWordsExamplesSource++;
  if (buildCounterDictlayerdataDictWordsExamplesSource < 3) {
    unittest.expect(
      o.attribution!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterDictlayerdataDictWordsExamplesSource--;
}

core.int buildCounterDictlayerdataDictWordsExamples = 0;
api.DictlayerdataDictWordsExamples buildDictlayerdataDictWordsExamples() {
  final o = api.DictlayerdataDictWordsExamples();
  buildCounterDictlayerdataDictWordsExamples++;
  if (buildCounterDictlayerdataDictWordsExamples < 3) {
    o.source = buildDictlayerdataDictWordsExamplesSource();
    o.text = 'foo';
  }
  buildCounterDictlayerdataDictWordsExamples--;
  return o;
}

void checkDictlayerdataDictWordsExamples(api.DictlayerdataDictWordsExamples o) {
  buildCounterDictlayerdataDictWordsExamples++;
  if (buildCounterDictlayerdataDictWordsExamples < 3) {
    checkDictlayerdataDictWordsExamplesSource(o.source!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterDictlayerdataDictWordsExamples--;
}

core.List<api.DictlayerdataDictWordsExamples> buildUnnamed7847() => [
      buildDictlayerdataDictWordsExamples(),
      buildDictlayerdataDictWordsExamples(),
    ];

void checkUnnamed7847(core.List<api.DictlayerdataDictWordsExamples> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDictlayerdataDictWordsExamples(o[0]);
  checkDictlayerdataDictWordsExamples(o[1]);
}

core.int buildCounterDictlayerdataDictWordsSensesConjugations = 0;
api.DictlayerdataDictWordsSensesConjugations
    buildDictlayerdataDictWordsSensesConjugations() {
  final o = api.DictlayerdataDictWordsSensesConjugations();
  buildCounterDictlayerdataDictWordsSensesConjugations++;
  if (buildCounterDictlayerdataDictWordsSensesConjugations < 3) {
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterDictlayerdataDictWordsSensesConjugations--;
  return o;
}

void checkDictlayerdataDictWordsSensesConjugations(
    api.DictlayerdataDictWordsSensesConjugations o) {
  buildCounterDictlayerdataDictWordsSensesConjugations++;
  if (buildCounterDictlayerdataDictWordsSensesConjugations < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterDictlayerdataDictWordsSensesConjugations--;
}

core.List<api.DictlayerdataDictWordsSensesConjugations> buildUnnamed7848() => [
      buildDictlayerdataDictWordsSensesConjugations(),
      buildDictlayerdataDictWordsSensesConjugations(),
    ];

void checkUnnamed7848(
    core.List<api.DictlayerdataDictWordsSensesConjugations> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDictlayerdataDictWordsSensesConjugations(o[0]);
  checkDictlayerdataDictWordsSensesConjugations(o[1]);
}

core.int buildCounterDictlayerdataDictWordsSensesDefinitionsExamplesSource = 0;
api.DictlayerdataDictWordsSensesDefinitionsExamplesSource
    buildDictlayerdataDictWordsSensesDefinitionsExamplesSource() {
  final o = api.DictlayerdataDictWordsSensesDefinitionsExamplesSource();
  buildCounterDictlayerdataDictWordsSensesDefinitionsExamplesSource++;
  if (buildCounterDictlayerdataDictWordsSensesDefinitionsExamplesSource < 3) {
    o.attribution = 'foo';
    o.url = 'foo';
  }
  buildCounterDictlayerdataDictWordsSensesDefinitionsExamplesSource--;
  return o;
}

void checkDictlayerdataDictWordsSensesDefinitionsExamplesSource(
    api.DictlayerdataDictWordsSensesDefinitionsExamplesSource o) {
  buildCounterDictlayerdataDictWordsSensesDefinitionsExamplesSource++;
  if (buildCounterDictlayerdataDictWordsSensesDefinitionsExamplesSource < 3) {
    unittest.expect(
      o.attribution!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterDictlayerdataDictWordsSensesDefinitionsExamplesSource--;
}

core.int buildCounterDictlayerdataDictWordsSensesDefinitionsExamples = 0;
api.DictlayerdataDictWordsSensesDefinitionsExamples
    buildDictlayerdataDictWordsSensesDefinitionsExamples() {
  final o = api.DictlayerdataDictWordsSensesDefinitionsExamples();
  buildCounterDictlayerdataDictWordsSensesDefinitionsExamples++;
  if (buildCounterDictlayerdataDictWordsSensesDefinitionsExamples < 3) {
    o.source = buildDictlayerdataDictWordsSensesDefinitionsExamplesSource();
    o.text = 'foo';
  }
  buildCounterDictlayerdataDictWordsSensesDefinitionsExamples--;
  return o;
}

void checkDictlayerdataDictWordsSensesDefinitionsExamples(
    api.DictlayerdataDictWordsSensesDefinitionsExamples o) {
  buildCounterDictlayerdataDictWordsSensesDefinitionsExamples++;
  if (buildCounterDictlayerdataDictWordsSensesDefinitionsExamples < 3) {
    checkDictlayerdataDictWordsSensesDefinitionsExamplesSource(o.source!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterDictlayerdataDictWordsSensesDefinitionsExamples--;
}

core.List<api.DictlayerdataDictWordsSensesDefinitionsExamples>
    buildUnnamed7849() => [
          buildDictlayerdataDictWordsSensesDefinitionsExamples(),
          buildDictlayerdataDictWordsSensesDefinitionsExamples(),
        ];

void checkUnnamed7849(
    core.List<api.DictlayerdataDictWordsSensesDefinitionsExamples> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDictlayerdataDictWordsSensesDefinitionsExamples(o[0]);
  checkDictlayerdataDictWordsSensesDefinitionsExamples(o[1]);
}

core.int buildCounterDictlayerdataDictWordsSensesDefinitions = 0;
api.DictlayerdataDictWordsSensesDefinitions
    buildDictlayerdataDictWordsSensesDefinitions() {
  final o = api.DictlayerdataDictWordsSensesDefinitions();
  buildCounterDictlayerdataDictWordsSensesDefinitions++;
  if (buildCounterDictlayerdataDictWordsSensesDefinitions < 3) {
    o.definition = 'foo';
    o.examples = buildUnnamed7849();
  }
  buildCounterDictlayerdataDictWordsSensesDefinitions--;
  return o;
}

void checkDictlayerdataDictWordsSensesDefinitions(
    api.DictlayerdataDictWordsSensesDefinitions o) {
  buildCounterDictlayerdataDictWordsSensesDefinitions++;
  if (buildCounterDictlayerdataDictWordsSensesDefinitions < 3) {
    unittest.expect(
      o.definition!,
      unittest.equals('foo'),
    );
    checkUnnamed7849(o.examples!);
  }
  buildCounterDictlayerdataDictWordsSensesDefinitions--;
}

core.List<api.DictlayerdataDictWordsSensesDefinitions> buildUnnamed7850() => [
      buildDictlayerdataDictWordsSensesDefinitions(),
      buildDictlayerdataDictWordsSensesDefinitions(),
    ];

void checkUnnamed7850(
    core.List<api.DictlayerdataDictWordsSensesDefinitions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDictlayerdataDictWordsSensesDefinitions(o[0]);
  checkDictlayerdataDictWordsSensesDefinitions(o[1]);
}

core.int buildCounterDictlayerdataDictWordsSensesSource = 0;
api.DictlayerdataDictWordsSensesSource
    buildDictlayerdataDictWordsSensesSource() {
  final o = api.DictlayerdataDictWordsSensesSource();
  buildCounterDictlayerdataDictWordsSensesSource++;
  if (buildCounterDictlayerdataDictWordsSensesSource < 3) {
    o.attribution = 'foo';
    o.url = 'foo';
  }
  buildCounterDictlayerdataDictWordsSensesSource--;
  return o;
}

void checkDictlayerdataDictWordsSensesSource(
    api.DictlayerdataDictWordsSensesSource o) {
  buildCounterDictlayerdataDictWordsSensesSource++;
  if (buildCounterDictlayerdataDictWordsSensesSource < 3) {
    unittest.expect(
      o.attribution!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterDictlayerdataDictWordsSensesSource--;
}

core.int buildCounterDictlayerdataDictWordsSensesSynonymsSource = 0;
api.DictlayerdataDictWordsSensesSynonymsSource
    buildDictlayerdataDictWordsSensesSynonymsSource() {
  final o = api.DictlayerdataDictWordsSensesSynonymsSource();
  buildCounterDictlayerdataDictWordsSensesSynonymsSource++;
  if (buildCounterDictlayerdataDictWordsSensesSynonymsSource < 3) {
    o.attribution = 'foo';
    o.url = 'foo';
  }
  buildCounterDictlayerdataDictWordsSensesSynonymsSource--;
  return o;
}

void checkDictlayerdataDictWordsSensesSynonymsSource(
    api.DictlayerdataDictWordsSensesSynonymsSource o) {
  buildCounterDictlayerdataDictWordsSensesSynonymsSource++;
  if (buildCounterDictlayerdataDictWordsSensesSynonymsSource < 3) {
    unittest.expect(
      o.attribution!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterDictlayerdataDictWordsSensesSynonymsSource--;
}

core.int buildCounterDictlayerdataDictWordsSensesSynonyms = 0;
api.DictlayerdataDictWordsSensesSynonyms
    buildDictlayerdataDictWordsSensesSynonyms() {
  final o = api.DictlayerdataDictWordsSensesSynonyms();
  buildCounterDictlayerdataDictWordsSensesSynonyms++;
  if (buildCounterDictlayerdataDictWordsSensesSynonyms < 3) {
    o.source = buildDictlayerdataDictWordsSensesSynonymsSource();
    o.text = 'foo';
  }
  buildCounterDictlayerdataDictWordsSensesSynonyms--;
  return o;
}

void checkDictlayerdataDictWordsSensesSynonyms(
    api.DictlayerdataDictWordsSensesSynonyms o) {
  buildCounterDictlayerdataDictWordsSensesSynonyms++;
  if (buildCounterDictlayerdataDictWordsSensesSynonyms < 3) {
    checkDictlayerdataDictWordsSensesSynonymsSource(o.source!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterDictlayerdataDictWordsSensesSynonyms--;
}

core.List<api.DictlayerdataDictWordsSensesSynonyms> buildUnnamed7851() => [
      buildDictlayerdataDictWordsSensesSynonyms(),
      buildDictlayerdataDictWordsSensesSynonyms(),
    ];

void checkUnnamed7851(core.List<api.DictlayerdataDictWordsSensesSynonyms> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDictlayerdataDictWordsSensesSynonyms(o[0]);
  checkDictlayerdataDictWordsSensesSynonyms(o[1]);
}

core.int buildCounterDictlayerdataDictWordsSenses = 0;
api.DictlayerdataDictWordsSenses buildDictlayerdataDictWordsSenses() {
  final o = api.DictlayerdataDictWordsSenses();
  buildCounterDictlayerdataDictWordsSenses++;
  if (buildCounterDictlayerdataDictWordsSenses < 3) {
    o.conjugations = buildUnnamed7848();
    o.definitions = buildUnnamed7850();
    o.partOfSpeech = 'foo';
    o.pronunciation = 'foo';
    o.pronunciationUrl = 'foo';
    o.source = buildDictlayerdataDictWordsSensesSource();
    o.syllabification = 'foo';
    o.synonyms = buildUnnamed7851();
  }
  buildCounterDictlayerdataDictWordsSenses--;
  return o;
}

void checkDictlayerdataDictWordsSenses(api.DictlayerdataDictWordsSenses o) {
  buildCounterDictlayerdataDictWordsSenses++;
  if (buildCounterDictlayerdataDictWordsSenses < 3) {
    checkUnnamed7848(o.conjugations!);
    checkUnnamed7850(o.definitions!);
    unittest.expect(
      o.partOfSpeech!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pronunciation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pronunciationUrl!,
      unittest.equals('foo'),
    );
    checkDictlayerdataDictWordsSensesSource(o.source!);
    unittest.expect(
      o.syllabification!,
      unittest.equals('foo'),
    );
    checkUnnamed7851(o.synonyms!);
  }
  buildCounterDictlayerdataDictWordsSenses--;
}

core.List<api.DictlayerdataDictWordsSenses> buildUnnamed7852() => [
      buildDictlayerdataDictWordsSenses(),
      buildDictlayerdataDictWordsSenses(),
    ];

void checkUnnamed7852(core.List<api.DictlayerdataDictWordsSenses> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDictlayerdataDictWordsSenses(o[0]);
  checkDictlayerdataDictWordsSenses(o[1]);
}

core.int buildCounterDictlayerdataDictWordsSource = 0;
api.DictlayerdataDictWordsSource buildDictlayerdataDictWordsSource() {
  final o = api.DictlayerdataDictWordsSource();
  buildCounterDictlayerdataDictWordsSource++;
  if (buildCounterDictlayerdataDictWordsSource < 3) {
    o.attribution = 'foo';
    o.url = 'foo';
  }
  buildCounterDictlayerdataDictWordsSource--;
  return o;
}

void checkDictlayerdataDictWordsSource(api.DictlayerdataDictWordsSource o) {
  buildCounterDictlayerdataDictWordsSource++;
  if (buildCounterDictlayerdataDictWordsSource < 3) {
    unittest.expect(
      o.attribution!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterDictlayerdataDictWordsSource--;
}

core.int buildCounterDictlayerdataDictWords = 0;
api.DictlayerdataDictWords buildDictlayerdataDictWords() {
  final o = api.DictlayerdataDictWords();
  buildCounterDictlayerdataDictWords++;
  if (buildCounterDictlayerdataDictWords < 3) {
    o.derivatives = buildUnnamed7846();
    o.examples = buildUnnamed7847();
    o.senses = buildUnnamed7852();
    o.source = buildDictlayerdataDictWordsSource();
  }
  buildCounterDictlayerdataDictWords--;
  return o;
}

void checkDictlayerdataDictWords(api.DictlayerdataDictWords o) {
  buildCounterDictlayerdataDictWords++;
  if (buildCounterDictlayerdataDictWords < 3) {
    checkUnnamed7846(o.derivatives!);
    checkUnnamed7847(o.examples!);
    checkUnnamed7852(o.senses!);
    checkDictlayerdataDictWordsSource(o.source!);
  }
  buildCounterDictlayerdataDictWords--;
}

core.List<api.DictlayerdataDictWords> buildUnnamed7853() => [
      buildDictlayerdataDictWords(),
      buildDictlayerdataDictWords(),
    ];

void checkUnnamed7853(core.List<api.DictlayerdataDictWords> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDictlayerdataDictWords(o[0]);
  checkDictlayerdataDictWords(o[1]);
}

core.int buildCounterDictlayerdataDict = 0;
api.DictlayerdataDict buildDictlayerdataDict() {
  final o = api.DictlayerdataDict();
  buildCounterDictlayerdataDict++;
  if (buildCounterDictlayerdataDict < 3) {
    o.source = buildDictlayerdataDictSource();
    o.words = buildUnnamed7853();
  }
  buildCounterDictlayerdataDict--;
  return o;
}

void checkDictlayerdataDict(api.DictlayerdataDict o) {
  buildCounterDictlayerdataDict++;
  if (buildCounterDictlayerdataDict < 3) {
    checkDictlayerdataDictSource(o.source!);
    checkUnnamed7853(o.words!);
  }
  buildCounterDictlayerdataDict--;
}

core.int buildCounterDictlayerdata = 0;
api.Dictlayerdata buildDictlayerdata() {
  final o = api.Dictlayerdata();
  buildCounterDictlayerdata++;
  if (buildCounterDictlayerdata < 3) {
    o.common = buildDictlayerdataCommon();
    o.dict = buildDictlayerdataDict();
    o.kind = 'foo';
  }
  buildCounterDictlayerdata--;
  return o;
}

void checkDictlayerdata(api.Dictlayerdata o) {
  buildCounterDictlayerdata++;
  if (buildCounterDictlayerdata < 3) {
    checkDictlayerdataCommon(o.common!);
    checkDictlayerdataDict(o.dict!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterDictlayerdata--;
}

core.int buildCounterDiscoveryclustersClustersBannerWithContentContainer = 0;
api.DiscoveryclustersClustersBannerWithContentContainer
    buildDiscoveryclustersClustersBannerWithContentContainer() {
  final o = api.DiscoveryclustersClustersBannerWithContentContainer();
  buildCounterDiscoveryclustersClustersBannerWithContentContainer++;
  if (buildCounterDiscoveryclustersClustersBannerWithContentContainer < 3) {
    o.fillColorArgb = 'foo';
    o.imageUrl = 'foo';
    o.maskColorArgb = 'foo';
    o.moreButtonText = 'foo';
    o.moreButtonUrl = 'foo';
    o.textColorArgb = 'foo';
  }
  buildCounterDiscoveryclustersClustersBannerWithContentContainer--;
  return o;
}

void checkDiscoveryclustersClustersBannerWithContentContainer(
    api.DiscoveryclustersClustersBannerWithContentContainer o) {
  buildCounterDiscoveryclustersClustersBannerWithContentContainer++;
  if (buildCounterDiscoveryclustersClustersBannerWithContentContainer < 3) {
    unittest.expect(
      o.fillColorArgb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maskColorArgb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.moreButtonText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.moreButtonUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textColorArgb!,
      unittest.equals('foo'),
    );
  }
  buildCounterDiscoveryclustersClustersBannerWithContentContainer--;
}

core.List<api.Volume> buildUnnamed7854() => [
      buildVolume(),
      buildVolume(),
    ];

void checkUnnamed7854(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.int buildCounterDiscoveryclustersClusters = 0;
api.DiscoveryclustersClusters buildDiscoveryclustersClusters() {
  final o = api.DiscoveryclustersClusters();
  buildCounterDiscoveryclustersClusters++;
  if (buildCounterDiscoveryclustersClusters < 3) {
    o.bannerWithContentContainer =
        buildDiscoveryclustersClustersBannerWithContentContainer();
    o.subTitle = 'foo';
    o.title = 'foo';
    o.totalVolumes = 42;
    o.uid = 'foo';
    o.volumes = buildUnnamed7854();
  }
  buildCounterDiscoveryclustersClusters--;
  return o;
}

void checkDiscoveryclustersClusters(api.DiscoveryclustersClusters o) {
  buildCounterDiscoveryclustersClusters++;
  if (buildCounterDiscoveryclustersClusters < 3) {
    checkDiscoveryclustersClustersBannerWithContentContainer(
        o.bannerWithContentContainer!);
    unittest.expect(
      o.subTitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalVolumes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    checkUnnamed7854(o.volumes!);
  }
  buildCounterDiscoveryclustersClusters--;
}

core.List<api.DiscoveryclustersClusters> buildUnnamed7855() => [
      buildDiscoveryclustersClusters(),
      buildDiscoveryclustersClusters(),
    ];

void checkUnnamed7855(core.List<api.DiscoveryclustersClusters> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDiscoveryclustersClusters(o[0]);
  checkDiscoveryclustersClusters(o[1]);
}

core.int buildCounterDiscoveryclusters = 0;
api.Discoveryclusters buildDiscoveryclusters() {
  final o = api.Discoveryclusters();
  buildCounterDiscoveryclusters++;
  if (buildCounterDiscoveryclusters < 3) {
    o.clusters = buildUnnamed7855();
    o.kind = 'foo';
    o.totalClusters = 42;
  }
  buildCounterDiscoveryclusters--;
  return o;
}

void checkDiscoveryclusters(api.Discoveryclusters o) {
  buildCounterDiscoveryclusters++;
  if (buildCounterDiscoveryclusters < 3) {
    checkUnnamed7855(o.clusters!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalClusters!,
      unittest.equals(42),
    );
  }
  buildCounterDiscoveryclusters--;
}

core.int buildCounterDownloadAccessRestriction = 0;
api.DownloadAccessRestriction buildDownloadAccessRestriction() {
  final o = api.DownloadAccessRestriction();
  buildCounterDownloadAccessRestriction++;
  if (buildCounterDownloadAccessRestriction < 3) {
    o.deviceAllowed = true;
    o.downloadsAcquired = 42;
    o.justAcquired = true;
    o.kind = 'foo';
    o.maxDownloadDevices = 42;
    o.message = 'foo';
    o.nonce = 'foo';
    o.reasonCode = 'foo';
    o.restricted = true;
    o.signature = 'foo';
    o.source = 'foo';
    o.volumeId = 'foo';
  }
  buildCounterDownloadAccessRestriction--;
  return o;
}

void checkDownloadAccessRestriction(api.DownloadAccessRestriction o) {
  buildCounterDownloadAccessRestriction++;
  if (buildCounterDownloadAccessRestriction < 3) {
    unittest.expect(o.deviceAllowed!, unittest.isTrue);
    unittest.expect(
      o.downloadsAcquired!,
      unittest.equals(42),
    );
    unittest.expect(o.justAcquired!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxDownloadDevices!,
      unittest.equals(42),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nonce!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonCode!,
      unittest.equals('foo'),
    );
    unittest.expect(o.restricted!, unittest.isTrue);
    unittest.expect(
      o.signature!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volumeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDownloadAccessRestriction--;
}

core.List<api.DownloadAccessRestriction> buildUnnamed7856() => [
      buildDownloadAccessRestriction(),
      buildDownloadAccessRestriction(),
    ];

void checkUnnamed7856(core.List<api.DownloadAccessRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDownloadAccessRestriction(o[0]);
  checkDownloadAccessRestriction(o[1]);
}

core.int buildCounterDownloadAccesses = 0;
api.DownloadAccesses buildDownloadAccesses() {
  final o = api.DownloadAccesses();
  buildCounterDownloadAccesses++;
  if (buildCounterDownloadAccesses < 3) {
    o.downloadAccessList = buildUnnamed7856();
    o.kind = 'foo';
  }
  buildCounterDownloadAccesses--;
  return o;
}

void checkDownloadAccesses(api.DownloadAccesses o) {
  buildCounterDownloadAccesses++;
  if (buildCounterDownloadAccesses < 3) {
    checkUnnamed7856(o.downloadAccessList!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterDownloadAccesses--;
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

core.int buildCounterFamilyInfoMembership = 0;
api.FamilyInfoMembership buildFamilyInfoMembership() {
  final o = api.FamilyInfoMembership();
  buildCounterFamilyInfoMembership++;
  if (buildCounterFamilyInfoMembership < 3) {
    o.acquirePermission = 'foo';
    o.ageGroup = 'foo';
    o.allowedMaturityRating = 'foo';
    o.isInFamily = true;
    o.role = 'foo';
  }
  buildCounterFamilyInfoMembership--;
  return o;
}

void checkFamilyInfoMembership(api.FamilyInfoMembership o) {
  buildCounterFamilyInfoMembership++;
  if (buildCounterFamilyInfoMembership < 3) {
    unittest.expect(
      o.acquirePermission!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ageGroup!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.allowedMaturityRating!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isInFamily!, unittest.isTrue);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterFamilyInfoMembership--;
}

core.int buildCounterFamilyInfo = 0;
api.FamilyInfo buildFamilyInfo() {
  final o = api.FamilyInfo();
  buildCounterFamilyInfo++;
  if (buildCounterFamilyInfo < 3) {
    o.kind = 'foo';
    o.membership = buildFamilyInfoMembership();
  }
  buildCounterFamilyInfo--;
  return o;
}

void checkFamilyInfo(api.FamilyInfo o) {
  buildCounterFamilyInfo++;
  if (buildCounterFamilyInfo < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkFamilyInfoMembership(o.membership!);
  }
  buildCounterFamilyInfo--;
}

core.int buildCounterGeoAnnotationdata = 0;
api.GeoAnnotationdata buildGeoAnnotationdata() {
  final o = api.GeoAnnotationdata();
  buildCounterGeoAnnotationdata++;
  if (buildCounterGeoAnnotationdata < 3) {
    o.annotationType = 'foo';
    o.data = buildGeolayerdata();
    o.encodedData = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.layerId = 'foo';
    o.selfLink = 'foo';
    o.updated = 'foo';
    o.volumeId = 'foo';
  }
  buildCounterGeoAnnotationdata--;
  return o;
}

void checkGeoAnnotationdata(api.GeoAnnotationdata o) {
  buildCounterGeoAnnotationdata++;
  if (buildCounterGeoAnnotationdata < 3) {
    unittest.expect(
      o.annotationType!,
      unittest.equals('foo'),
    );
    checkGeolayerdata(o.data!);
    unittest.expect(
      o.encodedData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.layerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updated!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volumeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGeoAnnotationdata--;
}

core.int buildCounterGeolayerdataCommon = 0;
api.GeolayerdataCommon buildGeolayerdataCommon() {
  final o = api.GeolayerdataCommon();
  buildCounterGeolayerdataCommon++;
  if (buildCounterGeolayerdataCommon < 3) {
    o.lang = 'foo';
    o.previewImageUrl = 'foo';
    o.snippet = 'foo';
    o.snippetUrl = 'foo';
    o.title = 'foo';
  }
  buildCounterGeolayerdataCommon--;
  return o;
}

void checkGeolayerdataCommon(api.GeolayerdataCommon o) {
  buildCounterGeolayerdataCommon++;
  if (buildCounterGeolayerdataCommon < 3) {
    unittest.expect(
      o.lang!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previewImageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.snippet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.snippetUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGeolayerdataCommon--;
}

core.List<core.String> buildUnnamed7857() => [
      'foo',
      'foo',
    ];

void checkUnnamed7857(core.List<core.String> o) {
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

core.int buildCounterGeolayerdataGeoViewportHi = 0;
api.GeolayerdataGeoViewportHi buildGeolayerdataGeoViewportHi() {
  final o = api.GeolayerdataGeoViewportHi();
  buildCounterGeolayerdataGeoViewportHi++;
  if (buildCounterGeolayerdataGeoViewportHi < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterGeolayerdataGeoViewportHi--;
  return o;
}

void checkGeolayerdataGeoViewportHi(api.GeolayerdataGeoViewportHi o) {
  buildCounterGeolayerdataGeoViewportHi++;
  if (buildCounterGeolayerdataGeoViewportHi < 3) {
    unittest.expect(
      o.latitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.longitude!,
      unittest.equals(42.0),
    );
  }
  buildCounterGeolayerdataGeoViewportHi--;
}

core.int buildCounterGeolayerdataGeoViewportLo = 0;
api.GeolayerdataGeoViewportLo buildGeolayerdataGeoViewportLo() {
  final o = api.GeolayerdataGeoViewportLo();
  buildCounterGeolayerdataGeoViewportLo++;
  if (buildCounterGeolayerdataGeoViewportLo < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterGeolayerdataGeoViewportLo--;
  return o;
}

void checkGeolayerdataGeoViewportLo(api.GeolayerdataGeoViewportLo o) {
  buildCounterGeolayerdataGeoViewportLo++;
  if (buildCounterGeolayerdataGeoViewportLo < 3) {
    unittest.expect(
      o.latitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.longitude!,
      unittest.equals(42.0),
    );
  }
  buildCounterGeolayerdataGeoViewportLo--;
}

core.int buildCounterGeolayerdataGeoViewport = 0;
api.GeolayerdataGeoViewport buildGeolayerdataGeoViewport() {
  final o = api.GeolayerdataGeoViewport();
  buildCounterGeolayerdataGeoViewport++;
  if (buildCounterGeolayerdataGeoViewport < 3) {
    o.hi = buildGeolayerdataGeoViewportHi();
    o.lo = buildGeolayerdataGeoViewportLo();
  }
  buildCounterGeolayerdataGeoViewport--;
  return o;
}

void checkGeolayerdataGeoViewport(api.GeolayerdataGeoViewport o) {
  buildCounterGeolayerdataGeoViewport++;
  if (buildCounterGeolayerdataGeoViewport < 3) {
    checkGeolayerdataGeoViewportHi(o.hi!);
    checkGeolayerdataGeoViewportLo(o.lo!);
  }
  buildCounterGeolayerdataGeoViewport--;
}

core.int buildCounterGeolayerdataGeo = 0;
api.GeolayerdataGeo buildGeolayerdataGeo() {
  final o = api.GeolayerdataGeo();
  buildCounterGeolayerdataGeo++;
  if (buildCounterGeolayerdataGeo < 3) {
    o.boundary = buildUnnamed7857();
    o.cachePolicy = 'foo';
    o.countryCode = 'foo';
    o.latitude = 42.0;
    o.longitude = 42.0;
    o.mapType = 'foo';
    o.viewport = buildGeolayerdataGeoViewport();
    o.zoom = 42;
  }
  buildCounterGeolayerdataGeo--;
  return o;
}

void checkGeolayerdataGeo(api.GeolayerdataGeo o) {
  buildCounterGeolayerdataGeo++;
  if (buildCounterGeolayerdataGeo < 3) {
    checkUnnamed7857(o.boundary!);
    unittest.expect(
      o.cachePolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.longitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.mapType!,
      unittest.equals('foo'),
    );
    checkGeolayerdataGeoViewport(o.viewport!);
    unittest.expect(
      o.zoom!,
      unittest.equals(42),
    );
  }
  buildCounterGeolayerdataGeo--;
}

core.int buildCounterGeolayerdata = 0;
api.Geolayerdata buildGeolayerdata() {
  final o = api.Geolayerdata();
  buildCounterGeolayerdata++;
  if (buildCounterGeolayerdata < 3) {
    o.common = buildGeolayerdataCommon();
    o.geo = buildGeolayerdataGeo();
    o.kind = 'foo';
  }
  buildCounterGeolayerdata--;
  return o;
}

void checkGeolayerdata(api.Geolayerdata o) {
  buildCounterGeolayerdata++;
  if (buildCounterGeolayerdata < 3) {
    checkGeolayerdataCommon(o.common!);
    checkGeolayerdataGeo(o.geo!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterGeolayerdata--;
}

core.List<api.Layersummary> buildUnnamed7858() => [
      buildLayersummary(),
      buildLayersummary(),
    ];

void checkUnnamed7858(core.List<api.Layersummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLayersummary(o[0]);
  checkLayersummary(o[1]);
}

core.int buildCounterLayersummaries = 0;
api.Layersummaries buildLayersummaries() {
  final o = api.Layersummaries();
  buildCounterLayersummaries++;
  if (buildCounterLayersummaries < 3) {
    o.items = buildUnnamed7858();
    o.kind = 'foo';
    o.totalItems = 42;
  }
  buildCounterLayersummaries--;
  return o;
}

void checkLayersummaries(api.Layersummaries o) {
  buildCounterLayersummaries++;
  if (buildCounterLayersummaries < 3) {
    checkUnnamed7858(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalItems!,
      unittest.equals(42),
    );
  }
  buildCounterLayersummaries--;
}

core.List<core.String> buildUnnamed7859() => [
      'foo',
      'foo',
    ];

void checkUnnamed7859(core.List<core.String> o) {
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

core.int buildCounterLayersummary = 0;
api.Layersummary buildLayersummary() {
  final o = api.Layersummary();
  buildCounterLayersummary++;
  if (buildCounterLayersummary < 3) {
    o.annotationCount = 42;
    o.annotationTypes = buildUnnamed7859();
    o.annotationsDataLink = 'foo';
    o.annotationsLink = 'foo';
    o.contentVersion = 'foo';
    o.dataCount = 42;
    o.id = 'foo';
    o.kind = 'foo';
    o.layerId = 'foo';
    o.selfLink = 'foo';
    o.updated = 'foo';
    o.volumeAnnotationsVersion = 'foo';
    o.volumeId = 'foo';
  }
  buildCounterLayersummary--;
  return o;
}

void checkLayersummary(api.Layersummary o) {
  buildCounterLayersummary++;
  if (buildCounterLayersummary < 3) {
    unittest.expect(
      o.annotationCount!,
      unittest.equals(42),
    );
    checkUnnamed7859(o.annotationTypes!);
    unittest.expect(
      o.annotationsDataLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.annotationsLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contentVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.layerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updated!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volumeAnnotationsVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volumeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLayersummary--;
}

core.int buildCounterMetadataItems = 0;
api.MetadataItems buildMetadataItems() {
  final o = api.MetadataItems();
  buildCounterMetadataItems++;
  if (buildCounterMetadataItems < 3) {
    o.downloadUrl = 'foo';
    o.encryptedKey = 'foo';
    o.language = 'foo';
    o.size = 'foo';
    o.version = 'foo';
  }
  buildCounterMetadataItems--;
  return o;
}

void checkMetadataItems(api.MetadataItems o) {
  buildCounterMetadataItems++;
  if (buildCounterMetadataItems < 3) {
    unittest.expect(
      o.downloadUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.encryptedKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.size!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetadataItems--;
}

core.List<api.MetadataItems> buildUnnamed7860() => [
      buildMetadataItems(),
      buildMetadataItems(),
    ];

void checkUnnamed7860(core.List<api.MetadataItems> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetadataItems(o[0]);
  checkMetadataItems(o[1]);
}

core.int buildCounterMetadata = 0;
api.Metadata buildMetadata() {
  final o = api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.items = buildUnnamed7860();
    o.kind = 'foo';
  }
  buildCounterMetadata--;
  return o;
}

void checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    checkUnnamed7860(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetadata--;
}

core.List<core.String> buildUnnamed7861() => [
      'foo',
      'foo',
    ];

void checkUnnamed7861(core.List<core.String> o) {
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

core.int buildCounterNotification = 0;
api.Notification buildNotification() {
  final o = api.Notification();
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    o.body = 'foo';
    o.crmExperimentIds = buildUnnamed7861();
    o.docId = 'foo';
    o.docType = 'foo';
    o.dontShowNotification = true;
    o.iconUrl = 'foo';
    o.isDocumentMature = true;
    o.kind = 'foo';
    o.notificationGroup = 'foo';
    o.notificationType = 'foo';
    o.pcampaignId = 'foo';
    o.reason = 'foo';
    o.showNotificationSettingsAction = true;
    o.targetUrl = 'foo';
    o.timeToExpireMs = 'foo';
    o.title = 'foo';
  }
  buildCounterNotification--;
  return o;
}

void checkNotification(api.Notification o) {
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    unittest.expect(
      o.body!,
      unittest.equals('foo'),
    );
    checkUnnamed7861(o.crmExperimentIds!);
    unittest.expect(
      o.docId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.docType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.dontShowNotification!, unittest.isTrue);
    unittest.expect(
      o.iconUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isDocumentMature!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notificationGroup!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notificationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pcampaignId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(o.showNotificationSettingsAction!, unittest.isTrue);
    unittest.expect(
      o.targetUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeToExpireMs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterNotification--;
}

core.int buildCounterOffersItemsItems = 0;
api.OffersItemsItems buildOffersItemsItems() {
  final o = api.OffersItemsItems();
  buildCounterOffersItemsItems++;
  if (buildCounterOffersItemsItems < 3) {
    o.author = 'foo';
    o.canonicalVolumeLink = 'foo';
    o.coverUrl = 'foo';
    o.description = 'foo';
    o.title = 'foo';
    o.volumeId = 'foo';
  }
  buildCounterOffersItemsItems--;
  return o;
}

void checkOffersItemsItems(api.OffersItemsItems o) {
  buildCounterOffersItemsItems++;
  if (buildCounterOffersItemsItems < 3) {
    unittest.expect(
      o.author!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.canonicalVolumeLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.coverUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volumeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOffersItemsItems--;
}

core.List<api.OffersItemsItems> buildUnnamed7862() => [
      buildOffersItemsItems(),
      buildOffersItemsItems(),
    ];

void checkUnnamed7862(core.List<api.OffersItemsItems> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOffersItemsItems(o[0]);
  checkOffersItemsItems(o[1]);
}

core.int buildCounterOffersItems = 0;
api.OffersItems buildOffersItems() {
  final o = api.OffersItems();
  buildCounterOffersItems++;
  if (buildCounterOffersItems < 3) {
    o.artUrl = 'foo';
    o.gservicesKey = 'foo';
    o.id = 'foo';
    o.items = buildUnnamed7862();
  }
  buildCounterOffersItems--;
  return o;
}

void checkOffersItems(api.OffersItems o) {
  buildCounterOffersItems++;
  if (buildCounterOffersItems < 3) {
    unittest.expect(
      o.artUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gservicesKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed7862(o.items!);
  }
  buildCounterOffersItems--;
}

core.List<api.OffersItems> buildUnnamed7863() => [
      buildOffersItems(),
      buildOffersItems(),
    ];

void checkUnnamed7863(core.List<api.OffersItems> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOffersItems(o[0]);
  checkOffersItems(o[1]);
}

core.int buildCounterOffers = 0;
api.Offers buildOffers() {
  final o = api.Offers();
  buildCounterOffers++;
  if (buildCounterOffers < 3) {
    o.items = buildUnnamed7863();
    o.kind = 'foo';
  }
  buildCounterOffers--;
  return o;
}

void checkOffers(api.Offers o) {
  buildCounterOffers++;
  if (buildCounterOffers < 3) {
    checkUnnamed7863(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOffers--;
}

core.int buildCounterReadingPosition = 0;
api.ReadingPosition buildReadingPosition() {
  final o = api.ReadingPosition();
  buildCounterReadingPosition++;
  if (buildCounterReadingPosition < 3) {
    o.epubCfiPosition = 'foo';
    o.gbImagePosition = 'foo';
    o.gbTextPosition = 'foo';
    o.kind = 'foo';
    o.pdfPosition = 'foo';
    o.updated = 'foo';
    o.volumeId = 'foo';
  }
  buildCounterReadingPosition--;
  return o;
}

void checkReadingPosition(api.ReadingPosition o) {
  buildCounterReadingPosition++;
  if (buildCounterReadingPosition < 3) {
    unittest.expect(
      o.epubCfiPosition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gbImagePosition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gbTextPosition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pdfPosition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updated!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volumeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReadingPosition--;
}

core.int buildCounterRequestAccessData = 0;
api.RequestAccessData buildRequestAccessData() {
  final o = api.RequestAccessData();
  buildCounterRequestAccessData++;
  if (buildCounterRequestAccessData < 3) {
    o.concurrentAccess = buildConcurrentAccessRestriction();
    o.downloadAccess = buildDownloadAccessRestriction();
    o.kind = 'foo';
  }
  buildCounterRequestAccessData--;
  return o;
}

void checkRequestAccessData(api.RequestAccessData o) {
  buildCounterRequestAccessData++;
  if (buildCounterRequestAccessData < 3) {
    checkConcurrentAccessRestriction(o.concurrentAccess!);
    checkDownloadAccessRestriction(o.downloadAccess!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterRequestAccessData--;
}

core.int buildCounterReviewAuthor = 0;
api.ReviewAuthor buildReviewAuthor() {
  final o = api.ReviewAuthor();
  buildCounterReviewAuthor++;
  if (buildCounterReviewAuthor < 3) {
    o.displayName = 'foo';
  }
  buildCounterReviewAuthor--;
  return o;
}

void checkReviewAuthor(api.ReviewAuthor o) {
  buildCounterReviewAuthor++;
  if (buildCounterReviewAuthor < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterReviewAuthor--;
}

core.int buildCounterReviewSource = 0;
api.ReviewSource buildReviewSource() {
  final o = api.ReviewSource();
  buildCounterReviewSource++;
  if (buildCounterReviewSource < 3) {
    o.description = 'foo';
    o.extraDescription = 'foo';
    o.url = 'foo';
  }
  buildCounterReviewSource--;
  return o;
}

void checkReviewSource(api.ReviewSource o) {
  buildCounterReviewSource++;
  if (buildCounterReviewSource < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.extraDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterReviewSource--;
}

core.int buildCounterReview = 0;
api.Review buildReview() {
  final o = api.Review();
  buildCounterReview++;
  if (buildCounterReview < 3) {
    o.author = buildReviewAuthor();
    o.content = 'foo';
    o.date = 'foo';
    o.fullTextUrl = 'foo';
    o.kind = 'foo';
    o.rating = 'foo';
    o.source = buildReviewSource();
    o.title = 'foo';
    o.type = 'foo';
    o.volumeId = 'foo';
  }
  buildCounterReview--;
  return o;
}

void checkReview(api.Review o) {
  buildCounterReview++;
  if (buildCounterReview < 3) {
    checkReviewAuthor(o.author!);
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.date!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fullTextUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rating!,
      unittest.equals('foo'),
    );
    checkReviewSource(o.source!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volumeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReview--;
}

core.int
    buildCounterSeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo = 0;
api.SeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo
    buildSeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo() {
  final o = api.SeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo();
  buildCounterSeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo++;
  if (buildCounterSeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo <
      3) {
    o.amountInMicros = 42.0;
    o.currencyCode = 'foo';
    o.releaseNumber = 'foo';
    o.releaseTime = 'foo';
  }
  buildCounterSeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo--;
  return o;
}

void checkSeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo(
    api.SeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo o) {
  buildCounterSeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo++;
  if (buildCounterSeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo <
      3) {
    unittest.expect(
      o.amountInMicros!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.releaseNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.releaseTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo--;
}

core.int buildCounterSeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo =
    0;
api.SeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo
    buildSeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo() {
  final o = api.SeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo();
  buildCounterSeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo++;
  if (buildCounterSeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo <
      3) {
    o.amountInMicros = 42.0;
    o.currencyCode = 'foo';
    o.releaseNumber = 'foo';
    o.releaseTime = 'foo';
  }
  buildCounterSeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo--;
  return o;
}

void checkSeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo(
    api.SeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo o) {
  buildCounterSeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo++;
  if (buildCounterSeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo <
      3) {
    unittest.expect(
      o.amountInMicros!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.releaseNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.releaseTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo--;
}

core.int buildCounterSeriesSeriesSeriesSubscriptionReleaseInfo = 0;
api.SeriesSeriesSeriesSubscriptionReleaseInfo
    buildSeriesSeriesSeriesSubscriptionReleaseInfo() {
  final o = api.SeriesSeriesSeriesSubscriptionReleaseInfo();
  buildCounterSeriesSeriesSeriesSubscriptionReleaseInfo++;
  if (buildCounterSeriesSeriesSeriesSubscriptionReleaseInfo < 3) {
    o.cancelTime = 'foo';
    o.currentReleaseInfo =
        buildSeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo();
    o.nextReleaseInfo =
        buildSeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo();
    o.seriesSubscriptionType = 'foo';
  }
  buildCounterSeriesSeriesSeriesSubscriptionReleaseInfo--;
  return o;
}

void checkSeriesSeriesSeriesSubscriptionReleaseInfo(
    api.SeriesSeriesSeriesSubscriptionReleaseInfo o) {
  buildCounterSeriesSeriesSeriesSubscriptionReleaseInfo++;
  if (buildCounterSeriesSeriesSeriesSubscriptionReleaseInfo < 3) {
    unittest.expect(
      o.cancelTime!,
      unittest.equals('foo'),
    );
    checkSeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo(
        o.currentReleaseInfo!);
    checkSeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo(
        o.nextReleaseInfo!);
    unittest.expect(
      o.seriesSubscriptionType!,
      unittest.equals('foo'),
    );
  }
  buildCounterSeriesSeriesSeriesSubscriptionReleaseInfo--;
}

core.int buildCounterSeriesSeries = 0;
api.SeriesSeries buildSeriesSeries() {
  final o = api.SeriesSeries();
  buildCounterSeriesSeries++;
  if (buildCounterSeriesSeries < 3) {
    o.bannerImageUrl = 'foo';
    o.eligibleForSubscription = true;
    o.imageUrl = 'foo';
    o.isComplete = true;
    o.seriesFormatType = 'foo';
    o.seriesId = 'foo';
    o.seriesSubscriptionReleaseInfo =
        buildSeriesSeriesSeriesSubscriptionReleaseInfo();
    o.seriesType = 'foo';
    o.subscriptionId = 'foo';
    o.title = 'foo';
  }
  buildCounterSeriesSeries--;
  return o;
}

void checkSeriesSeries(api.SeriesSeries o) {
  buildCounterSeriesSeries++;
  if (buildCounterSeriesSeries < 3) {
    unittest.expect(
      o.bannerImageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.eligibleForSubscription!, unittest.isTrue);
    unittest.expect(
      o.imageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isComplete!, unittest.isTrue);
    unittest.expect(
      o.seriesFormatType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.seriesId!,
      unittest.equals('foo'),
    );
    checkSeriesSeriesSeriesSubscriptionReleaseInfo(
        o.seriesSubscriptionReleaseInfo!);
    unittest.expect(
      o.seriesType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subscriptionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterSeriesSeries--;
}

core.List<api.SeriesSeries> buildUnnamed7864() => [
      buildSeriesSeries(),
      buildSeriesSeries(),
    ];

void checkUnnamed7864(core.List<api.SeriesSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSeriesSeries(o[0]);
  checkSeriesSeries(o[1]);
}

core.int buildCounterSeries = 0;
api.Series buildSeries() {
  final o = api.Series();
  buildCounterSeries++;
  if (buildCounterSeries < 3) {
    o.kind = 'foo';
    o.series = buildUnnamed7864();
  }
  buildCounterSeries--;
  return o;
}

void checkSeries(api.Series o) {
  buildCounterSeries++;
  if (buildCounterSeries < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed7864(o.series!);
  }
  buildCounterSeries--;
}

core.List<api.Volume> buildUnnamed7865() => [
      buildVolume(),
      buildVolume(),
    ];

void checkUnnamed7865(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.int buildCounterSeriesmembership = 0;
api.Seriesmembership buildSeriesmembership() {
  final o = api.Seriesmembership();
  buildCounterSeriesmembership++;
  if (buildCounterSeriesmembership < 3) {
    o.kind = 'foo';
    o.member = buildUnnamed7865();
    o.nextPageToken = 'foo';
  }
  buildCounterSeriesmembership--;
  return o;
}

void checkSeriesmembership(api.Seriesmembership o) {
  buildCounterSeriesmembership++;
  if (buildCounterSeriesmembership < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed7865(o.member!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSeriesmembership--;
}

core.int buildCounterUsersettingsNotesExport = 0;
api.UsersettingsNotesExport buildUsersettingsNotesExport() {
  final o = api.UsersettingsNotesExport();
  buildCounterUsersettingsNotesExport++;
  if (buildCounterUsersettingsNotesExport < 3) {
    o.folderName = 'foo';
    o.isEnabled = true;
  }
  buildCounterUsersettingsNotesExport--;
  return o;
}

void checkUsersettingsNotesExport(api.UsersettingsNotesExport o) {
  buildCounterUsersettingsNotesExport++;
  if (buildCounterUsersettingsNotesExport < 3) {
    unittest.expect(
      o.folderName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isEnabled!, unittest.isTrue);
  }
  buildCounterUsersettingsNotesExport--;
}

core.int buildCounterUsersettingsNotificationMatchMyInterests = 0;
api.UsersettingsNotificationMatchMyInterests
    buildUsersettingsNotificationMatchMyInterests() {
  final o = api.UsersettingsNotificationMatchMyInterests();
  buildCounterUsersettingsNotificationMatchMyInterests++;
  if (buildCounterUsersettingsNotificationMatchMyInterests < 3) {
    o.optedState = 'foo';
  }
  buildCounterUsersettingsNotificationMatchMyInterests--;
  return o;
}

void checkUsersettingsNotificationMatchMyInterests(
    api.UsersettingsNotificationMatchMyInterests o) {
  buildCounterUsersettingsNotificationMatchMyInterests++;
  if (buildCounterUsersettingsNotificationMatchMyInterests < 3) {
    unittest.expect(
      o.optedState!,
      unittest.equals('foo'),
    );
  }
  buildCounterUsersettingsNotificationMatchMyInterests--;
}

core.int buildCounterUsersettingsNotificationMoreFromAuthors = 0;
api.UsersettingsNotificationMoreFromAuthors
    buildUsersettingsNotificationMoreFromAuthors() {
  final o = api.UsersettingsNotificationMoreFromAuthors();
  buildCounterUsersettingsNotificationMoreFromAuthors++;
  if (buildCounterUsersettingsNotificationMoreFromAuthors < 3) {
    o.optedState = 'foo';
  }
  buildCounterUsersettingsNotificationMoreFromAuthors--;
  return o;
}

void checkUsersettingsNotificationMoreFromAuthors(
    api.UsersettingsNotificationMoreFromAuthors o) {
  buildCounterUsersettingsNotificationMoreFromAuthors++;
  if (buildCounterUsersettingsNotificationMoreFromAuthors < 3) {
    unittest.expect(
      o.optedState!,
      unittest.equals('foo'),
    );
  }
  buildCounterUsersettingsNotificationMoreFromAuthors--;
}

core.int buildCounterUsersettingsNotificationMoreFromSeries = 0;
api.UsersettingsNotificationMoreFromSeries
    buildUsersettingsNotificationMoreFromSeries() {
  final o = api.UsersettingsNotificationMoreFromSeries();
  buildCounterUsersettingsNotificationMoreFromSeries++;
  if (buildCounterUsersettingsNotificationMoreFromSeries < 3) {
    o.optedState = 'foo';
  }
  buildCounterUsersettingsNotificationMoreFromSeries--;
  return o;
}

void checkUsersettingsNotificationMoreFromSeries(
    api.UsersettingsNotificationMoreFromSeries o) {
  buildCounterUsersettingsNotificationMoreFromSeries++;
  if (buildCounterUsersettingsNotificationMoreFromSeries < 3) {
    unittest.expect(
      o.optedState!,
      unittest.equals('foo'),
    );
  }
  buildCounterUsersettingsNotificationMoreFromSeries--;
}

core.int buildCounterUsersettingsNotificationPriceDrop = 0;
api.UsersettingsNotificationPriceDrop buildUsersettingsNotificationPriceDrop() {
  final o = api.UsersettingsNotificationPriceDrop();
  buildCounterUsersettingsNotificationPriceDrop++;
  if (buildCounterUsersettingsNotificationPriceDrop < 3) {
    o.optedState = 'foo';
  }
  buildCounterUsersettingsNotificationPriceDrop--;
  return o;
}

void checkUsersettingsNotificationPriceDrop(
    api.UsersettingsNotificationPriceDrop o) {
  buildCounterUsersettingsNotificationPriceDrop++;
  if (buildCounterUsersettingsNotificationPriceDrop < 3) {
    unittest.expect(
      o.optedState!,
      unittest.equals('foo'),
    );
  }
  buildCounterUsersettingsNotificationPriceDrop--;
}

core.int buildCounterUsersettingsNotificationRewardExpirations = 0;
api.UsersettingsNotificationRewardExpirations
    buildUsersettingsNotificationRewardExpirations() {
  final o = api.UsersettingsNotificationRewardExpirations();
  buildCounterUsersettingsNotificationRewardExpirations++;
  if (buildCounterUsersettingsNotificationRewardExpirations < 3) {
    o.optedState = 'foo';
  }
  buildCounterUsersettingsNotificationRewardExpirations--;
  return o;
}

void checkUsersettingsNotificationRewardExpirations(
    api.UsersettingsNotificationRewardExpirations o) {
  buildCounterUsersettingsNotificationRewardExpirations++;
  if (buildCounterUsersettingsNotificationRewardExpirations < 3) {
    unittest.expect(
      o.optedState!,
      unittest.equals('foo'),
    );
  }
  buildCounterUsersettingsNotificationRewardExpirations--;
}

core.int buildCounterUsersettingsNotification = 0;
api.UsersettingsNotification buildUsersettingsNotification() {
  final o = api.UsersettingsNotification();
  buildCounterUsersettingsNotification++;
  if (buildCounterUsersettingsNotification < 3) {
    o.matchMyInterests = buildUsersettingsNotificationMatchMyInterests();
    o.moreFromAuthors = buildUsersettingsNotificationMoreFromAuthors();
    o.moreFromSeries = buildUsersettingsNotificationMoreFromSeries();
    o.priceDrop = buildUsersettingsNotificationPriceDrop();
    o.rewardExpirations = buildUsersettingsNotificationRewardExpirations();
  }
  buildCounterUsersettingsNotification--;
  return o;
}

void checkUsersettingsNotification(api.UsersettingsNotification o) {
  buildCounterUsersettingsNotification++;
  if (buildCounterUsersettingsNotification < 3) {
    checkUsersettingsNotificationMatchMyInterests(o.matchMyInterests!);
    checkUsersettingsNotificationMoreFromAuthors(o.moreFromAuthors!);
    checkUsersettingsNotificationMoreFromSeries(o.moreFromSeries!);
    checkUsersettingsNotificationPriceDrop(o.priceDrop!);
    checkUsersettingsNotificationRewardExpirations(o.rewardExpirations!);
  }
  buildCounterUsersettingsNotification--;
}

core.int buildCounterUsersettings = 0;
api.Usersettings buildUsersettings() {
  final o = api.Usersettings();
  buildCounterUsersettings++;
  if (buildCounterUsersettings < 3) {
    o.kind = 'foo';
    o.notesExport = buildUsersettingsNotesExport();
    o.notification = buildUsersettingsNotification();
  }
  buildCounterUsersettings--;
  return o;
}

void checkUsersettings(api.Usersettings o) {
  buildCounterUsersettings++;
  if (buildCounterUsersettings < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUsersettingsNotesExport(o.notesExport!);
    checkUsersettingsNotification(o.notification!);
  }
  buildCounterUsersettings--;
}

core.int buildCounterVolumeAccessInfoEpub = 0;
api.VolumeAccessInfoEpub buildVolumeAccessInfoEpub() {
  final o = api.VolumeAccessInfoEpub();
  buildCounterVolumeAccessInfoEpub++;
  if (buildCounterVolumeAccessInfoEpub < 3) {
    o.acsTokenLink = 'foo';
    o.downloadLink = 'foo';
    o.isAvailable = true;
  }
  buildCounterVolumeAccessInfoEpub--;
  return o;
}

void checkVolumeAccessInfoEpub(api.VolumeAccessInfoEpub o) {
  buildCounterVolumeAccessInfoEpub++;
  if (buildCounterVolumeAccessInfoEpub < 3) {
    unittest.expect(
      o.acsTokenLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.downloadLink!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isAvailable!, unittest.isTrue);
  }
  buildCounterVolumeAccessInfoEpub--;
}

core.int buildCounterVolumeAccessInfoPdf = 0;
api.VolumeAccessInfoPdf buildVolumeAccessInfoPdf() {
  final o = api.VolumeAccessInfoPdf();
  buildCounterVolumeAccessInfoPdf++;
  if (buildCounterVolumeAccessInfoPdf < 3) {
    o.acsTokenLink = 'foo';
    o.downloadLink = 'foo';
    o.isAvailable = true;
  }
  buildCounterVolumeAccessInfoPdf--;
  return o;
}

void checkVolumeAccessInfoPdf(api.VolumeAccessInfoPdf o) {
  buildCounterVolumeAccessInfoPdf++;
  if (buildCounterVolumeAccessInfoPdf < 3) {
    unittest.expect(
      o.acsTokenLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.downloadLink!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isAvailable!, unittest.isTrue);
  }
  buildCounterVolumeAccessInfoPdf--;
}

core.int buildCounterVolumeAccessInfo = 0;
api.VolumeAccessInfo buildVolumeAccessInfo() {
  final o = api.VolumeAccessInfo();
  buildCounterVolumeAccessInfo++;
  if (buildCounterVolumeAccessInfo < 3) {
    o.accessViewStatus = 'foo';
    o.country = 'foo';
    o.downloadAccess = buildDownloadAccessRestriction();
    o.driveImportedContentLink = 'foo';
    o.embeddable = true;
    o.epub = buildVolumeAccessInfoEpub();
    o.explicitOfflineLicenseManagement = true;
    o.pdf = buildVolumeAccessInfoPdf();
    o.publicDomain = true;
    o.quoteSharingAllowed = true;
    o.textToSpeechPermission = 'foo';
    o.viewOrderUrl = 'foo';
    o.viewability = 'foo';
    o.webReaderLink = 'foo';
  }
  buildCounterVolumeAccessInfo--;
  return o;
}

void checkVolumeAccessInfo(api.VolumeAccessInfo o) {
  buildCounterVolumeAccessInfo++;
  if (buildCounterVolumeAccessInfo < 3) {
    unittest.expect(
      o.accessViewStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    checkDownloadAccessRestriction(o.downloadAccess!);
    unittest.expect(
      o.driveImportedContentLink!,
      unittest.equals('foo'),
    );
    unittest.expect(o.embeddable!, unittest.isTrue);
    checkVolumeAccessInfoEpub(o.epub!);
    unittest.expect(o.explicitOfflineLicenseManagement!, unittest.isTrue);
    checkVolumeAccessInfoPdf(o.pdf!);
    unittest.expect(o.publicDomain!, unittest.isTrue);
    unittest.expect(o.quoteSharingAllowed!, unittest.isTrue);
    unittest.expect(
      o.textToSpeechPermission!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.viewOrderUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.viewability!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webReaderLink!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeAccessInfo--;
}

core.int buildCounterVolumeLayerInfoLayers = 0;
api.VolumeLayerInfoLayers buildVolumeLayerInfoLayers() {
  final o = api.VolumeLayerInfoLayers();
  buildCounterVolumeLayerInfoLayers++;
  if (buildCounterVolumeLayerInfoLayers < 3) {
    o.layerId = 'foo';
    o.volumeAnnotationsVersion = 'foo';
  }
  buildCounterVolumeLayerInfoLayers--;
  return o;
}

void checkVolumeLayerInfoLayers(api.VolumeLayerInfoLayers o) {
  buildCounterVolumeLayerInfoLayers++;
  if (buildCounterVolumeLayerInfoLayers < 3) {
    unittest.expect(
      o.layerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volumeAnnotationsVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeLayerInfoLayers--;
}

core.List<api.VolumeLayerInfoLayers> buildUnnamed7866() => [
      buildVolumeLayerInfoLayers(),
      buildVolumeLayerInfoLayers(),
    ];

void checkUnnamed7866(core.List<api.VolumeLayerInfoLayers> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeLayerInfoLayers(o[0]);
  checkVolumeLayerInfoLayers(o[1]);
}

core.int buildCounterVolumeLayerInfo = 0;
api.VolumeLayerInfo buildVolumeLayerInfo() {
  final o = api.VolumeLayerInfo();
  buildCounterVolumeLayerInfo++;
  if (buildCounterVolumeLayerInfo < 3) {
    o.layers = buildUnnamed7866();
  }
  buildCounterVolumeLayerInfo--;
  return o;
}

void checkVolumeLayerInfo(api.VolumeLayerInfo o) {
  buildCounterVolumeLayerInfo++;
  if (buildCounterVolumeLayerInfo < 3) {
    checkUnnamed7866(o.layers!);
  }
  buildCounterVolumeLayerInfo--;
}

core.int buildCounterVolumeRecommendedInfo = 0;
api.VolumeRecommendedInfo buildVolumeRecommendedInfo() {
  final o = api.VolumeRecommendedInfo();
  buildCounterVolumeRecommendedInfo++;
  if (buildCounterVolumeRecommendedInfo < 3) {
    o.explanation = 'foo';
  }
  buildCounterVolumeRecommendedInfo--;
  return o;
}

void checkVolumeRecommendedInfo(api.VolumeRecommendedInfo o) {
  buildCounterVolumeRecommendedInfo++;
  if (buildCounterVolumeRecommendedInfo < 3) {
    unittest.expect(
      o.explanation!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeRecommendedInfo--;
}

core.int buildCounterVolumeSaleInfoListPrice = 0;
api.VolumeSaleInfoListPrice buildVolumeSaleInfoListPrice() {
  final o = api.VolumeSaleInfoListPrice();
  buildCounterVolumeSaleInfoListPrice++;
  if (buildCounterVolumeSaleInfoListPrice < 3) {
    o.amount = 42.0;
    o.currencyCode = 'foo';
  }
  buildCounterVolumeSaleInfoListPrice--;
  return o;
}

void checkVolumeSaleInfoListPrice(api.VolumeSaleInfoListPrice o) {
  buildCounterVolumeSaleInfoListPrice++;
  if (buildCounterVolumeSaleInfoListPrice < 3) {
    unittest.expect(
      o.amount!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeSaleInfoListPrice--;
}

core.int buildCounterVolumeSaleInfoOffersListPrice = 0;
api.VolumeSaleInfoOffersListPrice buildVolumeSaleInfoOffersListPrice() {
  final o = api.VolumeSaleInfoOffersListPrice();
  buildCounterVolumeSaleInfoOffersListPrice++;
  if (buildCounterVolumeSaleInfoOffersListPrice < 3) {
    o.amountInMicros = 42.0;
    o.currencyCode = 'foo';
  }
  buildCounterVolumeSaleInfoOffersListPrice--;
  return o;
}

void checkVolumeSaleInfoOffersListPrice(api.VolumeSaleInfoOffersListPrice o) {
  buildCounterVolumeSaleInfoOffersListPrice++;
  if (buildCounterVolumeSaleInfoOffersListPrice < 3) {
    unittest.expect(
      o.amountInMicros!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeSaleInfoOffersListPrice--;
}

core.int buildCounterVolumeSaleInfoOffersRentalDuration = 0;
api.VolumeSaleInfoOffersRentalDuration
    buildVolumeSaleInfoOffersRentalDuration() {
  final o = api.VolumeSaleInfoOffersRentalDuration();
  buildCounterVolumeSaleInfoOffersRentalDuration++;
  if (buildCounterVolumeSaleInfoOffersRentalDuration < 3) {
    o.count = 42.0;
    o.unit = 'foo';
  }
  buildCounterVolumeSaleInfoOffersRentalDuration--;
  return o;
}

void checkVolumeSaleInfoOffersRentalDuration(
    api.VolumeSaleInfoOffersRentalDuration o) {
  buildCounterVolumeSaleInfoOffersRentalDuration++;
  if (buildCounterVolumeSaleInfoOffersRentalDuration < 3) {
    unittest.expect(
      o.count!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeSaleInfoOffersRentalDuration--;
}

core.int buildCounterVolumeSaleInfoOffersRetailPrice = 0;
api.VolumeSaleInfoOffersRetailPrice buildVolumeSaleInfoOffersRetailPrice() {
  final o = api.VolumeSaleInfoOffersRetailPrice();
  buildCounterVolumeSaleInfoOffersRetailPrice++;
  if (buildCounterVolumeSaleInfoOffersRetailPrice < 3) {
    o.amountInMicros = 42.0;
    o.currencyCode = 'foo';
  }
  buildCounterVolumeSaleInfoOffersRetailPrice--;
  return o;
}

void checkVolumeSaleInfoOffersRetailPrice(
    api.VolumeSaleInfoOffersRetailPrice o) {
  buildCounterVolumeSaleInfoOffersRetailPrice++;
  if (buildCounterVolumeSaleInfoOffersRetailPrice < 3) {
    unittest.expect(
      o.amountInMicros!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeSaleInfoOffersRetailPrice--;
}

core.int buildCounterVolumeSaleInfoOffers = 0;
api.VolumeSaleInfoOffers buildVolumeSaleInfoOffers() {
  final o = api.VolumeSaleInfoOffers();
  buildCounterVolumeSaleInfoOffers++;
  if (buildCounterVolumeSaleInfoOffers < 3) {
    o.finskyOfferType = 42;
    o.giftable = true;
    o.listPrice = buildVolumeSaleInfoOffersListPrice();
    o.rentalDuration = buildVolumeSaleInfoOffersRentalDuration();
    o.retailPrice = buildVolumeSaleInfoOffersRetailPrice();
  }
  buildCounterVolumeSaleInfoOffers--;
  return o;
}

void checkVolumeSaleInfoOffers(api.VolumeSaleInfoOffers o) {
  buildCounterVolumeSaleInfoOffers++;
  if (buildCounterVolumeSaleInfoOffers < 3) {
    unittest.expect(
      o.finskyOfferType!,
      unittest.equals(42),
    );
    unittest.expect(o.giftable!, unittest.isTrue);
    checkVolumeSaleInfoOffersListPrice(o.listPrice!);
    checkVolumeSaleInfoOffersRentalDuration(o.rentalDuration!);
    checkVolumeSaleInfoOffersRetailPrice(o.retailPrice!);
  }
  buildCounterVolumeSaleInfoOffers--;
}

core.List<api.VolumeSaleInfoOffers> buildUnnamed7867() => [
      buildVolumeSaleInfoOffers(),
      buildVolumeSaleInfoOffers(),
    ];

void checkUnnamed7867(core.List<api.VolumeSaleInfoOffers> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeSaleInfoOffers(o[0]);
  checkVolumeSaleInfoOffers(o[1]);
}

core.int buildCounterVolumeSaleInfoRetailPrice = 0;
api.VolumeSaleInfoRetailPrice buildVolumeSaleInfoRetailPrice() {
  final o = api.VolumeSaleInfoRetailPrice();
  buildCounterVolumeSaleInfoRetailPrice++;
  if (buildCounterVolumeSaleInfoRetailPrice < 3) {
    o.amount = 42.0;
    o.currencyCode = 'foo';
  }
  buildCounterVolumeSaleInfoRetailPrice--;
  return o;
}

void checkVolumeSaleInfoRetailPrice(api.VolumeSaleInfoRetailPrice o) {
  buildCounterVolumeSaleInfoRetailPrice++;
  if (buildCounterVolumeSaleInfoRetailPrice < 3) {
    unittest.expect(
      o.amount!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeSaleInfoRetailPrice--;
}

core.int buildCounterVolumeSaleInfo = 0;
api.VolumeSaleInfo buildVolumeSaleInfo() {
  final o = api.VolumeSaleInfo();
  buildCounterVolumeSaleInfo++;
  if (buildCounterVolumeSaleInfo < 3) {
    o.buyLink = 'foo';
    o.country = 'foo';
    o.isEbook = true;
    o.listPrice = buildVolumeSaleInfoListPrice();
    o.offers = buildUnnamed7867();
    o.onSaleDate = 'foo';
    o.retailPrice = buildVolumeSaleInfoRetailPrice();
    o.saleability = 'foo';
  }
  buildCounterVolumeSaleInfo--;
  return o;
}

void checkVolumeSaleInfo(api.VolumeSaleInfo o) {
  buildCounterVolumeSaleInfo++;
  if (buildCounterVolumeSaleInfo < 3) {
    unittest.expect(
      o.buyLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isEbook!, unittest.isTrue);
    checkVolumeSaleInfoListPrice(o.listPrice!);
    checkUnnamed7867(o.offers!);
    unittest.expect(
      o.onSaleDate!,
      unittest.equals('foo'),
    );
    checkVolumeSaleInfoRetailPrice(o.retailPrice!);
    unittest.expect(
      o.saleability!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeSaleInfo--;
}

core.int buildCounterVolumeSearchInfo = 0;
api.VolumeSearchInfo buildVolumeSearchInfo() {
  final o = api.VolumeSearchInfo();
  buildCounterVolumeSearchInfo++;
  if (buildCounterVolumeSearchInfo < 3) {
    o.textSnippet = 'foo';
  }
  buildCounterVolumeSearchInfo--;
  return o;
}

void checkVolumeSearchInfo(api.VolumeSearchInfo o) {
  buildCounterVolumeSearchInfo++;
  if (buildCounterVolumeSearchInfo < 3) {
    unittest.expect(
      o.textSnippet!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeSearchInfo--;
}

core.int buildCounterVolumeUserInfoCopy = 0;
api.VolumeUserInfoCopy buildVolumeUserInfoCopy() {
  final o = api.VolumeUserInfoCopy();
  buildCounterVolumeUserInfoCopy++;
  if (buildCounterVolumeUserInfoCopy < 3) {
    o.allowedCharacterCount = 42;
    o.limitType = 'foo';
    o.remainingCharacterCount = 42;
    o.updated = 'foo';
  }
  buildCounterVolumeUserInfoCopy--;
  return o;
}

void checkVolumeUserInfoCopy(api.VolumeUserInfoCopy o) {
  buildCounterVolumeUserInfoCopy++;
  if (buildCounterVolumeUserInfoCopy < 3) {
    unittest.expect(
      o.allowedCharacterCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.limitType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remainingCharacterCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.updated!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeUserInfoCopy--;
}

core.int buildCounterVolumeUserInfoFamilySharing = 0;
api.VolumeUserInfoFamilySharing buildVolumeUserInfoFamilySharing() {
  final o = api.VolumeUserInfoFamilySharing();
  buildCounterVolumeUserInfoFamilySharing++;
  if (buildCounterVolumeUserInfoFamilySharing < 3) {
    o.familyRole = 'foo';
    o.isSharingAllowed = true;
    o.isSharingDisabledByFop = true;
  }
  buildCounterVolumeUserInfoFamilySharing--;
  return o;
}

void checkVolumeUserInfoFamilySharing(api.VolumeUserInfoFamilySharing o) {
  buildCounterVolumeUserInfoFamilySharing++;
  if (buildCounterVolumeUserInfoFamilySharing < 3) {
    unittest.expect(
      o.familyRole!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isSharingAllowed!, unittest.isTrue);
    unittest.expect(o.isSharingDisabledByFop!, unittest.isTrue);
  }
  buildCounterVolumeUserInfoFamilySharing--;
}

core.int buildCounterVolumeUserInfoRentalPeriod = 0;
api.VolumeUserInfoRentalPeriod buildVolumeUserInfoRentalPeriod() {
  final o = api.VolumeUserInfoRentalPeriod();
  buildCounterVolumeUserInfoRentalPeriod++;
  if (buildCounterVolumeUserInfoRentalPeriod < 3) {
    o.endUtcSec = 'foo';
    o.startUtcSec = 'foo';
  }
  buildCounterVolumeUserInfoRentalPeriod--;
  return o;
}

void checkVolumeUserInfoRentalPeriod(api.VolumeUserInfoRentalPeriod o) {
  buildCounterVolumeUserInfoRentalPeriod++;
  if (buildCounterVolumeUserInfoRentalPeriod < 3) {
    unittest.expect(
      o.endUtcSec!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startUtcSec!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeUserInfoRentalPeriod--;
}

core.int buildCounterVolumeUserInfoUserUploadedVolumeInfo = 0;
api.VolumeUserInfoUserUploadedVolumeInfo
    buildVolumeUserInfoUserUploadedVolumeInfo() {
  final o = api.VolumeUserInfoUserUploadedVolumeInfo();
  buildCounterVolumeUserInfoUserUploadedVolumeInfo++;
  if (buildCounterVolumeUserInfoUserUploadedVolumeInfo < 3) {
    o.processingState = 'foo';
  }
  buildCounterVolumeUserInfoUserUploadedVolumeInfo--;
  return o;
}

void checkVolumeUserInfoUserUploadedVolumeInfo(
    api.VolumeUserInfoUserUploadedVolumeInfo o) {
  buildCounterVolumeUserInfoUserUploadedVolumeInfo++;
  if (buildCounterVolumeUserInfoUserUploadedVolumeInfo < 3) {
    unittest.expect(
      o.processingState!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeUserInfoUserUploadedVolumeInfo--;
}

core.int buildCounterVolumeUserInfo = 0;
api.VolumeUserInfo buildVolumeUserInfo() {
  final o = api.VolumeUserInfo();
  buildCounterVolumeUserInfo++;
  if (buildCounterVolumeUserInfo < 3) {
    o.acquiredTime = 'foo';
    o.acquisitionType = 42;
    o.copy = buildVolumeUserInfoCopy();
    o.entitlementType = 42;
    o.familySharing = buildVolumeUserInfoFamilySharing();
    o.isFamilySharedFromUser = true;
    o.isFamilySharedToUser = true;
    o.isFamilySharingAllowed = true;
    o.isFamilySharingDisabledByFop = true;
    o.isInMyBooks = true;
    o.isPreordered = true;
    o.isPurchased = true;
    o.isUploaded = true;
    o.readingPosition = buildReadingPosition();
    o.rentalPeriod = buildVolumeUserInfoRentalPeriod();
    o.rentalState = 'foo';
    o.review = buildReview();
    o.updated = 'foo';
    o.userUploadedVolumeInfo = buildVolumeUserInfoUserUploadedVolumeInfo();
  }
  buildCounterVolumeUserInfo--;
  return o;
}

void checkVolumeUserInfo(api.VolumeUserInfo o) {
  buildCounterVolumeUserInfo++;
  if (buildCounterVolumeUserInfo < 3) {
    unittest.expect(
      o.acquiredTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.acquisitionType!,
      unittest.equals(42),
    );
    checkVolumeUserInfoCopy(o.copy!);
    unittest.expect(
      o.entitlementType!,
      unittest.equals(42),
    );
    checkVolumeUserInfoFamilySharing(o.familySharing!);
    unittest.expect(o.isFamilySharedFromUser!, unittest.isTrue);
    unittest.expect(o.isFamilySharedToUser!, unittest.isTrue);
    unittest.expect(o.isFamilySharingAllowed!, unittest.isTrue);
    unittest.expect(o.isFamilySharingDisabledByFop!, unittest.isTrue);
    unittest.expect(o.isInMyBooks!, unittest.isTrue);
    unittest.expect(o.isPreordered!, unittest.isTrue);
    unittest.expect(o.isPurchased!, unittest.isTrue);
    unittest.expect(o.isUploaded!, unittest.isTrue);
    checkReadingPosition(o.readingPosition!);
    checkVolumeUserInfoRentalPeriod(o.rentalPeriod!);
    unittest.expect(
      o.rentalState!,
      unittest.equals('foo'),
    );
    checkReview(o.review!);
    unittest.expect(
      o.updated!,
      unittest.equals('foo'),
    );
    checkVolumeUserInfoUserUploadedVolumeInfo(o.userUploadedVolumeInfo!);
  }
  buildCounterVolumeUserInfo--;
}

core.List<core.String> buildUnnamed7868() => [
      'foo',
      'foo',
    ];

void checkUnnamed7868(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7869() => [
      'foo',
      'foo',
    ];

void checkUnnamed7869(core.List<core.String> o) {
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

core.int buildCounterVolumeVolumeInfoDimensions = 0;
api.VolumeVolumeInfoDimensions buildVolumeVolumeInfoDimensions() {
  final o = api.VolumeVolumeInfoDimensions();
  buildCounterVolumeVolumeInfoDimensions++;
  if (buildCounterVolumeVolumeInfoDimensions < 3) {
    o.height = 'foo';
    o.thickness = 'foo';
    o.width = 'foo';
  }
  buildCounterVolumeVolumeInfoDimensions--;
  return o;
}

void checkVolumeVolumeInfoDimensions(api.VolumeVolumeInfoDimensions o) {
  buildCounterVolumeVolumeInfoDimensions++;
  if (buildCounterVolumeVolumeInfoDimensions < 3) {
    unittest.expect(
      o.height!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thickness!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeVolumeInfoDimensions--;
}

core.int buildCounterVolumeVolumeInfoImageLinks = 0;
api.VolumeVolumeInfoImageLinks buildVolumeVolumeInfoImageLinks() {
  final o = api.VolumeVolumeInfoImageLinks();
  buildCounterVolumeVolumeInfoImageLinks++;
  if (buildCounterVolumeVolumeInfoImageLinks < 3) {
    o.extraLarge = 'foo';
    o.large = 'foo';
    o.medium = 'foo';
    o.small = 'foo';
    o.smallThumbnail = 'foo';
    o.thumbnail = 'foo';
  }
  buildCounterVolumeVolumeInfoImageLinks--;
  return o;
}

void checkVolumeVolumeInfoImageLinks(api.VolumeVolumeInfoImageLinks o) {
  buildCounterVolumeVolumeInfoImageLinks++;
  if (buildCounterVolumeVolumeInfoImageLinks < 3) {
    unittest.expect(
      o.extraLarge!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.large!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.medium!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.small!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.smallThumbnail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thumbnail!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeVolumeInfoImageLinks--;
}

core.int buildCounterVolumeVolumeInfoIndustryIdentifiers = 0;
api.VolumeVolumeInfoIndustryIdentifiers
    buildVolumeVolumeInfoIndustryIdentifiers() {
  final o = api.VolumeVolumeInfoIndustryIdentifiers();
  buildCounterVolumeVolumeInfoIndustryIdentifiers++;
  if (buildCounterVolumeVolumeInfoIndustryIdentifiers < 3) {
    o.identifier = 'foo';
    o.type = 'foo';
  }
  buildCounterVolumeVolumeInfoIndustryIdentifiers--;
  return o;
}

void checkVolumeVolumeInfoIndustryIdentifiers(
    api.VolumeVolumeInfoIndustryIdentifiers o) {
  buildCounterVolumeVolumeInfoIndustryIdentifiers++;
  if (buildCounterVolumeVolumeInfoIndustryIdentifiers < 3) {
    unittest.expect(
      o.identifier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeVolumeInfoIndustryIdentifiers--;
}

core.List<api.VolumeVolumeInfoIndustryIdentifiers> buildUnnamed7870() => [
      buildVolumeVolumeInfoIndustryIdentifiers(),
      buildVolumeVolumeInfoIndustryIdentifiers(),
    ];

void checkUnnamed7870(core.List<api.VolumeVolumeInfoIndustryIdentifiers> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeVolumeInfoIndustryIdentifiers(o[0]);
  checkVolumeVolumeInfoIndustryIdentifiers(o[1]);
}

core.int buildCounterVolumeVolumeInfoPanelizationSummary = 0;
api.VolumeVolumeInfoPanelizationSummary
    buildVolumeVolumeInfoPanelizationSummary() {
  final o = api.VolumeVolumeInfoPanelizationSummary();
  buildCounterVolumeVolumeInfoPanelizationSummary++;
  if (buildCounterVolumeVolumeInfoPanelizationSummary < 3) {
    o.containsEpubBubbles = true;
    o.containsImageBubbles = true;
    o.epubBubbleVersion = 'foo';
    o.imageBubbleVersion = 'foo';
  }
  buildCounterVolumeVolumeInfoPanelizationSummary--;
  return o;
}

void checkVolumeVolumeInfoPanelizationSummary(
    api.VolumeVolumeInfoPanelizationSummary o) {
  buildCounterVolumeVolumeInfoPanelizationSummary++;
  if (buildCounterVolumeVolumeInfoPanelizationSummary < 3) {
    unittest.expect(o.containsEpubBubbles!, unittest.isTrue);
    unittest.expect(o.containsImageBubbles!, unittest.isTrue);
    unittest.expect(
      o.epubBubbleVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageBubbleVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeVolumeInfoPanelizationSummary--;
}

core.int buildCounterVolumeVolumeInfoReadingModes = 0;
api.VolumeVolumeInfoReadingModes buildVolumeVolumeInfoReadingModes() {
  final o = api.VolumeVolumeInfoReadingModes();
  buildCounterVolumeVolumeInfoReadingModes++;
  if (buildCounterVolumeVolumeInfoReadingModes < 3) {
    o.image = true;
    o.text = true;
  }
  buildCounterVolumeVolumeInfoReadingModes--;
  return o;
}

void checkVolumeVolumeInfoReadingModes(api.VolumeVolumeInfoReadingModes o) {
  buildCounterVolumeVolumeInfoReadingModes++;
  if (buildCounterVolumeVolumeInfoReadingModes < 3) {
    unittest.expect(o.image!, unittest.isTrue);
    unittest.expect(o.text!, unittest.isTrue);
  }
  buildCounterVolumeVolumeInfoReadingModes--;
}

core.int buildCounterVolumeVolumeInfo = 0;
api.VolumeVolumeInfo buildVolumeVolumeInfo() {
  final o = api.VolumeVolumeInfo();
  buildCounterVolumeVolumeInfo++;
  if (buildCounterVolumeVolumeInfo < 3) {
    o.allowAnonLogging = true;
    o.authors = buildUnnamed7868();
    o.averageRating = 42.0;
    o.canonicalVolumeLink = 'foo';
    o.categories = buildUnnamed7869();
    o.comicsContent = true;
    o.contentVersion = 'foo';
    o.description = 'foo';
    o.dimensions = buildVolumeVolumeInfoDimensions();
    o.imageLinks = buildVolumeVolumeInfoImageLinks();
    o.industryIdentifiers = buildUnnamed7870();
    o.infoLink = 'foo';
    o.language = 'foo';
    o.mainCategory = 'foo';
    o.maturityRating = 'foo';
    o.pageCount = 42;
    o.panelizationSummary = buildVolumeVolumeInfoPanelizationSummary();
    o.previewLink = 'foo';
    o.printType = 'foo';
    o.printedPageCount = 42;
    o.publishedDate = 'foo';
    o.publisher = 'foo';
    o.ratingsCount = 42;
    o.readingModes = buildVolumeVolumeInfoReadingModes();
    o.samplePageCount = 42;
    o.seriesInfo = buildVolumeseriesinfo();
    o.subtitle = 'foo';
    o.title = 'foo';
  }
  buildCounterVolumeVolumeInfo--;
  return o;
}

void checkVolumeVolumeInfo(api.VolumeVolumeInfo o) {
  buildCounterVolumeVolumeInfo++;
  if (buildCounterVolumeVolumeInfo < 3) {
    unittest.expect(o.allowAnonLogging!, unittest.isTrue);
    checkUnnamed7868(o.authors!);
    unittest.expect(
      o.averageRating!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.canonicalVolumeLink!,
      unittest.equals('foo'),
    );
    checkUnnamed7869(o.categories!);
    unittest.expect(o.comicsContent!, unittest.isTrue);
    unittest.expect(
      o.contentVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkVolumeVolumeInfoDimensions(o.dimensions!);
    checkVolumeVolumeInfoImageLinks(o.imageLinks!);
    checkUnnamed7870(o.industryIdentifiers!);
    unittest.expect(
      o.infoLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mainCategory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maturityRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageCount!,
      unittest.equals(42),
    );
    checkVolumeVolumeInfoPanelizationSummary(o.panelizationSummary!);
    unittest.expect(
      o.previewLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.printType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.printedPageCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.publishedDate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publisher!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ratingsCount!,
      unittest.equals(42),
    );
    checkVolumeVolumeInfoReadingModes(o.readingModes!);
    unittest.expect(
      o.samplePageCount!,
      unittest.equals(42),
    );
    checkVolumeseriesinfo(o.seriesInfo!);
    unittest.expect(
      o.subtitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeVolumeInfo--;
}

core.int buildCounterVolume = 0;
api.Volume buildVolume() {
  final o = api.Volume();
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    o.accessInfo = buildVolumeAccessInfo();
    o.etag = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.layerInfo = buildVolumeLayerInfo();
    o.recommendedInfo = buildVolumeRecommendedInfo();
    o.saleInfo = buildVolumeSaleInfo();
    o.searchInfo = buildVolumeSearchInfo();
    o.selfLink = 'foo';
    o.userInfo = buildVolumeUserInfo();
    o.volumeInfo = buildVolumeVolumeInfo();
  }
  buildCounterVolume--;
  return o;
}

void checkVolume(api.Volume o) {
  buildCounterVolume++;
  if (buildCounterVolume < 3) {
    checkVolumeAccessInfo(o.accessInfo!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkVolumeLayerInfo(o.layerInfo!);
    checkVolumeRecommendedInfo(o.recommendedInfo!);
    checkVolumeSaleInfo(o.saleInfo!);
    checkVolumeSearchInfo(o.searchInfo!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    checkVolumeUserInfo(o.userInfo!);
    checkVolumeVolumeInfo(o.volumeInfo!);
  }
  buildCounterVolume--;
}

core.List<api.Volume> buildUnnamed7871() => [
      buildVolume(),
      buildVolume(),
    ];

void checkUnnamed7871(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.int buildCounterVolume2 = 0;
api.Volume2 buildVolume2() {
  final o = api.Volume2();
  buildCounterVolume2++;
  if (buildCounterVolume2 < 3) {
    o.items = buildUnnamed7871();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterVolume2--;
  return o;
}

void checkVolume2(api.Volume2 o) {
  buildCounterVolume2++;
  if (buildCounterVolume2 < 3) {
    checkUnnamed7871(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolume2--;
}

core.int buildCounterVolumeannotationContentRanges = 0;
api.VolumeannotationContentRanges buildVolumeannotationContentRanges() {
  final o = api.VolumeannotationContentRanges();
  buildCounterVolumeannotationContentRanges++;
  if (buildCounterVolumeannotationContentRanges < 3) {
    o.cfiRange = buildBooksAnnotationsRange();
    o.contentVersion = 'foo';
    o.gbImageRange = buildBooksAnnotationsRange();
    o.gbTextRange = buildBooksAnnotationsRange();
  }
  buildCounterVolumeannotationContentRanges--;
  return o;
}

void checkVolumeannotationContentRanges(api.VolumeannotationContentRanges o) {
  buildCounterVolumeannotationContentRanges++;
  if (buildCounterVolumeannotationContentRanges < 3) {
    checkBooksAnnotationsRange(o.cfiRange!);
    unittest.expect(
      o.contentVersion!,
      unittest.equals('foo'),
    );
    checkBooksAnnotationsRange(o.gbImageRange!);
    checkBooksAnnotationsRange(o.gbTextRange!);
  }
  buildCounterVolumeannotationContentRanges--;
}

core.List<core.String> buildUnnamed7872() => [
      'foo',
      'foo',
    ];

void checkUnnamed7872(core.List<core.String> o) {
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

core.int buildCounterVolumeannotation = 0;
api.Volumeannotation buildVolumeannotation() {
  final o = api.Volumeannotation();
  buildCounterVolumeannotation++;
  if (buildCounterVolumeannotation < 3) {
    o.annotationDataId = 'foo';
    o.annotationDataLink = 'foo';
    o.annotationType = 'foo';
    o.contentRanges = buildVolumeannotationContentRanges();
    o.data = 'foo';
    o.deleted = true;
    o.id = 'foo';
    o.kind = 'foo';
    o.layerId = 'foo';
    o.pageIds = buildUnnamed7872();
    o.selectedText = 'foo';
    o.selfLink = 'foo';
    o.updated = 'foo';
    o.volumeId = 'foo';
  }
  buildCounterVolumeannotation--;
  return o;
}

void checkVolumeannotation(api.Volumeannotation o) {
  buildCounterVolumeannotation++;
  if (buildCounterVolumeannotation < 3) {
    unittest.expect(
      o.annotationDataId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.annotationDataLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.annotationType!,
      unittest.equals('foo'),
    );
    checkVolumeannotationContentRanges(o.contentRanges!);
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.layerId!,
      unittest.equals('foo'),
    );
    checkUnnamed7872(o.pageIds!);
    unittest.expect(
      o.selectedText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updated!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.volumeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeannotation--;
}

core.List<api.Volumeannotation> buildUnnamed7873() => [
      buildVolumeannotation(),
      buildVolumeannotation(),
    ];

void checkUnnamed7873(core.List<api.Volumeannotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeannotation(o[0]);
  checkVolumeannotation(o[1]);
}

core.int buildCounterVolumeannotations = 0;
api.Volumeannotations buildVolumeannotations() {
  final o = api.Volumeannotations();
  buildCounterVolumeannotations++;
  if (buildCounterVolumeannotations < 3) {
    o.items = buildUnnamed7873();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.totalItems = 42;
    o.version = 'foo';
  }
  buildCounterVolumeannotations--;
  return o;
}

void checkVolumeannotations(api.Volumeannotations o) {
  buildCounterVolumeannotations++;
  if (buildCounterVolumeannotations < 3) {
    checkUnnamed7873(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalItems!,
      unittest.equals(42),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeannotations--;
}

core.List<api.Volume> buildUnnamed7874() => [
      buildVolume(),
      buildVolume(),
    ];

void checkUnnamed7874(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0]);
  checkVolume(o[1]);
}

core.int buildCounterVolumes = 0;
api.Volumes buildVolumes() {
  final o = api.Volumes();
  buildCounterVolumes++;
  if (buildCounterVolumes < 3) {
    o.items = buildUnnamed7874();
    o.kind = 'foo';
    o.totalItems = 42;
  }
  buildCounterVolumes--;
  return o;
}

void checkVolumes(api.Volumes o) {
  buildCounterVolumes++;
  if (buildCounterVolumes < 3) {
    checkUnnamed7874(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalItems!,
      unittest.equals(42),
    );
  }
  buildCounterVolumes--;
}

core.int buildCounterVolumeseriesinfoVolumeSeriesIssue = 0;
api.VolumeseriesinfoVolumeSeriesIssue buildVolumeseriesinfoVolumeSeriesIssue() {
  final o = api.VolumeseriesinfoVolumeSeriesIssue();
  buildCounterVolumeseriesinfoVolumeSeriesIssue++;
  if (buildCounterVolumeseriesinfoVolumeSeriesIssue < 3) {
    o.issueDisplayNumber = 'foo';
    o.issueOrderNumber = 42;
  }
  buildCounterVolumeseriesinfoVolumeSeriesIssue--;
  return o;
}

void checkVolumeseriesinfoVolumeSeriesIssue(
    api.VolumeseriesinfoVolumeSeriesIssue o) {
  buildCounterVolumeseriesinfoVolumeSeriesIssue++;
  if (buildCounterVolumeseriesinfoVolumeSeriesIssue < 3) {
    unittest.expect(
      o.issueDisplayNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.issueOrderNumber!,
      unittest.equals(42),
    );
  }
  buildCounterVolumeseriesinfoVolumeSeriesIssue--;
}

core.List<api.VolumeseriesinfoVolumeSeriesIssue> buildUnnamed7875() => [
      buildVolumeseriesinfoVolumeSeriesIssue(),
      buildVolumeseriesinfoVolumeSeriesIssue(),
    ];

void checkUnnamed7875(core.List<api.VolumeseriesinfoVolumeSeriesIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeseriesinfoVolumeSeriesIssue(o[0]);
  checkVolumeseriesinfoVolumeSeriesIssue(o[1]);
}

core.int buildCounterVolumeseriesinfoVolumeSeries = 0;
api.VolumeseriesinfoVolumeSeries buildVolumeseriesinfoVolumeSeries() {
  final o = api.VolumeseriesinfoVolumeSeries();
  buildCounterVolumeseriesinfoVolumeSeries++;
  if (buildCounterVolumeseriesinfoVolumeSeries < 3) {
    o.issue = buildUnnamed7875();
    o.orderNumber = 42;
    o.seriesBookType = 'foo';
    o.seriesId = 'foo';
  }
  buildCounterVolumeseriesinfoVolumeSeries--;
  return o;
}

void checkVolumeseriesinfoVolumeSeries(api.VolumeseriesinfoVolumeSeries o) {
  buildCounterVolumeseriesinfoVolumeSeries++;
  if (buildCounterVolumeseriesinfoVolumeSeries < 3) {
    checkUnnamed7875(o.issue!);
    unittest.expect(
      o.orderNumber!,
      unittest.equals(42),
    );
    unittest.expect(
      o.seriesBookType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.seriesId!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeseriesinfoVolumeSeries--;
}

core.List<api.VolumeseriesinfoVolumeSeries> buildUnnamed7876() => [
      buildVolumeseriesinfoVolumeSeries(),
      buildVolumeseriesinfoVolumeSeries(),
    ];

void checkUnnamed7876(core.List<api.VolumeseriesinfoVolumeSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeseriesinfoVolumeSeries(o[0]);
  checkVolumeseriesinfoVolumeSeries(o[1]);
}

core.int buildCounterVolumeseriesinfo = 0;
api.Volumeseriesinfo buildVolumeseriesinfo() {
  final o = api.Volumeseriesinfo();
  buildCounterVolumeseriesinfo++;
  if (buildCounterVolumeseriesinfo < 3) {
    o.bookDisplayNumber = 'foo';
    o.kind = 'foo';
    o.shortSeriesBookTitle = 'foo';
    o.volumeSeries = buildUnnamed7876();
  }
  buildCounterVolumeseriesinfo--;
  return o;
}

void checkVolumeseriesinfo(api.Volumeseriesinfo o) {
  buildCounterVolumeseriesinfo++;
  if (buildCounterVolumeseriesinfo < 3) {
    unittest.expect(
      o.bookDisplayNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shortSeriesBookTitle!,
      unittest.equals('foo'),
    );
    checkUnnamed7876(o.volumeSeries!);
  }
  buildCounterVolumeseriesinfo--;
}

core.List<core.String> buildUnnamed7877() => [
      'foo',
      'foo',
    ];

void checkUnnamed7877(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7878() => [
      'foo',
      'foo',
    ];

void checkUnnamed7878(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7879() => [
      'foo',
      'foo',
    ];

void checkUnnamed7879(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7880() => [
      'foo',
      'foo',
    ];

void checkUnnamed7880(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7881() => [
      'foo',
      'foo',
    ];

void checkUnnamed7881(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7882() => [
      'foo',
      'foo',
    ];

void checkUnnamed7882(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7883() => [
      'foo',
      'foo',
    ];

void checkUnnamed7883(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7884() => [
      'foo',
      'foo',
    ];

void checkUnnamed7884(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7885() => [
      'foo',
      'foo',
    ];

void checkUnnamed7885(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7886() => [
      'foo',
      'foo',
    ];

void checkUnnamed7886(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7887() => [
      'foo',
      'foo',
    ];

void checkUnnamed7887(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7888() => [
      'foo',
      'foo',
    ];

void checkUnnamed7888(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-AnnotationClientVersionRanges', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotationClientVersionRanges();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnnotationClientVersionRanges.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnnotationClientVersionRanges(od);
    });
  });

  unittest.group('obj-schema-AnnotationCurrentVersionRanges', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotationCurrentVersionRanges();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnnotationCurrentVersionRanges.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnnotationCurrentVersionRanges(od);
    });
  });

  unittest.group('obj-schema-AnnotationLayerSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotationLayerSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnnotationLayerSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnnotationLayerSummary(od);
    });
  });

  unittest.group('obj-schema-Annotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Annotation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAnnotation(od);
    });
  });

  unittest.group('obj-schema-Annotations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Annotations.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnnotations(od);
    });
  });

  unittest.group('obj-schema-AnnotationsSummaryLayers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotationsSummaryLayers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnnotationsSummaryLayers.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnnotationsSummaryLayers(od);
    });
  });

  unittest.group('obj-schema-AnnotationsSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotationsSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnnotationsSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnnotationsSummary(od);
    });
  });

  unittest.group('obj-schema-Annotationsdata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotationsdata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Annotationsdata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnnotationsdata(od);
    });
  });

  unittest.group('obj-schema-BooksAnnotationsRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBooksAnnotationsRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BooksAnnotationsRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBooksAnnotationsRange(od);
    });
  });

  unittest.group('obj-schema-BooksCloudloadingResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBooksCloudloadingResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BooksCloudloadingResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBooksCloudloadingResource(od);
    });
  });

  unittest.group('obj-schema-BooksVolumesRecommendedRateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBooksVolumesRecommendedRateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BooksVolumesRecommendedRateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBooksVolumesRecommendedRateResponse(od);
    });
  });

  unittest.group('obj-schema-Bookshelf', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBookshelf();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Bookshelf.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBookshelf(od);
    });
  });

  unittest.group('obj-schema-Bookshelves', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBookshelves();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Bookshelves.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBookshelves(od);
    });
  });

  unittest.group('obj-schema-CategoryItems', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCategoryItems();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CategoryItems.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCategoryItems(od);
    });
  });

  unittest.group('obj-schema-Category', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCategory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Category.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCategory(od);
    });
  });

  unittest.group('obj-schema-ConcurrentAccessRestriction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConcurrentAccessRestriction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConcurrentAccessRestriction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConcurrentAccessRestriction(od);
    });
  });

  unittest.group('obj-schema-DictionaryAnnotationdata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDictionaryAnnotationdata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DictionaryAnnotationdata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDictionaryAnnotationdata(od);
    });
  });

  unittest.group('obj-schema-DictlayerdataCommon', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDictlayerdataCommon();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DictlayerdataCommon.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDictlayerdataCommon(od);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDictlayerdataDictSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DictlayerdataDictSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDictlayerdataDictSource(od);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsDerivativesSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDictlayerdataDictWordsDerivativesSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DictlayerdataDictWordsDerivativesSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDictlayerdataDictWordsDerivativesSource(od);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsDerivatives', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDictlayerdataDictWordsDerivatives();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DictlayerdataDictWordsDerivatives.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDictlayerdataDictWordsDerivatives(od);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsExamplesSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDictlayerdataDictWordsExamplesSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DictlayerdataDictWordsExamplesSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDictlayerdataDictWordsExamplesSource(od);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsExamples', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDictlayerdataDictWordsExamples();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DictlayerdataDictWordsExamples.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDictlayerdataDictWordsExamples(od);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsSensesConjugations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDictlayerdataDictWordsSensesConjugations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DictlayerdataDictWordsSensesConjugations.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDictlayerdataDictWordsSensesConjugations(od);
    });
  });

  unittest.group(
      'obj-schema-DictlayerdataDictWordsSensesDefinitionsExamplesSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDictlayerdataDictWordsSensesDefinitionsExamplesSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DictlayerdataDictWordsSensesDefinitionsExamplesSource.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkDictlayerdataDictWordsSensesDefinitionsExamplesSource(od);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsSensesDefinitionsExamples',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildDictlayerdataDictWordsSensesDefinitionsExamples();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DictlayerdataDictWordsSensesDefinitionsExamples.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDictlayerdataDictWordsSensesDefinitionsExamples(od);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsSensesDefinitions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDictlayerdataDictWordsSensesDefinitions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DictlayerdataDictWordsSensesDefinitions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDictlayerdataDictWordsSensesDefinitions(od);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsSensesSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDictlayerdataDictWordsSensesSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DictlayerdataDictWordsSensesSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDictlayerdataDictWordsSensesSource(od);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsSensesSynonymsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDictlayerdataDictWordsSensesSynonymsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DictlayerdataDictWordsSensesSynonymsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDictlayerdataDictWordsSensesSynonymsSource(od);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsSensesSynonyms', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDictlayerdataDictWordsSensesSynonyms();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DictlayerdataDictWordsSensesSynonyms.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDictlayerdataDictWordsSensesSynonyms(od);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsSenses', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDictlayerdataDictWordsSenses();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DictlayerdataDictWordsSenses.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDictlayerdataDictWordsSenses(od);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDictlayerdataDictWordsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DictlayerdataDictWordsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDictlayerdataDictWordsSource(od);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWords', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDictlayerdataDictWords();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DictlayerdataDictWords.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDictlayerdataDictWords(od);
    });
  });

  unittest.group('obj-schema-DictlayerdataDict', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDictlayerdataDict();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DictlayerdataDict.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDictlayerdataDict(od);
    });
  });

  unittest.group('obj-schema-Dictlayerdata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDictlayerdata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Dictlayerdata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDictlayerdata(od);
    });
  });

  unittest.group(
      'obj-schema-DiscoveryclustersClustersBannerWithContentContainer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiscoveryclustersClustersBannerWithContentContainer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DiscoveryclustersClustersBannerWithContentContainer.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkDiscoveryclustersClustersBannerWithContentContainer(od);
    });
  });

  unittest.group('obj-schema-DiscoveryclustersClusters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiscoveryclustersClusters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiscoveryclustersClusters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiscoveryclustersClusters(od);
    });
  });

  unittest.group('obj-schema-Discoveryclusters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiscoveryclusters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Discoveryclusters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiscoveryclusters(od);
    });
  });

  unittest.group('obj-schema-DownloadAccessRestriction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDownloadAccessRestriction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DownloadAccessRestriction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDownloadAccessRestriction(od);
    });
  });

  unittest.group('obj-schema-DownloadAccesses', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDownloadAccesses();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DownloadAccesses.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDownloadAccesses(od);
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

  unittest.group('obj-schema-FamilyInfoMembership', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFamilyInfoMembership();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FamilyInfoMembership.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFamilyInfoMembership(od);
    });
  });

  unittest.group('obj-schema-FamilyInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFamilyInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FamilyInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFamilyInfo(od);
    });
  });

  unittest.group('obj-schema-GeoAnnotationdata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeoAnnotationdata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeoAnnotationdata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeoAnnotationdata(od);
    });
  });

  unittest.group('obj-schema-GeolayerdataCommon', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeolayerdataCommon();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeolayerdataCommon.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeolayerdataCommon(od);
    });
  });

  unittest.group('obj-schema-GeolayerdataGeoViewportHi', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeolayerdataGeoViewportHi();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeolayerdataGeoViewportHi.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeolayerdataGeoViewportHi(od);
    });
  });

  unittest.group('obj-schema-GeolayerdataGeoViewportLo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeolayerdataGeoViewportLo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeolayerdataGeoViewportLo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeolayerdataGeoViewportLo(od);
    });
  });

  unittest.group('obj-schema-GeolayerdataGeoViewport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeolayerdataGeoViewport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeolayerdataGeoViewport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeolayerdataGeoViewport(od);
    });
  });

  unittest.group('obj-schema-GeolayerdataGeo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeolayerdataGeo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeolayerdataGeo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeolayerdataGeo(od);
    });
  });

  unittest.group('obj-schema-Geolayerdata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeolayerdata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Geolayerdata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeolayerdata(od);
    });
  });

  unittest.group('obj-schema-Layersummaries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLayersummaries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Layersummaries.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLayersummaries(od);
    });
  });

  unittest.group('obj-schema-Layersummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLayersummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Layersummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLayersummary(od);
    });
  });

  unittest.group('obj-schema-MetadataItems', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadataItems();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetadataItems.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetadataItems(od);
    });
  });

  unittest.group('obj-schema-Metadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metadata.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetadata(od);
    });
  });

  unittest.group('obj-schema-Notification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Notification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotification(od);
    });
  });

  unittest.group('obj-schema-OffersItemsItems', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOffersItemsItems();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OffersItemsItems.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOffersItemsItems(od);
    });
  });

  unittest.group('obj-schema-OffersItems', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOffersItems();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OffersItems.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOffersItems(od);
    });
  });

  unittest.group('obj-schema-Offers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOffers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Offers.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOffers(od);
    });
  });

  unittest.group('obj-schema-ReadingPosition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReadingPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReadingPosition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReadingPosition(od);
    });
  });

  unittest.group('obj-schema-RequestAccessData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestAccessData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestAccessData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRequestAccessData(od);
    });
  });

  unittest.group('obj-schema-ReviewAuthor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReviewAuthor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReviewAuthor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReviewAuthor(od);
    });
  });

  unittest.group('obj-schema-ReviewSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReviewSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReviewSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReviewSource(od);
    });
  });

  unittest.group('obj-schema-Review', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Review.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReview(od);
    });
  });

  unittest.group(
      'obj-schema-SeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildSeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo(od);
    });
  });

  unittest.group(
      'obj-schema-SeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildSeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkSeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo(od);
    });
  });

  unittest.group('obj-schema-SeriesSeriesSeriesSubscriptionReleaseInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSeriesSeriesSeriesSubscriptionReleaseInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SeriesSeriesSeriesSubscriptionReleaseInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSeriesSeriesSeriesSubscriptionReleaseInfo(od);
    });
  });

  unittest.group('obj-schema-SeriesSeries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSeriesSeries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SeriesSeries.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSeriesSeries(od);
    });
  });

  unittest.group('obj-schema-Series', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSeries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Series.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSeries(od);
    });
  });

  unittest.group('obj-schema-Seriesmembership', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSeriesmembership();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Seriesmembership.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSeriesmembership(od);
    });
  });

  unittest.group('obj-schema-UsersettingsNotesExport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsersettingsNotesExport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsersettingsNotesExport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsersettingsNotesExport(od);
    });
  });

  unittest.group('obj-schema-UsersettingsNotificationMatchMyInterests', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsersettingsNotificationMatchMyInterests();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsersettingsNotificationMatchMyInterests.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsersettingsNotificationMatchMyInterests(od);
    });
  });

  unittest.group('obj-schema-UsersettingsNotificationMoreFromAuthors', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsersettingsNotificationMoreFromAuthors();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsersettingsNotificationMoreFromAuthors.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsersettingsNotificationMoreFromAuthors(od);
    });
  });

  unittest.group('obj-schema-UsersettingsNotificationMoreFromSeries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsersettingsNotificationMoreFromSeries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsersettingsNotificationMoreFromSeries.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsersettingsNotificationMoreFromSeries(od);
    });
  });

  unittest.group('obj-schema-UsersettingsNotificationPriceDrop', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsersettingsNotificationPriceDrop();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsersettingsNotificationPriceDrop.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsersettingsNotificationPriceDrop(od);
    });
  });

  unittest.group('obj-schema-UsersettingsNotificationRewardExpirations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsersettingsNotificationRewardExpirations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsersettingsNotificationRewardExpirations.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsersettingsNotificationRewardExpirations(od);
    });
  });

  unittest.group('obj-schema-UsersettingsNotification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsersettingsNotification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsersettingsNotification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsersettingsNotification(od);
    });
  });

  unittest.group('obj-schema-Usersettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsersettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Usersettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsersettings(od);
    });
  });

  unittest.group('obj-schema-VolumeAccessInfoEpub', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeAccessInfoEpub();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeAccessInfoEpub.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeAccessInfoEpub(od);
    });
  });

  unittest.group('obj-schema-VolumeAccessInfoPdf', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeAccessInfoPdf();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeAccessInfoPdf.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeAccessInfoPdf(od);
    });
  });

  unittest.group('obj-schema-VolumeAccessInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeAccessInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeAccessInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeAccessInfo(od);
    });
  });

  unittest.group('obj-schema-VolumeLayerInfoLayers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeLayerInfoLayers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeLayerInfoLayers.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeLayerInfoLayers(od);
    });
  });

  unittest.group('obj-schema-VolumeLayerInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeLayerInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeLayerInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeLayerInfo(od);
    });
  });

  unittest.group('obj-schema-VolumeRecommendedInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeRecommendedInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeRecommendedInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeRecommendedInfo(od);
    });
  });

  unittest.group('obj-schema-VolumeSaleInfoListPrice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeSaleInfoListPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeSaleInfoListPrice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeSaleInfoListPrice(od);
    });
  });

  unittest.group('obj-schema-VolumeSaleInfoOffersListPrice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeSaleInfoOffersListPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeSaleInfoOffersListPrice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeSaleInfoOffersListPrice(od);
    });
  });

  unittest.group('obj-schema-VolumeSaleInfoOffersRentalDuration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeSaleInfoOffersRentalDuration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeSaleInfoOffersRentalDuration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeSaleInfoOffersRentalDuration(od);
    });
  });

  unittest.group('obj-schema-VolumeSaleInfoOffersRetailPrice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeSaleInfoOffersRetailPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeSaleInfoOffersRetailPrice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeSaleInfoOffersRetailPrice(od);
    });
  });

  unittest.group('obj-schema-VolumeSaleInfoOffers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeSaleInfoOffers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeSaleInfoOffers.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeSaleInfoOffers(od);
    });
  });

  unittest.group('obj-schema-VolumeSaleInfoRetailPrice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeSaleInfoRetailPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeSaleInfoRetailPrice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeSaleInfoRetailPrice(od);
    });
  });

  unittest.group('obj-schema-VolumeSaleInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeSaleInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeSaleInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeSaleInfo(od);
    });
  });

  unittest.group('obj-schema-VolumeSearchInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeSearchInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeSearchInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeSearchInfo(od);
    });
  });

  unittest.group('obj-schema-VolumeUserInfoCopy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeUserInfoCopy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeUserInfoCopy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeUserInfoCopy(od);
    });
  });

  unittest.group('obj-schema-VolumeUserInfoFamilySharing', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeUserInfoFamilySharing();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeUserInfoFamilySharing.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeUserInfoFamilySharing(od);
    });
  });

  unittest.group('obj-schema-VolumeUserInfoRentalPeriod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeUserInfoRentalPeriod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeUserInfoRentalPeriod.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeUserInfoRentalPeriod(od);
    });
  });

  unittest.group('obj-schema-VolumeUserInfoUserUploadedVolumeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeUserInfoUserUploadedVolumeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeUserInfoUserUploadedVolumeInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeUserInfoUserUploadedVolumeInfo(od);
    });
  });

  unittest.group('obj-schema-VolumeUserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeUserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeUserInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeUserInfo(od);
    });
  });

  unittest.group('obj-schema-VolumeVolumeInfoDimensions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeVolumeInfoDimensions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeVolumeInfoDimensions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeVolumeInfoDimensions(od);
    });
  });

  unittest.group('obj-schema-VolumeVolumeInfoImageLinks', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeVolumeInfoImageLinks();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeVolumeInfoImageLinks.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeVolumeInfoImageLinks(od);
    });
  });

  unittest.group('obj-schema-VolumeVolumeInfoIndustryIdentifiers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeVolumeInfoIndustryIdentifiers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeVolumeInfoIndustryIdentifiers.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeVolumeInfoIndustryIdentifiers(od);
    });
  });

  unittest.group('obj-schema-VolumeVolumeInfoPanelizationSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeVolumeInfoPanelizationSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeVolumeInfoPanelizationSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeVolumeInfoPanelizationSummary(od);
    });
  });

  unittest.group('obj-schema-VolumeVolumeInfoReadingModes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeVolumeInfoReadingModes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeVolumeInfoReadingModes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeVolumeInfoReadingModes(od);
    });
  });

  unittest.group('obj-schema-VolumeVolumeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeVolumeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeVolumeInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeVolumeInfo(od);
    });
  });

  unittest.group('obj-schema-Volume', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolume();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Volume.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVolume(od);
    });
  });

  unittest.group('obj-schema-Volume2', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolume2();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Volume2.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVolume2(od);
    });
  });

  unittest.group('obj-schema-VolumeannotationContentRanges', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeannotationContentRanges();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeannotationContentRanges.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeannotationContentRanges(od);
    });
  });

  unittest.group('obj-schema-Volumeannotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeannotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Volumeannotation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeannotation(od);
    });
  });

  unittest.group('obj-schema-Volumeannotations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeannotations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Volumeannotations.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeannotations(od);
    });
  });

  unittest.group('obj-schema-Volumes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Volumes.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVolumes(od);
    });
  });

  unittest.group('obj-schema-VolumeseriesinfoVolumeSeriesIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeseriesinfoVolumeSeriesIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeseriesinfoVolumeSeriesIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeseriesinfoVolumeSeriesIssue(od);
    });
  });

  unittest.group('obj-schema-VolumeseriesinfoVolumeSeries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeseriesinfoVolumeSeries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VolumeseriesinfoVolumeSeries.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeseriesinfoVolumeSeries(od);
    });
  });

  unittest.group('obj-schema-Volumeseriesinfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVolumeseriesinfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Volumeseriesinfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVolumeseriesinfo(od);
    });
  });

  unittest.group('resource-BookshelvesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).bookshelves;
      final arg_userId = 'foo';
      final arg_shelf = 'foo';
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('books/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/bookshelves/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/bookshelves/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_shelf'),
        );

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
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBookshelf());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_userId, arg_shelf,
          source: arg_source, $fields: arg_$fields);
      checkBookshelf(response as api.Bookshelf);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).bookshelves;
      final arg_userId = 'foo';
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('books/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/bookshelves', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/bookshelves'),
        );
        pathOffset += 12;

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
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBookshelves());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_userId, source: arg_source, $fields: arg_$fields);
      checkBookshelves(response as api.Bookshelves);
    });
  });

  unittest.group('resource-BookshelvesVolumesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).bookshelves.volumes;
      final arg_userId = 'foo';
      final arg_shelf = 'foo';
      final arg_maxResults = 42;
      final arg_showPreorders = true;
      final arg_source = 'foo';
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('books/v1/users/'),
        );
        pathOffset += 15;
        index = path.indexOf('/bookshelves/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/bookshelves/'),
        );
        pathOffset += 13;
        index = path.indexOf('/volumes', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_shelf'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/volumes'),
        );
        pathOffset += 8;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['showPreorders']!.first,
          unittest.equals('$arg_showPreorders'),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          core.int.parse(queryMap['startIndex']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVolumes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_userId, arg_shelf,
          maxResults: arg_maxResults,
          showPreorders: arg_showPreorders,
          source: arg_source,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkVolumes(response as api.Volumes);
    });
  });

  unittest.group('resource-CloudloadingResource', () {
    unittest.test('method--addBook', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).cloudloading;
      final arg_driveDocumentId = 'foo';
      final arg_mimeType = 'foo';
      final arg_name = 'foo';
      final arg_uploadClientToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('books/v1/cloudloading/addBook'),
        );
        pathOffset += 29;

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
          queryMap['drive_document_id']!.first,
          unittest.equals(arg_driveDocumentId),
        );
        unittest.expect(
          queryMap['mime_type']!.first,
          unittest.equals(arg_mimeType),
        );
        unittest.expect(
          queryMap['name']!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap['upload_client_token']!.first,
          unittest.equals(arg_uploadClientToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBooksCloudloadingResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.addBook(
          driveDocumentId: arg_driveDocumentId,
          mimeType: arg_mimeType,
          name: arg_name,
          uploadClientToken: arg_uploadClientToken,
          $fields: arg_$fields);
      checkBooksCloudloadingResource(response as api.BooksCloudloadingResource);
    });

    unittest.test('method--deleteBook', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).cloudloading;
      final arg_volumeId = 'foo';
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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('books/v1/cloudloading/deleteBook'),
        );
        pathOffset += 32;

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
          queryMap['volumeId']!.first,
          unittest.equals(arg_volumeId),
        );
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
      final response = await res.deleteBook(arg_volumeId, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--updateBook', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).cloudloading;
      final arg_request = buildBooksCloudloadingResource();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BooksCloudloadingResource.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBooksCloudloadingResource(obj);

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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals('books/v1/cloudloading/updateBook'),
        );
        pathOffset += 32;

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
        final resp = convert.json.encode(buildBooksCloudloadingResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateBook(arg_request, $fields: arg_$fields);
      checkBooksCloudloadingResource(response as api.BooksCloudloadingResource);
    });
  });

  unittest.group('resource-DictionaryResource', () {
    unittest.test('method--listOfflineMetadata', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).dictionary;
      final arg_cpksver = 'foo';
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
          path.substring(pathOffset, pathOffset + 39),
          unittest.equals('books/v1/dictionary/listOfflineMetadata'),
        );
        pathOffset += 39;

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
          queryMap['cpksver']!.first,
          unittest.equals(arg_cpksver),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.listOfflineMetadata(arg_cpksver, $fields: arg_$fields);
      checkMetadata(response as api.Metadata);
    });
  });

  unittest.group('resource-FamilysharingResource', () {
    unittest.test('method--getFamilyInfo', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).familysharing;
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 36),
          unittest.equals('books/v1/familysharing/getFamilyInfo'),
        );
        pathOffset += 36;

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
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFamilyInfo());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getFamilyInfo(source: arg_source, $fields: arg_$fields);
      checkFamilyInfo(response as api.FamilyInfo);
    });

    unittest.test('method--share', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).familysharing;
      final arg_docId = 'foo';
      final arg_source = 'foo';
      final arg_volumeId = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('books/v1/familysharing/share'),
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
          queryMap['docId']!.first,
          unittest.equals(arg_docId),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['volumeId']!.first,
          unittest.equals(arg_volumeId),
        );
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
      final response = await res.share(
          docId: arg_docId,
          source: arg_source,
          volumeId: arg_volumeId,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--unshare', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).familysharing;
      final arg_docId = 'foo';
      final arg_source = 'foo';
      final arg_volumeId = 'foo';
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('books/v1/familysharing/unshare'),
        );
        pathOffset += 30;

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
          queryMap['docId']!.first,
          unittest.equals(arg_docId),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['volumeId']!.first,
          unittest.equals(arg_volumeId),
        );
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
      final response = await res.unshare(
          docId: arg_docId,
          source: arg_source,
          volumeId: arg_volumeId,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-LayersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).layers;
      final arg_volumeId = 'foo';
      final arg_summaryId = 'foo';
      final arg_contentVersion = 'foo';
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('books/v1/volumes/'),
        );
        pathOffset += 17;
        index = path.indexOf('/layersummary/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_volumeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/layersummary/'),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_summaryId'),
        );

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
          queryMap['contentVersion']!.first,
          unittest.equals(arg_contentVersion),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLayersummary());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_volumeId, arg_summaryId,
          contentVersion: arg_contentVersion,
          source: arg_source,
          $fields: arg_$fields);
      checkLayersummary(response as api.Layersummary);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).layers;
      final arg_volumeId = 'foo';
      final arg_contentVersion = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('books/v1/volumes/'),
        );
        pathOffset += 17;
        index = path.indexOf('/layersummary', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_volumeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/layersummary'),
        );
        pathOffset += 13;

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
          queryMap['contentVersion']!.first,
          unittest.equals(arg_contentVersion),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLayersummaries());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_volumeId,
          contentVersion: arg_contentVersion,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          source: arg_source,
          $fields: arg_$fields);
      checkLayersummaries(response as api.Layersummaries);
    });
  });

  unittest.group('resource-LayersAnnotationDataResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).layers.annotationData;
      final arg_volumeId = 'foo';
      final arg_layerId = 'foo';
      final arg_annotationDataId = 'foo';
      final arg_contentVersion = 'foo';
      final arg_allowWebDefinitions = true;
      final arg_h = 42;
      final arg_locale = 'foo';
      final arg_scale = 42;
      final arg_source = 'foo';
      final arg_w = 42;
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('books/v1/volumes/'),
        );
        pathOffset += 17;
        index = path.indexOf('/layers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_volumeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/layers/'),
        );
        pathOffset += 8;
        index = path.indexOf('/data/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_layerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/data/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_annotationDataId'),
        );

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
          queryMap['contentVersion']!.first,
          unittest.equals(arg_contentVersion),
        );
        unittest.expect(
          queryMap['allowWebDefinitions']!.first,
          unittest.equals('$arg_allowWebDefinitions'),
        );
        unittest.expect(
          core.int.parse(queryMap['h']!.first),
          unittest.equals(arg_h),
        );
        unittest.expect(
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          core.int.parse(queryMap['scale']!.first),
          unittest.equals(arg_scale),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          core.int.parse(queryMap['w']!.first),
          unittest.equals(arg_w),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDictionaryAnnotationdata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_volumeId, arg_layerId, arg_annotationDataId, arg_contentVersion,
          allowWebDefinitions: arg_allowWebDefinitions,
          h: arg_h,
          locale: arg_locale,
          scale: arg_scale,
          source: arg_source,
          w: arg_w,
          $fields: arg_$fields);
      checkDictionaryAnnotationdata(response as api.DictionaryAnnotationdata);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).layers.annotationData;
      final arg_volumeId = 'foo';
      final arg_layerId = 'foo';
      final arg_contentVersion = 'foo';
      final arg_annotationDataId = buildUnnamed7877();
      final arg_h = 42;
      final arg_locale = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_scale = 42;
      final arg_source = 'foo';
      final arg_updatedMax = 'foo';
      final arg_updatedMin = 'foo';
      final arg_w = 42;
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('books/v1/volumes/'),
        );
        pathOffset += 17;
        index = path.indexOf('/layers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_volumeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/layers/'),
        );
        pathOffset += 8;
        index = path.indexOf('/data', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_layerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/data'),
        );
        pathOffset += 5;

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
          queryMap['contentVersion']!.first,
          unittest.equals(arg_contentVersion),
        );
        unittest.expect(
          queryMap['annotationDataId']!,
          unittest.equals(arg_annotationDataId),
        );
        unittest.expect(
          core.int.parse(queryMap['h']!.first),
          unittest.equals(arg_h),
        );
        unittest.expect(
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          core.int.parse(queryMap['scale']!.first),
          unittest.equals(arg_scale),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['updatedMax']!.first,
          unittest.equals(arg_updatedMax),
        );
        unittest.expect(
          queryMap['updatedMin']!.first,
          unittest.equals(arg_updatedMin),
        );
        unittest.expect(
          core.int.parse(queryMap['w']!.first),
          unittest.equals(arg_w),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAnnotationsdata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_volumeId, arg_layerId, arg_contentVersion,
          annotationDataId: arg_annotationDataId,
          h: arg_h,
          locale: arg_locale,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          scale: arg_scale,
          source: arg_source,
          updatedMax: arg_updatedMax,
          updatedMin: arg_updatedMin,
          w: arg_w,
          $fields: arg_$fields);
      checkAnnotationsdata(response as api.Annotationsdata);
    });
  });

  unittest.group('resource-LayersVolumeAnnotationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).layers.volumeAnnotations;
      final arg_volumeId = 'foo';
      final arg_layerId = 'foo';
      final arg_annotationId = 'foo';
      final arg_locale = 'foo';
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('books/v1/volumes/'),
        );
        pathOffset += 17;
        index = path.indexOf('/layers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_volumeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/layers/'),
        );
        pathOffset += 8;
        index = path.indexOf('/annotations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_layerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/annotations/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_annotationId'),
        );

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
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVolumeannotation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_volumeId, arg_layerId, arg_annotationId,
          locale: arg_locale, source: arg_source, $fields: arg_$fields);
      checkVolumeannotation(response as api.Volumeannotation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).layers.volumeAnnotations;
      final arg_volumeId = 'foo';
      final arg_layerId = 'foo';
      final arg_contentVersion = 'foo';
      final arg_endOffset = 'foo';
      final arg_endPosition = 'foo';
      final arg_locale = 'foo';
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
      final arg_source = 'foo';
      final arg_startOffset = 'foo';
      final arg_startPosition = 'foo';
      final arg_updatedMax = 'foo';
      final arg_updatedMin = 'foo';
      final arg_volumeAnnotationsVersion = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('books/v1/volumes/'),
        );
        pathOffset += 17;
        index = path.indexOf('/layers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_volumeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/layers/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_layerId'),
        );

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
          queryMap['contentVersion']!.first,
          unittest.equals(arg_contentVersion),
        );
        unittest.expect(
          queryMap['endOffset']!.first,
          unittest.equals(arg_endOffset),
        );
        unittest.expect(
          queryMap['endPosition']!.first,
          unittest.equals(arg_endPosition),
        );
        unittest.expect(
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['startOffset']!.first,
          unittest.equals(arg_startOffset),
        );
        unittest.expect(
          queryMap['startPosition']!.first,
          unittest.equals(arg_startPosition),
        );
        unittest.expect(
          queryMap['updatedMax']!.first,
          unittest.equals(arg_updatedMax),
        );
        unittest.expect(
          queryMap['updatedMin']!.first,
          unittest.equals(arg_updatedMin),
        );
        unittest.expect(
          queryMap['volumeAnnotationsVersion']!.first,
          unittest.equals(arg_volumeAnnotationsVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVolumeannotations());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_volumeId, arg_layerId, arg_contentVersion,
          endOffset: arg_endOffset,
          endPosition: arg_endPosition,
          locale: arg_locale,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          source: arg_source,
          startOffset: arg_startOffset,
          startPosition: arg_startPosition,
          updatedMax: arg_updatedMax,
          updatedMin: arg_updatedMin,
          volumeAnnotationsVersion: arg_volumeAnnotationsVersion,
          $fields: arg_$fields);
      checkVolumeannotations(response as api.Volumeannotations);
    });
  });

  unittest.group('resource-MyconfigResource', () {
    unittest.test('method--getUserSettings', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).myconfig;
      final arg_country = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('books/v1/myconfig/getUserSettings'),
        );
        pathOffset += 33;

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
          queryMap['country']!.first,
          unittest.equals(arg_country),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUsersettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getUserSettings(country: arg_country, $fields: arg_$fields);
      checkUsersettings(response as api.Usersettings);
    });

    unittest.test('method--releaseDownloadAccess', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).myconfig;
      final arg_cpksver = 'foo';
      final arg_volumeIds = buildUnnamed7878();
      final arg_locale = 'foo';
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 39),
          unittest.equals('books/v1/myconfig/releaseDownloadAccess'),
        );
        pathOffset += 39;

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
          queryMap['cpksver']!.first,
          unittest.equals(arg_cpksver),
        );
        unittest.expect(
          queryMap['volumeIds']!,
          unittest.equals(arg_volumeIds),
        );
        unittest.expect(
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDownloadAccesses());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.releaseDownloadAccess(
          arg_cpksver, arg_volumeIds,
          locale: arg_locale, source: arg_source, $fields: arg_$fields);
      checkDownloadAccesses(response as api.DownloadAccesses);
    });

    unittest.test('method--requestAccess', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).myconfig;
      final arg_cpksver = 'foo';
      final arg_nonce = 'foo';
      final arg_source = 'foo';
      final arg_volumeId = 'foo';
      final arg_licenseTypes = 'foo';
      final arg_locale = 'foo';
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
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('books/v1/myconfig/requestAccess'),
        );
        pathOffset += 31;

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
          queryMap['cpksver']!.first,
          unittest.equals(arg_cpksver),
        );
        unittest.expect(
          queryMap['nonce']!.first,
          unittest.equals(arg_nonce),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['volumeId']!.first,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          queryMap['licenseTypes']!.first,
          unittest.equals(arg_licenseTypes),
        );
        unittest.expect(
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRequestAccessData());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.requestAccess(
          arg_cpksver, arg_nonce, arg_source, arg_volumeId,
          licenseTypes: arg_licenseTypes,
          locale: arg_locale,
          $fields: arg_$fields);
      checkRequestAccessData(response as api.RequestAccessData);
    });

    unittest.test('method--syncVolumeLicenses', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).myconfig;
      final arg_cpksver = 'foo';
      final arg_nonce = 'foo';
      final arg_source = 'foo';
      final arg_features = buildUnnamed7879();
      final arg_includeNonComicsSeries = true;
      final arg_locale = 'foo';
      final arg_showPreorders = true;
      final arg_volumeIds = buildUnnamed7880();
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
          path.substring(pathOffset, pathOffset + 36),
          unittest.equals('books/v1/myconfig/syncVolumeLicenses'),
        );
        pathOffset += 36;

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
          queryMap['cpksver']!.first,
          unittest.equals(arg_cpksver),
        );
        unittest.expect(
          queryMap['nonce']!.first,
          unittest.equals(arg_nonce),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['features']!,
          unittest.equals(arg_features),
        );
        unittest.expect(
          queryMap['includeNonComicsSeries']!.first,
          unittest.equals('$arg_includeNonComicsSeries'),
        );
        unittest.expect(
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap['showPreorders']!.first,
          unittest.equals('$arg_showPreorders'),
        );
        unittest.expect(
          queryMap['volumeIds']!,
          unittest.equals(arg_volumeIds),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVolumes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.syncVolumeLicenses(
          arg_cpksver, arg_nonce, arg_source,
          features: arg_features,
          includeNonComicsSeries: arg_includeNonComicsSeries,
          locale: arg_locale,
          showPreorders: arg_showPreorders,
          volumeIds: arg_volumeIds,
          $fields: arg_$fields);
      checkVolumes(response as api.Volumes);
    });

    unittest.test('method--updateUserSettings', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).myconfig;
      final arg_request = buildUsersettings();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Usersettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUsersettings(obj);

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
          path.substring(pathOffset, pathOffset + 36),
          unittest.equals('books/v1/myconfig/updateUserSettings'),
        );
        pathOffset += 36;

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
        final resp = convert.json.encode(buildUsersettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.updateUserSettings(arg_request, $fields: arg_$fields);
      checkUsersettings(response as api.Usersettings);
    });
  });

  unittest.group('resource-MylibraryAnnotationsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).mylibrary.annotations;
      final arg_annotationId = 'foo';
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('books/v1/mylibrary/annotations/'),
        );
        pathOffset += 31;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_annotationId'),
        );

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
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
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
      final response = await res.delete(arg_annotationId,
          source: arg_source, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).mylibrary.annotations;
      final arg_request = buildAnnotation();
      final arg_annotationId = 'foo';
      final arg_country = 'foo';
      final arg_showOnlySummaryInResponse = true;
      final arg_source = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Annotation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAnnotation(obj);

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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('books/v1/mylibrary/annotations'),
        );
        pathOffset += 30;

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
          queryMap['annotationId']!.first,
          unittest.equals(arg_annotationId),
        );
        unittest.expect(
          queryMap['country']!.first,
          unittest.equals(arg_country),
        );
        unittest.expect(
          queryMap['showOnlySummaryInResponse']!.first,
          unittest.equals('$arg_showOnlySummaryInResponse'),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAnnotation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request,
          annotationId: arg_annotationId,
          country: arg_country,
          showOnlySummaryInResponse: arg_showOnlySummaryInResponse,
          source: arg_source,
          $fields: arg_$fields);
      checkAnnotation(response as api.Annotation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).mylibrary.annotations;
      final arg_contentVersion = 'foo';
      final arg_layerId = 'foo';
      final arg_layerIds = buildUnnamed7881();
      final arg_maxResults = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
      final arg_source = 'foo';
      final arg_updatedMax = 'foo';
      final arg_updatedMin = 'foo';
      final arg_volumeId = 'foo';
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('books/v1/mylibrary/annotations'),
        );
        pathOffset += 30;

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
          queryMap['contentVersion']!.first,
          unittest.equals(arg_contentVersion),
        );
        unittest.expect(
          queryMap['layerId']!.first,
          unittest.equals(arg_layerId),
        );
        unittest.expect(
          queryMap['layerIds']!,
          unittest.equals(arg_layerIds),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['updatedMax']!.first,
          unittest.equals(arg_updatedMax),
        );
        unittest.expect(
          queryMap['updatedMin']!.first,
          unittest.equals(arg_updatedMin),
        );
        unittest.expect(
          queryMap['volumeId']!.first,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAnnotations());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          contentVersion: arg_contentVersion,
          layerId: arg_layerId,
          layerIds: arg_layerIds,
          maxResults: arg_maxResults,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          source: arg_source,
          updatedMax: arg_updatedMax,
          updatedMin: arg_updatedMin,
          volumeId: arg_volumeId,
          $fields: arg_$fields);
      checkAnnotations(response as api.Annotations);
    });

    unittest.test('method--summary', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).mylibrary.annotations;
      final arg_layerIds = buildUnnamed7882();
      final arg_volumeId = 'foo';
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
          path.substring(pathOffset, pathOffset + 38),
          unittest.equals('books/v1/mylibrary/annotations/summary'),
        );
        pathOffset += 38;

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
          queryMap['layerIds']!,
          unittest.equals(arg_layerIds),
        );
        unittest.expect(
          queryMap['volumeId']!.first,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAnnotationsSummary());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.summary(arg_layerIds, arg_volumeId, $fields: arg_$fields);
      checkAnnotationsSummary(response as api.AnnotationsSummary);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).mylibrary.annotations;
      final arg_request = buildAnnotation();
      final arg_annotationId = 'foo';
      final arg_source = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Annotation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAnnotation(obj);

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
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('books/v1/mylibrary/annotations/'),
        );
        pathOffset += 31;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_annotationId'),
        );

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
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAnnotation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_annotationId,
          source: arg_source, $fields: arg_$fields);
      checkAnnotation(response as api.Annotation);
    });
  });

  unittest.group('resource-MylibraryBookshelvesResource', () {
    unittest.test('method--addVolume', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).mylibrary.bookshelves;
      final arg_shelf = 'foo';
      final arg_volumeId = 'foo';
      final arg_reason = 'foo';
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('books/v1/mylibrary/bookshelves/'),
        );
        pathOffset += 31;
        index = path.indexOf('/addVolume', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_shelf'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/addVolume'),
        );
        pathOffset += 10;

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
          queryMap['volumeId']!.first,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          queryMap['reason']!.first,
          unittest.equals(arg_reason),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
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
      final response = await res.addVolume(arg_shelf, arg_volumeId,
          reason: arg_reason, source: arg_source, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--clearVolumes', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).mylibrary.bookshelves;
      final arg_shelf = 'foo';
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('books/v1/mylibrary/bookshelves/'),
        );
        pathOffset += 31;
        index = path.indexOf('/clearVolumes', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_shelf'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/clearVolumes'),
        );
        pathOffset += 13;

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
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
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
      final response = await res.clearVolumes(arg_shelf,
          source: arg_source, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).mylibrary.bookshelves;
      final arg_shelf = 'foo';
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('books/v1/mylibrary/bookshelves/'),
        );
        pathOffset += 31;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_shelf'),
        );

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
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBookshelf());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_shelf, source: arg_source, $fields: arg_$fields);
      checkBookshelf(response as api.Bookshelf);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).mylibrary.bookshelves;
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('books/v1/mylibrary/bookshelves'),
        );
        pathOffset += 30;

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
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBookshelves());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(source: arg_source, $fields: arg_$fields);
      checkBookshelves(response as api.Bookshelves);
    });

    unittest.test('method--moveVolume', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).mylibrary.bookshelves;
      final arg_shelf = 'foo';
      final arg_volumeId = 'foo';
      final arg_volumePosition = 42;
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('books/v1/mylibrary/bookshelves/'),
        );
        pathOffset += 31;
        index = path.indexOf('/moveVolume', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_shelf'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/moveVolume'),
        );
        pathOffset += 11;

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
          queryMap['volumeId']!.first,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          core.int.parse(queryMap['volumePosition']!.first),
          unittest.equals(arg_volumePosition),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
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
      final response = await res.moveVolume(
          arg_shelf, arg_volumeId, arg_volumePosition,
          source: arg_source, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--removeVolume', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).mylibrary.bookshelves;
      final arg_shelf = 'foo';
      final arg_volumeId = 'foo';
      final arg_reason = 'foo';
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('books/v1/mylibrary/bookshelves/'),
        );
        pathOffset += 31;
        index = path.indexOf('/removeVolume', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_shelf'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/removeVolume'),
        );
        pathOffset += 13;

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
          queryMap['volumeId']!.first,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          queryMap['reason']!.first,
          unittest.equals(arg_reason),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
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
      final response = await res.removeVolume(arg_shelf, arg_volumeId,
          reason: arg_reason, source: arg_source, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-MylibraryBookshelvesVolumesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).mylibrary.bookshelves.volumes;
      final arg_shelf = 'foo';
      final arg_country = 'foo';
      final arg_maxResults = 42;
      final arg_projection = 'foo';
      final arg_q = 'foo';
      final arg_showPreorders = true;
      final arg_source = 'foo';
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('books/v1/mylibrary/bookshelves/'),
        );
        pathOffset += 31;
        index = path.indexOf('/volumes', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_shelf'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/volumes'),
        );
        pathOffset += 8;

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
          queryMap['country']!.first,
          unittest.equals(arg_country),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['q']!.first,
          unittest.equals(arg_q),
        );
        unittest.expect(
          queryMap['showPreorders']!.first,
          unittest.equals('$arg_showPreorders'),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          core.int.parse(queryMap['startIndex']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVolumes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_shelf,
          country: arg_country,
          maxResults: arg_maxResults,
          projection: arg_projection,
          q: arg_q,
          showPreorders: arg_showPreorders,
          source: arg_source,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkVolumes(response as api.Volumes);
    });
  });

  unittest.group('resource-MylibraryReadingpositionsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).mylibrary.readingpositions;
      final arg_volumeId = 'foo';
      final arg_contentVersion = 'foo';
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 36),
          unittest.equals('books/v1/mylibrary/readingpositions/'),
        );
        pathOffset += 36;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_volumeId'),
        );

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
          queryMap['contentVersion']!.first,
          unittest.equals(arg_contentVersion),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReadingPosition());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_volumeId,
          contentVersion: arg_contentVersion,
          source: arg_source,
          $fields: arg_$fields);
      checkReadingPosition(response as api.ReadingPosition);
    });

    unittest.test('method--setPosition', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).mylibrary.readingpositions;
      final arg_volumeId = 'foo';
      final arg_position = 'foo';
      final arg_timestamp = 'foo';
      final arg_action = 'foo';
      final arg_contentVersion = 'foo';
      final arg_deviceCookie = 'foo';
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 36),
          unittest.equals('books/v1/mylibrary/readingpositions/'),
        );
        pathOffset += 36;
        index = path.indexOf('/setPosition', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_volumeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/setPosition'),
        );
        pathOffset += 12;

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
          queryMap['position']!.first,
          unittest.equals(arg_position),
        );
        unittest.expect(
          queryMap['timestamp']!.first,
          unittest.equals(arg_timestamp),
        );
        unittest.expect(
          queryMap['action']!.first,
          unittest.equals(arg_action),
        );
        unittest.expect(
          queryMap['contentVersion']!.first,
          unittest.equals(arg_contentVersion),
        );
        unittest.expect(
          queryMap['deviceCookie']!.first,
          unittest.equals(arg_deviceCookie),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
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
      final response = await res.setPosition(
          arg_volumeId, arg_position, arg_timestamp,
          action: arg_action,
          contentVersion: arg_contentVersion,
          deviceCookie: arg_deviceCookie,
          source: arg_source,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-NotificationResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).notification;
      final arg_notificationId = 'foo';
      final arg_locale = 'foo';
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('books/v1/notification/get'),
        );
        pathOffset += 25;

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
          queryMap['notification_id']!.first,
          unittest.equals(arg_notificationId),
        );
        unittest.expect(
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildNotification());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_notificationId,
          locale: arg_locale, source: arg_source, $fields: arg_$fields);
      checkNotification(response as api.Notification);
    });
  });

  unittest.group('resource-OnboardingResource', () {
    unittest.test('method--listCategories', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).onboarding;
      final arg_locale = 'foo';
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
          path.substring(pathOffset, pathOffset + 34),
          unittest.equals('books/v1/onboarding/listCategories'),
        );
        pathOffset += 34;

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
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCategory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.listCategories(locale: arg_locale, $fields: arg_$fields);
      checkCategory(response as api.Category);
    });

    unittest.test('method--listCategoryVolumes', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).onboarding;
      final arg_categoryId = buildUnnamed7883();
      final arg_locale = 'foo';
      final arg_maxAllowedMaturityRating = 'foo';
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
          path.substring(pathOffset, pathOffset + 39),
          unittest.equals('books/v1/onboarding/listCategoryVolumes'),
        );
        pathOffset += 39;

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
          queryMap['categoryId']!,
          unittest.equals(arg_categoryId),
        );
        unittest.expect(
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap['maxAllowedMaturityRating']!.first,
          unittest.equals(arg_maxAllowedMaturityRating),
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
        final resp = convert.json.encode(buildVolume2());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listCategoryVolumes(
          categoryId: arg_categoryId,
          locale: arg_locale,
          maxAllowedMaturityRating: arg_maxAllowedMaturityRating,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkVolume2(response as api.Volume2);
    });
  });

  unittest.group('resource-PersonalizedstreamResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).personalizedstream;
      final arg_locale = 'foo';
      final arg_maxAllowedMaturityRating = 'foo';
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('books/v1/personalizedstream/get'),
        );
        pathOffset += 31;

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
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap['maxAllowedMaturityRating']!.first,
          unittest.equals(arg_maxAllowedMaturityRating),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDiscoveryclusters());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          locale: arg_locale,
          maxAllowedMaturityRating: arg_maxAllowedMaturityRating,
          source: arg_source,
          $fields: arg_$fields);
      checkDiscoveryclusters(response as api.Discoveryclusters);
    });
  });

  unittest.group('resource-PromoofferResource', () {
    unittest.test('method--accept', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).promooffer;
      final arg_androidId = 'foo';
      final arg_device = 'foo';
      final arg_manufacturer = 'foo';
      final arg_model = 'foo';
      final arg_offerId = 'foo';
      final arg_product = 'foo';
      final arg_serial = 'foo';
      final arg_volumeId = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('books/v1/promooffer/accept'),
        );
        pathOffset += 26;

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
          queryMap['androidId']!.first,
          unittest.equals(arg_androidId),
        );
        unittest.expect(
          queryMap['device']!.first,
          unittest.equals(arg_device),
        );
        unittest.expect(
          queryMap['manufacturer']!.first,
          unittest.equals(arg_manufacturer),
        );
        unittest.expect(
          queryMap['model']!.first,
          unittest.equals(arg_model),
        );
        unittest.expect(
          queryMap['offerId']!.first,
          unittest.equals(arg_offerId),
        );
        unittest.expect(
          queryMap['product']!.first,
          unittest.equals(arg_product),
        );
        unittest.expect(
          queryMap['serial']!.first,
          unittest.equals(arg_serial),
        );
        unittest.expect(
          queryMap['volumeId']!.first,
          unittest.equals(arg_volumeId),
        );
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
      final response = await res.accept(
          androidId: arg_androidId,
          device: arg_device,
          manufacturer: arg_manufacturer,
          model: arg_model,
          offerId: arg_offerId,
          product: arg_product,
          serial: arg_serial,
          volumeId: arg_volumeId,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--dismiss', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).promooffer;
      final arg_androidId = 'foo';
      final arg_device = 'foo';
      final arg_manufacturer = 'foo';
      final arg_model = 'foo';
      final arg_offerId = 'foo';
      final arg_product = 'foo';
      final arg_serial = 'foo';
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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('books/v1/promooffer/dismiss'),
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
          queryMap['androidId']!.first,
          unittest.equals(arg_androidId),
        );
        unittest.expect(
          queryMap['device']!.first,
          unittest.equals(arg_device),
        );
        unittest.expect(
          queryMap['manufacturer']!.first,
          unittest.equals(arg_manufacturer),
        );
        unittest.expect(
          queryMap['model']!.first,
          unittest.equals(arg_model),
        );
        unittest.expect(
          queryMap['offerId']!.first,
          unittest.equals(arg_offerId),
        );
        unittest.expect(
          queryMap['product']!.first,
          unittest.equals(arg_product),
        );
        unittest.expect(
          queryMap['serial']!.first,
          unittest.equals(arg_serial),
        );
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
      final response = await res.dismiss(
          androidId: arg_androidId,
          device: arg_device,
          manufacturer: arg_manufacturer,
          model: arg_model,
          offerId: arg_offerId,
          product: arg_product,
          serial: arg_serial,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).promooffer;
      final arg_androidId = 'foo';
      final arg_device = 'foo';
      final arg_manufacturer = 'foo';
      final arg_model = 'foo';
      final arg_product = 'foo';
      final arg_serial = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('books/v1/promooffer/get'),
        );
        pathOffset += 23;

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
          queryMap['androidId']!.first,
          unittest.equals(arg_androidId),
        );
        unittest.expect(
          queryMap['device']!.first,
          unittest.equals(arg_device),
        );
        unittest.expect(
          queryMap['manufacturer']!.first,
          unittest.equals(arg_manufacturer),
        );
        unittest.expect(
          queryMap['model']!.first,
          unittest.equals(arg_model),
        );
        unittest.expect(
          queryMap['product']!.first,
          unittest.equals(arg_product),
        );
        unittest.expect(
          queryMap['serial']!.first,
          unittest.equals(arg_serial),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOffers());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          androidId: arg_androidId,
          device: arg_device,
          manufacturer: arg_manufacturer,
          model: arg_model,
          product: arg_product,
          serial: arg_serial,
          $fields: arg_$fields);
      checkOffers(response as api.Offers);
    });
  });

  unittest.group('resource-SeriesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).series;
      final arg_seriesId = buildUnnamed7884();
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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('books/v1/series/get'),
        );
        pathOffset += 19;

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
          queryMap['series_id']!,
          unittest.equals(arg_seriesId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSeries());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_seriesId, $fields: arg_$fields);
      checkSeries(response as api.Series);
    });
  });

  unittest.group('resource-SeriesMembershipResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).series.membership;
      final arg_seriesId = 'foo';
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
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals('books/v1/series/membership/get'),
        );
        pathOffset += 30;

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
          queryMap['series_id']!.first,
          unittest.equals(arg_seriesId),
        );
        unittest.expect(
          core.int.parse(queryMap['page_size']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['page_token']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSeriesmembership());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_seriesId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSeriesmembership(response as api.Seriesmembership);
    });
  });

  unittest.group('resource-VolumesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).volumes;
      final arg_volumeId = 'foo';
      final arg_country = 'foo';
      final arg_includeNonComicsSeries = true;
      final arg_partner = 'foo';
      final arg_projection = 'foo';
      final arg_source = 'foo';
      final arg_userLibraryConsistentRead = true;
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('books/v1/volumes/'),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_volumeId'),
        );

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
          queryMap['country']!.first,
          unittest.equals(arg_country),
        );
        unittest.expect(
          queryMap['includeNonComicsSeries']!.first,
          unittest.equals('$arg_includeNonComicsSeries'),
        );
        unittest.expect(
          queryMap['partner']!.first,
          unittest.equals(arg_partner),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['user_library_consistent_read']!.first,
          unittest.equals('$arg_userLibraryConsistentRead'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVolume());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_volumeId,
          country: arg_country,
          includeNonComicsSeries: arg_includeNonComicsSeries,
          partner: arg_partner,
          projection: arg_projection,
          source: arg_source,
          userLibraryConsistentRead: arg_userLibraryConsistentRead,
          $fields: arg_$fields);
      checkVolume(response as api.Volume);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).volumes;
      final arg_q = 'foo';
      final arg_download = 'foo';
      final arg_filter = 'foo';
      final arg_langRestrict = 'foo';
      final arg_libraryRestrict = 'foo';
      final arg_maxAllowedMaturityRating = 'foo';
      final arg_maxResults = 42;
      final arg_orderBy = 'foo';
      final arg_partner = 'foo';
      final arg_printType = 'foo';
      final arg_projection = 'foo';
      final arg_showPreorders = true;
      final arg_source = 'foo';
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('books/v1/volumes'),
        );
        pathOffset += 16;

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
          queryMap['q']!.first,
          unittest.equals(arg_q),
        );
        unittest.expect(
          queryMap['download']!.first,
          unittest.equals(arg_download),
        );
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['langRestrict']!.first,
          unittest.equals(arg_langRestrict),
        );
        unittest.expect(
          queryMap['libraryRestrict']!.first,
          unittest.equals(arg_libraryRestrict),
        );
        unittest.expect(
          queryMap['maxAllowedMaturityRating']!.first,
          unittest.equals(arg_maxAllowedMaturityRating),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          queryMap['partner']!.first,
          unittest.equals(arg_partner),
        );
        unittest.expect(
          queryMap['printType']!.first,
          unittest.equals(arg_printType),
        );
        unittest.expect(
          queryMap['projection']!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap['showPreorders']!.first,
          unittest.equals('$arg_showPreorders'),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          core.int.parse(queryMap['startIndex']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVolumes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_q,
          download: arg_download,
          filter: arg_filter,
          langRestrict: arg_langRestrict,
          libraryRestrict: arg_libraryRestrict,
          maxAllowedMaturityRating: arg_maxAllowedMaturityRating,
          maxResults: arg_maxResults,
          orderBy: arg_orderBy,
          partner: arg_partner,
          printType: arg_printType,
          projection: arg_projection,
          showPreorders: arg_showPreorders,
          source: arg_source,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkVolumes(response as api.Volumes);
    });
  });

  unittest.group('resource-VolumesAssociatedResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).volumes.associated;
      final arg_volumeId = 'foo';
      final arg_association = 'foo';
      final arg_locale = 'foo';
      final arg_maxAllowedMaturityRating = 'foo';
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('books/v1/volumes/'),
        );
        pathOffset += 17;
        index = path.indexOf('/associated', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_volumeId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/associated'),
        );
        pathOffset += 11;

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
          queryMap['association']!.first,
          unittest.equals(arg_association),
        );
        unittest.expect(
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap['maxAllowedMaturityRating']!.first,
          unittest.equals(arg_maxAllowedMaturityRating),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVolumes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_volumeId,
          association: arg_association,
          locale: arg_locale,
          maxAllowedMaturityRating: arg_maxAllowedMaturityRating,
          source: arg_source,
          $fields: arg_$fields);
      checkVolumes(response as api.Volumes);
    });
  });

  unittest.group('resource-VolumesMybooksResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).volumes.mybooks;
      final arg_acquireMethod = buildUnnamed7885();
      final arg_country = 'foo';
      final arg_locale = 'foo';
      final arg_maxResults = 42;
      final arg_processingState = buildUnnamed7886();
      final arg_source = 'foo';
      final arg_startIndex = 42;
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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('books/v1/volumes/mybooks'),
        );
        pathOffset += 24;

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
          queryMap['acquireMethod']!,
          unittest.equals(arg_acquireMethod),
        );
        unittest.expect(
          queryMap['country']!.first,
          unittest.equals(arg_country),
        );
        unittest.expect(
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['processingState']!,
          unittest.equals(arg_processingState),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          core.int.parse(queryMap['startIndex']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVolumes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          acquireMethod: arg_acquireMethod,
          country: arg_country,
          locale: arg_locale,
          maxResults: arg_maxResults,
          processingState: arg_processingState,
          source: arg_source,
          startIndex: arg_startIndex,
          $fields: arg_$fields);
      checkVolumes(response as api.Volumes);
    });
  });

  unittest.group('resource-VolumesRecommendedResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).volumes.recommended;
      final arg_locale = 'foo';
      final arg_maxAllowedMaturityRating = 'foo';
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('books/v1/volumes/recommended'),
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
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap['maxAllowedMaturityRating']!.first,
          unittest.equals(arg_maxAllowedMaturityRating),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVolumes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          locale: arg_locale,
          maxAllowedMaturityRating: arg_maxAllowedMaturityRating,
          source: arg_source,
          $fields: arg_$fields);
      checkVolumes(response as api.Volumes);
    });

    unittest.test('method--rate', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).volumes.recommended;
      final arg_rating = 'foo';
      final arg_volumeId = 'foo';
      final arg_locale = 'foo';
      final arg_source = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('books/v1/volumes/recommended/rate'),
        );
        pathOffset += 33;

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
          queryMap['rating']!.first,
          unittest.equals(arg_rating),
        );
        unittest.expect(
          queryMap['volumeId']!.first,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildBooksVolumesRecommendedRateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.rate(arg_rating, arg_volumeId,
          locale: arg_locale, source: arg_source, $fields: arg_$fields);
      checkBooksVolumesRecommendedRateResponse(
          response as api.BooksVolumesRecommendedRateResponse);
    });
  });

  unittest.group('resource-VolumesUseruploadedResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.BooksApi(mock).volumes.useruploaded;
      final arg_locale = 'foo';
      final arg_maxResults = 42;
      final arg_processingState = buildUnnamed7887();
      final arg_source = 'foo';
      final arg_startIndex = 42;
      final arg_volumeId = buildUnnamed7888();
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
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('books/v1/volumes/useruploaded'),
        );
        pathOffset += 29;

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
          queryMap['locale']!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap['processingState']!,
          unittest.equals(arg_processingState),
        );
        unittest.expect(
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          core.int.parse(queryMap['startIndex']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['volumeId']!,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVolumes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          locale: arg_locale,
          maxResults: arg_maxResults,
          processingState: arg_processingState,
          source: arg_source,
          startIndex: arg_startIndex,
          volumeId: arg_volumeId,
          $fields: arg_$fields);
      checkVolumes(response as api.Volumes);
    });
  });
}
