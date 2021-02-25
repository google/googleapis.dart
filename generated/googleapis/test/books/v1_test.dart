// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/books/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterAnnotationClientVersionRanges = 0;
api.AnnotationClientVersionRanges buildAnnotationClientVersionRanges() {
  var o = api.AnnotationClientVersionRanges();
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
    checkBooksAnnotationsRange(o.cfiRange! as api.BooksAnnotationsRange);
    unittest.expect(
      o.contentVersion!,
      unittest.equals('foo'),
    );
    checkBooksAnnotationsRange(o.gbImageRange! as api.BooksAnnotationsRange);
    checkBooksAnnotationsRange(o.gbTextRange! as api.BooksAnnotationsRange);
    checkBooksAnnotationsRange(o.imageCfiRange! as api.BooksAnnotationsRange);
  }
  buildCounterAnnotationClientVersionRanges--;
}

core.int buildCounterAnnotationCurrentVersionRanges = 0;
api.AnnotationCurrentVersionRanges buildAnnotationCurrentVersionRanges() {
  var o = api.AnnotationCurrentVersionRanges();
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
    checkBooksAnnotationsRange(o.cfiRange! as api.BooksAnnotationsRange);
    unittest.expect(
      o.contentVersion!,
      unittest.equals('foo'),
    );
    checkBooksAnnotationsRange(o.gbImageRange! as api.BooksAnnotationsRange);
    checkBooksAnnotationsRange(o.gbTextRange! as api.BooksAnnotationsRange);
    checkBooksAnnotationsRange(o.imageCfiRange! as api.BooksAnnotationsRange);
  }
  buildCounterAnnotationCurrentVersionRanges--;
}

core.int buildCounterAnnotationLayerSummary = 0;
api.AnnotationLayerSummary buildAnnotationLayerSummary() {
  var o = api.AnnotationLayerSummary();
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

core.List<core.String> buildUnnamed6816() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6816(core.List<core.String> o) {
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
  var o = api.Annotation();
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
    o.pageIds = buildUnnamed6816();
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
    checkAnnotationClientVersionRanges(
        o.clientVersionRanges! as api.AnnotationClientVersionRanges);
    unittest.expect(
      o.created!,
      unittest.equals('foo'),
    );
    checkAnnotationCurrentVersionRanges(
        o.currentVersionRanges! as api.AnnotationCurrentVersionRanges);
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
    checkAnnotationLayerSummary(o.layerSummary! as api.AnnotationLayerSummary);
    checkUnnamed6816(o.pageIds!);
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

core.List<api.Annotation> buildUnnamed6817() {
  var o = <api.Annotation>[];
  o.add(buildAnnotation());
  o.add(buildAnnotation());
  return o;
}

void checkUnnamed6817(core.List<api.Annotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotation(o[0] as api.Annotation);
  checkAnnotation(o[1] as api.Annotation);
}

core.int buildCounterAnnotations = 0;
api.Annotations buildAnnotations() {
  var o = api.Annotations();
  buildCounterAnnotations++;
  if (buildCounterAnnotations < 3) {
    o.items = buildUnnamed6817();
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
    checkUnnamed6817(o.items!);
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
  var o = api.AnnotationsSummaryLayers();
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

core.List<api.AnnotationsSummaryLayers> buildUnnamed6818() {
  var o = <api.AnnotationsSummaryLayers>[];
  o.add(buildAnnotationsSummaryLayers());
  o.add(buildAnnotationsSummaryLayers());
  return o;
}

void checkUnnamed6818(core.List<api.AnnotationsSummaryLayers> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotationsSummaryLayers(o[0] as api.AnnotationsSummaryLayers);
  checkAnnotationsSummaryLayers(o[1] as api.AnnotationsSummaryLayers);
}

core.int buildCounterAnnotationsSummary = 0;
api.AnnotationsSummary buildAnnotationsSummary() {
  var o = api.AnnotationsSummary();
  buildCounterAnnotationsSummary++;
  if (buildCounterAnnotationsSummary < 3) {
    o.kind = 'foo';
    o.layers = buildUnnamed6818();
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
    checkUnnamed6818(o.layers!);
  }
  buildCounterAnnotationsSummary--;
}

core.List<api.GeoAnnotationdata> buildUnnamed6819() {
  var o = <api.GeoAnnotationdata>[];
  o.add(buildGeoAnnotationdata());
  o.add(buildGeoAnnotationdata());
  return o;
}

void checkUnnamed6819(core.List<api.GeoAnnotationdata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeoAnnotationdata(o[0] as api.GeoAnnotationdata);
  checkGeoAnnotationdata(o[1] as api.GeoAnnotationdata);
}

core.int buildCounterAnnotationsdata = 0;
api.Annotationsdata buildAnnotationsdata() {
  var o = api.Annotationsdata();
  buildCounterAnnotationsdata++;
  if (buildCounterAnnotationsdata < 3) {
    o.items = buildUnnamed6819();
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
    checkUnnamed6819(o.items!);
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
  var o = api.BooksAnnotationsRange();
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
  var o = api.BooksCloudloadingResource();
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
  var o = api.BooksVolumesRecommendedRateResponse();
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
  var o = api.Bookshelf();
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

core.List<api.Bookshelf> buildUnnamed6820() {
  var o = <api.Bookshelf>[];
  o.add(buildBookshelf());
  o.add(buildBookshelf());
  return o;
}

void checkUnnamed6820(core.List<api.Bookshelf> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBookshelf(o[0] as api.Bookshelf);
  checkBookshelf(o[1] as api.Bookshelf);
}

core.int buildCounterBookshelves = 0;
api.Bookshelves buildBookshelves() {
  var o = api.Bookshelves();
  buildCounterBookshelves++;
  if (buildCounterBookshelves < 3) {
    o.items = buildUnnamed6820();
    o.kind = 'foo';
  }
  buildCounterBookshelves--;
  return o;
}

void checkBookshelves(api.Bookshelves o) {
  buildCounterBookshelves++;
  if (buildCounterBookshelves < 3) {
    checkUnnamed6820(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterBookshelves--;
}

core.int buildCounterCategoryItems = 0;
api.CategoryItems buildCategoryItems() {
  var o = api.CategoryItems();
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

core.List<api.CategoryItems> buildUnnamed6821() {
  var o = <api.CategoryItems>[];
  o.add(buildCategoryItems());
  o.add(buildCategoryItems());
  return o;
}

void checkUnnamed6821(core.List<api.CategoryItems> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCategoryItems(o[0] as api.CategoryItems);
  checkCategoryItems(o[1] as api.CategoryItems);
}

core.int buildCounterCategory = 0;
api.Category buildCategory() {
  var o = api.Category();
  buildCounterCategory++;
  if (buildCounterCategory < 3) {
    o.items = buildUnnamed6821();
    o.kind = 'foo';
  }
  buildCounterCategory--;
  return o;
}

void checkCategory(api.Category o) {
  buildCounterCategory++;
  if (buildCounterCategory < 3) {
    checkUnnamed6821(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterCategory--;
}

core.int buildCounterConcurrentAccessRestriction = 0;
api.ConcurrentAccessRestriction buildConcurrentAccessRestriction() {
  var o = api.ConcurrentAccessRestriction();
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
  var o = api.DictionaryAnnotationdata();
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
    checkDictlayerdata(o.data! as api.Dictlayerdata);
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
  var o = api.DictlayerdataCommon();
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
  var o = api.DictlayerdataDictSource();
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
  var o = api.DictlayerdataDictWordsDerivativesSource();
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
  var o = api.DictlayerdataDictWordsDerivatives();
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
    checkDictlayerdataDictWordsDerivativesSource(
        o.source! as api.DictlayerdataDictWordsDerivativesSource);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterDictlayerdataDictWordsDerivatives--;
}

core.List<api.DictlayerdataDictWordsDerivatives> buildUnnamed6822() {
  var o = <api.DictlayerdataDictWordsDerivatives>[];
  o.add(buildDictlayerdataDictWordsDerivatives());
  o.add(buildDictlayerdataDictWordsDerivatives());
  return o;
}

void checkUnnamed6822(core.List<api.DictlayerdataDictWordsDerivatives> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDictlayerdataDictWordsDerivatives(
      o[0] as api.DictlayerdataDictWordsDerivatives);
  checkDictlayerdataDictWordsDerivatives(
      o[1] as api.DictlayerdataDictWordsDerivatives);
}

core.int buildCounterDictlayerdataDictWordsExamplesSource = 0;
api.DictlayerdataDictWordsExamplesSource
    buildDictlayerdataDictWordsExamplesSource() {
  var o = api.DictlayerdataDictWordsExamplesSource();
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
  var o = api.DictlayerdataDictWordsExamples();
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
    checkDictlayerdataDictWordsExamplesSource(
        o.source! as api.DictlayerdataDictWordsExamplesSource);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterDictlayerdataDictWordsExamples--;
}

core.List<api.DictlayerdataDictWordsExamples> buildUnnamed6823() {
  var o = <api.DictlayerdataDictWordsExamples>[];
  o.add(buildDictlayerdataDictWordsExamples());
  o.add(buildDictlayerdataDictWordsExamples());
  return o;
}

void checkUnnamed6823(core.List<api.DictlayerdataDictWordsExamples> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDictlayerdataDictWordsExamples(
      o[0] as api.DictlayerdataDictWordsExamples);
  checkDictlayerdataDictWordsExamples(
      o[1] as api.DictlayerdataDictWordsExamples);
}

core.int buildCounterDictlayerdataDictWordsSensesConjugations = 0;
api.DictlayerdataDictWordsSensesConjugations
    buildDictlayerdataDictWordsSensesConjugations() {
  var o = api.DictlayerdataDictWordsSensesConjugations();
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

core.List<api.DictlayerdataDictWordsSensesConjugations> buildUnnamed6824() {
  var o = <api.DictlayerdataDictWordsSensesConjugations>[];
  o.add(buildDictlayerdataDictWordsSensesConjugations());
  o.add(buildDictlayerdataDictWordsSensesConjugations());
  return o;
}

void checkUnnamed6824(
    core.List<api.DictlayerdataDictWordsSensesConjugations> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDictlayerdataDictWordsSensesConjugations(
      o[0] as api.DictlayerdataDictWordsSensesConjugations);
  checkDictlayerdataDictWordsSensesConjugations(
      o[1] as api.DictlayerdataDictWordsSensesConjugations);
}

core.int buildCounterDictlayerdataDictWordsSensesDefinitionsExamplesSource = 0;
api.DictlayerdataDictWordsSensesDefinitionsExamplesSource
    buildDictlayerdataDictWordsSensesDefinitionsExamplesSource() {
  var o = api.DictlayerdataDictWordsSensesDefinitionsExamplesSource();
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
  var o = api.DictlayerdataDictWordsSensesDefinitionsExamples();
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
    checkDictlayerdataDictWordsSensesDefinitionsExamplesSource(
        o.source! as api.DictlayerdataDictWordsSensesDefinitionsExamplesSource);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterDictlayerdataDictWordsSensesDefinitionsExamples--;
}

core.List<api.DictlayerdataDictWordsSensesDefinitionsExamples>
    buildUnnamed6825() {
  var o = <api.DictlayerdataDictWordsSensesDefinitionsExamples>[];
  o.add(buildDictlayerdataDictWordsSensesDefinitionsExamples());
  o.add(buildDictlayerdataDictWordsSensesDefinitionsExamples());
  return o;
}

void checkUnnamed6825(
    core.List<api.DictlayerdataDictWordsSensesDefinitionsExamples> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDictlayerdataDictWordsSensesDefinitionsExamples(
      o[0] as api.DictlayerdataDictWordsSensesDefinitionsExamples);
  checkDictlayerdataDictWordsSensesDefinitionsExamples(
      o[1] as api.DictlayerdataDictWordsSensesDefinitionsExamples);
}

core.int buildCounterDictlayerdataDictWordsSensesDefinitions = 0;
api.DictlayerdataDictWordsSensesDefinitions
    buildDictlayerdataDictWordsSensesDefinitions() {
  var o = api.DictlayerdataDictWordsSensesDefinitions();
  buildCounterDictlayerdataDictWordsSensesDefinitions++;
  if (buildCounterDictlayerdataDictWordsSensesDefinitions < 3) {
    o.definition = 'foo';
    o.examples = buildUnnamed6825();
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
    checkUnnamed6825(o.examples!);
  }
  buildCounterDictlayerdataDictWordsSensesDefinitions--;
}

core.List<api.DictlayerdataDictWordsSensesDefinitions> buildUnnamed6826() {
  var o = <api.DictlayerdataDictWordsSensesDefinitions>[];
  o.add(buildDictlayerdataDictWordsSensesDefinitions());
  o.add(buildDictlayerdataDictWordsSensesDefinitions());
  return o;
}

void checkUnnamed6826(
    core.List<api.DictlayerdataDictWordsSensesDefinitions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDictlayerdataDictWordsSensesDefinitions(
      o[0] as api.DictlayerdataDictWordsSensesDefinitions);
  checkDictlayerdataDictWordsSensesDefinitions(
      o[1] as api.DictlayerdataDictWordsSensesDefinitions);
}

core.int buildCounterDictlayerdataDictWordsSensesSource = 0;
api.DictlayerdataDictWordsSensesSource
    buildDictlayerdataDictWordsSensesSource() {
  var o = api.DictlayerdataDictWordsSensesSource();
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
  var o = api.DictlayerdataDictWordsSensesSynonymsSource();
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
  var o = api.DictlayerdataDictWordsSensesSynonyms();
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
    checkDictlayerdataDictWordsSensesSynonymsSource(
        o.source! as api.DictlayerdataDictWordsSensesSynonymsSource);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterDictlayerdataDictWordsSensesSynonyms--;
}

core.List<api.DictlayerdataDictWordsSensesSynonyms> buildUnnamed6827() {
  var o = <api.DictlayerdataDictWordsSensesSynonyms>[];
  o.add(buildDictlayerdataDictWordsSensesSynonyms());
  o.add(buildDictlayerdataDictWordsSensesSynonyms());
  return o;
}

void checkUnnamed6827(core.List<api.DictlayerdataDictWordsSensesSynonyms> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDictlayerdataDictWordsSensesSynonyms(
      o[0] as api.DictlayerdataDictWordsSensesSynonyms);
  checkDictlayerdataDictWordsSensesSynonyms(
      o[1] as api.DictlayerdataDictWordsSensesSynonyms);
}

core.int buildCounterDictlayerdataDictWordsSenses = 0;
api.DictlayerdataDictWordsSenses buildDictlayerdataDictWordsSenses() {
  var o = api.DictlayerdataDictWordsSenses();
  buildCounterDictlayerdataDictWordsSenses++;
  if (buildCounterDictlayerdataDictWordsSenses < 3) {
    o.conjugations = buildUnnamed6824();
    o.definitions = buildUnnamed6826();
    o.partOfSpeech = 'foo';
    o.pronunciation = 'foo';
    o.pronunciationUrl = 'foo';
    o.source = buildDictlayerdataDictWordsSensesSource();
    o.syllabification = 'foo';
    o.synonyms = buildUnnamed6827();
  }
  buildCounterDictlayerdataDictWordsSenses--;
  return o;
}

void checkDictlayerdataDictWordsSenses(api.DictlayerdataDictWordsSenses o) {
  buildCounterDictlayerdataDictWordsSenses++;
  if (buildCounterDictlayerdataDictWordsSenses < 3) {
    checkUnnamed6824(o.conjugations!);
    checkUnnamed6826(o.definitions!);
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
    checkDictlayerdataDictWordsSensesSource(
        o.source! as api.DictlayerdataDictWordsSensesSource);
    unittest.expect(
      o.syllabification!,
      unittest.equals('foo'),
    );
    checkUnnamed6827(o.synonyms!);
  }
  buildCounterDictlayerdataDictWordsSenses--;
}

core.List<api.DictlayerdataDictWordsSenses> buildUnnamed6828() {
  var o = <api.DictlayerdataDictWordsSenses>[];
  o.add(buildDictlayerdataDictWordsSenses());
  o.add(buildDictlayerdataDictWordsSenses());
  return o;
}

void checkUnnamed6828(core.List<api.DictlayerdataDictWordsSenses> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDictlayerdataDictWordsSenses(o[0] as api.DictlayerdataDictWordsSenses);
  checkDictlayerdataDictWordsSenses(o[1] as api.DictlayerdataDictWordsSenses);
}

core.int buildCounterDictlayerdataDictWordsSource = 0;
api.DictlayerdataDictWordsSource buildDictlayerdataDictWordsSource() {
  var o = api.DictlayerdataDictWordsSource();
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
  var o = api.DictlayerdataDictWords();
  buildCounterDictlayerdataDictWords++;
  if (buildCounterDictlayerdataDictWords < 3) {
    o.derivatives = buildUnnamed6822();
    o.examples = buildUnnamed6823();
    o.senses = buildUnnamed6828();
    o.source = buildDictlayerdataDictWordsSource();
  }
  buildCounterDictlayerdataDictWords--;
  return o;
}

void checkDictlayerdataDictWords(api.DictlayerdataDictWords o) {
  buildCounterDictlayerdataDictWords++;
  if (buildCounterDictlayerdataDictWords < 3) {
    checkUnnamed6822(o.derivatives!);
    checkUnnamed6823(o.examples!);
    checkUnnamed6828(o.senses!);
    checkDictlayerdataDictWordsSource(
        o.source! as api.DictlayerdataDictWordsSource);
  }
  buildCounterDictlayerdataDictWords--;
}

core.List<api.DictlayerdataDictWords> buildUnnamed6829() {
  var o = <api.DictlayerdataDictWords>[];
  o.add(buildDictlayerdataDictWords());
  o.add(buildDictlayerdataDictWords());
  return o;
}

void checkUnnamed6829(core.List<api.DictlayerdataDictWords> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDictlayerdataDictWords(o[0] as api.DictlayerdataDictWords);
  checkDictlayerdataDictWords(o[1] as api.DictlayerdataDictWords);
}

core.int buildCounterDictlayerdataDict = 0;
api.DictlayerdataDict buildDictlayerdataDict() {
  var o = api.DictlayerdataDict();
  buildCounterDictlayerdataDict++;
  if (buildCounterDictlayerdataDict < 3) {
    o.source = buildDictlayerdataDictSource();
    o.words = buildUnnamed6829();
  }
  buildCounterDictlayerdataDict--;
  return o;
}

void checkDictlayerdataDict(api.DictlayerdataDict o) {
  buildCounterDictlayerdataDict++;
  if (buildCounterDictlayerdataDict < 3) {
    checkDictlayerdataDictSource(o.source! as api.DictlayerdataDictSource);
    checkUnnamed6829(o.words!);
  }
  buildCounterDictlayerdataDict--;
}

core.int buildCounterDictlayerdata = 0;
api.Dictlayerdata buildDictlayerdata() {
  var o = api.Dictlayerdata();
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
    checkDictlayerdataCommon(o.common! as api.DictlayerdataCommon);
    checkDictlayerdataDict(o.dict! as api.DictlayerdataDict);
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
  var o = api.DiscoveryclustersClustersBannerWithContentContainer();
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

core.List<api.Volume> buildUnnamed6830() {
  var o = <api.Volume>[];
  o.add(buildVolume());
  o.add(buildVolume());
  return o;
}

void checkUnnamed6830(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0] as api.Volume);
  checkVolume(o[1] as api.Volume);
}

core.int buildCounterDiscoveryclustersClusters = 0;
api.DiscoveryclustersClusters buildDiscoveryclustersClusters() {
  var o = api.DiscoveryclustersClusters();
  buildCounterDiscoveryclustersClusters++;
  if (buildCounterDiscoveryclustersClusters < 3) {
    o.bannerWithContentContainer =
        buildDiscoveryclustersClustersBannerWithContentContainer();
    o.subTitle = 'foo';
    o.title = 'foo';
    o.totalVolumes = 42;
    o.uid = 'foo';
    o.volumes = buildUnnamed6830();
  }
  buildCounterDiscoveryclustersClusters--;
  return o;
}

void checkDiscoveryclustersClusters(api.DiscoveryclustersClusters o) {
  buildCounterDiscoveryclustersClusters++;
  if (buildCounterDiscoveryclustersClusters < 3) {
    checkDiscoveryclustersClustersBannerWithContentContainer(
        o.bannerWithContentContainer!
            as api.DiscoveryclustersClustersBannerWithContentContainer);
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
    checkUnnamed6830(o.volumes!);
  }
  buildCounterDiscoveryclustersClusters--;
}

core.List<api.DiscoveryclustersClusters> buildUnnamed6831() {
  var o = <api.DiscoveryclustersClusters>[];
  o.add(buildDiscoveryclustersClusters());
  o.add(buildDiscoveryclustersClusters());
  return o;
}

void checkUnnamed6831(core.List<api.DiscoveryclustersClusters> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDiscoveryclustersClusters(o[0] as api.DiscoveryclustersClusters);
  checkDiscoveryclustersClusters(o[1] as api.DiscoveryclustersClusters);
}

core.int buildCounterDiscoveryclusters = 0;
api.Discoveryclusters buildDiscoveryclusters() {
  var o = api.Discoveryclusters();
  buildCounterDiscoveryclusters++;
  if (buildCounterDiscoveryclusters < 3) {
    o.clusters = buildUnnamed6831();
    o.kind = 'foo';
    o.totalClusters = 42;
  }
  buildCounterDiscoveryclusters--;
  return o;
}

void checkDiscoveryclusters(api.Discoveryclusters o) {
  buildCounterDiscoveryclusters++;
  if (buildCounterDiscoveryclusters < 3) {
    checkUnnamed6831(o.clusters!);
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
  var o = api.DownloadAccessRestriction();
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

core.List<api.DownloadAccessRestriction> buildUnnamed6832() {
  var o = <api.DownloadAccessRestriction>[];
  o.add(buildDownloadAccessRestriction());
  o.add(buildDownloadAccessRestriction());
  return o;
}

void checkUnnamed6832(core.List<api.DownloadAccessRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDownloadAccessRestriction(o[0] as api.DownloadAccessRestriction);
  checkDownloadAccessRestriction(o[1] as api.DownloadAccessRestriction);
}

core.int buildCounterDownloadAccesses = 0;
api.DownloadAccesses buildDownloadAccesses() {
  var o = api.DownloadAccesses();
  buildCounterDownloadAccesses++;
  if (buildCounterDownloadAccesses < 3) {
    o.downloadAccessList = buildUnnamed6832();
    o.kind = 'foo';
  }
  buildCounterDownloadAccesses--;
  return o;
}

void checkDownloadAccesses(api.DownloadAccesses o) {
  buildCounterDownloadAccesses++;
  if (buildCounterDownloadAccesses < 3) {
    checkUnnamed6832(o.downloadAccessList!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterDownloadAccesses--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
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
  var o = api.FamilyInfoMembership();
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
  var o = api.FamilyInfo();
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
    checkFamilyInfoMembership(o.membership! as api.FamilyInfoMembership);
  }
  buildCounterFamilyInfo--;
}

core.int buildCounterGeoAnnotationdata = 0;
api.GeoAnnotationdata buildGeoAnnotationdata() {
  var o = api.GeoAnnotationdata();
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
    checkGeolayerdata(o.data! as api.Geolayerdata);
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
  var o = api.GeolayerdataCommon();
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

core.List<core.String> buildUnnamed6833() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6833(core.List<core.String> o) {
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
  var o = api.GeolayerdataGeoViewportHi();
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
  var o = api.GeolayerdataGeoViewportLo();
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
  var o = api.GeolayerdataGeoViewport();
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
    checkGeolayerdataGeoViewportHi(o.hi! as api.GeolayerdataGeoViewportHi);
    checkGeolayerdataGeoViewportLo(o.lo! as api.GeolayerdataGeoViewportLo);
  }
  buildCounterGeolayerdataGeoViewport--;
}

core.int buildCounterGeolayerdataGeo = 0;
api.GeolayerdataGeo buildGeolayerdataGeo() {
  var o = api.GeolayerdataGeo();
  buildCounterGeolayerdataGeo++;
  if (buildCounterGeolayerdataGeo < 3) {
    o.boundary = buildUnnamed6833();
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
    checkUnnamed6833(o.boundary!);
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
    checkGeolayerdataGeoViewport(o.viewport! as api.GeolayerdataGeoViewport);
    unittest.expect(
      o.zoom!,
      unittest.equals(42),
    );
  }
  buildCounterGeolayerdataGeo--;
}

core.int buildCounterGeolayerdata = 0;
api.Geolayerdata buildGeolayerdata() {
  var o = api.Geolayerdata();
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
    checkGeolayerdataCommon(o.common! as api.GeolayerdataCommon);
    checkGeolayerdataGeo(o.geo! as api.GeolayerdataGeo);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterGeolayerdata--;
}

core.List<api.Layersummary> buildUnnamed6834() {
  var o = <api.Layersummary>[];
  o.add(buildLayersummary());
  o.add(buildLayersummary());
  return o;
}

void checkUnnamed6834(core.List<api.Layersummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLayersummary(o[0] as api.Layersummary);
  checkLayersummary(o[1] as api.Layersummary);
}

core.int buildCounterLayersummaries = 0;
api.Layersummaries buildLayersummaries() {
  var o = api.Layersummaries();
  buildCounterLayersummaries++;
  if (buildCounterLayersummaries < 3) {
    o.items = buildUnnamed6834();
    o.kind = 'foo';
    o.totalItems = 42;
  }
  buildCounterLayersummaries--;
  return o;
}

void checkLayersummaries(api.Layersummaries o) {
  buildCounterLayersummaries++;
  if (buildCounterLayersummaries < 3) {
    checkUnnamed6834(o.items!);
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

core.List<core.String> buildUnnamed6835() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6835(core.List<core.String> o) {
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
  var o = api.Layersummary();
  buildCounterLayersummary++;
  if (buildCounterLayersummary < 3) {
    o.annotationCount = 42;
    o.annotationTypes = buildUnnamed6835();
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
    checkUnnamed6835(o.annotationTypes!);
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
  var o = api.MetadataItems();
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

core.List<api.MetadataItems> buildUnnamed6836() {
  var o = <api.MetadataItems>[];
  o.add(buildMetadataItems());
  o.add(buildMetadataItems());
  return o;
}

void checkUnnamed6836(core.List<api.MetadataItems> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetadataItems(o[0] as api.MetadataItems);
  checkMetadataItems(o[1] as api.MetadataItems);
}

core.int buildCounterMetadata = 0;
api.Metadata buildMetadata() {
  var o = api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.items = buildUnnamed6836();
    o.kind = 'foo';
  }
  buildCounterMetadata--;
  return o;
}

void checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    checkUnnamed6836(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetadata--;
}

core.List<core.String> buildUnnamed6837() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6837(core.List<core.String> o) {
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
  var o = api.Notification();
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    o.body = 'foo';
    o.crmExperimentIds = buildUnnamed6837();
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
    checkUnnamed6837(o.crmExperimentIds!);
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
  var o = api.OffersItemsItems();
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

core.List<api.OffersItemsItems> buildUnnamed6838() {
  var o = <api.OffersItemsItems>[];
  o.add(buildOffersItemsItems());
  o.add(buildOffersItemsItems());
  return o;
}

void checkUnnamed6838(core.List<api.OffersItemsItems> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOffersItemsItems(o[0] as api.OffersItemsItems);
  checkOffersItemsItems(o[1] as api.OffersItemsItems);
}

core.int buildCounterOffersItems = 0;
api.OffersItems buildOffersItems() {
  var o = api.OffersItems();
  buildCounterOffersItems++;
  if (buildCounterOffersItems < 3) {
    o.artUrl = 'foo';
    o.gservicesKey = 'foo';
    o.id = 'foo';
    o.items = buildUnnamed6838();
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
    checkUnnamed6838(o.items!);
  }
  buildCounterOffersItems--;
}

core.List<api.OffersItems> buildUnnamed6839() {
  var o = <api.OffersItems>[];
  o.add(buildOffersItems());
  o.add(buildOffersItems());
  return o;
}

void checkUnnamed6839(core.List<api.OffersItems> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOffersItems(o[0] as api.OffersItems);
  checkOffersItems(o[1] as api.OffersItems);
}

core.int buildCounterOffers = 0;
api.Offers buildOffers() {
  var o = api.Offers();
  buildCounterOffers++;
  if (buildCounterOffers < 3) {
    o.items = buildUnnamed6839();
    o.kind = 'foo';
  }
  buildCounterOffers--;
  return o;
}

void checkOffers(api.Offers o) {
  buildCounterOffers++;
  if (buildCounterOffers < 3) {
    checkUnnamed6839(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterOffers--;
}

core.int buildCounterReadingPosition = 0;
api.ReadingPosition buildReadingPosition() {
  var o = api.ReadingPosition();
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
  var o = api.RequestAccessData();
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
    checkConcurrentAccessRestriction(
        o.concurrentAccess! as api.ConcurrentAccessRestriction);
    checkDownloadAccessRestriction(
        o.downloadAccess! as api.DownloadAccessRestriction);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterRequestAccessData--;
}

core.int buildCounterReviewAuthor = 0;
api.ReviewAuthor buildReviewAuthor() {
  var o = api.ReviewAuthor();
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
  var o = api.ReviewSource();
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
  var o = api.Review();
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
    checkReviewAuthor(o.author! as api.ReviewAuthor);
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
    checkReviewSource(o.source! as api.ReviewSource);
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
  var o = api.SeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo();
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
  var o = api.SeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo();
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
  var o = api.SeriesSeriesSeriesSubscriptionReleaseInfo();
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
        o.currentReleaseInfo!
            as api.SeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo);
    checkSeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo(
        o.nextReleaseInfo!
            as api.SeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo);
    unittest.expect(
      o.seriesSubscriptionType!,
      unittest.equals('foo'),
    );
  }
  buildCounterSeriesSeriesSeriesSubscriptionReleaseInfo--;
}

core.int buildCounterSeriesSeries = 0;
api.SeriesSeries buildSeriesSeries() {
  var o = api.SeriesSeries();
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
        o.seriesSubscriptionReleaseInfo!
            as api.SeriesSeriesSeriesSubscriptionReleaseInfo);
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

core.List<api.SeriesSeries> buildUnnamed6840() {
  var o = <api.SeriesSeries>[];
  o.add(buildSeriesSeries());
  o.add(buildSeriesSeries());
  return o;
}

void checkUnnamed6840(core.List<api.SeriesSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSeriesSeries(o[0] as api.SeriesSeries);
  checkSeriesSeries(o[1] as api.SeriesSeries);
}

core.int buildCounterSeries = 0;
api.Series buildSeries() {
  var o = api.Series();
  buildCounterSeries++;
  if (buildCounterSeries < 3) {
    o.kind = 'foo';
    o.series = buildUnnamed6840();
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
    checkUnnamed6840(o.series!);
  }
  buildCounterSeries--;
}

core.List<api.Volume> buildUnnamed6841() {
  var o = <api.Volume>[];
  o.add(buildVolume());
  o.add(buildVolume());
  return o;
}

void checkUnnamed6841(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0] as api.Volume);
  checkVolume(o[1] as api.Volume);
}

core.int buildCounterSeriesmembership = 0;
api.Seriesmembership buildSeriesmembership() {
  var o = api.Seriesmembership();
  buildCounterSeriesmembership++;
  if (buildCounterSeriesmembership < 3) {
    o.kind = 'foo';
    o.member = buildUnnamed6841();
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
    checkUnnamed6841(o.member!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSeriesmembership--;
}

core.int buildCounterUsersettingsNotesExport = 0;
api.UsersettingsNotesExport buildUsersettingsNotesExport() {
  var o = api.UsersettingsNotesExport();
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
  var o = api.UsersettingsNotificationMatchMyInterests();
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
  var o = api.UsersettingsNotificationMoreFromAuthors();
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
  var o = api.UsersettingsNotificationMoreFromSeries();
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
  var o = api.UsersettingsNotificationPriceDrop();
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
  var o = api.UsersettingsNotificationRewardExpirations();
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
  var o = api.UsersettingsNotification();
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
    checkUsersettingsNotificationMatchMyInterests(
        o.matchMyInterests! as api.UsersettingsNotificationMatchMyInterests);
    checkUsersettingsNotificationMoreFromAuthors(
        o.moreFromAuthors! as api.UsersettingsNotificationMoreFromAuthors);
    checkUsersettingsNotificationMoreFromSeries(
        o.moreFromSeries! as api.UsersettingsNotificationMoreFromSeries);
    checkUsersettingsNotificationPriceDrop(
        o.priceDrop! as api.UsersettingsNotificationPriceDrop);
    checkUsersettingsNotificationRewardExpirations(
        o.rewardExpirations! as api.UsersettingsNotificationRewardExpirations);
  }
  buildCounterUsersettingsNotification--;
}

core.int buildCounterUsersettings = 0;
api.Usersettings buildUsersettings() {
  var o = api.Usersettings();
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
    checkUsersettingsNotesExport(o.notesExport! as api.UsersettingsNotesExport);
    checkUsersettingsNotification(
        o.notification! as api.UsersettingsNotification);
  }
  buildCounterUsersettings--;
}

core.int buildCounterVolumeAccessInfoEpub = 0;
api.VolumeAccessInfoEpub buildVolumeAccessInfoEpub() {
  var o = api.VolumeAccessInfoEpub();
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
  var o = api.VolumeAccessInfoPdf();
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
  var o = api.VolumeAccessInfo();
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
    checkDownloadAccessRestriction(
        o.downloadAccess! as api.DownloadAccessRestriction);
    unittest.expect(
      o.driveImportedContentLink!,
      unittest.equals('foo'),
    );
    unittest.expect(o.embeddable!, unittest.isTrue);
    checkVolumeAccessInfoEpub(o.epub! as api.VolumeAccessInfoEpub);
    unittest.expect(o.explicitOfflineLicenseManagement!, unittest.isTrue);
    checkVolumeAccessInfoPdf(o.pdf! as api.VolumeAccessInfoPdf);
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
  var o = api.VolumeLayerInfoLayers();
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

core.List<api.VolumeLayerInfoLayers> buildUnnamed6842() {
  var o = <api.VolumeLayerInfoLayers>[];
  o.add(buildVolumeLayerInfoLayers());
  o.add(buildVolumeLayerInfoLayers());
  return o;
}

void checkUnnamed6842(core.List<api.VolumeLayerInfoLayers> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeLayerInfoLayers(o[0] as api.VolumeLayerInfoLayers);
  checkVolumeLayerInfoLayers(o[1] as api.VolumeLayerInfoLayers);
}

core.int buildCounterVolumeLayerInfo = 0;
api.VolumeLayerInfo buildVolumeLayerInfo() {
  var o = api.VolumeLayerInfo();
  buildCounterVolumeLayerInfo++;
  if (buildCounterVolumeLayerInfo < 3) {
    o.layers = buildUnnamed6842();
  }
  buildCounterVolumeLayerInfo--;
  return o;
}

void checkVolumeLayerInfo(api.VolumeLayerInfo o) {
  buildCounterVolumeLayerInfo++;
  if (buildCounterVolumeLayerInfo < 3) {
    checkUnnamed6842(o.layers!);
  }
  buildCounterVolumeLayerInfo--;
}

core.int buildCounterVolumeRecommendedInfo = 0;
api.VolumeRecommendedInfo buildVolumeRecommendedInfo() {
  var o = api.VolumeRecommendedInfo();
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
  var o = api.VolumeSaleInfoListPrice();
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
  var o = api.VolumeSaleInfoOffersListPrice();
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
  var o = api.VolumeSaleInfoOffersRentalDuration();
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
  var o = api.VolumeSaleInfoOffersRetailPrice();
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
  var o = api.VolumeSaleInfoOffers();
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
    checkVolumeSaleInfoOffersListPrice(
        o.listPrice! as api.VolumeSaleInfoOffersListPrice);
    checkVolumeSaleInfoOffersRentalDuration(
        o.rentalDuration! as api.VolumeSaleInfoOffersRentalDuration);
    checkVolumeSaleInfoOffersRetailPrice(
        o.retailPrice! as api.VolumeSaleInfoOffersRetailPrice);
  }
  buildCounterVolumeSaleInfoOffers--;
}

core.List<api.VolumeSaleInfoOffers> buildUnnamed6843() {
  var o = <api.VolumeSaleInfoOffers>[];
  o.add(buildVolumeSaleInfoOffers());
  o.add(buildVolumeSaleInfoOffers());
  return o;
}

void checkUnnamed6843(core.List<api.VolumeSaleInfoOffers> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeSaleInfoOffers(o[0] as api.VolumeSaleInfoOffers);
  checkVolumeSaleInfoOffers(o[1] as api.VolumeSaleInfoOffers);
}

core.int buildCounterVolumeSaleInfoRetailPrice = 0;
api.VolumeSaleInfoRetailPrice buildVolumeSaleInfoRetailPrice() {
  var o = api.VolumeSaleInfoRetailPrice();
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
  var o = api.VolumeSaleInfo();
  buildCounterVolumeSaleInfo++;
  if (buildCounterVolumeSaleInfo < 3) {
    o.buyLink = 'foo';
    o.country = 'foo';
    o.isEbook = true;
    o.listPrice = buildVolumeSaleInfoListPrice();
    o.offers = buildUnnamed6843();
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
    checkVolumeSaleInfoListPrice(o.listPrice! as api.VolumeSaleInfoListPrice);
    checkUnnamed6843(o.offers!);
    unittest.expect(
      o.onSaleDate!,
      unittest.equals('foo'),
    );
    checkVolumeSaleInfoRetailPrice(
        o.retailPrice! as api.VolumeSaleInfoRetailPrice);
    unittest.expect(
      o.saleability!,
      unittest.equals('foo'),
    );
  }
  buildCounterVolumeSaleInfo--;
}

core.int buildCounterVolumeSearchInfo = 0;
api.VolumeSearchInfo buildVolumeSearchInfo() {
  var o = api.VolumeSearchInfo();
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
  var o = api.VolumeUserInfoCopy();
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
  var o = api.VolumeUserInfoFamilySharing();
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
  var o = api.VolumeUserInfoRentalPeriod();
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
  var o = api.VolumeUserInfoUserUploadedVolumeInfo();
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
  var o = api.VolumeUserInfo();
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
    checkVolumeUserInfoCopy(o.copy! as api.VolumeUserInfoCopy);
    unittest.expect(
      o.entitlementType!,
      unittest.equals(42),
    );
    checkVolumeUserInfoFamilySharing(
        o.familySharing! as api.VolumeUserInfoFamilySharing);
    unittest.expect(o.isFamilySharedFromUser!, unittest.isTrue);
    unittest.expect(o.isFamilySharedToUser!, unittest.isTrue);
    unittest.expect(o.isFamilySharingAllowed!, unittest.isTrue);
    unittest.expect(o.isFamilySharingDisabledByFop!, unittest.isTrue);
    unittest.expect(o.isInMyBooks!, unittest.isTrue);
    unittest.expect(o.isPreordered!, unittest.isTrue);
    unittest.expect(o.isPurchased!, unittest.isTrue);
    unittest.expect(o.isUploaded!, unittest.isTrue);
    checkReadingPosition(o.readingPosition! as api.ReadingPosition);
    checkVolumeUserInfoRentalPeriod(
        o.rentalPeriod! as api.VolumeUserInfoRentalPeriod);
    unittest.expect(
      o.rentalState!,
      unittest.equals('foo'),
    );
    checkReview(o.review! as api.Review);
    unittest.expect(
      o.updated!,
      unittest.equals('foo'),
    );
    checkVolumeUserInfoUserUploadedVolumeInfo(
        o.userUploadedVolumeInfo! as api.VolumeUserInfoUserUploadedVolumeInfo);
  }
  buildCounterVolumeUserInfo--;
}

core.List<core.String> buildUnnamed6844() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6844(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6845() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6845(core.List<core.String> o) {
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
  var o = api.VolumeVolumeInfoDimensions();
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
  var o = api.VolumeVolumeInfoImageLinks();
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
  var o = api.VolumeVolumeInfoIndustryIdentifiers();
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

core.List<api.VolumeVolumeInfoIndustryIdentifiers> buildUnnamed6846() {
  var o = <api.VolumeVolumeInfoIndustryIdentifiers>[];
  o.add(buildVolumeVolumeInfoIndustryIdentifiers());
  o.add(buildVolumeVolumeInfoIndustryIdentifiers());
  return o;
}

void checkUnnamed6846(core.List<api.VolumeVolumeInfoIndustryIdentifiers> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeVolumeInfoIndustryIdentifiers(
      o[0] as api.VolumeVolumeInfoIndustryIdentifiers);
  checkVolumeVolumeInfoIndustryIdentifiers(
      o[1] as api.VolumeVolumeInfoIndustryIdentifiers);
}

core.int buildCounterVolumeVolumeInfoPanelizationSummary = 0;
api.VolumeVolumeInfoPanelizationSummary
    buildVolumeVolumeInfoPanelizationSummary() {
  var o = api.VolumeVolumeInfoPanelizationSummary();
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
  var o = api.VolumeVolumeInfoReadingModes();
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
  var o = api.VolumeVolumeInfo();
  buildCounterVolumeVolumeInfo++;
  if (buildCounterVolumeVolumeInfo < 3) {
    o.allowAnonLogging = true;
    o.authors = buildUnnamed6844();
    o.averageRating = 42.0;
    o.canonicalVolumeLink = 'foo';
    o.categories = buildUnnamed6845();
    o.comicsContent = true;
    o.contentVersion = 'foo';
    o.description = 'foo';
    o.dimensions = buildVolumeVolumeInfoDimensions();
    o.imageLinks = buildVolumeVolumeInfoImageLinks();
    o.industryIdentifiers = buildUnnamed6846();
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
    checkUnnamed6844(o.authors!);
    unittest.expect(
      o.averageRating!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.canonicalVolumeLink!,
      unittest.equals('foo'),
    );
    checkUnnamed6845(o.categories!);
    unittest.expect(o.comicsContent!, unittest.isTrue);
    unittest.expect(
      o.contentVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkVolumeVolumeInfoDimensions(
        o.dimensions! as api.VolumeVolumeInfoDimensions);
    checkVolumeVolumeInfoImageLinks(
        o.imageLinks! as api.VolumeVolumeInfoImageLinks);
    checkUnnamed6846(o.industryIdentifiers!);
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
    checkVolumeVolumeInfoPanelizationSummary(
        o.panelizationSummary! as api.VolumeVolumeInfoPanelizationSummary);
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
    checkVolumeVolumeInfoReadingModes(
        o.readingModes! as api.VolumeVolumeInfoReadingModes);
    unittest.expect(
      o.samplePageCount!,
      unittest.equals(42),
    );
    checkVolumeseriesinfo(o.seriesInfo! as api.Volumeseriesinfo);
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
  var o = api.Volume();
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
    checkVolumeAccessInfo(o.accessInfo! as api.VolumeAccessInfo);
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
    checkVolumeLayerInfo(o.layerInfo! as api.VolumeLayerInfo);
    checkVolumeRecommendedInfo(o.recommendedInfo! as api.VolumeRecommendedInfo);
    checkVolumeSaleInfo(o.saleInfo! as api.VolumeSaleInfo);
    checkVolumeSearchInfo(o.searchInfo! as api.VolumeSearchInfo);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    checkVolumeUserInfo(o.userInfo! as api.VolumeUserInfo);
    checkVolumeVolumeInfo(o.volumeInfo! as api.VolumeVolumeInfo);
  }
  buildCounterVolume--;
}

core.List<api.Volume> buildUnnamed6847() {
  var o = <api.Volume>[];
  o.add(buildVolume());
  o.add(buildVolume());
  return o;
}

void checkUnnamed6847(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0] as api.Volume);
  checkVolume(o[1] as api.Volume);
}

core.int buildCounterVolume2 = 0;
api.Volume2 buildVolume2() {
  var o = api.Volume2();
  buildCounterVolume2++;
  if (buildCounterVolume2 < 3) {
    o.items = buildUnnamed6847();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterVolume2--;
  return o;
}

void checkVolume2(api.Volume2 o) {
  buildCounterVolume2++;
  if (buildCounterVolume2 < 3) {
    checkUnnamed6847(o.items!);
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
  var o = api.VolumeannotationContentRanges();
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
    checkBooksAnnotationsRange(o.cfiRange! as api.BooksAnnotationsRange);
    unittest.expect(
      o.contentVersion!,
      unittest.equals('foo'),
    );
    checkBooksAnnotationsRange(o.gbImageRange! as api.BooksAnnotationsRange);
    checkBooksAnnotationsRange(o.gbTextRange! as api.BooksAnnotationsRange);
  }
  buildCounterVolumeannotationContentRanges--;
}

core.List<core.String> buildUnnamed6848() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6848(core.List<core.String> o) {
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
  var o = api.Volumeannotation();
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
    o.pageIds = buildUnnamed6848();
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
    checkVolumeannotationContentRanges(
        o.contentRanges! as api.VolumeannotationContentRanges);
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
    checkUnnamed6848(o.pageIds!);
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

core.List<api.Volumeannotation> buildUnnamed6849() {
  var o = <api.Volumeannotation>[];
  o.add(buildVolumeannotation());
  o.add(buildVolumeannotation());
  return o;
}

void checkUnnamed6849(core.List<api.Volumeannotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeannotation(o[0] as api.Volumeannotation);
  checkVolumeannotation(o[1] as api.Volumeannotation);
}

core.int buildCounterVolumeannotations = 0;
api.Volumeannotations buildVolumeannotations() {
  var o = api.Volumeannotations();
  buildCounterVolumeannotations++;
  if (buildCounterVolumeannotations < 3) {
    o.items = buildUnnamed6849();
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
    checkUnnamed6849(o.items!);
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

core.List<api.Volume> buildUnnamed6850() {
  var o = <api.Volume>[];
  o.add(buildVolume());
  o.add(buildVolume());
  return o;
}

void checkUnnamed6850(core.List<api.Volume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolume(o[0] as api.Volume);
  checkVolume(o[1] as api.Volume);
}

core.int buildCounterVolumes = 0;
api.Volumes buildVolumes() {
  var o = api.Volumes();
  buildCounterVolumes++;
  if (buildCounterVolumes < 3) {
    o.items = buildUnnamed6850();
    o.kind = 'foo';
    o.totalItems = 42;
  }
  buildCounterVolumes--;
  return o;
}

void checkVolumes(api.Volumes o) {
  buildCounterVolumes++;
  if (buildCounterVolumes < 3) {
    checkUnnamed6850(o.items!);
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
  var o = api.VolumeseriesinfoVolumeSeriesIssue();
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

core.List<api.VolumeseriesinfoVolumeSeriesIssue> buildUnnamed6851() {
  var o = <api.VolumeseriesinfoVolumeSeriesIssue>[];
  o.add(buildVolumeseriesinfoVolumeSeriesIssue());
  o.add(buildVolumeseriesinfoVolumeSeriesIssue());
  return o;
}

void checkUnnamed6851(core.List<api.VolumeseriesinfoVolumeSeriesIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeseriesinfoVolumeSeriesIssue(
      o[0] as api.VolumeseriesinfoVolumeSeriesIssue);
  checkVolumeseriesinfoVolumeSeriesIssue(
      o[1] as api.VolumeseriesinfoVolumeSeriesIssue);
}

core.int buildCounterVolumeseriesinfoVolumeSeries = 0;
api.VolumeseriesinfoVolumeSeries buildVolumeseriesinfoVolumeSeries() {
  var o = api.VolumeseriesinfoVolumeSeries();
  buildCounterVolumeseriesinfoVolumeSeries++;
  if (buildCounterVolumeseriesinfoVolumeSeries < 3) {
    o.issue = buildUnnamed6851();
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
    checkUnnamed6851(o.issue!);
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

core.List<api.VolumeseriesinfoVolumeSeries> buildUnnamed6852() {
  var o = <api.VolumeseriesinfoVolumeSeries>[];
  o.add(buildVolumeseriesinfoVolumeSeries());
  o.add(buildVolumeseriesinfoVolumeSeries());
  return o;
}

void checkUnnamed6852(core.List<api.VolumeseriesinfoVolumeSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVolumeseriesinfoVolumeSeries(o[0] as api.VolumeseriesinfoVolumeSeries);
  checkVolumeseriesinfoVolumeSeries(o[1] as api.VolumeseriesinfoVolumeSeries);
}

core.int buildCounterVolumeseriesinfo = 0;
api.Volumeseriesinfo buildVolumeseriesinfo() {
  var o = api.Volumeseriesinfo();
  buildCounterVolumeseriesinfo++;
  if (buildCounterVolumeseriesinfo < 3) {
    o.bookDisplayNumber = 'foo';
    o.kind = 'foo';
    o.shortSeriesBookTitle = 'foo';
    o.volumeSeries = buildUnnamed6852();
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
    checkUnnamed6852(o.volumeSeries!);
  }
  buildCounterVolumeseriesinfo--;
}

core.List<core.String> buildUnnamed6853() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6853(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6854() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6854(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6855() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6855(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6856() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6856(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6857() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6857(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6858() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6858(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6859() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6859(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6860() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6860(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6861() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6861(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6862() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6862(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6863() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6863(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6864() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6864(core.List<core.String> o) {
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
    unittest.test('to-json--from-json', () {
      var o = buildAnnotationClientVersionRanges();
      var od = api.AnnotationClientVersionRanges.fromJson(o.toJson());
      checkAnnotationClientVersionRanges(
          od as api.AnnotationClientVersionRanges);
    });
  });

  unittest.group('obj-schema-AnnotationCurrentVersionRanges', () {
    unittest.test('to-json--from-json', () {
      var o = buildAnnotationCurrentVersionRanges();
      var od = api.AnnotationCurrentVersionRanges.fromJson(o.toJson());
      checkAnnotationCurrentVersionRanges(
          od as api.AnnotationCurrentVersionRanges);
    });
  });

  unittest.group('obj-schema-AnnotationLayerSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildAnnotationLayerSummary();
      var od = api.AnnotationLayerSummary.fromJson(o.toJson());
      checkAnnotationLayerSummary(od as api.AnnotationLayerSummary);
    });
  });

  unittest.group('obj-schema-Annotation', () {
    unittest.test('to-json--from-json', () {
      var o = buildAnnotation();
      var od = api.Annotation.fromJson(o.toJson());
      checkAnnotation(od as api.Annotation);
    });
  });

  unittest.group('obj-schema-Annotations', () {
    unittest.test('to-json--from-json', () {
      var o = buildAnnotations();
      var od = api.Annotations.fromJson(o.toJson());
      checkAnnotations(od as api.Annotations);
    });
  });

  unittest.group('obj-schema-AnnotationsSummaryLayers', () {
    unittest.test('to-json--from-json', () {
      var o = buildAnnotationsSummaryLayers();
      var od = api.AnnotationsSummaryLayers.fromJson(o.toJson());
      checkAnnotationsSummaryLayers(od as api.AnnotationsSummaryLayers);
    });
  });

  unittest.group('obj-schema-AnnotationsSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildAnnotationsSummary();
      var od = api.AnnotationsSummary.fromJson(o.toJson());
      checkAnnotationsSummary(od as api.AnnotationsSummary);
    });
  });

  unittest.group('obj-schema-Annotationsdata', () {
    unittest.test('to-json--from-json', () {
      var o = buildAnnotationsdata();
      var od = api.Annotationsdata.fromJson(o.toJson());
      checkAnnotationsdata(od as api.Annotationsdata);
    });
  });

  unittest.group('obj-schema-BooksAnnotationsRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildBooksAnnotationsRange();
      var od = api.BooksAnnotationsRange.fromJson(o.toJson());
      checkBooksAnnotationsRange(od as api.BooksAnnotationsRange);
    });
  });

  unittest.group('obj-schema-BooksCloudloadingResource', () {
    unittest.test('to-json--from-json', () {
      var o = buildBooksCloudloadingResource();
      var od = api.BooksCloudloadingResource.fromJson(o.toJson());
      checkBooksCloudloadingResource(od as api.BooksCloudloadingResource);
    });
  });

  unittest.group('obj-schema-BooksVolumesRecommendedRateResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBooksVolumesRecommendedRateResponse();
      var od = api.BooksVolumesRecommendedRateResponse.fromJson(o.toJson());
      checkBooksVolumesRecommendedRateResponse(
          od as api.BooksVolumesRecommendedRateResponse);
    });
  });

  unittest.group('obj-schema-Bookshelf', () {
    unittest.test('to-json--from-json', () {
      var o = buildBookshelf();
      var od = api.Bookshelf.fromJson(o.toJson());
      checkBookshelf(od as api.Bookshelf);
    });
  });

  unittest.group('obj-schema-Bookshelves', () {
    unittest.test('to-json--from-json', () {
      var o = buildBookshelves();
      var od = api.Bookshelves.fromJson(o.toJson());
      checkBookshelves(od as api.Bookshelves);
    });
  });

  unittest.group('obj-schema-CategoryItems', () {
    unittest.test('to-json--from-json', () {
      var o = buildCategoryItems();
      var od = api.CategoryItems.fromJson(o.toJson());
      checkCategoryItems(od as api.CategoryItems);
    });
  });

  unittest.group('obj-schema-Category', () {
    unittest.test('to-json--from-json', () {
      var o = buildCategory();
      var od = api.Category.fromJson(o.toJson());
      checkCategory(od as api.Category);
    });
  });

  unittest.group('obj-schema-ConcurrentAccessRestriction', () {
    unittest.test('to-json--from-json', () {
      var o = buildConcurrentAccessRestriction();
      var od = api.ConcurrentAccessRestriction.fromJson(o.toJson());
      checkConcurrentAccessRestriction(od as api.ConcurrentAccessRestriction);
    });
  });

  unittest.group('obj-schema-DictionaryAnnotationdata', () {
    unittest.test('to-json--from-json', () {
      var o = buildDictionaryAnnotationdata();
      var od = api.DictionaryAnnotationdata.fromJson(o.toJson());
      checkDictionaryAnnotationdata(od as api.DictionaryAnnotationdata);
    });
  });

  unittest.group('obj-schema-DictlayerdataCommon', () {
    unittest.test('to-json--from-json', () {
      var o = buildDictlayerdataCommon();
      var od = api.DictlayerdataCommon.fromJson(o.toJson());
      checkDictlayerdataCommon(od as api.DictlayerdataCommon);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildDictlayerdataDictSource();
      var od = api.DictlayerdataDictSource.fromJson(o.toJson());
      checkDictlayerdataDictSource(od as api.DictlayerdataDictSource);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsDerivativesSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildDictlayerdataDictWordsDerivativesSource();
      var od = api.DictlayerdataDictWordsDerivativesSource.fromJson(o.toJson());
      checkDictlayerdataDictWordsDerivativesSource(
          od as api.DictlayerdataDictWordsDerivativesSource);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsDerivatives', () {
    unittest.test('to-json--from-json', () {
      var o = buildDictlayerdataDictWordsDerivatives();
      var od = api.DictlayerdataDictWordsDerivatives.fromJson(o.toJson());
      checkDictlayerdataDictWordsDerivatives(
          od as api.DictlayerdataDictWordsDerivatives);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsExamplesSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildDictlayerdataDictWordsExamplesSource();
      var od = api.DictlayerdataDictWordsExamplesSource.fromJson(o.toJson());
      checkDictlayerdataDictWordsExamplesSource(
          od as api.DictlayerdataDictWordsExamplesSource);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsExamples', () {
    unittest.test('to-json--from-json', () {
      var o = buildDictlayerdataDictWordsExamples();
      var od = api.DictlayerdataDictWordsExamples.fromJson(o.toJson());
      checkDictlayerdataDictWordsExamples(
          od as api.DictlayerdataDictWordsExamples);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsSensesConjugations', () {
    unittest.test('to-json--from-json', () {
      var o = buildDictlayerdataDictWordsSensesConjugations();
      var od =
          api.DictlayerdataDictWordsSensesConjugations.fromJson(o.toJson());
      checkDictlayerdataDictWordsSensesConjugations(
          od as api.DictlayerdataDictWordsSensesConjugations);
    });
  });

  unittest.group(
      'obj-schema-DictlayerdataDictWordsSensesDefinitionsExamplesSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildDictlayerdataDictWordsSensesDefinitionsExamplesSource();
      var od =
          api.DictlayerdataDictWordsSensesDefinitionsExamplesSource.fromJson(
              o.toJson());
      checkDictlayerdataDictWordsSensesDefinitionsExamplesSource(
          od as api.DictlayerdataDictWordsSensesDefinitionsExamplesSource);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsSensesDefinitionsExamples',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildDictlayerdataDictWordsSensesDefinitionsExamples();
      var od = api.DictlayerdataDictWordsSensesDefinitionsExamples.fromJson(
          o.toJson());
      checkDictlayerdataDictWordsSensesDefinitionsExamples(
          od as api.DictlayerdataDictWordsSensesDefinitionsExamples);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsSensesDefinitions', () {
    unittest.test('to-json--from-json', () {
      var o = buildDictlayerdataDictWordsSensesDefinitions();
      var od = api.DictlayerdataDictWordsSensesDefinitions.fromJson(o.toJson());
      checkDictlayerdataDictWordsSensesDefinitions(
          od as api.DictlayerdataDictWordsSensesDefinitions);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsSensesSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildDictlayerdataDictWordsSensesSource();
      var od = api.DictlayerdataDictWordsSensesSource.fromJson(o.toJson());
      checkDictlayerdataDictWordsSensesSource(
          od as api.DictlayerdataDictWordsSensesSource);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsSensesSynonymsSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildDictlayerdataDictWordsSensesSynonymsSource();
      var od =
          api.DictlayerdataDictWordsSensesSynonymsSource.fromJson(o.toJson());
      checkDictlayerdataDictWordsSensesSynonymsSource(
          od as api.DictlayerdataDictWordsSensesSynonymsSource);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsSensesSynonyms', () {
    unittest.test('to-json--from-json', () {
      var o = buildDictlayerdataDictWordsSensesSynonyms();
      var od = api.DictlayerdataDictWordsSensesSynonyms.fromJson(o.toJson());
      checkDictlayerdataDictWordsSensesSynonyms(
          od as api.DictlayerdataDictWordsSensesSynonyms);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsSenses', () {
    unittest.test('to-json--from-json', () {
      var o = buildDictlayerdataDictWordsSenses();
      var od = api.DictlayerdataDictWordsSenses.fromJson(o.toJson());
      checkDictlayerdataDictWordsSenses(od as api.DictlayerdataDictWordsSenses);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWordsSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildDictlayerdataDictWordsSource();
      var od = api.DictlayerdataDictWordsSource.fromJson(o.toJson());
      checkDictlayerdataDictWordsSource(od as api.DictlayerdataDictWordsSource);
    });
  });

  unittest.group('obj-schema-DictlayerdataDictWords', () {
    unittest.test('to-json--from-json', () {
      var o = buildDictlayerdataDictWords();
      var od = api.DictlayerdataDictWords.fromJson(o.toJson());
      checkDictlayerdataDictWords(od as api.DictlayerdataDictWords);
    });
  });

  unittest.group('obj-schema-DictlayerdataDict', () {
    unittest.test('to-json--from-json', () {
      var o = buildDictlayerdataDict();
      var od = api.DictlayerdataDict.fromJson(o.toJson());
      checkDictlayerdataDict(od as api.DictlayerdataDict);
    });
  });

  unittest.group('obj-schema-Dictlayerdata', () {
    unittest.test('to-json--from-json', () {
      var o = buildDictlayerdata();
      var od = api.Dictlayerdata.fromJson(o.toJson());
      checkDictlayerdata(od as api.Dictlayerdata);
    });
  });

  unittest.group(
      'obj-schema-DiscoveryclustersClustersBannerWithContentContainer', () {
    unittest.test('to-json--from-json', () {
      var o = buildDiscoveryclustersClustersBannerWithContentContainer();
      var od = api.DiscoveryclustersClustersBannerWithContentContainer.fromJson(
          o.toJson());
      checkDiscoveryclustersClustersBannerWithContentContainer(
          od as api.DiscoveryclustersClustersBannerWithContentContainer);
    });
  });

  unittest.group('obj-schema-DiscoveryclustersClusters', () {
    unittest.test('to-json--from-json', () {
      var o = buildDiscoveryclustersClusters();
      var od = api.DiscoveryclustersClusters.fromJson(o.toJson());
      checkDiscoveryclustersClusters(od as api.DiscoveryclustersClusters);
    });
  });

  unittest.group('obj-schema-Discoveryclusters', () {
    unittest.test('to-json--from-json', () {
      var o = buildDiscoveryclusters();
      var od = api.Discoveryclusters.fromJson(o.toJson());
      checkDiscoveryclusters(od as api.Discoveryclusters);
    });
  });

  unittest.group('obj-schema-DownloadAccessRestriction', () {
    unittest.test('to-json--from-json', () {
      var o = buildDownloadAccessRestriction();
      var od = api.DownloadAccessRestriction.fromJson(o.toJson());
      checkDownloadAccessRestriction(od as api.DownloadAccessRestriction);
    });
  });

  unittest.group('obj-schema-DownloadAccesses', () {
    unittest.test('to-json--from-json', () {
      var o = buildDownloadAccesses();
      var od = api.DownloadAccesses.fromJson(o.toJson());
      checkDownloadAccesses(od as api.DownloadAccesses);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-FamilyInfoMembership', () {
    unittest.test('to-json--from-json', () {
      var o = buildFamilyInfoMembership();
      var od = api.FamilyInfoMembership.fromJson(o.toJson());
      checkFamilyInfoMembership(od as api.FamilyInfoMembership);
    });
  });

  unittest.group('obj-schema-FamilyInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildFamilyInfo();
      var od = api.FamilyInfo.fromJson(o.toJson());
      checkFamilyInfo(od as api.FamilyInfo);
    });
  });

  unittest.group('obj-schema-GeoAnnotationdata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGeoAnnotationdata();
      var od = api.GeoAnnotationdata.fromJson(o.toJson());
      checkGeoAnnotationdata(od as api.GeoAnnotationdata);
    });
  });

  unittest.group('obj-schema-GeolayerdataCommon', () {
    unittest.test('to-json--from-json', () {
      var o = buildGeolayerdataCommon();
      var od = api.GeolayerdataCommon.fromJson(o.toJson());
      checkGeolayerdataCommon(od as api.GeolayerdataCommon);
    });
  });

  unittest.group('obj-schema-GeolayerdataGeoViewportHi', () {
    unittest.test('to-json--from-json', () {
      var o = buildGeolayerdataGeoViewportHi();
      var od = api.GeolayerdataGeoViewportHi.fromJson(o.toJson());
      checkGeolayerdataGeoViewportHi(od as api.GeolayerdataGeoViewportHi);
    });
  });

  unittest.group('obj-schema-GeolayerdataGeoViewportLo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGeolayerdataGeoViewportLo();
      var od = api.GeolayerdataGeoViewportLo.fromJson(o.toJson());
      checkGeolayerdataGeoViewportLo(od as api.GeolayerdataGeoViewportLo);
    });
  });

  unittest.group('obj-schema-GeolayerdataGeoViewport', () {
    unittest.test('to-json--from-json', () {
      var o = buildGeolayerdataGeoViewport();
      var od = api.GeolayerdataGeoViewport.fromJson(o.toJson());
      checkGeolayerdataGeoViewport(od as api.GeolayerdataGeoViewport);
    });
  });

  unittest.group('obj-schema-GeolayerdataGeo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGeolayerdataGeo();
      var od = api.GeolayerdataGeo.fromJson(o.toJson());
      checkGeolayerdataGeo(od as api.GeolayerdataGeo);
    });
  });

  unittest.group('obj-schema-Geolayerdata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGeolayerdata();
      var od = api.Geolayerdata.fromJson(o.toJson());
      checkGeolayerdata(od as api.Geolayerdata);
    });
  });

  unittest.group('obj-schema-Layersummaries', () {
    unittest.test('to-json--from-json', () {
      var o = buildLayersummaries();
      var od = api.Layersummaries.fromJson(o.toJson());
      checkLayersummaries(od as api.Layersummaries);
    });
  });

  unittest.group('obj-schema-Layersummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildLayersummary();
      var od = api.Layersummary.fromJson(o.toJson());
      checkLayersummary(od as api.Layersummary);
    });
  });

  unittest.group('obj-schema-MetadataItems', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetadataItems();
      var od = api.MetadataItems.fromJson(o.toJson());
      checkMetadataItems(od as api.MetadataItems);
    });
  });

  unittest.group('obj-schema-Metadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetadata();
      var od = api.Metadata.fromJson(o.toJson());
      checkMetadata(od as api.Metadata);
    });
  });

  unittest.group('obj-schema-Notification', () {
    unittest.test('to-json--from-json', () {
      var o = buildNotification();
      var od = api.Notification.fromJson(o.toJson());
      checkNotification(od as api.Notification);
    });
  });

  unittest.group('obj-schema-OffersItemsItems', () {
    unittest.test('to-json--from-json', () {
      var o = buildOffersItemsItems();
      var od = api.OffersItemsItems.fromJson(o.toJson());
      checkOffersItemsItems(od as api.OffersItemsItems);
    });
  });

  unittest.group('obj-schema-OffersItems', () {
    unittest.test('to-json--from-json', () {
      var o = buildOffersItems();
      var od = api.OffersItems.fromJson(o.toJson());
      checkOffersItems(od as api.OffersItems);
    });
  });

  unittest.group('obj-schema-Offers', () {
    unittest.test('to-json--from-json', () {
      var o = buildOffers();
      var od = api.Offers.fromJson(o.toJson());
      checkOffers(od as api.Offers);
    });
  });

  unittest.group('obj-schema-ReadingPosition', () {
    unittest.test('to-json--from-json', () {
      var o = buildReadingPosition();
      var od = api.ReadingPosition.fromJson(o.toJson());
      checkReadingPosition(od as api.ReadingPosition);
    });
  });

  unittest.group('obj-schema-RequestAccessData', () {
    unittest.test('to-json--from-json', () {
      var o = buildRequestAccessData();
      var od = api.RequestAccessData.fromJson(o.toJson());
      checkRequestAccessData(od as api.RequestAccessData);
    });
  });

  unittest.group('obj-schema-ReviewAuthor', () {
    unittest.test('to-json--from-json', () {
      var o = buildReviewAuthor();
      var od = api.ReviewAuthor.fromJson(o.toJson());
      checkReviewAuthor(od as api.ReviewAuthor);
    });
  });

  unittest.group('obj-schema-ReviewSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildReviewSource();
      var od = api.ReviewSource.fromJson(o.toJson());
      checkReviewSource(od as api.ReviewSource);
    });
  });

  unittest.group('obj-schema-Review', () {
    unittest.test('to-json--from-json', () {
      var o = buildReview();
      var od = api.Review.fromJson(o.toJson());
      checkReview(od as api.Review);
    });
  });

  unittest.group(
      'obj-schema-SeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildSeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo();
      var od = api.SeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo
          .fromJson(o.toJson());
      checkSeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo(od
          as api.SeriesSeriesSeriesSubscriptionReleaseInfoCurrentReleaseInfo);
    });
  });

  unittest.group(
      'obj-schema-SeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildSeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo();
      var od =
          api.SeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo.fromJson(
              o.toJson());
      checkSeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo(
          od as api.SeriesSeriesSeriesSubscriptionReleaseInfoNextReleaseInfo);
    });
  });

  unittest.group('obj-schema-SeriesSeriesSeriesSubscriptionReleaseInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildSeriesSeriesSeriesSubscriptionReleaseInfo();
      var od =
          api.SeriesSeriesSeriesSubscriptionReleaseInfo.fromJson(o.toJson());
      checkSeriesSeriesSeriesSubscriptionReleaseInfo(
          od as api.SeriesSeriesSeriesSubscriptionReleaseInfo);
    });
  });

  unittest.group('obj-schema-SeriesSeries', () {
    unittest.test('to-json--from-json', () {
      var o = buildSeriesSeries();
      var od = api.SeriesSeries.fromJson(o.toJson());
      checkSeriesSeries(od as api.SeriesSeries);
    });
  });

  unittest.group('obj-schema-Series', () {
    unittest.test('to-json--from-json', () {
      var o = buildSeries();
      var od = api.Series.fromJson(o.toJson());
      checkSeries(od as api.Series);
    });
  });

  unittest.group('obj-schema-Seriesmembership', () {
    unittest.test('to-json--from-json', () {
      var o = buildSeriesmembership();
      var od = api.Seriesmembership.fromJson(o.toJson());
      checkSeriesmembership(od as api.Seriesmembership);
    });
  });

  unittest.group('obj-schema-UsersettingsNotesExport', () {
    unittest.test('to-json--from-json', () {
      var o = buildUsersettingsNotesExport();
      var od = api.UsersettingsNotesExport.fromJson(o.toJson());
      checkUsersettingsNotesExport(od as api.UsersettingsNotesExport);
    });
  });

  unittest.group('obj-schema-UsersettingsNotificationMatchMyInterests', () {
    unittest.test('to-json--from-json', () {
      var o = buildUsersettingsNotificationMatchMyInterests();
      var od =
          api.UsersettingsNotificationMatchMyInterests.fromJson(o.toJson());
      checkUsersettingsNotificationMatchMyInterests(
          od as api.UsersettingsNotificationMatchMyInterests);
    });
  });

  unittest.group('obj-schema-UsersettingsNotificationMoreFromAuthors', () {
    unittest.test('to-json--from-json', () {
      var o = buildUsersettingsNotificationMoreFromAuthors();
      var od = api.UsersettingsNotificationMoreFromAuthors.fromJson(o.toJson());
      checkUsersettingsNotificationMoreFromAuthors(
          od as api.UsersettingsNotificationMoreFromAuthors);
    });
  });

  unittest.group('obj-schema-UsersettingsNotificationMoreFromSeries', () {
    unittest.test('to-json--from-json', () {
      var o = buildUsersettingsNotificationMoreFromSeries();
      var od = api.UsersettingsNotificationMoreFromSeries.fromJson(o.toJson());
      checkUsersettingsNotificationMoreFromSeries(
          od as api.UsersettingsNotificationMoreFromSeries);
    });
  });

  unittest.group('obj-schema-UsersettingsNotificationPriceDrop', () {
    unittest.test('to-json--from-json', () {
      var o = buildUsersettingsNotificationPriceDrop();
      var od = api.UsersettingsNotificationPriceDrop.fromJson(o.toJson());
      checkUsersettingsNotificationPriceDrop(
          od as api.UsersettingsNotificationPriceDrop);
    });
  });

  unittest.group('obj-schema-UsersettingsNotificationRewardExpirations', () {
    unittest.test('to-json--from-json', () {
      var o = buildUsersettingsNotificationRewardExpirations();
      var od =
          api.UsersettingsNotificationRewardExpirations.fromJson(o.toJson());
      checkUsersettingsNotificationRewardExpirations(
          od as api.UsersettingsNotificationRewardExpirations);
    });
  });

  unittest.group('obj-schema-UsersettingsNotification', () {
    unittest.test('to-json--from-json', () {
      var o = buildUsersettingsNotification();
      var od = api.UsersettingsNotification.fromJson(o.toJson());
      checkUsersettingsNotification(od as api.UsersettingsNotification);
    });
  });

  unittest.group('obj-schema-Usersettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildUsersettings();
      var od = api.Usersettings.fromJson(o.toJson());
      checkUsersettings(od as api.Usersettings);
    });
  });

  unittest.group('obj-schema-VolumeAccessInfoEpub', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeAccessInfoEpub();
      var od = api.VolumeAccessInfoEpub.fromJson(o.toJson());
      checkVolumeAccessInfoEpub(od as api.VolumeAccessInfoEpub);
    });
  });

  unittest.group('obj-schema-VolumeAccessInfoPdf', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeAccessInfoPdf();
      var od = api.VolumeAccessInfoPdf.fromJson(o.toJson());
      checkVolumeAccessInfoPdf(od as api.VolumeAccessInfoPdf);
    });
  });

  unittest.group('obj-schema-VolumeAccessInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeAccessInfo();
      var od = api.VolumeAccessInfo.fromJson(o.toJson());
      checkVolumeAccessInfo(od as api.VolumeAccessInfo);
    });
  });

  unittest.group('obj-schema-VolumeLayerInfoLayers', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeLayerInfoLayers();
      var od = api.VolumeLayerInfoLayers.fromJson(o.toJson());
      checkVolumeLayerInfoLayers(od as api.VolumeLayerInfoLayers);
    });
  });

  unittest.group('obj-schema-VolumeLayerInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeLayerInfo();
      var od = api.VolumeLayerInfo.fromJson(o.toJson());
      checkVolumeLayerInfo(od as api.VolumeLayerInfo);
    });
  });

  unittest.group('obj-schema-VolumeRecommendedInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeRecommendedInfo();
      var od = api.VolumeRecommendedInfo.fromJson(o.toJson());
      checkVolumeRecommendedInfo(od as api.VolumeRecommendedInfo);
    });
  });

  unittest.group('obj-schema-VolumeSaleInfoListPrice', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeSaleInfoListPrice();
      var od = api.VolumeSaleInfoListPrice.fromJson(o.toJson());
      checkVolumeSaleInfoListPrice(od as api.VolumeSaleInfoListPrice);
    });
  });

  unittest.group('obj-schema-VolumeSaleInfoOffersListPrice', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeSaleInfoOffersListPrice();
      var od = api.VolumeSaleInfoOffersListPrice.fromJson(o.toJson());
      checkVolumeSaleInfoOffersListPrice(
          od as api.VolumeSaleInfoOffersListPrice);
    });
  });

  unittest.group('obj-schema-VolumeSaleInfoOffersRentalDuration', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeSaleInfoOffersRentalDuration();
      var od = api.VolumeSaleInfoOffersRentalDuration.fromJson(o.toJson());
      checkVolumeSaleInfoOffersRentalDuration(
          od as api.VolumeSaleInfoOffersRentalDuration);
    });
  });

  unittest.group('obj-schema-VolumeSaleInfoOffersRetailPrice', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeSaleInfoOffersRetailPrice();
      var od = api.VolumeSaleInfoOffersRetailPrice.fromJson(o.toJson());
      checkVolumeSaleInfoOffersRetailPrice(
          od as api.VolumeSaleInfoOffersRetailPrice);
    });
  });

  unittest.group('obj-schema-VolumeSaleInfoOffers', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeSaleInfoOffers();
      var od = api.VolumeSaleInfoOffers.fromJson(o.toJson());
      checkVolumeSaleInfoOffers(od as api.VolumeSaleInfoOffers);
    });
  });

  unittest.group('obj-schema-VolumeSaleInfoRetailPrice', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeSaleInfoRetailPrice();
      var od = api.VolumeSaleInfoRetailPrice.fromJson(o.toJson());
      checkVolumeSaleInfoRetailPrice(od as api.VolumeSaleInfoRetailPrice);
    });
  });

  unittest.group('obj-schema-VolumeSaleInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeSaleInfo();
      var od = api.VolumeSaleInfo.fromJson(o.toJson());
      checkVolumeSaleInfo(od as api.VolumeSaleInfo);
    });
  });

  unittest.group('obj-schema-VolumeSearchInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeSearchInfo();
      var od = api.VolumeSearchInfo.fromJson(o.toJson());
      checkVolumeSearchInfo(od as api.VolumeSearchInfo);
    });
  });

  unittest.group('obj-schema-VolumeUserInfoCopy', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeUserInfoCopy();
      var od = api.VolumeUserInfoCopy.fromJson(o.toJson());
      checkVolumeUserInfoCopy(od as api.VolumeUserInfoCopy);
    });
  });

  unittest.group('obj-schema-VolumeUserInfoFamilySharing', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeUserInfoFamilySharing();
      var od = api.VolumeUserInfoFamilySharing.fromJson(o.toJson());
      checkVolumeUserInfoFamilySharing(od as api.VolumeUserInfoFamilySharing);
    });
  });

  unittest.group('obj-schema-VolumeUserInfoRentalPeriod', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeUserInfoRentalPeriod();
      var od = api.VolumeUserInfoRentalPeriod.fromJson(o.toJson());
      checkVolumeUserInfoRentalPeriod(od as api.VolumeUserInfoRentalPeriod);
    });
  });

  unittest.group('obj-schema-VolumeUserInfoUserUploadedVolumeInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeUserInfoUserUploadedVolumeInfo();
      var od = api.VolumeUserInfoUserUploadedVolumeInfo.fromJson(o.toJson());
      checkVolumeUserInfoUserUploadedVolumeInfo(
          od as api.VolumeUserInfoUserUploadedVolumeInfo);
    });
  });

  unittest.group('obj-schema-VolumeUserInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeUserInfo();
      var od = api.VolumeUserInfo.fromJson(o.toJson());
      checkVolumeUserInfo(od as api.VolumeUserInfo);
    });
  });

  unittest.group('obj-schema-VolumeVolumeInfoDimensions', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeVolumeInfoDimensions();
      var od = api.VolumeVolumeInfoDimensions.fromJson(o.toJson());
      checkVolumeVolumeInfoDimensions(od as api.VolumeVolumeInfoDimensions);
    });
  });

  unittest.group('obj-schema-VolumeVolumeInfoImageLinks', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeVolumeInfoImageLinks();
      var od = api.VolumeVolumeInfoImageLinks.fromJson(o.toJson());
      checkVolumeVolumeInfoImageLinks(od as api.VolumeVolumeInfoImageLinks);
    });
  });

  unittest.group('obj-schema-VolumeVolumeInfoIndustryIdentifiers', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeVolumeInfoIndustryIdentifiers();
      var od = api.VolumeVolumeInfoIndustryIdentifiers.fromJson(o.toJson());
      checkVolumeVolumeInfoIndustryIdentifiers(
          od as api.VolumeVolumeInfoIndustryIdentifiers);
    });
  });

  unittest.group('obj-schema-VolumeVolumeInfoPanelizationSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeVolumeInfoPanelizationSummary();
      var od = api.VolumeVolumeInfoPanelizationSummary.fromJson(o.toJson());
      checkVolumeVolumeInfoPanelizationSummary(
          od as api.VolumeVolumeInfoPanelizationSummary);
    });
  });

  unittest.group('obj-schema-VolumeVolumeInfoReadingModes', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeVolumeInfoReadingModes();
      var od = api.VolumeVolumeInfoReadingModes.fromJson(o.toJson());
      checkVolumeVolumeInfoReadingModes(od as api.VolumeVolumeInfoReadingModes);
    });
  });

  unittest.group('obj-schema-VolumeVolumeInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeVolumeInfo();
      var od = api.VolumeVolumeInfo.fromJson(o.toJson());
      checkVolumeVolumeInfo(od as api.VolumeVolumeInfo);
    });
  });

  unittest.group('obj-schema-Volume', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolume();
      var od = api.Volume.fromJson(o.toJson());
      checkVolume(od as api.Volume);
    });
  });

  unittest.group('obj-schema-Volume2', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolume2();
      var od = api.Volume2.fromJson(o.toJson());
      checkVolume2(od as api.Volume2);
    });
  });

  unittest.group('obj-schema-VolumeannotationContentRanges', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeannotationContentRanges();
      var od = api.VolumeannotationContentRanges.fromJson(o.toJson());
      checkVolumeannotationContentRanges(
          od as api.VolumeannotationContentRanges);
    });
  });

  unittest.group('obj-schema-Volumeannotation', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeannotation();
      var od = api.Volumeannotation.fromJson(o.toJson());
      checkVolumeannotation(od as api.Volumeannotation);
    });
  });

  unittest.group('obj-schema-Volumeannotations', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeannotations();
      var od = api.Volumeannotations.fromJson(o.toJson());
      checkVolumeannotations(od as api.Volumeannotations);
    });
  });

  unittest.group('obj-schema-Volumes', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumes();
      var od = api.Volumes.fromJson(o.toJson());
      checkVolumes(od as api.Volumes);
    });
  });

  unittest.group('obj-schema-VolumeseriesinfoVolumeSeriesIssue', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeseriesinfoVolumeSeriesIssue();
      var od = api.VolumeseriesinfoVolumeSeriesIssue.fromJson(o.toJson());
      checkVolumeseriesinfoVolumeSeriesIssue(
          od as api.VolumeseriesinfoVolumeSeriesIssue);
    });
  });

  unittest.group('obj-schema-VolumeseriesinfoVolumeSeries', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeseriesinfoVolumeSeries();
      var od = api.VolumeseriesinfoVolumeSeries.fromJson(o.toJson());
      checkVolumeseriesinfoVolumeSeries(od as api.VolumeseriesinfoVolumeSeries);
    });
  });

  unittest.group('obj-schema-Volumeseriesinfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildVolumeseriesinfo();
      var od = api.Volumeseriesinfo.fromJson(o.toJson());
      checkVolumeseriesinfo(od as api.Volumeseriesinfo);
    });
  });

  unittest.group('resource-BookshelvesResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).bookshelves;
      var arg_userId = 'foo';
      var arg_shelf = 'foo';
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("books/v1/users/"),
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
          unittest.equals("/bookshelves/"),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_shelf'),
        );

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBookshelf());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_userId, arg_shelf, source: arg_source, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBookshelf(response as api.Bookshelf);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).bookshelves;
      var arg_userId = 'foo';
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("books/v1/users/"),
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
          unittest.equals("/bookshelves"),
        );
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBookshelves());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_userId, source: arg_source, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBookshelves(response as api.Bookshelves);
      })));
    });
  });

  unittest.group('resource-BookshelvesVolumesResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).bookshelves.volumes;
      var arg_userId = 'foo';
      var arg_shelf = 'foo';
      var arg_maxResults = 42;
      var arg_showPreorders = true;
      var arg_source = 'foo';
      var arg_startIndex = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("books/v1/users/"),
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
          unittest.equals("/bookshelves/"),
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
          unittest.equals("/volumes"),
        );
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["maxResults"]!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap["showPreorders"]!.first,
          unittest.equals("$arg_showPreorders"),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          core.int.parse(queryMap["startIndex"]!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVolumes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_userId, arg_shelf,
              maxResults: arg_maxResults,
              showPreorders: arg_showPreorders,
              source: arg_source,
              startIndex: arg_startIndex,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVolumes(response as api.Volumes);
      })));
    });
  });

  unittest.group('resource-CloudloadingResource', () {
    unittest.test('method--addBook', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).cloudloading;
      var arg_driveDocumentId = 'foo';
      var arg_mimeType = 'foo';
      var arg_name = 'foo';
      var arg_uploadClientToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("books/v1/cloudloading/addBook"),
        );
        pathOffset += 29;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["drive_document_id"]!.first,
          unittest.equals(arg_driveDocumentId),
        );
        unittest.expect(
          queryMap["mime_type"]!.first,
          unittest.equals(arg_mimeType),
        );
        unittest.expect(
          queryMap["name"]!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap["upload_client_token"]!.first,
          unittest.equals(arg_uploadClientToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBooksCloudloadingResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addBook(
              driveDocumentId: arg_driveDocumentId,
              mimeType: arg_mimeType,
              name: arg_name,
              uploadClientToken: arg_uploadClientToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBooksCloudloadingResource(
            response as api.BooksCloudloadingResource);
      })));
    });

    unittest.test('method--deleteBook', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).cloudloading;
      var arg_volumeId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals("books/v1/cloudloading/deleteBook"),
        );
        pathOffset += 32;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["volumeId"]!.first,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteBook(arg_volumeId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--updateBook', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).cloudloading;
      var arg_request = buildBooksCloudloadingResource();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BooksCloudloadingResource.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBooksCloudloadingResource(obj as api.BooksCloudloadingResource);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals("books/v1/cloudloading/updateBook"),
        );
        pathOffset += 32;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBooksCloudloadingResource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateBook(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBooksCloudloadingResource(
            response as api.BooksCloudloadingResource);
      })));
    });
  });

  unittest.group('resource-DictionaryResource', () {
    unittest.test('method--listOfflineMetadata', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).dictionary;
      var arg_cpksver = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 39),
          unittest.equals("books/v1/dictionary/listOfflineMetadata"),
        );
        pathOffset += 39;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["cpksver"]!.first,
          unittest.equals(arg_cpksver),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listOfflineMetadata(arg_cpksver, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMetadata(response as api.Metadata);
      })));
    });
  });

  unittest.group('resource-FamilysharingResource', () {
    unittest.test('method--getFamilyInfo', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).familysharing;
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 36),
          unittest.equals("books/v1/familysharing/getFamilyInfo"),
        );
        pathOffset += 36;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFamilyInfo());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getFamilyInfo(source: arg_source, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFamilyInfo(response as api.FamilyInfo);
      })));
    });

    unittest.test('method--share', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).familysharing;
      var arg_docId = 'foo';
      var arg_source = 'foo';
      var arg_volumeId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals("books/v1/familysharing/share"),
        );
        pathOffset += 28;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["docId"]!.first,
          unittest.equals(arg_docId),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["volumeId"]!.first,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .share(
              docId: arg_docId,
              source: arg_source,
              volumeId: arg_volumeId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--unshare', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).familysharing;
      var arg_docId = 'foo';
      var arg_source = 'foo';
      var arg_volumeId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals("books/v1/familysharing/unshare"),
        );
        pathOffset += 30;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["docId"]!.first,
          unittest.equals(arg_docId),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["volumeId"]!.first,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unshare(
              docId: arg_docId,
              source: arg_source,
              volumeId: arg_volumeId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });
  });

  unittest.group('resource-LayersResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).layers;
      var arg_volumeId = 'foo';
      var arg_summaryId = 'foo';
      var arg_contentVersion = 'foo';
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("books/v1/volumes/"),
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
          unittest.equals("/layersummary/"),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_summaryId'),
        );

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["contentVersion"]!.first,
          unittest.equals(arg_contentVersion),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLayersummary());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_volumeId, arg_summaryId,
              contentVersion: arg_contentVersion,
              source: arg_source,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLayersummary(response as api.Layersummary);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).layers;
      var arg_volumeId = 'foo';
      var arg_contentVersion = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("books/v1/volumes/"),
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
          unittest.equals("/layersummary"),
        );
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["contentVersion"]!.first,
          unittest.equals(arg_contentVersion),
        );
        unittest.expect(
          core.int.parse(queryMap["maxResults"]!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLayersummaries());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_volumeId,
              contentVersion: arg_contentVersion,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              source: arg_source,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLayersummaries(response as api.Layersummaries);
      })));
    });
  });

  unittest.group('resource-LayersAnnotationDataResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).layers.annotationData;
      var arg_volumeId = 'foo';
      var arg_layerId = 'foo';
      var arg_annotationDataId = 'foo';
      var arg_contentVersion = 'foo';
      var arg_allowWebDefinitions = true;
      var arg_h = 42;
      var arg_locale = 'foo';
      var arg_scale = 42;
      var arg_source = 'foo';
      var arg_w = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("books/v1/volumes/"),
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
          unittest.equals("/layers/"),
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
          unittest.equals("/data/"),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_annotationDataId'),
        );

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["contentVersion"]!.first,
          unittest.equals(arg_contentVersion),
        );
        unittest.expect(
          queryMap["allowWebDefinitions"]!.first,
          unittest.equals("$arg_allowWebDefinitions"),
        );
        unittest.expect(
          core.int.parse(queryMap["h"]!.first),
          unittest.equals(arg_h),
        );
        unittest.expect(
          queryMap["locale"]!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          core.int.parse(queryMap["scale"]!.first),
          unittest.equals(arg_scale),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          core.int.parse(queryMap["w"]!.first),
          unittest.equals(arg_w),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDictionaryAnnotationdata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_volumeId, arg_layerId, arg_annotationDataId,
              arg_contentVersion,
              allowWebDefinitions: arg_allowWebDefinitions,
              h: arg_h,
              locale: arg_locale,
              scale: arg_scale,
              source: arg_source,
              w: arg_w,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDictionaryAnnotationdata(response as api.DictionaryAnnotationdata);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).layers.annotationData;
      var arg_volumeId = 'foo';
      var arg_layerId = 'foo';
      var arg_contentVersion = 'foo';
      var arg_annotationDataId = buildUnnamed6853();
      var arg_h = 42;
      var arg_locale = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_scale = 42;
      var arg_source = 'foo';
      var arg_updatedMax = 'foo';
      var arg_updatedMin = 'foo';
      var arg_w = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("books/v1/volumes/"),
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
          unittest.equals("/layers/"),
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
          unittest.equals("/data"),
        );
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["contentVersion"]!.first,
          unittest.equals(arg_contentVersion),
        );
        unittest.expect(
          queryMap["annotationDataId"]!,
          unittest.equals(arg_annotationDataId),
        );
        unittest.expect(
          core.int.parse(queryMap["h"]!.first),
          unittest.equals(arg_h),
        );
        unittest.expect(
          queryMap["locale"]!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          core.int.parse(queryMap["maxResults"]!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          core.int.parse(queryMap["scale"]!.first),
          unittest.equals(arg_scale),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["updatedMax"]!.first,
          unittest.equals(arg_updatedMax),
        );
        unittest.expect(
          queryMap["updatedMin"]!.first,
          unittest.equals(arg_updatedMin),
        );
        unittest.expect(
          core.int.parse(queryMap["w"]!.first),
          unittest.equals(arg_w),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAnnotationsdata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_volumeId, arg_layerId, arg_contentVersion,
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
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAnnotationsdata(response as api.Annotationsdata);
      })));
    });
  });

  unittest.group('resource-LayersVolumeAnnotationsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).layers.volumeAnnotations;
      var arg_volumeId = 'foo';
      var arg_layerId = 'foo';
      var arg_annotationId = 'foo';
      var arg_locale = 'foo';
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("books/v1/volumes/"),
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
          unittest.equals("/layers/"),
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
          unittest.equals("/annotations/"),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_annotationId'),
        );

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["locale"]!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVolumeannotation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_volumeId, arg_layerId, arg_annotationId,
              locale: arg_locale, source: arg_source, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVolumeannotation(response as api.Volumeannotation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).layers.volumeAnnotations;
      var arg_volumeId = 'foo';
      var arg_layerId = 'foo';
      var arg_contentVersion = 'foo';
      var arg_endOffset = 'foo';
      var arg_endPosition = 'foo';
      var arg_locale = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_showDeleted = true;
      var arg_source = 'foo';
      var arg_startOffset = 'foo';
      var arg_startPosition = 'foo';
      var arg_updatedMax = 'foo';
      var arg_updatedMin = 'foo';
      var arg_volumeAnnotationsVersion = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("books/v1/volumes/"),
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
          unittest.equals("/layers/"),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_layerId'),
        );

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["contentVersion"]!.first,
          unittest.equals(arg_contentVersion),
        );
        unittest.expect(
          queryMap["endOffset"]!.first,
          unittest.equals(arg_endOffset),
        );
        unittest.expect(
          queryMap["endPosition"]!.first,
          unittest.equals(arg_endPosition),
        );
        unittest.expect(
          queryMap["locale"]!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          core.int.parse(queryMap["maxResults"]!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["showDeleted"]!.first,
          unittest.equals("$arg_showDeleted"),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["startOffset"]!.first,
          unittest.equals(arg_startOffset),
        );
        unittest.expect(
          queryMap["startPosition"]!.first,
          unittest.equals(arg_startPosition),
        );
        unittest.expect(
          queryMap["updatedMax"]!.first,
          unittest.equals(arg_updatedMax),
        );
        unittest.expect(
          queryMap["updatedMin"]!.first,
          unittest.equals(arg_updatedMin),
        );
        unittest.expect(
          queryMap["volumeAnnotationsVersion"]!.first,
          unittest.equals(arg_volumeAnnotationsVersion),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVolumeannotations());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_volumeId, arg_layerId, arg_contentVersion,
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
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVolumeannotations(response as api.Volumeannotations);
      })));
    });
  });

  unittest.group('resource-MyconfigResource', () {
    unittest.test('method--getUserSettings', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).myconfig;
      var arg_country = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals("books/v1/myconfig/getUserSettings"),
        );
        pathOffset += 33;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["country"]!.first,
          unittest.equals(arg_country),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUsersettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getUserSettings(country: arg_country, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUsersettings(response as api.Usersettings);
      })));
    });

    unittest.test('method--releaseDownloadAccess', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).myconfig;
      var arg_cpksver = 'foo';
      var arg_volumeIds = buildUnnamed6854();
      var arg_locale = 'foo';
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 39),
          unittest.equals("books/v1/myconfig/releaseDownloadAccess"),
        );
        pathOffset += 39;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["cpksver"]!.first,
          unittest.equals(arg_cpksver),
        );
        unittest.expect(
          queryMap["volumeIds"]!,
          unittest.equals(arg_volumeIds),
        );
        unittest.expect(
          queryMap["locale"]!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDownloadAccesses());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .releaseDownloadAccess(arg_cpksver, arg_volumeIds,
              locale: arg_locale, source: arg_source, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDownloadAccesses(response as api.DownloadAccesses);
      })));
    });

    unittest.test('method--requestAccess', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).myconfig;
      var arg_cpksver = 'foo';
      var arg_nonce = 'foo';
      var arg_source = 'foo';
      var arg_volumeId = 'foo';
      var arg_licenseTypes = 'foo';
      var arg_locale = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals("books/v1/myconfig/requestAccess"),
        );
        pathOffset += 31;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["cpksver"]!.first,
          unittest.equals(arg_cpksver),
        );
        unittest.expect(
          queryMap["nonce"]!.first,
          unittest.equals(arg_nonce),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["volumeId"]!.first,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          queryMap["licenseTypes"]!.first,
          unittest.equals(arg_licenseTypes),
        );
        unittest.expect(
          queryMap["locale"]!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRequestAccessData());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .requestAccess(arg_cpksver, arg_nonce, arg_source, arg_volumeId,
              licenseTypes: arg_licenseTypes,
              locale: arg_locale,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRequestAccessData(response as api.RequestAccessData);
      })));
    });

    unittest.test('method--syncVolumeLicenses', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).myconfig;
      var arg_cpksver = 'foo';
      var arg_nonce = 'foo';
      var arg_source = 'foo';
      var arg_features = buildUnnamed6855();
      var arg_includeNonComicsSeries = true;
      var arg_locale = 'foo';
      var arg_showPreorders = true;
      var arg_volumeIds = buildUnnamed6856();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 36),
          unittest.equals("books/v1/myconfig/syncVolumeLicenses"),
        );
        pathOffset += 36;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["cpksver"]!.first,
          unittest.equals(arg_cpksver),
        );
        unittest.expect(
          queryMap["nonce"]!.first,
          unittest.equals(arg_nonce),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["features"]!,
          unittest.equals(arg_features),
        );
        unittest.expect(
          queryMap["includeNonComicsSeries"]!.first,
          unittest.equals("$arg_includeNonComicsSeries"),
        );
        unittest.expect(
          queryMap["locale"]!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap["showPreorders"]!.first,
          unittest.equals("$arg_showPreorders"),
        );
        unittest.expect(
          queryMap["volumeIds"]!,
          unittest.equals(arg_volumeIds),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVolumes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .syncVolumeLicenses(arg_cpksver, arg_nonce, arg_source,
              features: arg_features,
              includeNonComicsSeries: arg_includeNonComicsSeries,
              locale: arg_locale,
              showPreorders: arg_showPreorders,
              volumeIds: arg_volumeIds,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVolumes(response as api.Volumes);
      })));
    });

    unittest.test('method--updateUserSettings', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).myconfig;
      var arg_request = buildUsersettings();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Usersettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUsersettings(obj as api.Usersettings);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 36),
          unittest.equals("books/v1/myconfig/updateUserSettings"),
        );
        pathOffset += 36;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUsersettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateUserSettings(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUsersettings(response as api.Usersettings);
      })));
    });
  });

  unittest.group('resource-MylibraryAnnotationsResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).mylibrary.annotations;
      var arg_annotationId = 'foo';
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals("books/v1/mylibrary/annotations/"),
        );
        pathOffset += 31;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_annotationId'),
        );

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_annotationId, source: arg_source, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).mylibrary.annotations;
      var arg_request = buildAnnotation();
      var arg_annotationId = 'foo';
      var arg_country = 'foo';
      var arg_showOnlySummaryInResponse = true;
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Annotation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAnnotation(obj as api.Annotation);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals("books/v1/mylibrary/annotations"),
        );
        pathOffset += 30;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["annotationId"]!.first,
          unittest.equals(arg_annotationId),
        );
        unittest.expect(
          queryMap["country"]!.first,
          unittest.equals(arg_country),
        );
        unittest.expect(
          queryMap["showOnlySummaryInResponse"]!.first,
          unittest.equals("$arg_showOnlySummaryInResponse"),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAnnotation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request,
              annotationId: arg_annotationId,
              country: arg_country,
              showOnlySummaryInResponse: arg_showOnlySummaryInResponse,
              source: arg_source,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAnnotation(response as api.Annotation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).mylibrary.annotations;
      var arg_contentVersion = 'foo';
      var arg_layerId = 'foo';
      var arg_layerIds = buildUnnamed6857();
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_showDeleted = true;
      var arg_source = 'foo';
      var arg_updatedMax = 'foo';
      var arg_updatedMin = 'foo';
      var arg_volumeId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals("books/v1/mylibrary/annotations"),
        );
        pathOffset += 30;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["contentVersion"]!.first,
          unittest.equals(arg_contentVersion),
        );
        unittest.expect(
          queryMap["layerId"]!.first,
          unittest.equals(arg_layerId),
        );
        unittest.expect(
          queryMap["layerIds"]!,
          unittest.equals(arg_layerIds),
        );
        unittest.expect(
          core.int.parse(queryMap["maxResults"]!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["showDeleted"]!.first,
          unittest.equals("$arg_showDeleted"),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["updatedMax"]!.first,
          unittest.equals(arg_updatedMax),
        );
        unittest.expect(
          queryMap["updatedMin"]!.first,
          unittest.equals(arg_updatedMin),
        );
        unittest.expect(
          queryMap["volumeId"]!.first,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAnnotations());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
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
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAnnotations(response as api.Annotations);
      })));
    });

    unittest.test('method--summary', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).mylibrary.annotations;
      var arg_layerIds = buildUnnamed6858();
      var arg_volumeId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 38),
          unittest.equals("books/v1/mylibrary/annotations/summary"),
        );
        pathOffset += 38;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["layerIds"]!,
          unittest.equals(arg_layerIds),
        );
        unittest.expect(
          queryMap["volumeId"]!.first,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAnnotationsSummary());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .summary(arg_layerIds, arg_volumeId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAnnotationsSummary(response as api.AnnotationsSummary);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).mylibrary.annotations;
      var arg_request = buildAnnotation();
      var arg_annotationId = 'foo';
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Annotation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAnnotation(obj as api.Annotation);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals("books/v1/mylibrary/annotations/"),
        );
        pathOffset += 31;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_annotationId'),
        );

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAnnotation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_annotationId,
              source: arg_source, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAnnotation(response as api.Annotation);
      })));
    });
  });

  unittest.group('resource-MylibraryBookshelvesResource', () {
    unittest.test('method--addVolume', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).mylibrary.bookshelves;
      var arg_shelf = 'foo';
      var arg_volumeId = 'foo';
      var arg_reason = 'foo';
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals("books/v1/mylibrary/bookshelves/"),
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
          unittest.equals("/addVolume"),
        );
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["volumeId"]!.first,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          queryMap["reason"]!.first,
          unittest.equals(arg_reason),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addVolume(arg_shelf, arg_volumeId,
              reason: arg_reason, source: arg_source, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--clearVolumes', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).mylibrary.bookshelves;
      var arg_shelf = 'foo';
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals("books/v1/mylibrary/bookshelves/"),
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
          unittest.equals("/clearVolumes"),
        );
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .clearVolumes(arg_shelf, source: arg_source, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).mylibrary.bookshelves;
      var arg_shelf = 'foo';
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals("books/v1/mylibrary/bookshelves/"),
        );
        pathOffset += 31;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_shelf'),
        );

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBookshelf());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_shelf, source: arg_source, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBookshelf(response as api.Bookshelf);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).mylibrary.bookshelves;
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals("books/v1/mylibrary/bookshelves"),
        );
        pathOffset += 30;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBookshelves());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(source: arg_source, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBookshelves(response as api.Bookshelves);
      })));
    });

    unittest.test('method--moveVolume', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).mylibrary.bookshelves;
      var arg_shelf = 'foo';
      var arg_volumeId = 'foo';
      var arg_volumePosition = 42;
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals("books/v1/mylibrary/bookshelves/"),
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
          unittest.equals("/moveVolume"),
        );
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["volumeId"]!.first,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          core.int.parse(queryMap["volumePosition"]!.first),
          unittest.equals(arg_volumePosition),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .moveVolume(arg_shelf, arg_volumeId, arg_volumePosition,
              source: arg_source, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--removeVolume', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).mylibrary.bookshelves;
      var arg_shelf = 'foo';
      var arg_volumeId = 'foo';
      var arg_reason = 'foo';
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals("books/v1/mylibrary/bookshelves/"),
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
          unittest.equals("/removeVolume"),
        );
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["volumeId"]!.first,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          queryMap["reason"]!.first,
          unittest.equals(arg_reason),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .removeVolume(arg_shelf, arg_volumeId,
              reason: arg_reason, source: arg_source, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });
  });

  unittest.group('resource-MylibraryBookshelvesVolumesResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).mylibrary.bookshelves.volumes;
      var arg_shelf = 'foo';
      var arg_country = 'foo';
      var arg_maxResults = 42;
      var arg_projection = 'foo';
      var arg_q = 'foo';
      var arg_showPreorders = true;
      var arg_source = 'foo';
      var arg_startIndex = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals("books/v1/mylibrary/bookshelves/"),
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
          unittest.equals("/volumes"),
        );
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["country"]!.first,
          unittest.equals(arg_country),
        );
        unittest.expect(
          core.int.parse(queryMap["maxResults"]!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap["projection"]!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap["q"]!.first,
          unittest.equals(arg_q),
        );
        unittest.expect(
          queryMap["showPreorders"]!.first,
          unittest.equals("$arg_showPreorders"),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          core.int.parse(queryMap["startIndex"]!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVolumes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_shelf,
              country: arg_country,
              maxResults: arg_maxResults,
              projection: arg_projection,
              q: arg_q,
              showPreorders: arg_showPreorders,
              source: arg_source,
              startIndex: arg_startIndex,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVolumes(response as api.Volumes);
      })));
    });
  });

  unittest.group('resource-MylibraryReadingpositionsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).mylibrary.readingpositions;
      var arg_volumeId = 'foo';
      var arg_contentVersion = 'foo';
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 36),
          unittest.equals("books/v1/mylibrary/readingpositions/"),
        );
        pathOffset += 36;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_volumeId'),
        );

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["contentVersion"]!.first,
          unittest.equals(arg_contentVersion),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReadingPosition());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_volumeId,
              contentVersion: arg_contentVersion,
              source: arg_source,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReadingPosition(response as api.ReadingPosition);
      })));
    });

    unittest.test('method--setPosition', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).mylibrary.readingpositions;
      var arg_volumeId = 'foo';
      var arg_position = 'foo';
      var arg_timestamp = 'foo';
      var arg_action = 'foo';
      var arg_contentVersion = 'foo';
      var arg_deviceCookie = 'foo';
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 36),
          unittest.equals("books/v1/mylibrary/readingpositions/"),
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
          unittest.equals("/setPosition"),
        );
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["position"]!.first,
          unittest.equals(arg_position),
        );
        unittest.expect(
          queryMap["timestamp"]!.first,
          unittest.equals(arg_timestamp),
        );
        unittest.expect(
          queryMap["action"]!.first,
          unittest.equals(arg_action),
        );
        unittest.expect(
          queryMap["contentVersion"]!.first,
          unittest.equals(arg_contentVersion),
        );
        unittest.expect(
          queryMap["deviceCookie"]!.first,
          unittest.equals(arg_deviceCookie),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setPosition(arg_volumeId, arg_position, arg_timestamp,
              action: arg_action,
              contentVersion: arg_contentVersion,
              deviceCookie: arg_deviceCookie,
              source: arg_source,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });
  });

  unittest.group('resource-NotificationResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).notification;
      var arg_notificationId = 'foo';
      var arg_locale = 'foo';
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals("books/v1/notification/get"),
        );
        pathOffset += 25;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["notification_id"]!.first,
          unittest.equals(arg_notificationId),
        );
        unittest.expect(
          queryMap["locale"]!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildNotification());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_notificationId,
              locale: arg_locale, source: arg_source, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNotification(response as api.Notification);
      })));
    });
  });

  unittest.group('resource-OnboardingResource', () {
    unittest.test('method--listCategories', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).onboarding;
      var arg_locale = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 34),
          unittest.equals("books/v1/onboarding/listCategories"),
        );
        pathOffset += 34;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["locale"]!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCategory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listCategories(locale: arg_locale, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCategory(response as api.Category);
      })));
    });

    unittest.test('method--listCategoryVolumes', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).onboarding;
      var arg_categoryId = buildUnnamed6859();
      var arg_locale = 'foo';
      var arg_maxAllowedMaturityRating = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 39),
          unittest.equals("books/v1/onboarding/listCategoryVolumes"),
        );
        pathOffset += 39;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["categoryId"]!,
          unittest.equals(arg_categoryId),
        );
        unittest.expect(
          queryMap["locale"]!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap["maxAllowedMaturityRating"]!.first,
          unittest.equals(arg_maxAllowedMaturityRating),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVolume2());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listCategoryVolumes(
              categoryId: arg_categoryId,
              locale: arg_locale,
              maxAllowedMaturityRating: arg_maxAllowedMaturityRating,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVolume2(response as api.Volume2);
      })));
    });
  });

  unittest.group('resource-PersonalizedstreamResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).personalizedstream;
      var arg_locale = 'foo';
      var arg_maxAllowedMaturityRating = 'foo';
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals("books/v1/personalizedstream/get"),
        );
        pathOffset += 31;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["locale"]!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap["maxAllowedMaturityRating"]!.first,
          unittest.equals(arg_maxAllowedMaturityRating),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDiscoveryclusters());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(
              locale: arg_locale,
              maxAllowedMaturityRating: arg_maxAllowedMaturityRating,
              source: arg_source,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDiscoveryclusters(response as api.Discoveryclusters);
      })));
    });
  });

  unittest.group('resource-PromoofferResource', () {
    unittest.test('method--accept', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).promooffer;
      var arg_androidId = 'foo';
      var arg_device = 'foo';
      var arg_manufacturer = 'foo';
      var arg_model = 'foo';
      var arg_offerId = 'foo';
      var arg_product = 'foo';
      var arg_serial = 'foo';
      var arg_volumeId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals("books/v1/promooffer/accept"),
        );
        pathOffset += 26;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["androidId"]!.first,
          unittest.equals(arg_androidId),
        );
        unittest.expect(
          queryMap["device"]!.first,
          unittest.equals(arg_device),
        );
        unittest.expect(
          queryMap["manufacturer"]!.first,
          unittest.equals(arg_manufacturer),
        );
        unittest.expect(
          queryMap["model"]!.first,
          unittest.equals(arg_model),
        );
        unittest.expect(
          queryMap["offerId"]!.first,
          unittest.equals(arg_offerId),
        );
        unittest.expect(
          queryMap["product"]!.first,
          unittest.equals(arg_product),
        );
        unittest.expect(
          queryMap["serial"]!.first,
          unittest.equals(arg_serial),
        );
        unittest.expect(
          queryMap["volumeId"]!.first,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .accept(
              androidId: arg_androidId,
              device: arg_device,
              manufacturer: arg_manufacturer,
              model: arg_model,
              offerId: arg_offerId,
              product: arg_product,
              serial: arg_serial,
              volumeId: arg_volumeId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--dismiss', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).promooffer;
      var arg_androidId = 'foo';
      var arg_device = 'foo';
      var arg_manufacturer = 'foo';
      var arg_model = 'foo';
      var arg_offerId = 'foo';
      var arg_product = 'foo';
      var arg_serial = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals("books/v1/promooffer/dismiss"),
        );
        pathOffset += 27;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["androidId"]!.first,
          unittest.equals(arg_androidId),
        );
        unittest.expect(
          queryMap["device"]!.first,
          unittest.equals(arg_device),
        );
        unittest.expect(
          queryMap["manufacturer"]!.first,
          unittest.equals(arg_manufacturer),
        );
        unittest.expect(
          queryMap["model"]!.first,
          unittest.equals(arg_model),
        );
        unittest.expect(
          queryMap["offerId"]!.first,
          unittest.equals(arg_offerId),
        );
        unittest.expect(
          queryMap["product"]!.first,
          unittest.equals(arg_product),
        );
        unittest.expect(
          queryMap["serial"]!.first,
          unittest.equals(arg_serial),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .dismiss(
              androidId: arg_androidId,
              device: arg_device,
              manufacturer: arg_manufacturer,
              model: arg_model,
              offerId: arg_offerId,
              product: arg_product,
              serial: arg_serial,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).promooffer;
      var arg_androidId = 'foo';
      var arg_device = 'foo';
      var arg_manufacturer = 'foo';
      var arg_model = 'foo';
      var arg_product = 'foo';
      var arg_serial = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals("books/v1/promooffer/get"),
        );
        pathOffset += 23;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["androidId"]!.first,
          unittest.equals(arg_androidId),
        );
        unittest.expect(
          queryMap["device"]!.first,
          unittest.equals(arg_device),
        );
        unittest.expect(
          queryMap["manufacturer"]!.first,
          unittest.equals(arg_manufacturer),
        );
        unittest.expect(
          queryMap["model"]!.first,
          unittest.equals(arg_model),
        );
        unittest.expect(
          queryMap["product"]!.first,
          unittest.equals(arg_product),
        );
        unittest.expect(
          queryMap["serial"]!.first,
          unittest.equals(arg_serial),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOffers());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(
              androidId: arg_androidId,
              device: arg_device,
              manufacturer: arg_manufacturer,
              model: arg_model,
              product: arg_product,
              serial: arg_serial,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOffers(response as api.Offers);
      })));
    });
  });

  unittest.group('resource-SeriesResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).series;
      var arg_seriesId = buildUnnamed6860();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals("books/v1/series/get"),
        );
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["series_id"]!,
          unittest.equals(arg_seriesId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSeries());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_seriesId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSeries(response as api.Series);
      })));
    });
  });

  unittest.group('resource-SeriesMembershipResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).series.membership;
      var arg_seriesId = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 30),
          unittest.equals("books/v1/series/membership/get"),
        );
        pathOffset += 30;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["series_id"]!.first,
          unittest.equals(arg_seriesId),
        );
        unittest.expect(
          core.int.parse(queryMap["page_size"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["page_token"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSeriesmembership());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_seriesId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSeriesmembership(response as api.Seriesmembership);
      })));
    });
  });

  unittest.group('resource-VolumesResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).volumes;
      var arg_volumeId = 'foo';
      var arg_country = 'foo';
      var arg_includeNonComicsSeries = true;
      var arg_partner = 'foo';
      var arg_projection = 'foo';
      var arg_source = 'foo';
      var arg_userLibraryConsistentRead = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("books/v1/volumes/"),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_volumeId'),
        );

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["country"]!.first,
          unittest.equals(arg_country),
        );
        unittest.expect(
          queryMap["includeNonComicsSeries"]!.first,
          unittest.equals("$arg_includeNonComicsSeries"),
        );
        unittest.expect(
          queryMap["partner"]!.first,
          unittest.equals(arg_partner),
        );
        unittest.expect(
          queryMap["projection"]!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["user_library_consistent_read"]!.first,
          unittest.equals("$arg_userLibraryConsistentRead"),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVolume());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_volumeId,
              country: arg_country,
              includeNonComicsSeries: arg_includeNonComicsSeries,
              partner: arg_partner,
              projection: arg_projection,
              source: arg_source,
              userLibraryConsistentRead: arg_userLibraryConsistentRead,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVolume(response as api.Volume);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).volumes;
      var arg_q = 'foo';
      var arg_download = 'foo';
      var arg_filter = 'foo';
      var arg_langRestrict = 'foo';
      var arg_libraryRestrict = 'foo';
      var arg_maxAllowedMaturityRating = 'foo';
      var arg_maxResults = 42;
      var arg_orderBy = 'foo';
      var arg_partner = 'foo';
      var arg_printType = 'foo';
      var arg_projection = 'foo';
      var arg_showPreorders = true;
      var arg_source = 'foo';
      var arg_startIndex = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals("books/v1/volumes"),
        );
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["q"]!.first,
          unittest.equals(arg_q),
        );
        unittest.expect(
          queryMap["download"]!.first,
          unittest.equals(arg_download),
        );
        unittest.expect(
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap["langRestrict"]!.first,
          unittest.equals(arg_langRestrict),
        );
        unittest.expect(
          queryMap["libraryRestrict"]!.first,
          unittest.equals(arg_libraryRestrict),
        );
        unittest.expect(
          queryMap["maxAllowedMaturityRating"]!.first,
          unittest.equals(arg_maxAllowedMaturityRating),
        );
        unittest.expect(
          core.int.parse(queryMap["maxResults"]!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap["orderBy"]!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          queryMap["partner"]!.first,
          unittest.equals(arg_partner),
        );
        unittest.expect(
          queryMap["printType"]!.first,
          unittest.equals(arg_printType),
        );
        unittest.expect(
          queryMap["projection"]!.first,
          unittest.equals(arg_projection),
        );
        unittest.expect(
          queryMap["showPreorders"]!.first,
          unittest.equals("$arg_showPreorders"),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          core.int.parse(queryMap["startIndex"]!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVolumes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_q,
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
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVolumes(response as api.Volumes);
      })));
    });
  });

  unittest.group('resource-VolumesAssociatedResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).volumes.associated;
      var arg_volumeId = 'foo';
      var arg_association = 'foo';
      var arg_locale = 'foo';
      var arg_maxAllowedMaturityRating = 'foo';
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("books/v1/volumes/"),
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
          unittest.equals("/associated"),
        );
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["association"]!.first,
          unittest.equals(arg_association),
        );
        unittest.expect(
          queryMap["locale"]!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap["maxAllowedMaturityRating"]!.first,
          unittest.equals(arg_maxAllowedMaturityRating),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVolumes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_volumeId,
              association: arg_association,
              locale: arg_locale,
              maxAllowedMaturityRating: arg_maxAllowedMaturityRating,
              source: arg_source,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVolumes(response as api.Volumes);
      })));
    });
  });

  unittest.group('resource-VolumesMybooksResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).volumes.mybooks;
      var arg_acquireMethod = buildUnnamed6861();
      var arg_country = 'foo';
      var arg_locale = 'foo';
      var arg_maxResults = 42;
      var arg_processingState = buildUnnamed6862();
      var arg_source = 'foo';
      var arg_startIndex = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals("books/v1/volumes/mybooks"),
        );
        pathOffset += 24;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["acquireMethod"]!,
          unittest.equals(arg_acquireMethod),
        );
        unittest.expect(
          queryMap["country"]!.first,
          unittest.equals(arg_country),
        );
        unittest.expect(
          queryMap["locale"]!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          core.int.parse(queryMap["maxResults"]!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap["processingState"]!,
          unittest.equals(arg_processingState),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          core.int.parse(queryMap["startIndex"]!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVolumes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              acquireMethod: arg_acquireMethod,
              country: arg_country,
              locale: arg_locale,
              maxResults: arg_maxResults,
              processingState: arg_processingState,
              source: arg_source,
              startIndex: arg_startIndex,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVolumes(response as api.Volumes);
      })));
    });
  });

  unittest.group('resource-VolumesRecommendedResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).volumes.recommended;
      var arg_locale = 'foo';
      var arg_maxAllowedMaturityRating = 'foo';
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals("books/v1/volumes/recommended"),
        );
        pathOffset += 28;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["locale"]!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap["maxAllowedMaturityRating"]!.first,
          unittest.equals(arg_maxAllowedMaturityRating),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVolumes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              locale: arg_locale,
              maxAllowedMaturityRating: arg_maxAllowedMaturityRating,
              source: arg_source,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVolumes(response as api.Volumes);
      })));
    });

    unittest.test('method--rate', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).volumes.recommended;
      var arg_rating = 'foo';
      var arg_volumeId = 'foo';
      var arg_locale = 'foo';
      var arg_source = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals("books/v1/volumes/recommended/rate"),
        );
        pathOffset += 33;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["rating"]!.first,
          unittest.equals(arg_rating),
        );
        unittest.expect(
          queryMap["volumeId"]!.first,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          queryMap["locale"]!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildBooksVolumesRecommendedRateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .rate(arg_rating, arg_volumeId,
              locale: arg_locale, source: arg_source, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBooksVolumesRecommendedRateResponse(
            response as api.BooksVolumesRecommendedRateResponse);
      })));
    });
  });

  unittest.group('resource-VolumesUseruploadedResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.BooksApi(mock).volumes.useruploaded;
      var arg_locale = 'foo';
      var arg_maxResults = 42;
      var arg_processingState = buildUnnamed6863();
      var arg_source = 'foo';
      var arg_startIndex = 42;
      var arg_volumeId = buildUnnamed6864();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals("books/v1/volumes/useruploaded"),
        );
        pathOffset += 29;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["locale"]!.first,
          unittest.equals(arg_locale),
        );
        unittest.expect(
          core.int.parse(queryMap["maxResults"]!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          queryMap["processingState"]!,
          unittest.equals(arg_processingState),
        );
        unittest.expect(
          queryMap["source"]!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          core.int.parse(queryMap["startIndex"]!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap["volumeId"]!,
          unittest.equals(arg_volumeId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVolumes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              locale: arg_locale,
              maxResults: arg_maxResults,
              processingState: arg_processingState,
              source: arg_source,
              startIndex: arg_startIndex,
              volumeId: arg_volumeId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVolumes(response as api.Volumes);
      })));
    });
  });
}
