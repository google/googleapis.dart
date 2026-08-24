// Copyright 2025 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

import 'package:googleapis/firebasedataconnect/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.int buildCounterClientCache = 0;
api.ClientCache buildClientCache() {
  final o = api.ClientCache();
  buildCounterClientCache++;
  if (buildCounterClientCache < 3) {
    o.entityIdIncluded = true;
    o.strictValidationEnabled = true;
  }
  buildCounterClientCache--;
  return o;
}

void checkClientCache(api.ClientCache o) {
  buildCounterClientCache++;
  if (buildCounterClientCache < 3) {
    unittest.expect(o.entityIdIncluded!, unittest.isTrue);
    unittest.expect(o.strictValidationEnabled!, unittest.isTrue);
  }
  buildCounterClientCache--;
}

core.int buildCounterCloudSqlInstance = 0;
api.CloudSqlInstance buildCloudSqlInstance() {
  final o = api.CloudSqlInstance();
  buildCounterCloudSqlInstance++;
  if (buildCounterCloudSqlInstance < 3) {
    o.edition = 'foo';
    o.instance = 'foo';
  }
  buildCounterCloudSqlInstance--;
  return o;
}

void checkCloudSqlInstance(api.CloudSqlInstance o) {
  buildCounterCloudSqlInstance++;
  if (buildCounterCloudSqlInstance < 3) {
    unittest.expect(o.edition!, unittest.equals('foo'));
    unittest.expect(o.instance!, unittest.equals('foo'));
  }
  buildCounterCloudSqlInstance--;
}

core.int buildCounterCodeChunk = 0;
api.CodeChunk buildCodeChunk() {
  final o = api.CodeChunk();
  buildCounterCodeChunk++;
  if (buildCounterCodeChunk < 3) {
    o.code = 'foo';
    o.languageCode = 'foo';
  }
  buildCounterCodeChunk--;
  return o;
}

void checkCodeChunk(api.CodeChunk o) {
  buildCounterCodeChunk++;
  if (buildCounterCodeChunk < 3) {
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
  }
  buildCounterCodeChunk--;
}

core.Map<core.String, core.String> buildUnnamed0() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed0(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed1() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed1(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterConnector = 0;
api.Connector buildConnector() {
  final o = api.Connector();
  buildCounterConnector++;
  if (buildCounterConnector < 3) {
    o.annotations = buildUnnamed0();
    o.clientCache = buildClientCache();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed1();
    o.name = 'foo';
    o.reconciling = true;
    o.source = buildSource();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterConnector--;
  return o;
}

void checkConnector(api.Connector o) {
  buildCounterConnector++;
  if (buildCounterConnector < 3) {
    checkUnnamed0(o.annotations!);
    checkClientCache(o.clientCache!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed1(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    checkSource(o.source!);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterConnector--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.Object?> buildUnnamed3() => [
  {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
];

void checkUnnamed3(core.List<core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o[1]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int buildCounterDataConnectProperties = 0;
api.DataConnectProperties buildDataConnectProperties() {
  final o = api.DataConnectProperties();
  buildCounterDataConnectProperties++;
  if (buildCounterDataConnectProperties < 3) {
    o.entityId = 'foo';
    o.entityIds = buildUnnamed2();
    o.maxAge = 'foo';
    o.path = buildUnnamed3();
  }
  buildCounterDataConnectProperties--;
  return o;
}

void checkDataConnectProperties(api.DataConnectProperties o) {
  buildCounterDataConnectProperties++;
  if (buildCounterDataConnectProperties < 3) {
    unittest.expect(o.entityId!, unittest.equals('foo'));
    checkUnnamed2(o.entityIds!);
    unittest.expect(o.maxAge!, unittest.equals('foo'));
    checkUnnamed3(o.path!);
  }
  buildCounterDataConnectProperties--;
}

core.int buildCounterDatasource = 0;
api.Datasource buildDatasource() {
  final o = api.Datasource();
  buildCounterDatasource++;
  if (buildCounterDatasource < 3) {
    o.httpGraphql = buildHttpGraphql();
    o.postgresql = buildPostgreSql();
  }
  buildCounterDatasource--;
  return o;
}

void checkDatasource(api.Datasource o) {
  buildCounterDatasource++;
  if (buildCounterDatasource < 3) {
    checkHttpGraphql(o.httpGraphql!);
    checkPostgreSql(o.postgresql!);
  }
  buildCounterDatasource--;
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

core.Map<core.String, core.Object?> buildUnnamed4() => {
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

void checkUnnamed4(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterExecuteMutationRequest = 0;
api.ExecuteMutationRequest buildExecuteMutationRequest() {
  final o = api.ExecuteMutationRequest();
  buildCounterExecuteMutationRequest++;
  if (buildCounterExecuteMutationRequest < 3) {
    o.operationName = 'foo';
    o.variables = buildUnnamed4();
  }
  buildCounterExecuteMutationRequest--;
  return o;
}

void checkExecuteMutationRequest(api.ExecuteMutationRequest o) {
  buildCounterExecuteMutationRequest++;
  if (buildCounterExecuteMutationRequest < 3) {
    unittest.expect(o.operationName!, unittest.equals('foo'));
    checkUnnamed4(o.variables!);
  }
  buildCounterExecuteMutationRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed5() => {
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

void checkUnnamed5(core.Map<core.String, core.Object?> o) {
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

core.List<api.GraphqlError> buildUnnamed6() => [
  buildGraphqlError(),
  buildGraphqlError(),
];

void checkUnnamed6(core.List<api.GraphqlError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGraphqlError(o[0]);
  checkGraphqlError(o[1]);
}

core.int buildCounterExecuteMutationResponse = 0;
api.ExecuteMutationResponse buildExecuteMutationResponse() {
  final o = api.ExecuteMutationResponse();
  buildCounterExecuteMutationResponse++;
  if (buildCounterExecuteMutationResponse < 3) {
    o.data = buildUnnamed5();
    o.errors = buildUnnamed6();
    o.extensions = buildGraphqlResponseExtensions();
  }
  buildCounterExecuteMutationResponse--;
  return o;
}

void checkExecuteMutationResponse(api.ExecuteMutationResponse o) {
  buildCounterExecuteMutationResponse++;
  if (buildCounterExecuteMutationResponse < 3) {
    checkUnnamed5(o.data!);
    checkUnnamed6(o.errors!);
    checkGraphqlResponseExtensions(o.extensions!);
  }
  buildCounterExecuteMutationResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed7() => {
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

void checkUnnamed7(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.int buildCounterExecuteQueryRequest = 0;
api.ExecuteQueryRequest buildExecuteQueryRequest() {
  final o = api.ExecuteQueryRequest();
  buildCounterExecuteQueryRequest++;
  if (buildCounterExecuteQueryRequest < 3) {
    o.operationName = 'foo';
    o.variables = buildUnnamed7();
  }
  buildCounterExecuteQueryRequest--;
  return o;
}

void checkExecuteQueryRequest(api.ExecuteQueryRequest o) {
  buildCounterExecuteQueryRequest++;
  if (buildCounterExecuteQueryRequest < 3) {
    unittest.expect(o.operationName!, unittest.equals('foo'));
    checkUnnamed7(o.variables!);
  }
  buildCounterExecuteQueryRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed8() => {
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

void checkUnnamed8(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
}

core.List<api.GraphqlError> buildUnnamed9() => [
  buildGraphqlError(),
  buildGraphqlError(),
];

void checkUnnamed9(core.List<api.GraphqlError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGraphqlError(o[0]);
  checkGraphqlError(o[1]);
}

core.int buildCounterExecuteQueryResponse = 0;
api.ExecuteQueryResponse buildExecuteQueryResponse() {
  final o = api.ExecuteQueryResponse();
  buildCounterExecuteQueryResponse++;
  if (buildCounterExecuteQueryResponse < 3) {
    o.data = buildUnnamed8();
    o.errors = buildUnnamed9();
    o.extensions = buildGraphqlResponseExtensions();
  }
  buildCounterExecuteQueryResponse--;
  return o;
}

void checkExecuteQueryResponse(api.ExecuteQueryResponse o) {
  buildCounterExecuteQueryResponse++;
  if (buildCounterExecuteQueryResponse < 3) {
    checkUnnamed8(o.data!);
    checkUnnamed9(o.errors!);
    checkGraphqlResponseExtensions(o.extensions!);
  }
  buildCounterExecuteQueryResponse--;
}

core.int buildCounterFile = 0;
api.File buildFile() {
  final o = api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {
    o.content = 'foo';
    o.path = 'foo';
  }
  buildCounterFile--;
  return o;
}

void checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
    unittest.expect(o.path!, unittest.equals('foo'));
  }
  buildCounterFile--;
}

core.List<api.Schema> buildUnnamed10() => [buildSchema(), buildSchema()];

void checkUnnamed10(core.List<api.Schema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchema(o[0]);
  checkSchema(o[1]);
}

core.int buildCounterGenerateQueryRequest = 0;
api.GenerateQueryRequest buildGenerateQueryRequest() {
  final o = api.GenerateQueryRequest();
  buildCounterGenerateQueryRequest++;
  if (buildCounterGenerateQueryRequest < 3) {
    o.prompt = 'foo';
    o.schemas = buildUnnamed10();
  }
  buildCounterGenerateQueryRequest--;
  return o;
}

void checkGenerateQueryRequest(api.GenerateQueryRequest o) {
  buildCounterGenerateQueryRequest++;
  if (buildCounterGenerateQueryRequest < 3) {
    unittest.expect(o.prompt!, unittest.equals('foo'));
    checkUnnamed10(o.schemas!);
  }
  buildCounterGenerateQueryRequest--;
}

core.int buildCounterGenerateQueryResponse = 0;
api.GenerateQueryResponse buildGenerateQueryResponse() {
  final o = api.GenerateQueryResponse();
  buildCounterGenerateQueryResponse++;
  if (buildCounterGenerateQueryResponse < 3) {
    o.part = buildPart();
    o.status = buildGenerationStatus();
  }
  buildCounterGenerateQueryResponse--;
  return o;
}

void checkGenerateQueryResponse(api.GenerateQueryResponse o) {
  buildCounterGenerateQueryResponse++;
  if (buildCounterGenerateQueryResponse < 3) {
    checkPart(o.part!);
    checkGenerationStatus(o.status!);
  }
  buildCounterGenerateQueryResponse--;
}

core.int buildCounterGenerateSchemaRequest = 0;
api.GenerateSchemaRequest buildGenerateSchemaRequest() {
  final o = api.GenerateSchemaRequest();
  buildCounterGenerateSchemaRequest++;
  if (buildCounterGenerateSchemaRequest < 3) {
    o.prompt = 'foo';
  }
  buildCounterGenerateSchemaRequest--;
  return o;
}

void checkGenerateSchemaRequest(api.GenerateSchemaRequest o) {
  buildCounterGenerateSchemaRequest++;
  if (buildCounterGenerateSchemaRequest < 3) {
    unittest.expect(o.prompt!, unittest.equals('foo'));
  }
  buildCounterGenerateSchemaRequest--;
}

core.int buildCounterGenerateSchemaResponse = 0;
api.GenerateSchemaResponse buildGenerateSchemaResponse() {
  final o = api.GenerateSchemaResponse();
  buildCounterGenerateSchemaResponse++;
  if (buildCounterGenerateSchemaResponse < 3) {
    o.part = buildPart();
    o.status = buildGenerationStatus();
  }
  buildCounterGenerateSchemaResponse--;
  return o;
}

void checkGenerateSchemaResponse(api.GenerateSchemaResponse o) {
  buildCounterGenerateSchemaResponse++;
  if (buildCounterGenerateSchemaResponse < 3) {
    checkPart(o.part!);
    checkGenerationStatus(o.status!);
  }
  buildCounterGenerateSchemaResponse--;
}

core.int buildCounterGenerationStatus = 0;
api.GenerationStatus buildGenerationStatus() {
  final o = api.GenerationStatus();
  buildCounterGenerationStatus++;
  if (buildCounterGenerationStatus < 3) {
    o.message = 'foo';
    o.state = 'foo';
  }
  buildCounterGenerationStatus--;
  return o;
}

void checkGenerationStatus(api.GenerationStatus o) {
  buildCounterGenerationStatus++;
  if (buildCounterGenerationStatus < 3) {
    unittest.expect(o.message!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGenerationStatus--;
}

core.List<api.SourceLocation> buildUnnamed11() => [
  buildSourceLocation(),
  buildSourceLocation(),
];

void checkUnnamed11(core.List<api.SourceLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceLocation(o[0]);
  checkSourceLocation(o[1]);
}

core.List<core.Object?> buildUnnamed12() => [
  {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
];

void checkUnnamed12(core.List<core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o[0]) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted11['bool'], unittest.equals(true));
  unittest.expect(casted11['string'], unittest.equals('foo'));
  var casted12 = (o[1]) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted12['bool'], unittest.equals(true));
  unittest.expect(casted12['string'], unittest.equals('foo'));
}

core.int buildCounterGraphqlError = 0;
api.GraphqlError buildGraphqlError() {
  final o = api.GraphqlError();
  buildCounterGraphqlError++;
  if (buildCounterGraphqlError < 3) {
    o.extensions = buildGraphqlErrorExtensions();
    o.locations = buildUnnamed11();
    o.message = 'foo';
    o.path = buildUnnamed12();
  }
  buildCounterGraphqlError--;
  return o;
}

void checkGraphqlError(api.GraphqlError o) {
  buildCounterGraphqlError++;
  if (buildCounterGraphqlError < 3) {
    checkGraphqlErrorExtensions(o.extensions!);
    checkUnnamed11(o.locations!);
    unittest.expect(o.message!, unittest.equals('foo'));
    checkUnnamed12(o.path!);
  }
  buildCounterGraphqlError--;
}

core.List<api.Workaround> buildUnnamed13() => [
  buildWorkaround(),
  buildWorkaround(),
];

void checkUnnamed13(core.List<api.Workaround> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkaround(o[0]);
  checkWorkaround(o[1]);
}

core.int buildCounterGraphqlErrorExtensions = 0;
api.GraphqlErrorExtensions buildGraphqlErrorExtensions() {
  final o = api.GraphqlErrorExtensions();
  buildCounterGraphqlErrorExtensions++;
  if (buildCounterGraphqlErrorExtensions < 3) {
    o.code = 'foo';
    o.debugDetails = 'foo';
    o.file = 'foo';
    o.warningLevel = 'foo';
    o.workarounds = buildUnnamed13();
  }
  buildCounterGraphqlErrorExtensions--;
  return o;
}

void checkGraphqlErrorExtensions(api.GraphqlErrorExtensions o) {
  buildCounterGraphqlErrorExtensions++;
  if (buildCounterGraphqlErrorExtensions < 3) {
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.debugDetails!, unittest.equals('foo'));
    unittest.expect(o.file!, unittest.equals('foo'));
    unittest.expect(o.warningLevel!, unittest.equals('foo'));
    checkUnnamed13(o.workarounds!);
  }
  buildCounterGraphqlErrorExtensions--;
}

core.Map<core.String, core.Object?> buildUnnamed14() => {
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

void checkUnnamed14(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o['x']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted13['bool'], unittest.equals(true));
  unittest.expect(casted13['string'], unittest.equals('foo'));
  var casted14 = (o['y']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted14['bool'], unittest.equals(true));
  unittest.expect(casted14['string'], unittest.equals('foo'));
}

core.int buildCounterGraphqlRequest = 0;
api.GraphqlRequest buildGraphqlRequest() {
  final o = api.GraphqlRequest();
  buildCounterGraphqlRequest++;
  if (buildCounterGraphqlRequest < 3) {
    o.extensions = buildGraphqlRequestExtensions();
    o.operationName = 'foo';
    o.query = 'foo';
    o.variables = buildUnnamed14();
  }
  buildCounterGraphqlRequest--;
  return o;
}

void checkGraphqlRequest(api.GraphqlRequest o) {
  buildCounterGraphqlRequest++;
  if (buildCounterGraphqlRequest < 3) {
    checkGraphqlRequestExtensions(o.extensions!);
    unittest.expect(o.operationName!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
    checkUnnamed14(o.variables!);
  }
  buildCounterGraphqlRequest--;
}

core.int buildCounterGraphqlRequestExtensions = 0;
api.GraphqlRequestExtensions buildGraphqlRequestExtensions() {
  final o = api.GraphqlRequestExtensions();
  buildCounterGraphqlRequestExtensions++;
  if (buildCounterGraphqlRequestExtensions < 3) {
    o.impersonate = buildImpersonation();
  }
  buildCounterGraphqlRequestExtensions--;
  return o;
}

void checkGraphqlRequestExtensions(api.GraphqlRequestExtensions o) {
  buildCounterGraphqlRequestExtensions++;
  if (buildCounterGraphqlRequestExtensions < 3) {
    checkImpersonation(o.impersonate!);
  }
  buildCounterGraphqlRequestExtensions--;
}

core.Map<core.String, core.Object?> buildUnnamed15() => {
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

void checkUnnamed15(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o['x']!) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(casted15['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted15['bool'], unittest.equals(true));
  unittest.expect(casted15['string'], unittest.equals('foo'));
  var casted16 = (o['y']!) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(casted16['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted16['bool'], unittest.equals(true));
  unittest.expect(casted16['string'], unittest.equals('foo'));
}

core.List<api.GraphqlError> buildUnnamed16() => [
  buildGraphqlError(),
  buildGraphqlError(),
];

void checkUnnamed16(core.List<api.GraphqlError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGraphqlError(o[0]);
  checkGraphqlError(o[1]);
}

core.int buildCounterGraphqlResponse = 0;
api.GraphqlResponse buildGraphqlResponse() {
  final o = api.GraphqlResponse();
  buildCounterGraphqlResponse++;
  if (buildCounterGraphqlResponse < 3) {
    o.data = buildUnnamed15();
    o.errors = buildUnnamed16();
    o.extensions = buildGraphqlResponseExtensions();
  }
  buildCounterGraphqlResponse--;
  return o;
}

void checkGraphqlResponse(api.GraphqlResponse o) {
  buildCounterGraphqlResponse++;
  if (buildCounterGraphqlResponse < 3) {
    checkUnnamed15(o.data!);
    checkUnnamed16(o.errors!);
    checkGraphqlResponseExtensions(o.extensions!);
  }
  buildCounterGraphqlResponse--;
}

core.List<api.DataConnectProperties> buildUnnamed17() => [
  buildDataConnectProperties(),
  buildDataConnectProperties(),
];

void checkUnnamed17(core.List<api.DataConnectProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataConnectProperties(o[0]);
  checkDataConnectProperties(o[1]);
}

core.int buildCounterGraphqlResponseExtensions = 0;
api.GraphqlResponseExtensions buildGraphqlResponseExtensions() {
  final o = api.GraphqlResponseExtensions();
  buildCounterGraphqlResponseExtensions++;
  if (buildCounterGraphqlResponseExtensions < 3) {
    o.dataConnect = buildUnnamed17();
  }
  buildCounterGraphqlResponseExtensions--;
  return o;
}

void checkGraphqlResponseExtensions(api.GraphqlResponseExtensions o) {
  buildCounterGraphqlResponseExtensions++;
  if (buildCounterGraphqlResponseExtensions < 3) {
    checkUnnamed17(o.dataConnect!);
  }
  buildCounterGraphqlResponseExtensions--;
}

core.int buildCounterHttpGraphql = 0;
api.HttpGraphql buildHttpGraphql() {
  final o = api.HttpGraphql();
  buildCounterHttpGraphql++;
  if (buildCounterHttpGraphql < 3) {
    o.timeout = 'foo';
    o.uri = 'foo';
  }
  buildCounterHttpGraphql--;
  return o;
}

void checkHttpGraphql(api.HttpGraphql o) {
  buildCounterHttpGraphql++;
  if (buildCounterHttpGraphql < 3) {
    unittest.expect(o.timeout!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterHttpGraphql--;
}

core.Map<core.String, core.Object?> buildUnnamed18() => {
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

void checkUnnamed18(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted17 = (o['x']!) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(casted17['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted17['bool'], unittest.equals(true));
  unittest.expect(casted17['string'], unittest.equals('foo'));
  var casted18 = (o['y']!) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(casted18['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted18['bool'], unittest.equals(true));
  unittest.expect(casted18['string'], unittest.equals('foo'));
}

core.int buildCounterImpersonateRequest = 0;
api.ImpersonateRequest buildImpersonateRequest() {
  final o = api.ImpersonateRequest();
  buildCounterImpersonateRequest++;
  if (buildCounterImpersonateRequest < 3) {
    o.extensions = buildGraphqlRequestExtensions();
    o.operationName = 'foo';
    o.variables = buildUnnamed18();
  }
  buildCounterImpersonateRequest--;
  return o;
}

void checkImpersonateRequest(api.ImpersonateRequest o) {
  buildCounterImpersonateRequest++;
  if (buildCounterImpersonateRequest < 3) {
    checkGraphqlRequestExtensions(o.extensions!);
    unittest.expect(o.operationName!, unittest.equals('foo'));
    checkUnnamed18(o.variables!);
  }
  buildCounterImpersonateRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed19() => {
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

void checkUnnamed19(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted19 = (o['x']!) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(casted19['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted19['bool'], unittest.equals(true));
  unittest.expect(casted19['string'], unittest.equals('foo'));
  var casted20 = (o['y']!) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(casted20['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted20['bool'], unittest.equals(true));
  unittest.expect(casted20['string'], unittest.equals('foo'));
}

core.int buildCounterImpersonation = 0;
api.Impersonation buildImpersonation() {
  final o = api.Impersonation();
  buildCounterImpersonation++;
  if (buildCounterImpersonation < 3) {
    o.authClaims = buildUnnamed19();
    o.includeDebugDetails = true;
    o.unauthenticated = true;
  }
  buildCounterImpersonation--;
  return o;
}

void checkImpersonation(api.Impersonation o) {
  buildCounterImpersonation++;
  if (buildCounterImpersonation < 3) {
    checkUnnamed19(o.authClaims!);
    unittest.expect(o.includeDebugDetails!, unittest.isTrue);
    unittest.expect(o.unauthenticated!, unittest.isTrue);
  }
  buildCounterImpersonation--;
}

core.List<api.Connector> buildUnnamed20() => [
  buildConnector(),
  buildConnector(),
];

void checkUnnamed20(core.List<api.Connector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnector(o[0]);
  checkConnector(o[1]);
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListConnectorsResponse = 0;
api.ListConnectorsResponse buildListConnectorsResponse() {
  final o = api.ListConnectorsResponse();
  buildCounterListConnectorsResponse++;
  if (buildCounterListConnectorsResponse < 3) {
    o.connectors = buildUnnamed20();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed21();
  }
  buildCounterListConnectorsResponse--;
  return o;
}

void checkListConnectorsResponse(api.ListConnectorsResponse o) {
  buildCounterListConnectorsResponse++;
  if (buildCounterListConnectorsResponse < 3) {
    checkUnnamed20(o.connectors!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed21(o.unreachable!);
  }
  buildCounterListConnectorsResponse--;
}

core.List<api.Location> buildUnnamed22() => [buildLocation(), buildLocation()];

void checkUnnamed22(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed22();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed22(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed23() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed23(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed23();
    o.unreachable = buildUnnamed24();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed23(o.operations!);
    checkUnnamed24(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Schema> buildUnnamed25() => [buildSchema(), buildSchema()];

void checkUnnamed25(core.List<api.Schema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchema(o[0]);
  checkSchema(o[1]);
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListSchemasResponse = 0;
api.ListSchemasResponse buildListSchemasResponse() {
  final o = api.ListSchemasResponse();
  buildCounterListSchemasResponse++;
  if (buildCounterListSchemasResponse < 3) {
    o.nextPageToken = 'foo';
    o.schemas = buildUnnamed25();
    o.unreachable = buildUnnamed26();
  }
  buildCounterListSchemasResponse--;
  return o;
}

void checkListSchemasResponse(api.ListSchemasResponse o) {
  buildCounterListSchemasResponse++;
  if (buildCounterListSchemasResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed25(o.schemas!);
    checkUnnamed26(o.unreachable!);
  }
  buildCounterListSchemasResponse--;
}

core.List<api.Service> buildUnnamed27() => [buildService(), buildService()];

void checkUnnamed27(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0]);
  checkService(o[1]);
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListServicesResponse = 0;
api.ListServicesResponse buildListServicesResponse() {
  final o = api.ListServicesResponse();
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    o.nextPageToken = 'foo';
    o.services = buildUnnamed27();
    o.unreachable = buildUnnamed28();
  }
  buildCounterListServicesResponse--;
  return o;
}

void checkListServicesResponse(api.ListServicesResponse o) {
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed27(o.services!);
    checkUnnamed28(o.unreachable!);
  }
  buildCounterListServicesResponse--;
}

core.Map<core.String, core.String> buildUnnamed29() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed29(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed30() => {
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

void checkUnnamed30(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted21 = (o['x']!) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(casted21['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted21['bool'], unittest.equals(true));
  unittest.expect(casted21['string'], unittest.equals('foo'));
  var casted22 = (o['y']!) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(casted22['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted22['bool'], unittest.equals(true));
  unittest.expect(casted22['string'], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed29();
    o.locationId = 'foo';
    o.metadata = buildUnnamed30();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed29(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed30(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.Map<core.String, core.Object?> buildUnnamed31() => {
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

void checkUnnamed31(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted23 = (o['x']!) as core.Map;
  unittest.expect(casted23, unittest.hasLength(3));
  unittest.expect(casted23['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted23['bool'], unittest.equals(true));
  unittest.expect(casted23['string'], unittest.equals('foo'));
  var casted24 = (o['y']!) as core.Map;
  unittest.expect(casted24, unittest.hasLength(3));
  unittest.expect(casted24['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted24['bool'], unittest.equals(true));
  unittest.expect(casted24['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed32() => {
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

void checkUnnamed32(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted25 = (o['x']!) as core.Map;
  unittest.expect(casted25, unittest.hasLength(3));
  unittest.expect(casted25['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted25['bool'], unittest.equals(true));
  unittest.expect(casted25['string'], unittest.equals('foo'));
  var casted26 = (o['y']!) as core.Map;
  unittest.expect(casted26, unittest.hasLength(3));
  unittest.expect(casted26['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted26['bool'], unittest.equals(true));
  unittest.expect(casted26['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed31();
    o.name = 'foo';
    o.response = buildUnnamed32();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed31(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed32(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPart = 0;
api.Part buildPart() {
  final o = api.Part();
  buildCounterPart++;
  if (buildCounterPart < 3) {
    o.codeChunk = buildCodeChunk();
    o.textChunk = buildTextChunk();
  }
  buildCounterPart--;
  return o;
}

void checkPart(api.Part o) {
  buildCounterPart++;
  if (buildCounterPart < 3) {
    checkCodeChunk(o.codeChunk!);
    checkTextChunk(o.textChunk!);
  }
  buildCounterPart--;
}

core.int buildCounterPostgreSql = 0;
api.PostgreSql buildPostgreSql() {
  final o = api.PostgreSql();
  buildCounterPostgreSql++;
  if (buildCounterPostgreSql < 3) {
    o.cloudSql = buildCloudSqlInstance();
    o.database = 'foo';
    o.ephemeral = true;
    o.schema = 'foo';
    o.schemaMigration = 'foo';
    o.schemaValidation = 'foo';
    o.unlinked = true;
  }
  buildCounterPostgreSql--;
  return o;
}

void checkPostgreSql(api.PostgreSql o) {
  buildCounterPostgreSql++;
  if (buildCounterPostgreSql < 3) {
    checkCloudSqlInstance(o.cloudSql!);
    unittest.expect(o.database!, unittest.equals('foo'));
    unittest.expect(o.ephemeral!, unittest.isTrue);
    unittest.expect(o.schema!, unittest.equals('foo'));
    unittest.expect(o.schemaMigration!, unittest.equals('foo'));
    unittest.expect(o.schemaValidation!, unittest.equals('foo'));
    unittest.expect(o.unlinked!, unittest.isTrue);
  }
  buildCounterPostgreSql--;
}

core.Map<core.String, core.String> buildUnnamed33() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed33(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.Datasource> buildUnnamed34() => [
  buildDatasource(),
  buildDatasource(),
];

void checkUnnamed34(core.List<api.Datasource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatasource(o[0]);
  checkDatasource(o[1]);
}

core.Map<core.String, core.String> buildUnnamed35() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed35(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSchema = 0;
api.Schema buildSchema() {
  final o = api.Schema();
  buildCounterSchema++;
  if (buildCounterSchema < 3) {
    o.annotations = buildUnnamed33();
    o.createTime = 'foo';
    o.datasources = buildUnnamed34();
    o.displayName = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed35();
    o.name = 'foo';
    o.reconciling = true;
    o.source = buildSource();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterSchema--;
  return o;
}

void checkSchema(api.Schema o) {
  buildCounterSchema++;
  if (buildCounterSchema < 3) {
    checkUnnamed33(o.annotations!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed34(o.datasources!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed35(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    checkSource(o.source!);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterSchema--;
}

core.Map<core.String, core.String> buildUnnamed36() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed36(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.Connector> buildUnnamed37() => [
  buildConnector(),
  buildConnector(),
];

void checkUnnamed37(core.List<api.Connector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnector(o[0]);
  checkConnector(o[1]);
}

core.Map<core.String, core.String> buildUnnamed38() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed38(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.Schema> buildUnnamed39() => [buildSchema(), buildSchema()];

void checkUnnamed39(core.List<api.Schema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchema(o[0]);
  checkSchema(o[1]);
}

core.int buildCounterService = 0;
api.Service buildService() {
  final o = api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.annotations = buildUnnamed36();
    o.connectors = buildUnnamed37();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed38();
    o.name = 'foo';
    o.reconciling = true;
    o.schemas = buildUnnamed39();
    o.source = buildSource();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterService--;
  return o;
}

void checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    checkUnnamed36(o.annotations!);
    checkUnnamed37(o.connectors!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed38(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    checkUnnamed39(o.schemas!);
    checkSource(o.source!);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterService--;
}

core.List<api.File> buildUnnamed40() => [buildFile(), buildFile()];

void checkUnnamed40(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.files = buildUnnamed40();
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed40(o.files!);
  }
  buildCounterSource--;
}

core.int buildCounterSourceLocation = 0;
api.SourceLocation buildSourceLocation() {
  final o = api.SourceLocation();
  buildCounterSourceLocation++;
  if (buildCounterSourceLocation < 3) {
    o.column = 42;
    o.line = 42;
  }
  buildCounterSourceLocation--;
  return o;
}

void checkSourceLocation(api.SourceLocation o) {
  buildCounterSourceLocation++;
  if (buildCounterSourceLocation < 3) {
    unittest.expect(o.column!, unittest.equals(42));
    unittest.expect(o.line!, unittest.equals(42));
  }
  buildCounterSourceLocation--;
}

core.Map<core.String, core.Object?> buildUnnamed41() => {
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

void checkUnnamed41(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted27 = (o['x']!) as core.Map;
  unittest.expect(casted27, unittest.hasLength(3));
  unittest.expect(casted27['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted27['bool'], unittest.equals(true));
  unittest.expect(casted27['string'], unittest.equals('foo'));
  var casted28 = (o['y']!) as core.Map;
  unittest.expect(casted28, unittest.hasLength(3));
  unittest.expect(casted28['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted28['bool'], unittest.equals(true));
  unittest.expect(casted28['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed42() => [
  buildUnnamed41(),
  buildUnnamed41(),
];

void checkUnnamed42(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed41(o[0]);
  checkUnnamed41(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed42();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed42(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTextChunk = 0;
api.TextChunk buildTextChunk() {
  final o = api.TextChunk();
  buildCounterTextChunk++;
  if (buildCounterTextChunk < 3) {
    o.text = 'foo';
  }
  buildCounterTextChunk--;
  return o;
}

void checkTextChunk(api.TextChunk o) {
  buildCounterTextChunk++;
  if (buildCounterTextChunk < 3) {
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterTextChunk--;
}

core.int buildCounterWorkaround = 0;
api.Workaround buildWorkaround() {
  final o = api.Workaround();
  buildCounterWorkaround++;
  if (buildCounterWorkaround < 3) {
    o.description = 'foo';
    o.reason = 'foo';
    o.replace = 'foo';
  }
  buildCounterWorkaround--;
  return o;
}

void checkWorkaround(api.Workaround o) {
  buildCounterWorkaround++;
  if (buildCounterWorkaround < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.reason!, unittest.equals('foo'));
    unittest.expect(o.replace!, unittest.equals('foo'));
  }
  buildCounterWorkaround--;
}

core.List<core.String> buildUnnamed43() => ['foo', 'foo'];

void checkUnnamed43(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-ClientCache', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientCache();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientCache.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClientCache(od);
    });
  });

  unittest.group('obj-schema-CloudSqlInstance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudSqlInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudSqlInstance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudSqlInstance(od);
    });
  });

  unittest.group('obj-schema-CodeChunk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCodeChunk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CodeChunk.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCodeChunk(od);
    });
  });

  unittest.group('obj-schema-Connector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Connector.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConnector(od);
    });
  });

  unittest.group('obj-schema-DataConnectProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataConnectProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataConnectProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataConnectProperties(od);
    });
  });

  unittest.group('obj-schema-Datasource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatasource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Datasource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatasource(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-ExecuteMutationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteMutationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteMutationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecuteMutationRequest(od);
    });
  });

  unittest.group('obj-schema-ExecuteMutationResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteMutationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteMutationResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecuteMutationResponse(od);
    });
  });

  unittest.group('obj-schema-ExecuteQueryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteQueryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteQueryRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecuteQueryRequest(od);
    });
  });

  unittest.group('obj-schema-ExecuteQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteQueryResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecuteQueryResponse(od);
    });
  });

  unittest.group('obj-schema-File', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.File.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFile(od);
    });
  });

  unittest.group('obj-schema-GenerateQueryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateQueryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateQueryRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateQueryRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateQueryResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateQueryResponse(od);
    });
  });

  unittest.group('obj-schema-GenerateSchemaRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateSchemaRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateSchemaRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateSchemaRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateSchemaResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateSchemaResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateSchemaResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateSchemaResponse(od);
    });
  });

  unittest.group('obj-schema-GenerationStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerationStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerationStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerationStatus(od);
    });
  });

  unittest.group('obj-schema-GraphqlError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGraphqlError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GraphqlError.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGraphqlError(od);
    });
  });

  unittest.group('obj-schema-GraphqlErrorExtensions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGraphqlErrorExtensions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GraphqlErrorExtensions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGraphqlErrorExtensions(od);
    });
  });

  unittest.group('obj-schema-GraphqlRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGraphqlRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GraphqlRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGraphqlRequest(od);
    });
  });

  unittest.group('obj-schema-GraphqlRequestExtensions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGraphqlRequestExtensions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GraphqlRequestExtensions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGraphqlRequestExtensions(od);
    });
  });

  unittest.group('obj-schema-GraphqlResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGraphqlResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GraphqlResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGraphqlResponse(od);
    });
  });

  unittest.group('obj-schema-GraphqlResponseExtensions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGraphqlResponseExtensions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GraphqlResponseExtensions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGraphqlResponseExtensions(od);
    });
  });

  unittest.group('obj-schema-HttpGraphql', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpGraphql();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpGraphql.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpGraphql(od);
    });
  });

  unittest.group('obj-schema-ImpersonateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImpersonateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImpersonateRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImpersonateRequest(od);
    });
  });

  unittest.group('obj-schema-Impersonation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImpersonation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Impersonation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImpersonation(od);
    });
  });

  unittest.group('obj-schema-ListConnectorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConnectorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConnectorsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListConnectorsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSchemasResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSchemasResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSchemasResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSchemasResponse(od);
    });
  });

  unittest.group('obj-schema-ListServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServicesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListServicesResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Location.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocation(od);
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

  unittest.group('obj-schema-Part', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Part.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPart(od);
    });
  });

  unittest.group('obj-schema-PostgreSql', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostgreSql();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostgreSql.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPostgreSql(od);
    });
  });

  unittest.group('obj-schema-Schema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Schema.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSchema(od);
    });
  });

  unittest.group('obj-schema-Service', () {
    unittest.test('to-json--from-json', () async {
      final o = buildService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Service.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkService(od);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Source.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSource(od);
    });
  });

  unittest.group('obj-schema-SourceLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSourceLocation(od);
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

  unittest.group('obj-schema-TextChunk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextChunk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextChunk.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTextChunk(od);
    });
  });

  unittest.group('obj-schema-Workaround', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkaround();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Workaround.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWorkaround(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed43();
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['extraLocationTypes']!,
            unittest.equals(arg_extraLocationTypes),
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListLocationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(
        mock,
      ).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelOperationRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(
        mock,
      ).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(
        mock,
      ).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(
        mock,
      ).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListOperationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsServicesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(mock).projects.locations.services;
      final arg_request = buildService();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_serviceId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Service.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkService(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['serviceId']!.first,
            unittest.equals(arg_serviceId),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
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
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        serviceId: arg_serviceId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(mock).projects.locations.services;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
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
      final response = await res.delete(
        arg_name,
        allowMissing: arg_allowMissing,
        etag: arg_etag,
        force: arg_force,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--executeGraphql', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(mock).projects.locations.services;
      final arg_request = buildGraphqlRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GraphqlRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGraphqlRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGraphqlResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.executeGraphql(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGraphqlResponse(response as api.GraphqlResponse);
    });

    unittest.test('method--executeGraphqlRead', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(mock).projects.locations.services;
      final arg_request = buildGraphqlRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GraphqlRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGraphqlRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGraphqlResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.executeGraphqlRead(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGraphqlResponse(response as api.GraphqlResponse);
    });

    unittest.test('method--generateQuery', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(mock).projects.locations.services;
      final arg_request = buildGenerateQueryRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenerateQueryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenerateQueryRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGenerateQueryResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generateQuery(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGenerateQueryResponse(response as api.GenerateQueryResponse);
    });

    unittest.test('method--generateSchema', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(mock).projects.locations.services;
      final arg_request = buildGenerateSchemaRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenerateSchemaRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenerateSchemaRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGenerateSchemaResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generateSchema(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGenerateSchemaResponse(response as api.GenerateSchemaResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(mock).projects.locations.services;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildService());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkService(response as api.Service);
    });

    unittest.test('method--introspectGraphql', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(mock).projects.locations.services;
      final arg_request = buildGraphqlRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GraphqlRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGraphqlRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGraphqlResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.introspectGraphql(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGraphqlResponse(response as api.GraphqlResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(mock).projects.locations.services;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListServicesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListServicesResponse(response as api.ListServicesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(mock).projects.locations.services;
      final arg_request = buildService();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Service.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkService(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
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
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsServicesConnectorsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(
        mock,
      ).projects.locations.services.connectors;
      final arg_request = buildConnector();
      final arg_parent = 'foo';
      final arg_connectorId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Connector.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkConnector(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['connectorId']!.first,
            unittest.equals(arg_connectorId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
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
      final response = await res.create(
        arg_request,
        arg_parent,
        connectorId: arg_connectorId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(
        mock,
      ).projects.locations.services.connectors;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
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
      final response = await res.delete(
        arg_name,
        allowMissing: arg_allowMissing,
        etag: arg_etag,
        force: arg_force,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--executeMutation', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(
        mock,
      ).projects.locations.services.connectors;
      final arg_request = buildExecuteMutationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExecuteMutationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExecuteMutationRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildExecuteMutationResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.executeMutation(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkExecuteMutationResponse(response as api.ExecuteMutationResponse);
    });

    unittest.test('method--executeQuery', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(
        mock,
      ).projects.locations.services.connectors;
      final arg_request = buildExecuteQueryRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExecuteQueryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExecuteQueryRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildExecuteQueryResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.executeQuery(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkExecuteQueryResponse(response as api.ExecuteQueryResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(
        mock,
      ).projects.locations.services.connectors;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildConnector());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConnector(response as api.Connector);
    });

    unittest.test('method--impersonateMutation', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(
        mock,
      ).projects.locations.services.connectors;
      final arg_request = buildImpersonateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ImpersonateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkImpersonateRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGraphqlResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.impersonateMutation(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGraphqlResponse(response as api.GraphqlResponse);
    });

    unittest.test('method--impersonateQuery', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(
        mock,
      ).projects.locations.services.connectors;
      final arg_request = buildImpersonateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ImpersonateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkImpersonateRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGraphqlResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.impersonateQuery(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGraphqlResponse(response as api.GraphqlResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(
        mock,
      ).projects.locations.services.connectors;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListConnectorsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListConnectorsResponse(response as api.ListConnectorsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(
        mock,
      ).projects.locations.services.connectors;
      final arg_request = buildConnector();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Connector.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkConnector(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
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
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsServicesSchemasResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(
        mock,
      ).projects.locations.services.schemas;
      final arg_request = buildSchema();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_schemaId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Schema.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSchema(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['schemaId']!.first,
            unittest.equals(arg_schemaId),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
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
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        schemaId: arg_schemaId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(
        mock,
      ).projects.locations.services.schemas;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
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
      final response = await res.delete(
        arg_name,
        allowMissing: arg_allowMissing,
        etag: arg_etag,
        force: arg_force,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(
        mock,
      ).projects.locations.services.schemas;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildSchema());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSchema(response as api.Schema);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(
        mock,
      ).projects.locations.services.schemas;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListSchemasResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListSchemasResponse(response as api.ListSchemasResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseDataConnectApi(
        mock,
      ).projects.locations.services.schemas;
      final arg_request = buildSchema();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Schema.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSchema(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
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
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });
}
