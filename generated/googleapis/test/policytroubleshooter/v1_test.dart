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

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterGoogleCloudPolicytroubleshooterV1AccessTuple = 0;
buildGoogleCloudPolicytroubleshooterV1AccessTuple() {
  var o = new api.GoogleCloudPolicytroubleshooterV1AccessTuple();
  buildCounterGoogleCloudPolicytroubleshooterV1AccessTuple++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1AccessTuple < 3) {
    o.fullResourceName = "foo";
    o.permission = "foo";
    o.principal = "foo";
  }
  buildCounterGoogleCloudPolicytroubleshooterV1AccessTuple--;
  return o;
}

checkGoogleCloudPolicytroubleshooterV1AccessTuple(
    api.GoogleCloudPolicytroubleshooterV1AccessTuple o) {
  buildCounterGoogleCloudPolicytroubleshooterV1AccessTuple++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1AccessTuple < 3) {
    unittest.expect(o.fullResourceName, unittest.equals('foo'));
    unittest.expect(o.permission, unittest.equals('foo'));
    unittest.expect(o.principal, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterV1AccessTuple--;
}

buildUnnamed5021() {
  var o = new core.Map<core.String,
      api.GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership>();
  o["x"] =
      buildGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership();
  o["y"] =
      buildGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership();
  return o;
}

checkUnnamed5021(
    core.Map<core.String,
            api.GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership(
      o["x"]);
  checkGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership(
      o["y"]);
}

core.int buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanation = 0;
buildGoogleCloudPolicytroubleshooterV1BindingExplanation() {
  var o = new api.GoogleCloudPolicytroubleshooterV1BindingExplanation();
  buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanation++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanation < 3) {
    o.access = "foo";
    o.condition = buildGoogleTypeExpr();
    o.memberships = buildUnnamed5021();
    o.relevance = "foo";
    o.role = "foo";
    o.rolePermission = "foo";
    o.rolePermissionRelevance = "foo";
  }
  buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanation--;
  return o;
}

checkGoogleCloudPolicytroubleshooterV1BindingExplanation(
    api.GoogleCloudPolicytroubleshooterV1BindingExplanation o) {
  buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanation++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanation < 3) {
    unittest.expect(o.access, unittest.equals('foo'));
    checkGoogleTypeExpr(o.condition);
    checkUnnamed5021(o.memberships);
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
buildGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership() {
  var o = new api
      .GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership();
  buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership <
      3) {
    o.membership = "foo";
    o.relevance = "foo";
  }
  buildCounterGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership--;
  return o;
}

checkGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership(
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

buildUnnamed5022() {
  var o =
      new core.List<api.GoogleCloudPolicytroubleshooterV1BindingExplanation>();
  o.add(buildGoogleCloudPolicytroubleshooterV1BindingExplanation());
  o.add(buildGoogleCloudPolicytroubleshooterV1BindingExplanation());
  return o;
}

checkUnnamed5022(
    core.List<api.GoogleCloudPolicytroubleshooterV1BindingExplanation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterV1BindingExplanation(o[0]);
  checkGoogleCloudPolicytroubleshooterV1BindingExplanation(o[1]);
}

core.int buildCounterGoogleCloudPolicytroubleshooterV1ExplainedPolicy = 0;
buildGoogleCloudPolicytroubleshooterV1ExplainedPolicy() {
  var o = new api.GoogleCloudPolicytroubleshooterV1ExplainedPolicy();
  buildCounterGoogleCloudPolicytroubleshooterV1ExplainedPolicy++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1ExplainedPolicy < 3) {
    o.access = "foo";
    o.bindingExplanations = buildUnnamed5022();
    o.fullResourceName = "foo";
    o.policy = buildGoogleIamV1Policy();
    o.relevance = "foo";
  }
  buildCounterGoogleCloudPolicytroubleshooterV1ExplainedPolicy--;
  return o;
}

checkGoogleCloudPolicytroubleshooterV1ExplainedPolicy(
    api.GoogleCloudPolicytroubleshooterV1ExplainedPolicy o) {
  buildCounterGoogleCloudPolicytroubleshooterV1ExplainedPolicy++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1ExplainedPolicy < 3) {
    unittest.expect(o.access, unittest.equals('foo'));
    checkUnnamed5022(o.bindingExplanations);
    unittest.expect(o.fullResourceName, unittest.equals('foo'));
    checkGoogleIamV1Policy(o.policy);
    unittest.expect(o.relevance, unittest.equals('foo'));
  }
  buildCounterGoogleCloudPolicytroubleshooterV1ExplainedPolicy--;
}

core.int
    buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest =
    0;
buildGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest() {
  var o =
      new api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest();
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest <
      3) {
    o.accessTuple = buildGoogleCloudPolicytroubleshooterV1AccessTuple();
  }
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest--;
  return o;
}

checkGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest(
    api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest o) {
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest <
      3) {
    checkGoogleCloudPolicytroubleshooterV1AccessTuple(o.accessTuple);
  }
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest--;
}

buildUnnamed5023() {
  var o = new core.List<api.GoogleCloudPolicytroubleshooterV1ExplainedPolicy>();
  o.add(buildGoogleCloudPolicytroubleshooterV1ExplainedPolicy());
  o.add(buildGoogleCloudPolicytroubleshooterV1ExplainedPolicy());
  return o;
}

checkUnnamed5023(
    core.List<api.GoogleCloudPolicytroubleshooterV1ExplainedPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudPolicytroubleshooterV1ExplainedPolicy(o[0]);
  checkGoogleCloudPolicytroubleshooterV1ExplainedPolicy(o[1]);
}

core.int
    buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse =
    0;
buildGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse() {
  var o =
      new api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse();
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse <
      3) {
    o.access = "foo";
    o.explainedPolicies = buildUnnamed5023();
  }
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse--;
  return o;
}

checkGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse(
    api.GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse o) {
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse++;
  if (buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse <
      3) {
    unittest.expect(o.access, unittest.equals('foo'));
    checkUnnamed5023(o.explainedPolicies);
  }
  buildCounterGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse--;
}

buildUnnamed5024() {
  var o = new core.List<api.GoogleIamV1AuditLogConfig>();
  o.add(buildGoogleIamV1AuditLogConfig());
  o.add(buildGoogleIamV1AuditLogConfig());
  return o;
}

checkUnnamed5024(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
buildGoogleIamV1AuditConfig() {
  var o = new api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed5024();
    o.service = "foo";
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed5024(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditConfig--;
}

buildUnnamed5025() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5025(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
buildGoogleIamV1AuditLogConfig() {
  var o = new api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed5025();
    o.logType = "foo";
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed5025(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

buildUnnamed5026() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5026(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1Binding = 0;
buildGoogleIamV1Binding() {
  var o = new api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.condition = buildGoogleTypeExpr();
    o.members = buildUnnamed5026();
    o.role = "foo";
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition);
    checkUnnamed5026(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1Binding--;
}

buildUnnamed5027() {
  var o = new core.List<api.GoogleIamV1AuditConfig>();
  o.add(buildGoogleIamV1AuditConfig());
  o.add(buildGoogleIamV1AuditConfig());
  return o;
}

checkUnnamed5027(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

buildUnnamed5028() {
  var o = new core.List<api.GoogleIamV1Binding>();
  o.add(buildGoogleIamV1Binding());
  o.add(buildGoogleIamV1Binding());
  return o;
}

checkUnnamed5028(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
buildGoogleIamV1Policy() {
  var o = new api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed5027();
    o.bindings = buildUnnamed5028();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed5027(o.auditConfigs);
    checkUnnamed5028(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterGoogleIamV1Policy--;
}

core.int buildCounterGoogleTypeExpr = 0;
buildGoogleTypeExpr() {
  var o = new api.GoogleTypeExpr();
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterGoogleTypeExpr--;
  return o;
}

checkGoogleTypeExpr(api.GoogleTypeExpr o) {
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleTypeExpr--;
}

main() {
  unittest.group("obj-schema-GoogleCloudPolicytroubleshooterV1AccessTuple", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudPolicytroubleshooterV1AccessTuple();
      var od = new api.GoogleCloudPolicytroubleshooterV1AccessTuple.fromJson(
          o.toJson());
      checkGoogleCloudPolicytroubleshooterV1AccessTuple(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudPolicytroubleshooterV1BindingExplanation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudPolicytroubleshooterV1BindingExplanation();
      var od =
          new api.GoogleCloudPolicytroubleshooterV1BindingExplanation.fromJson(
              o.toJson());
      checkGoogleCloudPolicytroubleshooterV1BindingExplanation(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership();
      var od = new api
              .GoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership.fromJson(
          o.toJson());
      checkGoogleCloudPolicytroubleshooterV1BindingExplanationAnnotatedMembership(
          od);
    });
  });

  unittest.group("obj-schema-GoogleCloudPolicytroubleshooterV1ExplainedPolicy",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudPolicytroubleshooterV1ExplainedPolicy();
      var od =
          new api.GoogleCloudPolicytroubleshooterV1ExplainedPolicy.fromJson(
              o.toJson());
      checkGoogleCloudPolicytroubleshooterV1ExplainedPolicy(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest();
      var od = new api
              .GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest.fromJson(
          o.toJson());
      checkGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse();
      var od = new api
              .GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse.fromJson(
          o.toJson());
      checkGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1AuditConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1AuditConfig();
      var od = new api.GoogleIamV1AuditConfig.fromJson(o.toJson());
      checkGoogleIamV1AuditConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1AuditLogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1AuditLogConfig();
      var od = new api.GoogleIamV1AuditLogConfig.fromJson(o.toJson());
      checkGoogleIamV1AuditLogConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1Binding();
      var od = new api.GoogleIamV1Binding.fromJson(o.toJson());
      checkGoogleIamV1Binding(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1Policy();
      var od = new api.GoogleIamV1Policy.fromJson(o.toJson());
      checkGoogleIamV1Policy(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeExpr", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeExpr();
      var od = new api.GoogleTypeExpr.fromJson(o.toJson());
      checkGoogleTypeExpr(od);
    });
  });

  unittest.group("resource-IamResourceApi", () {
    unittest.test("method--troubleshoot", () {
      var mock = new HttpServerMock();
      api.IamResourceApi res = new api.PolicytroubleshooterApi(mock).iam;
      var arg_request =
          buildGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api
                .GoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest.fromJson(
            json);
        checkGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("v1/iam:troubleshoot"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(
            buildGoogleCloudPolicytroubleshooterV1TroubleshootIamPolicyResponse());
        return new async.Future.value(stringResponse(200, h, resp));
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
