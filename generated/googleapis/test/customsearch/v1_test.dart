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

import 'package:googleapis/customsearch/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterPromotionBodyLines = 0;
api.PromotionBodyLines buildPromotionBodyLines() {
  final o = api.PromotionBodyLines();
  buildCounterPromotionBodyLines++;
  if (buildCounterPromotionBodyLines < 3) {
    o.htmlTitle = 'foo';
    o.link = 'foo';
    o.title = 'foo';
    o.url = 'foo';
  }
  buildCounterPromotionBodyLines--;
  return o;
}

void checkPromotionBodyLines(api.PromotionBodyLines o) {
  buildCounterPromotionBodyLines++;
  if (buildCounterPromotionBodyLines < 3) {
    unittest.expect(
      o.htmlTitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.link!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterPromotionBodyLines--;
}

core.List<api.PromotionBodyLines> buildUnnamed5342() => [
      buildPromotionBodyLines(),
      buildPromotionBodyLines(),
    ];

void checkUnnamed5342(core.List<api.PromotionBodyLines> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPromotionBodyLines(o[0]);
  checkPromotionBodyLines(o[1]);
}

core.int buildCounterPromotionImage = 0;
api.PromotionImage buildPromotionImage() {
  final o = api.PromotionImage();
  buildCounterPromotionImage++;
  if (buildCounterPromotionImage < 3) {
    o.height = 42;
    o.source = 'foo';
    o.width = 42;
  }
  buildCounterPromotionImage--;
  return o;
}

void checkPromotionImage(api.PromotionImage o) {
  buildCounterPromotionImage++;
  if (buildCounterPromotionImage < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterPromotionImage--;
}

core.int buildCounterPromotion = 0;
api.Promotion buildPromotion() {
  final o = api.Promotion();
  buildCounterPromotion++;
  if (buildCounterPromotion < 3) {
    o.bodyLines = buildUnnamed5342();
    o.displayLink = 'foo';
    o.htmlTitle = 'foo';
    o.image = buildPromotionImage();
    o.link = 'foo';
    o.title = 'foo';
  }
  buildCounterPromotion--;
  return o;
}

void checkPromotion(api.Promotion o) {
  buildCounterPromotion++;
  if (buildCounterPromotion < 3) {
    checkUnnamed5342(o.bodyLines!);
    unittest.expect(
      o.displayLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.htmlTitle!,
      unittest.equals('foo'),
    );
    checkPromotionImage(o.image!);
    unittest.expect(
      o.link!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterPromotion--;
}

core.int buildCounterResultImage = 0;
api.ResultImage buildResultImage() {
  final o = api.ResultImage();
  buildCounterResultImage++;
  if (buildCounterResultImage < 3) {
    o.byteSize = 42;
    o.contextLink = 'foo';
    o.height = 42;
    o.thumbnailHeight = 42;
    o.thumbnailLink = 'foo';
    o.thumbnailWidth = 42;
    o.width = 42;
  }
  buildCounterResultImage--;
  return o;
}

void checkResultImage(api.ResultImage o) {
  buildCounterResultImage++;
  if (buildCounterResultImage < 3) {
    unittest.expect(
      o.byteSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.contextLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.thumbnailHeight!,
      unittest.equals(42),
    );
    unittest.expect(
      o.thumbnailLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thumbnailWidth!,
      unittest.equals(42),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterResultImage--;
}

core.int buildCounterResultLabels = 0;
api.ResultLabels buildResultLabels() {
  final o = api.ResultLabels();
  buildCounterResultLabels++;
  if (buildCounterResultLabels < 3) {
    o.displayName = 'foo';
    o.labelWithOp = 'foo';
    o.name = 'foo';
  }
  buildCounterResultLabels--;
  return o;
}

void checkResultLabels(api.ResultLabels o) {
  buildCounterResultLabels++;
  if (buildCounterResultLabels < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.labelWithOp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterResultLabels--;
}

core.List<api.ResultLabels> buildUnnamed5343() => [
      buildResultLabels(),
      buildResultLabels(),
    ];

void checkUnnamed5343(core.List<api.ResultLabels> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResultLabels(o[0]);
  checkResultLabels(o[1]);
}

core.Map<core.String, core.Object> buildUnnamed5344() => {
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

void checkUnnamed5344(core.Map<core.String, core.Object> o) {
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

core.int buildCounterResult = 0;
api.Result buildResult() {
  final o = api.Result();
  buildCounterResult++;
  if (buildCounterResult < 3) {
    o.cacheId = 'foo';
    o.displayLink = 'foo';
    o.fileFormat = 'foo';
    o.formattedUrl = 'foo';
    o.htmlFormattedUrl = 'foo';
    o.htmlSnippet = 'foo';
    o.htmlTitle = 'foo';
    o.image = buildResultImage();
    o.kind = 'foo';
    o.labels = buildUnnamed5343();
    o.link = 'foo';
    o.mime = 'foo';
    o.pagemap = buildUnnamed5344();
    o.snippet = 'foo';
    o.title = 'foo';
  }
  buildCounterResult--;
  return o;
}

void checkResult(api.Result o) {
  buildCounterResult++;
  if (buildCounterResult < 3) {
    unittest.expect(
      o.cacheId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formattedUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.htmlFormattedUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.htmlSnippet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.htmlTitle!,
      unittest.equals('foo'),
    );
    checkResultImage(o.image!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed5343(o.labels!);
    unittest.expect(
      o.link!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mime!,
      unittest.equals('foo'),
    );
    checkUnnamed5344(o.pagemap!);
    unittest.expect(
      o.snippet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterResult--;
}

core.Map<core.String, core.Object> buildUnnamed5345() => {
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

void checkUnnamed5345(core.Map<core.String, core.Object> o) {
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

core.List<api.Result> buildUnnamed5346() => [
      buildResult(),
      buildResult(),
    ];

void checkUnnamed5346(core.List<api.Result> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResult(o[0]);
  checkResult(o[1]);
}

core.List<api.Promotion> buildUnnamed5347() => [
      buildPromotion(),
      buildPromotion(),
    ];

void checkUnnamed5347(core.List<api.Promotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPromotion(o[0]);
  checkPromotion(o[1]);
}

core.int buildCounterSearchQueriesNextPage = 0;
api.SearchQueriesNextPage buildSearchQueriesNextPage() {
  final o = api.SearchQueriesNextPage();
  buildCounterSearchQueriesNextPage++;
  if (buildCounterSearchQueriesNextPage < 3) {
    o.count = 42;
    o.cr = 'foo';
    o.cx = 'foo';
    o.dateRestrict = 'foo';
    o.disableCnTwTranslation = 'foo';
    o.exactTerms = 'foo';
    o.excludeTerms = 'foo';
    o.fileType = 'foo';
    o.filter = 'foo';
    o.gl = 'foo';
    o.googleHost = 'foo';
    o.highRange = 'foo';
    o.hl = 'foo';
    o.hq = 'foo';
    o.imgColorType = 'foo';
    o.imgDominantColor = 'foo';
    o.imgSize = 'foo';
    o.imgType = 'foo';
    o.inputEncoding = 'foo';
    o.language = 'foo';
    o.linkSite = 'foo';
    o.lowRange = 'foo';
    o.orTerms = 'foo';
    o.outputEncoding = 'foo';
    o.relatedSite = 'foo';
    o.rights = 'foo';
    o.safe = 'foo';
    o.searchTerms = 'foo';
    o.searchType = 'foo';
    o.siteSearch = 'foo';
    o.siteSearchFilter = 'foo';
    o.sort = 'foo';
    o.startIndex = 42;
    o.startPage = 42;
    o.title = 'foo';
    o.totalResults = 'foo';
  }
  buildCounterSearchQueriesNextPage--;
  return o;
}

void checkSearchQueriesNextPage(api.SearchQueriesNextPage o) {
  buildCounterSearchQueriesNextPage++;
  if (buildCounterSearchQueriesNextPage < 3) {
    unittest.expect(
      o.count!,
      unittest.equals(42),
    );
    unittest.expect(
      o.cr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cx!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dateRestrict!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.disableCnTwTranslation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exactTerms!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.excludeTerms!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.googleHost!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.highRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hq!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imgColorType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imgDominantColor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imgSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imgType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputEncoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkSite!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lowRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orTerms!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputEncoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relatedSite!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rights!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.safe!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.searchTerms!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.searchType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.siteSearch!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.siteSearchFilter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sort!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchQueriesNextPage--;
}

core.List<api.SearchQueriesNextPage> buildUnnamed5348() => [
      buildSearchQueriesNextPage(),
      buildSearchQueriesNextPage(),
    ];

void checkUnnamed5348(core.List<api.SearchQueriesNextPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchQueriesNextPage(o[0]);
  checkSearchQueriesNextPage(o[1]);
}

core.int buildCounterSearchQueriesPreviousPage = 0;
api.SearchQueriesPreviousPage buildSearchQueriesPreviousPage() {
  final o = api.SearchQueriesPreviousPage();
  buildCounterSearchQueriesPreviousPage++;
  if (buildCounterSearchQueriesPreviousPage < 3) {
    o.count = 42;
    o.cr = 'foo';
    o.cx = 'foo';
    o.dateRestrict = 'foo';
    o.disableCnTwTranslation = 'foo';
    o.exactTerms = 'foo';
    o.excludeTerms = 'foo';
    o.fileType = 'foo';
    o.filter = 'foo';
    o.gl = 'foo';
    o.googleHost = 'foo';
    o.highRange = 'foo';
    o.hl = 'foo';
    o.hq = 'foo';
    o.imgColorType = 'foo';
    o.imgDominantColor = 'foo';
    o.imgSize = 'foo';
    o.imgType = 'foo';
    o.inputEncoding = 'foo';
    o.language = 'foo';
    o.linkSite = 'foo';
    o.lowRange = 'foo';
    o.orTerms = 'foo';
    o.outputEncoding = 'foo';
    o.relatedSite = 'foo';
    o.rights = 'foo';
    o.safe = 'foo';
    o.searchTerms = 'foo';
    o.searchType = 'foo';
    o.siteSearch = 'foo';
    o.siteSearchFilter = 'foo';
    o.sort = 'foo';
    o.startIndex = 42;
    o.startPage = 42;
    o.title = 'foo';
    o.totalResults = 'foo';
  }
  buildCounterSearchQueriesPreviousPage--;
  return o;
}

void checkSearchQueriesPreviousPage(api.SearchQueriesPreviousPage o) {
  buildCounterSearchQueriesPreviousPage++;
  if (buildCounterSearchQueriesPreviousPage < 3) {
    unittest.expect(
      o.count!,
      unittest.equals(42),
    );
    unittest.expect(
      o.cr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cx!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dateRestrict!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.disableCnTwTranslation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exactTerms!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.excludeTerms!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.googleHost!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.highRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hq!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imgColorType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imgDominantColor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imgSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imgType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputEncoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkSite!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lowRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orTerms!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputEncoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relatedSite!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rights!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.safe!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.searchTerms!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.searchType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.siteSearch!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.siteSearchFilter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sort!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchQueriesPreviousPage--;
}

core.List<api.SearchQueriesPreviousPage> buildUnnamed5349() => [
      buildSearchQueriesPreviousPage(),
      buildSearchQueriesPreviousPage(),
    ];

void checkUnnamed5349(core.List<api.SearchQueriesPreviousPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchQueriesPreviousPage(o[0]);
  checkSearchQueriesPreviousPage(o[1]);
}

core.int buildCounterSearchQueriesRequest = 0;
api.SearchQueriesRequest buildSearchQueriesRequest() {
  final o = api.SearchQueriesRequest();
  buildCounterSearchQueriesRequest++;
  if (buildCounterSearchQueriesRequest < 3) {
    o.count = 42;
    o.cr = 'foo';
    o.cx = 'foo';
    o.dateRestrict = 'foo';
    o.disableCnTwTranslation = 'foo';
    o.exactTerms = 'foo';
    o.excludeTerms = 'foo';
    o.fileType = 'foo';
    o.filter = 'foo';
    o.gl = 'foo';
    o.googleHost = 'foo';
    o.highRange = 'foo';
    o.hl = 'foo';
    o.hq = 'foo';
    o.imgColorType = 'foo';
    o.imgDominantColor = 'foo';
    o.imgSize = 'foo';
    o.imgType = 'foo';
    o.inputEncoding = 'foo';
    o.language = 'foo';
    o.linkSite = 'foo';
    o.lowRange = 'foo';
    o.orTerms = 'foo';
    o.outputEncoding = 'foo';
    o.relatedSite = 'foo';
    o.rights = 'foo';
    o.safe = 'foo';
    o.searchTerms = 'foo';
    o.searchType = 'foo';
    o.siteSearch = 'foo';
    o.siteSearchFilter = 'foo';
    o.sort = 'foo';
    o.startIndex = 42;
    o.startPage = 42;
    o.title = 'foo';
    o.totalResults = 'foo';
  }
  buildCounterSearchQueriesRequest--;
  return o;
}

void checkSearchQueriesRequest(api.SearchQueriesRequest o) {
  buildCounterSearchQueriesRequest++;
  if (buildCounterSearchQueriesRequest < 3) {
    unittest.expect(
      o.count!,
      unittest.equals(42),
    );
    unittest.expect(
      o.cr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cx!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dateRestrict!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.disableCnTwTranslation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exactTerms!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.excludeTerms!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.googleHost!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.highRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hq!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imgColorType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imgDominantColor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imgSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imgType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputEncoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkSite!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lowRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orTerms!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputEncoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relatedSite!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rights!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.safe!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.searchTerms!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.searchType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.siteSearch!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.siteSearchFilter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sort!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchQueriesRequest--;
}

core.List<api.SearchQueriesRequest> buildUnnamed5350() => [
      buildSearchQueriesRequest(),
      buildSearchQueriesRequest(),
    ];

void checkUnnamed5350(core.List<api.SearchQueriesRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSearchQueriesRequest(o[0]);
  checkSearchQueriesRequest(o[1]);
}

core.int buildCounterSearchQueries = 0;
api.SearchQueries buildSearchQueries() {
  final o = api.SearchQueries();
  buildCounterSearchQueries++;
  if (buildCounterSearchQueries < 3) {
    o.nextPage = buildUnnamed5348();
    o.previousPage = buildUnnamed5349();
    o.request = buildUnnamed5350();
  }
  buildCounterSearchQueries--;
  return o;
}

void checkSearchQueries(api.SearchQueries o) {
  buildCounterSearchQueries++;
  if (buildCounterSearchQueries < 3) {
    checkUnnamed5348(o.nextPage!);
    checkUnnamed5349(o.previousPage!);
    checkUnnamed5350(o.request!);
  }
  buildCounterSearchQueries--;
}

core.int buildCounterSearchSearchInformation = 0;
api.SearchSearchInformation buildSearchSearchInformation() {
  final o = api.SearchSearchInformation();
  buildCounterSearchSearchInformation++;
  if (buildCounterSearchSearchInformation < 3) {
    o.formattedSearchTime = 'foo';
    o.formattedTotalResults = 'foo';
    o.searchTime = 42.0;
    o.totalResults = 'foo';
  }
  buildCounterSearchSearchInformation--;
  return o;
}

void checkSearchSearchInformation(api.SearchSearchInformation o) {
  buildCounterSearchSearchInformation++;
  if (buildCounterSearchSearchInformation < 3) {
    unittest.expect(
      o.formattedSearchTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formattedTotalResults!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.searchTime!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchSearchInformation--;
}

core.int buildCounterSearchSpelling = 0;
api.SearchSpelling buildSearchSpelling() {
  final o = api.SearchSpelling();
  buildCounterSearchSpelling++;
  if (buildCounterSearchSpelling < 3) {
    o.correctedQuery = 'foo';
    o.htmlCorrectedQuery = 'foo';
  }
  buildCounterSearchSpelling--;
  return o;
}

void checkSearchSpelling(api.SearchSpelling o) {
  buildCounterSearchSpelling++;
  if (buildCounterSearchSpelling < 3) {
    unittest.expect(
      o.correctedQuery!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.htmlCorrectedQuery!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchSpelling--;
}

core.int buildCounterSearchUrl = 0;
api.SearchUrl buildSearchUrl() {
  final o = api.SearchUrl();
  buildCounterSearchUrl++;
  if (buildCounterSearchUrl < 3) {
    o.template = 'foo';
    o.type = 'foo';
  }
  buildCounterSearchUrl--;
  return o;
}

void checkSearchUrl(api.SearchUrl o) {
  buildCounterSearchUrl++;
  if (buildCounterSearchUrl < 3) {
    unittest.expect(
      o.template!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchUrl--;
}

core.int buildCounterSearch = 0;
api.Search buildSearch() {
  final o = api.Search();
  buildCounterSearch++;
  if (buildCounterSearch < 3) {
    o.context = buildUnnamed5345();
    o.items = buildUnnamed5346();
    o.kind = 'foo';
    o.promotions = buildUnnamed5347();
    o.queries = buildSearchQueries();
    o.searchInformation = buildSearchSearchInformation();
    o.spelling = buildSearchSpelling();
    o.url = buildSearchUrl();
  }
  buildCounterSearch--;
  return o;
}

void checkSearch(api.Search o) {
  buildCounterSearch++;
  if (buildCounterSearch < 3) {
    checkUnnamed5345(o.context!);
    checkUnnamed5346(o.items!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed5347(o.promotions!);
    checkSearchQueries(o.queries!);
    checkSearchSearchInformation(o.searchInformation!);
    checkSearchSpelling(o.spelling!);
    checkSearchUrl(o.url!);
  }
  buildCounterSearch--;
}

void main() {
  unittest.group('obj-schema-PromotionBodyLines', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPromotionBodyLines();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PromotionBodyLines.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPromotionBodyLines(od);
    });
  });

  unittest.group('obj-schema-PromotionImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPromotionImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PromotionImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPromotionImage(od);
    });
  });

  unittest.group('obj-schema-Promotion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPromotion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Promotion.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPromotion(od);
    });
  });

  unittest.group('obj-schema-ResultImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResultImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResultImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResultImage(od);
    });
  });

  unittest.group('obj-schema-ResultLabels', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResultLabels();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResultLabels.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResultLabels(od);
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

  unittest.group('obj-schema-SearchQueriesNextPage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchQueriesNextPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchQueriesNextPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchQueriesNextPage(od);
    });
  });

  unittest.group('obj-schema-SearchQueriesPreviousPage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchQueriesPreviousPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchQueriesPreviousPage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchQueriesPreviousPage(od);
    });
  });

  unittest.group('obj-schema-SearchQueriesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchQueriesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchQueriesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchQueriesRequest(od);
    });
  });

  unittest.group('obj-schema-SearchQueries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchQueries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchQueries.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchQueries(od);
    });
  });

  unittest.group('obj-schema-SearchSearchInformation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchSearchInformation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchSearchInformation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchSearchInformation(od);
    });
  });

  unittest.group('obj-schema-SearchSpelling', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchSpelling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchSpelling.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchSpelling(od);
    });
  });

  unittest.group('obj-schema-SearchUrl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchUrl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SearchUrl.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSearchUrl(od);
    });
  });

  unittest.group('obj-schema-Search', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Search.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSearch(od);
    });
  });

  unittest.group('resource-CseResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CustomSearchApi(mock).cse;
      final arg_c2coff = 'foo';
      final arg_cr = 'foo';
      final arg_cx = 'foo';
      final arg_dateRestrict = 'foo';
      final arg_exactTerms = 'foo';
      final arg_excludeTerms = 'foo';
      final arg_fileType = 'foo';
      final arg_filter = 'foo';
      final arg_gl = 'foo';
      final arg_googlehost = 'foo';
      final arg_highRange = 'foo';
      final arg_hl = 'foo';
      final arg_hq = 'foo';
      final arg_imgColorType = 'foo';
      final arg_imgDominantColor = 'foo';
      final arg_imgSize = 'foo';
      final arg_imgType = 'foo';
      final arg_linkSite = 'foo';
      final arg_lowRange = 'foo';
      final arg_lr = 'foo';
      final arg_num = 42;
      final arg_orTerms = 'foo';
      final arg_q = 'foo';
      final arg_relatedSite = 'foo';
      final arg_rights = 'foo';
      final arg_safe = 'foo';
      final arg_searchType = 'foo';
      final arg_siteSearch = 'foo';
      final arg_siteSearchFilter = 'foo';
      final arg_sort = 'foo';
      final arg_start = 42;
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
          unittest.equals('customsearch/v1'),
        );
        pathOffset += 15;

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
          queryMap['c2coff']!.first,
          unittest.equals(arg_c2coff),
        );
        unittest.expect(
          queryMap['cr']!.first,
          unittest.equals(arg_cr),
        );
        unittest.expect(
          queryMap['cx']!.first,
          unittest.equals(arg_cx),
        );
        unittest.expect(
          queryMap['dateRestrict']!.first,
          unittest.equals(arg_dateRestrict),
        );
        unittest.expect(
          queryMap['exactTerms']!.first,
          unittest.equals(arg_exactTerms),
        );
        unittest.expect(
          queryMap['excludeTerms']!.first,
          unittest.equals(arg_excludeTerms),
        );
        unittest.expect(
          queryMap['fileType']!.first,
          unittest.equals(arg_fileType),
        );
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['gl']!.first,
          unittest.equals(arg_gl),
        );
        unittest.expect(
          queryMap['googlehost']!.first,
          unittest.equals(arg_googlehost),
        );
        unittest.expect(
          queryMap['highRange']!.first,
          unittest.equals(arg_highRange),
        );
        unittest.expect(
          queryMap['hl']!.first,
          unittest.equals(arg_hl),
        );
        unittest.expect(
          queryMap['hq']!.first,
          unittest.equals(arg_hq),
        );
        unittest.expect(
          queryMap['imgColorType']!.first,
          unittest.equals(arg_imgColorType),
        );
        unittest.expect(
          queryMap['imgDominantColor']!.first,
          unittest.equals(arg_imgDominantColor),
        );
        unittest.expect(
          queryMap['imgSize']!.first,
          unittest.equals(arg_imgSize),
        );
        unittest.expect(
          queryMap['imgType']!.first,
          unittest.equals(arg_imgType),
        );
        unittest.expect(
          queryMap['linkSite']!.first,
          unittest.equals(arg_linkSite),
        );
        unittest.expect(
          queryMap['lowRange']!.first,
          unittest.equals(arg_lowRange),
        );
        unittest.expect(
          queryMap['lr']!.first,
          unittest.equals(arg_lr),
        );
        unittest.expect(
          core.int.parse(queryMap['num']!.first),
          unittest.equals(arg_num),
        );
        unittest.expect(
          queryMap['orTerms']!.first,
          unittest.equals(arg_orTerms),
        );
        unittest.expect(
          queryMap['q']!.first,
          unittest.equals(arg_q),
        );
        unittest.expect(
          queryMap['relatedSite']!.first,
          unittest.equals(arg_relatedSite),
        );
        unittest.expect(
          queryMap['rights']!.first,
          unittest.equals(arg_rights),
        );
        unittest.expect(
          queryMap['safe']!.first,
          unittest.equals(arg_safe),
        );
        unittest.expect(
          queryMap['searchType']!.first,
          unittest.equals(arg_searchType),
        );
        unittest.expect(
          queryMap['siteSearch']!.first,
          unittest.equals(arg_siteSearch),
        );
        unittest.expect(
          queryMap['siteSearchFilter']!.first,
          unittest.equals(arg_siteSearchFilter),
        );
        unittest.expect(
          queryMap['sort']!.first,
          unittest.equals(arg_sort),
        );
        unittest.expect(
          core.int.parse(queryMap['start']!.first),
          unittest.equals(arg_start),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearch());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          c2coff: arg_c2coff,
          cr: arg_cr,
          cx: arg_cx,
          dateRestrict: arg_dateRestrict,
          exactTerms: arg_exactTerms,
          excludeTerms: arg_excludeTerms,
          fileType: arg_fileType,
          filter: arg_filter,
          gl: arg_gl,
          googlehost: arg_googlehost,
          highRange: arg_highRange,
          hl: arg_hl,
          hq: arg_hq,
          imgColorType: arg_imgColorType,
          imgDominantColor: arg_imgDominantColor,
          imgSize: arg_imgSize,
          imgType: arg_imgType,
          linkSite: arg_linkSite,
          lowRange: arg_lowRange,
          lr: arg_lr,
          num: arg_num,
          orTerms: arg_orTerms,
          q: arg_q,
          relatedSite: arg_relatedSite,
          rights: arg_rights,
          safe: arg_safe,
          searchType: arg_searchType,
          siteSearch: arg_siteSearch,
          siteSearchFilter: arg_siteSearchFilter,
          sort: arg_sort,
          start: arg_start,
          $fields: arg_$fields);
      checkSearch(response as api.Search);
    });
  });

  unittest.group('resource-CseSiterestrictResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CustomSearchApi(mock).cse.siterestrict;
      final arg_c2coff = 'foo';
      final arg_cr = 'foo';
      final arg_cx = 'foo';
      final arg_dateRestrict = 'foo';
      final arg_exactTerms = 'foo';
      final arg_excludeTerms = 'foo';
      final arg_fileType = 'foo';
      final arg_filter = 'foo';
      final arg_gl = 'foo';
      final arg_googlehost = 'foo';
      final arg_highRange = 'foo';
      final arg_hl = 'foo';
      final arg_hq = 'foo';
      final arg_imgColorType = 'foo';
      final arg_imgDominantColor = 'foo';
      final arg_imgSize = 'foo';
      final arg_imgType = 'foo';
      final arg_linkSite = 'foo';
      final arg_lowRange = 'foo';
      final arg_lr = 'foo';
      final arg_num = 42;
      final arg_orTerms = 'foo';
      final arg_q = 'foo';
      final arg_relatedSite = 'foo';
      final arg_rights = 'foo';
      final arg_safe = 'foo';
      final arg_searchType = 'foo';
      final arg_siteSearch = 'foo';
      final arg_siteSearchFilter = 'foo';
      final arg_sort = 'foo';
      final arg_start = 42;
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
          unittest.equals('customsearch/v1/siterestrict'),
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
          queryMap['c2coff']!.first,
          unittest.equals(arg_c2coff),
        );
        unittest.expect(
          queryMap['cr']!.first,
          unittest.equals(arg_cr),
        );
        unittest.expect(
          queryMap['cx']!.first,
          unittest.equals(arg_cx),
        );
        unittest.expect(
          queryMap['dateRestrict']!.first,
          unittest.equals(arg_dateRestrict),
        );
        unittest.expect(
          queryMap['exactTerms']!.first,
          unittest.equals(arg_exactTerms),
        );
        unittest.expect(
          queryMap['excludeTerms']!.first,
          unittest.equals(arg_excludeTerms),
        );
        unittest.expect(
          queryMap['fileType']!.first,
          unittest.equals(arg_fileType),
        );
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['gl']!.first,
          unittest.equals(arg_gl),
        );
        unittest.expect(
          queryMap['googlehost']!.first,
          unittest.equals(arg_googlehost),
        );
        unittest.expect(
          queryMap['highRange']!.first,
          unittest.equals(arg_highRange),
        );
        unittest.expect(
          queryMap['hl']!.first,
          unittest.equals(arg_hl),
        );
        unittest.expect(
          queryMap['hq']!.first,
          unittest.equals(arg_hq),
        );
        unittest.expect(
          queryMap['imgColorType']!.first,
          unittest.equals(arg_imgColorType),
        );
        unittest.expect(
          queryMap['imgDominantColor']!.first,
          unittest.equals(arg_imgDominantColor),
        );
        unittest.expect(
          queryMap['imgSize']!.first,
          unittest.equals(arg_imgSize),
        );
        unittest.expect(
          queryMap['imgType']!.first,
          unittest.equals(arg_imgType),
        );
        unittest.expect(
          queryMap['linkSite']!.first,
          unittest.equals(arg_linkSite),
        );
        unittest.expect(
          queryMap['lowRange']!.first,
          unittest.equals(arg_lowRange),
        );
        unittest.expect(
          queryMap['lr']!.first,
          unittest.equals(arg_lr),
        );
        unittest.expect(
          core.int.parse(queryMap['num']!.first),
          unittest.equals(arg_num),
        );
        unittest.expect(
          queryMap['orTerms']!.first,
          unittest.equals(arg_orTerms),
        );
        unittest.expect(
          queryMap['q']!.first,
          unittest.equals(arg_q),
        );
        unittest.expect(
          queryMap['relatedSite']!.first,
          unittest.equals(arg_relatedSite),
        );
        unittest.expect(
          queryMap['rights']!.first,
          unittest.equals(arg_rights),
        );
        unittest.expect(
          queryMap['safe']!.first,
          unittest.equals(arg_safe),
        );
        unittest.expect(
          queryMap['searchType']!.first,
          unittest.equals(arg_searchType),
        );
        unittest.expect(
          queryMap['siteSearch']!.first,
          unittest.equals(arg_siteSearch),
        );
        unittest.expect(
          queryMap['siteSearchFilter']!.first,
          unittest.equals(arg_siteSearchFilter),
        );
        unittest.expect(
          queryMap['sort']!.first,
          unittest.equals(arg_sort),
        );
        unittest.expect(
          core.int.parse(queryMap['start']!.first),
          unittest.equals(arg_start),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearch());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          c2coff: arg_c2coff,
          cr: arg_cr,
          cx: arg_cx,
          dateRestrict: arg_dateRestrict,
          exactTerms: arg_exactTerms,
          excludeTerms: arg_excludeTerms,
          fileType: arg_fileType,
          filter: arg_filter,
          gl: arg_gl,
          googlehost: arg_googlehost,
          highRange: arg_highRange,
          hl: arg_hl,
          hq: arg_hq,
          imgColorType: arg_imgColorType,
          imgDominantColor: arg_imgDominantColor,
          imgSize: arg_imgSize,
          imgType: arg_imgType,
          linkSite: arg_linkSite,
          lowRange: arg_lowRange,
          lr: arg_lr,
          num: arg_num,
          orTerms: arg_orTerms,
          q: arg_q,
          relatedSite: arg_relatedSite,
          rights: arg_rights,
          safe: arg_safe,
          searchType: arg_searchType,
          siteSearch: arg_siteSearch,
          siteSearchFilter: arg_siteSearchFilter,
          sort: arg_sort,
          start: arg_start,
          $fields: arg_$fields);
      checkSearch(response as api.Search);
    });
  });
}
