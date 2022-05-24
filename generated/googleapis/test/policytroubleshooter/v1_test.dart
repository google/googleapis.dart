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

import 'package:googleapis/policytroubleshooter/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudPolicytroubleshooterV1AccessTuple = 0;
api.GoogleCloudPolicytroubleshooterV1AccessTuple
    buildGoogleCloudPolicytroubleshooterV1AccessTuple() {
  final o = api.GoogleCloudPolicytroubleshooterV1AccessTuple();
  buildCounterGoogleCloudPolicytroubleshooterV1AccessTuple++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1AccessTuple < 3) {
    o.fullResourceName = 'foo';
    o.permission = 'foo';
    o.principal = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterV1AccessTuple--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterV1AccessTuple(
    api.GoogleCloudPolicytroubleshooterV1AccessTuple o) {
  buildCounterGoogleCloudPolicytroubleshooterV1AccessTuple++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1AccessTuple < 3) {
    unittest.expect(
      o.fullResourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.permission!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.principal!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPolicytroubleshooterV1AccessTuple--;
}

core.Map<core.String,
        api.GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership>
    buildUnnamed0() => {
          'x':
              buildGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership(),
          'y':
              buildGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership(),
        };

void checkUnnamed0(
    core.Map<core.String,
            api.GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership(
      o['x']!);
  checkGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership(
      o['y']!);
}

core.int buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanation = 0;
api.GoogleCloudPolicytroubleshooterV1BindingExplanation
    buildGoogleCloudPolicytroubleshooterV1BindingExplanation() {
  final o = api.GoogleCloudPolicytroubleshooterV1BindingExplanation();
  buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanation++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanation < 3) {
    o.access = 'foo';
    o.condition = buildGoogleTypeExpr();
    o.memberships = buildUnnamed0();
    o.relevance = 'foo';
    o.role = 'foo';
    o.rolePermission = 'foo';
    o.rolePermissionRelevance = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanation--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterV1BindingExplanation(
    api.GoogleCloudPolicytroubleshooterV1BindingExplanation o) {
  buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanation++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanation < 3) {
    unittest.expect(
      o.access!,
      unittest.equals('foo'),
    );
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed0(o.memberships!);
    unittest.expect(
      o.relevance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rolePermission!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rolePermissionRelevance!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanation--;
}

core.int
    buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership =
    0;
api.GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership
    buildGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership() {
  final o = api
      .GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership();
  buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership <
      3) {
    o.membership = 'foo';
    o.relevance = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership(
    api.GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership
        o) {
  buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership <
      3) {
    unittest.expect(
      o.membership!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relevance!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership--;
}

core.List<api.GoogleCloudPolicytroubleshooterV1BindingExplanation>
    buildUnnamed1() => [
          buildGoogleCloudPolicytroubleshooterV1BindingExplanation(),
          buildGoogleCloudPolicytroubleshooterV1BindingExplanation(),
        ];

void checkUnnamed1(
    core.List<api.GoogleCloudPolicytroubleshooterV1BindingExplanation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterV1BindingExplanation(o[0]);
  checkGoogleCloudPolicytroubleshooterV1BindingExplanation(o[1]);
}

core.int buildCounterGoogleCloudPolicytroubleshooterV1ExplainedPolicy = 0;
api.GoogleCloudPolicytroubleshooterV1ExplainedPolicy
    buildGoogleCloudPolicytroubleshooterV1ExplainedPolicy() {
  final o = api.GoogleCloudPolicytroubleshooterV1ExplainedPolicy();
  buildCounterGoogleCloudPolicytroubleshooterV1ExplainedPolicy++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1ExplainedPolicy < 3) {
    o.access = 'foo';
    o.bindingExplanations = buildUnnamed1();
    o.fullResourceName = 'foo';
    o.policy = buildGoogleIamV1Policy();
    o.relevance = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterV1ExplainedPolicy--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterV1ExplainedPolicy(
    api.GoogleCloudPolicytroubleshooterV1ExplainedPolicy o) {
  buildCounterGoogleCloudPolicytroubleshooterV1ExplainedPolicy++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1ExplainedPolicy < 3) {
    unittest.expect(
      o.access!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.bindingExplanations!);
    unittest.expect(
      o.fullResourceName!,
      unittest.equals('foo'),
    );
    checkGoogleIamV1Policy(o.policy!);
    unittest.expect(
      o.relevance!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudPolicytroubleshooterV1ExplainedPolicy--;
}

core.int
    buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest =
    0;
api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest
    buildGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest() {
  final o = api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest();
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest <
      3) {
    o.accessTuple = buildGoogleCloudPolicytroubleshooterV1AccessTuple();
  }
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest(
    api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest o) {
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest <
      3) {
    checkGoogleCloudPolicytroubleshooterV1AccessTuple(o.accessTuple!);
  }
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest--;
}

core.List<api.GoogleRpcStatus> buildUnnamed2() => [
      buildGoogleRpcStatus(),
      buildGoogleRpcStatus(),
    ];

void checkUnnamed2(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.List<api.GoogleCloudPolicytroubleshooterV1ExplainedPolicy>
    buildUnnamed3() => [
          buildGoogleCloudPolicytroubleshooterV1ExplainedPolicy(),
          buildGoogleCloudPolicytroubleshooterV1ExplainedPolicy(),
        ];

void checkUnnamed3(
    core.List<api.GoogleCloudPolicytroubleshooterV1ExplainedPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterV1ExplainedPolicy(o[0]);
  checkGoogleCloudPolicytroubleshooterV1ExplainedPolicy(o[1]);
}

core.int
    buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse =
    0;
api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse
    buildGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse() {
  final o =
      api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse();
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse <
      3) {
    o.access = 'foo';
    o.errors = buildUnnamed2();
    o.explainedPolicies = buildUnnamed3();
  }
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse(
    api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse o) {
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse <
      3) {
    unittest.expect(
      o.access!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.errors!);
    checkUnnamed3(o.explainedPolicies!);
  }
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed4() => [
      buildGoogleIamV1AuditLogConfig(),
      buildGoogleIamV1AuditLogConfig(),
    ];

void checkUnnamed4(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  final o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed4();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed4(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1AuditConfig--;
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

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
api.GoogleIamV1AuditLogConfig buildGoogleIamV1AuditLogConfig() {
  final o = api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed5();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed5(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1AuditLogConfig--;
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

core.int buildCounterGoogleIamV1Binding = 0;
api.GoogleIamV1Binding buildGoogleIamV1Binding() {
  final o = api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.condition = buildGoogleTypeExpr();
    o.members = buildUnnamed6();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed6(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed7() => [
      buildGoogleIamV1AuditConfig(),
      buildGoogleIamV1AuditConfig(),
    ];

void checkUnnamed7(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

core.List<api.GoogleIamV1Binding> buildUnnamed8() => [
      buildGoogleIamV1Binding(),
      buildGoogleIamV1Binding(),
    ];

void checkUnnamed8(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  final o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed7();
    o.bindings = buildUnnamed8();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed7(o.auditConfigs!);
    checkUnnamed8(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleIamV1Policy--;
}

core.Map<core.String, core.Object?> buildUnnamed9() => {
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

void checkUnnamed9(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed10() => [
      buildUnnamed9(),
      buildUnnamed9(),
    ];

void checkUnnamed10(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed9(o[0]);
  checkUnnamed9(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed10();
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
    checkUnnamed10(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeExpr = 0;
api.GoogleTypeExpr buildGoogleTypeExpr() {
  final o = api.GoogleTypeExpr();
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleTypeExpr--;
  return o;
}

void checkGoogleTypeExpr(api.GoogleTypeExpr o) {
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypeExpr--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudPolicytroubleshooterV1AccessTuple', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicytroubleshooterV1AccessTuple();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicytroubleshooterV1AccessTuple.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicytroubleshooterV1AccessTuple(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicytroubleshooterV1BindingExplanation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicytroubleshooterV1BindingExplanation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPolicytroubleshooterV1BindingExplanation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicytroubleshooterV1BindingExplanation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicytroubleshooterV1ExplainedPolicy',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudPolicytroubleshooterV1ExplainedPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudPolicytroubleshooterV1ExplainedPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicytroubleshooterV1ExplainedPolicy(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1AuditConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1AuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Binding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Binding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1Binding(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Policy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Policy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1Policy(od);
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

  unittest.group('obj-schema-GoogleTypeExpr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeExpr.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeExpr(od);
    });
  });

  unittest.group('resource-IamResource', () {
    unittest.test('method--troubleshoot', () async {
      final mock = HttpServerMock();
      final res = api.PolicyTroubleshooterApi(mock).iam;
      final arg_request =
          buildGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest(obj);

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
          unittest.equals('v1/iam:troubleshoot'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.troubleshoot(arg_request, $fields: arg_$fields);
      checkGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse(
          response as api
              .GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse);
    });
  });
}
