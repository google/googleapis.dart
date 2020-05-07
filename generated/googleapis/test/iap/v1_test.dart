library googleapis.iap.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/iap/v1.dart' as api;

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

core.int buildCounterAccessDeniedPageSettings = 0;
buildAccessDeniedPageSettings() {
  var o = new api.AccessDeniedPageSettings();
  buildCounterAccessDeniedPageSettings++;
  if (buildCounterAccessDeniedPageSettings < 3) {
    o.accessDeniedPageUri = "foo";
  }
  buildCounterAccessDeniedPageSettings--;
  return o;
}

checkAccessDeniedPageSettings(api.AccessDeniedPageSettings o) {
  buildCounterAccessDeniedPageSettings++;
  if (buildCounterAccessDeniedPageSettings < 3) {
    unittest.expect(o.accessDeniedPageUri, unittest.equals('foo'));
  }
  buildCounterAccessDeniedPageSettings--;
}

core.int buildCounterAccessSettings = 0;
buildAccessSettings() {
  var o = new api.AccessSettings();
  buildCounterAccessSettings++;
  if (buildCounterAccessSettings < 3) {
    o.corsSettings = buildCorsSettings();
    o.gcipSettings = buildGcipSettings();
    o.oauthSettings = buildOAuthSettings();
    o.policyDelegationSettings = buildPolicyDelegationSettings();
  }
  buildCounterAccessSettings--;
  return o;
}

checkAccessSettings(api.AccessSettings o) {
  buildCounterAccessSettings++;
  if (buildCounterAccessSettings < 3) {
    checkCorsSettings(o.corsSettings);
    checkGcipSettings(o.gcipSettings);
    checkOAuthSettings(o.oauthSettings);
    checkPolicyDelegationSettings(o.policyDelegationSettings);
  }
  buildCounterAccessSettings--;
}

core.int buildCounterApplicationSettings = 0;
buildApplicationSettings() {
  var o = new api.ApplicationSettings();
  buildCounterApplicationSettings++;
  if (buildCounterApplicationSettings < 3) {
    o.accessDeniedPageSettings = buildAccessDeniedPageSettings();
    o.csmSettings = buildCsmSettings();
  }
  buildCounterApplicationSettings--;
  return o;
}

checkApplicationSettings(api.ApplicationSettings o) {
  buildCounterApplicationSettings++;
  if (buildCounterApplicationSettings < 3) {
    checkAccessDeniedPageSettings(o.accessDeniedPageSettings);
    checkCsmSettings(o.csmSettings);
  }
  buildCounterApplicationSettings--;
}

buildUnnamed4349() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4349(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed4349();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed4349(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterBrand = 0;
buildBrand() {
  var o = new api.Brand();
  buildCounterBrand++;
  if (buildCounterBrand < 3) {
    o.applicationTitle = "foo";
    o.name = "foo";
    o.orgInternalOnly = true;
    o.supportEmail = "foo";
  }
  buildCounterBrand--;
  return o;
}

checkBrand(api.Brand o) {
  buildCounterBrand++;
  if (buildCounterBrand < 3) {
    unittest.expect(o.applicationTitle, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.orgInternalOnly, unittest.isTrue);
    unittest.expect(o.supportEmail, unittest.equals('foo'));
  }
  buildCounterBrand--;
}

core.int buildCounterCorsSettings = 0;
buildCorsSettings() {
  var o = new api.CorsSettings();
  buildCounterCorsSettings++;
  if (buildCounterCorsSettings < 3) {
    o.allowHttpOptions = true;
  }
  buildCounterCorsSettings--;
  return o;
}

checkCorsSettings(api.CorsSettings o) {
  buildCounterCorsSettings++;
  if (buildCounterCorsSettings < 3) {
    unittest.expect(o.allowHttpOptions, unittest.isTrue);
  }
  buildCounterCorsSettings--;
}

core.int buildCounterCsmSettings = 0;
buildCsmSettings() {
  var o = new api.CsmSettings();
  buildCounterCsmSettings++;
  if (buildCounterCsmSettings < 3) {
    o.rctokenAud = "foo";
  }
  buildCounterCsmSettings--;
  return o;
}

checkCsmSettings(api.CsmSettings o) {
  buildCounterCsmSettings++;
  if (buildCounterCsmSettings < 3) {
    unittest.expect(o.rctokenAud, unittest.equals('foo'));
  }
  buildCounterCsmSettings--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterExpr = 0;
buildExpr() {
  var o = new api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterExpr--;
  return o;
}

checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

buildUnnamed4350() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4350(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGcipSettings = 0;
buildGcipSettings() {
  var o = new api.GcipSettings();
  buildCounterGcipSettings++;
  if (buildCounterGcipSettings < 3) {
    o.loginPageUri = "foo";
    o.tenantIds = buildUnnamed4350();
  }
  buildCounterGcipSettings--;
  return o;
}

checkGcipSettings(api.GcipSettings o) {
  buildCounterGcipSettings++;
  if (buildCounterGcipSettings < 3) {
    unittest.expect(o.loginPageUri, unittest.equals('foo'));
    checkUnnamed4350(o.tenantIds);
  }
  buildCounterGcipSettings--;
}

core.int buildCounterGetIamPolicyRequest = 0;
buildGetIamPolicyRequest() {
  var o = new api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    o.options = buildGetPolicyOptions();
  }
  buildCounterGetIamPolicyRequest--;
  return o;
}

checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    checkGetPolicyOptions(o.options);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
buildGetPolicyOptions() {
  var o = new api.GetPolicyOptions();
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    o.requestedPolicyVersion = 42;
  }
  buildCounterGetPolicyOptions--;
  return o;
}

checkGetPolicyOptions(api.GetPolicyOptions o) {
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    unittest.expect(o.requestedPolicyVersion, unittest.equals(42));
  }
  buildCounterGetPolicyOptions--;
}

core.int buildCounterIapSettings = 0;
buildIapSettings() {
  var o = new api.IapSettings();
  buildCounterIapSettings++;
  if (buildCounterIapSettings < 3) {
    o.accessSettings = buildAccessSettings();
    o.applicationSettings = buildApplicationSettings();
    o.name = "foo";
  }
  buildCounterIapSettings--;
  return o;
}

checkIapSettings(api.IapSettings o) {
  buildCounterIapSettings++;
  if (buildCounterIapSettings < 3) {
    checkAccessSettings(o.accessSettings);
    checkApplicationSettings(o.applicationSettings);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterIapSettings--;
}

core.int buildCounterIdentityAwareProxyClient = 0;
buildIdentityAwareProxyClient() {
  var o = new api.IdentityAwareProxyClient();
  buildCounterIdentityAwareProxyClient++;
  if (buildCounterIdentityAwareProxyClient < 3) {
    o.displayName = "foo";
    o.name = "foo";
    o.secret = "foo";
  }
  buildCounterIdentityAwareProxyClient--;
  return o;
}

checkIdentityAwareProxyClient(api.IdentityAwareProxyClient o) {
  buildCounterIdentityAwareProxyClient++;
  if (buildCounterIdentityAwareProxyClient < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.secret, unittest.equals('foo'));
  }
  buildCounterIdentityAwareProxyClient--;
}

buildUnnamed4351() {
  var o = new core.List<api.Brand>();
  o.add(buildBrand());
  o.add(buildBrand());
  return o;
}

checkUnnamed4351(core.List<api.Brand> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBrand(o[0]);
  checkBrand(o[1]);
}

core.int buildCounterListBrandsResponse = 0;
buildListBrandsResponse() {
  var o = new api.ListBrandsResponse();
  buildCounterListBrandsResponse++;
  if (buildCounterListBrandsResponse < 3) {
    o.brands = buildUnnamed4351();
  }
  buildCounterListBrandsResponse--;
  return o;
}

checkListBrandsResponse(api.ListBrandsResponse o) {
  buildCounterListBrandsResponse++;
  if (buildCounterListBrandsResponse < 3) {
    checkUnnamed4351(o.brands);
  }
  buildCounterListBrandsResponse--;
}

buildUnnamed4352() {
  var o = new core.List<api.IdentityAwareProxyClient>();
  o.add(buildIdentityAwareProxyClient());
  o.add(buildIdentityAwareProxyClient());
  return o;
}

checkUnnamed4352(core.List<api.IdentityAwareProxyClient> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIdentityAwareProxyClient(o[0]);
  checkIdentityAwareProxyClient(o[1]);
}

core.int buildCounterListIdentityAwareProxyClientsResponse = 0;
buildListIdentityAwareProxyClientsResponse() {
  var o = new api.ListIdentityAwareProxyClientsResponse();
  buildCounterListIdentityAwareProxyClientsResponse++;
  if (buildCounterListIdentityAwareProxyClientsResponse < 3) {
    o.identityAwareProxyClients = buildUnnamed4352();
    o.nextPageToken = "foo";
  }
  buildCounterListIdentityAwareProxyClientsResponse--;
  return o;
}

checkListIdentityAwareProxyClientsResponse(
    api.ListIdentityAwareProxyClientsResponse o) {
  buildCounterListIdentityAwareProxyClientsResponse++;
  if (buildCounterListIdentityAwareProxyClientsResponse < 3) {
    checkUnnamed4352(o.identityAwareProxyClients);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListIdentityAwareProxyClientsResponse--;
}

core.int buildCounterOAuthSettings = 0;
buildOAuthSettings() {
  var o = new api.OAuthSettings();
  buildCounterOAuthSettings++;
  if (buildCounterOAuthSettings < 3) {
    o.clientId = "foo";
    o.loginHint = "foo";
  }
  buildCounterOAuthSettings--;
  return o;
}

checkOAuthSettings(api.OAuthSettings o) {
  buildCounterOAuthSettings++;
  if (buildCounterOAuthSettings < 3) {
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.loginHint, unittest.equals('foo'));
  }
  buildCounterOAuthSettings--;
}

buildUnnamed4353() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed4353(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed4353();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed4353(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.int buildCounterPolicyDelegationSettings = 0;
buildPolicyDelegationSettings() {
  var o = new api.PolicyDelegationSettings();
  buildCounterPolicyDelegationSettings++;
  if (buildCounterPolicyDelegationSettings < 3) {
    o.iamPermission = "foo";
    o.iamServiceName = "foo";
    o.policyName = buildPolicyName();
    o.resource = buildResource();
  }
  buildCounterPolicyDelegationSettings--;
  return o;
}

checkPolicyDelegationSettings(api.PolicyDelegationSettings o) {
  buildCounterPolicyDelegationSettings++;
  if (buildCounterPolicyDelegationSettings < 3) {
    unittest.expect(o.iamPermission, unittest.equals('foo'));
    unittest.expect(o.iamServiceName, unittest.equals('foo'));
    checkPolicyName(o.policyName);
    checkResource(o.resource);
  }
  buildCounterPolicyDelegationSettings--;
}

core.int buildCounterPolicyName = 0;
buildPolicyName() {
  var o = new api.PolicyName();
  buildCounterPolicyName++;
  if (buildCounterPolicyName < 3) {
    o.id = "foo";
    o.region = "foo";
    o.type = "foo";
  }
  buildCounterPolicyName--;
  return o;
}

checkPolicyName(api.PolicyName o) {
  buildCounterPolicyName++;
  if (buildCounterPolicyName < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterPolicyName--;
}

core.int buildCounterResetIdentityAwareProxyClientSecretRequest = 0;
buildResetIdentityAwareProxyClientSecretRequest() {
  var o = new api.ResetIdentityAwareProxyClientSecretRequest();
  buildCounterResetIdentityAwareProxyClientSecretRequest++;
  if (buildCounterResetIdentityAwareProxyClientSecretRequest < 3) {}
  buildCounterResetIdentityAwareProxyClientSecretRequest--;
  return o;
}

checkResetIdentityAwareProxyClientSecretRequest(
    api.ResetIdentityAwareProxyClientSecretRequest o) {
  buildCounterResetIdentityAwareProxyClientSecretRequest++;
  if (buildCounterResetIdentityAwareProxyClientSecretRequest < 3) {}
  buildCounterResetIdentityAwareProxyClientSecretRequest--;
}

buildUnnamed4354() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed4354(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterResource = 0;
buildResource() {
  var o = new api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.labels = buildUnnamed4354();
    o.name = "foo";
    o.service = "foo";
    o.type = "foo";
  }
  buildCounterResource--;
  return o;
}

checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    checkUnnamed4354(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.service, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterResource--;
}

core.int buildCounterSetIamPolicyRequest = 0;
buildSetIamPolicyRequest() {
  var o = new api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
  }
  buildCounterSetIamPolicyRequest--;
}

buildUnnamed4355() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4355(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed4355();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed4355(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed4356() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed4356(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed4356();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed4356(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

main() {
  unittest.group("obj-schema-AccessDeniedPageSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccessDeniedPageSettings();
      var od = new api.AccessDeniedPageSettings.fromJson(o.toJson());
      checkAccessDeniedPageSettings(od);
    });
  });

  unittest.group("obj-schema-AccessSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccessSettings();
      var od = new api.AccessSettings.fromJson(o.toJson());
      checkAccessSettings(od);
    });
  });

  unittest.group("obj-schema-ApplicationSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplicationSettings();
      var od = new api.ApplicationSettings.fromJson(o.toJson());
      checkApplicationSettings(od);
    });
  });

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-Brand", () {
    unittest.test("to-json--from-json", () {
      var o = buildBrand();
      var od = new api.Brand.fromJson(o.toJson());
      checkBrand(od);
    });
  });

  unittest.group("obj-schema-CorsSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildCorsSettings();
      var od = new api.CorsSettings.fromJson(o.toJson());
      checkCorsSettings(od);
    });
  });

  unittest.group("obj-schema-CsmSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildCsmSettings();
      var od = new api.CsmSettings.fromJson(o.toJson());
      checkCsmSettings(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-GcipSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildGcipSettings();
      var od = new api.GcipSettings.fromJson(o.toJson());
      checkGcipSettings(od);
    });
  });

  unittest.group("obj-schema-GetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetIamPolicyRequest();
      var od = new api.GetIamPolicyRequest.fromJson(o.toJson());
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-GetPolicyOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetPolicyOptions();
      var od = new api.GetPolicyOptions.fromJson(o.toJson());
      checkGetPolicyOptions(od);
    });
  });

  unittest.group("obj-schema-IapSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildIapSettings();
      var od = new api.IapSettings.fromJson(o.toJson());
      checkIapSettings(od);
    });
  });

  unittest.group("obj-schema-IdentityAwareProxyClient", () {
    unittest.test("to-json--from-json", () {
      var o = buildIdentityAwareProxyClient();
      var od = new api.IdentityAwareProxyClient.fromJson(o.toJson());
      checkIdentityAwareProxyClient(od);
    });
  });

  unittest.group("obj-schema-ListBrandsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListBrandsResponse();
      var od = new api.ListBrandsResponse.fromJson(o.toJson());
      checkListBrandsResponse(od);
    });
  });

  unittest.group("obj-schema-ListIdentityAwareProxyClientsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListIdentityAwareProxyClientsResponse();
      var od =
          new api.ListIdentityAwareProxyClientsResponse.fromJson(o.toJson());
      checkListIdentityAwareProxyClientsResponse(od);
    });
  });

  unittest.group("obj-schema-OAuthSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildOAuthSettings();
      var od = new api.OAuthSettings.fromJson(o.toJson());
      checkOAuthSettings(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-PolicyDelegationSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicyDelegationSettings();
      var od = new api.PolicyDelegationSettings.fromJson(o.toJson());
      checkPolicyDelegationSettings(od);
    });
  });

  unittest.group("obj-schema-PolicyName", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicyName();
      var od = new api.PolicyName.fromJson(o.toJson());
      checkPolicyName(od);
    });
  });

  unittest.group("obj-schema-ResetIdentityAwareProxyClientSecretRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildResetIdentityAwareProxyClientSecretRequest();
      var od = new api.ResetIdentityAwareProxyClientSecretRequest.fromJson(
          o.toJson());
      checkResetIdentityAwareProxyClientSecretRequest(od);
    });
  });

  unittest.group("obj-schema-Resource", () {
    unittest.test("to-json--from-json", () {
      var o = buildResource();
      var od = new api.Resource.fromJson(o.toJson());
      checkResource(od);
    });
  });

  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsRequest();
      var od = new api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsResponse();
      var od = new api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group("resource-ProjectsBrandsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsBrandsResourceApi res = new api.IapApi(mock).projects.brands;
      var arg_request = buildBrand();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Brand.fromJson(json);
        checkBrand(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildBrand());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBrand(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsBrandsResourceApi res = new api.IapApi(mock).projects.brands;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildBrand());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBrand(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsBrandsResourceApi res = new api.IapApi(mock).projects.brands;
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildListBrandsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListBrandsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsBrandsIdentityAwareProxyClientsResourceApi",
      () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsBrandsIdentityAwareProxyClientsResourceApi res =
          new api.IapApi(mock).projects.brands.identityAwareProxyClients;
      var arg_request = buildIdentityAwareProxyClient();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.IdentityAwareProxyClient.fromJson(json);
        checkIdentityAwareProxyClient(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildIdentityAwareProxyClient());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIdentityAwareProxyClient(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsBrandsIdentityAwareProxyClientsResourceApi res =
          new api.IapApi(mock).projects.brands.identityAwareProxyClients;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsBrandsIdentityAwareProxyClientsResourceApi res =
          new api.IapApi(mock).projects.brands.identityAwareProxyClients;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildIdentityAwareProxyClient());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIdentityAwareProxyClient(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsBrandsIdentityAwareProxyClientsResourceApi res =
          new api.IapApi(mock).projects.brands.identityAwareProxyClients;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildListIdentityAwareProxyClientsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListIdentityAwareProxyClientsResponse(response);
      })));
    });

    unittest.test("method--resetSecret", () {
      var mock = new HttpServerMock();
      api.ProjectsBrandsIdentityAwareProxyClientsResourceApi res =
          new api.IapApi(mock).projects.brands.identityAwareProxyClients;
      var arg_request = buildResetIdentityAwareProxyClientSecretRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.ResetIdentityAwareProxyClientSecretRequest.fromJson(json);
        checkResetIdentityAwareProxyClientSecretRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildIdentityAwareProxyClient());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resetSecret(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIdentityAwareProxyClient(response);
      })));
    });
  });

  unittest.group("resource-V1ResourceApi", () {
    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.V1ResourceApi res = new api.IapApi(mock).v1;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--getIapSettings", () {
      var mock = new HttpServerMock();
      api.V1ResourceApi res = new api.IapApi(mock).v1;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildIapSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIapSettings(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIapSettings(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.V1ResourceApi res = new api.IapApi(mock).v1;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.V1ResourceApi res = new api.IapApi(mock).v1;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });

    unittest.test("method--updateIapSettings", () {
      var mock = new HttpServerMock();
      api.V1ResourceApi res = new api.IapApi(mock).v1;
      var arg_request = buildIapSettings();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.IapSettings.fromJson(json);
        checkIapSettings(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildIapSettings());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateIapSettings(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIapSettings(response);
      })));
    });
  });
}
