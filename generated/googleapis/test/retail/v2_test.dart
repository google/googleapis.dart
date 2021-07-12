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

core.Map<core.String, core.Object> buildUnnamed3586() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed3586(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed3587() {
  final o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed3586());
  o.add(buildUnnamed3586());
  return o;
}

void checkUnnamed3587(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3586(o[0]);
  checkUnnamed3586(o[1]);
}

core.int buildCounterGoogleApiHttpBody = 0;
api.GoogleApiHttpBody buildGoogleApiHttpBody() {
  final o = api.GoogleApiHttpBody();
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed3587();
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
    checkUnnamed3587(o.extensions!);
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

core.Map<core.String, core.Object> buildUnnamed3588() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed3588(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed3589() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed3589(core.Map<core.String, core.Object> o) {
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
    o.requestPayload = buildUnnamed3588();
    o.responsePayload = buildUnnamed3589();
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
    checkUnnamed3588(o.requestPayload!);
    checkUnnamed3589(o.responsePayload!);
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

core.int buildCounterGoogleCloudRetailV2BigQuerySource = 0;
api.GoogleCloudRetailV2BigQuerySource buildGoogleCloudRetailV2BigQuerySource() {
  final o = api.GoogleCloudRetailV2BigQuerySource();
  buildCounterGoogleCloudRetailV2BigQuerySource++;
  if (buildCounterGoogleCloudRetailV2BigQuerySource < 3) {
    o.dataSchema = 'foo';
    o.datasetId = 'foo';
    o.gcsStagingDir = 'foo';
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

core.List<core.double> buildUnnamed3590() {
  final o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed3590(core.List<core.double> o) {
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

core.List<core.String> buildUnnamed3591() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3591(core.List<core.String> o) {
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
    o.numbers = buildUnnamed3590();
    o.text = buildUnnamed3591();
  }
  buildCounterGoogleCloudRetailV2CustomAttribute--;
  return o;
}

void checkGoogleCloudRetailV2CustomAttribute(
    api.GoogleCloudRetailV2CustomAttribute o) {
  buildCounterGoogleCloudRetailV2CustomAttribute++;
  if (buildCounterGoogleCloudRetailV2CustomAttribute < 3) {
    checkUnnamed3590(o.numbers!);
    checkUnnamed3591(o.text!);
  }
  buildCounterGoogleCloudRetailV2CustomAttribute--;
}

core.List<core.String> buildUnnamed3592() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3592(core.List<core.String> o) {
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
    o.inputUris = buildUnnamed3592();
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
    checkUnnamed3592(o.inputUris!);
  }
  buildCounterGoogleCloudRetailV2GcsSource--;
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
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2ImportProductsRequest--;
}

core.List<api.GoogleRpcStatus> buildUnnamed3593() {
  final o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed3593(core.List<api.GoogleRpcStatus> o) {
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
    o.errorSamples = buildUnnamed3593();
    o.errorsConfig = buildGoogleCloudRetailV2ImportErrorsConfig();
  }
  buildCounterGoogleCloudRetailV2ImportProductsResponse--;
  return o;
}

void checkGoogleCloudRetailV2ImportProductsResponse(
    api.GoogleCloudRetailV2ImportProductsResponse o) {
  buildCounterGoogleCloudRetailV2ImportProductsResponse++;
  if (buildCounterGoogleCloudRetailV2ImportProductsResponse < 3) {
    checkUnnamed3593(o.errorSamples!);
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

core.List<api.GoogleRpcStatus> buildUnnamed3594() {
  final o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed3594(core.List<api.GoogleRpcStatus> o) {
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
    o.errorSamples = buildUnnamed3594();
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
    checkUnnamed3594(o.errorSamples!);
    checkGoogleCloudRetailV2ImportErrorsConfig(o.errorsConfig!);
    checkGoogleCloudRetailV2UserEventImportSummary(o.importSummary!);
  }
  buildCounterGoogleCloudRetailV2ImportUserEventsResponse--;
}

core.List<api.GoogleCloudRetailV2Catalog> buildUnnamed3595() {
  final o = <api.GoogleCloudRetailV2Catalog>[];
  o.add(buildGoogleCloudRetailV2Catalog());
  o.add(buildGoogleCloudRetailV2Catalog());
  return o;
}

void checkUnnamed3595(core.List<api.GoogleCloudRetailV2Catalog> o) {
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
    o.catalogs = buildUnnamed3595();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudRetailV2ListCatalogsResponse--;
  return o;
}

void checkGoogleCloudRetailV2ListCatalogsResponse(
    api.GoogleCloudRetailV2ListCatalogsResponse o) {
  buildCounterGoogleCloudRetailV2ListCatalogsResponse++;
  if (buildCounterGoogleCloudRetailV2ListCatalogsResponse < 3) {
    checkUnnamed3595(o.catalogs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudRetailV2ListCatalogsResponse--;
}

core.Map<core.String, core.String> buildUnnamed3596() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3596(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed3597() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed3597(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed3596();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.params = buildUnnamed3597();
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
    checkUnnamed3596(o.labels!);
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed3597(o.params!);
    checkGoogleCloudRetailV2UserEvent(o.userEvent!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2PredictRequest--;
}

core.List<core.String> buildUnnamed3598() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3598(core.List<core.String> o) {
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
    buildUnnamed3599() {
  final o = <api.GoogleCloudRetailV2PredictResponsePredictionResult>[];
  o.add(buildGoogleCloudRetailV2PredictResponsePredictionResult());
  o.add(buildGoogleCloudRetailV2PredictResponsePredictionResult());
  return o;
}

void checkUnnamed3599(
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
    o.missingIds = buildUnnamed3598();
    o.results = buildUnnamed3599();
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
    checkUnnamed3598(o.missingIds!);
    checkUnnamed3599(o.results!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudRetailV2PredictResponse--;
}

core.Map<core.String, core.Object> buildUnnamed3600() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed3600(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed3600();
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
    checkUnnamed3600(o.metadata!);
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
  }
  buildCounterGoogleCloudRetailV2PriceInfo--;
}

core.Map<core.String, api.GoogleCloudRetailV2CustomAttribute>
    buildUnnamed3601() {
  final o = <core.String, api.GoogleCloudRetailV2CustomAttribute>{};
  o['x'] = buildGoogleCloudRetailV2CustomAttribute();
  o['y'] = buildGoogleCloudRetailV2CustomAttribute();
  return o;
}

void checkUnnamed3601(
    core.Map<core.String, api.GoogleCloudRetailV2CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2CustomAttribute(o['x']!);
  checkGoogleCloudRetailV2CustomAttribute(o['y']!);
}

core.List<core.String> buildUnnamed3602() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3602(core.List<core.String> o) {
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

core.List<api.GoogleCloudRetailV2Image> buildUnnamed3603() {
  final o = <api.GoogleCloudRetailV2Image>[];
  o.add(buildGoogleCloudRetailV2Image());
  o.add(buildGoogleCloudRetailV2Image());
  return o;
}

void checkUnnamed3603(core.List<api.GoogleCloudRetailV2Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2Image(o[0]);
  checkGoogleCloudRetailV2Image(o[1]);
}

core.List<core.String> buildUnnamed3604() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3604(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudRetailV2Product = 0;
api.GoogleCloudRetailV2Product buildGoogleCloudRetailV2Product() {
  final o = api.GoogleCloudRetailV2Product();
  buildCounterGoogleCloudRetailV2Product++;
  if (buildCounterGoogleCloudRetailV2Product < 3) {
    o.attributes = buildUnnamed3601();
    o.availability = 'foo';
    o.availableQuantity = 42;
    o.availableTime = 'foo';
    o.categories = buildUnnamed3602();
    o.description = 'foo';
    o.id = 'foo';
    o.images = buildUnnamed3603();
    o.name = 'foo';
    o.priceInfo = buildGoogleCloudRetailV2PriceInfo();
    o.primaryProductId = 'foo';
    o.tags = buildUnnamed3604();
    o.title = 'foo';
    o.type = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudRetailV2Product--;
  return o;
}

void checkGoogleCloudRetailV2Product(api.GoogleCloudRetailV2Product o) {
  buildCounterGoogleCloudRetailV2Product++;
  if (buildCounterGoogleCloudRetailV2Product < 3) {
    checkUnnamed3601(o.attributes!);
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
    checkUnnamed3602(o.categories!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed3603(o.images!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudRetailV2PriceInfo(o.priceInfo!);
    unittest.expect(
      o.primaryProductId!,
      unittest.equals('foo'),
    );
    checkUnnamed3604(o.tags!);
    unittest.expect(
      o.title!,
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

core.List<api.GoogleCloudRetailV2Product> buildUnnamed3605() {
  final o = <api.GoogleCloudRetailV2Product>[];
  o.add(buildGoogleCloudRetailV2Product());
  o.add(buildGoogleCloudRetailV2Product());
  return o;
}

void checkUnnamed3605(core.List<api.GoogleCloudRetailV2Product> o) {
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
    o.products = buildUnnamed3605();
  }
  buildCounterGoogleCloudRetailV2ProductInlineSource--;
  return o;
}

void checkGoogleCloudRetailV2ProductInlineSource(
    api.GoogleCloudRetailV2ProductInlineSource o) {
  buildCounterGoogleCloudRetailV2ProductInlineSource++;
  if (buildCounterGoogleCloudRetailV2ProductInlineSource < 3) {
    checkUnnamed3605(o.products!);
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

core.Map<core.String, api.GoogleCloudRetailV2CustomAttribute>
    buildUnnamed3606() {
  final o = <core.String, api.GoogleCloudRetailV2CustomAttribute>{};
  o['x'] = buildGoogleCloudRetailV2CustomAttribute();
  o['y'] = buildGoogleCloudRetailV2CustomAttribute();
  return o;
}

void checkUnnamed3606(
    core.Map<core.String, api.GoogleCloudRetailV2CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2CustomAttribute(o['x']!);
  checkGoogleCloudRetailV2CustomAttribute(o['y']!);
}

core.List<core.String> buildUnnamed3607() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3607(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed3608() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3608(core.List<core.String> o) {
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

core.List<api.GoogleCloudRetailV2ProductDetail> buildUnnamed3609() {
  final o = <api.GoogleCloudRetailV2ProductDetail>[];
  o.add(buildGoogleCloudRetailV2ProductDetail());
  o.add(buildGoogleCloudRetailV2ProductDetail());
  return o;
}

void checkUnnamed3609(core.List<api.GoogleCloudRetailV2ProductDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudRetailV2ProductDetail(o[0]);
  checkGoogleCloudRetailV2ProductDetail(o[1]);
}

core.int buildCounterGoogleCloudRetailV2UserEvent = 0;
api.GoogleCloudRetailV2UserEvent buildGoogleCloudRetailV2UserEvent() {
  final o = api.GoogleCloudRetailV2UserEvent();
  buildCounterGoogleCloudRetailV2UserEvent++;
  if (buildCounterGoogleCloudRetailV2UserEvent < 3) {
    o.attributes = buildUnnamed3606();
    o.attributionToken = 'foo';
    o.cartId = 'foo';
    o.eventTime = 'foo';
    o.eventType = 'foo';
    o.experimentIds = buildUnnamed3607();
    o.pageCategories = buildUnnamed3608();
    o.pageViewId = 'foo';
    o.productDetails = buildUnnamed3609();
    o.purchaseTransaction = buildGoogleCloudRetailV2PurchaseTransaction();
    o.referrerUri = 'foo';
    o.searchQuery = 'foo';
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
    checkUnnamed3606(o.attributes!);
    unittest.expect(
      o.attributionToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cartId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventType!,
      unittest.equals('foo'),
    );
    checkUnnamed3607(o.experimentIds!);
    checkUnnamed3608(o.pageCategories!);
    unittest.expect(
      o.pageViewId!,
      unittest.equals('foo'),
    );
    checkUnnamed3609(o.productDetails!);
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

core.List<api.GoogleCloudRetailV2UserEvent> buildUnnamed3610() {
  final o = <api.GoogleCloudRetailV2UserEvent>[];
  o.add(buildGoogleCloudRetailV2UserEvent());
  o.add(buildGoogleCloudRetailV2UserEvent());
  return o;
}

void checkUnnamed3610(core.List<api.GoogleCloudRetailV2UserEvent> o) {
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
    o.userEvents = buildUnnamed3610();
  }
  buildCounterGoogleCloudRetailV2UserEventInlineSource--;
  return o;
}

void checkGoogleCloudRetailV2UserEventInlineSource(
    api.GoogleCloudRetailV2UserEventInlineSource o) {
  buildCounterGoogleCloudRetailV2UserEventInlineSource++;
  if (buildCounterGoogleCloudRetailV2UserEventInlineSource < 3) {
    checkUnnamed3610(o.userEvents!);
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

core.List<api.GoogleRpcStatus> buildUnnamed3611() {
  final o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed3611(core.List<api.GoogleRpcStatus> o) {
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
    o.errorSamples = buildUnnamed3611();
    o.errorsConfig = buildGoogleCloudRetailV2alphaExportErrorsConfig();
  }
  buildCounterGoogleCloudRetailV2alphaExportProductsResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaExportProductsResponse(
    api.GoogleCloudRetailV2alphaExportProductsResponse o) {
  buildCounterGoogleCloudRetailV2alphaExportProductsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaExportProductsResponse < 3) {
    checkUnnamed3611(o.errorSamples!);
    checkGoogleCloudRetailV2alphaExportErrorsConfig(o.errorsConfig!);
  }
  buildCounterGoogleCloudRetailV2alphaExportProductsResponse--;
}

core.List<api.GoogleRpcStatus> buildUnnamed3612() {
  final o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed3612(core.List<api.GoogleRpcStatus> o) {
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
    o.errorSamples = buildUnnamed3612();
    o.errorsConfig = buildGoogleCloudRetailV2alphaExportErrorsConfig();
  }
  buildCounterGoogleCloudRetailV2alphaExportUserEventsResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaExportUserEventsResponse(
    api.GoogleCloudRetailV2alphaExportUserEventsResponse o) {
  buildCounterGoogleCloudRetailV2alphaExportUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaExportUserEventsResponse < 3) {
    checkUnnamed3612(o.errorSamples!);
    checkGoogleCloudRetailV2alphaExportErrorsConfig(o.errorsConfig!);
  }
  buildCounterGoogleCloudRetailV2alphaExportUserEventsResponse--;
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

core.List<api.GoogleRpcStatus> buildUnnamed3613() {
  final o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed3613(core.List<api.GoogleRpcStatus> o) {
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
    o.errorSamples = buildUnnamed3613();
    o.errorsConfig = buildGoogleCloudRetailV2alphaImportErrorsConfig();
  }
  buildCounterGoogleCloudRetailV2alphaImportProductsResponse--;
  return o;
}

void checkGoogleCloudRetailV2alphaImportProductsResponse(
    api.GoogleCloudRetailV2alphaImportProductsResponse o) {
  buildCounterGoogleCloudRetailV2alphaImportProductsResponse++;
  if (buildCounterGoogleCloudRetailV2alphaImportProductsResponse < 3) {
    checkUnnamed3613(o.errorSamples!);
    checkGoogleCloudRetailV2alphaImportErrorsConfig(o.errorsConfig!);
  }
  buildCounterGoogleCloudRetailV2alphaImportProductsResponse--;
}

core.List<api.GoogleRpcStatus> buildUnnamed3614() {
  final o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed3614(core.List<api.GoogleRpcStatus> o) {
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
    o.errorSamples = buildUnnamed3614();
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
    checkUnnamed3614(o.errorSamples!);
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

core.List<api.GoogleRpcStatus> buildUnnamed3615() {
  final o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed3615(core.List<api.GoogleRpcStatus> o) {
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
    o.errorSamples = buildUnnamed3615();
    o.errorsConfig = buildGoogleCloudRetailV2betaExportErrorsConfig();
  }
  buildCounterGoogleCloudRetailV2betaExportProductsResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaExportProductsResponse(
    api.GoogleCloudRetailV2betaExportProductsResponse o) {
  buildCounterGoogleCloudRetailV2betaExportProductsResponse++;
  if (buildCounterGoogleCloudRetailV2betaExportProductsResponse < 3) {
    checkUnnamed3615(o.errorSamples!);
    checkGoogleCloudRetailV2betaExportErrorsConfig(o.errorsConfig!);
  }
  buildCounterGoogleCloudRetailV2betaExportProductsResponse--;
}

core.List<api.GoogleRpcStatus> buildUnnamed3616() {
  final o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed3616(core.List<api.GoogleRpcStatus> o) {
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
    o.errorSamples = buildUnnamed3616();
    o.errorsConfig = buildGoogleCloudRetailV2betaExportErrorsConfig();
  }
  buildCounterGoogleCloudRetailV2betaExportUserEventsResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaExportUserEventsResponse(
    api.GoogleCloudRetailV2betaExportUserEventsResponse o) {
  buildCounterGoogleCloudRetailV2betaExportUserEventsResponse++;
  if (buildCounterGoogleCloudRetailV2betaExportUserEventsResponse < 3) {
    checkUnnamed3616(o.errorSamples!);
    checkGoogleCloudRetailV2betaExportErrorsConfig(o.errorsConfig!);
  }
  buildCounterGoogleCloudRetailV2betaExportUserEventsResponse--;
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

core.List<api.GoogleRpcStatus> buildUnnamed3617() {
  final o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed3617(core.List<api.GoogleRpcStatus> o) {
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
    o.errorSamples = buildUnnamed3617();
    o.errorsConfig = buildGoogleCloudRetailV2betaImportErrorsConfig();
  }
  buildCounterGoogleCloudRetailV2betaImportProductsResponse--;
  return o;
}

void checkGoogleCloudRetailV2betaImportProductsResponse(
    api.GoogleCloudRetailV2betaImportProductsResponse o) {
  buildCounterGoogleCloudRetailV2betaImportProductsResponse++;
  if (buildCounterGoogleCloudRetailV2betaImportProductsResponse < 3) {
    checkUnnamed3617(o.errorSamples!);
    checkGoogleCloudRetailV2betaImportErrorsConfig(o.errorsConfig!);
  }
  buildCounterGoogleCloudRetailV2betaImportProductsResponse--;
}

core.List<api.GoogleRpcStatus> buildUnnamed3618() {
  final o = <api.GoogleRpcStatus>[];
  o.add(buildGoogleRpcStatus());
  o.add(buildGoogleRpcStatus());
  return o;
}

void checkUnnamed3618(core.List<api.GoogleRpcStatus> o) {
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
    o.errorSamples = buildUnnamed3618();
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
    checkUnnamed3618(o.errorSamples!);
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

core.List<api.GoogleLongrunningOperation> buildUnnamed3619() {
  final o = <api.GoogleLongrunningOperation>[];
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

void checkUnnamed3619(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed3619();
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
    checkUnnamed3619(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed3620() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed3620(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed3621() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed3621(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed3620();
    o.name = 'foo';
    o.response = buildUnnamed3621();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed3620(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed3621(o.response!);
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

core.Map<core.String, core.Object> buildUnnamed3622() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed3622(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed3623() {
  final o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed3622());
  o.add(buildUnnamed3622());
  return o;
}

void checkUnnamed3623(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3622(o[0]);
  checkUnnamed3622(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3623();
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
    checkUnnamed3623(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
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

  unittest.group('obj-schema-GoogleCloudRetailV2CustomAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2CustomAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2CustomAttribute.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2CustomAttribute(od);
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

  unittest.group('obj-schema-GoogleCloudRetailV2Image', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2Image();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2Image.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2Image(od);
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

  unittest.group('obj-schema-GoogleCloudRetailV2ListCatalogsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudRetailV2ListCatalogsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudRetailV2ListCatalogsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudRetailV2ListCatalogsResponse(od);
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

  unittest.group('resource-ProjectsLocationsCatalogsResource', () {
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
