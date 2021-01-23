// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

library googleapis.policytroubleshooter.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/policytroubleshooter/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterGoogleCloudPolicytroubleshooterV1AccessTuple = 0;
api.GoogleCloudPolicytroubleshooterV1AccessTuple
    buildGoogleCloudPolicytroubleshooterV1AccessTuple() {
  var o = api.GoogleCloudPolicytroubleshooterV1AccessTuple();
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
    unittest.expect(o.fullResourceName, unittest.equals('foo'));
    unittest.expect(o.permission, unittest.equals('foo'));
    unittest.expect(o.principal, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterV1AccessTuple--;
}

core.Map<core.String,
        api.GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership>
    buildUnnamed571() {
  var o = <core.String,
      api.GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership>{};
  o['x'] =
      buildGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership();
  o['y'] =
      buildGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership();
  return o;
}

void checkUnnamed571(
    core.Map<core.String,
            api.GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership(
      o['x']);
  checkGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership(
      o['y']);
}

core.int buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanation = 0;
api.GoogleCloudPolicytroubleshooterV1BindingExplanation
    buildGoogleCloudPolicytroubleshooterV1BindingExplanation() {
  var o = api.GoogleCloudPolicytroubleshooterV1BindingExplanation();
  buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanation++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanation < 3) {
    o.access = 'foo';
    o.condition = buildGoogleTypeExpr();
    o.memberships = buildUnnamed571();
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
    unittest.expect(o.access, unittest.equals('foo'));
    checkGoogleTypeExpr(o.condition);
    checkUnnamed571(o.memberships);
    unittest.expect(o.relevance, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
    unittest.expect(o.rolePermission, unittest.equals('foo'));
    unittest.expect(o.rolePermissionRelevance, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanation--;
}

core.int
    buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership =
    0;
api.GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership
    buildGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership() {
  var o = api
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
    unittest.expect(o.membership, unittest.equals('foo'));
    unittest.expect(o.relevance, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership--;
}

core.List<api.GoogleCloudPolicytroubleshooterV1BindingExplanation>
    buildUnnamed572() {
  var o = <api.GoogleCloudPolicytroubleshooterV1BindingExplanation>[];
  o.add(buildGoogleCloudPolicytroubleshooterV1BindingExplanation());
  o.add(buildGoogleCloudPolicytroubleshooterV1BindingExplanation());
  return o;
}

void checkUnnamed572(
    core.List<api.GoogleCloudPolicytroubleshooterV1BindingExplanation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterV1BindingExplanation(o[0]);
  checkGoogleCloudPolicytroubleshooterV1BindingExplanation(o[1]);
}

core.int buildCounterGoogleCloudPolicytroubleshooterV1ExplainedPolicy = 0;
api.GoogleCloudPolicytroubleshooterV1ExplainedPolicy
    buildGoogleCloudPolicytroubleshooterV1ExplainedPolicy() {
  var o = api.GoogleCloudPolicytroubleshooterV1ExplainedPolicy();
  buildCounterGoogleCloudPolicytroubleshooterV1ExplainedPolicy++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1ExplainedPolicy < 3) {
    o.access = 'foo';
    o.bindingExplanations = buildUnnamed572();
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
    unittest.expect(o.access, unittest.equals('foo'));
    checkUnnamed572(o.bindingExplanations);
    unittest.expect(o.fullResourceName, unittest.equals('foo'));
    checkGoogleIamV1Policy(o.policy);
    unittest.expect(o.relevance, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterV1ExplainedPolicy--;
}

core.int
    buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest =
    0;
api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest
    buildGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest() {
  var o = api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest();
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
    checkGoogleCloudPolicytroubleshooterV1AccessTuple(o.accessTuple);
  }
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest--;
}

core.List<api.GoogleCloudPolicytroubleshooterV1ExplainedPolicy>
    buildUnnamed573() {
  var o = <api.GoogleCloudPolicytroubleshooterV1ExplainedPolicy>[];
  o.add(buildGoogleCloudPolicytroubleshooterV1ExplainedPolicy());
  o.add(buildGoogleCloudPolicytroubleshooterV1ExplainedPolicy());
  return o;
}

void checkUnnamed573(
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
  var o = api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse();
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse <
      3) {
    o.access = 'foo';
    o.explainedPolicies = buildUnnamed573();
  }
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse--;
  return o;
}

void checkGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse(
    api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse o) {
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse <
      3) {
    unittest.expect(o.access, unittest.equals('foo'));
    checkUnnamed573(o.explainedPolicies);
  }
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed574() {
  var o = <api.GoogleIamV1AuditLogConfig>[];
  o.add(buildGoogleIamV1AuditLogConfig());
  o.add(buildGoogleIamV1AuditLogConfig());
  return o;
}

void checkUnnamed574(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  var o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed574();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed574(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditConfig--;
}

core.List<core.String> buildUnnamed575() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed575(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
api.GoogleIamV1AuditLogConfig buildGoogleIamV1AuditLogConfig() {
  var o = api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed575();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed575(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed576() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed576(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1Binding = 0;
api.GoogleIamV1Binding buildGoogleIamV1Binding() {
  var o = api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.condition = buildGoogleTypeExpr();
    o.members = buildUnnamed576();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition);
    checkUnnamed576(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed577() {
  var o = <api.GoogleIamV1AuditConfig>[];
  o.add(buildGoogleIamV1AuditConfig());
  o.add(buildGoogleIamV1AuditConfig());
  return o;
}

void checkUnnamed577(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

core.List<api.GoogleIamV1Binding> buildUnnamed578() {
  var o = <api.GoogleIamV1Binding>[];
  o.add(buildGoogleIamV1Binding());
  o.add(buildGoogleIamV1Binding());
  return o;
}

void checkUnnamed578(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  var o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed577();
    o.bindings = buildUnnamed578();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed577(o.auditConfigs);
    checkUnnamed578(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterGoogleIamV1Policy--;
}

core.int buildCounterGoogleTypeExpr = 0;
api.GoogleTypeExpr buildGoogleTypeExpr() {
  var o = api.GoogleTypeExpr();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleTypeExpr--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudPolicytroubleshooterV1AccessTuple', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudPolicytroubleshooterV1AccessTuple();
      var od =
          api.GoogleCloudPolicytroubleshooterV1AccessTuple.fromJson(o.toJson());
      checkGoogleCloudPolicytroubleshooterV1AccessTuple(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicytroubleshooterV1BindingExplanation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudPolicytroubleshooterV1BindingExplanation();
      var od = api.GoogleCloudPolicytroubleshooterV1BindingExplanation.fromJson(
          o.toJson());
      checkGoogleCloudPolicytroubleshooterV1BindingExplanation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership();
      var od =
          api.GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership
              .fromJson(o.toJson());
      checkGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudPolicytroubleshooterV1ExplainedPolicy',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudPolicytroubleshooterV1ExplainedPolicy();
      var od = api.GoogleCloudPolicytroubleshooterV1ExplainedPolicy.fromJson(
          o.toJson());
      checkGoogleCloudPolicytroubleshooterV1ExplainedPolicy(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest();
      var od = api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest
          .fromJson(o.toJson());
      checkGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse();
      var od =
          api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse
              .fromJson(o.toJson());
      checkGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIamV1AuditConfig();
      var od = api.GoogleIamV1AuditConfig.fromJson(o.toJson());
      checkGoogleIamV1AuditConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditLogConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIamV1AuditLogConfig();
      var od = api.GoogleIamV1AuditLogConfig.fromJson(o.toJson());
      checkGoogleIamV1AuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Binding', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIamV1Binding();
      var od = api.GoogleIamV1Binding.fromJson(o.toJson());
      checkGoogleIamV1Binding(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Policy', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleIamV1Policy();
      var od = api.GoogleIamV1Policy.fromJson(o.toJson());
      checkGoogleIamV1Policy(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeExpr', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleTypeExpr();
      var od = api.GoogleTypeExpr.fromJson(o.toJson());
      checkGoogleTypeExpr(od);
    });
  });

  unittest.group('resource-IamResourceApi', () {
    unittest.test('method--troubleshoot', () {
      var mock = HttpServerMock();
      api.IamResourceApi res = api.PolicytroubleshooterApi(mock).iam;
      var arg_request =
          buildGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest
                .fromJson(json);
        checkGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("v1/iam:troubleshoot"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .troubleshoot(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse(
            response);
      })));
    });
  });
}
