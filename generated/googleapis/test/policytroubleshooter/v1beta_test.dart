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

import 'package:googleapis/policytroubleshooter/v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudPolicytroubleshooterV1betaAccessTuple = 0;
api.GoogleCloudPolicytroubleshooterV1betaAccessTuple
buildGoogleCloudPolicytroubleshooterV1betaAccessTuple() {
  final o = api.GoogleCloudPolicytroubleshooterV1betaAccessTuple();
  buildCounterGoogleCloudPolicytroubleshooterV1betaAccessTuple++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1betaAccessTuple < 3) {
    o.fullResourceName = 'foo';
    o.permission = 'foo';
    o.principal = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterV1betaAccessTuple--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterV1betaAccessTuple(
  api.GoogleCloudPolicytroubleshooterV1betaAccessTuple o,
) {
  buildCounterGoogleCloudPolicytroubleshooterV1betaAccessTuple++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1betaAccessTuple < 3) {
    unittest.expect(o.fullResourceName!, unittest.equals('foo'));
    unittest.expect(o.permission!, unittest.equals('foo'));
    unittest.expect(o.principal!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterV1betaAccessTuple--;
}

core.Map<
  core.String,
  api.GoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership
>
buildUnnamed0() => {
  'x':
      buildGoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership(),
  'y':
      buildGoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership(),
};

void checkUnnamed0(
  core.Map<
    core.String,
    api.GoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership(
    o['x']!,
  );
  checkGoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership(
    o['y']!,
  );
}

core.int buildCounterGoogleCloudPolicytroubleshooterV1betaBindingExplanation =
    0;
api.GoogleCloudPolicytroubleshooterV1betaBindingExplanation
buildGoogleCloudPolicytroubleshooterV1betaBindingExplanation() {
  final o = api.GoogleCloudPolicytroubleshooterV1betaBindingExplanation();
  buildCounterGoogleCloudPolicytroubleshooterV1betaBindingExplanation++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1betaBindingExplanation < 3) {
    o.access = 'foo';
    o.condition = buildGoogleTypeExpr();
    o.memberships = buildUnnamed0();
    o.relevance = 'foo';
    o.role = 'foo';
    o.rolePermission = 'foo';
    o.rolePermissionRelevance = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterV1betaBindingExplanation--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterV1betaBindingExplanation(
  api.GoogleCloudPolicytroubleshooterV1betaBindingExplanation o,
) {
  buildCounterGoogleCloudPolicytroubleshooterV1betaBindingExplanation++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1betaBindingExplanation < 3) {
    unittest.expect(o.access!, unittest.equals('foo'));
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed0(o.memberships!);
    unittest.expect(o.relevance!, unittest.equals('foo'));
    unittest.expect(o.role!, unittest.equals('foo'));
    unittest.expect(o.rolePermission!, unittest.equals('foo'));
    unittest.expect(o.rolePermissionRelevance!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterV1betaBindingExplanation--;
}

core.int
buildCounterGoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership =
    0;
api.GoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership
buildGoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership() {
  final o =
      api.GoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership();
  buildCounterGoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership <
      3) {
    o.membership = 'foo';
    o.relevance = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership--;
  return o;
}

void
checkGoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership(
  api.GoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership
  o,
) {
  buildCounterGoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership <
      3) {
    unittest.expect(o.membership!, unittest.equals('foo'));
    unittest.expect(o.relevance!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership--;
}

core.List<api.GoogleCloudPolicytroubleshooterV1betaBindingExplanation>
buildUnnamed1() => [
  buildGoogleCloudPolicytroubleshooterV1betaBindingExplanation(),
  buildGoogleCloudPolicytroubleshooterV1betaBindingExplanation(),
];

void checkUnnamed1(
  core.List<api.GoogleCloudPolicytroubleshooterV1betaBindingExplanation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterV1betaBindingExplanation(o[0]);
  checkGoogleCloudPolicytroubleshooterV1betaBindingExplanation(o[1]);
}

core.int buildCounterGoogleCloudPolicytroubleshooterV1betaExplainedPolicy = 0;
api.GoogleCloudPolicytroubleshooterV1betaExplainedPolicy
buildGoogleCloudPolicytroubleshooterV1betaExplainedPolicy() {
  final o = api.GoogleCloudPolicytroubleshooterV1betaExplainedPolicy();
  buildCounterGoogleCloudPolicytroubleshooterV1betaExplainedPolicy++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1betaExplainedPolicy < 3) {
    o.access = 'foo';
    o.bindingExplanations = buildUnnamed1();
    o.fullResourceName = 'foo';
    o.policy = buildGoogleIamV1Policy();
    o.relevance = 'foo';
  }
  buildCounterGoogleCloudPolicytroubleshooterV1betaExplainedPolicy--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterV1betaExplainedPolicy(
  api.GoogleCloudPolicytroubleshooterV1betaExplainedPolicy o,
) {
  buildCounterGoogleCloudPolicytroubleshooterV1betaExplainedPolicy++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1betaExplainedPolicy < 3) {
    unittest.expect(o.access!, unittest.equals('foo'));
    checkUnnamed1(o.bindingExplanations!);
    unittest.expect(o.fullResourceName!, unittest.equals('foo'));
    checkGoogleIamV1Policy(o.policy!);
    unittest.expect(o.relevance!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterV1betaExplainedPolicy--;
}

core.int
buildCounterGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest =
    0;
api.GoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest
buildGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest() {
  final o =
      api.GoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest();
  buildCounterGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest <
      3) {
    o.accessTuple = buildGoogleCloudPolicytroubleshooterV1betaAccessTuple();
  }
  buildCounterGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest(
  api.GoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest o,
) {
  buildCounterGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest <
      3) {
    checkGoogleCloudPolicytroubleshooterV1betaAccessTuple(o.accessTuple!);
  }
  buildCounterGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest--;
}

core.List<api.GoogleCloudPolicytroubleshooterV1betaExplainedPolicy>
buildUnnamed2() => [
  buildGoogleCloudPolicytroubleshooterV1betaExplainedPolicy(),
  buildGoogleCloudPolicytroubleshooterV1betaExplainedPolicy(),
];

void checkUnnamed2(
  core.List<api.GoogleCloudPolicytroubleshooterV1betaExplainedPolicy> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterV1betaExplainedPolicy(o[0]);
  checkGoogleCloudPolicytroubleshooterV1betaExplainedPolicy(o[1]);
}

core.int
buildCounterGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse =
    0;
api.GoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse
buildGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse() {
  final o =
      api.GoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse();
  buildCounterGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse <
      3) {
    o.access = 'foo';
    o.explainedPolicies = buildUnnamed2();
  }
  buildCounterGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse(
  api.GoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse o,
) {
  buildCounterGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse <
      3) {
    unittest.expect(o.access!, unittest.equals('foo'));
    checkUnnamed2(o.explainedPolicies!);
  }
  buildCounterGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed3() => [
  buildGoogleIamV1AuditLogConfig(),
  buildGoogleIamV1AuditLogConfig(),
];

void checkUnnamed3(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  final o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed3();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed3(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditConfig--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
api.GoogleIamV1AuditLogConfig buildGoogleIamV1AuditLogConfig() {
  final o = api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed4();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed4(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1Binding = 0;
api.GoogleIamV1Binding buildGoogleIamV1Binding() {
  final o = api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.condition = buildGoogleTypeExpr();
    o.members = buildUnnamed5();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed5(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed6() => [
  buildGoogleIamV1AuditConfig(),
  buildGoogleIamV1AuditConfig(),
];

void checkUnnamed6(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

core.List<api.GoogleIamV1Binding> buildUnnamed7() => [
  buildGoogleIamV1Binding(),
  buildGoogleIamV1Binding(),
];

void checkUnnamed7(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  final o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed6();
    o.bindings = buildUnnamed7();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed6(o.auditConfigs!);
    checkUnnamed7(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterGoogleIamV1Policy--;
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
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterGoogleTypeExpr--;
}

void main() {
  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterV1betaAccessTuple',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudPolicytroubleshooterV1betaAccessTuple();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudPolicytroubleshooterV1betaAccessTuple.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicytroubleshooterV1betaAccessTuple(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterV1betaBindingExplanation',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterV1betaBindingExplanation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudPolicytroubleshooterV1betaBindingExplanation.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicytroubleshooterV1betaBindingExplanation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicytroubleshooterV1betaBindingExplanationAnnotatedMembership(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterV1betaExplainedPolicy',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudPolicytroubleshooterV1betaExplainedPolicy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudPolicytroubleshooterV1betaExplainedPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicytroubleshooterV1betaExplainedPolicy(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleIamV1AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1AuditConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditLogConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1AuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Binding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Binding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1Binding(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Policy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleIamV1Policy(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeExpr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeExpr.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeExpr(od);
    });
  });

  unittest.group('resource-IamResource', () {
    unittest.test('method--troubleshoot', () async {
      final mock = HttpServerMock();
      final res = api.PolicyTroubleshooterApi(mock).iam;
      final arg_request =
          buildGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyRequest(
            obj,
          );

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
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('v1beta/iam:troubleshoot'),
          );
          pathOffset += 23;

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
            buildGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.troubleshoot(
        arg_request,
        $fields: arg_$fields,
      );
      checkGoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse(
        response
            as api.GoogleCloudPolicytroubleshooterV1betaTroubleshootIamPolicyResponse,
      );
    });
  });
}
