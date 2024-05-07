// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
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
    unittest.expect(
      o.accessToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expiresIn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.refreshToken!,
      unittest.equals('foo'),
    );
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

core.List<api.ResultMetadata> buildUnnamed1() => [
      buildResultMetadata(),
      buildResultMetadata(),
    ];

void checkUnnamed1(core.List<api.ResultMetadata> o) {
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
    o.name = 'foo';
    o.resultJsonSchema = buildJsonSchema();
    o.resultMetadata = buildUnnamed1();
  }
  buildCounterAction--;
  return o;
}

void checkAction(api.Action o) {
  buildCounterAction++;
  if (buildCounterAction < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkJsonSchema(o.inputJsonSchema!);
    checkUnnamed0(o.inputParameters!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkJsonSchema(o.resultJsonSchema!);
    checkUnnamed1(o.resultMetadata!);
  }
  buildCounterAction--;
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
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterCheckReadinessResponse--;
}

core.int buildCounterCheckStatusResponse = 0;
api.CheckStatusResponse buildCheckStatusResponse() {
  final o = api.CheckStatusResponse();
  buildCounterCheckStatusResponse++;
  if (buildCounterCheckStatusResponse < 3) {
    o.description = 'foo';
    o.state = 'foo';
  }
  buildCounterCheckStatusResponse--;
  return o;
}

void checkCheckStatusResponse(api.CheckStatusResponse o) {
  buildCounterCheckStatusResponse++;
  if (buildCounterCheckStatusResponse < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
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

core.Map<core.String, core.Object?> buildUnnamed2() => {
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

void checkUnnamed2(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterEntity = 0;
api.Entity buildEntity() {
  final o = api.Entity();
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    o.fields = buildUnnamed2();
    o.name = 'foo';
  }
  buildCounterEntity--;
  return o;
}

void checkEntity(api.Entity o) {
  buildCounterEntity++;
  if (buildCounterEntity < 3) {
    checkUnnamed2(o.fields!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterEntity--;
}

core.List<api.Field> buildUnnamed3() => [
      buildField(),
      buildField(),
    ];

void checkUnnamed3(core.List<api.Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkField(o[0]);
  checkField(o[1]);
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

core.int buildCounterEntityType = 0;
api.EntityType buildEntityType() {
  final o = api.EntityType();
  buildCounterEntityType++;
  if (buildCounterEntityType < 3) {
    o.fields = buildUnnamed3();
    o.jsonSchema = buildJsonSchema();
    o.name = 'foo';
    o.operations = buildUnnamed4();
  }
  buildCounterEntityType--;
  return o;
}

void checkEntityType(api.EntityType o) {
  buildCounterEntityType++;
  if (buildCounterEntityType < 3) {
    checkUnnamed3(o.fields!);
    checkJsonSchema(o.jsonSchema!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.operations!);
  }
  buildCounterEntityType--;
}

core.int buildCounterExchangeAuthCodeRequest = 0;
api.ExchangeAuthCodeRequest buildExchangeAuthCodeRequest() {
  final o = api.ExchangeAuthCodeRequest();
  buildCounterExchangeAuthCodeRequest++;
  if (buildCounterExchangeAuthCodeRequest < 3) {}
  buildCounterExchangeAuthCodeRequest--;
  return o;
}

void checkExchangeAuthCodeRequest(api.ExchangeAuthCodeRequest o) {
  buildCounterExchangeAuthCodeRequest++;
  if (buildCounterExchangeAuthCodeRequest < 3) {}
  buildCounterExchangeAuthCodeRequest--;
}

core.int buildCounterExchangeAuthCodeResponse = 0;
api.ExchangeAuthCodeResponse buildExchangeAuthCodeResponse() {
  final o = api.ExchangeAuthCodeResponse();
  buildCounterExchangeAuthCodeResponse++;
  if (buildCounterExchangeAuthCodeResponse < 3) {
    o.accessCredentials = buildAccessCredentials();
  }
  buildCounterExchangeAuthCodeResponse--;
  return o;
}

void checkExchangeAuthCodeResponse(api.ExchangeAuthCodeResponse o) {
  buildCounterExchangeAuthCodeResponse++;
  if (buildCounterExchangeAuthCodeResponse < 3) {
    checkAccessCredentials(o.accessCredentials!);
  }
  buildCounterExchangeAuthCodeResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed5() => {
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

void checkUnnamed5(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterExecuteActionRequest = 0;
api.ExecuteActionRequest buildExecuteActionRequest() {
  final o = api.ExecuteActionRequest();
  buildCounterExecuteActionRequest++;
  if (buildCounterExecuteActionRequest < 3) {
    o.parameters = buildUnnamed5();
  }
  buildCounterExecuteActionRequest--;
  return o;
}

void checkExecuteActionRequest(api.ExecuteActionRequest o) {
  buildCounterExecuteActionRequest++;
  if (buildCounterExecuteActionRequest < 3) {
    checkUnnamed5(o.parameters!);
  }
  buildCounterExecuteActionRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed6() => {
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

void checkUnnamed6(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed7() => [
      buildUnnamed6(),
      buildUnnamed6(),
    ];

void checkUnnamed7(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6(o[0]);
  checkUnnamed6(o[1]);
}

core.int buildCounterExecuteActionResponse = 0;
api.ExecuteActionResponse buildExecuteActionResponse() {
  final o = api.ExecuteActionResponse();
  buildCounterExecuteActionResponse++;
  if (buildCounterExecuteActionResponse < 3) {
    o.results = buildUnnamed7();
  }
  buildCounterExecuteActionResponse--;
  return o;
}

void checkExecuteActionResponse(api.ExecuteActionResponse o) {
  buildCounterExecuteActionResponse++;
  if (buildCounterExecuteActionResponse < 3) {
    checkUnnamed7(o.results!);
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

core.Map<core.String, core.Object?> buildUnnamed8() => {
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

void checkUnnamed8(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed9() => [
      buildUnnamed8(),
      buildUnnamed8(),
    ];

void checkUnnamed9(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8(o[0]);
  checkUnnamed8(o[1]);
}

core.int buildCounterExecuteSqlQueryResponse = 0;
api.ExecuteSqlQueryResponse buildExecuteSqlQueryResponse() {
  final o = api.ExecuteSqlQueryResponse();
  buildCounterExecuteSqlQueryResponse++;
  if (buildCounterExecuteSqlQueryResponse < 3) {
    o.results = buildUnnamed9();
  }
  buildCounterExecuteSqlQueryResponse--;
  return o;
}

void checkExecuteSqlQueryResponse(api.ExecuteSqlQueryResponse o) {
  buildCounterExecuteSqlQueryResponse++;
  if (buildCounterExecuteSqlQueryResponse < 3) {
    checkUnnamed9(o.results!);
  }
  buildCounterExecuteSqlQueryResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed10() => {
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

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterField = 0;
api.Field buildField() {
  final o = api.Field();
  buildCounterField++;
  if (buildCounterField < 3) {
    o.additionalDetails = buildUnnamed10();
    o.dataType = 'foo';
    o.defaultValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
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
    checkUnnamed10(o.additionalDetails!);
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    var casted11 = (o.defaultValue!) as core.Map;
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkJsonSchema(o.jsonSchema!);
    unittest.expect(o.key!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.nullable!, unittest.isTrue);
    checkReference(o.reference!);
  }
  buildCounterField--;
}

core.Map<core.String, core.Object?> buildUnnamed11() => {
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

void checkUnnamed11(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted12 = (o['x']!) as core.Map;
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
  var casted13 = (o['y']!) as core.Map;
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
}

core.int buildCounterInputParameter = 0;
api.InputParameter buildInputParameter() {
  final o = api.InputParameter();
  buildCounterInputParameter++;
  if (buildCounterInputParameter < 3) {
    o.additionalDetails = buildUnnamed11();
    o.dataType = 'foo';
    o.defaultValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
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
    checkUnnamed11(o.additionalDetails!);
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    var casted14 = (o.defaultValue!) as core.Map;
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkJsonSchema(o.jsonSchema!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.nullable!, unittest.isTrue);
  }
  buildCounterInputParameter--;
}

core.Map<core.String, core.Object?> buildUnnamed12() => {
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

void checkUnnamed12(core.Map<core.String, core.Object?> o) {
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

core.List<core.Object?> buildUnnamed13() => [
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    ];

void checkUnnamed13(core.List<core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted17 = (o[0]) as core.Map;
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
  var casted18 = (o[1]) as core.Map;
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

core.Map<core.String, api.JsonSchema> buildUnnamed14() => {
      'x': buildJsonSchema(),
      'y': buildJsonSchema(),
    };

void checkUnnamed14(core.Map<core.String, api.JsonSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJsonSchema(o['x']!);
  checkJsonSchema(o['y']!);
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

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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

core.int buildCounterJsonSchema = 0;
api.JsonSchema buildJsonSchema() {
  final o = api.JsonSchema();
  buildCounterJsonSchema++;
  if (buildCounterJsonSchema < 3) {
    o.additionalDetails = buildUnnamed12();
    o.default_ = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.description = 'foo';
    o.enum_ = buildUnnamed13();
    o.format = 'foo';
    o.items = buildJsonSchema();
    o.jdbcType = 'foo';
    o.properties = buildUnnamed14();
    o.required = buildUnnamed15();
    o.type = buildUnnamed16();
  }
  buildCounterJsonSchema--;
  return o;
}

void checkJsonSchema(api.JsonSchema o) {
  buildCounterJsonSchema++;
  if (buildCounterJsonSchema < 3) {
    checkUnnamed12(o.additionalDetails!);
    var casted19 = (o.default_!) as core.Map;
    unittest.expect(casted19, unittest.hasLength(3));
    unittest.expect(
      casted19['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted19['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted19['string'],
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.enum_!);
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    checkJsonSchema(o.items!);
    unittest.expect(
      o.jdbcType!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.properties!);
    checkUnnamed15(o.required!);
    checkUnnamed16(o.type!);
  }
  buildCounterJsonSchema--;
}

core.List<api.Action> buildUnnamed17() => [
      buildAction(),
      buildAction(),
    ];

void checkUnnamed17(core.List<api.Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAction(o[0]);
  checkAction(o[1]);
}

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

core.int buildCounterListActionsResponse = 0;
api.ListActionsResponse buildListActionsResponse() {
  final o = api.ListActionsResponse();
  buildCounterListActionsResponse++;
  if (buildCounterListActionsResponse < 3) {
    o.actions = buildUnnamed17();
    o.nextPageToken = 'foo';
    o.unsupportedActionNames = buildUnnamed18();
  }
  buildCounterListActionsResponse--;
  return o;
}

void checkListActionsResponse(api.ListActionsResponse o) {
  buildCounterListActionsResponse++;
  if (buildCounterListActionsResponse < 3) {
    checkUnnamed17(o.actions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.unsupportedActionNames!);
  }
  buildCounterListActionsResponse--;
}

core.List<api.Entity> buildUnnamed19() => [
      buildEntity(),
      buildEntity(),
    ];

void checkUnnamed19(core.List<api.Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntity(o[0]);
  checkEntity(o[1]);
}

core.int buildCounterListEntitiesResponse = 0;
api.ListEntitiesResponse buildListEntitiesResponse() {
  final o = api.ListEntitiesResponse();
  buildCounterListEntitiesResponse++;
  if (buildCounterListEntitiesResponse < 3) {
    o.entities = buildUnnamed19();
    o.nextPageToken = 'foo';
  }
  buildCounterListEntitiesResponse--;
  return o;
}

void checkListEntitiesResponse(api.ListEntitiesResponse o) {
  buildCounterListEntitiesResponse++;
  if (buildCounterListEntitiesResponse < 3) {
    checkUnnamed19(o.entities!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListEntitiesResponse--;
}

core.List<api.EntityType> buildUnnamed20() => [
      buildEntityType(),
      buildEntityType(),
    ];

void checkUnnamed20(core.List<api.EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityType(o[0]);
  checkEntityType(o[1]);
}

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
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

core.int buildCounterListEntityTypesResponse = 0;
api.ListEntityTypesResponse buildListEntityTypesResponse() {
  final o = api.ListEntityTypesResponse();
  buildCounterListEntityTypesResponse++;
  if (buildCounterListEntityTypesResponse < 3) {
    o.nextPageToken = 'foo';
    o.types = buildUnnamed20();
    o.unsupportedTypeNames = buildUnnamed21();
  }
  buildCounterListEntityTypesResponse--;
  return o;
}

void checkListEntityTypesResponse(api.ListEntityTypesResponse o) {
  buildCounterListEntityTypesResponse++;
  if (buildCounterListEntityTypesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.types!);
    checkUnnamed21(o.unsupportedTypeNames!);
  }
  buildCounterListEntityTypesResponse--;
}

core.List<api.QueryParameter> buildUnnamed22() => [
      buildQueryParameter(),
      buildQueryParameter(),
    ];

void checkUnnamed22(core.List<api.QueryParameter> o) {
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
    o.queryParameters = buildUnnamed22();
    o.timeout = 'foo';
  }
  buildCounterQuery--;
  return o;
}

void checkQuery(api.Query o) {
  buildCounterQuery++;
  if (buildCounterQuery < 3) {
    unittest.expect(
      o.maxRows!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.queryParameters!);
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
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
      'string': 'foo'
    };
  }
  buildCounterQueryParameter--;
  return o;
}

void checkQueryParameter(api.QueryParameter o) {
  buildCounterQueryParameter++;
  if (buildCounterQueryParameter < 3) {
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    var casted20 = (o.value!) as core.Map;
    unittest.expect(casted20, unittest.hasLength(3));
    unittest.expect(
      casted20['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted20['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted20['string'],
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterReference--;
}

core.int buildCounterRefreshAccessTokenRequest = 0;
api.RefreshAccessTokenRequest buildRefreshAccessTokenRequest() {
  final o = api.RefreshAccessTokenRequest();
  buildCounterRefreshAccessTokenRequest++;
  if (buildCounterRefreshAccessTokenRequest < 3) {}
  buildCounterRefreshAccessTokenRequest--;
  return o;
}

void checkRefreshAccessTokenRequest(api.RefreshAccessTokenRequest o) {
  buildCounterRefreshAccessTokenRequest++;
  if (buildCounterRefreshAccessTokenRequest < 3) {}
  buildCounterRefreshAccessTokenRequest--;
}

core.int buildCounterRefreshAccessTokenResponse = 0;
api.RefreshAccessTokenResponse buildRefreshAccessTokenResponse() {
  final o = api.RefreshAccessTokenResponse();
  buildCounterRefreshAccessTokenResponse++;
  if (buildCounterRefreshAccessTokenResponse < 3) {
    o.accessCredentials = buildAccessCredentials();
  }
  buildCounterRefreshAccessTokenResponse--;
  return o;
}

void checkRefreshAccessTokenResponse(api.RefreshAccessTokenResponse o) {
  buildCounterRefreshAccessTokenResponse++;
  if (buildCounterRefreshAccessTokenResponse < 3) {
    checkAccessCredentials(o.accessCredentials!);
  }
  buildCounterRefreshAccessTokenResponse--;
}

core.int buildCounterResultMetadata = 0;
api.ResultMetadata buildResultMetadata() {
  final o = api.ResultMetadata();
  buildCounterResultMetadata++;
  if (buildCounterResultMetadata < 3) {
    o.dataType = 'foo';
    o.description = 'foo';
    o.jsonSchema = buildJsonSchema();
    o.name = 'foo';
  }
  buildCounterResultMetadata--;
  return o;
}

void checkResultMetadata(api.ResultMetadata o) {
  buildCounterResultMetadata++;
  if (buildCounterResultMetadata < 3) {
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkJsonSchema(o.jsonSchema!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterResultMetadata--;
}

core.Map<core.String, core.Object?> buildUnnamed23() => {
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

void checkUnnamed23(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted21 = (o['x']!) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(
    casted21['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted21['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted21['string'],
    unittest.equals('foo'),
  );
  var casted22 = (o['y']!) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(
    casted22['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted22['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted22['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterUpdateEntitiesWithConditionsResponse = 0;
api.UpdateEntitiesWithConditionsResponse
    buildUpdateEntitiesWithConditionsResponse() {
  final o = api.UpdateEntitiesWithConditionsResponse();
  buildCounterUpdateEntitiesWithConditionsResponse++;
  if (buildCounterUpdateEntitiesWithConditionsResponse < 3) {
    o.response = buildUnnamed23();
  }
  buildCounterUpdateEntitiesWithConditionsResponse--;
  return o;
}

void checkUpdateEntitiesWithConditionsResponse(
    api.UpdateEntitiesWithConditionsResponse o) {
  buildCounterUpdateEntitiesWithConditionsResponse++;
  if (buildCounterUpdateEntitiesWithConditionsResponse < 3) {
    checkUnnamed23(o.response!);
  }
  buildCounterUpdateEntitiesWithConditionsResponse--;
}

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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
  unittest.group('obj-schema-AccessCredentials', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessCredentials();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessCredentials.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccessCredentials(od);
    });
  });

  unittest.group('obj-schema-Action', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Action.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAction(od);
    });
  });

  unittest.group('obj-schema-CheckReadinessResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckReadinessResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckReadinessResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCheckReadinessResponse(od);
    });
  });

  unittest.group('obj-schema-CheckStatusResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckStatusResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckStatusResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCheckStatusResponse(od);
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

  unittest.group('obj-schema-Entity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Entity.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEntity(od);
    });
  });

  unittest.group('obj-schema-EntityType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EntityType.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEntityType(od);
    });
  });

  unittest.group('obj-schema-ExchangeAuthCodeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExchangeAuthCodeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExchangeAuthCodeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExchangeAuthCodeRequest(od);
    });
  });

  unittest.group('obj-schema-ExchangeAuthCodeResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExchangeAuthCodeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExchangeAuthCodeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExchangeAuthCodeResponse(od);
    });
  });

  unittest.group('obj-schema-ExecuteActionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteActionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteActionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecuteActionRequest(od);
    });
  });

  unittest.group('obj-schema-ExecuteActionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteActionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteActionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecuteActionResponse(od);
    });
  });

  unittest.group('obj-schema-ExecuteSqlQueryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteSqlQueryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteSqlQueryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecuteSqlQueryRequest(od);
    });
  });

  unittest.group('obj-schema-ExecuteSqlQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecuteSqlQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecuteSqlQueryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecuteSqlQueryResponse(od);
    });
  });

  unittest.group('obj-schema-Field', () {
    unittest.test('to-json--from-json', () async {
      final o = buildField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Field.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkField(od);
    });
  });

  unittest.group('obj-schema-InputParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInputParameter(od);
    });
  });

  unittest.group('obj-schema-JsonSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJsonSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.JsonSchema.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJsonSchema(od);
    });
  });

  unittest.group('obj-schema-ListActionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListActionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListActionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListActionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListEntitiesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEntitiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEntitiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEntitiesResponse(od);
    });
  });

  unittest.group('obj-schema-ListEntityTypesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEntityTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEntityTypesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEntityTypesResponse(od);
    });
  });

  unittest.group('obj-schema-Query', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Query.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQuery(od);
    });
  });

  unittest.group('obj-schema-QueryParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryParameter(od);
    });
  });

  unittest.group('obj-schema-Reference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Reference.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReference(od);
    });
  });

  unittest.group('obj-schema-RefreshAccessTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRefreshAccessTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RefreshAccessTokenRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRefreshAccessTokenRequest(od);
    });
  });

  unittest.group('obj-schema-RefreshAccessTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRefreshAccessTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RefreshAccessTokenResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRefreshAccessTokenResponse(od);
    });
  });

  unittest.group('obj-schema-ResultMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResultMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResultMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResultMetadata(od);
    });
  });

  unittest.group('obj-schema-UpdateEntitiesWithConditionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateEntitiesWithConditionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateEntitiesWithConditionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateEntitiesWithConditionsResponse(od);
    });
  });

  unittest.group('resource-ProjectsLocationsConnectionsResource', () {
    unittest.test('method--checkReadiness', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCheckReadinessResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.checkReadiness(arg_name, $fields: arg_$fields);
      checkCheckReadinessResponse(response as api.CheckReadinessResponse);
    });

    unittest.test('method--checkStatus', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCheckStatusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.checkStatus(arg_name, $fields: arg_$fields);
      checkCheckStatusResponse(response as api.CheckStatusResponse);
    });

    unittest.test('method--exchangeAuthCode', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
      final arg_request = buildExchangeAuthCodeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExchangeAuthCodeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildExchangeAuthCodeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.exchangeAuthCode(arg_request, arg_name,
          $fields: arg_$fields);
      checkExchangeAuthCodeResponse(response as api.ExchangeAuthCodeResponse);
    });

    unittest.test('method--executeSqlQuery', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
      final arg_request = buildExecuteSqlQueryRequest();
      final arg_connection = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExecuteSqlQueryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildExecuteSqlQueryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.executeSqlQuery(arg_request, arg_connection,
          $fields: arg_$fields);
      checkExecuteSqlQueryResponse(response as api.ExecuteSqlQueryResponse);
    });

    unittest.test('method--refreshAccessToken', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock).projects.locations.connections;
      final arg_request = buildRefreshAccessTokenRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RefreshAccessTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRefreshAccessTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.refreshAccessToken(arg_request, arg_name,
          $fields: arg_$fields);
      checkRefreshAccessTokenResponse(
          response as api.RefreshAccessTokenResponse);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExecuteActionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildExecuteActionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.execute(arg_request, arg_name, $fields: arg_$fields);
      checkExecuteActionResponse(response as api.ExecuteActionResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.connections.actions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAction());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAction(response as api.Action);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.connections.actions;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListActionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListActionsResponse(response as api.ListActionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsConnectionsEntityTypesResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.connections.entityTypes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEntityType(response as api.EntityType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.ConnectorsApi(mock).projects.locations.connections.entityTypes;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListEntityTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListEntityTypesResponse(response as api.ListEntityTypesResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsConnectionsEntityTypesEntitiesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .entityTypes
          .entities;
      final arg_request = buildEntity();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Entity.fromJson(json as core.Map<core.String, core.dynamic>);
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEntity());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkEntity(response as api.Entity);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .entityTypes
          .entities;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--deleteEntitiesWithConditions', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .entityTypes
          .entities;
      final arg_entityType = 'foo';
      final arg_conditions = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.deleteEntitiesWithConditions(arg_entityType,
          conditions: arg_conditions, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .entityTypes
          .entities;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEntity());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEntity(response as api.Entity);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .entityTypes
          .entities;
      final arg_parent = 'foo';
      final arg_conditions = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_sortBy = buildUnnamed24();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['sortBy']!,
          unittest.equals(arg_sortBy),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListEntitiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          conditions: arg_conditions,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          sortBy: arg_sortBy,
          $fields: arg_$fields);
      checkListEntitiesResponse(response as api.ListEntitiesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .entityTypes
          .entities;
      final arg_request = buildEntity();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Entity.fromJson(json as core.Map<core.String, core.dynamic>);
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEntity());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkEntity(response as api.Entity);
    });

    unittest.test('method--updateEntitiesWithConditions', () async {
      final mock = HttpServerMock();
      final res = api.ConnectorsApi(mock)
          .projects
          .locations
          .connections
          .entityTypes
          .entities;
      final arg_request = buildEntity();
      final arg_entityType = 'foo';
      final arg_conditions = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Entity.fromJson(json as core.Map<core.String, core.dynamic>);
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildUpdateEntitiesWithConditionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateEntitiesWithConditions(
          arg_request, arg_entityType,
          conditions: arg_conditions, $fields: arg_$fields);
      checkUpdateEntitiesWithConditionsResponse(
          response as api.UpdateEntitiesWithConditionsResponse);
    });
  });
}
