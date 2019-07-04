library googleapis.cloudresourcemanager.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/cloudresourcemanager/v1.dart' as api;

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

core.int buildCounterAncestor = 0;
buildAncestor() {
  var o = new api.Ancestor();
  buildCounterAncestor++;
  if (buildCounterAncestor < 3) {
    o.resourceId = buildResourceId();
  }
  buildCounterAncestor--;
  return o;
}

checkAncestor(api.Ancestor o) {
  buildCounterAncestor++;
  if (buildCounterAncestor < 3) {
    checkResourceId(o.resourceId);
  }
  buildCounterAncestor--;
}

buildUnnamed2902() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed2902(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed2902();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed2902(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed2903() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2903(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed2903();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed2903(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

buildUnnamed2904() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2904(core.List<core.String> o) {
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
    o.members = buildUnnamed2904();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed2904(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterBooleanConstraint = 0;
buildBooleanConstraint() {
  var o = new api.BooleanConstraint();
  buildCounterBooleanConstraint++;
  if (buildCounterBooleanConstraint < 3) {}
  buildCounterBooleanConstraint--;
  return o;
}

checkBooleanConstraint(api.BooleanConstraint o) {
  buildCounterBooleanConstraint++;
  if (buildCounterBooleanConstraint < 3) {}
  buildCounterBooleanConstraint--;
}

core.int buildCounterBooleanPolicy = 0;
buildBooleanPolicy() {
  var o = new api.BooleanPolicy();
  buildCounterBooleanPolicy++;
  if (buildCounterBooleanPolicy < 3) {
    o.enforced = true;
  }
  buildCounterBooleanPolicy--;
  return o;
}

checkBooleanPolicy(api.BooleanPolicy o) {
  buildCounterBooleanPolicy++;
  if (buildCounterBooleanPolicy < 3) {
    unittest.expect(o.enforced, unittest.isTrue);
  }
  buildCounterBooleanPolicy--;
}

core.int buildCounterClearOrgPolicyRequest = 0;
buildClearOrgPolicyRequest() {
  var o = new api.ClearOrgPolicyRequest();
  buildCounterClearOrgPolicyRequest++;
  if (buildCounterClearOrgPolicyRequest < 3) {
    o.constraint = "foo";
    o.etag = "foo";
  }
  buildCounterClearOrgPolicyRequest--;
  return o;
}

checkClearOrgPolicyRequest(api.ClearOrgPolicyRequest o) {
  buildCounterClearOrgPolicyRequest++;
  if (buildCounterClearOrgPolicyRequest < 3) {
    unittest.expect(o.constraint, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
  }
  buildCounterClearOrgPolicyRequest--;
}

core.int buildCounterConstraint = 0;
buildConstraint() {
  var o = new api.Constraint();
  buildCounterConstraint++;
  if (buildCounterConstraint < 3) {
    o.booleanConstraint = buildBooleanConstraint();
    o.constraintDefault = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.listConstraint = buildListConstraint();
    o.name = "foo";
    o.version = 42;
  }
  buildCounterConstraint--;
  return o;
}

checkConstraint(api.Constraint o) {
  buildCounterConstraint++;
  if (buildCounterConstraint < 3) {
    checkBooleanConstraint(o.booleanConstraint);
    unittest.expect(o.constraintDefault, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkListConstraint(o.listConstraint);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterConstraint--;
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

core.int buildCounterFolderOperation = 0;
buildFolderOperation() {
  var o = new api.FolderOperation();
  buildCounterFolderOperation++;
  if (buildCounterFolderOperation < 3) {
    o.destinationParent = "foo";
    o.displayName = "foo";
    o.operationType = "foo";
    o.sourceParent = "foo";
  }
  buildCounterFolderOperation--;
  return o;
}

checkFolderOperation(api.FolderOperation o) {
  buildCounterFolderOperation++;
  if (buildCounterFolderOperation < 3) {
    unittest.expect(o.destinationParent, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.sourceParent, unittest.equals('foo'));
  }
  buildCounterFolderOperation--;
}

core.int buildCounterFolderOperationError = 0;
buildFolderOperationError() {
  var o = new api.FolderOperationError();
  buildCounterFolderOperationError++;
  if (buildCounterFolderOperationError < 3) {
    o.errorMessageId = "foo";
  }
  buildCounterFolderOperationError--;
  return o;
}

checkFolderOperationError(api.FolderOperationError o) {
  buildCounterFolderOperationError++;
  if (buildCounterFolderOperationError < 3) {
    unittest.expect(o.errorMessageId, unittest.equals('foo'));
  }
  buildCounterFolderOperationError--;
}

core.int buildCounterGetAncestryRequest = 0;
buildGetAncestryRequest() {
  var o = new api.GetAncestryRequest();
  buildCounterGetAncestryRequest++;
  if (buildCounterGetAncestryRequest < 3) {}
  buildCounterGetAncestryRequest--;
  return o;
}

checkGetAncestryRequest(api.GetAncestryRequest o) {
  buildCounterGetAncestryRequest++;
  if (buildCounterGetAncestryRequest < 3) {}
  buildCounterGetAncestryRequest--;
}

buildUnnamed2905() {
  var o = new core.List<api.Ancestor>();
  o.add(buildAncestor());
  o.add(buildAncestor());
  return o;
}

checkUnnamed2905(core.List<api.Ancestor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAncestor(o[0]);
  checkAncestor(o[1]);
}

core.int buildCounterGetAncestryResponse = 0;
buildGetAncestryResponse() {
  var o = new api.GetAncestryResponse();
  buildCounterGetAncestryResponse++;
  if (buildCounterGetAncestryResponse < 3) {
    o.ancestor = buildUnnamed2905();
  }
  buildCounterGetAncestryResponse--;
  return o;
}

checkGetAncestryResponse(api.GetAncestryResponse o) {
  buildCounterGetAncestryResponse++;
  if (buildCounterGetAncestryResponse < 3) {
    checkUnnamed2905(o.ancestor);
  }
  buildCounterGetAncestryResponse--;
}

core.int buildCounterGetEffectiveOrgPolicyRequest = 0;
buildGetEffectiveOrgPolicyRequest() {
  var o = new api.GetEffectiveOrgPolicyRequest();
  buildCounterGetEffectiveOrgPolicyRequest++;
  if (buildCounterGetEffectiveOrgPolicyRequest < 3) {
    o.constraint = "foo";
  }
  buildCounterGetEffectiveOrgPolicyRequest--;
  return o;
}

checkGetEffectiveOrgPolicyRequest(api.GetEffectiveOrgPolicyRequest o) {
  buildCounterGetEffectiveOrgPolicyRequest++;
  if (buildCounterGetEffectiveOrgPolicyRequest < 3) {
    unittest.expect(o.constraint, unittest.equals('foo'));
  }
  buildCounterGetEffectiveOrgPolicyRequest--;
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

core.int buildCounterGetOrgPolicyRequest = 0;
buildGetOrgPolicyRequest() {
  var o = new api.GetOrgPolicyRequest();
  buildCounterGetOrgPolicyRequest++;
  if (buildCounterGetOrgPolicyRequest < 3) {
    o.constraint = "foo";
  }
  buildCounterGetOrgPolicyRequest--;
  return o;
}

checkGetOrgPolicyRequest(api.GetOrgPolicyRequest o) {
  buildCounterGetOrgPolicyRequest++;
  if (buildCounterGetOrgPolicyRequest < 3) {
    unittest.expect(o.constraint, unittest.equals('foo'));
  }
  buildCounterGetOrgPolicyRequest--;
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

buildUnnamed2906() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2906(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLien = 0;
buildLien() {
  var o = new api.Lien();
  buildCounterLien++;
  if (buildCounterLien < 3) {
    o.createTime = "foo";
    o.name = "foo";
    o.origin = "foo";
    o.parent = "foo";
    o.reason = "foo";
    o.restrictions = buildUnnamed2906();
  }
  buildCounterLien--;
  return o;
}

checkLien(api.Lien o) {
  buildCounterLien++;
  if (buildCounterLien < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.origin, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.reason, unittest.equals('foo'));
    checkUnnamed2906(o.restrictions);
  }
  buildCounterLien--;
}

core.int buildCounterListAvailableOrgPolicyConstraintsRequest = 0;
buildListAvailableOrgPolicyConstraintsRequest() {
  var o = new api.ListAvailableOrgPolicyConstraintsRequest();
  buildCounterListAvailableOrgPolicyConstraintsRequest++;
  if (buildCounterListAvailableOrgPolicyConstraintsRequest < 3) {
    o.pageSize = 42;
    o.pageToken = "foo";
  }
  buildCounterListAvailableOrgPolicyConstraintsRequest--;
  return o;
}

checkListAvailableOrgPolicyConstraintsRequest(
    api.ListAvailableOrgPolicyConstraintsRequest o) {
  buildCounterListAvailableOrgPolicyConstraintsRequest++;
  if (buildCounterListAvailableOrgPolicyConstraintsRequest < 3) {
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
  }
  buildCounterListAvailableOrgPolicyConstraintsRequest--;
}

buildUnnamed2907() {
  var o = new core.List<api.Constraint>();
  o.add(buildConstraint());
  o.add(buildConstraint());
  return o;
}

checkUnnamed2907(core.List<api.Constraint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConstraint(o[0]);
  checkConstraint(o[1]);
}

core.int buildCounterListAvailableOrgPolicyConstraintsResponse = 0;
buildListAvailableOrgPolicyConstraintsResponse() {
  var o = new api.ListAvailableOrgPolicyConstraintsResponse();
  buildCounterListAvailableOrgPolicyConstraintsResponse++;
  if (buildCounterListAvailableOrgPolicyConstraintsResponse < 3) {
    o.constraints = buildUnnamed2907();
    o.nextPageToken = "foo";
  }
  buildCounterListAvailableOrgPolicyConstraintsResponse--;
  return o;
}

checkListAvailableOrgPolicyConstraintsResponse(
    api.ListAvailableOrgPolicyConstraintsResponse o) {
  buildCounterListAvailableOrgPolicyConstraintsResponse++;
  if (buildCounterListAvailableOrgPolicyConstraintsResponse < 3) {
    checkUnnamed2907(o.constraints);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAvailableOrgPolicyConstraintsResponse--;
}

core.int buildCounterListConstraint = 0;
buildListConstraint() {
  var o = new api.ListConstraint();
  buildCounterListConstraint++;
  if (buildCounterListConstraint < 3) {
    o.suggestedValue = "foo";
    o.supportsUnder = true;
  }
  buildCounterListConstraint--;
  return o;
}

checkListConstraint(api.ListConstraint o) {
  buildCounterListConstraint++;
  if (buildCounterListConstraint < 3) {
    unittest.expect(o.suggestedValue, unittest.equals('foo'));
    unittest.expect(o.supportsUnder, unittest.isTrue);
  }
  buildCounterListConstraint--;
}

buildUnnamed2908() {
  var o = new core.List<api.Lien>();
  o.add(buildLien());
  o.add(buildLien());
  return o;
}

checkUnnamed2908(core.List<api.Lien> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLien(o[0]);
  checkLien(o[1]);
}

core.int buildCounterListLiensResponse = 0;
buildListLiensResponse() {
  var o = new api.ListLiensResponse();
  buildCounterListLiensResponse++;
  if (buildCounterListLiensResponse < 3) {
    o.liens = buildUnnamed2908();
    o.nextPageToken = "foo";
  }
  buildCounterListLiensResponse--;
  return o;
}

checkListLiensResponse(api.ListLiensResponse o) {
  buildCounterListLiensResponse++;
  if (buildCounterListLiensResponse < 3) {
    checkUnnamed2908(o.liens);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLiensResponse--;
}

core.int buildCounterListOrgPoliciesRequest = 0;
buildListOrgPoliciesRequest() {
  var o = new api.ListOrgPoliciesRequest();
  buildCounterListOrgPoliciesRequest++;
  if (buildCounterListOrgPoliciesRequest < 3) {
    o.pageSize = 42;
    o.pageToken = "foo";
  }
  buildCounterListOrgPoliciesRequest--;
  return o;
}

checkListOrgPoliciesRequest(api.ListOrgPoliciesRequest o) {
  buildCounterListOrgPoliciesRequest++;
  if (buildCounterListOrgPoliciesRequest < 3) {
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
  }
  buildCounterListOrgPoliciesRequest--;
}

buildUnnamed2909() {
  var o = new core.List<api.OrgPolicy>();
  o.add(buildOrgPolicy());
  o.add(buildOrgPolicy());
  return o;
}

checkUnnamed2909(core.List<api.OrgPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrgPolicy(o[0]);
  checkOrgPolicy(o[1]);
}

core.int buildCounterListOrgPoliciesResponse = 0;
buildListOrgPoliciesResponse() {
  var o = new api.ListOrgPoliciesResponse();
  buildCounterListOrgPoliciesResponse++;
  if (buildCounterListOrgPoliciesResponse < 3) {
    o.nextPageToken = "foo";
    o.policies = buildUnnamed2909();
  }
  buildCounterListOrgPoliciesResponse--;
  return o;
}

checkListOrgPoliciesResponse(api.ListOrgPoliciesResponse o) {
  buildCounterListOrgPoliciesResponse++;
  if (buildCounterListOrgPoliciesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2909(o.policies);
  }
  buildCounterListOrgPoliciesResponse--;
}

buildUnnamed2910() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2910(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2911() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2911(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListPolicy = 0;
buildListPolicy() {
  var o = new api.ListPolicy();
  buildCounterListPolicy++;
  if (buildCounterListPolicy < 3) {
    o.allValues = "foo";
    o.allowedValues = buildUnnamed2910();
    o.deniedValues = buildUnnamed2911();
    o.inheritFromParent = true;
    o.suggestedValue = "foo";
  }
  buildCounterListPolicy--;
  return o;
}

checkListPolicy(api.ListPolicy o) {
  buildCounterListPolicy++;
  if (buildCounterListPolicy < 3) {
    unittest.expect(o.allValues, unittest.equals('foo'));
    checkUnnamed2910(o.allowedValues);
    checkUnnamed2911(o.deniedValues);
    unittest.expect(o.inheritFromParent, unittest.isTrue);
    unittest.expect(o.suggestedValue, unittest.equals('foo'));
  }
  buildCounterListPolicy--;
}

buildUnnamed2912() {
  var o = new core.List<api.Project>();
  o.add(buildProject());
  o.add(buildProject());
  return o;
}

checkUnnamed2912(core.List<api.Project> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProject(o[0]);
  checkProject(o[1]);
}

core.int buildCounterListProjectsResponse = 0;
buildListProjectsResponse() {
  var o = new api.ListProjectsResponse();
  buildCounterListProjectsResponse++;
  if (buildCounterListProjectsResponse < 3) {
    o.nextPageToken = "foo";
    o.projects = buildUnnamed2912();
  }
  buildCounterListProjectsResponse--;
  return o;
}

checkListProjectsResponse(api.ListProjectsResponse o) {
  buildCounterListProjectsResponse++;
  if (buildCounterListProjectsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2912(o.projects);
  }
  buildCounterListProjectsResponse--;
}

buildUnnamed2913() {
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

checkUnnamed2913(core.Map<core.String, core.Object> o) {
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

buildUnnamed2914() {
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

checkUnnamed2914(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed2913();
    o.name = "foo";
    o.response = buildUnnamed2914();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed2913(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2914(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterOrgPolicy = 0;
buildOrgPolicy() {
  var o = new api.OrgPolicy();
  buildCounterOrgPolicy++;
  if (buildCounterOrgPolicy < 3) {
    o.booleanPolicy = buildBooleanPolicy();
    o.constraint = "foo";
    o.etag = "foo";
    o.listPolicy = buildListPolicy();
    o.restoreDefault = buildRestoreDefault();
    o.updateTime = "foo";
    o.version = 42;
  }
  buildCounterOrgPolicy--;
  return o;
}

checkOrgPolicy(api.OrgPolicy o) {
  buildCounterOrgPolicy++;
  if (buildCounterOrgPolicy < 3) {
    checkBooleanPolicy(o.booleanPolicy);
    unittest.expect(o.constraint, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkListPolicy(o.listPolicy);
    checkRestoreDefault(o.restoreDefault);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterOrgPolicy--;
}

core.int buildCounterOrganization = 0;
buildOrganization() {
  var o = new api.Organization();
  buildCounterOrganization++;
  if (buildCounterOrganization < 3) {
    o.creationTime = "foo";
    o.displayName = "foo";
    o.lifecycleState = "foo";
    o.name = "foo";
    o.owner = buildOrganizationOwner();
  }
  buildCounterOrganization--;
  return o;
}

checkOrganization(api.Organization o) {
  buildCounterOrganization++;
  if (buildCounterOrganization < 3) {
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.lifecycleState, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkOrganizationOwner(o.owner);
  }
  buildCounterOrganization--;
}

core.int buildCounterOrganizationOwner = 0;
buildOrganizationOwner() {
  var o = new api.OrganizationOwner();
  buildCounterOrganizationOwner++;
  if (buildCounterOrganizationOwner < 3) {
    o.directoryCustomerId = "foo";
  }
  buildCounterOrganizationOwner--;
  return o;
}

checkOrganizationOwner(api.OrganizationOwner o) {
  buildCounterOrganizationOwner++;
  if (buildCounterOrganizationOwner < 3) {
    unittest.expect(o.directoryCustomerId, unittest.equals('foo'));
  }
  buildCounterOrganizationOwner--;
}

buildUnnamed2915() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed2915(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed2916() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed2916(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed2915();
    o.bindings = buildUnnamed2916();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed2915(o.auditConfigs);
    checkUnnamed2916(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

buildUnnamed2917() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2917(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterProject = 0;
buildProject() {
  var o = new api.Project();
  buildCounterProject++;
  if (buildCounterProject < 3) {
    o.createTime = "foo";
    o.labels = buildUnnamed2917();
    o.lifecycleState = "foo";
    o.name = "foo";
    o.parent = buildResourceId();
    o.projectId = "foo";
    o.projectNumber = "foo";
  }
  buildCounterProject--;
  return o;
}

checkProject(api.Project o) {
  buildCounterProject++;
  if (buildCounterProject < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed2917(o.labels);
    unittest.expect(o.lifecycleState, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkResourceId(o.parent);
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.projectNumber, unittest.equals('foo'));
  }
  buildCounterProject--;
}

core.int buildCounterProjectCreationStatus = 0;
buildProjectCreationStatus() {
  var o = new api.ProjectCreationStatus();
  buildCounterProjectCreationStatus++;
  if (buildCounterProjectCreationStatus < 3) {
    o.createTime = "foo";
    o.gettable = true;
    o.ready = true;
  }
  buildCounterProjectCreationStatus--;
  return o;
}

checkProjectCreationStatus(api.ProjectCreationStatus o) {
  buildCounterProjectCreationStatus++;
  if (buildCounterProjectCreationStatus < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.gettable, unittest.isTrue);
    unittest.expect(o.ready, unittest.isTrue);
  }
  buildCounterProjectCreationStatus--;
}

core.int buildCounterResourceId = 0;
buildResourceId() {
  var o = new api.ResourceId();
  buildCounterResourceId++;
  if (buildCounterResourceId < 3) {
    o.id = "foo";
    o.type = "foo";
  }
  buildCounterResourceId--;
  return o;
}

checkResourceId(api.ResourceId o) {
  buildCounterResourceId++;
  if (buildCounterResourceId < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterResourceId--;
}

core.int buildCounterRestoreDefault = 0;
buildRestoreDefault() {
  var o = new api.RestoreDefault();
  buildCounterRestoreDefault++;
  if (buildCounterRestoreDefault < 3) {}
  buildCounterRestoreDefault--;
  return o;
}

checkRestoreDefault(api.RestoreDefault o) {
  buildCounterRestoreDefault++;
  if (buildCounterRestoreDefault < 3) {}
  buildCounterRestoreDefault--;
}

core.int buildCounterSearchOrganizationsRequest = 0;
buildSearchOrganizationsRequest() {
  var o = new api.SearchOrganizationsRequest();
  buildCounterSearchOrganizationsRequest++;
  if (buildCounterSearchOrganizationsRequest < 3) {
    o.filter = "foo";
    o.pageSize = 42;
    o.pageToken = "foo";
  }
  buildCounterSearchOrganizationsRequest--;
  return o;
}

checkSearchOrganizationsRequest(api.SearchOrganizationsRequest o) {
  buildCounterSearchOrganizationsRequest++;
  if (buildCounterSearchOrganizationsRequest < 3) {
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
  }
  buildCounterSearchOrganizationsRequest--;
}

buildUnnamed2918() {
  var o = new core.List<api.Organization>();
  o.add(buildOrganization());
  o.add(buildOrganization());
  return o;
}

checkUnnamed2918(core.List<api.Organization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrganization(o[0]);
  checkOrganization(o[1]);
}

core.int buildCounterSearchOrganizationsResponse = 0;
buildSearchOrganizationsResponse() {
  var o = new api.SearchOrganizationsResponse();
  buildCounterSearchOrganizationsResponse++;
  if (buildCounterSearchOrganizationsResponse < 3) {
    o.nextPageToken = "foo";
    o.organizations = buildUnnamed2918();
  }
  buildCounterSearchOrganizationsResponse--;
  return o;
}

checkSearchOrganizationsResponse(api.SearchOrganizationsResponse o) {
  buildCounterSearchOrganizationsResponse++;
  if (buildCounterSearchOrganizationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2918(o.organizations);
  }
  buildCounterSearchOrganizationsResponse--;
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

core.int buildCounterSetOrgPolicyRequest = 0;
buildSetOrgPolicyRequest() {
  var o = new api.SetOrgPolicyRequest();
  buildCounterSetOrgPolicyRequest++;
  if (buildCounterSetOrgPolicyRequest < 3) {
    o.policy = buildOrgPolicy();
  }
  buildCounterSetOrgPolicyRequest--;
  return o;
}

checkSetOrgPolicyRequest(api.SetOrgPolicyRequest o) {
  buildCounterSetOrgPolicyRequest++;
  if (buildCounterSetOrgPolicyRequest < 3) {
    checkOrgPolicy(o.policy);
  }
  buildCounterSetOrgPolicyRequest--;
}

buildUnnamed2919() {
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

checkUnnamed2919(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

buildUnnamed2920() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed2919());
  o.add(buildUnnamed2919());
  return o;
}

checkUnnamed2920(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2919(o[0]);
  checkUnnamed2919(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2920();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2920(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed2921() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2921(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed2921();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed2921(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed2922() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2922(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed2922();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed2922(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUndeleteProjectRequest = 0;
buildUndeleteProjectRequest() {
  var o = new api.UndeleteProjectRequest();
  buildCounterUndeleteProjectRequest++;
  if (buildCounterUndeleteProjectRequest < 3) {}
  buildCounterUndeleteProjectRequest--;
  return o;
}

checkUndeleteProjectRequest(api.UndeleteProjectRequest o) {
  buildCounterUndeleteProjectRequest++;
  if (buildCounterUndeleteProjectRequest < 3) {}
  buildCounterUndeleteProjectRequest--;
}

main() {
  unittest.group("obj-schema-Ancestor", () {
    unittest.test("to-json--from-json", () {
      var o = buildAncestor();
      var od = new api.Ancestor.fromJson(o.toJson());
      checkAncestor(od);
    });
  });

  unittest.group("obj-schema-AuditConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditConfig();
      var od = new api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od);
    });
  });

  unittest.group("obj-schema-AuditLogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditLogConfig();
      var od = new api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od);
    });
  });

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-BooleanConstraint", () {
    unittest.test("to-json--from-json", () {
      var o = buildBooleanConstraint();
      var od = new api.BooleanConstraint.fromJson(o.toJson());
      checkBooleanConstraint(od);
    });
  });

  unittest.group("obj-schema-BooleanPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildBooleanPolicy();
      var od = new api.BooleanPolicy.fromJson(o.toJson());
      checkBooleanPolicy(od);
    });
  });

  unittest.group("obj-schema-ClearOrgPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildClearOrgPolicyRequest();
      var od = new api.ClearOrgPolicyRequest.fromJson(o.toJson());
      checkClearOrgPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-Constraint", () {
    unittest.test("to-json--from-json", () {
      var o = buildConstraint();
      var od = new api.Constraint.fromJson(o.toJson());
      checkConstraint(od);
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

  unittest.group("obj-schema-FolderOperation", () {
    unittest.test("to-json--from-json", () {
      var o = buildFolderOperation();
      var od = new api.FolderOperation.fromJson(o.toJson());
      checkFolderOperation(od);
    });
  });

  unittest.group("obj-schema-FolderOperationError", () {
    unittest.test("to-json--from-json", () {
      var o = buildFolderOperationError();
      var od = new api.FolderOperationError.fromJson(o.toJson());
      checkFolderOperationError(od);
    });
  });

  unittest.group("obj-schema-GetAncestryRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetAncestryRequest();
      var od = new api.GetAncestryRequest.fromJson(o.toJson());
      checkGetAncestryRequest(od);
    });
  });

  unittest.group("obj-schema-GetAncestryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetAncestryResponse();
      var od = new api.GetAncestryResponse.fromJson(o.toJson());
      checkGetAncestryResponse(od);
    });
  });

  unittest.group("obj-schema-GetEffectiveOrgPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetEffectiveOrgPolicyRequest();
      var od = new api.GetEffectiveOrgPolicyRequest.fromJson(o.toJson());
      checkGetEffectiveOrgPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-GetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetIamPolicyRequest();
      var od = new api.GetIamPolicyRequest.fromJson(o.toJson());
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-GetOrgPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetOrgPolicyRequest();
      var od = new api.GetOrgPolicyRequest.fromJson(o.toJson());
      checkGetOrgPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-GetPolicyOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetPolicyOptions();
      var od = new api.GetPolicyOptions.fromJson(o.toJson());
      checkGetPolicyOptions(od);
    });
  });

  unittest.group("obj-schema-Lien", () {
    unittest.test("to-json--from-json", () {
      var o = buildLien();
      var od = new api.Lien.fromJson(o.toJson());
      checkLien(od);
    });
  });

  unittest.group("obj-schema-ListAvailableOrgPolicyConstraintsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAvailableOrgPolicyConstraintsRequest();
      var od =
          new api.ListAvailableOrgPolicyConstraintsRequest.fromJson(o.toJson());
      checkListAvailableOrgPolicyConstraintsRequest(od);
    });
  });

  unittest.group("obj-schema-ListAvailableOrgPolicyConstraintsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAvailableOrgPolicyConstraintsResponse();
      var od = new api.ListAvailableOrgPolicyConstraintsResponse.fromJson(
          o.toJson());
      checkListAvailableOrgPolicyConstraintsResponse(od);
    });
  });

  unittest.group("obj-schema-ListConstraint", () {
    unittest.test("to-json--from-json", () {
      var o = buildListConstraint();
      var od = new api.ListConstraint.fromJson(o.toJson());
      checkListConstraint(od);
    });
  });

  unittest.group("obj-schema-ListLiensResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLiensResponse();
      var od = new api.ListLiensResponse.fromJson(o.toJson());
      checkListLiensResponse(od);
    });
  });

  unittest.group("obj-schema-ListOrgPoliciesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOrgPoliciesRequest();
      var od = new api.ListOrgPoliciesRequest.fromJson(o.toJson());
      checkListOrgPoliciesRequest(od);
    });
  });

  unittest.group("obj-schema-ListOrgPoliciesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOrgPoliciesResponse();
      var od = new api.ListOrgPoliciesResponse.fromJson(o.toJson());
      checkListOrgPoliciesResponse(od);
    });
  });

  unittest.group("obj-schema-ListPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildListPolicy();
      var od = new api.ListPolicy.fromJson(o.toJson());
      checkListPolicy(od);
    });
  });

  unittest.group("obj-schema-ListProjectsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListProjectsResponse();
      var od = new api.ListProjectsResponse.fromJson(o.toJson());
      checkListProjectsResponse(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-OrgPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrgPolicy();
      var od = new api.OrgPolicy.fromJson(o.toJson());
      checkOrgPolicy(od);
    });
  });

  unittest.group("obj-schema-Organization", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrganization();
      var od = new api.Organization.fromJson(o.toJson());
      checkOrganization(od);
    });
  });

  unittest.group("obj-schema-OrganizationOwner", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrganizationOwner();
      var od = new api.OrganizationOwner.fromJson(o.toJson());
      checkOrganizationOwner(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-Project", () {
    unittest.test("to-json--from-json", () {
      var o = buildProject();
      var od = new api.Project.fromJson(o.toJson());
      checkProject(od);
    });
  });

  unittest.group("obj-schema-ProjectCreationStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjectCreationStatus();
      var od = new api.ProjectCreationStatus.fromJson(o.toJson());
      checkProjectCreationStatus(od);
    });
  });

  unittest.group("obj-schema-ResourceId", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceId();
      var od = new api.ResourceId.fromJson(o.toJson());
      checkResourceId(od);
    });
  });

  unittest.group("obj-schema-RestoreDefault", () {
    unittest.test("to-json--from-json", () {
      var o = buildRestoreDefault();
      var od = new api.RestoreDefault.fromJson(o.toJson());
      checkRestoreDefault(od);
    });
  });

  unittest.group("obj-schema-SearchOrganizationsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchOrganizationsRequest();
      var od = new api.SearchOrganizationsRequest.fromJson(o.toJson());
      checkSearchOrganizationsRequest(od);
    });
  });

  unittest.group("obj-schema-SearchOrganizationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchOrganizationsResponse();
      var od = new api.SearchOrganizationsResponse.fromJson(o.toJson());
      checkSearchOrganizationsResponse(od);
    });
  });

  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-SetOrgPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetOrgPolicyRequest();
      var od = new api.SetOrgPolicyRequest.fromJson(o.toJson());
      checkSetOrgPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
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

  unittest.group("obj-schema-UndeleteProjectRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUndeleteProjectRequest();
      var od = new api.UndeleteProjectRequest.fromJson(o.toJson());
      checkUndeleteProjectRequest(od);
    });
  });

  unittest.group("resource-FoldersResourceApi", () {
    unittest.test("method--clearOrgPolicy", () {
      var mock = new HttpServerMock();
      api.FoldersResourceApi res =
          new api.CloudresourcemanagerApi(mock).folders;
      var arg_request = buildClearOrgPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ClearOrgPolicyRequest.fromJson(json);
        checkClearOrgPolicyRequest(obj);

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
          .clearOrgPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--getEffectiveOrgPolicy", () {
      var mock = new HttpServerMock();
      api.FoldersResourceApi res =
          new api.CloudresourcemanagerApi(mock).folders;
      var arg_request = buildGetEffectiveOrgPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetEffectiveOrgPolicyRequest.fromJson(json);
        checkGetEffectiveOrgPolicyRequest(obj);

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
        var resp = convert.json.encode(buildOrgPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getEffectiveOrgPolicy(arg_request, arg_resource,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrgPolicy(response);
      })));
    });

    unittest.test("method--getOrgPolicy", () {
      var mock = new HttpServerMock();
      api.FoldersResourceApi res =
          new api.CloudresourcemanagerApi(mock).folders;
      var arg_request = buildGetOrgPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetOrgPolicyRequest.fromJson(json);
        checkGetOrgPolicyRequest(obj);

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
        var resp = convert.json.encode(buildOrgPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getOrgPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrgPolicy(response);
      })));
    });

    unittest.test("method--listAvailableOrgPolicyConstraints", () {
      var mock = new HttpServerMock();
      api.FoldersResourceApi res =
          new api.CloudresourcemanagerApi(mock).folders;
      var arg_request = buildListAvailableOrgPolicyConstraintsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.ListAvailableOrgPolicyConstraintsRequest.fromJson(json);
        checkListAvailableOrgPolicyConstraintsRequest(obj);

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
        var resp = convert.json
            .encode(buildListAvailableOrgPolicyConstraintsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listAvailableOrgPolicyConstraints(arg_request, arg_resource,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAvailableOrgPolicyConstraintsResponse(response);
      })));
    });

    unittest.test("method--listOrgPolicies", () {
      var mock = new HttpServerMock();
      api.FoldersResourceApi res =
          new api.CloudresourcemanagerApi(mock).folders;
      var arg_request = buildListOrgPoliciesRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ListOrgPoliciesRequest.fromJson(json);
        checkListOrgPoliciesRequest(obj);

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
        var resp = convert.json.encode(buildListOrgPoliciesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listOrgPolicies(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOrgPoliciesResponse(response);
      })));
    });

    unittest.test("method--setOrgPolicy", () {
      var mock = new HttpServerMock();
      api.FoldersResourceApi res =
          new api.CloudresourcemanagerApi(mock).folders;
      var arg_request = buildSetOrgPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetOrgPolicyRequest.fromJson(json);
        checkSetOrgPolicyRequest(obj);

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
        var resp = convert.json.encode(buildOrgPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setOrgPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrgPolicy(response);
      })));
    });
  });

  unittest.group("resource-LiensResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.LiensResourceApi res = new api.CloudresourcemanagerApi(mock).liens;
      var arg_request = buildLien();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Lien.fromJson(json);
        checkLien(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/liens"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLien());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLien(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.LiensResourceApi res = new api.CloudresourcemanagerApi(mock).liens;
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
      api.LiensResourceApi res = new api.CloudresourcemanagerApi(mock).liens;
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
        var resp = convert.json.encode(buildLien());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLien(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.LiensResourceApi res = new api.CloudresourcemanagerApi(mock).liens;
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/liens"));
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["parent"].first, unittest.equals(arg_parent));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListLiensResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              parent: arg_parent,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLiensResponse(response);
      })));
    });
  });

  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.CloudresourcemanagerApi(mock).operations;
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-OrganizationsResourceApi", () {
    unittest.test("method--clearOrgPolicy", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res =
          new api.CloudresourcemanagerApi(mock).organizations;
      var arg_request = buildClearOrgPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ClearOrgPolicyRequest.fromJson(json);
        checkClearOrgPolicyRequest(obj);

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
          .clearOrgPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res =
          new api.CloudresourcemanagerApi(mock).organizations;
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
        var resp = convert.json.encode(buildOrganization());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrganization(response);
      })));
    });

    unittest.test("method--getEffectiveOrgPolicy", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res =
          new api.CloudresourcemanagerApi(mock).organizations;
      var arg_request = buildGetEffectiveOrgPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetEffectiveOrgPolicyRequest.fromJson(json);
        checkGetEffectiveOrgPolicyRequest(obj);

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
        var resp = convert.json.encode(buildOrgPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getEffectiveOrgPolicy(arg_request, arg_resource,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrgPolicy(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res =
          new api.CloudresourcemanagerApi(mock).organizations;
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

    unittest.test("method--getOrgPolicy", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res =
          new api.CloudresourcemanagerApi(mock).organizations;
      var arg_request = buildGetOrgPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetOrgPolicyRequest.fromJson(json);
        checkGetOrgPolicyRequest(obj);

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
        var resp = convert.json.encode(buildOrgPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getOrgPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrgPolicy(response);
      })));
    });

    unittest.test("method--listAvailableOrgPolicyConstraints", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res =
          new api.CloudresourcemanagerApi(mock).organizations;
      var arg_request = buildListAvailableOrgPolicyConstraintsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.ListAvailableOrgPolicyConstraintsRequest.fromJson(json);
        checkListAvailableOrgPolicyConstraintsRequest(obj);

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
        var resp = convert.json
            .encode(buildListAvailableOrgPolicyConstraintsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listAvailableOrgPolicyConstraints(arg_request, arg_resource,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAvailableOrgPolicyConstraintsResponse(response);
      })));
    });

    unittest.test("method--listOrgPolicies", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res =
          new api.CloudresourcemanagerApi(mock).organizations;
      var arg_request = buildListOrgPoliciesRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ListOrgPoliciesRequest.fromJson(json);
        checkListOrgPoliciesRequest(obj);

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
        var resp = convert.json.encode(buildListOrgPoliciesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listOrgPolicies(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOrgPoliciesResponse(response);
      })));
    });

    unittest.test("method--search", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res =
          new api.CloudresourcemanagerApi(mock).organizations;
      var arg_request = buildSearchOrganizationsRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SearchOrganizationsRequest.fromJson(json);
        checkSearchOrganizationsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("v1/organizations:search"));
        pathOffset += 23;

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
        var resp = convert.json.encode(buildSearchOrganizationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .search(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchOrganizationsResponse(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res =
          new api.CloudresourcemanagerApi(mock).organizations;
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

    unittest.test("method--setOrgPolicy", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res =
          new api.CloudresourcemanagerApi(mock).organizations;
      var arg_request = buildSetOrgPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetOrgPolicyRequest.fromJson(json);
        checkSetOrgPolicyRequest(obj);

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
        var resp = convert.json.encode(buildOrgPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setOrgPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrgPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.OrganizationsResourceApi res =
          new api.CloudresourcemanagerApi(mock).organizations;
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
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--clearOrgPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res =
          new api.CloudresourcemanagerApi(mock).projects;
      var arg_request = buildClearOrgPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ClearOrgPolicyRequest.fromJson(json);
        checkClearOrgPolicyRequest(obj);

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
          .clearOrgPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res =
          new api.CloudresourcemanagerApi(mock).projects;
      var arg_request = buildProject();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Project.fromJson(json);
        checkProject(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/projects"));
        pathOffset += 11;

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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res =
          new api.CloudresourcemanagerApi(mock).projects;
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));

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
          .delete(arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res =
          new api.CloudresourcemanagerApi(mock).projects;
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));

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
        var resp = convert.json.encode(buildProject());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProject(response);
      })));
    });

    unittest.test("method--getAncestry", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res =
          new api.CloudresourcemanagerApi(mock).projects;
      var arg_request = buildGetAncestryRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetAncestryRequest.fromJson(json);
        checkGetAncestryRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":getAncestry", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals(":getAncestry"));
        pathOffset += 12;

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
        var resp = convert.json.encode(buildGetAncestryResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAncestry(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetAncestryResponse(response);
      })));
    });

    unittest.test("method--getEffectiveOrgPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res =
          new api.CloudresourcemanagerApi(mock).projects;
      var arg_request = buildGetEffectiveOrgPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetEffectiveOrgPolicyRequest.fromJson(json);
        checkGetEffectiveOrgPolicyRequest(obj);

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
        var resp = convert.json.encode(buildOrgPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getEffectiveOrgPolicy(arg_request, arg_resource,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrgPolicy(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res =
          new api.CloudresourcemanagerApi(mock).projects;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":getIamPolicy", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_resource"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals(":getIamPolicy"));
        pathOffset += 13;

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

    unittest.test("method--getOrgPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res =
          new api.CloudresourcemanagerApi(mock).projects;
      var arg_request = buildGetOrgPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetOrgPolicyRequest.fromJson(json);
        checkGetOrgPolicyRequest(obj);

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
        var resp = convert.json.encode(buildOrgPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getOrgPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrgPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res =
          new api.CloudresourcemanagerApi(mock).projects;
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/projects"));
        pathOffset += 11;

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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListProjectsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListProjectsResponse(response);
      })));
    });

    unittest.test("method--listAvailableOrgPolicyConstraints", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res =
          new api.CloudresourcemanagerApi(mock).projects;
      var arg_request = buildListAvailableOrgPolicyConstraintsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.ListAvailableOrgPolicyConstraintsRequest.fromJson(json);
        checkListAvailableOrgPolicyConstraintsRequest(obj);

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
        var resp = convert.json
            .encode(buildListAvailableOrgPolicyConstraintsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listAvailableOrgPolicyConstraints(arg_request, arg_resource,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAvailableOrgPolicyConstraintsResponse(response);
      })));
    });

    unittest.test("method--listOrgPolicies", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res =
          new api.CloudresourcemanagerApi(mock).projects;
      var arg_request = buildListOrgPoliciesRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ListOrgPoliciesRequest.fromJson(json);
        checkListOrgPoliciesRequest(obj);

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
        var resp = convert.json.encode(buildListOrgPoliciesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listOrgPolicies(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOrgPoliciesResponse(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res =
          new api.CloudresourcemanagerApi(mock).projects;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":setIamPolicy", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_resource"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals(":setIamPolicy"));
        pathOffset += 13;

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

    unittest.test("method--setOrgPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res =
          new api.CloudresourcemanagerApi(mock).projects;
      var arg_request = buildSetOrgPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetOrgPolicyRequest.fromJson(json);
        checkSetOrgPolicyRequest(obj);

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
        var resp = convert.json.encode(buildOrgPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setOrgPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrgPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res =
          new api.CloudresourcemanagerApi(mock).projects;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":testIamPermissions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_resource"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals(":testIamPermissions"));
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
      api.ProjectsResourceApi res =
          new api.CloudresourcemanagerApi(mock).projects;
      var arg_request = buildUndeleteProjectRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UndeleteProjectRequest.fromJson(json);
        checkUndeleteProjectRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf(":undelete", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":undelete"));
        pathOffset += 9;

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
          .undelete(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res =
          new api.CloudresourcemanagerApi(mock).projects;
      var arg_request = buildProject();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Project.fromJson(json);
        checkProject(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));

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
        var resp = convert.json.encode(buildProject());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProject(response);
      })));
    });
  });
}
