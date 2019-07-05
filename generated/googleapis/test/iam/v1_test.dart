library googleapis.iam.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/iam/v1.dart' as api;

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

core.int buildCounterAdminAuditData = 0;
buildAdminAuditData() {
  var o = new api.AdminAuditData();
  buildCounterAdminAuditData++;
  if (buildCounterAdminAuditData < 3) {
    o.permissionDelta = buildPermissionDelta();
  }
  buildCounterAdminAuditData--;
  return o;
}

checkAdminAuditData(api.AdminAuditData o) {
  buildCounterAdminAuditData++;
  if (buildCounterAdminAuditData < 3) {
    checkPermissionDelta(o.permissionDelta);
  }
  buildCounterAdminAuditData--;
}

buildUnnamed1036() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed1036(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed1036();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed1036(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.int buildCounterAuditData = 0;
buildAuditData() {
  var o = new api.AuditData();
  buildCounterAuditData++;
  if (buildCounterAuditData < 3) {
    o.policyDelta = buildPolicyDelta();
  }
  buildCounterAuditData--;
  return o;
}

checkAuditData(api.AuditData o) {
  buildCounterAuditData++;
  if (buildCounterAuditData < 3) {
    checkPolicyDelta(o.policyDelta);
  }
  buildCounterAuditData--;
}

buildUnnamed1037() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1037(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed1037();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed1037(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAuditableService = 0;
buildAuditableService() {
  var o = new api.AuditableService();
  buildCounterAuditableService++;
  if (buildCounterAuditableService < 3) {
    o.name = "foo";
  }
  buildCounterAuditableService--;
  return o;
}

checkAuditableService(api.AuditableService o) {
  buildCounterAuditableService++;
  if (buildCounterAuditableService < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterAuditableService--;
}

buildUnnamed1038() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1038(core.List<core.String> o) {
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
    o.members = buildUnnamed1038();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed1038(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterBindingDelta = 0;
buildBindingDelta() {
  var o = new api.BindingDelta();
  buildCounterBindingDelta++;
  if (buildCounterBindingDelta < 3) {
    o.action = "foo";
    o.condition = buildExpr();
    o.member = "foo";
    o.role = "foo";
  }
  buildCounterBindingDelta--;
  return o;
}

checkBindingDelta(api.BindingDelta o) {
  buildCounterBindingDelta++;
  if (buildCounterBindingDelta < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkExpr(o.condition);
    unittest.expect(o.member, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBindingDelta--;
}

core.int buildCounterCreateRoleRequest = 0;
buildCreateRoleRequest() {
  var o = new api.CreateRoleRequest();
  buildCounterCreateRoleRequest++;
  if (buildCounterCreateRoleRequest < 3) {
    o.role = buildRole();
    o.roleId = "foo";
  }
  buildCounterCreateRoleRequest--;
  return o;
}

checkCreateRoleRequest(api.CreateRoleRequest o) {
  buildCounterCreateRoleRequest++;
  if (buildCounterCreateRoleRequest < 3) {
    checkRole(o.role);
    unittest.expect(o.roleId, unittest.equals('foo'));
  }
  buildCounterCreateRoleRequest--;
}

core.int buildCounterCreateServiceAccountKeyRequest = 0;
buildCreateServiceAccountKeyRequest() {
  var o = new api.CreateServiceAccountKeyRequest();
  buildCounterCreateServiceAccountKeyRequest++;
  if (buildCounterCreateServiceAccountKeyRequest < 3) {
    o.keyAlgorithm = "foo";
    o.privateKeyType = "foo";
  }
  buildCounterCreateServiceAccountKeyRequest--;
  return o;
}

checkCreateServiceAccountKeyRequest(api.CreateServiceAccountKeyRequest o) {
  buildCounterCreateServiceAccountKeyRequest++;
  if (buildCounterCreateServiceAccountKeyRequest < 3) {
    unittest.expect(o.keyAlgorithm, unittest.equals('foo'));
    unittest.expect(o.privateKeyType, unittest.equals('foo'));
  }
  buildCounterCreateServiceAccountKeyRequest--;
}

core.int buildCounterCreateServiceAccountRequest = 0;
buildCreateServiceAccountRequest() {
  var o = new api.CreateServiceAccountRequest();
  buildCounterCreateServiceAccountRequest++;
  if (buildCounterCreateServiceAccountRequest < 3) {
    o.accountId = "foo";
    o.serviceAccount = buildServiceAccount();
  }
  buildCounterCreateServiceAccountRequest--;
  return o;
}

checkCreateServiceAccountRequest(api.CreateServiceAccountRequest o) {
  buildCounterCreateServiceAccountRequest++;
  if (buildCounterCreateServiceAccountRequest < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkServiceAccount(o.serviceAccount);
  }
  buildCounterCreateServiceAccountRequest--;
}

core.int buildCounterDisableServiceAccountRequest = 0;
buildDisableServiceAccountRequest() {
  var o = new api.DisableServiceAccountRequest();
  buildCounterDisableServiceAccountRequest++;
  if (buildCounterDisableServiceAccountRequest < 3) {}
  buildCounterDisableServiceAccountRequest--;
  return o;
}

checkDisableServiceAccountRequest(api.DisableServiceAccountRequest o) {
  buildCounterDisableServiceAccountRequest++;
  if (buildCounterDisableServiceAccountRequest < 3) {}
  buildCounterDisableServiceAccountRequest--;
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

core.int buildCounterEnableServiceAccountRequest = 0;
buildEnableServiceAccountRequest() {
  var o = new api.EnableServiceAccountRequest();
  buildCounterEnableServiceAccountRequest++;
  if (buildCounterEnableServiceAccountRequest < 3) {}
  buildCounterEnableServiceAccountRequest--;
  return o;
}

checkEnableServiceAccountRequest(api.EnableServiceAccountRequest o) {
  buildCounterEnableServiceAccountRequest++;
  if (buildCounterEnableServiceAccountRequest < 3) {}
  buildCounterEnableServiceAccountRequest--;
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

buildUnnamed1039() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed1039(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

core.int buildCounterLintPolicyRequest = 0;
buildLintPolicyRequest() {
  var o = new api.LintPolicyRequest();
  buildCounterLintPolicyRequest++;
  if (buildCounterLintPolicyRequest < 3) {
    o.binding = buildBinding();
    o.condition = buildExpr();
    o.context = buildUnnamed1039();
    o.fullResourceName = "foo";
    o.policy = buildPolicy();
  }
  buildCounterLintPolicyRequest--;
  return o;
}

checkLintPolicyRequest(api.LintPolicyRequest o) {
  buildCounterLintPolicyRequest++;
  if (buildCounterLintPolicyRequest < 3) {
    checkBinding(o.binding);
    checkExpr(o.condition);
    checkUnnamed1039(o.context);
    unittest.expect(o.fullResourceName, unittest.equals('foo'));
    checkPolicy(o.policy);
  }
  buildCounterLintPolicyRequest--;
}

buildUnnamed1040() {
  var o = new core.List<api.LintResult>();
  o.add(buildLintResult());
  o.add(buildLintResult());
  return o;
}

checkUnnamed1040(core.List<api.LintResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLintResult(o[0]);
  checkLintResult(o[1]);
}

core.int buildCounterLintPolicyResponse = 0;
buildLintPolicyResponse() {
  var o = new api.LintPolicyResponse();
  buildCounterLintPolicyResponse++;
  if (buildCounterLintPolicyResponse < 3) {
    o.lintResults = buildUnnamed1040();
  }
  buildCounterLintPolicyResponse--;
  return o;
}

checkLintPolicyResponse(api.LintPolicyResponse o) {
  buildCounterLintPolicyResponse++;
  if (buildCounterLintPolicyResponse < 3) {
    checkUnnamed1040(o.lintResults);
  }
  buildCounterLintPolicyResponse--;
}

core.int buildCounterLintResult = 0;
buildLintResult() {
  var o = new api.LintResult();
  buildCounterLintResult++;
  if (buildCounterLintResult < 3) {
    o.bindingOrdinal = 42;
    o.debugMessage = "foo";
    o.fieldName = "foo";
    o.level = "foo";
    o.locationOffset = 42;
    o.severity = "foo";
    o.validationUnitName = "foo";
  }
  buildCounterLintResult--;
  return o;
}

checkLintResult(api.LintResult o) {
  buildCounterLintResult++;
  if (buildCounterLintResult < 3) {
    unittest.expect(o.bindingOrdinal, unittest.equals(42));
    unittest.expect(o.debugMessage, unittest.equals('foo'));
    unittest.expect(o.fieldName, unittest.equals('foo'));
    unittest.expect(o.level, unittest.equals('foo'));
    unittest.expect(o.locationOffset, unittest.equals(42));
    unittest.expect(o.severity, unittest.equals('foo'));
    unittest.expect(o.validationUnitName, unittest.equals('foo'));
  }
  buildCounterLintResult--;
}

buildUnnamed1041() {
  var o = new core.List<api.Role>();
  o.add(buildRole());
  o.add(buildRole());
  return o;
}

checkUnnamed1041(core.List<api.Role> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRole(o[0]);
  checkRole(o[1]);
}

core.int buildCounterListRolesResponse = 0;
buildListRolesResponse() {
  var o = new api.ListRolesResponse();
  buildCounterListRolesResponse++;
  if (buildCounterListRolesResponse < 3) {
    o.nextPageToken = "foo";
    o.roles = buildUnnamed1041();
  }
  buildCounterListRolesResponse--;
  return o;
}

checkListRolesResponse(api.ListRolesResponse o) {
  buildCounterListRolesResponse++;
  if (buildCounterListRolesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1041(o.roles);
  }
  buildCounterListRolesResponse--;
}

buildUnnamed1042() {
  var o = new core.List<api.ServiceAccountKey>();
  o.add(buildServiceAccountKey());
  o.add(buildServiceAccountKey());
  return o;
}

checkUnnamed1042(core.List<api.ServiceAccountKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceAccountKey(o[0]);
  checkServiceAccountKey(o[1]);
}

core.int buildCounterListServiceAccountKeysResponse = 0;
buildListServiceAccountKeysResponse() {
  var o = new api.ListServiceAccountKeysResponse();
  buildCounterListServiceAccountKeysResponse++;
  if (buildCounterListServiceAccountKeysResponse < 3) {
    o.keys = buildUnnamed1042();
  }
  buildCounterListServiceAccountKeysResponse--;
  return o;
}

checkListServiceAccountKeysResponse(api.ListServiceAccountKeysResponse o) {
  buildCounterListServiceAccountKeysResponse++;
  if (buildCounterListServiceAccountKeysResponse < 3) {
    checkUnnamed1042(o.keys);
  }
  buildCounterListServiceAccountKeysResponse--;
}

buildUnnamed1043() {
  var o = new core.List<api.ServiceAccount>();
  o.add(buildServiceAccount());
  o.add(buildServiceAccount());
  return o;
}

checkUnnamed1043(core.List<api.ServiceAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceAccount(o[0]);
  checkServiceAccount(o[1]);
}

core.int buildCounterListServiceAccountsResponse = 0;
buildListServiceAccountsResponse() {
  var o = new api.ListServiceAccountsResponse();
  buildCounterListServiceAccountsResponse++;
  if (buildCounterListServiceAccountsResponse < 3) {
    o.accounts = buildUnnamed1043();
    o.nextPageToken = "foo";
  }
  buildCounterListServiceAccountsResponse--;
  return o;
}

checkListServiceAccountsResponse(api.ListServiceAccountsResponse o) {
  buildCounterListServiceAccountsResponse++;
  if (buildCounterListServiceAccountsResponse < 3) {
    checkUnnamed1043(o.accounts);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListServiceAccountsResponse--;
}

core.int buildCounterPatchServiceAccountRequest = 0;
buildPatchServiceAccountRequest() {
  var o = new api.PatchServiceAccountRequest();
  buildCounterPatchServiceAccountRequest++;
  if (buildCounterPatchServiceAccountRequest < 3) {
    o.serviceAccount = buildServiceAccount();
    o.updateMask = "foo";
  }
  buildCounterPatchServiceAccountRequest--;
  return o;
}

checkPatchServiceAccountRequest(api.PatchServiceAccountRequest o) {
  buildCounterPatchServiceAccountRequest++;
  if (buildCounterPatchServiceAccountRequest < 3) {
    checkServiceAccount(o.serviceAccount);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterPatchServiceAccountRequest--;
}

core.int buildCounterPermission = 0;
buildPermission() {
  var o = new api.Permission();
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    o.apiDisabled = true;
    o.customRolesSupportLevel = "foo";
    o.description = "foo";
    o.name = "foo";
    o.onlyInPredefinedRoles = true;
    o.stage = "foo";
    o.title = "foo";
  }
  buildCounterPermission--;
  return o;
}

checkPermission(api.Permission o) {
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    unittest.expect(o.apiDisabled, unittest.isTrue);
    unittest.expect(o.customRolesSupportLevel, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.onlyInPredefinedRoles, unittest.isTrue);
    unittest.expect(o.stage, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterPermission--;
}

buildUnnamed1044() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1044(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1045() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1045(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPermissionDelta = 0;
buildPermissionDelta() {
  var o = new api.PermissionDelta();
  buildCounterPermissionDelta++;
  if (buildCounterPermissionDelta < 3) {
    o.addedPermissions = buildUnnamed1044();
    o.removedPermissions = buildUnnamed1045();
  }
  buildCounterPermissionDelta--;
  return o;
}

checkPermissionDelta(api.PermissionDelta o) {
  buildCounterPermissionDelta++;
  if (buildCounterPermissionDelta < 3) {
    checkUnnamed1044(o.addedPermissions);
    checkUnnamed1045(o.removedPermissions);
  }
  buildCounterPermissionDelta--;
}

buildUnnamed1046() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed1046(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed1047() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed1047(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed1046();
    o.bindings = buildUnnamed1047();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed1046(o.auditConfigs);
    checkUnnamed1047(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

buildUnnamed1048() {
  var o = new core.List<api.BindingDelta>();
  o.add(buildBindingDelta());
  o.add(buildBindingDelta());
  return o;
}

checkUnnamed1048(core.List<api.BindingDelta> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBindingDelta(o[0]);
  checkBindingDelta(o[1]);
}

core.int buildCounterPolicyDelta = 0;
buildPolicyDelta() {
  var o = new api.PolicyDelta();
  buildCounterPolicyDelta++;
  if (buildCounterPolicyDelta < 3) {
    o.bindingDeltas = buildUnnamed1048();
  }
  buildCounterPolicyDelta--;
  return o;
}

checkPolicyDelta(api.PolicyDelta o) {
  buildCounterPolicyDelta++;
  if (buildCounterPolicyDelta < 3) {
    checkUnnamed1048(o.bindingDeltas);
  }
  buildCounterPolicyDelta--;
}

core.int buildCounterQueryAuditableServicesRequest = 0;
buildQueryAuditableServicesRequest() {
  var o = new api.QueryAuditableServicesRequest();
  buildCounterQueryAuditableServicesRequest++;
  if (buildCounterQueryAuditableServicesRequest < 3) {
    o.fullResourceName = "foo";
  }
  buildCounterQueryAuditableServicesRequest--;
  return o;
}

checkQueryAuditableServicesRequest(api.QueryAuditableServicesRequest o) {
  buildCounterQueryAuditableServicesRequest++;
  if (buildCounterQueryAuditableServicesRequest < 3) {
    unittest.expect(o.fullResourceName, unittest.equals('foo'));
  }
  buildCounterQueryAuditableServicesRequest--;
}

buildUnnamed1049() {
  var o = new core.List<api.AuditableService>();
  o.add(buildAuditableService());
  o.add(buildAuditableService());
  return o;
}

checkUnnamed1049(core.List<api.AuditableService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditableService(o[0]);
  checkAuditableService(o[1]);
}

core.int buildCounterQueryAuditableServicesResponse = 0;
buildQueryAuditableServicesResponse() {
  var o = new api.QueryAuditableServicesResponse();
  buildCounterQueryAuditableServicesResponse++;
  if (buildCounterQueryAuditableServicesResponse < 3) {
    o.services = buildUnnamed1049();
  }
  buildCounterQueryAuditableServicesResponse--;
  return o;
}

checkQueryAuditableServicesResponse(api.QueryAuditableServicesResponse o) {
  buildCounterQueryAuditableServicesResponse++;
  if (buildCounterQueryAuditableServicesResponse < 3) {
    checkUnnamed1049(o.services);
  }
  buildCounterQueryAuditableServicesResponse--;
}

core.int buildCounterQueryGrantableRolesRequest = 0;
buildQueryGrantableRolesRequest() {
  var o = new api.QueryGrantableRolesRequest();
  buildCounterQueryGrantableRolesRequest++;
  if (buildCounterQueryGrantableRolesRequest < 3) {
    o.fullResourceName = "foo";
    o.pageSize = 42;
    o.pageToken = "foo";
    o.view = "foo";
  }
  buildCounterQueryGrantableRolesRequest--;
  return o;
}

checkQueryGrantableRolesRequest(api.QueryGrantableRolesRequest o) {
  buildCounterQueryGrantableRolesRequest++;
  if (buildCounterQueryGrantableRolesRequest < 3) {
    unittest.expect(o.fullResourceName, unittest.equals('foo'));
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    unittest.expect(o.view, unittest.equals('foo'));
  }
  buildCounterQueryGrantableRolesRequest--;
}

buildUnnamed1050() {
  var o = new core.List<api.Role>();
  o.add(buildRole());
  o.add(buildRole());
  return o;
}

checkUnnamed1050(core.List<api.Role> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRole(o[0]);
  checkRole(o[1]);
}

core.int buildCounterQueryGrantableRolesResponse = 0;
buildQueryGrantableRolesResponse() {
  var o = new api.QueryGrantableRolesResponse();
  buildCounterQueryGrantableRolesResponse++;
  if (buildCounterQueryGrantableRolesResponse < 3) {
    o.nextPageToken = "foo";
    o.roles = buildUnnamed1050();
  }
  buildCounterQueryGrantableRolesResponse--;
  return o;
}

checkQueryGrantableRolesResponse(api.QueryGrantableRolesResponse o) {
  buildCounterQueryGrantableRolesResponse++;
  if (buildCounterQueryGrantableRolesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1050(o.roles);
  }
  buildCounterQueryGrantableRolesResponse--;
}

core.int buildCounterQueryTestablePermissionsRequest = 0;
buildQueryTestablePermissionsRequest() {
  var o = new api.QueryTestablePermissionsRequest();
  buildCounterQueryTestablePermissionsRequest++;
  if (buildCounterQueryTestablePermissionsRequest < 3) {
    o.fullResourceName = "foo";
    o.pageSize = 42;
    o.pageToken = "foo";
  }
  buildCounterQueryTestablePermissionsRequest--;
  return o;
}

checkQueryTestablePermissionsRequest(api.QueryTestablePermissionsRequest o) {
  buildCounterQueryTestablePermissionsRequest++;
  if (buildCounterQueryTestablePermissionsRequest < 3) {
    unittest.expect(o.fullResourceName, unittest.equals('foo'));
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
  }
  buildCounterQueryTestablePermissionsRequest--;
}

buildUnnamed1051() {
  var o = new core.List<api.Permission>();
  o.add(buildPermission());
  o.add(buildPermission());
  return o;
}

checkUnnamed1051(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

core.int buildCounterQueryTestablePermissionsResponse = 0;
buildQueryTestablePermissionsResponse() {
  var o = new api.QueryTestablePermissionsResponse();
  buildCounterQueryTestablePermissionsResponse++;
  if (buildCounterQueryTestablePermissionsResponse < 3) {
    o.nextPageToken = "foo";
    o.permissions = buildUnnamed1051();
  }
  buildCounterQueryTestablePermissionsResponse--;
  return o;
}

checkQueryTestablePermissionsResponse(api.QueryTestablePermissionsResponse o) {
  buildCounterQueryTestablePermissionsResponse++;
  if (buildCounterQueryTestablePermissionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1051(o.permissions);
  }
  buildCounterQueryTestablePermissionsResponse--;
}

buildUnnamed1052() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1052(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRole = 0;
buildRole() {
  var o = new api.Role();
  buildCounterRole++;
  if (buildCounterRole < 3) {
    o.deleted = true;
    o.description = "foo";
    o.etag = "foo";
    o.includedPermissions = buildUnnamed1052();
    o.name = "foo";
    o.stage = "foo";
    o.title = "foo";
  }
  buildCounterRole--;
  return o;
}

checkRole(api.Role o) {
  buildCounterRole++;
  if (buildCounterRole < 3) {
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed1052(o.includedPermissions);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.stage, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterRole--;
}

core.int buildCounterServiceAccount = 0;
buildServiceAccount() {
  var o = new api.ServiceAccount();
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    o.description = "foo";
    o.disabled = true;
    o.displayName = "foo";
    o.email = "foo";
    o.etag = "foo";
    o.name = "foo";
    o.oauth2ClientId = "foo";
    o.projectId = "foo";
    o.uniqueId = "foo";
  }
  buildCounterServiceAccount--;
  return o;
}

checkServiceAccount(api.ServiceAccount o) {
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.disabled, unittest.isTrue);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.oauth2ClientId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.uniqueId, unittest.equals('foo'));
  }
  buildCounterServiceAccount--;
}

core.int buildCounterServiceAccountKey = 0;
buildServiceAccountKey() {
  var o = new api.ServiceAccountKey();
  buildCounterServiceAccountKey++;
  if (buildCounterServiceAccountKey < 3) {
    o.keyAlgorithm = "foo";
    o.keyOrigin = "foo";
    o.name = "foo";
    o.privateKeyData = "foo";
    o.privateKeyType = "foo";
    o.publicKeyData = "foo";
    o.validAfterTime = "foo";
    o.validBeforeTime = "foo";
  }
  buildCounterServiceAccountKey--;
  return o;
}

checkServiceAccountKey(api.ServiceAccountKey o) {
  buildCounterServiceAccountKey++;
  if (buildCounterServiceAccountKey < 3) {
    unittest.expect(o.keyAlgorithm, unittest.equals('foo'));
    unittest.expect(o.keyOrigin, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.privateKeyData, unittest.equals('foo'));
    unittest.expect(o.privateKeyType, unittest.equals('foo'));
    unittest.expect(o.publicKeyData, unittest.equals('foo'));
    unittest.expect(o.validAfterTime, unittest.equals('foo'));
    unittest.expect(o.validBeforeTime, unittest.equals('foo'));
  }
  buildCounterServiceAccountKey--;
}

core.int buildCounterSetIamPolicyRequest = 0;
buildSetIamPolicyRequest() {
  var o = new api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = "foo";
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterSignBlobRequest = 0;
buildSignBlobRequest() {
  var o = new api.SignBlobRequest();
  buildCounterSignBlobRequest++;
  if (buildCounterSignBlobRequest < 3) {
    o.bytesToSign = "foo";
  }
  buildCounterSignBlobRequest--;
  return o;
}

checkSignBlobRequest(api.SignBlobRequest o) {
  buildCounterSignBlobRequest++;
  if (buildCounterSignBlobRequest < 3) {
    unittest.expect(o.bytesToSign, unittest.equals('foo'));
  }
  buildCounterSignBlobRequest--;
}

core.int buildCounterSignBlobResponse = 0;
buildSignBlobResponse() {
  var o = new api.SignBlobResponse();
  buildCounterSignBlobResponse++;
  if (buildCounterSignBlobResponse < 3) {
    o.keyId = "foo";
    o.signature = "foo";
  }
  buildCounterSignBlobResponse--;
  return o;
}

checkSignBlobResponse(api.SignBlobResponse o) {
  buildCounterSignBlobResponse++;
  if (buildCounterSignBlobResponse < 3) {
    unittest.expect(o.keyId, unittest.equals('foo'));
    unittest.expect(o.signature, unittest.equals('foo'));
  }
  buildCounterSignBlobResponse--;
}

core.int buildCounterSignJwtRequest = 0;
buildSignJwtRequest() {
  var o = new api.SignJwtRequest();
  buildCounterSignJwtRequest++;
  if (buildCounterSignJwtRequest < 3) {
    o.payload = "foo";
  }
  buildCounterSignJwtRequest--;
  return o;
}

checkSignJwtRequest(api.SignJwtRequest o) {
  buildCounterSignJwtRequest++;
  if (buildCounterSignJwtRequest < 3) {
    unittest.expect(o.payload, unittest.equals('foo'));
  }
  buildCounterSignJwtRequest--;
}

core.int buildCounterSignJwtResponse = 0;
buildSignJwtResponse() {
  var o = new api.SignJwtResponse();
  buildCounterSignJwtResponse++;
  if (buildCounterSignJwtResponse < 3) {
    o.keyId = "foo";
    o.signedJwt = "foo";
  }
  buildCounterSignJwtResponse--;
  return o;
}

checkSignJwtResponse(api.SignJwtResponse o) {
  buildCounterSignJwtResponse++;
  if (buildCounterSignJwtResponse < 3) {
    unittest.expect(o.keyId, unittest.equals('foo'));
    unittest.expect(o.signedJwt, unittest.equals('foo'));
  }
  buildCounterSignJwtResponse--;
}

buildUnnamed1053() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1053(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed1053();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed1053(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed1054() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1054(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed1054();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed1054(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUndeleteRoleRequest = 0;
buildUndeleteRoleRequest() {
  var o = new api.UndeleteRoleRequest();
  buildCounterUndeleteRoleRequest++;
  if (buildCounterUndeleteRoleRequest < 3) {
    o.etag = "foo";
  }
  buildCounterUndeleteRoleRequest--;
  return o;
}

checkUndeleteRoleRequest(api.UndeleteRoleRequest o) {
  buildCounterUndeleteRoleRequest++;
  if (buildCounterUndeleteRoleRequest < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
  }
  buildCounterUndeleteRoleRequest--;
}

core.int buildCounterUndeleteServiceAccountRequest = 0;
buildUndeleteServiceAccountRequest() {
  var o = new api.UndeleteServiceAccountRequest();
  buildCounterUndeleteServiceAccountRequest++;
  if (buildCounterUndeleteServiceAccountRequest < 3) {}
  buildCounterUndeleteServiceAccountRequest--;
  return o;
}

checkUndeleteServiceAccountRequest(api.UndeleteServiceAccountRequest o) {
  buildCounterUndeleteServiceAccountRequest++;
  if (buildCounterUndeleteServiceAccountRequest < 3) {}
  buildCounterUndeleteServiceAccountRequest--;
}

core.int buildCounterUndeleteServiceAccountResponse = 0;
buildUndeleteServiceAccountResponse() {
  var o = new api.UndeleteServiceAccountResponse();
  buildCounterUndeleteServiceAccountResponse++;
  if (buildCounterUndeleteServiceAccountResponse < 3) {
    o.restoredAccount = buildServiceAccount();
  }
  buildCounterUndeleteServiceAccountResponse--;
  return o;
}

checkUndeleteServiceAccountResponse(api.UndeleteServiceAccountResponse o) {
  buildCounterUndeleteServiceAccountResponse++;
  if (buildCounterUndeleteServiceAccountResponse < 3) {
    checkServiceAccount(o.restoredAccount);
  }
  buildCounterUndeleteServiceAccountResponse--;
}

buildUnnamed1055() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1055(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-AdminAuditData", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdminAuditData();
      var od = new api.AdminAuditData.fromJson(o.toJson());
      checkAdminAuditData(od);
    });
  });

  unittest.group("obj-schema-AuditConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditConfig();
      var od = new api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od);
    });
  });

  unittest.group("obj-schema-AuditData", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditData();
      var od = new api.AuditData.fromJson(o.toJson());
      checkAuditData(od);
    });
  });

  unittest.group("obj-schema-AuditLogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditLogConfig();
      var od = new api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od);
    });
  });

  unittest.group("obj-schema-AuditableService", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditableService();
      var od = new api.AuditableService.fromJson(o.toJson());
      checkAuditableService(od);
    });
  });

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-BindingDelta", () {
    unittest.test("to-json--from-json", () {
      var o = buildBindingDelta();
      var od = new api.BindingDelta.fromJson(o.toJson());
      checkBindingDelta(od);
    });
  });

  unittest.group("obj-schema-CreateRoleRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateRoleRequest();
      var od = new api.CreateRoleRequest.fromJson(o.toJson());
      checkCreateRoleRequest(od);
    });
  });

  unittest.group("obj-schema-CreateServiceAccountKeyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateServiceAccountKeyRequest();
      var od = new api.CreateServiceAccountKeyRequest.fromJson(o.toJson());
      checkCreateServiceAccountKeyRequest(od);
    });
  });

  unittest.group("obj-schema-CreateServiceAccountRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateServiceAccountRequest();
      var od = new api.CreateServiceAccountRequest.fromJson(o.toJson());
      checkCreateServiceAccountRequest(od);
    });
  });

  unittest.group("obj-schema-DisableServiceAccountRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDisableServiceAccountRequest();
      var od = new api.DisableServiceAccountRequest.fromJson(o.toJson());
      checkDisableServiceAccountRequest(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-EnableServiceAccountRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnableServiceAccountRequest();
      var od = new api.EnableServiceAccountRequest.fromJson(o.toJson());
      checkEnableServiceAccountRequest(od);
    });
  });

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-LintPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildLintPolicyRequest();
      var od = new api.LintPolicyRequest.fromJson(o.toJson());
      checkLintPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-LintPolicyResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLintPolicyResponse();
      var od = new api.LintPolicyResponse.fromJson(o.toJson());
      checkLintPolicyResponse(od);
    });
  });

  unittest.group("obj-schema-LintResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildLintResult();
      var od = new api.LintResult.fromJson(o.toJson());
      checkLintResult(od);
    });
  });

  unittest.group("obj-schema-ListRolesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListRolesResponse();
      var od = new api.ListRolesResponse.fromJson(o.toJson());
      checkListRolesResponse(od);
    });
  });

  unittest.group("obj-schema-ListServiceAccountKeysResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListServiceAccountKeysResponse();
      var od = new api.ListServiceAccountKeysResponse.fromJson(o.toJson());
      checkListServiceAccountKeysResponse(od);
    });
  });

  unittest.group("obj-schema-ListServiceAccountsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListServiceAccountsResponse();
      var od = new api.ListServiceAccountsResponse.fromJson(o.toJson());
      checkListServiceAccountsResponse(od);
    });
  });

  unittest.group("obj-schema-PatchServiceAccountRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildPatchServiceAccountRequest();
      var od = new api.PatchServiceAccountRequest.fromJson(o.toJson());
      checkPatchServiceAccountRequest(od);
    });
  });

  unittest.group("obj-schema-Permission", () {
    unittest.test("to-json--from-json", () {
      var o = buildPermission();
      var od = new api.Permission.fromJson(o.toJson());
      checkPermission(od);
    });
  });

  unittest.group("obj-schema-PermissionDelta", () {
    unittest.test("to-json--from-json", () {
      var o = buildPermissionDelta();
      var od = new api.PermissionDelta.fromJson(o.toJson());
      checkPermissionDelta(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-PolicyDelta", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicyDelta();
      var od = new api.PolicyDelta.fromJson(o.toJson());
      checkPolicyDelta(od);
    });
  });

  unittest.group("obj-schema-QueryAuditableServicesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryAuditableServicesRequest();
      var od = new api.QueryAuditableServicesRequest.fromJson(o.toJson());
      checkQueryAuditableServicesRequest(od);
    });
  });

  unittest.group("obj-schema-QueryAuditableServicesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryAuditableServicesResponse();
      var od = new api.QueryAuditableServicesResponse.fromJson(o.toJson());
      checkQueryAuditableServicesResponse(od);
    });
  });

  unittest.group("obj-schema-QueryGrantableRolesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryGrantableRolesRequest();
      var od = new api.QueryGrantableRolesRequest.fromJson(o.toJson());
      checkQueryGrantableRolesRequest(od);
    });
  });

  unittest.group("obj-schema-QueryGrantableRolesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryGrantableRolesResponse();
      var od = new api.QueryGrantableRolesResponse.fromJson(o.toJson());
      checkQueryGrantableRolesResponse(od);
    });
  });

  unittest.group("obj-schema-QueryTestablePermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryTestablePermissionsRequest();
      var od = new api.QueryTestablePermissionsRequest.fromJson(o.toJson());
      checkQueryTestablePermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-QueryTestablePermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryTestablePermissionsResponse();
      var od = new api.QueryTestablePermissionsResponse.fromJson(o.toJson());
      checkQueryTestablePermissionsResponse(od);
    });
  });

  unittest.group("obj-schema-Role", () {
    unittest.test("to-json--from-json", () {
      var o = buildRole();
      var od = new api.Role.fromJson(o.toJson());
      checkRole(od);
    });
  });

  unittest.group("obj-schema-ServiceAccount", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceAccount();
      var od = new api.ServiceAccount.fromJson(o.toJson());
      checkServiceAccount(od);
    });
  });

  unittest.group("obj-schema-ServiceAccountKey", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceAccountKey();
      var od = new api.ServiceAccountKey.fromJson(o.toJson());
      checkServiceAccountKey(od);
    });
  });

  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-SignBlobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSignBlobRequest();
      var od = new api.SignBlobRequest.fromJson(o.toJson());
      checkSignBlobRequest(od);
    });
  });

  unittest.group("obj-schema-SignBlobResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSignBlobResponse();
      var od = new api.SignBlobResponse.fromJson(o.toJson());
      checkSignBlobResponse(od);
    });
  });

  unittest.group("obj-schema-SignJwtRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSignJwtRequest();
      var od = new api.SignJwtRequest.fromJson(o.toJson());
      checkSignJwtRequest(od);
    });
  });

  unittest.group("obj-schema-SignJwtResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSignJwtResponse();
      var od = new api.SignJwtResponse.fromJson(o.toJson());
      checkSignJwtResponse(od);
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

  unittest.group("obj-schema-UndeleteRoleRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUndeleteRoleRequest();
      var od = new api.UndeleteRoleRequest.fromJson(o.toJson());
      checkUndeleteRoleRequest(od);
    });
  });

  unittest.group("obj-schema-UndeleteServiceAccountRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUndeleteServiceAccountRequest();
      var od = new api.UndeleteServiceAccountRequest.fromJson(o.toJson());
      checkUndeleteServiceAccountRequest(od);
    });
  });

  unittest.group("obj-schema-UndeleteServiceAccountResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildUndeleteServiceAccountResponse();
      var od = new api.UndeleteServiceAccountResponse.fromJson(o.toJson());
      checkUndeleteServiceAccountResponse(od);
    });
  });

  unittest.group("resource-IamPoliciesResourceApi", () {
    unittest.test("method--lintPolicy", () {
      var mock = new HttpServerMock();
      api.IamPoliciesResourceApi res = new api.IamApi(mock).iamPolicies;
      var arg_request = buildLintPolicyRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.LintPolicyRequest.fromJson(json);
        checkLintPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("v1/iamPolicies:lintPolicy"));
        pathOffset += 25;

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
        var resp = convert.json.encode(buildLintPolicyResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .lintPolicy(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLintPolicyResponse(response);
      })));
    });

    unittest.test("method--queryAuditableServices", () {
      var mock = new HttpServerMock();
      api.IamPoliciesResourceApi res = new api.IamApi(mock).iamPolicies;
      var arg_request = buildQueryAuditableServicesRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.QueryAuditableServicesRequest.fromJson(json);
        checkQueryAuditableServicesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 37),
            unittest.equals("v1/iamPolicies:queryAuditableServices"));
        pathOffset += 37;

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
        var resp = convert.json.encode(buildQueryAuditableServicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .queryAuditableServices(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueryAuditableServicesResponse(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsRolesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.OrganizationsRolesResourceApi res =
          new api.IamApi(mock).organizations.roles;
      var arg_request = buildCreateRoleRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateRoleRequest.fromJson(json);
        checkCreateRoleRequest(obj);

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
        var resp = convert.json.encode(buildRole());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRole(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OrganizationsRolesResourceApi res =
          new api.IamApi(mock).organizations.roles;
      var arg_name = "foo";
      var arg_etag = "foo";
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
        unittest.expect(queryMap["etag"].first, unittest.equals(arg_etag));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildRole());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, etag: arg_etag, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRole(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsRolesResourceApi res =
          new api.IamApi(mock).organizations.roles;
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
        var resp = convert.json.encode(buildRole());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRole(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OrganizationsRolesResourceApi res =
          new api.IamApi(mock).organizations.roles;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_view = "foo";
      var arg_showDeleted = true;
      var arg_pageToken = "foo";
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(
            queryMap["showDeleted"].first, unittest.equals("$arg_showDeleted"));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListRolesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              view: arg_view,
              showDeleted: arg_showDeleted,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRolesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.OrganizationsRolesResourceApi res =
          new api.IamApi(mock).organizations.roles;
      var arg_request = buildRole();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Role.fromJson(json);
        checkRole(obj);

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
        var resp = convert.json.encode(buildRole());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRole(response);
      })));
    });

    unittest.test("method--undelete", () {
      var mock = new HttpServerMock();
      api.OrganizationsRolesResourceApi res =
          new api.IamApi(mock).organizations.roles;
      var arg_request = buildUndeleteRoleRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UndeleteRoleRequest.fromJson(json);
        checkUndeleteRoleRequest(obj);

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
        var resp = convert.json.encode(buildRole());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .undelete(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRole(response);
      })));
    });
  });

  unittest.group("resource-PermissionsResourceApi", () {
    unittest.test("method--queryTestablePermissions", () {
      var mock = new HttpServerMock();
      api.PermissionsResourceApi res = new api.IamApi(mock).permissions;
      var arg_request = buildQueryTestablePermissionsRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.QueryTestablePermissionsRequest.fromJson(json);
        checkQueryTestablePermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 39),
            unittest.equals("v1/permissions:queryTestablePermissions"));
        pathOffset += 39;

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
        var resp = convert.json.encode(buildQueryTestablePermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .queryTestablePermissions(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueryTestablePermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsRolesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsRolesResourceApi res = new api.IamApi(mock).projects.roles;
      var arg_request = buildCreateRoleRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateRoleRequest.fromJson(json);
        checkCreateRoleRequest(obj);

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
        var resp = convert.json.encode(buildRole());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRole(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsRolesResourceApi res = new api.IamApi(mock).projects.roles;
      var arg_name = "foo";
      var arg_etag = "foo";
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
        unittest.expect(queryMap["etag"].first, unittest.equals(arg_etag));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildRole());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, etag: arg_etag, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRole(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsRolesResourceApi res = new api.IamApi(mock).projects.roles;
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
        var resp = convert.json.encode(buildRole());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRole(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsRolesResourceApi res = new api.IamApi(mock).projects.roles;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_view = "foo";
      var arg_showDeleted = true;
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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(
            queryMap["showDeleted"].first, unittest.equals("$arg_showDeleted"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListRolesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              view: arg_view,
              showDeleted: arg_showDeleted,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRolesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsRolesResourceApi res = new api.IamApi(mock).projects.roles;
      var arg_request = buildRole();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Role.fromJson(json);
        checkRole(obj);

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
        var resp = convert.json.encode(buildRole());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRole(response);
      })));
    });

    unittest.test("method--undelete", () {
      var mock = new HttpServerMock();
      api.ProjectsRolesResourceApi res = new api.IamApi(mock).projects.roles;
      var arg_request = buildUndeleteRoleRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UndeleteRoleRequest.fromJson(json);
        checkUndeleteRoleRequest(obj);

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
        var resp = convert.json.encode(buildRole());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .undelete(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRole(response);
      })));
    });
  });

  unittest.group("resource-ProjectsServiceAccountsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          new api.IamApi(mock).projects.serviceAccounts;
      var arg_request = buildCreateServiceAccountRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateServiceAccountRequest.fromJson(json);
        checkCreateServiceAccountRequest(obj);

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
        var resp = convert.json.encode(buildServiceAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceAccount(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          new api.IamApi(mock).projects.serviceAccounts;
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

    unittest.test("method--disable", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          new api.IamApi(mock).projects.serviceAccounts;
      var arg_request = buildDisableServiceAccountRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DisableServiceAccountRequest.fromJson(json);
        checkDisableServiceAccountRequest(obj);

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
          .disable(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--enable", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          new api.IamApi(mock).projects.serviceAccounts;
      var arg_request = buildEnableServiceAccountRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.EnableServiceAccountRequest.fromJson(json);
        checkEnableServiceAccountRequest(obj);

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
          .enable(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          new api.IamApi(mock).projects.serviceAccounts;
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
        var resp = convert.json.encode(buildServiceAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceAccount(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          new api.IamApi(mock).projects.serviceAccounts;
      var arg_resource = "foo";
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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          new api.IamApi(mock).projects.serviceAccounts;
      var arg_name = "foo";
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
        var resp = convert.json.encode(buildListServiceAccountsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListServiceAccountsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          new api.IamApi(mock).projects.serviceAccounts;
      var arg_request = buildPatchServiceAccountRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PatchServiceAccountRequest.fromJson(json);
        checkPatchServiceAccountRequest(obj);

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
        var resp = convert.json.encode(buildServiceAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceAccount(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          new api.IamApi(mock).projects.serviceAccounts;
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

    unittest.test("method--signBlob", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          new api.IamApi(mock).projects.serviceAccounts;
      var arg_request = buildSignBlobRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SignBlobRequest.fromJson(json);
        checkSignBlobRequest(obj);

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
        var resp = convert.json.encode(buildSignBlobResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signBlob(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSignBlobResponse(response);
      })));
    });

    unittest.test("method--signJwt", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          new api.IamApi(mock).projects.serviceAccounts;
      var arg_request = buildSignJwtRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SignJwtRequest.fromJson(json);
        checkSignJwtRequest(obj);

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
        var resp = convert.json.encode(buildSignJwtResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signJwt(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSignJwtResponse(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          new api.IamApi(mock).projects.serviceAccounts;
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

    unittest.test("method--undelete", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          new api.IamApi(mock).projects.serviceAccounts;
      var arg_request = buildUndeleteServiceAccountRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UndeleteServiceAccountRequest.fromJson(json);
        checkUndeleteServiceAccountRequest(obj);

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
        var resp = convert.json.encode(buildUndeleteServiceAccountResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .undelete(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUndeleteServiceAccountResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsResourceApi res =
          new api.IamApi(mock).projects.serviceAccounts;
      var arg_request = buildServiceAccount();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ServiceAccount.fromJson(json);
        checkServiceAccount(obj);

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
        var resp = convert.json.encode(buildServiceAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceAccount(response);
      })));
    });
  });

  unittest.group("resource-ProjectsServiceAccountsKeysResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsKeysResourceApi res =
          new api.IamApi(mock).projects.serviceAccounts.keys;
      var arg_request = buildCreateServiceAccountKeyRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateServiceAccountKeyRequest.fromJson(json);
        checkCreateServiceAccountKeyRequest(obj);

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
        var resp = convert.json.encode(buildServiceAccountKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceAccountKey(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsKeysResourceApi res =
          new api.IamApi(mock).projects.serviceAccounts.keys;
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
      api.ProjectsServiceAccountsKeysResourceApi res =
          new api.IamApi(mock).projects.serviceAccounts.keys;
      var arg_name = "foo";
      var arg_publicKeyType = "foo";
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
        unittest.expect(queryMap["publicKeyType"].first,
            unittest.equals(arg_publicKeyType));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildServiceAccountKey());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, publicKeyType: arg_publicKeyType, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceAccountKey(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsServiceAccountsKeysResourceApi res =
          new api.IamApi(mock).projects.serviceAccounts.keys;
      var arg_name = "foo";
      var arg_keyTypes = buildUnnamed1055();
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
        unittest.expect(queryMap["keyTypes"], unittest.equals(arg_keyTypes));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListServiceAccountKeysResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name, keyTypes: arg_keyTypes, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListServiceAccountKeysResponse(response);
      })));
    });
  });

  unittest.group("resource-RolesResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.RolesResourceApi res = new api.IamApi(mock).roles;
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
        var resp = convert.json.encode(buildRole());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRole(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.RolesResourceApi res = new api.IamApi(mock).roles;
      var arg_view = "foo";
      var arg_parent = "foo";
      var arg_showDeleted = true;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/roles"));
        pathOffset += 8;

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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["parent"].first, unittest.equals(arg_parent));
        unittest.expect(
            queryMap["showDeleted"].first, unittest.equals("$arg_showDeleted"));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListRolesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              view: arg_view,
              parent: arg_parent,
              showDeleted: arg_showDeleted,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListRolesResponse(response);
      })));
    });

    unittest.test("method--queryGrantableRoles", () {
      var mock = new HttpServerMock();
      api.RolesResourceApi res = new api.IamApi(mock).roles;
      var arg_request = buildQueryGrantableRolesRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.QueryGrantableRolesRequest.fromJson(json);
        checkQueryGrantableRolesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("v1/roles:queryGrantableRoles"));
        pathOffset += 28;

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
        var resp = convert.json.encode(buildQueryGrantableRolesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .queryGrantableRoles(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueryGrantableRolesResponse(response);
      })));
    });
  });
}
