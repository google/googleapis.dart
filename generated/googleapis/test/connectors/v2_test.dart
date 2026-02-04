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

import 'package:googleapis/connectors/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccessCredentials = 0;
api.AccessCredentials buildAccessCredentials() {
  final o = api.AccessCredentials();
  buildCounterAccessCredentials++;
  if (buildCounterAccessCredentials < 3) {
    o.accessToken = 'foo';
    o.expiresIn = 'foo';
    o.refreshToken = 'foo';
  }
  buildCounterAccessCredentials--;
  return o;
}

void checkAccessCredentials(api.AccessCredentials o) {
  buildCounterAccessCredentials++;
  if (buildCounterAccessCredentials < 3) {
    unittest.expect(o.accessToken!, unittest.equals('foo'));
    unittest.expect(o.expiresIn!, unittest.equals('foo'));
    unittest.expect(o.refreshToken!, unittest.equals('foo'));
  }
  buildCounterAccessCredentials--;
}

core.List<api.InputParameter> buildUnnamed0() => [
  buildInputParameter(),
  buildInputParameter(),
];

void checkUnnamed0(core.List<api.InputParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInputParameter(o[0]);
  checkInputParameter(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed1() => {
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

void checkUnnamed1(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Map<core.String, core.Object?>> buildUnnamed2() => {
  'x': buildUnnamed1(),
  'y': buildUnnamed1(),
};

void checkUnnamed2(
  core.Map<core.String, core.Map<core.String, core.Object?>> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1(o['x']!);
  checkUnnamed1(o['y']!);
}

core.List<api.ResultMetadata> buildUnnamed3() => [
  buildResultMetadata(),
  buildResultMetadata(),
];

void checkUnnamed3(core.List<api.ResultMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResultMetadata(o[0]);
  checkResultMetadata(o[1]);
}

core.int buildCounterAction = 0;
api.Action buildAction() {
  final o = api.Action();
  buildCounterAction++;
  if (buildCounterAction < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.inputJsonSchema = buildJsonSchema();
    o.inputParameters = buildUnnamed0();
    o.metadata = buildUnnamed2();
    o.name = 'foo';
    o.resultJsonSchema = buildJsonSchema();
    o.resultMetadata = buildUnnamed3();
  }
  buildCounterAction--;
  return o;
}

void checkAction(api.Action o) {
  buildCounterAction++;
  if (buildCounterAction < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkJsonSchema(o.inputJsonSchema!);
    checkUnnamed0(o.inputParameters!);
    checkUnnamed2(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkJsonSchema(o.resultJsonSchema!);
    checkUnnamed3(o.resultMetadata!);
  }
  buildCounterAction--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuthCodeData = 0;
api.AuthCodeData buildAuthCodeData() {
  final o = api.AuthCodeData();
  buildCounterAuthCodeData++;
  if (buildCounterAuthCodeData < 3) {
    o.authCode = 'foo';
    o.pkceVerifier = 'foo';
    o.redirectUri = 'foo';
    o.scopes = buildUnnamed4();
  }
  buildCounterAuthCodeData--;
  return o;
}

void checkAuthCodeData(api.AuthCodeData o) {
  buildCounterAuthCodeData++;
  if (buildCounterAuthCodeData < 3) {
    unittest.expect(o.authCode!, unittest.equals('foo'));
    unittest.expect(o.pkceVerifier!, unittest.equals('foo'));
    unittest.expect(o.redirectUri!, unittest.equals('foo'));
    checkUnnamed4(o.scopes!);
  }
  buildCounterAuthCodeData--;
}

core.int buildCounterCheckReadinessResponse = 0;
api.CheckReadinessResponse buildCheckReadinessResponse() {
  final o = api.CheckReadinessResponse();
  buildCounterCheckReadinessResponse++;
  if (buildCounterCheckReadinessResponse < 3) {
    o.status = 'foo';
  }
  buildCounterCheckReadinessResponse--;
  return o;
}

void checkCheckReadinessResponse(api.CheckReadinessResponse o) {
  buildCounterCheckReadinessResponse++;
  if (buildCounterCheckReadinessResponse < 3) {
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterCheckReadinessResponse--;
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

core.Map<core.String, core.Map<core.String, core.Object?>> buildUnnamed6() => {
  'x': buildUnnamed5(),
  'y': buildUnnamed5(),
};

void checkUnnamed6(
  core.Map<core.String, core.Map<core.String, core.Object?>> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5(o['x']!);
  checkUnnamed5(o['y']!);
}

core.int buildCounterCheckStatusResponse = 0;
api.CheckStatusResponse buildCheckStatusResponse() {
  final o = api.CheckStatusResponse();
  buildCounterCheckStatusResponse++;
  if (buildCounterCheckStatusResponse < 3) {
    o.description = 'foo';
    o.metadata = buildUnnamed6();
    o.state = 'foo';
  }
  buildCounterCheckStatusResponse--;
  return o;
}

void checkCheckStatusResponse(api.CheckStatusResponse o) {
  buildCounterCheckStatusResponse++;
  if (buildCounterCheckStatusResponse < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed6(o.metadata!);
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterCheckStatusResponse--;
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

core.Map<core.String, core.Map<core.String, core.Object?>> buildUnnamed9() => {
  'x': buildUnnamed8(),
  'y': buildUnnamed8(),
};

void checkUnnamed9(
  core.Map<core.String, core.Map<core.String, core.Object?>> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8(o['x']!);
  checkUnnamed8(o['y']!);
}

core.int buildCounterEntity = 0;
api.Entity buildEntity() {
  final o = api.Entity();
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    o.fields = buildUnnamed7();
    o.metadata = buildUnnamed9();
    o.name = 'foo';
  }
  buildCounterEntity--;
  return o;
}

void checkEntity(api.Entity o) {
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    checkUnnamed7(o.fields!);
    checkUnnamed9(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterEntity--;
}

core.List<api.Field> buildUnnamed10() => [buildField(), buildField()];

void checkUnnamed10(core.List<api.Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkField(o[0]);
  checkField(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed11() => {
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

void checkUnnamed11(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Map<core.String, core.Object?>> buildUnnamed12() => {
  'x': buildUnnamed11(),
  'y': buildUnnamed11(),
};

void checkUnnamed12(
  core.Map<core.String, core.Map<core.String, core.Object?>> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed11(o['x']!);
  checkUnnamed11(o['y']!);
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEntityType = 0;
api.EntityType buildEntityType() {
  final o = api.EntityType();
  buildCounterEntityType++;
  if (buildCounterEntityType < 3) {
    o.defaultSortBy = 'foo';
    o.fields = buildUnnamed10();
    o.jsonSchema = buildJsonSchema();
    o.metadata = buildUnnamed12();
    o.name = 'foo';
    o.operations = buildUnnamed13();
  }
  buildCounterEntityType--;
  return o;
}

void checkEntityType(api.EntityType o) {
  buildCounterEntityType++;
  if (buildCounterEntityType < 3) {
    unittest.expect(o.defaultSortBy!, unittest.equals('foo'));
    checkUnnamed10(o.fields!);
    checkJsonSchema(o.jsonSchema!);
    checkUnnamed12(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed13(o.operations!);
  }
  buildCounterEntityType--;
}

core.int buildCounterExchangeAuthCodeRequest = 0;
api.ExchangeAuthCodeRequest buildExchangeAuthCodeRequest() {
  final o = api.ExchangeAuthCodeRequest();
  buildCounterExchangeAuthCodeRequest++;
  if (buildCounterExchangeAuthCodeRequest < 3) {
    o.authCodeData = buildAuthCodeData();
    o.executionConfig = buildExecutionConfig();
    o.oauth2Config = buildOAuth2Config();
  }
  buildCounterExchangeAuthCodeRequest--;
  return o;
}

void checkExchangeAuthCodeRequest(api.ExchangeAuthCodeRequest o) {
  buildCounterExchangeAuthCodeRequest++;
  if (buildCounterExchangeAuthCodeRequest < 3) {
    checkAuthCodeData(o.authCodeData!);
    checkExecutionConfig(o.executionConfig!);
    checkOAuth2Config(o.oauth2Config!);
  }
  buildCounterExchangeAuthCodeRequest--;
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
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted11['bool'], unittest.equals(true));
  unittest.expect(casted11['string'], unittest.equals('foo'));
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted12['bool'], unittest.equals(true));
  unittest.expect(casted12['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Map<core.String, core.Object?>> buildUnnamed15() => {
  'x': buildUnnamed14(),
  'y': buildUnnamed14(),
};

void checkUnnamed15(
  core.Map<core.String, core.Map<core.String, core.Object?>> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed14(o['x']!);
  checkUnnamed14(o['y']!);
}

core.int buildCounterExchangeAuthCodeResponse = 0;
api.ExchangeAuthCodeResponse buildExchangeAuthCodeResponse() {
  final o = api.ExchangeAuthCodeResponse();
  buildCounterExchangeAuthCodeResponse++;
  if (buildCounterExchangeAuthCodeResponse < 3) {
    o.accessCredentials = buildAccessCredentials();
    o.metadata = buildUnnamed15();
  }
  buildCounterExchangeAuthCodeResponse--;
  return o;
}

void checkExchangeAuthCodeResponse(api.ExchangeAuthCodeResponse o) {
  buildCounterExchangeAuthCodeResponse++;
  if (buildCounterExchangeAuthCodeResponse < 3) {
    checkAccessCredentials(o.accessCredentials!);
    checkUnnamed15(o.metadata!);
  }
  buildCounterExchangeAuthCodeResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed16() => {
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

void checkUnnamed16(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterExecuteActionRequest = 0;
api.ExecuteActionRequest buildExecuteActionRequest() {
  final o = api.ExecuteActionRequest();
  buildCounterExecuteActionRequest++;
  if (buildCounterExecuteActionRequest < 3) {
    o.executionConfig = buildExecutionConfig();
    o.parameters = buildUnnamed16();
  }
  buildCounterExecuteActionRequest--;
  return o;
}

void checkExecuteActionRequest(api.ExecuteActionRequest o) {
  buildCounterExecuteActionRequest++;
  if (buildCounterExecuteActionRequest < 3) {
    checkExecutionConfig(o.executionConfig!);
    checkUnnamed16(o.parameters!);
  }
  buildCounterExecuteActionRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed17() => {
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

void checkUnnamed17(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Map<core.String, core.Object?>> buildUnnamed18() => {
  'x': buildUnnamed17(),
  'y': buildUnnamed17(),
};

void checkUnnamed18(
  core.Map<core.String, core.Map<core.String, core.Object?>> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed17(o['x']!);
  checkUnnamed17(o['y']!);
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed20() => [
  buildUnnamed19(),
  buildUnnamed19(),
];

void checkUnnamed20(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed19(o[0]);
  checkUnnamed19(o[1]);
}

core.int buildCounterExecuteActionResponse = 0;
api.ExecuteActionResponse buildExecuteActionResponse() {
  final o = api.ExecuteActionResponse();
  buildCounterExecuteActionResponse++;
  if (buildCounterExecuteActionResponse < 3) {
    o.metadata = buildUnnamed18();
    o.results = buildUnnamed20();
  }
  buildCounterExecuteActionResponse--;
  return o;
}

void checkExecuteActionResponse(api.ExecuteActionResponse o) {
  buildCounterExecuteActionResponse++;
  if (buildCounterExecuteActionResponse < 3) {
    checkUnnamed18(o.metadata!);
    checkUnnamed20(o.results!);
  }
  buildCounterExecuteActionResponse--;
}

core.int buildCounterExecuteSqlQueryRequest = 0;
api.ExecuteSqlQueryRequest buildExecuteSqlQueryRequest() {
  final o = api.ExecuteSqlQueryRequest();
  buildCounterExecuteSqlQueryRequest++;
  if (buildCounterExecuteSqlQueryRequest < 3) {
    o.query = buildQuery();
  }
  buildCounterExecuteSqlQueryRequest--;
  return o;
}

void checkExecuteSqlQueryRequest(api.ExecuteSqlQueryRequest o) {
  buildCounterExecuteSqlQueryRequest++;
  if (buildCounterExecuteSqlQueryRequest < 3) {
    checkQuery(o.query!);
  }
  buildCounterExecuteSqlQueryRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed21() => {
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

void checkUnnamed21(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed22() => [
  buildUnnamed21(),
  buildUnnamed21(),
];

void checkUnnamed22(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed21(o[0]);
  checkUnnamed21(o[1]);
}

core.int buildCounterExecuteSqlQueryResponse = 0;
api.ExecuteSqlQueryResponse buildExecuteSqlQueryResponse() {
  final o = api.ExecuteSqlQueryResponse();
  buildCounterExecuteSqlQueryResponse++;
  if (buildCounterExecuteSqlQueryResponse < 3) {
    o.results = buildUnnamed22();
  }
  buildCounterExecuteSqlQueryResponse--;
  return o;
}

void checkExecuteSqlQueryResponse(api.ExecuteSqlQueryResponse o) {
  buildCounterExecuteSqlQueryResponse++;
  if (buildCounterExecuteSqlQueryResponse < 3) {
    checkUnnamed22(o.results!);
  }
  buildCounterExecuteSqlQueryResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed23() => {
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

void checkUnnamed23(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed24() => {
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

void checkUnnamed24(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterExecuteToolRequest = 0;
api.ExecuteToolRequest buildExecuteToolRequest() {
  final o = api.ExecuteToolRequest();
  buildCounterExecuteToolRequest++;
  if (buildCounterExecuteToolRequest < 3) {
    o.executionConfig = buildExecutionConfig();
    o.parameters = buildUnnamed23();
    o.toolDefinition = buildUnnamed24();
  }
  buildCounterExecuteToolRequest--;
  return o;
}

void checkExecuteToolRequest(api.ExecuteToolRequest o) {
  buildCounterExecuteToolRequest++;
  if (buildCounterExecuteToolRequest < 3) {
    checkExecutionConfig(o.executionConfig!);
    checkUnnamed23(o.parameters!);
    checkUnnamed24(o.toolDefinition!);
  }
  buildCounterExecuteToolRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed25() => {
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

void checkUnnamed25(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Map<core.String, core.Object?>> buildUnnamed26() => {
  'x': buildUnnamed25(),
  'y': buildUnnamed25(),
};

void checkUnnamed26(
  core.Map<core.String, core.Map<core.String, core.Object?>> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed25(o['x']!);
  checkUnnamed25(o['y']!);
}

core.Map<core.String, core.Object?> buildUnnamed27() => {
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

void checkUnnamed27(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterExecuteToolResponse = 0;
api.ExecuteToolResponse buildExecuteToolResponse() {
  final o = api.ExecuteToolResponse();
  buildCounterExecuteToolResponse++;
  if (buildCounterExecuteToolResponse < 3) {
    o.metadata = buildUnnamed26();
    o.result = buildUnnamed27();
  }
  buildCounterExecuteToolResponse--;
  return o;
}

void checkExecuteToolResponse(api.ExecuteToolResponse o) {
  buildCounterExecuteToolResponse++;
  if (buildCounterExecuteToolResponse < 3) {
    checkUnnamed26(o.metadata!);
    checkUnnamed27(o.result!);
  }
  buildCounterExecuteToolResponse--;
}

core.int buildCounterExecutionConfig = 0;
api.ExecutionConfig buildExecutionConfig() {
  final o = api.ExecutionConfig();
  buildCounterExecutionConfig++;
  if (buildCounterExecutionConfig < 3) {
    o.headers = 'foo';
  }
  buildCounterExecutionConfig--;
  return o;
}

void checkExecutionConfig(api.ExecutionConfig o) {
  buildCounterExecutionConfig++;
  if (buildCounterExecutionConfig < 3) {
    unittest.expect(o.headers!, unittest.equals('foo'));
  }
  buildCounterExecutionConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed28() => {
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

void checkUnnamed28(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted29 = (o['x']!) as core.Map;
  unittest.expect(casted29, unittest.hasLength(3));
  unittest.expect(casted29['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted29['bool'], unittest.equals(true));
  unittest.expect(casted29['string'], unittest.equals('foo'));
  var casted30 = (o['y']!) as core.Map;
  unittest.expect(casted30, unittest.hasLength(3));
  unittest.expect(casted30['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted30['bool'], unittest.equals(true));
  unittest.expect(casted30['string'], unittest.equals('foo'));
}

core.int buildCounterField = 0;
api.Field buildField() {
  final o = api.Field();
  buildCounterField++;
  if (buildCounterField < 3) {
    o.additionalDetails = buildUnnamed28();
    o.dataType = 'foo';
    o.defaultValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
    o.description = 'foo';
    o.jsonSchema = buildJsonSchema();
    o.key = true;
    o.name = 'foo';
    o.nullable = true;
    o.reference = buildReference();
  }
  buildCounterField--;
  return o;
}

void checkField(api.Field o) {
  buildCounterField++;
  if (buildCounterField < 3) {
    checkUnnamed28(o.additionalDetails!);
    unittest.expect(o.dataType!, unittest.equals('foo'));
    var casted31 = (o.defaultValue!) as core.Map;
    unittest.expect(casted31, unittest.hasLength(3));
    unittest.expect(casted31['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted31['bool'], unittest.equals(true));
    unittest.expect(casted31['string'], unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkJsonSchema(o.jsonSchema!);
    unittest.expect(o.key!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.nullable!, unittest.isTrue);
    checkReference(o.reference!);
  }
  buildCounterField--;
}

core.int buildCounterGetResourcePostRequest = 0;
api.GetResourcePostRequest buildGetResourcePostRequest() {
  final o = api.GetResourcePostRequest();
  buildCounterGetResourcePostRequest++;
  if (buildCounterGetResourcePostRequest < 3) {
    o.executionConfig = buildExecutionConfig();
    o.toolSpec = buildToolSpec();
  }
  buildCounterGetResourcePostRequest--;
  return o;
}

void checkGetResourcePostRequest(api.GetResourcePostRequest o) {
  buildCounterGetResourcePostRequest++;
  if (buildCounterGetResourcePostRequest < 3) {
    checkExecutionConfig(o.executionConfig!);
    checkToolSpec(o.toolSpec!);
  }
  buildCounterGetResourcePostRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed29() => {
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

void checkUnnamed29(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted32 = (o['x']!) as core.Map;
  unittest.expect(casted32, unittest.hasLength(3));
  unittest.expect(casted32['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted32['bool'], unittest.equals(true));
  unittest.expect(casted32['string'], unittest.equals('foo'));
  var casted33 = (o['y']!) as core.Map;
  unittest.expect(casted33, unittest.hasLength(3));
  unittest.expect(casted33['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted33['bool'], unittest.equals(true));
  unittest.expect(casted33['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Map<core.String, core.Object?>> buildUnnamed30() => {
  'x': buildUnnamed29(),
  'y': buildUnnamed29(),
};

void checkUnnamed30(
  core.Map<core.String, core.Map<core.String, core.Object?>> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed29(o['x']!);
  checkUnnamed29(o['y']!);
}

core.int buildCounterGetResourceResponse = 0;
api.GetResourceResponse buildGetResourceResponse() {
  final o = api.GetResourceResponse();
  buildCounterGetResourceResponse++;
  if (buildCounterGetResourceResponse < 3) {
    o.data = 'foo';
    o.metadata = buildUnnamed30();
    o.mimeType = 'foo';
  }
  buildCounterGetResourceResponse--;
  return o;
}

void checkGetResourceResponse(api.GetResourceResponse o) {
  buildCounterGetResourceResponse++;
  if (buildCounterGetResourceResponse < 3) {
    unittest.expect(o.data!, unittest.equals('foo'));
    checkUnnamed30(o.metadata!);
    unittest.expect(o.mimeType!, unittest.equals('foo'));
  }
  buildCounterGetResourceResponse--;
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
  var casted34 = (o['x']!) as core.Map;
  unittest.expect(casted34, unittest.hasLength(3));
  unittest.expect(casted34['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted34['bool'], unittest.equals(true));
  unittest.expect(casted34['string'], unittest.equals('foo'));
  var casted35 = (o['y']!) as core.Map;
  unittest.expect(casted35, unittest.hasLength(3));
  unittest.expect(casted35['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted35['bool'], unittest.equals(true));
  unittest.expect(casted35['string'], unittest.equals('foo'));
}

core.int buildCounterInputParameter = 0;
api.InputParameter buildInputParameter() {
  final o = api.InputParameter();
  buildCounterInputParameter++;
  if (buildCounterInputParameter < 3) {
    o.additionalDetails = buildUnnamed31();
    o.dataType = 'foo';
    o.defaultValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
    o.description = 'foo';
    o.jsonSchema = buildJsonSchema();
    o.name = 'foo';
    o.nullable = true;
  }
  buildCounterInputParameter--;
  return o;
}

void checkInputParameter(api.InputParameter o) {
  buildCounterInputParameter++;
  if (buildCounterInputParameter < 3) {
    checkUnnamed31(o.additionalDetails!);
    unittest.expect(o.dataType!, unittest.equals('foo'));
    var casted36 = (o.defaultValue!) as core.Map;
    unittest.expect(casted36, unittest.hasLength(3));
    unittest.expect(casted36['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted36['bool'], unittest.equals(true));
    unittest.expect(casted36['string'], unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkJsonSchema(o.jsonSchema!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.nullable!, unittest.isTrue);
  }
  buildCounterInputParameter--;
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
  var casted37 = (o['x']!) as core.Map;
  unittest.expect(casted37, unittest.hasLength(3));
  unittest.expect(casted37['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted37['bool'], unittest.equals(true));
  unittest.expect(casted37['string'], unittest.equals('foo'));
  var casted38 = (o['y']!) as core.Map;
  unittest.expect(casted38, unittest.hasLength(3));
  unittest.expect(casted38['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted38['bool'], unittest.equals(true));
  unittest.expect(casted38['string'], unittest.equals('foo'));
}

core.List<core.Object?> buildUnnamed33() => [
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

void checkUnnamed33(core.List<core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted39 = (o[0]) as core.Map;
  unittest.expect(casted39, unittest.hasLength(3));
  unittest.expect(casted39['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted39['bool'], unittest.equals(true));
  unittest.expect(casted39['string'], unittest.equals('foo'));
  var casted40 = (o[1]) as core.Map;
  unittest.expect(casted40, unittest.hasLength(3));
  unittest.expect(casted40['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted40['bool'], unittest.equals(true));
  unittest.expect(casted40['string'], unittest.equals('foo'));
}

core.Map<core.String, api.JsonSchema> buildUnnamed34() => {
  'x': buildJsonSchema(),
  'y': buildJsonSchema(),
};

void checkUnnamed34(core.Map<core.String, api.JsonSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJsonSchema(o['x']!);
  checkJsonSchema(o['y']!);
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed36() => ['foo', 'foo'];

void checkUnnamed36(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJsonSchema = 0;
api.JsonSchema buildJsonSchema() {
  final o = api.JsonSchema();
  buildCounterJsonSchema++;
  if (buildCounterJsonSchema < 3) {
    o.additionalDetails = buildUnnamed32();
    o.default_ = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
    o.description = 'foo';
    o.enum_ = buildUnnamed33();
    o.format = 'foo';
    o.items = buildJsonSchema();
    o.jdbcType = 'foo';
    o.properties = buildUnnamed34();
    o.required = buildUnnamed35();
    o.type = buildUnnamed36();
  }
  buildCounterJsonSchema--;
  return o;
}

void checkJsonSchema(api.JsonSchema o) {
  buildCounterJsonSchema++;
  if (buildCounterJsonSchema < 3) {
    checkUnnamed32(o.additionalDetails!);
    var casted41 = (o.default_!) as core.Map;
    unittest.expect(casted41, unittest.hasLength(3));
    unittest.expect(casted41['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted41['bool'], unittest.equals(true));
    unittest.expect(casted41['string'], unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed33(o.enum_!);
    unittest.expect(o.format!, unittest.equals('foo'));
    checkJsonSchema(o.items!);
    unittest.expect(o.jdbcType!, unittest.equals('foo'));
    checkUnnamed34(o.properties!);
    checkUnnamed35(o.required!);
    checkUnnamed36(o.type!);
  }
  buildCounterJsonSchema--;
}

core.List<api.Action> buildUnnamed37() => [buildAction(), buildAction()];

void checkUnnamed37(core.List<api.Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAction(o[0]);
  checkAction(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed38() => {
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

void checkUnnamed38(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted42 = (o['x']!) as core.Map;
  unittest.expect(casted42, unittest.hasLength(3));
  unittest.expect(casted42['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted42['bool'], unittest.equals(true));
  unittest.expect(casted42['string'], unittest.equals('foo'));
  var casted43 = (o['y']!) as core.Map;
  unittest.expect(casted43, unittest.hasLength(3));
  unittest.expect(casted43['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted43['bool'], unittest.equals(true));
  unittest.expect(casted43['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Map<core.String, core.Object?>> buildUnnamed39() => {
  'x': buildUnnamed38(),
  'y': buildUnnamed38(),
};

void checkUnnamed39(
  core.Map<core.String, core.Map<core.String, core.Object?>> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed38(o['x']!);
  checkUnnamed38(o['y']!);
}

core.List<core.String> buildUnnamed40() => ['foo', 'foo'];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListActionsResponse = 0;
api.ListActionsResponse buildListActionsResponse() {
  final o = api.ListActionsResponse();
  buildCounterListActionsResponse++;
  if (buildCounterListActionsResponse < 3) {
    o.actions = buildUnnamed37();
    o.metadata = buildUnnamed39();
    o.nextPageToken = 'foo';
    o.unsupportedActionNames = buildUnnamed40();
  }
  buildCounterListActionsResponse--;
  return o;
}

void checkListActionsResponse(api.ListActionsResponse o) {
  buildCounterListActionsResponse++;
  if (buildCounterListActionsResponse < 3) {
    checkUnnamed37(o.actions!);
    checkUnnamed39(o.metadata!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed40(o.unsupportedActionNames!);
  }
  buildCounterListActionsResponse--;
}

core.List<api.Entity> buildUnnamed41() => [buildEntity(), buildEntity()];

void checkUnnamed41(core.List<api.Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntity(o[0]);
  checkEntity(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed42() => {
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

void checkUnnamed42(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted44 = (o['x']!) as core.Map;
  unittest.expect(casted44, unittest.hasLength(3));
  unittest.expect(casted44['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted44['bool'], unittest.equals(true));
  unittest.expect(casted44['string'], unittest.equals('foo'));
  var casted45 = (o['y']!) as core.Map;
  unittest.expect(casted45, unittest.hasLength(3));
  unittest.expect(casted45['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted45['bool'], unittest.equals(true));
  unittest.expect(casted45['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Map<core.String, core.Object?>> buildUnnamed43() => {
  'x': buildUnnamed42(),
  'y': buildUnnamed42(),
};

void checkUnnamed43(
  core.Map<core.String, core.Map<core.String, core.Object?>> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed42(o['x']!);
  checkUnnamed42(o['y']!);
}

core.int buildCounterListEntitiesResponse = 0;
api.ListEntitiesResponse buildListEntitiesResponse() {
  final o = api.ListEntitiesResponse();
  buildCounterListEntitiesResponse++;
  if (buildCounterListEntitiesResponse < 3) {
    o.entities = buildUnnamed41();
    o.metadata = buildUnnamed43();
    o.nextPageToken = 'foo';
  }
  buildCounterListEntitiesResponse--;
  return o;
}

void checkListEntitiesResponse(api.ListEntitiesResponse o) {
  buildCounterListEntitiesResponse++;
  if (buildCounterListEntitiesResponse < 3) {
    checkUnnamed41(o.entities!);
    checkUnnamed43(o.metadata!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListEntitiesResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed44() => {
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

void checkUnnamed44(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted46 = (o['x']!) as core.Map;
  unittest.expect(casted46, unittest.hasLength(3));
  unittest.expect(casted46['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted46['bool'], unittest.equals(true));
  unittest.expect(casted46['string'], unittest.equals('foo'));
  var casted47 = (o['y']!) as core.Map;
  unittest.expect(casted47, unittest.hasLength(3));
  unittest.expect(casted47['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted47['bool'], unittest.equals(true));
  unittest.expect(casted47['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Map<core.String, core.Object?>> buildUnnamed45() => {
  'x': buildUnnamed44(),
  'y': buildUnnamed44(),
};

void checkUnnamed45(
  core.Map<core.String, core.Map<core.String, core.Object?>> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed44(o['x']!);
  checkUnnamed44(o['y']!);
}

core.List<api.EntityType> buildUnnamed46() => [
  buildEntityType(),
  buildEntityType(),
];

void checkUnnamed46(core.List<api.EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityType(o[0]);
  checkEntityType(o[1]);
}

core.List<core.String> buildUnnamed47() => ['foo', 'foo'];

void checkUnnamed47(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListEntityTypesResponse = 0;
api.ListEntityTypesResponse buildListEntityTypesResponse() {
  final o = api.ListEntityTypesResponse();
  buildCounterListEntityTypesResponse++;
  if (buildCounterListEntityTypesResponse < 3) {
    o.metadata = buildUnnamed45();
    o.nextPageToken = 'foo';
    o.types = buildUnnamed46();
    o.unsupportedTypeNames = buildUnnamed47();
  }
  buildCounterListEntityTypesResponse--;
  return o;
}

void checkListEntityTypesResponse(api.ListEntityTypesResponse o) {
  buildCounterListEntityTypesResponse++;
  if (buildCounterListEntityTypesResponse < 3) {
    checkUnnamed45(o.metadata!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed46(o.types!);
    checkUnnamed47(o.unsupportedTypeNames!);
  }
  buildCounterListEntityTypesResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed48() => {
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

void checkUnnamed48(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted48 = (o['x']!) as core.Map;
  unittest.expect(casted48, unittest.hasLength(3));
  unittest.expect(casted48['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted48['bool'], unittest.equals(true));
  unittest.expect(casted48['string'], unittest.equals('foo'));
  var casted49 = (o['y']!) as core.Map;
  unittest.expect(casted49, unittest.hasLength(3));
  unittest.expect(casted49['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted49['bool'], unittest.equals(true));
  unittest.expect(casted49['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Map<core.String, core.Object?>> buildUnnamed49() => {
  'x': buildUnnamed48(),
  'y': buildUnnamed48(),
};

void checkUnnamed49(
  core.Map<core.String, core.Map<core.String, core.Object?>> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed48(o['x']!);
  checkUnnamed48(o['y']!);
}

core.List<api.Resource> buildUnnamed50() => [buildResource(), buildResource()];

void checkUnnamed50(core.List<api.Resource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResource(o[0]);
  checkResource(o[1]);
}

core.int buildCounterListResourcesResponse = 0;
api.ListResourcesResponse buildListResourcesResponse() {
  final o = api.ListResourcesResponse();
  buildCounterListResourcesResponse++;
  if (buildCounterListResourcesResponse < 3) {
    o.metadata = buildUnnamed49();
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed50();
  }
  buildCounterListResourcesResponse--;
  return o;
}

void checkListResourcesResponse(api.ListResourcesResponse o) {
  buildCounterListResourcesResponse++;
  if (buildCounterListResourcesResponse < 3) {
    checkUnnamed49(o.metadata!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed50(o.resources!);
  }
  buildCounterListResourcesResponse--;
}

core.int buildCounterListToolsPostRequest = 0;
api.ListToolsPostRequest buildListToolsPostRequest() {
  final o = api.ListToolsPostRequest();
  buildCounterListToolsPostRequest++;
  if (buildCounterListToolsPostRequest < 3) {
    o.executionConfig = buildExecutionConfig();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.toolSpec = buildToolSpec();
  }
  buildCounterListToolsPostRequest--;
  return o;
}

void checkListToolsPostRequest(api.ListToolsPostRequest o) {
  buildCounterListToolsPostRequest++;
  if (buildCounterListToolsPostRequest < 3) {
    checkExecutionConfig(o.executionConfig!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkToolSpec(o.toolSpec!);
  }
  buildCounterListToolsPostRequest--;
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
  var casted50 = (o['x']!) as core.Map;
  unittest.expect(casted50, unittest.hasLength(3));
  unittest.expect(casted50['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted50['bool'], unittest.equals(true));
  unittest.expect(casted50['string'], unittest.equals('foo'));
  var casted51 = (o['y']!) as core.Map;
  unittest.expect(casted51, unittest.hasLength(3));
  unittest.expect(casted51['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted51['bool'], unittest.equals(true));
  unittest.expect(casted51['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Map<core.String, core.Object?>> buildUnnamed52() => {
  'x': buildUnnamed51(),
  'y': buildUnnamed51(),
};

void checkUnnamed52(
  core.Map<core.String, core.Map<core.String, core.Object?>> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed51(o['x']!);
  checkUnnamed51(o['y']!);
}

core.List<api.Tool> buildUnnamed53() => [buildTool(), buildTool()];

void checkUnnamed53(core.List<api.Tool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTool(o[0]);
  checkTool(o[1]);
}

core.int buildCounterListToolsResponse = 0;
api.ListToolsResponse buildListToolsResponse() {
  final o = api.ListToolsResponse();
  buildCounterListToolsResponse++;
  if (buildCounterListToolsResponse < 3) {
    o.metadata = buildUnnamed52();
    o.nextPageToken = 'foo';
    o.tools = buildUnnamed53();
  }
  buildCounterListToolsResponse--;
  return o;
}

void checkListToolsResponse(api.ListToolsResponse o) {
  buildCounterListToolsResponse++;
  if (buildCounterListToolsResponse < 3) {
    checkUnnamed52(o.metadata!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed53(o.tools!);
  }
  buildCounterListToolsResponse--;
}

core.int buildCounterOAuth2Config = 0;
api.OAuth2Config buildOAuth2Config() {
  final o = api.OAuth2Config();
  buildCounterOAuth2Config++;
  if (buildCounterOAuth2Config < 3) {
    o.authUri = 'foo';
    o.clientId = 'foo';
    o.clientSecret = 'foo';
  }
  buildCounterOAuth2Config--;
  return o;
}

void checkOAuth2Config(api.OAuth2Config o) {
  buildCounterOAuth2Config++;
  if (buildCounterOAuth2Config < 3) {
    unittest.expect(o.authUri!, unittest.equals('foo'));
    unittest.expect(o.clientId!, unittest.equals('foo'));
    unittest.expect(o.clientSecret!, unittest.equals('foo'));
  }
  buildCounterOAuth2Config--;
}

core.List<api.QueryParameter> buildUnnamed54() => [
  buildQueryParameter(),
  buildQueryParameter(),
];

void checkUnnamed54(core.List<api.QueryParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueryParameter(o[0]);
  checkQueryParameter(o[1]);
}

core.int buildCounterQuery = 0;
api.Query buildQuery() {
  final o = api.Query();
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    o.maxRows = 'foo';
    o.query = 'foo';
    o.queryParameters = buildUnnamed54();
    o.timeout = 'foo';
  }
  buildCounterQuery--;
  return o;
}

void checkQuery(api.Query o) {
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    unittest.expect(o.maxRows!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
    checkUnnamed54(o.queryParameters!);
    unittest.expect(o.timeout!, unittest.equals('foo'));
  }
  buildCounterQuery--;
}

core.int buildCounterQueryParameter = 0;
api.QueryParameter buildQueryParameter() {
  final o = api.QueryParameter();
  buildCounterQueryParameter++;
  if (buildCounterQueryParameter < 3) {
    o.dataType = 'foo';
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
  }
  buildCounterQueryParameter--;
  return o;
}

void checkQueryParameter(api.QueryParameter o) {
  buildCounterQueryParameter++;
  if (buildCounterQueryParameter < 3) {
    unittest.expect(o.dataType!, unittest.equals('foo'));
    var casted52 = (o.value!) as core.Map;
    unittest.expect(casted52, unittest.hasLength(3));
    unittest.expect(casted52['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted52['bool'], unittest.equals(true));
    unittest.expect(casted52['string'], unittest.equals('foo'));
  }
  buildCounterQueryParameter--;
}

core.int buildCounterReference = 0;
api.Reference buildReference() {
  final o = api.Reference();
  buildCounterReference++;
  if (buildCounterReference < 3) {
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterReference--;
  return o;
}

void checkReference(api.Reference o) {
  buildCounterReference++;
  if (buildCounterReference < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterReference--;
}

core.int buildCounterRefreshAccessTokenRequest = 0;
api.RefreshAccessTokenRequest buildRefreshAccessTokenRequest() {
  final o = api.RefreshAccessTokenRequest();
  buildCounterRefreshAccessTokenRequest++;
  if (buildCounterRefreshAccessTokenRequest < 3) {
    o.executionConfig = buildExecutionConfig();
    o.oauth2Config = buildOAuth2Config();
    o.refreshToken = 'foo';
  }
  buildCounterRefreshAccessTokenRequest--;
  return o;
}

void checkRefreshAccessTokenRequest(api.RefreshAccessTokenRequest o) {
  buildCounterRefreshAccessTokenRequest++;
  if (buildCounterRefreshAccessTokenRequest < 3) {
    checkExecutionConfig(o.executionConfig!);
    checkOAuth2Config(o.oauth2Config!);
    unittest.expect(o.refreshToken!, unittest.equals('foo'));
  }
  buildCounterRefreshAccessTokenRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed55() => {
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

void checkUnnamed55(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted53 = (o['x']!) as core.Map;
  unittest.expect(casted53, unittest.hasLength(3));
  unittest.expect(casted53['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted53['bool'], unittest.equals(true));
  unittest.expect(casted53['string'], unittest.equals('foo'));
  var casted54 = (o['y']!) as core.Map;
  unittest.expect(casted54, unittest.hasLength(3));
  unittest.expect(casted54['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted54['bool'], unittest.equals(true));
  unittest.expect(casted54['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Map<core.String, core.Object?>> buildUnnamed56() => {
  'x': buildUnnamed55(),
  'y': buildUnnamed55(),
};

void checkUnnamed56(
  core.Map<core.String, core.Map<core.String, core.Object?>> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed55(o['x']!);
  checkUnnamed55(o['y']!);
}

core.int buildCounterRefreshAccessTokenResponse = 0;
api.RefreshAccessTokenResponse buildRefreshAccessTokenResponse() {
  final o = api.RefreshAccessTokenResponse();
  buildCounterRefreshAccessTokenResponse++;
  if (buildCounterRefreshAccessTokenResponse < 3) {
    o.accessCredentials = buildAccessCredentials();
    o.metadata = buildUnnamed56();
  }
  buildCounterRefreshAccessTokenResponse--;
  return o;
}

void checkRefreshAccessTokenResponse(api.RefreshAccessTokenResponse o) {
  buildCounterRefreshAccessTokenResponse++;
  if (buildCounterRefreshAccessTokenResponse < 3) {
    checkAccessCredentials(o.accessCredentials!);
    checkUnnamed56(o.metadata!);
  }
  buildCounterRefreshAccessTokenResponse--;
}

core.int buildCounterResource = 0;
api.Resource buildResource() {
  final o = api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.description = 'foo';
    o.mimeType = 'foo';
    o.name = 'foo';
    o.size = 'foo';
    o.uri = 'foo';
  }
  buildCounterResource--;
  return o;
}

void checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.size!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterResource--;
}

core.int buildCounterResultMetadata = 0;
api.ResultMetadata buildResultMetadata() {
  final o = api.ResultMetadata();
  buildCounterResultMetadata++;
  if (buildCounterResultMetadata < 3) {
    o.dataType = 'foo';
    o.defaultValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
    o.description = 'foo';
    o.jsonSchema = buildJsonSchema();
    o.name = 'foo';
    o.nullable = true;
  }
  buildCounterResultMetadata--;
  return o;
}

void checkResultMetadata(api.ResultMetadata o) {
  buildCounterResultMetadata++;
  if (buildCounterResultMetadata < 3) {
    unittest.expect(o.dataType!, unittest.equals('foo'));
    var casted55 = (o.defaultValue!) as core.Map;
    unittest.expect(casted55, unittest.hasLength(3));
    unittest.expect(casted55['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted55['bool'], unittest.equals(true));
    unittest.expect(casted55['string'], unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkJsonSchema(o.jsonSchema!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.nullable!, unittest.isTrue);
  }
  buildCounterResultMetadata--;
}

core.List<core.String> buildUnnamed57() => ['foo', 'foo'];

void checkUnnamed57(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTool = 0;
api.Tool buildTool() {
  final o = api.Tool();
  buildCounterTool++;
  if (buildCounterTool < 3) {
    o.annotations = buildToolAnnotations();
    o.dependsOn = buildUnnamed57();
    o.description = 'foo';
    o.inputSchema = buildJsonSchema();
    o.name = 'foo';
    o.outputSchema = buildJsonSchema();
  }
  buildCounterTool--;
  return o;
}

void checkTool(api.Tool o) {
  buildCounterTool++;
  if (buildCounterTool < 3) {
    checkToolAnnotations(o.annotations!);
    checkUnnamed57(o.dependsOn!);
    unittest.expect(o.description!, unittest.equals('foo'));
    checkJsonSchema(o.inputSchema!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkJsonSchema(o.outputSchema!);
  }
  buildCounterTool--;
}

core.int buildCounterToolAnnotations = 0;
api.ToolAnnotations buildToolAnnotations() {
  final o = api.ToolAnnotations();
  buildCounterToolAnnotations++;
  if (buildCounterToolAnnotations < 3) {
    o.destructiveHint = true;
    o.idempotentHint = true;
    o.openWorldHint = true;
    o.readOnlyHint = true;
    o.title = 'foo';
  }
  buildCounterToolAnnotations--;
  return o;
}

void checkToolAnnotations(api.ToolAnnotations o) {
  buildCounterToolAnnotations++;
  if (buildCounterToolAnnotations < 3) {
    unittest.expect(o.destructiveHint!, unittest.isTrue);
    unittest.expect(o.idempotentHint!, unittest.isTrue);
    unittest.expect(o.openWorldHint!, unittest.isTrue);
    unittest.expect(o.readOnlyHint!, unittest.isTrue);
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterToolAnnotations--;
}

core.Map<core.String, core.Object?> buildUnnamed58() => {
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

void checkUnnamed58(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted56 = (o['x']!) as core.Map;
  unittest.expect(casted56, unittest.hasLength(3));
  unittest.expect(casted56['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted56['bool'], unittest.equals(true));
  unittest.expect(casted56['string'], unittest.equals('foo'));
  var casted57 = (o['y']!) as core.Map;
  unittest.expect(casted57, unittest.hasLength(3));
  unittest.expect(casted57['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted57['bool'], unittest.equals(true));
  unittest.expect(casted57['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed59() => [
  buildUnnamed58(),
  buildUnnamed58(),
];

void checkUnnamed59(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed58(o[0]);
  checkUnnamed58(o[1]);
}

core.int buildCounterToolSpec = 0;
api.ToolSpec buildToolSpec() {
  final o = api.ToolSpec();
  buildCounterToolSpec++;
  if (buildCounterToolSpec < 3) {
    o.toolDefinitions = buildUnnamed59();
    o.toolSpecVersion = 'foo';
  }
  buildCounterToolSpec--;
  return o;
}

void checkToolSpec(api.ToolSpec o) {
  buildCounterToolSpec++;
  if (buildCounterToolSpec < 3) {
    checkUnnamed59(o.toolDefinitions!);
    unittest.expect(o.toolSpecVersion!, unittest.equals('foo'));
  }
  buildCounterToolSpec--;
}

core.Map<core.String, core.Object?> buildUnnamed60() => {
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

void checkUnnamed60(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted58 = (o['x']!) as core.Map;
  unittest.expect(casted58, unittest.hasLength(3));
  unittest.expect(casted58['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted58['bool'], unittest.equals(true));
  unittest.expect(casted58['string'], unittest.equals('foo'));
  var casted59 = (o['y']!) as core.Map;
  unittest.expect(casted59, unittest.hasLength(3));
  unittest.expect(casted59['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted59['bool'], unittest.equals(true));
  unittest.expect(casted59['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Map<core.String, core.Object?>> buildUnnamed61() => {
  'x': buildUnnamed60(),
  'y': buildUnnamed60(),
};

void checkUnnamed61(
  core.Map<core.String, core.Map<core.String, core.Object?>> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed60(o['x']!);
  checkUnnamed60(o['y']!);
}

core.Map<core.String, core.Object?> buildUnnamed62() => {
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

void checkUnnamed62(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted60 = (o['x']!) as core.Map;
  unittest.expect(casted60, unittest.hasLength(3));
  unittest.expect(casted60['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted60['bool'], unittest.equals(true));
  unittest.expect(casted60['string'], unittest.equals('foo'));
  var casted61 = (o['y']!) as core.Map;
  unittest.expect(casted61, unittest.hasLength(3));
  unittest.expect(casted61['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted61['bool'], unittest.equals(true));
  unittest.expect(casted61['string'], unittest.equals('foo'));
}

core.int buildCounterUpdateEntitiesWithConditionsResponse = 0;
api.UpdateEntitiesWithConditionsResponse
buildUpdateEntitiesWithConditionsResponse() {
  final o = api.UpdateEntitiesWithConditionsResponse();
  buildCounterUpdateEntitiesWithConditionsResponse++;
  if (buildCounterUpdateEntitiesWithConditionsResponse < 3) {
    o.metadata = buildUnnamed61();
    o.response = buildUnnamed62();
  }
  buildCounterUpdateEntitiesWithConditionsResponse--;
  return o;
}

void checkUpdateEntitiesWithConditionsResponse(
  api.UpdateEntitiesWithConditionsResponse o,
) {
  buildCounterUpdateEntitiesWithConditionsResponse++;
  if (buildCounterUpdateEntitiesWithConditionsResponse < 3) {
    checkUnnamed61(o.metadata!);
    checkUnnamed62(o.response!);
  }
  buildCounterUpdateEntitiesWithConditionsResponse--;
}

core.List<core.String> buildUnnamed63() => ['foo', 'foo'];

void checkUnnamed63(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed64() => ['foo', 'foo'];

void checkUnnamed64(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AccessCredentials', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessCredentials();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessCredentials.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccessCredentials(od);
    });
  });

  unittest.group('obj-schema-Action', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Action.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAction(od);
    });
  });

  unittest.group('obj-schema-AuthCodeData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthCodeData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthCodeData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthCodeData(od);
    });
  });

  unittest.group('obj-schema-CheckReadinessResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckReadinessResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckReadinessResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckReadinessResponse(od);
    });
  });

  unittest.group('obj-schema-CheckStatusResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckStatusResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckStatusResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckStatusResponse(od);
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

  unittest.group('obj-schema-Entity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Entity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEntity(od);
    });
  });

  unittest.group('obj-schema-EntityType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEntityType(od);
    });
  });

  unittest.group('obj-schema-ExchangeAuthCodeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExchangeAuthCodeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExchangeAuthCodeRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExchangeAuthCodeRequest(od);
    });
  });

  unittest.group('obj-schema-ExchangeAuthCodeResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExchangeAuthCodeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExchangeAuthCodeResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExchangeAuthCodeResponse(od);
    });
  });

  unittest.group('obj-schema-ExecuteActionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteActionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteActionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecuteActionRequest(od);
    });
  });

  unittest.group('obj-schema-ExecuteActionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteActionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteActionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecuteActionResponse(od);
    });
  });

  unittest.group('obj-schema-ExecuteSqlQueryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteSqlQueryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteSqlQueryRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecuteSqlQueryRequest(od);
    });
  });

  unittest.group('obj-schema-ExecuteSqlQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteSqlQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteSqlQueryResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecuteSqlQueryResponse(od);
    });
  });

  unittest.group('obj-schema-ExecuteToolRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteToolRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteToolRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecuteToolRequest(od);
    });
  });

  unittest.group('obj-schema-ExecuteToolResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteToolResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteToolResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecuteToolResponse(od);
    });
  });

  unittest.group('obj-schema-ExecutionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecutionConfig(od);
    });
  });

  unittest.group('obj-schema-Field', () {
    unittest.test('to-json--from-json', () async {
      final o = buildField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Field.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkField(od);
    });
  });

  unittest.group('obj-schema-GetResourcePostRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetResourcePostRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetResourcePostRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGetResourcePostRequest(od);
    });
  });

  unittest.group('obj-schema-GetResourceResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetResourceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetResourceResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGetResourceResponse(od);
    });
  });

  unittest.group('obj-schema-InputParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputParameter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInputParameter(od);
    });
  });

  unittest.group('obj-schema-JsonSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJsonSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JsonSchema.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkJsonSchema(od);
    });
  });

  unittest.group('obj-schema-ListActionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListActionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListActionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListActionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListEntitiesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEntitiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEntitiesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListEntitiesResponse(od);
    });
  });

  unittest.group('obj-schema-ListEntityTypesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEntityTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEntityTypesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListEntityTypesResponse(od);
    });
  });

  unittest.group('obj-schema-ListResourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListResourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListResourcesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListResourcesResponse(od);
    });
  });

  unittest.group('obj-schema-ListToolsPostRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListToolsPostRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListToolsPostRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListToolsPostRequest(od);
    });
  });

  unittest.group('obj-schema-ListToolsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListToolsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListToolsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListToolsResponse(od);
    });
  });

  unittest.group('obj-schema-OAuth2Config', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOAuth2Config();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OAuth2Config.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOAuth2Config(od);
    });
  });

  unittest.group('obj-schema-Query', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Query.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQuery(od);
    });
  });

  unittest.group('obj-schema-QueryParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryParameter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryParameter(od);
    });
  });

  unittest.group('obj-schema-Reference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Reference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReference(od);
    });
  });

  unittest.group('obj-schema-RefreshAccessTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRefreshAccessTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RefreshAccessTokenRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRefreshAccessTokenRequest(od);
    });
  });

  unittest.group('obj-schema-RefreshAccessTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRefreshAccessTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RefreshAccessTokenResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRefreshAccessTokenResponse(od);
    });
  });

  unittest.group('obj-schema-Resource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Resource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResource(od);
    });
  });

  unittest.group('obj-schema-ResultMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResultMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResultMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResultMetadata(od);
    });
  });

  unittest.group('obj-schema-Tool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Tool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTool(od);
    });
  });

  unittest.group('obj-schema-ToolAnnotations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToolAnnotations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToolAnnotations.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkToolAnnotations(od);
    });
  });

  unittest.group('obj-schema-ToolSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToolSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToolSpec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkToolSpec(od);
    });
  });

  unittest.group('obj-schema-UpdateEntitiesWithConditionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateEntitiesWithConditionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateEntitiesWithConditionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateEntitiesWithConditionsResponse(od);
    });
  });

  unittest.group('resource-ProjectsLocationsConnectionsResource', () {
    unittest.test('method--checkReadiness', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildCheckReadinessResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.checkReadiness(arg_name, $fields: arg_$fields);
      checkCheckReadinessResponse(response as api.CheckReadinessResponse);
    });

    unittest.test('method--checkStatus', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
      final arg_name = 'foo';
      final arg_executionConfig_headers = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['executionConfig.headers']!.first,
            unittest.equals(arg_executionConfig_headers),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCheckStatusResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.checkStatus(
        arg_name,
        executionConfig_headers: arg_executionConfig_headers,
        $fields: arg_$fields,
      );
      checkCheckStatusResponse(response as api.CheckStatusResponse);
    });

    unittest.test('method--exchangeAuthCode', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
      final arg_request = buildExchangeAuthCodeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExchangeAuthCodeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExchangeAuthCodeRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildExchangeAuthCodeResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.exchangeAuthCode(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkExchangeAuthCodeResponse(response as api.ExchangeAuthCodeResponse);
    });

    unittest.test('method--executeSqlQuery', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
      final arg_request = buildExecuteSqlQueryRequest();
      final arg_connection = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExecuteSqlQueryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExecuteSqlQueryRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildExecuteSqlQueryResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.executeSqlQuery(
        arg_request,
        arg_connection,
        $fields: arg_$fields,
      );
      checkExecuteSqlQueryResponse(response as api.ExecuteSqlQueryResponse);
    });

    unittest.test('method--refreshAccessToken', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
      final arg_request = buildRefreshAccessTokenRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RefreshAccessTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRefreshAccessTokenRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildRefreshAccessTokenResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.refreshAccessToken(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkRefreshAccessTokenResponse(
        response as api.RefreshAccessTokenResponse,
      );
    });

    unittest.test('method--tools', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
      final arg_request = buildListToolsPostRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ListToolsPostRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkListToolsPostRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildListToolsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.tools(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkListToolsResponse(response as api.ListToolsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsConnectionsActionsResource', () {
    unittest.test('method--execute', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.connections.actions;
      final arg_request = buildExecuteActionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExecuteActionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExecuteActionRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildExecuteActionResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.execute(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkExecuteActionResponse(response as api.ExecuteActionResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.connections.actions;
      final arg_name = 'foo';
      final arg_executionConfig_headers = 'foo';
      final arg_view = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['executionConfig.headers']!.first,
            unittest.equals(arg_executionConfig_headers),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAction());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        executionConfig_headers: arg_executionConfig_headers,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkAction(response as api.Action);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.connections.actions;
      final arg_parent = 'foo';
      final arg_executionConfig_headers = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['executionConfig.headers']!.first,
            unittest.equals(arg_executionConfig_headers),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListActionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        executionConfig_headers: arg_executionConfig_headers,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListActionsResponse(response as api.ListActionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsConnectionsEntityTypesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.connections.entityTypes;
      final arg_name = 'foo';
      final arg_contextMetadata = 'foo';
      final arg_executionConfig_headers = 'foo';
      final arg_view = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['contextMetadata']!.first,
            unittest.equals(arg_contextMetadata),
          );
          unittest.expect(
            queryMap['executionConfig.headers']!.first,
            unittest.equals(arg_executionConfig_headers),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEntityType());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        contextMetadata: arg_contextMetadata,
        executionConfig_headers: arg_executionConfig_headers,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkEntityType(response as api.EntityType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.connections.entityTypes;
      final arg_parent = 'foo';
      final arg_executionConfig_headers = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['executionConfig.headers']!.first,
            unittest.equals(arg_executionConfig_headers),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListEntityTypesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        executionConfig_headers: arg_executionConfig_headers,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListEntityTypesResponse(response as api.ListEntityTypesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsConnectionsEntityTypesEntitiesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(
            mock,
          ).projects.locations.connections.entityTypes.entities;
      final arg_request = buildEntity();
      final arg_parent = 'foo';
      final arg_executionConfig_headers = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Entity.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEntity(obj);

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
            unittest.equals('v2/'),
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
            queryMap['executionConfig.headers']!.first,
            unittest.equals(arg_executionConfig_headers),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEntity());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        executionConfig_headers: arg_executionConfig_headers,
        $fields: arg_$fields,
      );
      checkEntity(response as api.Entity);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(
            mock,
          ).projects.locations.connections.entityTypes.entities;
      final arg_name = 'foo';
      final arg_executionConfig_headers = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['executionConfig.headers']!.first,
            unittest.equals(arg_executionConfig_headers),
          );
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
      final response = await res.delete(
        arg_name,
        executionConfig_headers: arg_executionConfig_headers,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--deleteEntitiesWithConditions', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(
            mock,
          ).projects.locations.connections.entityTypes.entities;
      final arg_entityType = 'foo';
      final arg_conditions = 'foo';
      final arg_executionConfig_headers = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['conditions']!.first,
            unittest.equals(arg_conditions),
          );
          unittest.expect(
            queryMap['executionConfig.headers']!.first,
            unittest.equals(arg_executionConfig_headers),
          );
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
      final response = await res.deleteEntitiesWithConditions(
        arg_entityType,
        conditions: arg_conditions,
        executionConfig_headers: arg_executionConfig_headers,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(
            mock,
          ).projects.locations.connections.entityTypes.entities;
      final arg_name = 'foo';
      final arg_executionConfig_headers = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['executionConfig.headers']!.first,
            unittest.equals(arg_executionConfig_headers),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEntity());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        executionConfig_headers: arg_executionConfig_headers,
        $fields: arg_$fields,
      );
      checkEntity(response as api.Entity);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(
            mock,
          ).projects.locations.connections.entityTypes.entities;
      final arg_parent = 'foo';
      final arg_conditions = 'foo';
      final arg_executionConfig_headers = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_sortBy = buildUnnamed63();
      final arg_sortOrder = buildUnnamed64();
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
            unittest.equals('v2/'),
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
            queryMap['conditions']!.first,
            unittest.equals(arg_conditions),
          );
          unittest.expect(
            queryMap['executionConfig.headers']!.first,
            unittest.equals(arg_executionConfig_headers),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(queryMap['sortBy']!, unittest.equals(arg_sortBy));
          unittest.expect(
            queryMap['sortOrder']!,
            unittest.equals(arg_sortOrder),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListEntitiesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        conditions: arg_conditions,
        executionConfig_headers: arg_executionConfig_headers,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        sortBy: arg_sortBy,
        sortOrder: arg_sortOrder,
        $fields: arg_$fields,
      );
      checkListEntitiesResponse(response as api.ListEntitiesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(
            mock,
          ).projects.locations.connections.entityTypes.entities;
      final arg_request = buildEntity();
      final arg_name = 'foo';
      final arg_executionConfig_headers = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Entity.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEntity(obj);

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
            unittest.equals('v2/'),
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
            queryMap['executionConfig.headers']!.first,
            unittest.equals(arg_executionConfig_headers),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEntity());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        executionConfig_headers: arg_executionConfig_headers,
        $fields: arg_$fields,
      );
      checkEntity(response as api.Entity);
    });

    unittest.test('method--updateEntitiesWithConditions', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(
            mock,
          ).projects.locations.connections.entityTypes.entities;
      final arg_request = buildEntity();
      final arg_entityType = 'foo';
      final arg_conditions = 'foo';
      final arg_executionConfig_headers = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Entity.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEntity(obj);

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
            unittest.equals('v2/'),
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
            queryMap['conditions']!.first,
            unittest.equals(arg_conditions),
          );
          unittest.expect(
            queryMap['executionConfig.headers']!.first,
            unittest.equals(arg_executionConfig_headers),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildUpdateEntitiesWithConditionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateEntitiesWithConditions(
        arg_request,
        arg_entityType,
        conditions: arg_conditions,
        executionConfig_headers: arg_executionConfig_headers,
        $fields: arg_$fields,
      );
      checkUpdateEntitiesWithConditionsResponse(
        response as api.UpdateEntitiesWithConditionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsConnectionsResourcesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.connections.resources;
      final arg_name = 'foo';
      final arg_executionConfig_headers = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['executionConfig.headers']!.first,
            unittest.equals(arg_executionConfig_headers),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGetResourceResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        executionConfig_headers: arg_executionConfig_headers,
        $fields: arg_$fields,
      );
      checkGetResourceResponse(response as api.GetResourceResponse);
    });

    unittest.test('method--getResourcePost', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.connections.resources;
      final arg_request = buildGetResourcePostRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetResourcePostRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetResourcePostRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildGetResourceResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getResourcePost(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGetResourceResponse(response as api.GetResourceResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.connections.resources;
      final arg_parent = 'foo';
      final arg_executionConfig_headers = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['executionConfig.headers']!.first,
            unittest.equals(arg_executionConfig_headers),
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
          final resp = convert.json.encode(buildListResourcesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        executionConfig_headers: arg_executionConfig_headers,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListResourcesResponse(response as api.ListResourcesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsConnectionsToolsResource', () {
    unittest.test('method--execute', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.connections.tools_1;
      final arg_request = buildExecuteToolRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExecuteToolRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExecuteToolRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildExecuteToolResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.execute(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkExecuteToolResponse(response as api.ExecuteToolResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.connections.tools_1;
      final arg_parent = 'foo';
      final arg_executionConfig_headers = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['executionConfig.headers']!.first,
            unittest.equals(arg_executionConfig_headers),
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
          final resp = convert.json.encode(buildListToolsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        executionConfig_headers: arg_executionConfig_headers,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListToolsResponse(response as api.ListToolsResponse);
    });
  });
}
