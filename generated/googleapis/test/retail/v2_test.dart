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

import 'package:googleapis/retail/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.Map<core.String, core.Object> buildUnnamed0() => {
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

void checkUnnamed0(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed1() => [
      buildUnnamed0(),
      buildUnnamed0(),
    ];

void checkUnnamed1(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed0(o[0]);
  checkUnnamed0(o[1]);
}

core.int buildCounterGoogleApiHttpBody = 0;
api.GoogleApiHttpBody buildGoogleApiHttpBody() {
  final o = api.GoogleApiHttpBody();
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed1();
  }
  buildCounterGoogleApiHttpBody--;
  return o;
}

void checkGoogleApiHttpBody(api.GoogleApiHttpBody o) {
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.extensions!);
  }
  buildCounterGoogleApiHttpBody--;
}

core.int buildCounterGoogleCloudRetailLoggingErrorContext = 0;
api.GoogleCloudRetailLoggingErrorContext
    buildGoogleCloudRetailLoggingErrorContext() {
  final o = api.GoogleCloudRetailLoggingErrorContext();
  buildCounterGoogleCloudRetailLoggingErrorContext++;
  if (buildCounterGoogleCloudRetailLoggingErrorContext < 3) {
    o.httpRequest = buildGoogleCloudRetailLoggingHttpRequestContext();
    o.reportLocation = buildGoogleCloudRetailLoggingSourceLocation();
  }
  buildCounterGoogleCloudRetailLoggingErrorContext--;
  return o;
}

void checkGoogleCloudRetailLoggingErrorContext(
    api.GoogleCloudRetailLoggingErrorContext o) {
  buildCounterGoogleCloudRetailLoggingErrorContext++;
  if (buildCounterGoogleCloudRetailLoggingErrorContext < 3) {
    checkGoogleCloudRetailLoggingHttpRequestContext(o.httpRequest!);
    checkGoogleCloudRetailLoggingSourceLocation(o.reportLocation!);
  }
  buildCounterGoogleCloudRetailLoggingErrorContext--;
}

core.Map<core.String, core.Object> buildUnnamed2() => {
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

void checkUnnamed2(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed3() => {
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

void checkUnnamed3(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudRetailLoggingErrorLog = 0;
api.GoogleCloudRetailLoggingErrorLog buildGoogleCloudRetailLoggingErrorLog() {
  final o = api.GoogleCloudRetailLoggingErrorLog();
  buildCounterGoogleCloudRetailLoggingErrorLog++;
  if (buildCounterGoogleCloudRetailLoggingErrorLog < 3) {
    o.context = buildGoogleCloudRetailLoggingErrorContext();
    o.importPayload = buildGoogleCloudRetailLoggingImportErrorContext();
    o.message = 'foo';
    o.requestPayload = buildUnnamed2();
    o.responsePayload = buildUnnamed3();
    o.serviceContext = buildGoogleCloudRetailLoggingServiceContext();
    o.status = buildGoogleRpcStatus();
  }
  buildCounterGoogleCloudRetailLoggingErrorLog--;
  return o;
}

void checkGoogleCloudRetailLoggingErrorLog(
    api.GoogleCloudRetailLoggingErrorLog o) {
  buildCounterGoogleCloudRetailLoggingErrorLog++;
  if (buildCounterGoogleCloudRetailLoggingErrorLog < 3) {
    checkGoogleCloudRetailLoggingErrorContext(o.context!);
    checkGoogleCloudRetailLoggingImportErrorContext(o.importPayload!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.requestPayload!);
    checkUnnamed3(o.responsePayload!);
    checkGoogleCloudRetailLoggingServiceContext(o.serviceContext!);
    checkGoogleRpcStatus(o.status!);
  }
  buildCounterGoogleCloudRetailLoggingErrorLog--;
}

core.int buildCounterGoogleCloudRetailLoggingHttpRequestContext = 0;
api.GoogleCloudRetailLoggingHttpRequestContext
    buildGoogleCloudRetailLoggingHttpRequestContext() {
  final o = api.GoogleCloudRetailLoggingHttpRequestContext();
  buildCounterGoogleCloudRetailLoggingHttpRequestContext++;
  if (buildCounterGoogleCloudRetailLoggingHttpRequestContext < 3) {
    o.responseStatusCode = 42;
  }
  buildCounterGoogleCloudRetailLoggingHttpRequestContext--;
  return o;
}

void checkGoogleCloudRetailLoggingHttpRequestContext(
    api.GoogleCloudRetailLoggingHttpRequestContext o) {
  buildCounterGoogleCloudRetailLoggingHttpRequestContext++;
  if (buildCounterGoogleCloudRetailLoggingHttpRequestContext < 3) {
    unittest.expect(
      o.responseStatusCode!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudRetailLoggingHttpRequestContext--;
}

core.int buildCounterGoogleCloudRetailLoggingImportErrorContext = 0;
api.GoogleCloudRetailLoggingImportErrorContext
    buildGoogleCloudRetailLoggingImportErrorContext() {
  final o = api.GoogleCloudRetailLoggingImportErrorContext();
  buildCounterGoogleCloudRetailLoggingImportErrorContext++;
  if (buildCounterGoogleCloudRetailLoggingImportErrorContext < 3) {
    o.catalogItem = 'foo';
    o.gcsPath = 'foo';
    o.lineNumber = 'foo';
    o.operationName = 'foo';
    o.product = 'foo';
    o.userEvent = 'foo';
  }
  buildCounterGoogleCloudRetailLoggingImportErrorContext--;
  return o;
}

void checkGoogleCloudRetailLoggingImportErrorContext(
    api.GoogleCloudRetailLoggingImportErrorContext o) {
  buildCounterGoogleCloudRetailLoggingImportErrorContext++;
  if (buildCounterGoogleCloudRetailLoggingImportErrorContext < 3) {
    unittest.expect(
      o.catalogItem!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gcsPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lineNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.product!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userEvent!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailLoggingImportErrorContext--;
}

core.int buildCounterGoogleCloudRetailLoggingServiceContext = 0;
api.GoogleCloudRetailLoggingServiceContext
    buildGoogleCloudRetailLoggingServiceContext() {
  final o = api.GoogleCloudRetailLoggingServiceContext();
  buildCounterGoogleCloudRetailLoggingServiceContext++;
  if (buildCounterGoogleCloudRetailLoggingServiceContext < 3) {
    o.service = 'foo';
  }
  buildCounterGoogleCloudRetailLoggingServiceContext--;
  return o;
}

void checkGoogleCloudRetailLoggingServiceContext(
    api.GoogleCloudRetailLoggingServiceContext o) {
  buildCounterGoogleCloudRetailLoggingServiceContext++;
  if (buildCounterGoogleCloudRetailLoggingServiceContext < 3) {
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailLoggingServiceContext--;
}

core.int buildCounterGoogleCloudRetailLoggingSourceLocation = 0;
api.GoogleCloudRetailLoggingSourceLocation
    buildGoogleCloudRetailLoggingSourceLocation() {
  final o = api.GoogleCloudRetailLoggingSourceLocation();
  buildCounterGoogleCloudRetailLoggingSourceLocation++;
  if (buildCounterGoogleCloudRetailLoggingSourceLocation < 3) {
    o.functionName = 'foo';
  }
  buildCounterGoogleCloudRetailLoggingSourceLocation--;
  return o;
}

void checkGoogleCloudRetailLoggingSourceLocation(
    api.GoogleCloudRetailLoggingSourceLocation o) {
  buildCounterGoogleCloudRetailLoggingSourceLocation++;
  if (buildCounterGoogleCloudRetailLoggingSourceLocation < 3) {
    unittest.expect(
      o.functionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailLoggingSourceLocation--;
}

core.int buildCounterGoogleCloudRetailV2AddFulfillmentPlacesMetadata = 0;
api.GoogleCloudRetailV2AddFulfillmentPlacesMetadata
    buildGoogleCloudRetailV2AddFulfillmentPlacesMetadata() {
  final o = api.GoogleCloudRetailV2AddFulfillmentPlacesMetadata();
  buildCounterGoogleCloudRetailV2AddFulfillmentPlacesMetadata++;
  if (buildCounterGoogleCloudRetailV2AddFulfillmentPlacesMetadata < 3) {}
  buildCounterGoogleCloudRetailV2AddFulfillmentPlacesMetadata--;
  return o;
}

void checkGoogleCloudRetailV2AddFulfillmentPlacesMetadata(
    api.GoogleCloudRetailV2AddFulfillmentPlacesMetadata o) {
  buildCounterGoogleCloudRetailV2AddFulfillmentPlacesMetadata++;
  if (buildCounterGoogleCloudRetailV2AddFulfillmentPlacesMetadata < 3) {}
  buildCounterGoogleCloudRetailV2AddFulfillmentPlacesMetadata--;
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRetailV2AddFulfillmentPlacesRequest = 0;
api.GoogleCloudRetailV2AddFulfillmentPlacesRequest
    buildGoogleCloudRetailV2AddFulfillmentPlacesRequest() {
  final o = api.GoogleCloudRetailV2AddFulfillmentPlacesRequest();
  buildCounterGoogleCloudRetailV2AddFulfillmentPlacesRequest++;
  if (buildCounterGoogleCloudRetailV2AddFulfillmentPlacesRequest < 3) {
    o.addTime = 'foo';
    o.allowMissing = true;
    o.placeIds = buildUnnamed4();
    o.type = 'foo';
  }
  buildCounterGoogleCloudRetailV2AddFulfillmentPlacesRequest--;
  return o;
}

void checkGoogleCloudRetailV2AddFulfillmentPlacesRequest(
    api.GoogleCloudRetailV2AddFulfillmentPlacesRequest o) {
  buildCounterGoogleCloudRetailV2AddFulfillmentPlacesRequest++;
  if (buildCounterGoogleCloudRetailV2AddFulfillmentPlacesRequest < 3) {
    unittest.expect(
      o.addTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkUnnamed4(o.placeIds!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2AddFulfillmentPlacesRequest--;
}

core.int buildCounterGoogleCloudRetailV2AddFulfillmentPlacesResponse = 0;
api.GoogleCloudRetailV2AddFulfillmentPlacesResponse
    buildGoogleCloudRetailV2AddFulfillmentPlacesResponse() {
  final o = api.GoogleCloudRetailV2AddFulfillmentPlacesResponse();
  buildCounterGoogleCloudRetailV2AddFulfillmentPlacesResponse++;
  if (buildCounterGoogleCloudRetailV2AddFulfillmentPlacesResponse < 3) {}
  buildCounterGoogleCloudRetailV2AddFulfillmentPlacesResponse--;
  return o;
}

void checkGoogleCloudRetailV2AddFulfillmentPlacesResponse(
    api.GoogleCloudRetailV2AddFulfillmentPlacesResponse o) {
  buildCounterGoogleCloudRetailV2AddFulfillmentPlacesResponse++;
  if (buildCounterGoogleCloudRetailV2AddFulfillmentPlacesResponse < 3) {}
  buildCounterGoogleCloudRetailV2AddFulfillmentPlacesResponse--;
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRetailV2Audience = 0;
api.GoogleCloudRetailV2Audience buildGoogleCloudRetailV2Audience() {
  final o = api.GoogleCloudRetailV2Audience();
  buildCounterGoogleCloudRetailV2Audience++;
  if (buildCounterGoogleCloudRetailV2Audience < 3) {
    o.ageGroups = buildUnnamed5();
    o.genders = buildUnnamed6();
  }
  buildCounterGoogleCloudRetailV2Audience--;
  return o;
}

void checkGoogleCloudRetailV2Audience(api.GoogleCloudRetailV2Audience o) {
  buildCounterGoogleCloudRetailV2Audience++;
  if (buildCounterGoogleCloudRetailV2Audience < 3) {
    checkUnnamed5(o.ageGroups!);
    checkUnnamed6(o.genders!);
  }
  buildCounterGoogleCloudRetailV2Audience--;
}

core.int buildCounterGoogleCloudRetailV2BigQuerySource = 0;
api.GoogleCloudRetailV2BigQuerySource buildGoogleCloudRetailV2BigQuerySource() {
  final o = api.GoogleCloudRetailV2BigQuerySource();
  buildCounterGoogleCloudRetailV2BigQuerySource++;
  if (buildCounterGoogleCloudRetailV2BigQuerySource < 3) {
    o.dataSchema = 'foo';
    o.datasetId = 'foo';
    o.gcsStagingDir = 'foo';
    o.partitionDate = buildGoogleTypeDate();
    o.projectId = 'foo';
    o.tableId = 'foo';
  }
  buildCounterGoogleCloudRetailV2BigQuerySource--;
  return o;
}

void checkGoogleCloudRetailV2BigQuerySource(
    api.GoogleCloudRetailV2BigQuerySource o) {
  buildCounterGoogleCloudRetailV2BigQuerySource++;
  if (buildCounterGoogleCloudRetailV2BigQuerySource < 3) {
    unittest.expect(
      o.dataSchema!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.datasetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gcsStagingDir!,
      unittest.equals('foo'),
    );
    checkGoogleTypeDate(o.partitionDate!);
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tableId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2BigQuerySource--;
}

core.int buildCounterGoogleCloudRetailV2Catalog = 0;
api.GoogleCloudRetailV2Catalog buildGoogleCloudRetailV2Catalog() {
  final o = api.GoogleCloudRetailV2Catalog();
  buildCounterGoogleCloudRetailV2Catalog++;
  if (buildCounterGoogleCloudRetailV2Catalog < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.productLevelConfig = buildGoogleCloudRetailV2ProductLevelConfig();
  }
  buildCounterGoogleCloudRetailV2Catalog--;
  return o;
}

void checkGoogleCloudRetailV2Catalog(api.GoogleCloudRetailV2Catalog o) {
  buildCounterGoogleCloudRetailV2Catalog++;
  if (buildCounterGoogleCloudRetailV2Catalog < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRetailV2ProductLevelConfig(o.productLevelConfig!);
  }
  buildCounterGoogleCloudRetailV2Catalog--;
}

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRetailV2ColorInfo = 0;
api.GoogleCloudRetailV2ColorInfo buildGoogleCloudRetailV2ColorInfo() {
  final o = api.GoogleCloudRetailV2ColorInfo();
  buildCounterGoogleCloudRetailV2ColorInfo++;
  if (buildCounterGoogleCloudRetailV2ColorInfo < 3) {
    o.colorFamilies = buildUnnamed7();
    o.colors = buildUnnamed8();
  }
  buildCounterGoogleCloudRetailV2ColorInfo--;
  return o;
}

void checkGoogleCloudRetailV2ColorInfo(api.GoogleCloudRetailV2ColorInfo o) {
  buildCounterGoogleCloudRetailV2ColorInfo++;
  if (buildCounterGoogleCloudRetailV2ColorInfo < 3) {
    checkUnnamed7(o.colorFamilies!);
    checkUnnamed8(o.colors!);
  }
  buildCounterGoogleCloudRetailV2ColorInfo--;
}

core.List<api.GoogleCloudRetailV2CompleteQueryResponseCompletionResult>
    buildUnnamed9() => [
          buildGoogleCloudRetailV2CompleteQueryResponseCompletionResult(),
          buildGoogleCloudRetailV2CompleteQueryResponseCompletionResult(),
        ];

void checkUnnamed9(
    core.List<api.GoogleCloudRetailV2CompleteQueryResponseCompletionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2CompleteQueryResponseCompletionResult(o[0]);
  checkGoogleCloudRetailV2CompleteQueryResponseCompletionResult(o[1]);
}

core.List<api.GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult>
    buildUnnamed10() => [
          buildGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult(),
          buildGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult(),
        ];

void checkUnnamed10(
    core.List<api.GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult(o[0]);
  checkGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult(o[1]);
}

core.int buildCounterGoogleCloudRetailV2CompleteQueryResponse = 0;
api.GoogleCloudRetailV2CompleteQueryResponse
    buildGoogleCloudRetailV2CompleteQueryResponse() {
  final o = api.GoogleCloudRetailV2CompleteQueryResponse();
  buildCounterGoogleCloudRetailV2CompleteQueryResponse++;
  if (buildCounterGoogleCloudRetailV2CompleteQueryResponse < 3) {
    o.attributionToken = 'foo';
    o.completionResults = buildUnnamed9();
    o.recentSearchResults = buildUnnamed10();
  }
  buildCounterGoogleCloudRetailV2CompleteQueryResponse--;
  return o;
}

void checkGoogleCloudRetailV2CompleteQueryResponse(
    api.GoogleCloudRetailV2CompleteQueryResponse o) {
  buildCounterGoogleCloudRetailV2CompleteQueryResponse++;
  if (buildCounterGoogleCloudRetailV2CompleteQueryResponse < 3) {
    unittest.expect(
      o.attributionToken!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.completionResults!);
    checkUnnamed10(o.recentSearchResults!);
  }
  buildCounterGoogleCloudRetailV2CompleteQueryResponse--;
}

core.Map<core.String, api.GoogleCloudRetailV2CustomAttribute>
    buildUnnamed11() => {
          'x': buildGoogleCloudRetailV2CustomAttribute(),
          'y': buildGoogleCloudRetailV2CustomAttribute(),
        };

void checkUnnamed11(
    core.Map<core.String, api.GoogleCloudRetailV2CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2CustomAttribute(o['x']!);
  checkGoogleCloudRetailV2CustomAttribute(o['y']!);
}

core.int buildCounterGoogleCloudRetailV2CompleteQueryResponseCompletionResult =
    0;
api.GoogleCloudRetailV2CompleteQueryResponseCompletionResult
    buildGoogleCloudRetailV2CompleteQueryResponseCompletionResult() {
  final o = api.GoogleCloudRetailV2CompleteQueryResponseCompletionResult();
  buildCounterGoogleCloudRetailV2CompleteQueryResponseCompletionResult++;
  if (buildCounterGoogleCloudRetailV2CompleteQueryResponseCompletionResult <
      3) {
    o.attributes = buildUnnamed11();
    o.suggestion = 'foo';
  }
  buildCounterGoogleCloudRetailV2CompleteQueryResponseCompletionResult--;
  return o;
}

void checkGoogleCloudRetailV2CompleteQueryResponseCompletionResult(
    api.GoogleCloudRetailV2CompleteQueryResponseCompletionResult o) {
  buildCounterGoogleCloudRetailV2CompleteQueryResponseCompletionResult++;
  if (buildCounterGoogleCloudRetailV2CompleteQueryResponseCompletionResult <
      3) {
    checkUnnamed11(o.attributes!);
    unittest.expect(
      o.suggestion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2CompleteQueryResponseCompletionResult--;
}

core.int
    buildCounterGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult = 0;
api.GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult
    buildGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult() {
  final o = api.GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult();
  buildCounterGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult++;
  if (buildCounterGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult <
      3) {
    o.recentSearch = 'foo';
  }
  buildCounterGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult--;
  return o;
}

void checkGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult(
    api.GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult o) {
  buildCounterGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult++;
  if (buildCounterGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult <
      3) {
    unittest.expect(
      o.recentSearch!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult--;
}

core.int buildCounterGoogleCloudRetailV2CompletionDataInputConfig = 0;
api.GoogleCloudRetailV2CompletionDataInputConfig
    buildGoogleCloudRetailV2CompletionDataInputConfig() {
  final o = api.GoogleCloudRetailV2CompletionDataInputConfig();
  buildCounterGoogleCloudRetailV2CompletionDataInputConfig++;
  if (buildCounterGoogleCloudRetailV2CompletionDataInputConfig < 3) {
    o.bigQuerySource = buildGoogleCloudRetailV2BigQuerySource();
  }
  buildCounterGoogleCloudRetailV2CompletionDataInputConfig--;
  return o;
}

void checkGoogleCloudRetailV2CompletionDataInputConfig(
    api.GoogleCloudRetailV2CompletionDataInputConfig o) {
  buildCounterGoogleCloudRetailV2CompletionDataInputConfig++;
  if (buildCounterGoogleCloudRetailV2CompletionDataInputConfig < 3) {
    checkGoogleCloudRetailV2BigQuerySource(o.bigQuerySource!);
  }
  buildCounterGoogleCloudRetailV2CompletionDataInputConfig--;
}

core.int buildCounterGoogleCloudRetailV2CompletionDetail = 0;
api.GoogleCloudRetailV2CompletionDetail
    buildGoogleCloudRetailV2CompletionDetail() {
  final o = api.GoogleCloudRetailV2CompletionDetail();
  buildCounterGoogleCloudRetailV2CompletionDetail++;
  if (buildCounterGoogleCloudRetailV2CompletionDetail < 3) {
    o.completionAttributionToken = 'foo';
    o.selectedPosition = 42;
    o.selectedSuggestion = 'foo';
  }
  buildCounterGoogleCloudRetailV2CompletionDetail--;
  return o;
}

void checkGoogleCloudRetailV2CompletionDetail(
    api.GoogleCloudRetailV2CompletionDetail o) {
  buildCounterGoogleCloudRetailV2CompletionDetail++;
  if (buildCounterGoogleCloudRetailV2CompletionDetail < 3) {
    unittest.expect(
      o.completionAttributionToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selectedPosition!,
      unittest.equals(42),
    );
    unittest.expect(
      o.selectedSuggestion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2CompletionDetail--;
}

core.List<core.double> buildUnnamed12() => [
      42.0,
      42.0,
    ];

void checkUnnamed12(core.List<core.double> o) {
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

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRetailV2CustomAttribute = 0;
api.GoogleCloudRetailV2CustomAttribute
    buildGoogleCloudRetailV2CustomAttribute() {
  final o = api.GoogleCloudRetailV2CustomAttribute();
  buildCounterGoogleCloudRetailV2CustomAttribute++;
  if (buildCounterGoogleCloudRetailV2CustomAttribute < 3) {
    o.indexable = true;
    o.numbers = buildUnnamed12();
    o.searchable = true;
    o.text = buildUnnamed13();
  }
  buildCounterGoogleCloudRetailV2CustomAttribute--;
  return o;
}

void checkGoogleCloudRetailV2CustomAttribute(
    api.GoogleCloudRetailV2CustomAttribute o) {
  buildCounterGoogleCloudRetailV2CustomAttribute++;
  if (buildCounterGoogleCloudRetailV2CustomAttribute < 3) {
    unittest.expect(o.indexable!, unittest.isTrue);
    checkUnnamed12(o.numbers!);
    unittest.expect(o.searchable!, unittest.isTrue);
    checkUnnamed13(o.text!);
  }
  buildCounterGoogleCloudRetailV2CustomAttribute--;
}

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRetailV2FulfillmentInfo = 0;
api.GoogleCloudRetailV2FulfillmentInfo
    buildGoogleCloudRetailV2FulfillmentInfo() {
  final o = api.GoogleCloudRetailV2FulfillmentInfo();
  buildCounterGoogleCloudRetailV2FulfillmentInfo++;
  if (buildCounterGoogleCloudRetailV2FulfillmentInfo < 3) {
    o.placeIds = buildUnnamed14();
    o.type = 'foo';
  }
  buildCounterGoogleCloudRetailV2FulfillmentInfo--;
  return o;
}

void checkGoogleCloudRetailV2FulfillmentInfo(
    api.GoogleCloudRetailV2FulfillmentInfo o) {
  buildCounterGoogleCloudRetailV2FulfillmentInfo++;
  if (buildCounterGoogleCloudRetailV2FulfillmentInfo < 3) {
    checkUnnamed14(o.placeIds!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2FulfillmentInfo--;
}

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRetailV2GcsSource = 0;
api.GoogleCloudRetailV2GcsSource buildGoogleCloudRetailV2GcsSource() {
  final o = api.GoogleCloudRetailV2GcsSource();
  buildCounterGoogleCloudRetailV2GcsSource++;
  if (buildCounterGoogleCloudRetailV2GcsSource < 3) {
    o.dataSchema = 'foo';
    o.inputUris = buildUnnamed15();
  }
  buildCounterGoogleCloudRetailV2GcsSource--;
  return o;
}

void checkGoogleCloudRetailV2GcsSource(api.GoogleCloudRetailV2GcsSource o) {
  buildCounterGoogleCloudRetailV2GcsSource++;
  if (buildCounterGoogleCloudRetailV2GcsSource < 3) {
    unittest.expect(
      o.dataSchema!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.inputUris!);
  }
  buildCounterGoogleCloudRetailV2GcsSource--;
}

core.int buildCounterGoogleCloudRetailV2GetDefaultBranchResponse = 0;
api.GoogleCloudRetailV2GetDefaultBranchResponse
    buildGoogleCloudRetailV2GetDefaultBranchResponse() {
  final o = api.GoogleCloudRetailV2GetDefaultBranchResponse();
  buildCounterGoogleCloudRetailV2GetDefaultBranchResponse++;
  if (buildCounterGoogleCloudRetailV2GetDefaultBranchResponse < 3) {
    o.branch = 'foo';
    o.note = 'foo';
    o.setTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2GetDefaultBranchResponse--;
  return o;
}

void checkGoogleCloudRetailV2GetDefaultBranchResponse(
    api.GoogleCloudRetailV2GetDefaultBranchResponse o) {
  buildCounterGoogleCloudRetailV2GetDefaultBranchResponse++;
  if (buildCounterGoogleCloudRetailV2GetDefaultBranchResponse < 3) {
    unittest.expect(
      o.branch!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.note!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.setTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2GetDefaultBranchResponse--;
}

core.int buildCounterGoogleCloudRetailV2Image = 0;
api.GoogleCloudRetailV2Image buildGoogleCloudRetailV2Image() {
  final o = api.GoogleCloudRetailV2Image();
  buildCounterGoogleCloudRetailV2Image++;
  if (buildCounterGoogleCloudRetailV2Image < 3) {
    o.height = 42;
    o.uri = 'foo';
    o.width = 42;
  }
  buildCounterGoogleCloudRetailV2Image--;
  return o;
}

void checkGoogleCloudRetailV2Image(api.GoogleCloudRetailV2Image o) {
  buildCounterGoogleCloudRetailV2Image++;
  if (buildCounterGoogleCloudRetailV2Image < 3) {
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudRetailV2Image--;
}

core.int buildCounterGoogleCloudRetailV2ImportCompletionDataRequest = 0;
api.GoogleCloudRetailV2ImportCompletionDataRequest
    buildGoogleCloudRetailV2ImportCompletionDataRequest() {
  final o = api.GoogleCloudRetailV2ImportCompletionDataRequest();
  buildCounterGoogleCloudRetailV2ImportCompletionDataRequest++;
  if (buildCounterGoogleCloudRetailV2ImportCompletionDataRequest < 3) {
    o.inputConfig = buildGoogleCloudRetailV2CompletionDataInputConfig();
    o.notificationPubsubTopic = 'foo';
  }
  buildCounterGoogleCloudRetailV2ImportCompletionDataRequest--;
  return o;
}

void checkGoogleCloudRetailV2ImportCompletionDataRequest(
    api.GoogleCloudRetailV2ImportCompletionDataRequest o) {
  buildCounterGoogleCloudRetailV2ImportCompletionDataRequest++;
  if (buildCounterGoogleCloudRetailV2ImportCompletionDataRequest < 3) {
    checkGoogleCloudRetailV2CompletionDataInputConfig(o.inputConfig!);
    unittest.expect(
      o.notificationPubsubTopic!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2ImportCompletionDataRequest--;
}

core.List<api.GoogleRpcStatus> buildUnnamed16() => [
      buildGoogleRpcStatus(),
      buildGoogleRpcStatus(),
    ];

void checkUnnamed16(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int buildCounterGoogleCloudRetailV2ImportCompletionDataResponse = 0;
api.GoogleCloudRetailV2ImportCompletionDataResponse
    buildGoogleCloudRetailV2ImportCompletionDataResponse() {
  final o = api.GoogleCloudRetailV2ImportCompletionDataResponse();
  buildCounterGoogleCloudRetailV2ImportCompletionDataResponse++;
  if (buildCounterGoogleCloudRetailV2ImportCompletionDataResponse < 3) {
    o.errorSamples = buildUnnamed16();
  }
  buildCounterGoogleCloudRetailV2ImportCompletionDataResponse--;
  return o;
}

void checkGoogleCloudRetailV2ImportCompletionDataResponse(
    api.GoogleCloudRetailV2ImportCompletionDataResponse o) {
  buildCounterGoogleCloudRetailV2ImportCompletionDataResponse++;
  if (buildCounterGoogleCloudRetailV2ImportCompletionDataResponse < 3) {
    checkUnnamed16(o.errorSamples!);
  }
  buildCounterGoogleCloudRetailV2ImportCompletionDataResponse--;
}

core.int buildCounterGoogleCloudRetailV2ImportErrorsConfig = 0;
api.GoogleCloudRetailV2ImportErrorsConfig
    buildGoogleCloudRetailV2ImportErrorsConfig() {
  final o = api.GoogleCloudRetailV2ImportErrorsConfig();
  buildCounterGoogleCloudRetailV2ImportErrorsConfig++;
  if (buildCounterGoogleCloudRetailV2ImportErrorsConfig < 3) {
    o.gcsPrefix = 'foo';
  }
  buildCounterGoogleCloudRetailV2ImportErrorsConfig--;
  return o;
}

void checkGoogleCloudRetailV2ImportErrorsConfig(
    api.GoogleCloudRetailV2ImportErrorsConfig o) {
  buildCounterGoogleCloudRetailV2ImportErrorsConfig++;
  if (buildCounterGoogleCloudRetailV2ImportErrorsConfig < 3) {
    unittest.expect(
      o.gcsPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2ImportErrorsConfig--;
}

core.int buildCounterGoogleCloudRetailV2ImportMetadata = 0;
api.GoogleCloudRetailV2ImportMetadata buildGoogleCloudRetailV2ImportMetadata() {
  final o = api.GoogleCloudRetailV2ImportMetadata();
  buildCounterGoogleCloudRetailV2ImportMetadata++;
  if (buildCounterGoogleCloudRetailV2ImportMetadata < 3) {
    o.createTime = 'foo';
    o.failureCount = 'foo';
    o.notificationPubsubTopic = 'foo';
    o.requestId = 'foo';
    o.successCount = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2ImportMetadata--;
  return o;
}

void checkGoogleCloudRetailV2ImportMetadata(
    api.GoogleCloudRetailV2ImportMetadata o) {
  buildCounterGoogleCloudRetailV2ImportMetadata++;
  if (buildCounterGoogleCloudRetailV2ImportMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failureCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notificationPubsubTopic!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.successCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2ImportMetadata--;
}

core.int buildCounterGoogleCloudRetailV2ImportProductsRequest = 0;
api.GoogleCloudRetailV2ImportProductsRequest
    buildGoogleCloudRetailV2ImportProductsRequest() {
  final o = api.GoogleCloudRetailV2ImportProductsRequest();
  buildCounterGoogleCloudRetailV2ImportProductsRequest++;
  if (buildCounterGoogleCloudRetailV2ImportProductsRequest < 3) {
    o.errorsConfig = buildGoogleCloudRetailV2ImportErrorsConfig();
    o.inputConfig = buildGoogleCloudRetailV2ProductInputConfig();
    o.notificationPubsubTopic = 'foo';
    o.reconciliationMode = 'foo';
    o.requestId = 'foo';
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudRetailV2ImportProductsRequest--;
  return o;
}

void checkGoogleCloudRetailV2ImportProductsRequest(
    api.GoogleCloudRetailV2ImportProductsRequest o) {
  buildCounterGoogleCloudRetailV2ImportProductsRequest++;
  if (buildCounterGoogleCloudRetailV2ImportProductsRequest < 3) {
    checkGoogleCloudRetailV2ImportErrorsConfig(o.errorsConfig!);
    checkGoogleCloudRetailV2ProductInputConfig(o.inputConfig!);
    unittest.expect(
      o.notificationPubsubTopic!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reconciliationMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2ImportProductsRequest--;
}

core.List<api.GoogleRpcStatus> buildUnnamed17() => [
      buildGoogleRpcStatus(),
      buildGoogleRpcStatus(),
    ];

void checkUnnamed17(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int buildCounterGoogleCloudRetailV2ImportProductsResponse = 0;
api.GoogleCloudRetailV2ImportProductsResponse
    buildGoogleCloudRetailV2ImportProductsResponse() {
  final o = api.GoogleCloudRetailV2ImportProductsResponse();
  buildCounterGoogleCloudRetailV2ImportProductsResponse++;
  if (buildCounterGoogleCloudRetailV2ImportProductsResponse < 3) {
    o.errorSamples = buildUnnamed17();
    o.errorsConfig = buildGoogleCloudRetailV2ImportErrorsConfig();
  }
  buildCounterGoogleCloudRetailV2ImportProductsResponse--;
  return o;
}

void checkGoogleCloudRetailV2ImportProductsResponse(
    api.GoogleCloudRetailV2ImportProductsResponse o) {
  buildCounterGoogleCloudRetailV2ImportProductsResponse++;
  if (buildCounterGoogleCloudRetailV2ImportProductsResponse < 3) {
    checkUnnamed17(o.errorSamples!);
    checkGoogleCloudRetailV2ImportErrorsConfig(o.errorsConfig!);
  }
  buildCounterGoogleCloudRetailV2ImportProductsResponse--;
}

core.int buildCounterGoogleCloudRetailV2ImportUserEventsRequest = 0;
api.GoogleCloudRetailV2ImportUserEventsRequest
    buildGoogleCloudRetailV2ImportUserEventsRequest() {
  final o = api.GoogleCloudRetailV2ImportUserEventsRequest();
  buildCounterGoogleCloudRetailV2ImportUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2ImportUserEventsRequest < 3) {
    o.errorsConfig = buildGoogleCloudRetailV2ImportErrorsConfig();
    o.inputConfig = buildGoogleCloudRetailV2UserEventInputConfig();
  }
  buildCounterGoogleCloudRetailV2ImportUserEventsRequest--;
  return o;
}

void checkGoogleCloudRetailV2ImportUserEventsRequest(
    api.GoogleCloudRetailV2ImportUserEventsRequest o) {
  buildCounterGoogleCloudRetailV2ImportUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2ImportUserEventsRequest < 3) {
    checkGoogleCloudRetailV2ImportErrorsConfig(o.errorsConfig!);
    checkGoogleCloudRetailV2UserEventInputConfig(o.inputConfig!);
  }
  buildCounterGoogleCloudRetailV2ImportUserEventsRequest--;
}

core.List<api.GoogleRpcStatus> buildUnnamed18() => [
      buildGoogleRpcStatus(),
      buildGoogleRpcStatus(),
    ];

void checkUnnamed18(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int buildCounterGoogleCloudRetailV2ImportUserEventsResponse = 0;
api.GoogleCloudRetailV2ImportUserEventsResponse
    buildGoogleCloudRetailV2ImportUserEventsResponse() {
  final o = api.GoogleCloudRetailV2ImportUserEventsResponse();
  buildCounterGoogleCloudRetailV2ImportUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2ImportUserEventsResponse < 3) {
    o.errorSamples = buildUnnamed18();
    o.errorsConfig = buildGoogleCloudRetailV2ImportErrorsConfig();
    o.importSummary = buildGoogleCloudRetailV2UserEventImportSummary();
  }
  buildCounterGoogleCloudRetailV2ImportUserEventsResponse--;
  return o;
}

void checkGoogleCloudRetailV2ImportUserEventsResponse(
    api.GoogleCloudRetailV2ImportUserEventsResponse o) {
  buildCounterGoogleCloudRetailV2ImportUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2ImportUserEventsResponse < 3) {
    checkUnnamed18(o.errorSamples!);
    checkGoogleCloudRetailV2ImportErrorsConfig(o.errorsConfig!);
    checkGoogleCloudRetailV2UserEventImportSummary(o.importSummary!);
  }
  buildCounterGoogleCloudRetailV2ImportUserEventsResponse--;
}

core.int buildCounterGoogleCloudRetailV2Interval = 0;
api.GoogleCloudRetailV2Interval buildGoogleCloudRetailV2Interval() {
  final o = api.GoogleCloudRetailV2Interval();
  buildCounterGoogleCloudRetailV2Interval++;
  if (buildCounterGoogleCloudRetailV2Interval < 3) {
    o.exclusiveMaximum = 42.0;
    o.exclusiveMinimum = 42.0;
    o.maximum = 42.0;
    o.minimum = 42.0;
  }
  buildCounterGoogleCloudRetailV2Interval--;
  return o;
}

void checkGoogleCloudRetailV2Interval(api.GoogleCloudRetailV2Interval o) {
  buildCounterGoogleCloudRetailV2Interval++;
  if (buildCounterGoogleCloudRetailV2Interval < 3) {
    unittest.expect(
      o.exclusiveMaximum!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.exclusiveMinimum!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.maximum!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.minimum!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudRetailV2Interval--;
}

core.List<api.GoogleCloudRetailV2Catalog> buildUnnamed19() => [
      buildGoogleCloudRetailV2Catalog(),
      buildGoogleCloudRetailV2Catalog(),
    ];

void checkUnnamed19(core.List<api.GoogleCloudRetailV2Catalog> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Catalog(o[0]);
  checkGoogleCloudRetailV2Catalog(o[1]);
}

core.int buildCounterGoogleCloudRetailV2ListCatalogsResponse = 0;
api.GoogleCloudRetailV2ListCatalogsResponse
    buildGoogleCloudRetailV2ListCatalogsResponse() {
  final o = api.GoogleCloudRetailV2ListCatalogsResponse();
  buildCounterGoogleCloudRetailV2ListCatalogsResponse++;
  if (buildCounterGoogleCloudRetailV2ListCatalogsResponse < 3) {
    o.catalogs = buildUnnamed19();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRetailV2ListCatalogsResponse--;
  return o;
}

void checkGoogleCloudRetailV2ListCatalogsResponse(
    api.GoogleCloudRetailV2ListCatalogsResponse o) {
  buildCounterGoogleCloudRetailV2ListCatalogsResponse++;
  if (buildCounterGoogleCloudRetailV2ListCatalogsResponse < 3) {
    checkUnnamed19(o.catalogs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2ListCatalogsResponse--;
}

core.List<api.GoogleCloudRetailV2Product> buildUnnamed20() => [
      buildGoogleCloudRetailV2Product(),
      buildGoogleCloudRetailV2Product(),
    ];

void checkUnnamed20(core.List<api.GoogleCloudRetailV2Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Product(o[0]);
  checkGoogleCloudRetailV2Product(o[1]);
}

core.int buildCounterGoogleCloudRetailV2ListProductsResponse = 0;
api.GoogleCloudRetailV2ListProductsResponse
    buildGoogleCloudRetailV2ListProductsResponse() {
  final o = api.GoogleCloudRetailV2ListProductsResponse();
  buildCounterGoogleCloudRetailV2ListProductsResponse++;
  if (buildCounterGoogleCloudRetailV2ListProductsResponse < 3) {
    o.nextPageToken = 'foo';
    o.products = buildUnnamed20();
  }
  buildCounterGoogleCloudRetailV2ListProductsResponse--;
  return o;
}

void checkGoogleCloudRetailV2ListProductsResponse(
    api.GoogleCloudRetailV2ListProductsResponse o) {
  buildCounterGoogleCloudRetailV2ListProductsResponse++;
  if (buildCounterGoogleCloudRetailV2ListProductsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.products!);
  }
  buildCounterGoogleCloudRetailV2ListProductsResponse--;
}

core.Map<core.String, core.String> buildUnnamed21() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed21(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object> buildUnnamed22() => {
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

void checkUnnamed22(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudRetailV2PredictRequest = 0;
api.GoogleCloudRetailV2PredictRequest buildGoogleCloudRetailV2PredictRequest() {
  final o = api.GoogleCloudRetailV2PredictRequest();
  buildCounterGoogleCloudRetailV2PredictRequest++;
  if (buildCounterGoogleCloudRetailV2PredictRequest < 3) {
    o.filter = 'foo';
    o.labels = buildUnnamed21();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.params = buildUnnamed22();
    o.userEvent = buildGoogleCloudRetailV2UserEvent();
    o.validateOnly = true;
  }
  buildCounterGoogleCloudRetailV2PredictRequest--;
  return o;
}

void checkGoogleCloudRetailV2PredictRequest(
    api.GoogleCloudRetailV2PredictRequest o) {
  buildCounterGoogleCloudRetailV2PredictRequest++;
  if (buildCounterGoogleCloudRetailV2PredictRequest < 3) {
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.labels!);
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.params!);
    checkGoogleCloudRetailV2UserEvent(o.userEvent!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2PredictRequest--;
}

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
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

core.List<api.GoogleCloudRetailV2PredictResponsePredictionResult>
    buildUnnamed24() => [
          buildGoogleCloudRetailV2PredictResponsePredictionResult(),
          buildGoogleCloudRetailV2PredictResponsePredictionResult(),
        ];

void checkUnnamed24(
    core.List<api.GoogleCloudRetailV2PredictResponsePredictionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2PredictResponsePredictionResult(o[0]);
  checkGoogleCloudRetailV2PredictResponsePredictionResult(o[1]);
}

core.int buildCounterGoogleCloudRetailV2PredictResponse = 0;
api.GoogleCloudRetailV2PredictResponse
    buildGoogleCloudRetailV2PredictResponse() {
  final o = api.GoogleCloudRetailV2PredictResponse();
  buildCounterGoogleCloudRetailV2PredictResponse++;
  if (buildCounterGoogleCloudRetailV2PredictResponse < 3) {
    o.attributionToken = 'foo';
    o.missingIds = buildUnnamed23();
    o.results = buildUnnamed24();
    o.validateOnly = true;
  }
  buildCounterGoogleCloudRetailV2PredictResponse--;
  return o;
}

void checkGoogleCloudRetailV2PredictResponse(
    api.GoogleCloudRetailV2PredictResponse o) {
  buildCounterGoogleCloudRetailV2PredictResponse++;
  if (buildCounterGoogleCloudRetailV2PredictResponse < 3) {
    unittest.expect(
      o.attributionToken!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.missingIds!);
    checkUnnamed24(o.results!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2PredictResponse--;
}

core.Map<core.String, core.Object> buildUnnamed25() => {
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

void checkUnnamed25(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(
    casted9['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted9['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted9['string'],
    unittest.equals('foo'),
  );
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(
    casted10['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted10['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted10['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudRetailV2PredictResponsePredictionResult = 0;
api.GoogleCloudRetailV2PredictResponsePredictionResult
    buildGoogleCloudRetailV2PredictResponsePredictionResult() {
  final o = api.GoogleCloudRetailV2PredictResponsePredictionResult();
  buildCounterGoogleCloudRetailV2PredictResponsePredictionResult++;
  if (buildCounterGoogleCloudRetailV2PredictResponsePredictionResult < 3) {
    o.id = 'foo';
    o.metadata = buildUnnamed25();
  }
  buildCounterGoogleCloudRetailV2PredictResponsePredictionResult--;
  return o;
}

void checkGoogleCloudRetailV2PredictResponsePredictionResult(
    api.GoogleCloudRetailV2PredictResponsePredictionResult o) {
  buildCounterGoogleCloudRetailV2PredictResponsePredictionResult++;
  if (buildCounterGoogleCloudRetailV2PredictResponsePredictionResult < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.metadata!);
  }
  buildCounterGoogleCloudRetailV2PredictResponsePredictionResult--;
}

core.int buildCounterGoogleCloudRetailV2PriceInfo = 0;
api.GoogleCloudRetailV2PriceInfo buildGoogleCloudRetailV2PriceInfo() {
  final o = api.GoogleCloudRetailV2PriceInfo();
  buildCounterGoogleCloudRetailV2PriceInfo++;
  if (buildCounterGoogleCloudRetailV2PriceInfo < 3) {
    o.cost = 42.0;
    o.currencyCode = 'foo';
    o.originalPrice = 42.0;
    o.price = 42.0;
    o.priceEffectiveTime = 'foo';
    o.priceExpireTime = 'foo';
    o.priceRange = buildGoogleCloudRetailV2PriceInfoPriceRange();
  }
  buildCounterGoogleCloudRetailV2PriceInfo--;
  return o;
}

void checkGoogleCloudRetailV2PriceInfo(api.GoogleCloudRetailV2PriceInfo o) {
  buildCounterGoogleCloudRetailV2PriceInfo++;
  if (buildCounterGoogleCloudRetailV2PriceInfo < 3) {
    unittest.expect(
      o.cost!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalPrice!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.price!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.priceEffectiveTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.priceExpireTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRetailV2PriceInfoPriceRange(o.priceRange!);
  }
  buildCounterGoogleCloudRetailV2PriceInfo--;
}

core.int buildCounterGoogleCloudRetailV2PriceInfoPriceRange = 0;
api.GoogleCloudRetailV2PriceInfoPriceRange
    buildGoogleCloudRetailV2PriceInfoPriceRange() {
  final o = api.GoogleCloudRetailV2PriceInfoPriceRange();
  buildCounterGoogleCloudRetailV2PriceInfoPriceRange++;
  if (buildCounterGoogleCloudRetailV2PriceInfoPriceRange < 3) {
    o.originalPrice = buildGoogleCloudRetailV2Interval();
    o.price = buildGoogleCloudRetailV2Interval();
  }
  buildCounterGoogleCloudRetailV2PriceInfoPriceRange--;
  return o;
}

void checkGoogleCloudRetailV2PriceInfoPriceRange(
    api.GoogleCloudRetailV2PriceInfoPriceRange o) {
  buildCounterGoogleCloudRetailV2PriceInfoPriceRange++;
  if (buildCounterGoogleCloudRetailV2PriceInfoPriceRange < 3) {
    checkGoogleCloudRetailV2Interval(o.originalPrice!);
    checkGoogleCloudRetailV2Interval(o.price!);
  }
  buildCounterGoogleCloudRetailV2PriceInfoPriceRange--;
}

core.Map<core.String, api.GoogleCloudRetailV2CustomAttribute>
    buildUnnamed26() => {
          'x': buildGoogleCloudRetailV2CustomAttribute(),
          'y': buildGoogleCloudRetailV2CustomAttribute(),
        };

void checkUnnamed26(
    core.Map<core.String, api.GoogleCloudRetailV2CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2CustomAttribute(o['x']!);
  checkGoogleCloudRetailV2CustomAttribute(o['y']!);
}

core.List<core.String> buildUnnamed27() => [
      'foo',
      'foo',
    ];

void checkUnnamed27(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed28() => [
      'foo',
      'foo',
    ];

void checkUnnamed28(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed29() => [
      'foo',
      'foo',
    ];

void checkUnnamed29(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed30() => [
      'foo',
      'foo',
    ];

void checkUnnamed30(core.List<core.String> o) {
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

core.List<api.GoogleCloudRetailV2FulfillmentInfo> buildUnnamed31() => [
      buildGoogleCloudRetailV2FulfillmentInfo(),
      buildGoogleCloudRetailV2FulfillmentInfo(),
    ];

void checkUnnamed31(core.List<api.GoogleCloudRetailV2FulfillmentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2FulfillmentInfo(o[0]);
  checkGoogleCloudRetailV2FulfillmentInfo(o[1]);
}

core.List<api.GoogleCloudRetailV2Image> buildUnnamed32() => [
      buildGoogleCloudRetailV2Image(),
      buildGoogleCloudRetailV2Image(),
    ];

void checkUnnamed32(core.List<api.GoogleCloudRetailV2Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Image(o[0]);
  checkGoogleCloudRetailV2Image(o[1]);
}

core.List<core.String> buildUnnamed33() => [
      'foo',
      'foo',
    ];

void checkUnnamed33(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed34() => [
      'foo',
      'foo',
    ];

void checkUnnamed34(core.List<core.String> o) {
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

core.List<api.GoogleCloudRetailV2Promotion> buildUnnamed35() => [
      buildGoogleCloudRetailV2Promotion(),
      buildGoogleCloudRetailV2Promotion(),
    ];

void checkUnnamed35(core.List<api.GoogleCloudRetailV2Promotion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Promotion(o[0]);
  checkGoogleCloudRetailV2Promotion(o[1]);
}

core.List<core.String> buildUnnamed36() => [
      'foo',
      'foo',
    ];

void checkUnnamed36(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed37() => [
      'foo',
      'foo',
    ];

void checkUnnamed37(core.List<core.String> o) {
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

core.List<api.GoogleCloudRetailV2Product> buildUnnamed38() => [
      buildGoogleCloudRetailV2Product(),
      buildGoogleCloudRetailV2Product(),
    ];

void checkUnnamed38(core.List<api.GoogleCloudRetailV2Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Product(o[0]);
  checkGoogleCloudRetailV2Product(o[1]);
}

core.int buildCounterGoogleCloudRetailV2Product = 0;
api.GoogleCloudRetailV2Product buildGoogleCloudRetailV2Product() {
  final o = api.GoogleCloudRetailV2Product();
  buildCounterGoogleCloudRetailV2Product++;
  if (buildCounterGoogleCloudRetailV2Product < 3) {
    o.attributes = buildUnnamed26();
    o.audience = buildGoogleCloudRetailV2Audience();
    o.availability = 'foo';
    o.availableQuantity = 42;
    o.availableTime = 'foo';
    o.brands = buildUnnamed27();
    o.categories = buildUnnamed28();
    o.collectionMemberIds = buildUnnamed29();
    o.colorInfo = buildGoogleCloudRetailV2ColorInfo();
    o.conditions = buildUnnamed30();
    o.description = 'foo';
    o.expireTime = 'foo';
    o.fulfillmentInfo = buildUnnamed31();
    o.gtin = 'foo';
    o.id = 'foo';
    o.images = buildUnnamed32();
    o.languageCode = 'foo';
    o.materials = buildUnnamed33();
    o.name = 'foo';
    o.patterns = buildUnnamed34();
    o.priceInfo = buildGoogleCloudRetailV2PriceInfo();
    o.primaryProductId = 'foo';
    o.promotions = buildUnnamed35();
    o.publishTime = 'foo';
    o.rating = buildGoogleCloudRetailV2Rating();
    o.retrievableFields = 'foo';
    o.sizes = buildUnnamed36();
    o.tags = buildUnnamed37();
    o.title = 'foo';
    o.ttl = 'foo';
    o.type = 'foo';
    o.uri = 'foo';
    o.variants = buildUnnamed38();
  }
  buildCounterGoogleCloudRetailV2Product--;
  return o;
}

void checkGoogleCloudRetailV2Product(api.GoogleCloudRetailV2Product o) {
  buildCounterGoogleCloudRetailV2Product++;
  if (buildCounterGoogleCloudRetailV2Product < 3) {
    checkUnnamed26(o.attributes!);
    checkGoogleCloudRetailV2Audience(o.audience!);
    unittest.expect(
      o.availability!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.availableQuantity!,
      unittest.equals(42),
    );
    unittest.expect(
      o.availableTime!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.brands!);
    checkUnnamed28(o.categories!);
    checkUnnamed29(o.collectionMemberIds!);
    checkGoogleCloudRetailV2ColorInfo(o.colorInfo!);
    checkUnnamed30(o.conditions!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.fulfillmentInfo!);
    unittest.expect(
      o.gtin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.images!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkUnnamed33(o.materials!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.patterns!);
    checkGoogleCloudRetailV2PriceInfo(o.priceInfo!);
    unittest.expect(
      o.primaryProductId!,
      unittest.equals('foo'),
    );
    checkUnnamed35(o.promotions!);
    unittest.expect(
      o.publishTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRetailV2Rating(o.rating!);
    unittest.expect(
      o.retrievableFields!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.sizes!);
    checkUnnamed37(o.tags!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ttl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.variants!);
  }
  buildCounterGoogleCloudRetailV2Product--;
}

core.int buildCounterGoogleCloudRetailV2ProductDetail = 0;
api.GoogleCloudRetailV2ProductDetail buildGoogleCloudRetailV2ProductDetail() {
  final o = api.GoogleCloudRetailV2ProductDetail();
  buildCounterGoogleCloudRetailV2ProductDetail++;
  if (buildCounterGoogleCloudRetailV2ProductDetail < 3) {
    o.product = buildGoogleCloudRetailV2Product();
    o.quantity = 42;
  }
  buildCounterGoogleCloudRetailV2ProductDetail--;
  return o;
}

void checkGoogleCloudRetailV2ProductDetail(
    api.GoogleCloudRetailV2ProductDetail o) {
  buildCounterGoogleCloudRetailV2ProductDetail++;
  if (buildCounterGoogleCloudRetailV2ProductDetail < 3) {
    checkGoogleCloudRetailV2Product(o.product!);
    unittest.expect(
      o.quantity!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudRetailV2ProductDetail--;
}

core.List<api.GoogleCloudRetailV2Product> buildUnnamed39() => [
      buildGoogleCloudRetailV2Product(),
      buildGoogleCloudRetailV2Product(),
    ];

void checkUnnamed39(core.List<api.GoogleCloudRetailV2Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Product(o[0]);
  checkGoogleCloudRetailV2Product(o[1]);
}

core.int buildCounterGoogleCloudRetailV2ProductInlineSource = 0;
api.GoogleCloudRetailV2ProductInlineSource
    buildGoogleCloudRetailV2ProductInlineSource() {
  final o = api.GoogleCloudRetailV2ProductInlineSource();
  buildCounterGoogleCloudRetailV2ProductInlineSource++;
  if (buildCounterGoogleCloudRetailV2ProductInlineSource < 3) {
    o.products = buildUnnamed39();
  }
  buildCounterGoogleCloudRetailV2ProductInlineSource--;
  return o;
}

void checkGoogleCloudRetailV2ProductInlineSource(
    api.GoogleCloudRetailV2ProductInlineSource o) {
  buildCounterGoogleCloudRetailV2ProductInlineSource++;
  if (buildCounterGoogleCloudRetailV2ProductInlineSource < 3) {
    checkUnnamed39(o.products!);
  }
  buildCounterGoogleCloudRetailV2ProductInlineSource--;
}

core.int buildCounterGoogleCloudRetailV2ProductInputConfig = 0;
api.GoogleCloudRetailV2ProductInputConfig
    buildGoogleCloudRetailV2ProductInputConfig() {
  final o = api.GoogleCloudRetailV2ProductInputConfig();
  buildCounterGoogleCloudRetailV2ProductInputConfig++;
  if (buildCounterGoogleCloudRetailV2ProductInputConfig < 3) {
    o.bigQuerySource = buildGoogleCloudRetailV2BigQuerySource();
    o.gcsSource = buildGoogleCloudRetailV2GcsSource();
    o.productInlineSource = buildGoogleCloudRetailV2ProductInlineSource();
  }
  buildCounterGoogleCloudRetailV2ProductInputConfig--;
  return o;
}

void checkGoogleCloudRetailV2ProductInputConfig(
    api.GoogleCloudRetailV2ProductInputConfig o) {
  buildCounterGoogleCloudRetailV2ProductInputConfig++;
  if (buildCounterGoogleCloudRetailV2ProductInputConfig < 3) {
    checkGoogleCloudRetailV2BigQuerySource(o.bigQuerySource!);
    checkGoogleCloudRetailV2GcsSource(o.gcsSource!);
    checkGoogleCloudRetailV2ProductInlineSource(o.productInlineSource!);
  }
  buildCounterGoogleCloudRetailV2ProductInputConfig--;
}

core.int buildCounterGoogleCloudRetailV2ProductLevelConfig = 0;
api.GoogleCloudRetailV2ProductLevelConfig
    buildGoogleCloudRetailV2ProductLevelConfig() {
  final o = api.GoogleCloudRetailV2ProductLevelConfig();
  buildCounterGoogleCloudRetailV2ProductLevelConfig++;
  if (buildCounterGoogleCloudRetailV2ProductLevelConfig < 3) {
    o.ingestionProductType = 'foo';
    o.merchantCenterProductIdField = 'foo';
  }
  buildCounterGoogleCloudRetailV2ProductLevelConfig--;
  return o;
}

void checkGoogleCloudRetailV2ProductLevelConfig(
    api.GoogleCloudRetailV2ProductLevelConfig o) {
  buildCounterGoogleCloudRetailV2ProductLevelConfig++;
  if (buildCounterGoogleCloudRetailV2ProductLevelConfig < 3) {
    unittest.expect(
      o.ingestionProductType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.merchantCenterProductIdField!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2ProductLevelConfig--;
}

core.int buildCounterGoogleCloudRetailV2Promotion = 0;
api.GoogleCloudRetailV2Promotion buildGoogleCloudRetailV2Promotion() {
  final o = api.GoogleCloudRetailV2Promotion();
  buildCounterGoogleCloudRetailV2Promotion++;
  if (buildCounterGoogleCloudRetailV2Promotion < 3) {
    o.promotionId = 'foo';
  }
  buildCounterGoogleCloudRetailV2Promotion--;
  return o;
}

void checkGoogleCloudRetailV2Promotion(api.GoogleCloudRetailV2Promotion o) {
  buildCounterGoogleCloudRetailV2Promotion++;
  if (buildCounterGoogleCloudRetailV2Promotion < 3) {
    unittest.expect(
      o.promotionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2Promotion--;
}

core.int buildCounterGoogleCloudRetailV2PurchaseTransaction = 0;
api.GoogleCloudRetailV2PurchaseTransaction
    buildGoogleCloudRetailV2PurchaseTransaction() {
  final o = api.GoogleCloudRetailV2PurchaseTransaction();
  buildCounterGoogleCloudRetailV2PurchaseTransaction++;
  if (buildCounterGoogleCloudRetailV2PurchaseTransaction < 3) {
    o.cost = 42.0;
    o.currencyCode = 'foo';
    o.id = 'foo';
    o.revenue = 42.0;
    o.tax = 42.0;
  }
  buildCounterGoogleCloudRetailV2PurchaseTransaction--;
  return o;
}

void checkGoogleCloudRetailV2PurchaseTransaction(
    api.GoogleCloudRetailV2PurchaseTransaction o) {
  buildCounterGoogleCloudRetailV2PurchaseTransaction++;
  if (buildCounterGoogleCloudRetailV2PurchaseTransaction < 3) {
    unittest.expect(
      o.cost!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revenue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.tax!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudRetailV2PurchaseTransaction--;
}

core.int buildCounterGoogleCloudRetailV2PurgeMetadata = 0;
api.GoogleCloudRetailV2PurgeMetadata buildGoogleCloudRetailV2PurgeMetadata() {
  final o = api.GoogleCloudRetailV2PurgeMetadata();
  buildCounterGoogleCloudRetailV2PurgeMetadata++;
  if (buildCounterGoogleCloudRetailV2PurgeMetadata < 3) {}
  buildCounterGoogleCloudRetailV2PurgeMetadata--;
  return o;
}

void checkGoogleCloudRetailV2PurgeMetadata(
    api.GoogleCloudRetailV2PurgeMetadata o) {
  buildCounterGoogleCloudRetailV2PurgeMetadata++;
  if (buildCounterGoogleCloudRetailV2PurgeMetadata < 3) {}
  buildCounterGoogleCloudRetailV2PurgeMetadata--;
}

core.int buildCounterGoogleCloudRetailV2PurgeUserEventsRequest = 0;
api.GoogleCloudRetailV2PurgeUserEventsRequest
    buildGoogleCloudRetailV2PurgeUserEventsRequest() {
  final o = api.GoogleCloudRetailV2PurgeUserEventsRequest();
  buildCounterGoogleCloudRetailV2PurgeUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2PurgeUserEventsRequest < 3) {
    o.filter = 'foo';
    o.force = true;
  }
  buildCounterGoogleCloudRetailV2PurgeUserEventsRequest--;
  return o;
}

void checkGoogleCloudRetailV2PurgeUserEventsRequest(
    api.GoogleCloudRetailV2PurgeUserEventsRequest o) {
  buildCounterGoogleCloudRetailV2PurgeUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2PurgeUserEventsRequest < 3) {
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(o.force!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2PurgeUserEventsRequest--;
}

core.int buildCounterGoogleCloudRetailV2PurgeUserEventsResponse = 0;
api.GoogleCloudRetailV2PurgeUserEventsResponse
    buildGoogleCloudRetailV2PurgeUserEventsResponse() {
  final o = api.GoogleCloudRetailV2PurgeUserEventsResponse();
  buildCounterGoogleCloudRetailV2PurgeUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2PurgeUserEventsResponse < 3) {
    o.purgedEventsCount = 'foo';
  }
  buildCounterGoogleCloudRetailV2PurgeUserEventsResponse--;
  return o;
}

void checkGoogleCloudRetailV2PurgeUserEventsResponse(
    api.GoogleCloudRetailV2PurgeUserEventsResponse o) {
  buildCounterGoogleCloudRetailV2PurgeUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2PurgeUserEventsResponse < 3) {
    unittest.expect(
      o.purgedEventsCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2PurgeUserEventsResponse--;
}

core.List<core.int> buildUnnamed40() => [
      42,
      42,
    ];

void checkUnnamed40(core.List<core.int> o) {
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

core.int buildCounterGoogleCloudRetailV2Rating = 0;
api.GoogleCloudRetailV2Rating buildGoogleCloudRetailV2Rating() {
  final o = api.GoogleCloudRetailV2Rating();
  buildCounterGoogleCloudRetailV2Rating++;
  if (buildCounterGoogleCloudRetailV2Rating < 3) {
    o.averageRating = 42.0;
    o.ratingCount = 42;
    o.ratingHistogram = buildUnnamed40();
  }
  buildCounterGoogleCloudRetailV2Rating--;
  return o;
}

void checkGoogleCloudRetailV2Rating(api.GoogleCloudRetailV2Rating o) {
  buildCounterGoogleCloudRetailV2Rating++;
  if (buildCounterGoogleCloudRetailV2Rating < 3) {
    unittest.expect(
      o.averageRating!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.ratingCount!,
      unittest.equals(42),
    );
    checkUnnamed40(o.ratingHistogram!);
  }
  buildCounterGoogleCloudRetailV2Rating--;
}

core.int buildCounterGoogleCloudRetailV2RejoinUserEventsMetadata = 0;
api.GoogleCloudRetailV2RejoinUserEventsMetadata
    buildGoogleCloudRetailV2RejoinUserEventsMetadata() {
  final o = api.GoogleCloudRetailV2RejoinUserEventsMetadata();
  buildCounterGoogleCloudRetailV2RejoinUserEventsMetadata++;
  if (buildCounterGoogleCloudRetailV2RejoinUserEventsMetadata < 3) {}
  buildCounterGoogleCloudRetailV2RejoinUserEventsMetadata--;
  return o;
}

void checkGoogleCloudRetailV2RejoinUserEventsMetadata(
    api.GoogleCloudRetailV2RejoinUserEventsMetadata o) {
  buildCounterGoogleCloudRetailV2RejoinUserEventsMetadata++;
  if (buildCounterGoogleCloudRetailV2RejoinUserEventsMetadata < 3) {}
  buildCounterGoogleCloudRetailV2RejoinUserEventsMetadata--;
}

core.int buildCounterGoogleCloudRetailV2RejoinUserEventsRequest = 0;
api.GoogleCloudRetailV2RejoinUserEventsRequest
    buildGoogleCloudRetailV2RejoinUserEventsRequest() {
  final o = api.GoogleCloudRetailV2RejoinUserEventsRequest();
  buildCounterGoogleCloudRetailV2RejoinUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2RejoinUserEventsRequest < 3) {
    o.userEventRejoinScope = 'foo';
  }
  buildCounterGoogleCloudRetailV2RejoinUserEventsRequest--;
  return o;
}

void checkGoogleCloudRetailV2RejoinUserEventsRequest(
    api.GoogleCloudRetailV2RejoinUserEventsRequest o) {
  buildCounterGoogleCloudRetailV2RejoinUserEventsRequest++;
  if (buildCounterGoogleCloudRetailV2RejoinUserEventsRequest < 3) {
    unittest.expect(
      o.userEventRejoinScope!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2RejoinUserEventsRequest--;
}

core.int buildCounterGoogleCloudRetailV2RejoinUserEventsResponse = 0;
api.GoogleCloudRetailV2RejoinUserEventsResponse
    buildGoogleCloudRetailV2RejoinUserEventsResponse() {
  final o = api.GoogleCloudRetailV2RejoinUserEventsResponse();
  buildCounterGoogleCloudRetailV2RejoinUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2RejoinUserEventsResponse < 3) {
    o.rejoinedUserEventsCount = 'foo';
  }
  buildCounterGoogleCloudRetailV2RejoinUserEventsResponse--;
  return o;
}

void checkGoogleCloudRetailV2RejoinUserEventsResponse(
    api.GoogleCloudRetailV2RejoinUserEventsResponse o) {
  buildCounterGoogleCloudRetailV2RejoinUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2RejoinUserEventsResponse < 3) {
    unittest.expect(
      o.rejoinedUserEventsCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2RejoinUserEventsResponse--;
}

core.int buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesMetadata = 0;
api.GoogleCloudRetailV2RemoveFulfillmentPlacesMetadata
    buildGoogleCloudRetailV2RemoveFulfillmentPlacesMetadata() {
  final o = api.GoogleCloudRetailV2RemoveFulfillmentPlacesMetadata();
  buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesMetadata++;
  if (buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesMetadata < 3) {}
  buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesMetadata--;
  return o;
}

void checkGoogleCloudRetailV2RemoveFulfillmentPlacesMetadata(
    api.GoogleCloudRetailV2RemoveFulfillmentPlacesMetadata o) {
  buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesMetadata++;
  if (buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesMetadata < 3) {}
  buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesMetadata--;
}

core.List<core.String> buildUnnamed41() => [
      'foo',
      'foo',
    ];

void checkUnnamed41(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesRequest = 0;
api.GoogleCloudRetailV2RemoveFulfillmentPlacesRequest
    buildGoogleCloudRetailV2RemoveFulfillmentPlacesRequest() {
  final o = api.GoogleCloudRetailV2RemoveFulfillmentPlacesRequest();
  buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesRequest++;
  if (buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesRequest < 3) {
    o.allowMissing = true;
    o.placeIds = buildUnnamed41();
    o.removeTime = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesRequest--;
  return o;
}

void checkGoogleCloudRetailV2RemoveFulfillmentPlacesRequest(
    api.GoogleCloudRetailV2RemoveFulfillmentPlacesRequest o) {
  buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesRequest++;
  if (buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesRequest < 3) {
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkUnnamed41(o.placeIds!);
    unittest.expect(
      o.removeTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesRequest--;
}

core.int buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesResponse = 0;
api.GoogleCloudRetailV2RemoveFulfillmentPlacesResponse
    buildGoogleCloudRetailV2RemoveFulfillmentPlacesResponse() {
  final o = api.GoogleCloudRetailV2RemoveFulfillmentPlacesResponse();
  buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesResponse++;
  if (buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesResponse < 3) {}
  buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesResponse--;
  return o;
}

void checkGoogleCloudRetailV2RemoveFulfillmentPlacesResponse(
    api.GoogleCloudRetailV2RemoveFulfillmentPlacesResponse o) {
  buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesResponse++;
  if (buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesResponse < 3) {}
  buildCounterGoogleCloudRetailV2RemoveFulfillmentPlacesResponse--;
}

core.List<api.GoogleCloudRetailV2SearchRequestFacetSpec> buildUnnamed42() => [
      buildGoogleCloudRetailV2SearchRequestFacetSpec(),
      buildGoogleCloudRetailV2SearchRequestFacetSpec(),
    ];

void checkUnnamed42(
    core.List<api.GoogleCloudRetailV2SearchRequestFacetSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2SearchRequestFacetSpec(o[0]);
  checkGoogleCloudRetailV2SearchRequestFacetSpec(o[1]);
}

core.List<core.String> buildUnnamed43() => [
      'foo',
      'foo',
    ];

void checkUnnamed43(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed44() => [
      'foo',
      'foo',
    ];

void checkUnnamed44(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRetailV2SearchRequest = 0;
api.GoogleCloudRetailV2SearchRequest buildGoogleCloudRetailV2SearchRequest() {
  final o = api.GoogleCloudRetailV2SearchRequest();
  buildCounterGoogleCloudRetailV2SearchRequest++;
  if (buildCounterGoogleCloudRetailV2SearchRequest < 3) {
    o.boostSpec = buildGoogleCloudRetailV2SearchRequestBoostSpec();
    o.branch = 'foo';
    o.canonicalFilter = 'foo';
    o.dynamicFacetSpec =
        buildGoogleCloudRetailV2SearchRequestDynamicFacetSpec();
    o.facetSpecs = buildUnnamed42();
    o.filter = 'foo';
    o.offset = 42;
    o.orderBy = 'foo';
    o.pageCategories = buildUnnamed43();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.query = 'foo';
    o.queryExpansionSpec =
        buildGoogleCloudRetailV2SearchRequestQueryExpansionSpec();
    o.userInfo = buildGoogleCloudRetailV2UserInfo();
    o.variantRollupKeys = buildUnnamed44();
    o.visitorId = 'foo';
  }
  buildCounterGoogleCloudRetailV2SearchRequest--;
  return o;
}

void checkGoogleCloudRetailV2SearchRequest(
    api.GoogleCloudRetailV2SearchRequest o) {
  buildCounterGoogleCloudRetailV2SearchRequest++;
  if (buildCounterGoogleCloudRetailV2SearchRequest < 3) {
    checkGoogleCloudRetailV2SearchRequestBoostSpec(o.boostSpec!);
    unittest.expect(
      o.branch!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.canonicalFilter!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRetailV2SearchRequestDynamicFacetSpec(o.dynamicFacetSpec!);
    checkUnnamed42(o.facetSpecs!);
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offset!,
      unittest.equals(42),
    );
    unittest.expect(
      o.orderBy!,
      unittest.equals('foo'),
    );
    checkUnnamed43(o.pageCategories!);
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRetailV2SearchRequestQueryExpansionSpec(
        o.queryExpansionSpec!);
    checkGoogleCloudRetailV2UserInfo(o.userInfo!);
    checkUnnamed44(o.variantRollupKeys!);
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2SearchRequest--;
}

core.List<api.GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec>
    buildUnnamed45() => [
          buildGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec(),
          buildGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec(),
        ];

void checkUnnamed45(
    core.List<api.GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec(o[0]);
  checkGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec(o[1]);
}

core.int buildCounterGoogleCloudRetailV2SearchRequestBoostSpec = 0;
api.GoogleCloudRetailV2SearchRequestBoostSpec
    buildGoogleCloudRetailV2SearchRequestBoostSpec() {
  final o = api.GoogleCloudRetailV2SearchRequestBoostSpec();
  buildCounterGoogleCloudRetailV2SearchRequestBoostSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestBoostSpec < 3) {
    o.conditionBoostSpecs = buildUnnamed45();
  }
  buildCounterGoogleCloudRetailV2SearchRequestBoostSpec--;
  return o;
}

void checkGoogleCloudRetailV2SearchRequestBoostSpec(
    api.GoogleCloudRetailV2SearchRequestBoostSpec o) {
  buildCounterGoogleCloudRetailV2SearchRequestBoostSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestBoostSpec < 3) {
    checkUnnamed45(o.conditionBoostSpecs!);
  }
  buildCounterGoogleCloudRetailV2SearchRequestBoostSpec--;
}

core.int
    buildCounterGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec = 0;
api.GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec
    buildGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec() {
  final o = api.GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec();
  buildCounterGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec <
      3) {
    o.boost = 42.0;
    o.condition = 'foo';
  }
  buildCounterGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec--;
  return o;
}

void checkGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec(
    api.GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec o) {
  buildCounterGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec <
      3) {
    unittest.expect(
      o.boost!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec--;
}

core.int buildCounterGoogleCloudRetailV2SearchRequestDynamicFacetSpec = 0;
api.GoogleCloudRetailV2SearchRequestDynamicFacetSpec
    buildGoogleCloudRetailV2SearchRequestDynamicFacetSpec() {
  final o = api.GoogleCloudRetailV2SearchRequestDynamicFacetSpec();
  buildCounterGoogleCloudRetailV2SearchRequestDynamicFacetSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestDynamicFacetSpec < 3) {
    o.mode = 'foo';
  }
  buildCounterGoogleCloudRetailV2SearchRequestDynamicFacetSpec--;
  return o;
}

void checkGoogleCloudRetailV2SearchRequestDynamicFacetSpec(
    api.GoogleCloudRetailV2SearchRequestDynamicFacetSpec o) {
  buildCounterGoogleCloudRetailV2SearchRequestDynamicFacetSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestDynamicFacetSpec < 3) {
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2SearchRequestDynamicFacetSpec--;
}

core.List<core.String> buildUnnamed46() => [
      'foo',
      'foo',
    ];

void checkUnnamed46(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRetailV2SearchRequestFacetSpec = 0;
api.GoogleCloudRetailV2SearchRequestFacetSpec
    buildGoogleCloudRetailV2SearchRequestFacetSpec() {
  final o = api.GoogleCloudRetailV2SearchRequestFacetSpec();
  buildCounterGoogleCloudRetailV2SearchRequestFacetSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestFacetSpec < 3) {
    o.enableDynamicPosition = true;
    o.excludedFilterKeys = buildUnnamed46();
    o.facetKey = buildGoogleCloudRetailV2SearchRequestFacetSpecFacetKey();
    o.limit = 42;
  }
  buildCounterGoogleCloudRetailV2SearchRequestFacetSpec--;
  return o;
}

void checkGoogleCloudRetailV2SearchRequestFacetSpec(
    api.GoogleCloudRetailV2SearchRequestFacetSpec o) {
  buildCounterGoogleCloudRetailV2SearchRequestFacetSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestFacetSpec < 3) {
    unittest.expect(o.enableDynamicPosition!, unittest.isTrue);
    checkUnnamed46(o.excludedFilterKeys!);
    checkGoogleCloudRetailV2SearchRequestFacetSpecFacetKey(o.facetKey!);
    unittest.expect(
      o.limit!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudRetailV2SearchRequestFacetSpec--;
}

core.List<core.String> buildUnnamed47() => [
      'foo',
      'foo',
    ];

void checkUnnamed47(core.List<core.String> o) {
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

core.List<api.GoogleCloudRetailV2Interval> buildUnnamed48() => [
      buildGoogleCloudRetailV2Interval(),
      buildGoogleCloudRetailV2Interval(),
    ];

void checkUnnamed48(core.List<api.GoogleCloudRetailV2Interval> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Interval(o[0]);
  checkGoogleCloudRetailV2Interval(o[1]);
}

core.List<core.String> buildUnnamed49() => [
      'foo',
      'foo',
    ];

void checkUnnamed49(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed50() => [
      'foo',
      'foo',
    ];

void checkUnnamed50(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRetailV2SearchRequestFacetSpecFacetKey = 0;
api.GoogleCloudRetailV2SearchRequestFacetSpecFacetKey
    buildGoogleCloudRetailV2SearchRequestFacetSpecFacetKey() {
  final o = api.GoogleCloudRetailV2SearchRequestFacetSpecFacetKey();
  buildCounterGoogleCloudRetailV2SearchRequestFacetSpecFacetKey++;
  if (buildCounterGoogleCloudRetailV2SearchRequestFacetSpecFacetKey < 3) {
    o.contains = buildUnnamed47();
    o.intervals = buildUnnamed48();
    o.key = 'foo';
    o.orderBy = 'foo';
    o.prefixes = buildUnnamed49();
    o.query = 'foo';
    o.restrictedValues = buildUnnamed50();
  }
  buildCounterGoogleCloudRetailV2SearchRequestFacetSpecFacetKey--;
  return o;
}

void checkGoogleCloudRetailV2SearchRequestFacetSpecFacetKey(
    api.GoogleCloudRetailV2SearchRequestFacetSpecFacetKey o) {
  buildCounterGoogleCloudRetailV2SearchRequestFacetSpecFacetKey++;
  if (buildCounterGoogleCloudRetailV2SearchRequestFacetSpecFacetKey < 3) {
    checkUnnamed47(o.contains!);
    checkUnnamed48(o.intervals!);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderBy!,
      unittest.equals('foo'),
    );
    checkUnnamed49(o.prefixes!);
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    checkUnnamed50(o.restrictedValues!);
  }
  buildCounterGoogleCloudRetailV2SearchRequestFacetSpecFacetKey--;
}

core.int buildCounterGoogleCloudRetailV2SearchRequestQueryExpansionSpec = 0;
api.GoogleCloudRetailV2SearchRequestQueryExpansionSpec
    buildGoogleCloudRetailV2SearchRequestQueryExpansionSpec() {
  final o = api.GoogleCloudRetailV2SearchRequestQueryExpansionSpec();
  buildCounterGoogleCloudRetailV2SearchRequestQueryExpansionSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestQueryExpansionSpec < 3) {
    o.condition = 'foo';
    o.pinUnexpandedResults = true;
  }
  buildCounterGoogleCloudRetailV2SearchRequestQueryExpansionSpec--;
  return o;
}

void checkGoogleCloudRetailV2SearchRequestQueryExpansionSpec(
    api.GoogleCloudRetailV2SearchRequestQueryExpansionSpec o) {
  buildCounterGoogleCloudRetailV2SearchRequestQueryExpansionSpec++;
  if (buildCounterGoogleCloudRetailV2SearchRequestQueryExpansionSpec < 3) {
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
    unittest.expect(o.pinUnexpandedResults!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2SearchRequestQueryExpansionSpec--;
}

core.List<api.GoogleCloudRetailV2SearchResponseFacet> buildUnnamed51() => [
      buildGoogleCloudRetailV2SearchResponseFacet(),
      buildGoogleCloudRetailV2SearchResponseFacet(),
    ];

void checkUnnamed51(core.List<api.GoogleCloudRetailV2SearchResponseFacet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2SearchResponseFacet(o[0]);
  checkGoogleCloudRetailV2SearchResponseFacet(o[1]);
}

core.List<api.GoogleCloudRetailV2SearchResponseSearchResult> buildUnnamed52() =>
    [
      buildGoogleCloudRetailV2SearchResponseSearchResult(),
      buildGoogleCloudRetailV2SearchResponseSearchResult(),
    ];

void checkUnnamed52(
    core.List<api.GoogleCloudRetailV2SearchResponseSearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2SearchResponseSearchResult(o[0]);
  checkGoogleCloudRetailV2SearchResponseSearchResult(o[1]);
}

core.int buildCounterGoogleCloudRetailV2SearchResponse = 0;
api.GoogleCloudRetailV2SearchResponse buildGoogleCloudRetailV2SearchResponse() {
  final o = api.GoogleCloudRetailV2SearchResponse();
  buildCounterGoogleCloudRetailV2SearchResponse++;
  if (buildCounterGoogleCloudRetailV2SearchResponse < 3) {
    o.attributionToken = 'foo';
    o.correctedQuery = 'foo';
    o.facets = buildUnnamed51();
    o.nextPageToken = 'foo';
    o.queryExpansionInfo =
        buildGoogleCloudRetailV2SearchResponseQueryExpansionInfo();
    o.redirectUri = 'foo';
    o.results = buildUnnamed52();
    o.totalSize = 42;
  }
  buildCounterGoogleCloudRetailV2SearchResponse--;
  return o;
}

void checkGoogleCloudRetailV2SearchResponse(
    api.GoogleCloudRetailV2SearchResponse o) {
  buildCounterGoogleCloudRetailV2SearchResponse++;
  if (buildCounterGoogleCloudRetailV2SearchResponse < 3) {
    unittest.expect(
      o.attributionToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.correctedQuery!,
      unittest.equals('foo'),
    );
    checkUnnamed51(o.facets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRetailV2SearchResponseQueryExpansionInfo(
        o.queryExpansionInfo!);
    unittest.expect(
      o.redirectUri!,
      unittest.equals('foo'),
    );
    checkUnnamed52(o.results!);
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudRetailV2SearchResponse--;
}

core.List<api.GoogleCloudRetailV2SearchResponseFacetFacetValue>
    buildUnnamed53() => [
          buildGoogleCloudRetailV2SearchResponseFacetFacetValue(),
          buildGoogleCloudRetailV2SearchResponseFacetFacetValue(),
        ];

void checkUnnamed53(
    core.List<api.GoogleCloudRetailV2SearchResponseFacetFacetValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2SearchResponseFacetFacetValue(o[0]);
  checkGoogleCloudRetailV2SearchResponseFacetFacetValue(o[1]);
}

core.int buildCounterGoogleCloudRetailV2SearchResponseFacet = 0;
api.GoogleCloudRetailV2SearchResponseFacet
    buildGoogleCloudRetailV2SearchResponseFacet() {
  final o = api.GoogleCloudRetailV2SearchResponseFacet();
  buildCounterGoogleCloudRetailV2SearchResponseFacet++;
  if (buildCounterGoogleCloudRetailV2SearchResponseFacet < 3) {
    o.dynamicFacet = true;
    o.key = 'foo';
    o.values = buildUnnamed53();
  }
  buildCounterGoogleCloudRetailV2SearchResponseFacet--;
  return o;
}

void checkGoogleCloudRetailV2SearchResponseFacet(
    api.GoogleCloudRetailV2SearchResponseFacet o) {
  buildCounterGoogleCloudRetailV2SearchResponseFacet++;
  if (buildCounterGoogleCloudRetailV2SearchResponseFacet < 3) {
    unittest.expect(o.dynamicFacet!, unittest.isTrue);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkUnnamed53(o.values!);
  }
  buildCounterGoogleCloudRetailV2SearchResponseFacet--;
}

core.int buildCounterGoogleCloudRetailV2SearchResponseFacetFacetValue = 0;
api.GoogleCloudRetailV2SearchResponseFacetFacetValue
    buildGoogleCloudRetailV2SearchResponseFacetFacetValue() {
  final o = api.GoogleCloudRetailV2SearchResponseFacetFacetValue();
  buildCounterGoogleCloudRetailV2SearchResponseFacetFacetValue++;
  if (buildCounterGoogleCloudRetailV2SearchResponseFacetFacetValue < 3) {
    o.count = 'foo';
    o.interval = buildGoogleCloudRetailV2Interval();
    o.value = 'foo';
  }
  buildCounterGoogleCloudRetailV2SearchResponseFacetFacetValue--;
  return o;
}

void checkGoogleCloudRetailV2SearchResponseFacetFacetValue(
    api.GoogleCloudRetailV2SearchResponseFacetFacetValue o) {
  buildCounterGoogleCloudRetailV2SearchResponseFacetFacetValue++;
  if (buildCounterGoogleCloudRetailV2SearchResponseFacetFacetValue < 3) {
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRetailV2Interval(o.interval!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2SearchResponseFacetFacetValue--;
}

core.int buildCounterGoogleCloudRetailV2SearchResponseQueryExpansionInfo = 0;
api.GoogleCloudRetailV2SearchResponseQueryExpansionInfo
    buildGoogleCloudRetailV2SearchResponseQueryExpansionInfo() {
  final o = api.GoogleCloudRetailV2SearchResponseQueryExpansionInfo();
  buildCounterGoogleCloudRetailV2SearchResponseQueryExpansionInfo++;
  if (buildCounterGoogleCloudRetailV2SearchResponseQueryExpansionInfo < 3) {
    o.expandedQuery = true;
    o.pinnedResultCount = 'foo';
  }
  buildCounterGoogleCloudRetailV2SearchResponseQueryExpansionInfo--;
  return o;
}

void checkGoogleCloudRetailV2SearchResponseQueryExpansionInfo(
    api.GoogleCloudRetailV2SearchResponseQueryExpansionInfo o) {
  buildCounterGoogleCloudRetailV2SearchResponseQueryExpansionInfo++;
  if (buildCounterGoogleCloudRetailV2SearchResponseQueryExpansionInfo < 3) {
    unittest.expect(o.expandedQuery!, unittest.isTrue);
    unittest.expect(
      o.pinnedResultCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2SearchResponseQueryExpansionInfo--;
}

core.Map<core.String, core.String> buildUnnamed54() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed54(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object> buildUnnamed55() => {
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

void checkUnnamed55(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(
    casted11['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted11['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted11['string'],
    unittest.equals('foo'),
  );
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(
    casted12['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted12['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted12['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudRetailV2SearchResponseSearchResult = 0;
api.GoogleCloudRetailV2SearchResponseSearchResult
    buildGoogleCloudRetailV2SearchResponseSearchResult() {
  final o = api.GoogleCloudRetailV2SearchResponseSearchResult();
  buildCounterGoogleCloudRetailV2SearchResponseSearchResult++;
  if (buildCounterGoogleCloudRetailV2SearchResponseSearchResult < 3) {
    o.id = 'foo';
    o.matchingVariantCount = 42;
    o.matchingVariantFields = buildUnnamed54();
    o.product = buildGoogleCloudRetailV2Product();
    o.variantRollupValues = buildUnnamed55();
  }
  buildCounterGoogleCloudRetailV2SearchResponseSearchResult--;
  return o;
}

void checkGoogleCloudRetailV2SearchResponseSearchResult(
    api.GoogleCloudRetailV2SearchResponseSearchResult o) {
  buildCounterGoogleCloudRetailV2SearchResponseSearchResult++;
  if (buildCounterGoogleCloudRetailV2SearchResponseSearchResult < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.matchingVariantCount!,
      unittest.equals(42),
    );
    checkUnnamed54(o.matchingVariantFields!);
    checkGoogleCloudRetailV2Product(o.product!);
    checkUnnamed55(o.variantRollupValues!);
  }
  buildCounterGoogleCloudRetailV2SearchResponseSearchResult--;
}

core.int buildCounterGoogleCloudRetailV2SetDefaultBranchRequest = 0;
api.GoogleCloudRetailV2SetDefaultBranchRequest
    buildGoogleCloudRetailV2SetDefaultBranchRequest() {
  final o = api.GoogleCloudRetailV2SetDefaultBranchRequest();
  buildCounterGoogleCloudRetailV2SetDefaultBranchRequest++;
  if (buildCounterGoogleCloudRetailV2SetDefaultBranchRequest < 3) {
    o.branchId = 'foo';
    o.note = 'foo';
  }
  buildCounterGoogleCloudRetailV2SetDefaultBranchRequest--;
  return o;
}

void checkGoogleCloudRetailV2SetDefaultBranchRequest(
    api.GoogleCloudRetailV2SetDefaultBranchRequest o) {
  buildCounterGoogleCloudRetailV2SetDefaultBranchRequest++;
  if (buildCounterGoogleCloudRetailV2SetDefaultBranchRequest < 3) {
    unittest.expect(
      o.branchId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.note!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2SetDefaultBranchRequest--;
}

core.int buildCounterGoogleCloudRetailV2SetInventoryMetadata = 0;
api.GoogleCloudRetailV2SetInventoryMetadata
    buildGoogleCloudRetailV2SetInventoryMetadata() {
  final o = api.GoogleCloudRetailV2SetInventoryMetadata();
  buildCounterGoogleCloudRetailV2SetInventoryMetadata++;
  if (buildCounterGoogleCloudRetailV2SetInventoryMetadata < 3) {}
  buildCounterGoogleCloudRetailV2SetInventoryMetadata--;
  return o;
}

void checkGoogleCloudRetailV2SetInventoryMetadata(
    api.GoogleCloudRetailV2SetInventoryMetadata o) {
  buildCounterGoogleCloudRetailV2SetInventoryMetadata++;
  if (buildCounterGoogleCloudRetailV2SetInventoryMetadata < 3) {}
  buildCounterGoogleCloudRetailV2SetInventoryMetadata--;
}

core.int buildCounterGoogleCloudRetailV2SetInventoryRequest = 0;
api.GoogleCloudRetailV2SetInventoryRequest
    buildGoogleCloudRetailV2SetInventoryRequest() {
  final o = api.GoogleCloudRetailV2SetInventoryRequest();
  buildCounterGoogleCloudRetailV2SetInventoryRequest++;
  if (buildCounterGoogleCloudRetailV2SetInventoryRequest < 3) {
    o.allowMissing = true;
    o.inventory = buildGoogleCloudRetailV2Product();
    o.setMask = 'foo';
    o.setTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2SetInventoryRequest--;
  return o;
}

void checkGoogleCloudRetailV2SetInventoryRequest(
    api.GoogleCloudRetailV2SetInventoryRequest o) {
  buildCounterGoogleCloudRetailV2SetInventoryRequest++;
  if (buildCounterGoogleCloudRetailV2SetInventoryRequest < 3) {
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkGoogleCloudRetailV2Product(o.inventory!);
    unittest.expect(
      o.setMask!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.setTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2SetInventoryRequest--;
}

core.int buildCounterGoogleCloudRetailV2SetInventoryResponse = 0;
api.GoogleCloudRetailV2SetInventoryResponse
    buildGoogleCloudRetailV2SetInventoryResponse() {
  final o = api.GoogleCloudRetailV2SetInventoryResponse();
  buildCounterGoogleCloudRetailV2SetInventoryResponse++;
  if (buildCounterGoogleCloudRetailV2SetInventoryResponse < 3) {}
  buildCounterGoogleCloudRetailV2SetInventoryResponse--;
  return o;
}

void checkGoogleCloudRetailV2SetInventoryResponse(
    api.GoogleCloudRetailV2SetInventoryResponse o) {
  buildCounterGoogleCloudRetailV2SetInventoryResponse++;
  if (buildCounterGoogleCloudRetailV2SetInventoryResponse < 3) {}
  buildCounterGoogleCloudRetailV2SetInventoryResponse--;
}

core.Map<core.String, api.GoogleCloudRetailV2CustomAttribute>
    buildUnnamed56() => {
          'x': buildGoogleCloudRetailV2CustomAttribute(),
          'y': buildGoogleCloudRetailV2CustomAttribute(),
        };

void checkUnnamed56(
    core.Map<core.String, api.GoogleCloudRetailV2CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2CustomAttribute(o['x']!);
  checkGoogleCloudRetailV2CustomAttribute(o['y']!);
}

core.List<core.String> buildUnnamed57() => [
      'foo',
      'foo',
    ];

void checkUnnamed57(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed58() => [
      'foo',
      'foo',
    ];

void checkUnnamed58(core.List<core.String> o) {
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

core.List<api.GoogleCloudRetailV2ProductDetail> buildUnnamed59() => [
      buildGoogleCloudRetailV2ProductDetail(),
      buildGoogleCloudRetailV2ProductDetail(),
    ];

void checkUnnamed59(core.List<api.GoogleCloudRetailV2ProductDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2ProductDetail(o[0]);
  checkGoogleCloudRetailV2ProductDetail(o[1]);
}

core.int buildCounterGoogleCloudRetailV2UserEvent = 0;
api.GoogleCloudRetailV2UserEvent buildGoogleCloudRetailV2UserEvent() {
  final o = api.GoogleCloudRetailV2UserEvent();
  buildCounterGoogleCloudRetailV2UserEvent++;
  if (buildCounterGoogleCloudRetailV2UserEvent < 3) {
    o.attributes = buildUnnamed56();
    o.attributionToken = 'foo';
    o.cartId = 'foo';
    o.completionDetail = buildGoogleCloudRetailV2CompletionDetail();
    o.eventTime = 'foo';
    o.eventType = 'foo';
    o.experimentIds = buildUnnamed57();
    o.filter = 'foo';
    o.offset = 42;
    o.orderBy = 'foo';
    o.pageCategories = buildUnnamed58();
    o.pageViewId = 'foo';
    o.productDetails = buildUnnamed59();
    o.purchaseTransaction = buildGoogleCloudRetailV2PurchaseTransaction();
    o.referrerUri = 'foo';
    o.searchQuery = 'foo';
    o.sessionId = 'foo';
    o.uri = 'foo';
    o.userInfo = buildGoogleCloudRetailV2UserInfo();
    o.visitorId = 'foo';
  }
  buildCounterGoogleCloudRetailV2UserEvent--;
  return o;
}

void checkGoogleCloudRetailV2UserEvent(api.GoogleCloudRetailV2UserEvent o) {
  buildCounterGoogleCloudRetailV2UserEvent++;
  if (buildCounterGoogleCloudRetailV2UserEvent < 3) {
    checkUnnamed56(o.attributes!);
    unittest.expect(
      o.attributionToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cartId!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRetailV2CompletionDetail(o.completionDetail!);
    unittest.expect(
      o.eventTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventType!,
      unittest.equals('foo'),
    );
    checkUnnamed57(o.experimentIds!);
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offset!,
      unittest.equals(42),
    );
    unittest.expect(
      o.orderBy!,
      unittest.equals('foo'),
    );
    checkUnnamed58(o.pageCategories!);
    unittest.expect(
      o.pageViewId!,
      unittest.equals('foo'),
    );
    checkUnnamed59(o.productDetails!);
    checkGoogleCloudRetailV2PurchaseTransaction(o.purchaseTransaction!);
    unittest.expect(
      o.referrerUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.searchQuery!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sessionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRetailV2UserInfo(o.userInfo!);
    unittest.expect(
      o.visitorId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2UserEvent--;
}

core.int buildCounterGoogleCloudRetailV2UserEventImportSummary = 0;
api.GoogleCloudRetailV2UserEventImportSummary
    buildGoogleCloudRetailV2UserEventImportSummary() {
  final o = api.GoogleCloudRetailV2UserEventImportSummary();
  buildCounterGoogleCloudRetailV2UserEventImportSummary++;
  if (buildCounterGoogleCloudRetailV2UserEventImportSummary < 3) {
    o.joinedEventsCount = 'foo';
    o.unjoinedEventsCount = 'foo';
  }
  buildCounterGoogleCloudRetailV2UserEventImportSummary--;
  return o;
}

void checkGoogleCloudRetailV2UserEventImportSummary(
    api.GoogleCloudRetailV2UserEventImportSummary o) {
  buildCounterGoogleCloudRetailV2UserEventImportSummary++;
  if (buildCounterGoogleCloudRetailV2UserEventImportSummary < 3) {
    unittest.expect(
      o.joinedEventsCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unjoinedEventsCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2UserEventImportSummary--;
}

core.List<api.GoogleCloudRetailV2UserEvent> buildUnnamed60() => [
      buildGoogleCloudRetailV2UserEvent(),
      buildGoogleCloudRetailV2UserEvent(),
    ];

void checkUnnamed60(core.List<api.GoogleCloudRetailV2UserEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2UserEvent(o[0]);
  checkGoogleCloudRetailV2UserEvent(o[1]);
}

core.int buildCounterGoogleCloudRetailV2UserEventInlineSource = 0;
api.GoogleCloudRetailV2UserEventInlineSource
    buildGoogleCloudRetailV2UserEventInlineSource() {
  final o = api.GoogleCloudRetailV2UserEventInlineSource();
  buildCounterGoogleCloudRetailV2UserEventInlineSource++;
  if (buildCounterGoogleCloudRetailV2UserEventInlineSource < 3) {
    o.userEvents = buildUnnamed60();
  }
  buildCounterGoogleCloudRetailV2UserEventInlineSource--;
  return o;
}

void checkGoogleCloudRetailV2UserEventInlineSource(
    api.GoogleCloudRetailV2UserEventInlineSource o) {
  buildCounterGoogleCloudRetailV2UserEventInlineSource++;
  if (buildCounterGoogleCloudRetailV2UserEventInlineSource < 3) {
    checkUnnamed60(o.userEvents!);
  }
  buildCounterGoogleCloudRetailV2UserEventInlineSource--;
}

core.int buildCounterGoogleCloudRetailV2UserEventInputConfig = 0;
api.GoogleCloudRetailV2UserEventInputConfig
    buildGoogleCloudRetailV2UserEventInputConfig() {
  final o = api.GoogleCloudRetailV2UserEventInputConfig();
  buildCounterGoogleCloudRetailV2UserEventInputConfig++;
  if (buildCounterGoogleCloudRetailV2UserEventInputConfig < 3) {
    o.bigQuerySource = buildGoogleCloudRetailV2BigQuerySource();
    o.gcsSource = buildGoogleCloudRetailV2GcsSource();
    o.userEventInlineSource = buildGoogleCloudRetailV2UserEventInlineSource();
  }
  buildCounterGoogleCloudRetailV2UserEventInputConfig--;
  return o;
}

void checkGoogleCloudRetailV2UserEventInputConfig(
    api.GoogleCloudRetailV2UserEventInputConfig o) {
  buildCounterGoogleCloudRetailV2UserEventInputConfig++;
  if (buildCounterGoogleCloudRetailV2UserEventInputConfig < 3) {
    checkGoogleCloudRetailV2BigQuerySource(o.bigQuerySource!);
    checkGoogleCloudRetailV2GcsSource(o.gcsSource!);
    checkGoogleCloudRetailV2UserEventInlineSource(o.userEventInlineSource!);
  }
  buildCounterGoogleCloudRetailV2UserEventInputConfig--;
}

core.int buildCounterGoogleCloudRetailV2UserInfo = 0;
api.GoogleCloudRetailV2UserInfo buildGoogleCloudRetailV2UserInfo() {
  final o = api.GoogleCloudRetailV2UserInfo();
  buildCounterGoogleCloudRetailV2UserInfo++;
  if (buildCounterGoogleCloudRetailV2UserInfo < 3) {
    o.directUserRequest = true;
    o.ipAddress = 'foo';
    o.userAgent = 'foo';
    o.userId = 'foo';
  }
  buildCounterGoogleCloudRetailV2UserInfo--;
  return o;
}

void checkGoogleCloudRetailV2UserInfo(api.GoogleCloudRetailV2UserInfo o) {
  buildCounterGoogleCloudRetailV2UserInfo++;
  if (buildCounterGoogleCloudRetailV2UserInfo < 3) {
    unittest.expect(o.directUserRequest!, unittest.isTrue);
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userAgent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2UserInfo--;
}

core.int buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata = 0;
api.GoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata
    buildGoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata() {
  final o = api.GoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata();
  buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata++;
  if (buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata < 3) {}
  buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata--;
  return o;
}

void checkGoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata(
    api.GoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata o) {
  buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata++;
  if (buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata < 3) {}
  buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata--;
}

core.int buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesResponse = 0;
api.GoogleCloudRetailV2alphaAddFulfillmentPlacesResponse
    buildGoogleCloudRetailV2alphaAddFulfillmentPlacesResponse() {
  final o = api.GoogleCloudRetailV2alphaAddFulfillmentPlacesResponse();
  buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesResponse++;
  if (buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesResponse < 3) {}
  buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaAddFulfillmentPlacesResponse(
    api.GoogleCloudRetailV2alphaAddFulfillmentPlacesResponse o) {
  buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesResponse++;
  if (buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesResponse < 3) {}
  buildCounterGoogleCloudRetailV2alphaAddFulfillmentPlacesResponse--;
}

core.int buildCounterGoogleCloudRetailV2alphaExportErrorsConfig = 0;
api.GoogleCloudRetailV2alphaExportErrorsConfig
    buildGoogleCloudRetailV2alphaExportErrorsConfig() {
  final o = api.GoogleCloudRetailV2alphaExportErrorsConfig();
  buildCounterGoogleCloudRetailV2alphaExportErrorsConfig++;
  if (buildCounterGoogleCloudRetailV2alphaExportErrorsConfig < 3) {
    o.gcsPrefix = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaExportErrorsConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaExportErrorsConfig(
    api.GoogleCloudRetailV2alphaExportErrorsConfig o) {
  buildCounterGoogleCloudRetailV2alphaExportErrorsConfig++;
  if (buildCounterGoogleCloudRetailV2alphaExportErrorsConfig < 3) {
    unittest.expect(
      o.gcsPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2alphaExportErrorsConfig--;
}

core.int buildCounterGoogleCloudRetailV2alphaExportMetadata = 0;
api.GoogleCloudRetailV2alphaExportMetadata
    buildGoogleCloudRetailV2alphaExportMetadata() {
  final o = api.GoogleCloudRetailV2alphaExportMetadata();
  buildCounterGoogleCloudRetailV2alphaExportMetadata++;
  if (buildCounterGoogleCloudRetailV2alphaExportMetadata < 3) {
    o.createTime = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaExportMetadata--;
  return o;
}

void checkGoogleCloudRetailV2alphaExportMetadata(
    api.GoogleCloudRetailV2alphaExportMetadata o) {
  buildCounterGoogleCloudRetailV2alphaExportMetadata++;
  if (buildCounterGoogleCloudRetailV2alphaExportMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2alphaExportMetadata--;
}

core.List<api.GoogleRpcStatus> buildUnnamed61() => [
      buildGoogleRpcStatus(),
      buildGoogleRpcStatus(),
    ];

void checkUnnamed61(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaExportProductsResponse = 0;
api.GoogleCloudRetailV2alphaExportProductsResponse
    buildGoogleCloudRetailV2alphaExportProductsResponse() {
  final o = api.GoogleCloudRetailV2alphaExportProductsResponse();
  buildCounterGoogleCloudRetailV2alphaExportProductsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaExportProductsResponse < 3) {
    o.errorSamples = buildUnnamed61();
    o.errorsConfig = buildGoogleCloudRetailV2alphaExportErrorsConfig();
  }
  buildCounterGoogleCloudRetailV2alphaExportProductsResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaExportProductsResponse(
    api.GoogleCloudRetailV2alphaExportProductsResponse o) {
  buildCounterGoogleCloudRetailV2alphaExportProductsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaExportProductsResponse < 3) {
    checkUnnamed61(o.errorSamples!);
    checkGoogleCloudRetailV2alphaExportErrorsConfig(o.errorsConfig!);
  }
  buildCounterGoogleCloudRetailV2alphaExportProductsResponse--;
}

core.List<api.GoogleRpcStatus> buildUnnamed62() => [
      buildGoogleRpcStatus(),
      buildGoogleRpcStatus(),
    ];

void checkUnnamed62(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaExportUserEventsResponse = 0;
api.GoogleCloudRetailV2alphaExportUserEventsResponse
    buildGoogleCloudRetailV2alphaExportUserEventsResponse() {
  final o = api.GoogleCloudRetailV2alphaExportUserEventsResponse();
  buildCounterGoogleCloudRetailV2alphaExportUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaExportUserEventsResponse < 3) {
    o.errorSamples = buildUnnamed62();
    o.errorsConfig = buildGoogleCloudRetailV2alphaExportErrorsConfig();
  }
  buildCounterGoogleCloudRetailV2alphaExportUserEventsResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaExportUserEventsResponse(
    api.GoogleCloudRetailV2alphaExportUserEventsResponse o) {
  buildCounterGoogleCloudRetailV2alphaExportUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaExportUserEventsResponse < 3) {
    checkUnnamed62(o.errorSamples!);
    checkGoogleCloudRetailV2alphaExportErrorsConfig(o.errorsConfig!);
  }
  buildCounterGoogleCloudRetailV2alphaExportUserEventsResponse--;
}

core.List<api.GoogleRpcStatus> buildUnnamed63() => [
      buildGoogleRpcStatus(),
      buildGoogleRpcStatus(),
    ];

void checkUnnamed63(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaImportCompletionDataResponse = 0;
api.GoogleCloudRetailV2alphaImportCompletionDataResponse
    buildGoogleCloudRetailV2alphaImportCompletionDataResponse() {
  final o = api.GoogleCloudRetailV2alphaImportCompletionDataResponse();
  buildCounterGoogleCloudRetailV2alphaImportCompletionDataResponse++;
  if (buildCounterGoogleCloudRetailV2alphaImportCompletionDataResponse < 3) {
    o.errorSamples = buildUnnamed63();
  }
  buildCounterGoogleCloudRetailV2alphaImportCompletionDataResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaImportCompletionDataResponse(
    api.GoogleCloudRetailV2alphaImportCompletionDataResponse o) {
  buildCounterGoogleCloudRetailV2alphaImportCompletionDataResponse++;
  if (buildCounterGoogleCloudRetailV2alphaImportCompletionDataResponse < 3) {
    checkUnnamed63(o.errorSamples!);
  }
  buildCounterGoogleCloudRetailV2alphaImportCompletionDataResponse--;
}

core.int buildCounterGoogleCloudRetailV2alphaImportErrorsConfig = 0;
api.GoogleCloudRetailV2alphaImportErrorsConfig
    buildGoogleCloudRetailV2alphaImportErrorsConfig() {
  final o = api.GoogleCloudRetailV2alphaImportErrorsConfig();
  buildCounterGoogleCloudRetailV2alphaImportErrorsConfig++;
  if (buildCounterGoogleCloudRetailV2alphaImportErrorsConfig < 3) {
    o.gcsPrefix = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaImportErrorsConfig--;
  return o;
}

void checkGoogleCloudRetailV2alphaImportErrorsConfig(
    api.GoogleCloudRetailV2alphaImportErrorsConfig o) {
  buildCounterGoogleCloudRetailV2alphaImportErrorsConfig++;
  if (buildCounterGoogleCloudRetailV2alphaImportErrorsConfig < 3) {
    unittest.expect(
      o.gcsPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2alphaImportErrorsConfig--;
}

core.int buildCounterGoogleCloudRetailV2alphaImportMetadata = 0;
api.GoogleCloudRetailV2alphaImportMetadata
    buildGoogleCloudRetailV2alphaImportMetadata() {
  final o = api.GoogleCloudRetailV2alphaImportMetadata();
  buildCounterGoogleCloudRetailV2alphaImportMetadata++;
  if (buildCounterGoogleCloudRetailV2alphaImportMetadata < 3) {
    o.createTime = 'foo';
    o.failureCount = 'foo';
    o.notificationPubsubTopic = 'foo';
    o.requestId = 'foo';
    o.successCount = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaImportMetadata--;
  return o;
}

void checkGoogleCloudRetailV2alphaImportMetadata(
    api.GoogleCloudRetailV2alphaImportMetadata o) {
  buildCounterGoogleCloudRetailV2alphaImportMetadata++;
  if (buildCounterGoogleCloudRetailV2alphaImportMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failureCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notificationPubsubTopic!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.successCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2alphaImportMetadata--;
}

core.List<api.GoogleRpcStatus> buildUnnamed64() => [
      buildGoogleRpcStatus(),
      buildGoogleRpcStatus(),
    ];

void checkUnnamed64(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaImportProductsResponse = 0;
api.GoogleCloudRetailV2alphaImportProductsResponse
    buildGoogleCloudRetailV2alphaImportProductsResponse() {
  final o = api.GoogleCloudRetailV2alphaImportProductsResponse();
  buildCounterGoogleCloudRetailV2alphaImportProductsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaImportProductsResponse < 3) {
    o.errorSamples = buildUnnamed64();
    o.errorsConfig = buildGoogleCloudRetailV2alphaImportErrorsConfig();
  }
  buildCounterGoogleCloudRetailV2alphaImportProductsResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaImportProductsResponse(
    api.GoogleCloudRetailV2alphaImportProductsResponse o) {
  buildCounterGoogleCloudRetailV2alphaImportProductsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaImportProductsResponse < 3) {
    checkUnnamed64(o.errorSamples!);
    checkGoogleCloudRetailV2alphaImportErrorsConfig(o.errorsConfig!);
  }
  buildCounterGoogleCloudRetailV2alphaImportProductsResponse--;
}

core.List<api.GoogleRpcStatus> buildUnnamed65() => [
      buildGoogleRpcStatus(),
      buildGoogleRpcStatus(),
    ];

void checkUnnamed65(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int buildCounterGoogleCloudRetailV2alphaImportUserEventsResponse = 0;
api.GoogleCloudRetailV2alphaImportUserEventsResponse
    buildGoogleCloudRetailV2alphaImportUserEventsResponse() {
  final o = api.GoogleCloudRetailV2alphaImportUserEventsResponse();
  buildCounterGoogleCloudRetailV2alphaImportUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaImportUserEventsResponse < 3) {
    o.errorSamples = buildUnnamed65();
    o.errorsConfig = buildGoogleCloudRetailV2alphaImportErrorsConfig();
    o.importSummary = buildGoogleCloudRetailV2alphaUserEventImportSummary();
  }
  buildCounterGoogleCloudRetailV2alphaImportUserEventsResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaImportUserEventsResponse(
    api.GoogleCloudRetailV2alphaImportUserEventsResponse o) {
  buildCounterGoogleCloudRetailV2alphaImportUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaImportUserEventsResponse < 3) {
    checkUnnamed65(o.errorSamples!);
    checkGoogleCloudRetailV2alphaImportErrorsConfig(o.errorsConfig!);
    checkGoogleCloudRetailV2alphaUserEventImportSummary(o.importSummary!);
  }
  buildCounterGoogleCloudRetailV2alphaImportUserEventsResponse--;
}

core.int buildCounterGoogleCloudRetailV2alphaPurgeMetadata = 0;
api.GoogleCloudRetailV2alphaPurgeMetadata
    buildGoogleCloudRetailV2alphaPurgeMetadata() {
  final o = api.GoogleCloudRetailV2alphaPurgeMetadata();
  buildCounterGoogleCloudRetailV2alphaPurgeMetadata++;
  if (buildCounterGoogleCloudRetailV2alphaPurgeMetadata < 3) {}
  buildCounterGoogleCloudRetailV2alphaPurgeMetadata--;
  return o;
}

void checkGoogleCloudRetailV2alphaPurgeMetadata(
    api.GoogleCloudRetailV2alphaPurgeMetadata o) {
  buildCounterGoogleCloudRetailV2alphaPurgeMetadata++;
  if (buildCounterGoogleCloudRetailV2alphaPurgeMetadata < 3) {}
  buildCounterGoogleCloudRetailV2alphaPurgeMetadata--;
}

core.int buildCounterGoogleCloudRetailV2alphaPurgeUserEventsResponse = 0;
api.GoogleCloudRetailV2alphaPurgeUserEventsResponse
    buildGoogleCloudRetailV2alphaPurgeUserEventsResponse() {
  final o = api.GoogleCloudRetailV2alphaPurgeUserEventsResponse();
  buildCounterGoogleCloudRetailV2alphaPurgeUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaPurgeUserEventsResponse < 3) {
    o.purgedEventsCount = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaPurgeUserEventsResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaPurgeUserEventsResponse(
    api.GoogleCloudRetailV2alphaPurgeUserEventsResponse o) {
  buildCounterGoogleCloudRetailV2alphaPurgeUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaPurgeUserEventsResponse < 3) {
    unittest.expect(
      o.purgedEventsCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2alphaPurgeUserEventsResponse--;
}

core.int buildCounterGoogleCloudRetailV2alphaRejoinUserEventsMetadata = 0;
api.GoogleCloudRetailV2alphaRejoinUserEventsMetadata
    buildGoogleCloudRetailV2alphaRejoinUserEventsMetadata() {
  final o = api.GoogleCloudRetailV2alphaRejoinUserEventsMetadata();
  buildCounterGoogleCloudRetailV2alphaRejoinUserEventsMetadata++;
  if (buildCounterGoogleCloudRetailV2alphaRejoinUserEventsMetadata < 3) {}
  buildCounterGoogleCloudRetailV2alphaRejoinUserEventsMetadata--;
  return o;
}

void checkGoogleCloudRetailV2alphaRejoinUserEventsMetadata(
    api.GoogleCloudRetailV2alphaRejoinUserEventsMetadata o) {
  buildCounterGoogleCloudRetailV2alphaRejoinUserEventsMetadata++;
  if (buildCounterGoogleCloudRetailV2alphaRejoinUserEventsMetadata < 3) {}
  buildCounterGoogleCloudRetailV2alphaRejoinUserEventsMetadata--;
}

core.int buildCounterGoogleCloudRetailV2alphaRejoinUserEventsResponse = 0;
api.GoogleCloudRetailV2alphaRejoinUserEventsResponse
    buildGoogleCloudRetailV2alphaRejoinUserEventsResponse() {
  final o = api.GoogleCloudRetailV2alphaRejoinUserEventsResponse();
  buildCounterGoogleCloudRetailV2alphaRejoinUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaRejoinUserEventsResponse < 3) {
    o.rejoinedUserEventsCount = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaRejoinUserEventsResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaRejoinUserEventsResponse(
    api.GoogleCloudRetailV2alphaRejoinUserEventsResponse o) {
  buildCounterGoogleCloudRetailV2alphaRejoinUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaRejoinUserEventsResponse < 3) {
    unittest.expect(
      o.rejoinedUserEventsCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2alphaRejoinUserEventsResponse--;
}

core.int buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata =
    0;
api.GoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata
    buildGoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata() {
  final o = api.GoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata();
  buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata++;
  if (buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata <
      3) {}
  buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata--;
  return o;
}

void checkGoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata(
    api.GoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata o) {
  buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata++;
  if (buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata <
      3) {}
  buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata--;
}

core.int buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse =
    0;
api.GoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse
    buildGoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse() {
  final o = api.GoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse();
  buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse++;
  if (buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse <
      3) {}
  buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse(
    api.GoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse o) {
  buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse++;
  if (buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse <
      3) {}
  buildCounterGoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse--;
}

core.int buildCounterGoogleCloudRetailV2alphaSetInventoryMetadata = 0;
api.GoogleCloudRetailV2alphaSetInventoryMetadata
    buildGoogleCloudRetailV2alphaSetInventoryMetadata() {
  final o = api.GoogleCloudRetailV2alphaSetInventoryMetadata();
  buildCounterGoogleCloudRetailV2alphaSetInventoryMetadata++;
  if (buildCounterGoogleCloudRetailV2alphaSetInventoryMetadata < 3) {}
  buildCounterGoogleCloudRetailV2alphaSetInventoryMetadata--;
  return o;
}

void checkGoogleCloudRetailV2alphaSetInventoryMetadata(
    api.GoogleCloudRetailV2alphaSetInventoryMetadata o) {
  buildCounterGoogleCloudRetailV2alphaSetInventoryMetadata++;
  if (buildCounterGoogleCloudRetailV2alphaSetInventoryMetadata < 3) {}
  buildCounterGoogleCloudRetailV2alphaSetInventoryMetadata--;
}

core.int buildCounterGoogleCloudRetailV2alphaSetInventoryResponse = 0;
api.GoogleCloudRetailV2alphaSetInventoryResponse
    buildGoogleCloudRetailV2alphaSetInventoryResponse() {
  final o = api.GoogleCloudRetailV2alphaSetInventoryResponse();
  buildCounterGoogleCloudRetailV2alphaSetInventoryResponse++;
  if (buildCounterGoogleCloudRetailV2alphaSetInventoryResponse < 3) {}
  buildCounterGoogleCloudRetailV2alphaSetInventoryResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaSetInventoryResponse(
    api.GoogleCloudRetailV2alphaSetInventoryResponse o) {
  buildCounterGoogleCloudRetailV2alphaSetInventoryResponse++;
  if (buildCounterGoogleCloudRetailV2alphaSetInventoryResponse < 3) {}
  buildCounterGoogleCloudRetailV2alphaSetInventoryResponse--;
}

core.int buildCounterGoogleCloudRetailV2alphaUserEventImportSummary = 0;
api.GoogleCloudRetailV2alphaUserEventImportSummary
    buildGoogleCloudRetailV2alphaUserEventImportSummary() {
  final o = api.GoogleCloudRetailV2alphaUserEventImportSummary();
  buildCounterGoogleCloudRetailV2alphaUserEventImportSummary++;
  if (buildCounterGoogleCloudRetailV2alphaUserEventImportSummary < 3) {
    o.joinedEventsCount = 'foo';
    o.unjoinedEventsCount = 'foo';
  }
  buildCounterGoogleCloudRetailV2alphaUserEventImportSummary--;
  return o;
}

void checkGoogleCloudRetailV2alphaUserEventImportSummary(
    api.GoogleCloudRetailV2alphaUserEventImportSummary o) {
  buildCounterGoogleCloudRetailV2alphaUserEventImportSummary++;
  if (buildCounterGoogleCloudRetailV2alphaUserEventImportSummary < 3) {
    unittest.expect(
      o.joinedEventsCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unjoinedEventsCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2alphaUserEventImportSummary--;
}

core.int buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesMetadata = 0;
api.GoogleCloudRetailV2betaAddFulfillmentPlacesMetadata
    buildGoogleCloudRetailV2betaAddFulfillmentPlacesMetadata() {
  final o = api.GoogleCloudRetailV2betaAddFulfillmentPlacesMetadata();
  buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesMetadata++;
  if (buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesMetadata < 3) {}
  buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesMetadata--;
  return o;
}

void checkGoogleCloudRetailV2betaAddFulfillmentPlacesMetadata(
    api.GoogleCloudRetailV2betaAddFulfillmentPlacesMetadata o) {
  buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesMetadata++;
  if (buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesMetadata < 3) {}
  buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesMetadata--;
}

core.int buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesResponse = 0;
api.GoogleCloudRetailV2betaAddFulfillmentPlacesResponse
    buildGoogleCloudRetailV2betaAddFulfillmentPlacesResponse() {
  final o = api.GoogleCloudRetailV2betaAddFulfillmentPlacesResponse();
  buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesResponse++;
  if (buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesResponse < 3) {}
  buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaAddFulfillmentPlacesResponse(
    api.GoogleCloudRetailV2betaAddFulfillmentPlacesResponse o) {
  buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesResponse++;
  if (buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesResponse < 3) {}
  buildCounterGoogleCloudRetailV2betaAddFulfillmentPlacesResponse--;
}

core.int buildCounterGoogleCloudRetailV2betaExportErrorsConfig = 0;
api.GoogleCloudRetailV2betaExportErrorsConfig
    buildGoogleCloudRetailV2betaExportErrorsConfig() {
  final o = api.GoogleCloudRetailV2betaExportErrorsConfig();
  buildCounterGoogleCloudRetailV2betaExportErrorsConfig++;
  if (buildCounterGoogleCloudRetailV2betaExportErrorsConfig < 3) {
    o.gcsPrefix = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaExportErrorsConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaExportErrorsConfig(
    api.GoogleCloudRetailV2betaExportErrorsConfig o) {
  buildCounterGoogleCloudRetailV2betaExportErrorsConfig++;
  if (buildCounterGoogleCloudRetailV2betaExportErrorsConfig < 3) {
    unittest.expect(
      o.gcsPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2betaExportErrorsConfig--;
}

core.int buildCounterGoogleCloudRetailV2betaExportMetadata = 0;
api.GoogleCloudRetailV2betaExportMetadata
    buildGoogleCloudRetailV2betaExportMetadata() {
  final o = api.GoogleCloudRetailV2betaExportMetadata();
  buildCounterGoogleCloudRetailV2betaExportMetadata++;
  if (buildCounterGoogleCloudRetailV2betaExportMetadata < 3) {
    o.createTime = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaExportMetadata--;
  return o;
}

void checkGoogleCloudRetailV2betaExportMetadata(
    api.GoogleCloudRetailV2betaExportMetadata o) {
  buildCounterGoogleCloudRetailV2betaExportMetadata++;
  if (buildCounterGoogleCloudRetailV2betaExportMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2betaExportMetadata--;
}

core.List<api.GoogleRpcStatus> buildUnnamed66() => [
      buildGoogleRpcStatus(),
      buildGoogleRpcStatus(),
    ];

void checkUnnamed66(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaExportProductsResponse = 0;
api.GoogleCloudRetailV2betaExportProductsResponse
    buildGoogleCloudRetailV2betaExportProductsResponse() {
  final o = api.GoogleCloudRetailV2betaExportProductsResponse();
  buildCounterGoogleCloudRetailV2betaExportProductsResponse++;
  if (buildCounterGoogleCloudRetailV2betaExportProductsResponse < 3) {
    o.errorSamples = buildUnnamed66();
    o.errorsConfig = buildGoogleCloudRetailV2betaExportErrorsConfig();
  }
  buildCounterGoogleCloudRetailV2betaExportProductsResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaExportProductsResponse(
    api.GoogleCloudRetailV2betaExportProductsResponse o) {
  buildCounterGoogleCloudRetailV2betaExportProductsResponse++;
  if (buildCounterGoogleCloudRetailV2betaExportProductsResponse < 3) {
    checkUnnamed66(o.errorSamples!);
    checkGoogleCloudRetailV2betaExportErrorsConfig(o.errorsConfig!);
  }
  buildCounterGoogleCloudRetailV2betaExportProductsResponse--;
}

core.List<api.GoogleRpcStatus> buildUnnamed67() => [
      buildGoogleRpcStatus(),
      buildGoogleRpcStatus(),
    ];

void checkUnnamed67(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaExportUserEventsResponse = 0;
api.GoogleCloudRetailV2betaExportUserEventsResponse
    buildGoogleCloudRetailV2betaExportUserEventsResponse() {
  final o = api.GoogleCloudRetailV2betaExportUserEventsResponse();
  buildCounterGoogleCloudRetailV2betaExportUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2betaExportUserEventsResponse < 3) {
    o.errorSamples = buildUnnamed67();
    o.errorsConfig = buildGoogleCloudRetailV2betaExportErrorsConfig();
  }
  buildCounterGoogleCloudRetailV2betaExportUserEventsResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaExportUserEventsResponse(
    api.GoogleCloudRetailV2betaExportUserEventsResponse o) {
  buildCounterGoogleCloudRetailV2betaExportUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2betaExportUserEventsResponse < 3) {
    checkUnnamed67(o.errorSamples!);
    checkGoogleCloudRetailV2betaExportErrorsConfig(o.errorsConfig!);
  }
  buildCounterGoogleCloudRetailV2betaExportUserEventsResponse--;
}

core.List<api.GoogleRpcStatus> buildUnnamed68() => [
      buildGoogleRpcStatus(),
      buildGoogleRpcStatus(),
    ];

void checkUnnamed68(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaImportCompletionDataResponse = 0;
api.GoogleCloudRetailV2betaImportCompletionDataResponse
    buildGoogleCloudRetailV2betaImportCompletionDataResponse() {
  final o = api.GoogleCloudRetailV2betaImportCompletionDataResponse();
  buildCounterGoogleCloudRetailV2betaImportCompletionDataResponse++;
  if (buildCounterGoogleCloudRetailV2betaImportCompletionDataResponse < 3) {
    o.errorSamples = buildUnnamed68();
  }
  buildCounterGoogleCloudRetailV2betaImportCompletionDataResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaImportCompletionDataResponse(
    api.GoogleCloudRetailV2betaImportCompletionDataResponse o) {
  buildCounterGoogleCloudRetailV2betaImportCompletionDataResponse++;
  if (buildCounterGoogleCloudRetailV2betaImportCompletionDataResponse < 3) {
    checkUnnamed68(o.errorSamples!);
  }
  buildCounterGoogleCloudRetailV2betaImportCompletionDataResponse--;
}

core.int buildCounterGoogleCloudRetailV2betaImportErrorsConfig = 0;
api.GoogleCloudRetailV2betaImportErrorsConfig
    buildGoogleCloudRetailV2betaImportErrorsConfig() {
  final o = api.GoogleCloudRetailV2betaImportErrorsConfig();
  buildCounterGoogleCloudRetailV2betaImportErrorsConfig++;
  if (buildCounterGoogleCloudRetailV2betaImportErrorsConfig < 3) {
    o.gcsPrefix = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaImportErrorsConfig--;
  return o;
}

void checkGoogleCloudRetailV2betaImportErrorsConfig(
    api.GoogleCloudRetailV2betaImportErrorsConfig o) {
  buildCounterGoogleCloudRetailV2betaImportErrorsConfig++;
  if (buildCounterGoogleCloudRetailV2betaImportErrorsConfig < 3) {
    unittest.expect(
      o.gcsPrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2betaImportErrorsConfig--;
}

core.int buildCounterGoogleCloudRetailV2betaImportMetadata = 0;
api.GoogleCloudRetailV2betaImportMetadata
    buildGoogleCloudRetailV2betaImportMetadata() {
  final o = api.GoogleCloudRetailV2betaImportMetadata();
  buildCounterGoogleCloudRetailV2betaImportMetadata++;
  if (buildCounterGoogleCloudRetailV2betaImportMetadata < 3) {
    o.createTime = 'foo';
    o.failureCount = 'foo';
    o.notificationPubsubTopic = 'foo';
    o.requestId = 'foo';
    o.successCount = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaImportMetadata--;
  return o;
}

void checkGoogleCloudRetailV2betaImportMetadata(
    api.GoogleCloudRetailV2betaImportMetadata o) {
  buildCounterGoogleCloudRetailV2betaImportMetadata++;
  if (buildCounterGoogleCloudRetailV2betaImportMetadata < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failureCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notificationPubsubTopic!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.successCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2betaImportMetadata--;
}

core.List<api.GoogleRpcStatus> buildUnnamed69() => [
      buildGoogleRpcStatus(),
      buildGoogleRpcStatus(),
    ];

void checkUnnamed69(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaImportProductsResponse = 0;
api.GoogleCloudRetailV2betaImportProductsResponse
    buildGoogleCloudRetailV2betaImportProductsResponse() {
  final o = api.GoogleCloudRetailV2betaImportProductsResponse();
  buildCounterGoogleCloudRetailV2betaImportProductsResponse++;
  if (buildCounterGoogleCloudRetailV2betaImportProductsResponse < 3) {
    o.errorSamples = buildUnnamed69();
    o.errorsConfig = buildGoogleCloudRetailV2betaImportErrorsConfig();
  }
  buildCounterGoogleCloudRetailV2betaImportProductsResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaImportProductsResponse(
    api.GoogleCloudRetailV2betaImportProductsResponse o) {
  buildCounterGoogleCloudRetailV2betaImportProductsResponse++;
  if (buildCounterGoogleCloudRetailV2betaImportProductsResponse < 3) {
    checkUnnamed69(o.errorSamples!);
    checkGoogleCloudRetailV2betaImportErrorsConfig(o.errorsConfig!);
  }
  buildCounterGoogleCloudRetailV2betaImportProductsResponse--;
}

core.List<api.GoogleRpcStatus> buildUnnamed70() => [
      buildGoogleRpcStatus(),
      buildGoogleRpcStatus(),
    ];

void checkUnnamed70(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int buildCounterGoogleCloudRetailV2betaImportUserEventsResponse = 0;
api.GoogleCloudRetailV2betaImportUserEventsResponse
    buildGoogleCloudRetailV2betaImportUserEventsResponse() {
  final o = api.GoogleCloudRetailV2betaImportUserEventsResponse();
  buildCounterGoogleCloudRetailV2betaImportUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2betaImportUserEventsResponse < 3) {
    o.errorSamples = buildUnnamed70();
    o.errorsConfig = buildGoogleCloudRetailV2betaImportErrorsConfig();
    o.importSummary = buildGoogleCloudRetailV2betaUserEventImportSummary();
  }
  buildCounterGoogleCloudRetailV2betaImportUserEventsResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaImportUserEventsResponse(
    api.GoogleCloudRetailV2betaImportUserEventsResponse o) {
  buildCounterGoogleCloudRetailV2betaImportUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2betaImportUserEventsResponse < 3) {
    checkUnnamed70(o.errorSamples!);
    checkGoogleCloudRetailV2betaImportErrorsConfig(o.errorsConfig!);
    checkGoogleCloudRetailV2betaUserEventImportSummary(o.importSummary!);
  }
  buildCounterGoogleCloudRetailV2betaImportUserEventsResponse--;
}

core.int buildCounterGoogleCloudRetailV2betaPurgeMetadata = 0;
api.GoogleCloudRetailV2betaPurgeMetadata
    buildGoogleCloudRetailV2betaPurgeMetadata() {
  final o = api.GoogleCloudRetailV2betaPurgeMetadata();
  buildCounterGoogleCloudRetailV2betaPurgeMetadata++;
  if (buildCounterGoogleCloudRetailV2betaPurgeMetadata < 3) {}
  buildCounterGoogleCloudRetailV2betaPurgeMetadata--;
  return o;
}

void checkGoogleCloudRetailV2betaPurgeMetadata(
    api.GoogleCloudRetailV2betaPurgeMetadata o) {
  buildCounterGoogleCloudRetailV2betaPurgeMetadata++;
  if (buildCounterGoogleCloudRetailV2betaPurgeMetadata < 3) {}
  buildCounterGoogleCloudRetailV2betaPurgeMetadata--;
}

core.int buildCounterGoogleCloudRetailV2betaPurgeUserEventsResponse = 0;
api.GoogleCloudRetailV2betaPurgeUserEventsResponse
    buildGoogleCloudRetailV2betaPurgeUserEventsResponse() {
  final o = api.GoogleCloudRetailV2betaPurgeUserEventsResponse();
  buildCounterGoogleCloudRetailV2betaPurgeUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2betaPurgeUserEventsResponse < 3) {
    o.purgedEventsCount = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaPurgeUserEventsResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaPurgeUserEventsResponse(
    api.GoogleCloudRetailV2betaPurgeUserEventsResponse o) {
  buildCounterGoogleCloudRetailV2betaPurgeUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2betaPurgeUserEventsResponse < 3) {
    unittest.expect(
      o.purgedEventsCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2betaPurgeUserEventsResponse--;
}

core.int buildCounterGoogleCloudRetailV2betaRejoinUserEventsMetadata = 0;
api.GoogleCloudRetailV2betaRejoinUserEventsMetadata
    buildGoogleCloudRetailV2betaRejoinUserEventsMetadata() {
  final o = api.GoogleCloudRetailV2betaRejoinUserEventsMetadata();
  buildCounterGoogleCloudRetailV2betaRejoinUserEventsMetadata++;
  if (buildCounterGoogleCloudRetailV2betaRejoinUserEventsMetadata < 3) {}
  buildCounterGoogleCloudRetailV2betaRejoinUserEventsMetadata--;
  return o;
}

void checkGoogleCloudRetailV2betaRejoinUserEventsMetadata(
    api.GoogleCloudRetailV2betaRejoinUserEventsMetadata o) {
  buildCounterGoogleCloudRetailV2betaRejoinUserEventsMetadata++;
  if (buildCounterGoogleCloudRetailV2betaRejoinUserEventsMetadata < 3) {}
  buildCounterGoogleCloudRetailV2betaRejoinUserEventsMetadata--;
}

core.int buildCounterGoogleCloudRetailV2betaRejoinUserEventsResponse = 0;
api.GoogleCloudRetailV2betaRejoinUserEventsResponse
    buildGoogleCloudRetailV2betaRejoinUserEventsResponse() {
  final o = api.GoogleCloudRetailV2betaRejoinUserEventsResponse();
  buildCounterGoogleCloudRetailV2betaRejoinUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2betaRejoinUserEventsResponse < 3) {
    o.rejoinedUserEventsCount = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaRejoinUserEventsResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaRejoinUserEventsResponse(
    api.GoogleCloudRetailV2betaRejoinUserEventsResponse o) {
  buildCounterGoogleCloudRetailV2betaRejoinUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2betaRejoinUserEventsResponse < 3) {
    unittest.expect(
      o.rejoinedUserEventsCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2betaRejoinUserEventsResponse--;
}

core.int buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata = 0;
api.GoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata
    buildGoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata() {
  final o = api.GoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata();
  buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata++;
  if (buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata < 3) {}
  buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata--;
  return o;
}

void checkGoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata(
    api.GoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata o) {
  buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata++;
  if (buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata < 3) {}
  buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata--;
}

core.int buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse = 0;
api.GoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse
    buildGoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse() {
  final o = api.GoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse();
  buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse++;
  if (buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse < 3) {}
  buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse(
    api.GoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse o) {
  buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse++;
  if (buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse < 3) {}
  buildCounterGoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse--;
}

core.int buildCounterGoogleCloudRetailV2betaSetInventoryMetadata = 0;
api.GoogleCloudRetailV2betaSetInventoryMetadata
    buildGoogleCloudRetailV2betaSetInventoryMetadata() {
  final o = api.GoogleCloudRetailV2betaSetInventoryMetadata();
  buildCounterGoogleCloudRetailV2betaSetInventoryMetadata++;
  if (buildCounterGoogleCloudRetailV2betaSetInventoryMetadata < 3) {}
  buildCounterGoogleCloudRetailV2betaSetInventoryMetadata--;
  return o;
}

void checkGoogleCloudRetailV2betaSetInventoryMetadata(
    api.GoogleCloudRetailV2betaSetInventoryMetadata o) {
  buildCounterGoogleCloudRetailV2betaSetInventoryMetadata++;
  if (buildCounterGoogleCloudRetailV2betaSetInventoryMetadata < 3) {}
  buildCounterGoogleCloudRetailV2betaSetInventoryMetadata--;
}

core.int buildCounterGoogleCloudRetailV2betaSetInventoryResponse = 0;
api.GoogleCloudRetailV2betaSetInventoryResponse
    buildGoogleCloudRetailV2betaSetInventoryResponse() {
  final o = api.GoogleCloudRetailV2betaSetInventoryResponse();
  buildCounterGoogleCloudRetailV2betaSetInventoryResponse++;
  if (buildCounterGoogleCloudRetailV2betaSetInventoryResponse < 3) {}
  buildCounterGoogleCloudRetailV2betaSetInventoryResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaSetInventoryResponse(
    api.GoogleCloudRetailV2betaSetInventoryResponse o) {
  buildCounterGoogleCloudRetailV2betaSetInventoryResponse++;
  if (buildCounterGoogleCloudRetailV2betaSetInventoryResponse < 3) {}
  buildCounterGoogleCloudRetailV2betaSetInventoryResponse--;
}

core.int buildCounterGoogleCloudRetailV2betaUserEventImportSummary = 0;
api.GoogleCloudRetailV2betaUserEventImportSummary
    buildGoogleCloudRetailV2betaUserEventImportSummary() {
  final o = api.GoogleCloudRetailV2betaUserEventImportSummary();
  buildCounterGoogleCloudRetailV2betaUserEventImportSummary++;
  if (buildCounterGoogleCloudRetailV2betaUserEventImportSummary < 3) {
    o.joinedEventsCount = 'foo';
    o.unjoinedEventsCount = 'foo';
  }
  buildCounterGoogleCloudRetailV2betaUserEventImportSummary--;
  return o;
}

void checkGoogleCloudRetailV2betaUserEventImportSummary(
    api.GoogleCloudRetailV2betaUserEventImportSummary o) {
  buildCounterGoogleCloudRetailV2betaUserEventImportSummary++;
  if (buildCounterGoogleCloudRetailV2betaUserEventImportSummary < 3) {
    unittest.expect(
      o.joinedEventsCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unjoinedEventsCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2betaUserEventImportSummary--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed71() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed71(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed71();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed71(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed72() => {
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

void checkUnnamed72(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o['x']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(
    casted13['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted13['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted13['string'],
    unittest.equals('foo'),
  );
  var casted14 = (o['y']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(
    casted14['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted14['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted14['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object> buildUnnamed73() => {
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

void checkUnnamed73(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o['x']!) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(
    casted15['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted15['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted15['string'],
    unittest.equals('foo'),
  );
  var casted16 = (o['y']!) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(
    casted16['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted16['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted16['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed72();
    o.name = 'foo';
    o.response = buildUnnamed73();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed72(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed73(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

core.Map<core.String, core.Object> buildUnnamed74() => {
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

void checkUnnamed74(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted17 = (o['x']!) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(
    casted17['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted17['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted17['string'],
    unittest.equals('foo'),
  );
  var casted18 = (o['y']!) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(
    casted18['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted18['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted18['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object>> buildUnnamed75() => [
      buildUnnamed74(),
      buildUnnamed74(),
    ];

void checkUnnamed75(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed74(o[0]);
  checkUnnamed74(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed75();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed75(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeDate = 0;
api.GoogleTypeDate buildGoogleTypeDate() {
  final o = api.GoogleTypeDate();
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterGoogleTypeDate--;
  return o;
}

void checkGoogleTypeDate(api.GoogleTypeDate o) {
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleTypeDate--;
}

core.List<core.String> buildUnnamed76() => [
      'foo',
      'foo',
    ];

void checkUnnamed76(core.List<core.String> o) {
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
  unittest.group('obj-schema-GoogleApiHttpBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleApiHttpBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleApiHttpBody.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiHttpBody(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailLoggingErrorContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailLoggingErrorContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailLoggingErrorContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailLoggingErrorContext(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailLoggingErrorLog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailLoggingErrorLog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailLoggingErrorLog.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailLoggingErrorLog(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailLoggingHttpRequestContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailLoggingHttpRequestContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailLoggingHttpRequestContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailLoggingHttpRequestContext(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailLoggingImportErrorContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailLoggingImportErrorContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailLoggingImportErrorContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailLoggingImportErrorContext(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailLoggingServiceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailLoggingServiceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailLoggingServiceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailLoggingServiceContext(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailLoggingSourceLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailLoggingSourceLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailLoggingSourceLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailLoggingSourceLocation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2AddFulfillmentPlacesMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2AddFulfillmentPlacesMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2AddFulfillmentPlacesMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2AddFulfillmentPlacesMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2AddFulfillmentPlacesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2AddFulfillmentPlacesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2AddFulfillmentPlacesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2AddFulfillmentPlacesRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2AddFulfillmentPlacesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2AddFulfillmentPlacesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2AddFulfillmentPlacesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2AddFulfillmentPlacesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2Audience', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Audience();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Audience.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2Audience(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2BigQuerySource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2BigQuerySource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2BigQuerySource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2BigQuerySource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2Catalog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Catalog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Catalog.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2Catalog(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ColorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ColorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ColorInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2ColorInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2CompleteQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2CompleteQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2CompleteQueryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2CompleteQueryResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRetailV2CompleteQueryResponseCompletionResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2CompleteQueryResponseCompletionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRetailV2CompleteQueryResponseCompletionResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2CompleteQueryResponseCompletionResult(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2CompleteQueryResponseRecentSearchResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2CompletionDataInputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2CompletionDataInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2CompletionDataInputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2CompletionDataInputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2CompletionDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2CompletionDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2CompletionDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2CompletionDetail(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2CustomAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2CustomAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2CustomAttribute.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2CustomAttribute(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2FulfillmentInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2FulfillmentInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2FulfillmentInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2FulfillmentInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2GcsSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2GcsSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2GcsSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2GcsSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2GetDefaultBranchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2GetDefaultBranchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2GetDefaultBranchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2GetDefaultBranchResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2Image', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Image();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Image.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2Image(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ImportCompletionDataRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ImportCompletionDataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ImportCompletionDataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2ImportCompletionDataRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ImportCompletionDataResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ImportCompletionDataResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ImportCompletionDataResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2ImportCompletionDataResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ImportErrorsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ImportErrorsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ImportErrorsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2ImportErrorsConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ImportMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ImportMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ImportMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2ImportMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ImportProductsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ImportProductsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ImportProductsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2ImportProductsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ImportProductsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ImportProductsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ImportProductsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2ImportProductsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ImportUserEventsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ImportUserEventsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ImportUserEventsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2ImportUserEventsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ImportUserEventsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ImportUserEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ImportUserEventsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2ImportUserEventsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2Interval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Interval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Interval.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2Interval(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ListCatalogsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ListCatalogsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ListCatalogsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2ListCatalogsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ListProductsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ListProductsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ListProductsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2ListProductsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2PredictRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2PredictRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2PredictRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2PredictRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2PredictResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2PredictResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2PredictResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2PredictResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRetailV2PredictResponsePredictionResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2PredictResponsePredictionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRetailV2PredictResponsePredictionResult.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2PredictResponsePredictionResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2PriceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2PriceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2PriceInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2PriceInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2PriceInfoPriceRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2PriceInfoPriceRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2PriceInfoPriceRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2PriceInfoPriceRange(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2Product', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Product();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Product.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2Product(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ProductDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ProductDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ProductDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2ProductDetail(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ProductInlineSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ProductInlineSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ProductInlineSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2ProductInlineSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ProductInputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ProductInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ProductInputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2ProductInputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2ProductLevelConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ProductLevelConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ProductLevelConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2ProductLevelConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2Promotion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Promotion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Promotion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2Promotion(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2PurchaseTransaction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2PurchaseTransaction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2PurchaseTransaction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2PurchaseTransaction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2PurgeMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2PurgeMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2PurgeMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2PurgeMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2PurgeUserEventsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2PurgeUserEventsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2PurgeUserEventsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2PurgeUserEventsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2PurgeUserEventsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2PurgeUserEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2PurgeUserEventsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2PurgeUserEventsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2Rating', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Rating();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Rating.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2Rating(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2RejoinUserEventsMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2RejoinUserEventsMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2RejoinUserEventsMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2RejoinUserEventsMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2RejoinUserEventsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2RejoinUserEventsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2RejoinUserEventsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2RejoinUserEventsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2RejoinUserEventsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2RejoinUserEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2RejoinUserEventsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2RejoinUserEventsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRetailV2RemoveFulfillmentPlacesMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2RemoveFulfillmentPlacesMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRetailV2RemoveFulfillmentPlacesMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2RemoveFulfillmentPlacesMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2RemoveFulfillmentPlacesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2RemoveFulfillmentPlacesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2RemoveFulfillmentPlacesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2RemoveFulfillmentPlacesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRetailV2RemoveFulfillmentPlacesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2RemoveFulfillmentPlacesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRetailV2RemoveFulfillmentPlacesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2RemoveFulfillmentPlacesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2SearchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SearchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SearchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2SearchRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2SearchRequestBoostSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SearchRequestBoostSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SearchRequestBoostSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2SearchRequestBoostSpec(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2SearchRequestDynamicFacetSpec',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SearchRequestDynamicFacetSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SearchRequestDynamicFacetSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2SearchRequestDynamicFacetSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2SearchRequestFacetSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SearchRequestFacetSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SearchRequestFacetSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2SearchRequestFacetSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2SearchRequestFacetSpecFacetKey',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SearchRequestFacetSpecFacetKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SearchRequestFacetSpecFacetKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2SearchRequestFacetSpecFacetKey(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRetailV2SearchRequestQueryExpansionSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SearchRequestQueryExpansionSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRetailV2SearchRequestQueryExpansionSpec.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2SearchRequestQueryExpansionSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2SearchResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SearchResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SearchResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2SearchResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2SearchResponseFacet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SearchResponseFacet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SearchResponseFacet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2SearchResponseFacet(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2SearchResponseFacetFacetValue',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SearchResponseFacetFacetValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SearchResponseFacetFacetValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2SearchResponseFacetFacetValue(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRetailV2SearchResponseQueryExpansionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SearchResponseQueryExpansionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRetailV2SearchResponseQueryExpansionInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2SearchResponseQueryExpansionInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2SearchResponseSearchResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SearchResponseSearchResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SearchResponseSearchResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2SearchResponseSearchResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2SetDefaultBranchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SetDefaultBranchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SetDefaultBranchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2SetDefaultBranchRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2SetInventoryMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SetInventoryMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SetInventoryMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2SetInventoryMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2SetInventoryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SetInventoryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SetInventoryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2SetInventoryRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2SetInventoryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2SetInventoryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2SetInventoryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2SetInventoryResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2UserEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2UserEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2UserEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2UserEvent(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2UserEventImportSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2UserEventImportSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2UserEventImportSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2UserEventImportSummary(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2UserEventInlineSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2UserEventInlineSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2UserEventInlineSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2UserEventInlineSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2UserEventInputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2UserEventInputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2UserEventInputConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2UserEventInputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2UserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2UserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2UserInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2UserInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRetailV2alphaAddFulfillmentPlacesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaAddFulfillmentPlacesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRetailV2alphaAddFulfillmentPlacesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaAddFulfillmentPlacesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaExportErrorsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaExportErrorsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaExportErrorsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaExportErrorsConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaExportMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaExportMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaExportMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaExportMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaExportProductsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaExportProductsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaExportProductsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaExportProductsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaExportUserEventsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaExportUserEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaExportUserEventsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaExportUserEventsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRetailV2alphaImportCompletionDataResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaImportCompletionDataResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRetailV2alphaImportCompletionDataResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaImportCompletionDataResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaImportErrorsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaImportErrorsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaImportErrorsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaImportErrorsConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaImportMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaImportMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaImportMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaImportMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaImportProductsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaImportProductsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaImportProductsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaImportProductsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaImportUserEventsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaImportUserEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaImportUserEventsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaImportUserEventsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaPurgeMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaPurgeMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaPurgeMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaPurgeMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaPurgeUserEventsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaPurgeUserEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaPurgeUserEventsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaPurgeUserEventsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaRejoinUserEventsMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaRejoinUserEventsMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaRejoinUserEventsMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaRejoinUserEventsMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaRejoinUserEventsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaRejoinUserEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaRejoinUserEventsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaRejoinUserEventsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaSetInventoryMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaSetInventoryMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaSetInventoryMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaSetInventoryMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaSetInventoryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaSetInventoryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaSetInventoryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaSetInventoryResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2alphaUserEventImportSummary',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2alphaUserEventImportSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2alphaUserEventImportSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2alphaUserEventImportSummary(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRetailV2betaAddFulfillmentPlacesMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaAddFulfillmentPlacesMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRetailV2betaAddFulfillmentPlacesMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaAddFulfillmentPlacesMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRetailV2betaAddFulfillmentPlacesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaAddFulfillmentPlacesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRetailV2betaAddFulfillmentPlacesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaAddFulfillmentPlacesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaExportErrorsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaExportErrorsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaExportErrorsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaExportErrorsConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaExportMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaExportMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaExportMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaExportMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaExportProductsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaExportProductsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaExportProductsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaExportProductsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaExportUserEventsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaExportUserEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaExportUserEventsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaExportUserEventsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRetailV2betaImportCompletionDataResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaImportCompletionDataResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRetailV2betaImportCompletionDataResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaImportCompletionDataResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaImportErrorsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaImportErrorsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaImportErrorsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaImportErrorsConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaImportMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaImportMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaImportMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaImportMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaImportProductsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaImportProductsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaImportProductsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaImportProductsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaImportUserEventsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaImportUserEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaImportUserEventsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaImportUserEventsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaPurgeMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaPurgeMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaPurgeMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaPurgeMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaPurgeUserEventsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaPurgeUserEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaPurgeUserEventsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaPurgeUserEventsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaRejoinUserEventsMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaRejoinUserEventsMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaRejoinUserEventsMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaRejoinUserEventsMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaRejoinUserEventsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaRejoinUserEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaRejoinUserEventsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaRejoinUserEventsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaSetInventoryMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaSetInventoryMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaSetInventoryMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaSetInventoryMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaSetInventoryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaSetInventoryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaSetInventoryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaSetInventoryResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudRetailV2betaUserEventImportSummary',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2betaUserEventImportSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2betaUserEventImportSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2betaUserEventImportSummary(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDate(od);
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsResource', () {
    unittest.test('method--completeQuery', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_catalog = 'foo';
      final arg_dataset = 'foo';
      final arg_deviceType = 'foo';
      final arg_languageCodes = buildUnnamed76();
      final arg_maxSuggestions = 42;
      final arg_query = 'foo';
      final arg_visitorId = 'foo';
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
          unittest.equals('v2/'),
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
          queryMap['dataset']!.first,
          unittest.equals(arg_dataset),
        );
        unittest.expect(
          queryMap['deviceType']!.first,
          unittest.equals(arg_deviceType),
        );
        unittest.expect(
          queryMap['languageCodes']!,
          unittest.equals(arg_languageCodes),
        );
        unittest.expect(
          core.int.parse(queryMap['maxSuggestions']!.first),
          unittest.equals(arg_maxSuggestions),
        );
        unittest.expect(
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['visitorId']!.first,
          unittest.equals(arg_visitorId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudRetailV2CompleteQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.completeQuery(arg_catalog,
          dataset: arg_dataset,
          deviceType: arg_deviceType,
          languageCodes: arg_languageCodes,
          maxSuggestions: arg_maxSuggestions,
          query: arg_query,
          visitorId: arg_visitorId,
          $fields: arg_$fields);
      checkGoogleCloudRetailV2CompleteQueryResponse(
          response as api.GoogleCloudRetailV2CompleteQueryResponse);
    });

    unittest.test('method--getDefaultBranch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_catalog = 'foo';
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
          unittest.equals('v2/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudRetailV2GetDefaultBranchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getDefaultBranch(arg_catalog, $fields: arg_$fields);
      checkGoogleCloudRetailV2GetDefaultBranchResponse(
          response as api.GoogleCloudRetailV2GetDefaultBranchResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
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
          unittest.equals('v2/'),
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
            convert.json.encode(buildGoogleCloudRetailV2ListCatalogsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudRetailV2ListCatalogsResponse(
          response as api.GoogleCloudRetailV2ListCatalogsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request = buildGoogleCloudRetailV2Catalog();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRetailV2Catalog.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRetailV2Catalog(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleCloudRetailV2Catalog());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudRetailV2Catalog(
          response as api.GoogleCloudRetailV2Catalog);
    });

    unittest.test('method--setDefaultBranch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.catalogs;
      final arg_request = buildGoogleCloudRetailV2SetDefaultBranchRequest();
      final arg_catalog = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRetailV2SetDefaultBranchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRetailV2SetDefaultBranchRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setDefaultBranch(arg_request, arg_catalog,
          $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsBranchesOperationsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock)
          .projects
          .locations
          .catalogs
          .branches
          .operations;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsBranchesProductsResource',
      () {
    unittest.test('method--addFulfillmentPlaces', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock)
          .projects
          .locations
          .catalogs
          .branches
          .products;
      final arg_request = buildGoogleCloudRetailV2AddFulfillmentPlacesRequest();
      final arg_product = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRetailV2AddFulfillmentPlacesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRetailV2AddFulfillmentPlacesRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.addFulfillmentPlaces(arg_request, arg_product,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock)
          .projects
          .locations
          .catalogs
          .branches
          .products;
      final arg_request = buildGoogleCloudRetailV2Product();
      final arg_parent = 'foo';
      final arg_productId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRetailV2Product.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRetailV2Product(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleCloudRetailV2Product());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          productId: arg_productId, $fields: arg_$fields);
      checkGoogleCloudRetailV2Product(
          response as api.GoogleCloudRetailV2Product);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock)
          .projects
          .locations
          .catalogs
          .branches
          .products;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock)
          .projects
          .locations
          .catalogs
          .branches
          .products;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleCloudRetailV2Product());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudRetailV2Product(
          response as api.GoogleCloudRetailV2Product);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock)
          .projects
          .locations
          .catalogs
          .branches
          .products;
      final arg_request = buildGoogleCloudRetailV2ImportProductsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRetailV2ImportProductsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRetailV2ImportProductsRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock)
          .projects
          .locations
          .catalogs
          .branches
          .products;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
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
          unittest.equals('v2/'),
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudRetailV2ListProductsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkGoogleCloudRetailV2ListProductsResponse(
          response as api.GoogleCloudRetailV2ListProductsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock)
          .projects
          .locations
          .catalogs
          .branches
          .products;
      final arg_request = buildGoogleCloudRetailV2Product();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRetailV2Product.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRetailV2Product(obj);

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
          unittest.equals('v2/'),
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
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
        final resp = convert.json.encode(buildGoogleCloudRetailV2Product());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          allowMissing: arg_allowMissing,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleCloudRetailV2Product(
          response as api.GoogleCloudRetailV2Product);
    });

    unittest.test('method--removeFulfillmentPlaces', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock)
          .projects
          .locations
          .catalogs
          .branches
          .products;
      final arg_request =
          buildGoogleCloudRetailV2RemoveFulfillmentPlacesRequest();
      final arg_product = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudRetailV2RemoveFulfillmentPlacesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRetailV2RemoveFulfillmentPlacesRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.removeFulfillmentPlaces(
          arg_request, arg_product,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--setInventory', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock)
          .projects
          .locations
          .catalogs
          .branches
          .products;
      final arg_request = buildGoogleCloudRetailV2SetInventoryRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRetailV2SetInventoryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRetailV2SetInventoryRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.setInventory(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsCompletionDataResource',
      () {
    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.completionData;
      final arg_request = buildGoogleCloudRetailV2ImportCompletionDataRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRetailV2ImportCompletionDataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRetailV2ImportCompletionDataRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.operations;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.operations;
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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsPlacementsResource', () {
    unittest.test('method--predict', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.placements;
      final arg_request = buildGoogleCloudRetailV2PredictRequest();
      final arg_placement = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRetailV2PredictRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRetailV2PredictRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudRetailV2PredictResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.predict(arg_request, arg_placement, $fields: arg_$fields);
      checkGoogleCloudRetailV2PredictResponse(
          response as api.GoogleCloudRetailV2PredictResponse);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.placements;
      final arg_request = buildGoogleCloudRetailV2SearchRequest();
      final arg_placement = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRetailV2SearchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRetailV2SearchRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudRetailV2SearchResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.search(arg_request, arg_placement, $fields: arg_$fields);
      checkGoogleCloudRetailV2SearchResponse(
          response as api.GoogleCloudRetailV2SearchResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsCatalogsUserEventsResource', () {
    unittest.test('method--collect', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.userEvents;
      final arg_parent = 'foo';
      final arg_ets = 'foo';
      final arg_uri = 'foo';
      final arg_userEvent = 'foo';
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
          unittest.equals('v2/'),
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
          queryMap['ets']!.first,
          unittest.equals(arg_ets),
        );
        unittest.expect(
          queryMap['uri']!.first,
          unittest.equals(arg_uri),
        );
        unittest.expect(
          queryMap['userEvent']!.first,
          unittest.equals(arg_userEvent),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleApiHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.collect(arg_parent,
          ets: arg_ets,
          uri: arg_uri,
          userEvent: arg_userEvent,
          $fields: arg_$fields);
      checkGoogleApiHttpBody(response as api.GoogleApiHttpBody);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.userEvents;
      final arg_request = buildGoogleCloudRetailV2ImportUserEventsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRetailV2ImportUserEventsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRetailV2ImportUserEventsRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--purge', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.userEvents;
      final arg_request = buildGoogleCloudRetailV2PurgeUserEventsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRetailV2PurgeUserEventsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRetailV2PurgeUserEventsRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.purge(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--rejoin', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.userEvents;
      final arg_request = buildGoogleCloudRetailV2RejoinUserEventsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRetailV2RejoinUserEventsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRetailV2RejoinUserEventsRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.rejoin(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--write', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudRetailApi(mock).projects.locations.catalogs.userEvents;
      final arg_request = buildGoogleCloudRetailV2UserEvent();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudRetailV2UserEvent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudRetailV2UserEvent(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleCloudRetailV2UserEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.write(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudRetailV2UserEvent(
          response as api.GoogleCloudRetailV2UserEvent);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.operations;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudRetailApi(mock).projects.locations.operations;
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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });
}
